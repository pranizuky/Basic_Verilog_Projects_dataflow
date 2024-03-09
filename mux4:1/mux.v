`timescale 1ns / 1ps
//4:1 MUX via decoder and buffers

module decoder(a,b,y);
 input a,b;
output [3:0]y;
 assign y[0]=(~a)&(~b);
assign y[1]=(~a)&(b);
assign y[2]=(a)&(~b);
assign y[3]=(a)&(b);
endmodule
module
tribuf(in,cn,out);
input in,cn;
 output out; 
 assign out=(cn)?in:'bz;
endmodule
module mux(i,s,y);
input [3:0]i; 
input[1:0]s; 
output wire y;
wire [3:0]w; 
decoder d1(s[1],s[0],w);
tribuf t1(i[0],w[0],y);
tribuf t2(i[1],w[1],y);
tribuf t3(i[2],w[2],y);
tribuf t4(i[3],w[3],y);
endmodule
