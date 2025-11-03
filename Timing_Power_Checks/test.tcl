read_liberty NangateOCL.lib
read_verilog netlist_vedic32.v 
link_design vedic32x32
read_sdc top.sdc
report_checks -path_delay max -format 
report_checks -path_delay min -format 

report_power 
