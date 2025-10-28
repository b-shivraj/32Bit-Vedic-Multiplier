`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 19:14:45
// Design Name: 
// Module Name: RCA4
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


module RCA4(a,b,cin,sum,cout); 
    input [3:0]a,b;
    input cin; 
    output [3:0]sum; 
    output cout; 
    
    wire c1,c2,c3; 
    FA M1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1));
    FA M2(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2));
    FA M3(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3));
    FA M4(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(cout)); 
    
     
    
    
endmodule
