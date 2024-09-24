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


module Top(a, b,cin,seg);
    input[1:0] a,b;
    output[6:0] seg;
    input cin;
    wire cout;

    wire[1:0] yt;
    wire[3:0] ytt;
    
    Top_2bit_LookAhead uutLook (a, b, cout,cin, yt);

    assign ytt = {1'b0, cout, yt};
    
    Segment_Display uutSeg (ytt, seg);

endmodule

