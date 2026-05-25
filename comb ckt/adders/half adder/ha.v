module ha (input A,
input B,
output sum, carry);

and (carry, A, B);   // carry
xor (sum, A, B);     // sum

endmodule