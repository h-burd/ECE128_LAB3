`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 01:49:23 PM
// Design Name: 
// Module Name: Top_tb
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


module Top_tb;
    reg [1:0] a, b;
    wire [6:0] seg;

    Top uut (.a(a),.b(b),.seg(seg),.cin(1'b0));

    initial begin
        #10 a = 2'b00; b = 2'b00;
        #10 a = 2'b01; b = 2'b01;
        #10 a = 2'b10; b = 2'b10;
        #10 a = 2'b11; b = 2'b11;
        #10 a = 2'b01; b = 2'b10;
        #10 a = 2'b10; b = 2'b01;
        #10 $stop;
    end
      
endmodule
