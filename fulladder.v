`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 12:03:05
// Design Name: 
// Module Name: fulladder
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
module fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
halfadder ha1(a,b,w1,w2);
halfadder ha2(w1,cin,sum,w3);
or or1(cout,w2,w3);
endmodule
