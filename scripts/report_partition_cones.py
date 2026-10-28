import json
from pathlib import Path

root = Path("outputs")

with open(root / "partitions/b01_k2.json") as f:
    partition_data = json.load(f)

with open(root / "cones/b01_cones.json") as f:
    cone_data = json.load(f)

cones_by_ff = {
    cone["destination_ff"]: cone
    for cone in cone_data["cones"]
    if cone["sink_type"] == "PPO"
}

report = {
    "module": cone_data["module"],
    "partitions": [],
    "shared_gates": [],
}

gate_owners = {}

for partition in partition_data["partitions"]:
    pid = partition["id"]
    gate_union = set()
    ff_cones = []

    for ff in partition["ffs"]:
        cone = cones_by_ff[ff]
        gates = set(cone["gate_instances"])
        gate_union.update(gates)

        ff_cones.append({
            "ff": ff,
            "sink": cone["sink"],
            "gates": sorted(gates),
            "source_ffs": cone["source_ff_instances"],
            "source_pis": cone["source_pis"],
        })

    for gate in gate_union:
        gate_owners.setdefault(gate, set()).add(pid)

    report["partitions"].append({
        "id": pid,
        "ffs": partition["ffs"],
        "num_unique_cone_gates": len(gate_union),
        "gate_union": sorted(gate_union),
        "ff_cones": ff_cones,
    })

report["shared_gates"] = [
    {"gate": gate, "partitions": sorted(owners)}
    for gate, owners in sorted(gate_owners.items())
    if len(owners) > 1
]

output = root / "partitions/b01_k2_cones.json"
output.parent.mkdir(parents=True, exist_ok=True)

with open(output, "w") as f:
    json.dump(report, f, indent=2)

for p in report["partitions"]:
    print(
        f"Partition {p['id']}: "
        f"{len(p['ffs'])} FFs, "
        f"{p['num_unique_cone_gates']} unique cone gates"
    )

print("Cross-partition shared gates:",
      [g["gate"] for g in report["shared_gates"]])

print("Saved:", output)