# read modules from Verilog file
read_verilog  HA.v FA.v RCA4.v RCA8.v RCA16.v RCA32.v vedic2x2.v vedic4x4.v vedic8x8.v vedic16x16.v vedic32x32.v 

#hierarchy top 
hierarchy -top vedic32x32

# translate processes to netlists
proc
# remove unused cells and wires
clean
# show the generic netlist
show

#perform optimization
opt
#resource sharing optimization
share -aggressive


# show the generic netlist
show

# mapping to internal cell library
techmap
# mapping flip-flops to toy.lib 
dfflibmap -liberty NangateOCL.lib
# mapping logic to toy.lib 
abc -liberty NangateOCL.lib
# remove unused cells and wires
clean
#report design statistics
stat -liberty NangateOCL.lib

# Write the current design to a Verilog file
write_verilog -noattr -noexpr -nohex -nodec netlist_vedic32.v 
