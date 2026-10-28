# TestMAX ATPG baseline
# Replace paths with your actual files.

set_messages -level expert -log baseline.log -replace

# SAED14 simulation / ATPG cell models
read_netlist -lib /path/to/saed14_cells.v

# Scan-connected benchmark netlist
read_netlist /path/to/design_scan.v

run_build_model design_top

# Initial stuck-at fault experiment
set_faults -model stuck

# Define actual clock and scan protocol here.
# Example only, for an active-high clock:
# add_clocks 0 clock -shift

# Supply a validated DRC procedure file.
# run_drc /path/to/design.spf

# Do not proceed until DRC succeeds.