`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 15:00:38
// Design Name: 
// Module Name: vedic16x16
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


module vedic16x16(A,B,Prod,ground,overflow); 

    input [15:0]A,B; 
    output [31:0]Prod;  
    input ground;
    output overflow; 
     
     //Assigning the Output's of the Vedic 4x4  multiplier 
    
    wire [15:0]v1;
    wire [15:0]v2;
    wire [15:0]v3;
    wire [15:0]v4;  
    
    //Outputs of the RCA's 
    wire [15:0]s1;
    wire [15:0]s2;  
    
    // Cout of the RCA's  
    wire c1,c2,c3; 
    
    or(c3,c1,c2);  
    
    vedic8x8 V1(.A(A[7:0]),.B(B[7:0]),.Prod(v1),.ground(ground)); 
    
    
    vedic8x8 V2(.A(A[15:8]),.B(B[7:0]),.Prod(v2),.ground(ground));  
    
    
    vedic8x8 V3(.A(A[7:0]),.B(B[15:8]),.Prod(v3),.ground(ground));  
    
    
    vedic8x8 V4(.A(A[15:8]),.B(B[15:8]),.Prod(v4),.ground(ground)); 
    
    
    RCA16 A1(.a(v2),.b(v3),.cin(ground),.sum(s1),.cout(c1)); 
    
    RCA16 A2(.a(s1),.b({ground,ground,ground,ground,ground,ground,ground,ground,v1[15:8]}),.cin(ground),.sum(s2),.cout(c2));
    
    RCA16 A3(.a(v4),.b({ground,ground,ground,ground,ground,ground,ground,c3,s2[15:8]}),.cin(ground),.sum(Prod[31:16]),.cout(overflow));
    
    assign Prod[15:8]=s2[7:0]; 
    assign Prod[7:0]=v1[7:0];
endmodule
