module alu8bit (input [7:0] A,
input [7:0] B,
input [3:0] op,
input Cin,
output reg Cout,
output reg [7:0] out );

always @(*) begin
    case (op)
        4'b0000: {Cout, out} = A + B + Cin;          // add
        4'b0001: {Cout, out} = A - (B + Cin);          // subtract
        4'b0010: {Cout, out} = A * B;                        // multiply
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

        default: out = 8'hzz;
    endcase
    
end

endmodule