# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"

source "Nangate45/Nangate45.vars"
#source "sky130hd/sky130hd.vars"

set design "Vedic_32x32"
set top_module "vedic32x32"
set synth_verilog "netlist_vedic32.v"
set sdc_file "top.sdc"

set die_area {0 0 990 1000}
set core_area {15 20 980 970}

#source -echo "floorplan_flow.tcl"
#source -echo "flow_pdn.tcl"
#source -echo "flow_global_placement.tcl"
#source -echo "flow_detailed_placement.tcl" 

#source -echo "flow_cts.tcl" 
source -echo "flow.tcl"

