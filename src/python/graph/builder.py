"""Construct a directed, functional pin/net graph from parsed netlist and Liberty JSON.

Graph is JSON-serializable. Supports direct net aliases and constant/tie sources;
unsupported cells are explicitly reported instead of silently traversed.
"""
from collections import defaultdict
from .boundaries import extract_boundaries, identifiers


def _aliases(netlist):
    parent = {}
    def root(x):
        parent.setdefault(x, x)
        if parent[x] != x: parent[x] = root(parent[x])
        return parent[x]
    def union(a, b):
        a, b = root(a), root(b)
        if a != b: parent[max(a, b)] = min(a, b)
    issues = []
    for item in netlist.get('assigns', []):
        # Accept only simple aliases. Expressions must be elaborated separately.
        lhs = item.get('left', item.get('lhs'))
        rhs = item.get('right', item.get('rhs'))
        if lhs and rhs and (rhs in ('1\'b0', '1\'b1', "1'bx") or (lhs.replace('_','').replace('$','').isalnum() and rhs.replace('_','').replace('$','').isalnum())):
            union(lhs, rhs)
        else: issues.append(f'Unsupported assign: {item}')
    return root, issues


def build_graph(netlist, cells):
    canonical, issues = _aliases(netlist)
    boundaries = extract_boundaries(netlist, cells)
    issues.extend(boundaries['issues'])
    nodes = {}
    edge_set = set()
    drivers = defaultdict(list)
    loads = defaultdict(list)
    def node(identifier, kind, **metadata):
        nodes.setdefault(identifier, {'id': identifier, 'type': kind, **metadata})
    def edge(src, dst):
        edge_set.add((src, dst))
    def net_node(net):
        n = f'NET:{canonical(net)}'
        node(n, 'NET', net=canonical(net))
        return n

    for b in boundaries['pi']:
        node(b['name'], 'PI'); n = net_node(b['net']); edge(b['name'], n)
        drivers[n].append(b['name'])
    for b in boundaries['po']:
        node(b['name'], 'PO'); n = net_node(b['net']); edge(n, b['name'])
        loads[n].append(b['name'])
    for b in boundaries['ppi']:
        node(b['name'], 'PPI', instance=b['instance'], pin=b['pin'], function=b['function'])
        n = net_node(b['net']); edge(b['name'], n); drivers[n].append(b['name'])
    for b in boundaries['ppo']:
        node(b['name'], 'PPO', instance=b['instance'], pin=b['pin'])
        n = net_node(b['net']); edge(n, b['name']); loads[n].append(b['name'])

    for inst_name, inst in netlist['instances'].items():
        cell = cells.get(inst['cell_type'])
        if not cell or cell.get('cell_type') != 'combinational':
            continue
        con = inst['connections']
        outputs = [(p, meta) for p, meta in cell['pins'].items() if meta.get('direction') == 'output' and con.get(p)]
        for p, meta in outputs:
            output = f'GATE:{inst_name}.{p}'
            node(output, 'COMB', instance=inst_name, pin=p, cell_type=inst['cell_type'], area=cell.get('area'))
            dst = net_node(con[p]); edge(output, dst); drivers[dst].append(output)
            function = meta.get('function')
            if 'TIE0' in inst['cell_type'] or 'TIE1' in inst['cell_type']:
                nodes[output]['type'] = 'CONST'
                nodes[output]['value'] = 0 if 'TIE0' in inst['cell_type'] else 1
                continue
            if function is None:
                issues.append(f'{inst_name}.{p}: missing combinational output function')
                continue
            dependencies = identifiers(function) & set(cell['pins'])
            for ip in sorted(dependencies):
                if cell['pins'][ip].get('direction') != 'input':
                    issues.append(f'{inst_name}.{p}: function references non-input {ip}')
                elif not con.get(ip):
                    issues.append(f'{inst_name}.{p}: missing connection for input {ip}')
                else:
                    src = net_node(con[ip]); edge(src, output); loads[src].append(output)

    for n, ds in drivers.items():
        if len(set(ds)) > 1:
            issues.append(f'{n}: multiple drivers {sorted(set(ds))}')
    return {
        'module': netlist['module'], 'nodes': list(nodes.values()),
        'edges': [{'src': a, 'dst': b} for a, b in sorted(edge_set)],
        'boundaries': boundaries,
        'statistics': {'nodes': len(nodes), 'edges': len(edge_set), 'ppi': len(boundaries['ppi']),
                       'ppo': len(boundaries['ppo']), 'combinational_outputs': sum(v['type'] == 'COMB' for v in nodes.values())},
        'issues': sorted(set(issues)),
    }
