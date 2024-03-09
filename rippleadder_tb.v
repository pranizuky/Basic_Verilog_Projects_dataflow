`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 12:25:07
// Design Name: 
// Module Name: rippleadder_tb
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

module rippleadder_tb();
reg [3:0]a,b; reg c;
wire [3:0]s;
wire co;
rippleadder dut(a,b,c,s,co);
initial
begin
a=4'd0;
b=4'd0;
c=1'b0; end
initial
begin
#5 a=4'd1; b=4'd1;
#5 a=4'd3; b=4'd1;
#5 a=4'd4; b=4'd1;
#5 a=4'd5; b=4'd1;
#5 a=4'd6; b=4'd1;
#5 a=4'd7; b=4'd1;
#5 a=4'd8; b=4'd1;
#5 a=4'd9; b=4'd1;
#5 a=4'd10; b=4'd1;
#5 a=4'd11; b=4'd1;
#5 a=4'd12; b=4'd1;
#5 a=4'd13; b=4'd1;
#5 a=4'd1; b=4'd14;
#5 a=4'd1; b=4'd15;
#5 a=4'd5; b=4'd15; c=1'b1;
end
initial
begin
$monitor("input X=%b Y=%b Cin=%b SUM=%b Carryout=%b",a,b,c,s,co);
end
initial #500 $finish; endmodule 
