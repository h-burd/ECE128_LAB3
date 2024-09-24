`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 02:23:57 PM
// Design Name: 
// Module Name: Top_2bit_LookAhead
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


module Top_2bit_LookAhead(a, b, cout,cin, s);
    input [1:0] a,b;
    input cin;
    output [1:0] s;
    output cout;
    
    wire [2:0] w_c;
    wire [1:0] w_g, w_p, w_s;
    
    assign w_g[0] = a[0] & b[0];
    assign w_g[1] = a[1] & b[1];
    
    assign w_p[0] = a[0] ^ b[0];
    assign w_p[1] = a[1] ^ b[1];
    
    assign w_c[0] = cin;
    
    assign w_c[1] = w_g[0] | (w_p[0] & w_c[0]);
    assign w_c[2] = w_g[1] | (w_p[1] & w_c[1]);
    
    FA uut1(a[0], b[0], w_c[0], s[0]);
    FA uut2(a[1], b[1], w_c[1], s[1]);
    
    assign cout = w_c[2];
endmodule


