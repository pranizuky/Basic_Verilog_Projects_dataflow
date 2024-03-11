`timescale 1ns / 1ps

module halfadder(
    input A,
    input B,
    output sum,
    output carry
    );
    assign sum=A^B;
assign carry=A&B; 
endmodule

