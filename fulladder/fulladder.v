`timescale 1ns / 1ps
//full adder via half adder
module fulladder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
halfadder ha1(a,b,w1,w2);
halfadder ha2(w1,cin,sum,w3);
or or1(cout,w2,w3);
endmodule
