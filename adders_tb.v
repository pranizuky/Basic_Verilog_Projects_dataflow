`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 11:49:57
// Design Name: 
// Module Name: adders_tb
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


module halfadder_tb();
reg x,y; 
wire s,c;
 integer i;
halfadder dut(x,y,s,c);
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