"""Functional backward-cone extraction from Scan_research graph JSON.

This stage consumes the validated functional graph, not the raw scan netlist.
PPI/PI/CONST nodes terminate traversal; sequential arcs are not traversed.
"""
from __future__ import annotations

from collections import defaultdict
from typing import Any

SOURCES = {"PI", "PPI", "CONST"}
SINKS = {"PPO", "PO"}


def extract_cones(graph: dict[str, Any], *, include_po: bool = False) -> dict[str, Any]:
    nodes = {n["id"]: n for n in graph["nodes"]}
    if len(nodes) != len(graph["nodes"]):
        raise ValueError("Duplicate graph node IDs")
    predecessors: dict[str, set[str]] = defaultdict(set)
    for edge in graph["edges"]:
        src, dst = edge["src"], edge["dst"]
        if src not in nodes or dst not in nodes:
            raise ValueError(f"Edge references missing node: {src} -> {dst}")
        predecessors[dst].add(src)

    targets = [n for n in graph["nodes"] if n["type"] == "PPO" or (include_po and n["type"] == "PO")]
    cones = []
    for target in sorted(targets, key=lambda x: x["id"]):
        sink = target["id"]
        stack = [sink]
        visited: set[str] = set()
        pi: set[str] = set()
        ppi: set[str] = set()
        constants: set[str] = set()
        cells: set[str] = set()
        outputs: set[str] = set()
        unknown: set[str] = set()
        undriven: set[str] = set()
        while stack:
            node_id = stack.pop()
            if node_id in visited:
                continue
            visited.add(node_id)
            node = nodes[node_id]
            typ = node["type"]
            if typ == "PI":
                pi.add(node_id)
                continue
            if typ == "PPI":
                ppi.add(node_id)
                continue
            if typ == "CONST":
                constants.add(node_id)
                continue
            if typ == "COMB":
                outputs.add(node_id)
                if not node.get("instance"):
                    unknown.add(node_id)
                else:
                    cells.add(node["instance"])
            if typ not in {"NET", "COMB", "PO", "PPO"}:
                unknown.add(node_id)
            incoming = predecessors.get(node_id, set())
            if not incoming and typ == "NET":
                undriven.add(node_id)
            stack.extend(incoming - visited)

        # Area: charge each *physical instance* only once, even when
        # multiple output pins from that instance occur in the cone.
        instance_areas: dict[str, float | None] = {}
        for n_id in outputs:
            node = nodes[n_id]
            inst = node.get("instance")
            if inst:
                old = instance_areas.get(inst)
                new = node.get("area")
                if old is not None and new is not None and abs(old - new) > 1e-9:
                    raise ValueError(f"Conflicting area for {inst}")
                instance_areas[inst] = new if old is None else old
        missing_areas = sorted(i for i, a in instance_areas.items() if a is None)
        cones.append({
            "sink": sink,
            "sink_type": target["type"],
            "destination_ff": target.get("instance") if target["type"] == "PPO" else None,
            "gate_instances": sorted(cells),
            "gate_output_nodes": sorted(outputs),
            "source_ppis": sorted(ppi),
            "source_ff_instances": sorted({nodes[p]["instance"] for p in ppi if nodes[p].get("instance")}),
            "source_pis": sorted(pi),
            "constants": sorted(constants),
            "num_gates": len(cells),
            "num_source_ppis": len(ppi),
            "gate_area": None if missing_areas else round(sum(instance_areas.values()), 10),
            "missing_area_instances": missing_areas,
            "unresolved_nodes": sorted(unknown),
            "undriven_nets": sorted(undriven),
        })
    return {
        "module": graph.get("module"),
        "method": "reverse_fanin_functional_graph",
        "cones": cones,
        "statistics": {
            "cones": len(cones),
            "ppo_cones": sum(c["sink_type"] == "PPO" for c in cones),
            "po_cones": sum(c["sink_type"] == "PO" for c in cones),
            "cones_with_unresolved_nodes": sum(bool(c["unresolved_nodes"]) for c in cones),
            "cones_with_undriven_nets": sum(bool(c["undriven_nets"]) for c in cones),
        },
    }
