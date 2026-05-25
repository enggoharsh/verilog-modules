/*
design of full adder usign two half adders

*/
`include "ha.v"
module fa (input A, B, Cin,
output sum, carry
);

wire w1, w2, w3;

ha ha1 (.A(A), .B(B), .sum(w1), .carry(w2));   // first half adder
ha ha2 (.A(w1), .B(Cin), .sum(sum), .carry(w3));  // second half adder
or (carry, w2, w3);   // or gate for generation of carry

    
endmodule