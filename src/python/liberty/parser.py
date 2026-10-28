
from pathlib import Path
import gzip

from liberty.parser import parse_liberty

from .cell_database import CellDatabase, CellInfo, PinInfo


def get_attribute(group, name, default=None):
    """Safely read a Liberty attribute."""
    value = group.get_attribute(name, default)

    if value is None:
        return default

    # Liberty parser may return EscapedString objects.
    if hasattr(value, "value"):
        value = value.value

    if isinstance(value, bytes):
        value = value.decode("utf-8")

    if isinstance(value, str):
        return value.strip().strip('"')

    return value


def get_groups(group, name):
    """Return all child groups with the specified name."""
    return group.get_groups(name)


def read_liberty_file(path):
    """Read a plain or gzip-compressed Liberty file."""
    path = Path(path)

    if not path.is_file():
        raise FileNotFoundError(f"Liberty file not found: {path}")

    if path.suffix == ".gz":
        with gzip.open(path, "rt", encoding="utf-8") as f:
            return f.read()

    with path.open("r", encoding="utf-8") as f:
        return f.read()


def parse_pin(pin_group):
    """Extract one standard-cell pin."""
    name = str(pin_group.args[0])

    direction = get_attribute(
        pin_group, "direction", "unknown"
    )

    function = get_attribute(
        pin_group, "function"
    )

    capacitance = get_attribute(
        pin_group, "capacitance"
    )

    if capacitance is not None:
        capacitance = float(capacitance)

    return PinInfo(
        name=name,
        direction=str(direction),
        function=function,
        capacitance=capacitance
    )


def parse_sequential(cell_group, cell):
    """Extract sequential behavior from FF or latch groups."""

    ff_groups = get_groups(cell_group, "ff")
    latch_groups = get_groups(cell_group, "latch")

    if ff_groups:
        cell.cell_type = "ff"

        ff = ff_groups[0]

        cell.clocked_on = get_attribute(
            ff, "clocked_on"
        )

        cell.next_state = get_attribute(
            ff, "next_state"
        )

        cell.clear = get_attribute(
            ff, "clear"
        )

        cell.preset = get_attribute(
            ff, "preset"
        )

    elif latch_groups:
        cell.cell_type = "latch"

        latch = latch_groups[0]

        cell.clocked_on = get_attribute(
            latch, "enable"
        )

        cell.next_state = get_attribute(
            latch, "data_in"
        )

        cell.clear = get_attribute(
            latch, "clear"
        )

        cell.preset = get_attribute(
            latch, "preset"
        )

    else:
        cell.cell_type = "comb"


def detect_scan_candidate(cell):
    """
    Identify possible scan FFs using pin names.

    This is preliminary classification, not validation.
    """

    if cell.cell_type != "ff":
        return False

    pin_names = {name.upper() for name in cell.pins}

    scan_inputs = {"SI", "SCANIN", "SCAN_IN"}
    scan_enables = {"SE", "SCANEN", "SCAN_EN"}

    has_scan_input = bool(pin_names & scan_inputs)
    has_scan_enable = bool(pin_names & scan_enables)

    return has_scan_input and has_scan_enable


def parse_cell(cell_group):
    """Extract one standard-cell definition."""

    name = str(cell_group.args[0])

    area = get_attribute(cell_group, "area")

    if area is not None:
        area = float(area)

    cell = CellInfo(
        name=name,
        area=area
    )

    for pin_group in get_groups(cell_group, "pin"):
        pin = parse_pin(pin_group)
        cell.add_pin(pin)

    parse_sequential(cell_group, cell)

    cell.is_scan = detect_scan_candidate(cell)

    return cell


def parse_library(path):
    """
    Read a Liberty file and return a CellDatabase.
    """

    text = read_liberty_file(path)

    library = parse_liberty(text)

    database = CellDatabase()

    for cell_group in get_groups(library, "cell"):
        cell = parse_cell(cell_group)
        database.add_cell(cell)

    return database
