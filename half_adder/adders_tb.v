`timescale 1ns / 1ps

module halfadder_tb();
reg x,y; 
wire s,c;
 integer i;
 halfadder dut(x,y,s,c); //for arbitrary variables not in main module ,referencing not required
 initial
begin
{x,y}=2'b00;
end
initial
begin
for(i=0;i<4;i=i+1)
begin
{x,y}=i;
#10; end
end
initial
$monitor("input A=%b B=%b sum=%b carry=%b",x,y,s,c);
initial #100 $finish;
endmodule
