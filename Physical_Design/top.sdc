create_clock -name clk -period 10  
set_input_delay 3 -clock clk -max [get_ports {A B}]
set_input_delay 2 -clock clk -min [get_ports {A B}]
set_output_delay 1 -clock clk -max [get_ports {Prod}]
set_output_delay 1 -clock clk -min [get_ports {Prod}]
set_load 0.05 [get_ports {Prod}] 

