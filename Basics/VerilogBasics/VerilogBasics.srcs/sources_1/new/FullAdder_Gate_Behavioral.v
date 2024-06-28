`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 11:59:55 PM
// Design Name: 
// Module Name: FullAdder_Gate_Behavioral
// Project Name: Verilog Basics
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// Date: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FullAdder_Gate_Behavioral(sum, carry, a, b, c);
    output sum,carry;
    input a,b,c;
    wire x1,x2,x3;
    xor(sum,a,b,c);
    and(x1,a,b);
    xor(x2,a,b);
    and(x3,x2,c);
    or(carry,x1,x3);
endmodule


module FullAdder_DataFlow(sum2, carry2, a2, b2, c2);
    output sum2,carry2;
    input a2,b2,c2;
    
    assign sum2 = a2^b2^c2; 
    assign carry2 = a2&b2 | c2&(a2|b2);   
endmodule


module FullAdderTB();
    
    reg a,b,c;
    wire sum,carry;
//    FullAdder_Gate_Behavioral f1(sum, carry, a, b, c);
    FullAdder_DataFlow f2(sum, carry, a, b, c);
    initial
    $monitor($time, "s", ":", a, b, c, sum, carry);
    
    initial
    begin
        a=0;b=0;c=0;
        #5 a=0;b=0;c=1;
        #5 a=0;b=1;c=0;
        #5 a=0;b=1;c=1;
        #5 a=1;b=0;c=0;
        #5 a=1;b=0;c=1;
        #5 a=1;b=1;c=0;
        #5 a=1;b=1;c=1;
        #5 $stop;
    end
endmodule
