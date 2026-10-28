#!/usr/bin/env python3
"""Standalone Liberty (.lib/.lib.gz) to JSON cell database extractor."""
import argparse
import gzip
import json
from pathlib import Path

from liberty.parser import parse_liberty


def normalize(value):
    """Convert parser-specific values to JSON-safe values."""
    if value is None or isinstance(value, (bool, int, float, str)):
        return value
    if hasattr(value, "value"):
        return normalize(value.value)
    if isinstance(value, (list, tuple)):
        return [normalize(x) for x in value]
    return str(value).strip('"')


def attribute(group, key):
    return normalize(group.get_attribute(key, None))


def groups(group, kind):
    return group.get_groups(kind)


def name_of(group):
    return str(normalize(group.args[0])).strip('"') if group.args else ""


def read_text(path):
    opener = gzip.open if path.suffix.lower() == ".gz" else open
    with opener(path, "rt", encoding="utf-8", errors="replace") as handle:
        return handle.read()


def parse_pin(group):
    fields = ("direction", "function", "three_state", "capacitance", "max_capacitance",
              "min_capacitance", "clock", "related_power_pin", "related_ground_pin")
    result = {key: attribute(group, key) for key in fields}
    result["name"] = name_of(group)
    return result


def parse_seq(group, kind):
    keys = ("clocked_on", "clocked_on_also", "next_state", "clear", "preset",
            "clear_preset_var1", "clear_preset_var2") if kind == "ff" else (
            "enable", "enable_also", "data_in", "clear", "preset",
            "clear_preset_var1", "clear_preset_var2")
    return {"state_variables": [normalize(x) for x in group.args],
            **{key: attribute(group, key) for key in keys}}


def parse_cell(group):
    pins = {name_of(p): parse_pin(p) for p in groups(group, "pin")}
    ff = [parse_seq(g, "ff") for g in groups(group, "ff")]
    latch = [parse_seq(g, "latch") for g in groups(group, "latch")]
    kind = "ff" if ff else "latch" if latch else "combinational"
    upper = {name.upper(): name for name in pins}
    scan_in = next((upper[p] for p in ("SI", "SCANIN", "SCAN_IN") if p in upper), None)
    scan_enable = next((upper[p] for p in ("SE", "SCANEN", "SCAN_EN") if p in upper), None)
    return {
        "name": name_of(group), "cell_type": kind,
        "area": attribute(group, "area"),
        "flags": {k: attribute(group, k) for k in (
            "is_buffer", "is_inverter", "is_clock_gating_cell", "dont_use")},
        "pins": pins, "flip_flops": ff, "latches": latch,
        "scan_candidate": bool(ff and scan_in and scan_enable),
        "scan_pin_hints": {"scan_in": scan_in, "scan_enable": scan_enable},
    }


def main():
    cli = argparse.ArgumentParser(description="Export Liberty standard-cell metadata to JSON")
    cli.add_argument("--lib", required=True, type=Path, help="Input .lib or .lib.gz")
    cli.add_argument("--output", default="outputs/parsed/saed14_cells.json", type=Path)
    cli.add_argument("--cell", help="Optionally print one extracted cell")
    args = cli.parse_args()
    if not args.lib.is_file():
        cli.error(f"Library not found: {args.lib}")
    print(f"Parsing: {args.lib}", flush=True)
    library = parse_liberty(read_text(args.lib))
    cells = {}
    for group in groups(library, "cell"):
        result = parse_cell(group)
        if result["name"] in cells:
            raise ValueError(f"Duplicate cell: {result['name']}")
        cells[result["name"]] = result
    summary = {
        "total": len(cells),
        "combinational": sum(c["cell_type"] == "combinational" for c in cells.values()),
        "ff": sum(c["cell_type"] == "ff" for c in cells.values()),
        "latch": sum(c["cell_type"] == "latch" for c in cells.values()),
        "scan_candidates": sum(c["scan_candidate"] for c in cells.values()),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("w", encoding="utf-8") as handle:
        json.dump({"library": name_of(library), "summary": summary, "cells": cells},
                  handle, indent=2, sort_keys=True)
    print("Summary:", json.dumps(summary, indent=2))
    print(f"Written: {args.output}")
    if args.cell:
        if args.cell in cells:
            print(json.dumps(cells[args.cell], indent=2))
        else:
            print(f"Cell not found: {args.cell}")


if __name__ == "__main__":
    main()