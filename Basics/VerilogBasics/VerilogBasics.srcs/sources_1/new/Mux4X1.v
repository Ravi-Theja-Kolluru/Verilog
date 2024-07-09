`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 11:04:51 PM
// Design Name: 
// Module Name: Mux4X1
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


module Mux4X1(answer, sel, inputs);
    Mux4X1_Behavioral m4Mux4X1_Behavioral();
    
    input [1:0]sel;
    input [3:0]inputs;
    output reg answer;
    
    always@(*)
    begin
        case(sel)
        2'b00: answer = inputs[0];
        2'b01: answer = inputs[1];
        2'b10: answer = inputs[2];
        2'b11: answer = inputs[3];
        default: answer = 0'bx;
        endcase
    end 
    
endmodule

//module Mux4X1_Behavioral(answer, sel, inputs);
    
//    input [1:0]sel;
//    input [3:0]inputs;
//    output answer;
    
//    always@(*)
//    begin
//        case(sel)
//        2'b00: answer = 1'b1;
//        2'b01: answer = inputs[1];
//        2'b10: answer = inputs[2];
//        2'b11: answer = inputs[3];
//        default: answer = 0'bx;
//        endcase
//    end
    
//endmodule


module Mux4X1Tb();
reg [1:0]sel;
reg [3:0]inputs;
wire answer;

Mux4X1_Behavioral m1(answer, sel, inputs);

initial
begin
    inputs = 4'b1010;
    sel = 2'b00;
    #5 sel = 2'b01;
    #5 sel = 2'b10;
    #5 sel = 2'b11;
    #5 $stop;
    $finish;
end

endmodule

