"""CLI to compute and audit functional fanin cones from graph JSON."""
import argparse
import csv
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from src.python.graph.cones import extract_cones


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--graph", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--csv", type=Path, help="Optional cone summary CSV")
    parser.add_argument("--include-po", action="store_true", help="Also extract top-level PO cones")
    args = parser.parse_args()

    graph = json.loads(args.graph.read_text())
    result = extract_cones(graph, include_po=args.include_po)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n")
    if args.csv:
        args.csv.parent.mkdir(parents=True, exist_ok=True)
        with args.csv.open("w", newline="") as fp:
            writer = csv.DictWriter(fp, fieldnames=["sink", "destination_ff", "num_gates", "num_source_ppis", "gate_area", "source_ff_instances", "source_pis", "undriven_nets"])
            writer.writeheader()
            for c in result["cones"]:
                writer.writerow({k: ";".join(c[k]) if isinstance(c[k], list) else c[k] for k in writer.fieldnames})
    print(f"Module: {result['module']}")
    print("Statistics:", result["statistics"])
    for cone in result["cones"]:
        print(f"{cone['sink']}: gates={cone['num_gates']}, source_FFs={cone['num_source_ppis']}, "
              f"PI={len(cone['source_pis'])}, unresolved={len(cone['unresolved_nodes'])}, "
              f"undriven={len(cone['undriven_nets'])}")
    print("JSON:", args.output)
    if args.csv:
        print("CSV:", args.csv)


if __name__ == "__main__":
    main()
