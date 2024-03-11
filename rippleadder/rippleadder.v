`timescale 1ns / 1ps
//ripple carry adder via full adders
module rippleadder(x,y,cin,sum,cout);
input [3:0]x,y;
input cin;
output[3:0]sum;
output cout;
    wire w1,w2,w3;
fulladder fa1(x[0],y[0],cin,sum[0],w1);
fulladder fa2(x[1],y[1],w1,sum[1],w2);
fulladder fa3(x[2],y[2],w2,sum[2],w3);
fulladder fa4(x[3],y[3],w3,sum[3],cout);
endmodule 
