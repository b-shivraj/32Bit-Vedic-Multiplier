`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Shivraj Babar 
// 
// Create Date: 09.08.2025 14:57:20
// Design Name: 
// Module Name: RCA16
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


module RCA16(a,b,cin,sum,cout);  

    input [15:0]a,b;
    input cin; 
    output [15:0]sum; 
    output cout;  
    
    wire c1; 
    RCA8 A1(.a(a[7:0]),.b(b[7:0]),.cin(cin),.sum(sum[7:0]),.cout(c1));
    RCA8 A2(.a(a[15:8]),.b(b[15:8]),.cin(c1),.sum(sum[15:8]),.cout(cout));

endmodule
