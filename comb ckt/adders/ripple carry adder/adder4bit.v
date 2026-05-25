/* 
 behavioural modelling of 4bit adder
module adder4bit (
    input [3:0] A, B,
    input Cin,
    output [3:0] sum,
    output carry
);

assign {carry, sum} = A + B + Cin;


*/

// ripple carry adder design from four full adder

`include "fa.v"
module adder4bit (input [3:0] A, B,
input Cin,
output [3:0] sum,
output carry);

wire c1, c2, c3;

fa fa0 (.A(A[0]), .B(B[0]), .Cin(Cin), .sum(sum[0]), .carry(c1));
fa fa1 (.A(A[1]), .B(B[1]), .Cin(c1), .sum(sum[1]), .carry(c2));
fa fa2 (.A(A[2]), .B(B[2]), .Cin(c2), .sum(sum[2]), .carry(c3));
fa fa3 (.A(A[3]), .B(B[3]), .Cin(c3), .sum(sum[3]), .carry(carry));


endmodule