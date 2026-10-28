
from dataclasses import dataclass, field, asdict
from typing import Dict, Optional
import json


@dataclass
class PinInfo:
    name: str
    direction: str

    function: Optional[str] = None

    # Optional pin metadata
    capacitance: Optional[float] = None


@dataclass
class CellInfo:
    name: str
    area: Optional[float] = None

    # comb, ff, latch, or unknown
    cell_type: str = "unknown"

    pins: Dict[str, PinInfo] = field(default_factory=dict)

    # Liberty sequential information
    clocked_on: Optional[str] = None
    next_state: Optional[str] = None
    clear: Optional[str] = None
    preset: Optional[str] = None

    # Scan classification (validated in a later stage)
    is_scan: bool = False

    def add_pin(self, pin: PinInfo):
        if pin.name in self.pins:
            raise ValueError(f"Duplicate pin: {pin.name}")
        self.pins[pin.name] = pin

    def to_dict(self):
        return asdict(self)


class CellDatabase:
    def __init__(self):
        self.cells: Dict[str, CellInfo] = {}

    def add_cell(self, cell: CellInfo):
        if cell.name in self.cells:
            raise ValueError(f"Duplicate cell: {cell.name}")
        self.cells[cell.name] = cell

    def get_cell(self, name: str) -> Optional[CellInfo]:
        return self.cells.get(name)

    def summary(self):
        counts = {
            "total": len(self.cells),
            "comb": 0,
            "ff": 0,
            "latch": 0,
            "unknown": 0
        }

        for cell in self.cells.values():
            kind = cell.cell_type
            counts[kind] = counts.get(kind, 0) + 1

        return counts

    def export_json(self, path: str):
        with open(path, "w") as f:
            json.dump(
                {
                    name: cell.to_dict()
                    for name, cell in sorted(self.cells.items())
                },
                f,
                indent=2
            )
