`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 01:47:56 PM
// Design Name: 
// Module Name: Top
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


module Top(a, b, seg);
    input[1:0] a,b;
    output[6:0] seg;
    wire cout;

    wire[1:0] yt;
    wire[3:0] ytt;
    
    Top_2bit uut(a, b, cout, yt);

    assign ytt = {1'b0, cout, yt};
    
    Segment_Display uut2 (ytt, seg);

endmodule

