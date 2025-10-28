`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 12:38:31
// Design Name: 
// Module Name: vedic32x32
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


module vedic32x32(A,B,Prod,ground,overflow); 
    input [31:0]A,B; 
    output [63:0]Prod;  
    input ground;
    output overflow;  
    
    //Assigning the Output's of the Vedic 16x16  multiplier 
    
    wire [31:0]v1;
    wire [31:0]v2;
    wire [31:0]v3;
    wire [31:0]v4; 
    
    //Outputs of the RCA's 
    wire [31:0]s1;
    wire [31:0]s2;  
    
    // Cout of the RCA's  
    wire c1,c2,c3; 
    
    or(c3,c1,c2); 
    
    vedic16x16 V1(.A(A[15:0]),.B(B[15:0]),.Prod(v1),.ground(ground)); 
    
    
    vedic16x16 V2(.A(A[31:16]),.B(B[15:0]),.Prod(v2),.ground(ground));  
    
    
    vedic16x16 V3(.A(A[15:0]),.B(B[31:16]),.Prod(v3),.ground(ground));  
    
    
    vedic16x16 V4(.A(A[31:16]),.B(B[31:16]),.Prod(v4),.ground(ground));  
    
    
    
    RCA32 A1(.a(v2),.b(v3),.cin(ground),.sum(s1),.cout(c1)); 
    
    RCA32 A2(.a(s1),.b({ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,v1[31:16]}),.cin(ground),.sum(s2),.cout(c2));
    
    RCA32 A3(.a(v4),.b({ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,ground,c3,s2[31:16]}),.cin(ground),.sum(Prod[63:32]),.cout(overflow));
    
    assign Prod[31:16]=s2[15:0]; 
    assign Prod[15:0]=v1[15:0]; 
    
    
endmodule
