`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 11:48:53 PM
// Design Name: 
// Module Name: HalfAdder_DataFlow
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


module HalfAdder_DataFlow(sum,carry,a,b);
output sum,carry;
input a,b;
assign sum = a^b;
assign carry = a&b;
endmodule


module HalfAdderTB();
reg a,b;
wire sum,carry;

HalfAdder_DataFlow h1(sum,carry,a,b);

initial
$monitor($time,":",a,b,sum,carry);

initial 
begin
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0; 
#5 a=1;b=1;
#5 $stop;
$finish;
end

endmodule
