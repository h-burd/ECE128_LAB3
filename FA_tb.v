`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 01:27:56 PM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;
    reg A, B, CI;
    wire S, CO;

    FA uut (.A(A),.B(B),.CI(CI),.S(S),.CO(CO));

    initial begin
        #10 A = 0; B = 0; CI = 0;
        #10 A = 0; B = 0; CI = 1;
        #10 A = 0; B = 1; CI = 0;
        #10 A = 0; B = 1; CI = 1;
        #10 A = 1; B = 0; CI = 0;
        #10 A = 1; B = 0; CI = 1;
        #10 A = 1; B = 1; CI = 0;
        #10 A = 1; B = 1; CI = 1;
        #10 $stop;
    end
      
endmodule
