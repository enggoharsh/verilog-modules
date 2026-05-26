/* 16 bit ALU where i will try to impliment Arithmetic:  add, sub, mul, divide
                                            Logical: and, or, not, xor
                                            Shift : SR, SL, SRA, SLA

*/
module alu16bit (input [15:0] A,     // first i/p 
input [15:0] B,                     // second i/p
input [3:0] op,                     // operation
input Cin,                          // carry/borrow for add/sub respectively
output reg [15:0] out,              // result or output from alu
output reg Cout,                    // carry out/ borrow out for add/sub respectively
output overflow                     // overflow for multiply
);

always @(*) begin
    case (op)
        4'b0000: {Cout, out} = A + B + Cin;          // add
        4'b0001: {Cout, out} = A - (B + Cin);          // subtract
        4'b0010: out = A * B;                        // multiply
        4'b0011: out = A / B;                        // divison to generate quotient
        4'b0100: out = A % B;                        // modulus for remainder
        4'b0101: out = A & B;                        // AND
        4'b0110: out = A | B;                        // OR
        4'b0111: out = ~A;                           // NOT
        4'b1000: out = A ^ B;                        // XOR
        4'b1001: out = A >> B;                       // Shift right logical
        4'b1010: out = A << B;                       // Shift left logical
        4'b1011: out = A >>> B;                      // shift right arithmetic
        4'b1100: out = A <<< B;                      // shift left arithmetic

        default: out = 16'hzzzz;
    endcase
    
end
endmodule