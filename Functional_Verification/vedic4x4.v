`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 19:37:02
// Design Name: 
// Module Name: vedic4x4
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


module vedic4x4(A,B,Prod,ground,overflow); 
    input [3:0]A,B; 
    output [7:0]Prod;  
    input ground;
    output overflow;
    //These are the outputs of the vedic2x2 multipliers 
    wire [3:0]v1;
    wire [3:0]v2;
    wire [3:0]v3;
    wire [3:0]v4;  
    
    // this are the output of the RCA4 Adders 
    wire [3:0]s1;
    wire [3:0]s2;
    
    //carry bit of the RCA4
    
    wire c1; 
    wire c2;
    wire c3; // Or Gate Output  
    
    or(c3,c1,c2);
    
    vedic2x2 V1(.A(A[1:0]),.B(B[1:0]),.Prod(v1));
    vedic2x2 V2(.A(A[3:2]),.B(B[1:0]),.Prod(v2)); 
    
    vedic2x2 V3(.A(A[1:0]),.B(B[3:2]),.Prod(v3));
    
    vedic2x2 V4(.A(A[3:2]),.B(B[3:2]),.Prod(v4));  
    
    RCA4 A1(.a(v2),.b(v3),.cin(ground),.sum(s1),.cout(c1));
    
    RCA4 A2(.a(s1),.b({ground,ground,v1[3:2]}),.cin(ground),.sum(s2),.cout(c2));
    
    RCA4 A3(.a(v4),.b({ground,c3,s2[3:2]}),.cin(ground),.sum(Prod[7:4]),.cout(overflow)); 
     
    
    assign Prod[3:2]=s2[1:0];
    assign Prod[1:0]=v1[1:0]; 
    
endmodule
