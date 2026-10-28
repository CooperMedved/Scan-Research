#!/usr/bin/env python3
"""Build a functional graph from earlier parser JSON outputs."""
import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from src.python.graph.builder import build_graph


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--netlist-json', required=True)
    ap.add_argument('--lib-json', required=True)
    ap.add_argument('--output', required=True)
    args = ap.parse_args()
    with open(args.netlist_json) as f: netlist = json.load(f)
    with open(args.lib_json) as f: cells = json.load(f)['cells']
    graph = build_graph(netlist, cells)
    out = Path(args.output)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(graph, indent=2))
    print(json.dumps(graph['statistics'], indent=2))
    print('Issues:', len(graph['issues']))
    for warning in graph['issues'][:20]: print(' -', warning)
    print('Saved:', out)


if __name__ == '__main__': main()