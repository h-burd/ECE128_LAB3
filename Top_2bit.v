`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 01:40:32 PM
// Design Name: 
// Module Name: Top_2bit
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


module Top_2bit(a, b, cout, s);
	input [1:0] a, b;
	output cout; 
	wire cin_0;
	output [1:0] s;

	wire c;

	assign cin_0 = 1'b0;

	FA A1 (a[0], b[0], cin_0, s[0], c);
	FA A2 (a[1], b[1], c, s[1], cout);
endmodule

