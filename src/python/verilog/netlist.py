"""Intermediate representation for flattened, synthesized gate-level Verilog."""
from dataclasses import dataclass, field, asdict
from pathlib import Path
import json


@dataclass
class Instance:
    name: str
    cell_type: str
    connections: dict[str, str | None] = field(default_factory=dict)
    parameters: dict[str, str] = field(default_factory=dict)


@dataclass
class Netlist:
    module: str
    source: str
    ports: list[str] = field(default_factory=list)
    inputs: list[str] = field(default_factory=list)
    outputs: list[str] = field(default_factory=list)
    inouts: list[str] = field(default_factory=list)
    wires: list[str] = field(default_factory=list)
    buses: dict[str, dict] = field(default_factory=dict)
    instances: dict[str, Instance] = field(default_factory=dict)
    assigns: list[dict[str, str]] = field(default_factory=list)
    warnings: list[str] = field(default_factory=list)

    def add_instance(self, instance: Instance):
        if instance.name in self.instances:
            raise ValueError(f"Duplicate instance {instance.name!r}")
        self.instances[instance.name] = instance

    def to_dict(self):
        return asdict(self)

    def write_json(self, path):
        output = Path(path)
        output.parent.mkdir(parents=True, exist_ok=True)
        with output.open('w', encoding='utf8') as file:
            json.dump(self.to_dict(), file, indent=2)

    def stats(self):
        return {
            'module': self.module,
            'instances': len(self.instances),
            'cell_types': len({i.cell_type for i in self.instances.values()}),
            'inputs': len(self.inputs),
            'outputs': len(self.outputs),
            'inouts': len(self.inouts),
            'assigns': len(self.assigns),
            'warnings': len(self.warnings),
        }