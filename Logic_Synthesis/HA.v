`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 18:56:45
// Design Name: 
// Module Name: HA
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


module HA(a,b,sum,cout); 
    input a,b; 
    output sum, cout; 
    
    xor(sum,a,b);
    and(cout,a,b); 
     
endmodule
