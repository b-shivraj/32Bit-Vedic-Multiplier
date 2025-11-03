**32 Bit Vedic Multiplier** 

This project presents a 32-bit Vedic Multiplier based on the Urdhva Tiryagbhyam Sutra from Vedic Mathematics.It uses a Carry Look-Ahead Adder (CLA) 
to achieve high-speed and efficient multiplication. The design reduces delay and improves performance compared to conventional multipliers. It is modular, 
scalable, and suitable for use in DSP and arithmetic circuits. 
The project demonstrates the RTL to GDS flow, automating the essential steps in logic synthesis, timing analysis, power estimation, and physical design using a combination of open-source tools. 

**Project Overview** 

The Project involves creating the 32bit vedic multiplier and implement it on the RTL to GDS flow.The steps include RTL coding, functional verification, synthesis, timing and power analysis, and physical design (including floorplanning, placement, clock tree synthesis, routing). 

The following open-source tools are used in this flow:

Yosys for Logic Synthesis
OpenSTA for Timing and Power Analysis
OpenROAD for Physical Design and Layout
TCL Scripts for Flow Automation 

**RTL to GDS Flow using Open-source Tools** 

1. Write the RTL code in Verilog for the Staged Vedic Multiplier.
2. Develop a testbench to verify the functionality of the RTL design. This testbench is responsible for applying test vectors and checking the output.
3. Perform logic synthesis using the NangateOCL.lib technology library, with the help of top.sdc file. This converts the RTL code into a gate-level netlist.
4. Run static timing analysis using OpenSTA to ensure that the design meets the required timing constraints.
5. Estimate the power consumption of the design using OpenSTA.

Physical Design: 

1. Start Physical Design
2. Define the floorplan for the design, which includes the distribution of cells, macro blocks, and core area.
3. Set up of power distribution network.
4. Perform global placement, where the cells are placed roughly in the layout based on the floorplan.
5. Refine the placement using detailed placement to optimize cell positions, taking into account timing, congestion, and other physical design constraints.
6. Perform clock tree synthesis (CTS) to insert clock buffers and ensure balanced clock delivery to all registers.
7. Perform final routing to connect all the cells using metal layers, ensuring that signal paths meet timing and physical design rules.

**Timing and Power Analysis**



**Directory Structure** 



