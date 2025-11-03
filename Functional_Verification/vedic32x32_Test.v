`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Shivraj Babar
// 
// Create Date: 08.08.2025 21:47:07
// Design Name: 
// Module Name: vedic16x16_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vedic32x32_Test;  
    reg [31:0]A,B; 
    wire [63:0]Prod;  
    reg ground; 
    wire overflow;
    vedic32x32 DUT(.A(A),.B(B),.Prod(Prod),.ground(ground)); 
    
    initial 
    begin 
     A=32'h444; B=32'h444; ground=1'b0;  
    #50 A=32'h4445; B=32'h4445; ground=1'b0; 
    #50 A=32'h1136; B=32'h1136; ground=1'b0; 
    #50 A=32'h3202; B=32'h3202; ground=1'b0; 
    #50 A=32'h9; B=32'h9; ground=1'b0; 
    #10 $finish; 
    end   
    
   initial
   begin	
		$dumpfile("Vedic32x32.vcd"); // specifies the VCD file
		$dumpvars; //dump all the variables
		$monitor("%d,%b,%b,%b,%b,%b",$time,A,B,Prod,ground,overflow);	
   end 
    
    
endmodule
