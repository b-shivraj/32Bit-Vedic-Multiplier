`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Shivraj Babar 
// 
// Create Date: 09.08.2025 10:50:05
// Design Name: 
// Module Name: vedic8x8
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


module vedic8x8(A,B,Prod,ground,overflow); 

    input [7:0]A,B; 
    output [15:0]Prod;  
    input ground;
    output overflow;  
    
    //Assigning the Output's of the Vedic 4x4  multiplier 
    
    wire [7:0]v1;
    wire [7:0]v2;
    wire [7:0]v3;
    wire [7:0]v4;  
    
    //Outputs of the RCA's 
    wire [7:0]s1;
    wire [7:0]s2; 
    
    // Cout of the RCA's  
    wire c1,c2,c3; 
    
    or(c3,c1,c2); 
    
    
    vedic4x4 V1(.A(A[3:0]),.B(B[3:0]),.Prod(v1),.ground(ground)); 
    
    
    vedic4x4 V2(.A(A[7:4]),.B(B[3:0]),.Prod(v2),.ground(ground));  
    
    
    vedic4x4 V3(.A(A[3:0]),.B(B[7:4]),.Prod(v3),.ground(ground));  
    
    
    vedic4x4 V4(.A(A[7:4]),.B(B[7:4]),.Prod(v4),.ground(ground));  
    
    RCA8 A1(.a(v2),.b(v3),.cin(ground),.sum(s1),.cout(c1)); 
    
    RCA8 A2(.a(s1),.b({ground,ground,ground,ground,v1[7:4]}),.cin(ground),.sum(s2),.cout(c2));
        
    RCA8 A3(.a(v4),.b({ground,ground,ground,c3,s2[7:4]}),.cin(ground),.sum(Prod[15:8]),.cout(overflow)); 
    
    assign Prod[7:4]=s2[3:0]; 
    assign Prod[3:0]=v1[3:0]; 
    
    
    
endmodule
