`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Shivraj Babar 
// 
// Create Date: 08.08.2025 18:58:44
// Design Name: 
// Module Name: vedic2x2
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


module vedic2x2(A,B,Prod); 
    input [1:0]A,B; 
    output [3:0]Prod; 
    
    wire w1,w2,w3,w4; 
    
    assign Prod[0]=A[0]&B[0]; 
    assign w1=A[0]&B[1];
    assign w2=A[1]&B[0];
    assign w3=A[1]&B[1];  
    
    HA HA1(.a(w2),.b(w1),.sum(Prod[1]),.cout(w4));
    HA HA2(.a(w4),.b(w3),.sum(Prod[2]),.cout(Prod[3]));
    
    
endmodule
