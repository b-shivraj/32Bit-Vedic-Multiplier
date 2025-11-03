**32 Bit Vedic Multiplier** 

This project presents a 32-bit Vedic Multiplier based on the Urdhva Tiryagbhyam Sutra from Vedic Mathematics.It uses a Carry Look-Ahead Adder (CLA) 
to achieve high-speed and efficient multiplication. The design reduces delay and improves performance compared to conventional multipliers. It is modular, 
scalable, and suitable for use in DSP and arithmetic circuits. 
The project demonstrates the RTL to GDS flow, automating the essential steps in logic synthesis, timing analysis, power estimation, and physical design using a combination of open-source tools. 

**Project Overview** 

The Project involves creating the 32bit vedic multiplier and implement it on the RTL to GDS flow.The steps include RTL coding, functional verification, synthesis, timing and power analysis, and physical design (including floorplanning, placement, clock tree synthesis, routing). 

The following open-source tools are used in this flow:

1. Yosys for Logic Synthesis
2. OpenSTA for Timing and Power Analysis
3. OpenROAD for Physical Design and Layout
4. TCL Scripts for Flow Automation 

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

**Physical Design Results**




**Floorplanning** 

die_area {0 0 360 380}
core_area {15 20 330 340} 

<img width="990" height="881" alt="image" src="https://github.com/user-attachments/assets/1b6cbb40-2f43-406d-a42f-d49d9dc7793f" /> 


**Power Delivery Network **

<img width="985" height="889" alt="image" src="https://github.com/user-attachments/assets/070aed8b-49f5-4deb-8287-23e658abb771" /> 


**Global Placement** 

<img width="971" height="874" alt="image" src="https://github.com/user-attachments/assets/a5ccb8ec-54b4-4f71-bab6-530739291f53" />


**Detailed Placement**

<img width="987" height="886" alt="image" src="https://github.com/user-attachments/assets/b7d49cfe-ed04-42a0-97e4-c2cfd5a03b4d" />


**8 Bit Adder Closer View** 

<img width="1496" height="875" alt="image" src="https://github.com/user-attachments/assets/1b36d76e-9cd3-4b89-8d01-d8274d435e53" /> 


**Final Layout:**

<img width="989" height="886" alt="Vedic32bit_Layout" src="https://github.com/user-attachments/assets/fb730351-72ee-4737-8332-06e933e192bb" />









**Directory Structure** 

1. Functional_Verification 
   - Verilog Modules, Results ==> Waveform and VVP 
2. Logic_Synthesis
   - Verilog Modules , Results ==> Netlist.v , Schematic
3. Timing_Power_Checks
   - Library File (NangateOCL.lib), Constraints File (top.sdc) , Netlist , Flow Script (test.tcl). results==> Power and Timing Report in text format. 
4. Physical_Design
   - Flow Script (flow.tcl), constraint file, Netlist, library File, Other Supporting files,
5. Results
   - All Stages Results Snapshots. 




