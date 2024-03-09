`timescale 1ns / 1ps
module mux_tb();
 reg [3:0]i;
reg [1:0]s;
wire y;
integer j;
 mux dut(i,s,y);
initial
begin
 for(j=0;j<64;j=j+1)
begin
{i,s}=j;
#10; 
end
end
 initial
$monitor("inputj=%d,i=%b,s=%b,y=%b",j,i,s,y);
initial #200 $finish;  
endmodule
