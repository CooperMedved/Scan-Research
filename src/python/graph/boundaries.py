"""Validate functional scan FF boundaries from Liberty and parsed Verilog JSON.

No guess is made when state equations are absent or ambiguous.
"""
import re

_IDENT = re.compile(r"[A-Za-z_][A-Za-z0-9_$]*")
SCAN_IN = ('SI', 'SCANIN', 'SCAN_IN')
SCAN_EN = ('SE', 'SCANEN', 'SCAN_EN')
CONTROLS = ('CK', 'CLK', 'CLOCK', 'RD', 'RN', 'RESET', 'RST', 'SN', 'SET', 'PRE', 'PRESET')


def identifiers(expression):
    return set(_IDENT.findall(str(expression or '')))


def classify_sequential(cell):
    """Return functional pin semantics or review reasons for a single-state FF."""
    pins = cell.get('pins', {})
    ffs = cell.get('flip_flops', [])
    if cell.get('cell_type') != 'ff' or len(ffs) != 1:
        return {'valid': False, 'issues': ['Not a single-state FF']}
    ff = ffs[0]
    names = set(pins)
    eq = identifiers(ff.get('next_state'))
    clock_names = identifiers(ff.get('clocked_on'))
    async_names = identifiers(ff.get('clear')) | identifiers(ff.get('preset'))
    hints = cell.get('scan_pin_hints') or {}
    si, se = hints.get('scan_in'), hints.get('scan_enable')
    control = (clock_names | async_names) & names
    q = sorted(p for p, info in pins.items() if info.get('direction') == 'output' and info.get('function'))
    data = sorted(p for p in eq & names if pins[p].get('direction') == 'input' and p not in control and p not in {si, se})
    issues = []
    if not ff.get('next_state'): issues.append('Missing next_state')
    if len(data) != 1: issues.append(f'Expected one functional D pin, found {data}')
    if not q: issues.append('No functional state output with Liberty function')
    if si and si not in eq: issues.append('Scan input absent from next_state')
    if se and se not in eq: issues.append('Scan enable absent from next_state')
    if not clock_names: issues.append('Missing clock expression')
    return {
        'valid': not issues, 'data_pin': data[0] if len(data) == 1 else None,
        'output_pins': q, 'scan_in': si, 'scan_enable': se,
        'control_pins': sorted(control | ({se} if se else set())),
        'clock_expression': ff.get('clocked_on'),
        'next_state': ff.get('next_state'), 'issues': issues,
    }


def extract_boundaries(netlist, cells):
    """One boundary per real functional output pin, one PPO per FF functional D."""
    result = {'ppi': [], 'ppo': [], 'pi': [], 'po': [], 'issues': [], 'scan_connections': []}
    for name in netlist.get('inputs', []):
        result['pi'].append({'name': f'PI:{name}', 'net': name})
    for name in netlist.get('outputs', []):
        result['po'].append({'name': f'PO:{name}', 'net': name})
    for inst_name, inst in netlist['instances'].items():
        cell = cells.get(inst['cell_type'])
        if cell is None:
            result['issues'].append(f'{inst_name}: missing Liberty cell {inst["cell_type"]}')
            continue
        if cell['cell_type'] != 'ff':
            if cell['cell_type'] == 'latch':
                result['issues'].append(f'{inst_name}: latch not supported as scan FF boundary')
            continue
        roles = classify_sequential(cell)
        if not roles['valid']:
            result['issues'].append(f'{inst_name}: ' + '; '.join(roles['issues']))
            continue
        con = inst['connections']
        d = roles['data_pin']
        if not con.get(d):
            result['issues'].append(f'{inst_name}: unconnected functional input {d}')
            continue
        result['ppo'].append({'name': f'PPO:{inst_name}.{d}', 'instance': inst_name, 'pin': d, 'net': con[d]})
        for q in roles['output_pins']:
            if con.get(q):
                result['ppi'].append({'name': f'PPI:{inst_name}.{q}', 'instance': inst_name,
                                      'pin': q, 'net': con[q], 'function': cell['pins'][q]['function']})
        result['scan_connections'].append({'instance': inst_name, 'scan_in': con.get(roles['scan_in']),
                                            'scan_enable': con.get(roles['scan_enable']),
                                            'clock': roles['clock_expression'], 'state_equation': roles['next_state']})
    return result
