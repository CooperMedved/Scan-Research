"""PyVerilog AST-to-IR translator for synthesized gate-level Verilog.

Uses VerilogParser directly to avoid requiring iverilog for preprocessing.
Does NOT infer direction or scan roles; these require the Liberty database.
"""
from pathlib import Path
from pyverilog.vparser.parser import VerilogParser
from pyverilog.vparser import ast as A
from .netlist import Netlist, Instance


def expr(node):
    """Print common netlist expression types without losing bit selects."""
    if node is None:
        return None
    if isinstance(node, A.Identifier):
        return node.name
    if isinstance(node, (A.IntConst, A.FloatConst, A.StringConst)):
        return str(node.value)
    if isinstance(node, A.Pointer):
        return f'{expr(node.var)}[{expr(node.ptr)}]'
    if isinstance(node, A.Partselect):
        return f'{expr(node.var)}[{expr(node.msb)}:{expr(node.lsb)}]'
    if isinstance(node, A.Concat):
        return '{' + ', '.join(expr(v) for v in node.list) + '}'
    if isinstance(node, A.Repeat):
        return '{' + expr(node.times) + '{' + expr(node.value) + '}}'
    if isinstance(node, (A.Lvalue, A.Rvalue)):
        return expr(node.var)
    if isinstance(node, A.Unot):
        return '~' + expr(node.right)
    if isinstance(node, A.Uminus):
        return '-' + expr(node.right)
    if isinstance(node, A.Cond):
        return f'({expr(node.cond)} ? {expr(node.true_value)} : {expr(node.false_value)})'
    raise ValueError(f'Unsupported expression node: {type(node).__name__}: {node}')


def _bit_names(name, width):
    if width is None:
        return [name], None
    msb_text, lsb_text = expr(width.msb), expr(width.lsb)
    try:
        msb, lsb = int(msb_text), int(lsb_text)
    except ValueError:
        return [name], {'msb': msb_text, 'lsb': lsb_text, 'symbolic': True}
    step = -1 if msb >= lsb else 1
    return [f'{name}[{i}]' for i in range(msb, lsb + step, step)], {'msb': msb, 'lsb': lsb}


def _append_unique(items, values):
    for value in values:
        if value not in items:
            items.append(value)


def _record_decl(netlist, decl):
    typ = type(decl).__name__
    if typ not in ('Input', 'Output', 'Inout', 'Wire', 'Reg', 'Tri'):
        return
    bits, bus = _bit_names(decl.name, getattr(decl, 'width', None))
    if bus is not None:
        netlist.buses[decl.name] = bus
    target = {'Input': netlist.inputs, 'Output': netlist.outputs,
              'Inout': netlist.inouts}.get(typ, netlist.wires)
    _append_unique(target, bits)


def parse_netlist(path, top=None):
    path = Path(path)
    source = path.read_text(encoding='utf-8')
    ast = VerilogParser().parse(source)
    modules = [m for m in ast.description.definitions if isinstance(m, A.ModuleDef)]
    if not modules:
        raise ValueError('No module declaration found')
    if top is None:
        if len(modules) != 1:
            raise ValueError('Multiple modules found: specify --top')
        module = modules[0]
    else:
        match = [m for m in modules if m.name == top]
        if not match:
            raise ValueError(f'Module {top!r} not found')
        module = match[0]
    data = Netlist(module=module.name, source=str(path))

    if module.portlist:
        for port in module.portlist.ports:
            if isinstance(port, A.Ioport):
                declaration = port.first
                data.ports.append(declaration.name)
                _record_decl(data, declaration)
            elif isinstance(port, A.Port):
                data.ports.append(port.name)

    for item in module.items:
        if isinstance(item, A.Decl):
            for declaration in item.list:
                _record_decl(data, declaration)
        elif isinstance(item, A.InstanceList):
            for inst in item.instances:
                pins = {}
                for index, port in enumerate(inst.portlist):
                    pin = port.portname if port.portname is not None else f'$pos{index}'
                    if pin in pins:
                        raise ValueError(f'Duplicate pin {pin} in {inst.name}')
                    pins[pin] = expr(port.argname)
                data.add_instance(Instance(name=inst.name, cell_type=item.module, connections=pins))
        elif isinstance(item, A.Assign):
            data.assigns.append({'lhs': expr(item.left), 'rhs': expr(item.right)})
        elif isinstance(item, (A.Parameter, A.Localparam)):
            pass
        else:
            data.warnings.append(f'Unhandled module item: {type(item).__name__}')
    return data
