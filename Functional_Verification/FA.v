`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 19:18:53
// Design Name: 
// Module Name: FA
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


module FA(a,b,cin,sum,cout); 
    input a,b;
    input cin; 
    output sum; 
    output cout; 
    
    wire s1,c1,c2;
    HA M1(.a(a),.b(b),.sum(s1),.cout(c1));
    HA M2(.a(s1),.b(cin),.sum(sum),.cout(c2));
    or(cout,c1,c2);  
    
    
    
endmodule
