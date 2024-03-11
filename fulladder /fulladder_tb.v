`timescale 1ns / 1ps


module fulladder_tb();
reg x,y,z;
 wire s,co;
integer i;
fulladder dut(x,y,z,s,co);
initial
begin
{x,y,z}=3'b000;
end
initial
begin
for(i=0;i<8;i=i+1)
begin
{x,y,z}=i;
#10;
end
end
initial
$monitor("input A=%b B=%b CIN=%b SUM=%b COUT=%b",x,y,z,s,co);
initial #400 $finish; endmodule 
