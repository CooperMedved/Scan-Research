#!/usr/bin/env python3
"""Extract a gate-level Verilog netlist to JSON and check cell names vs Liberty."""
import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from src.python.verilog.parser import parse_netlist


def main():
    cli = argparse.ArgumentParser()
    cli.add_argument('--netlist', required=True)
    cli.add_argument('--top', default=None)
    cli.add_argument('--lib-json', default=None)
    cli.add_argument('--output', default=None)
    args = cli.parse_args()

    design = parse_netlist(args.netlist, args.top)
    stats = design.stats()
    print(json.dumps(stats, indent=2))

    if args.lib_json:
        with open(args.lib_json, encoding='utf8') as file:
            library = json.load(file)['cells']
        missing = sorted({inst.cell_type for inst in design.instances.values()
                          if inst.cell_type not in library})
        print('Missing Liberty cell types:', missing)
        if missing:
            design.warnings.append('Unmapped Liberty cells: ' + ', '.join(missing))
        invalid = sorted({f'{inst.name}.{pin}' for inst in design.instances.values()
                          if inst.cell_type in library for pin in inst.connections
                          if pin not in library[inst.cell_type]['pins']})
        print('Unrecognized instance pin connections:', invalid[:30])
        if invalid:
            design.warnings.append(f'{len(invalid)} unrecognized cell-pin connections')

    outfile = args.output or f'outputs/parsed/{design.module}_netlist.json'
    design.write_json(outfile)
    print('Saved:', outfile)


if __name__ == '__main__':
    main()
