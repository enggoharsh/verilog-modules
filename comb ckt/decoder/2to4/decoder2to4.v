module decoder2to4 (
    input [1:0] in,
    output [3:0] out
);

 assign out = (in == 2'b00) ? 4'h1 :
 (in == 2'b01) ? 4'h2 :
 (in == 2'b10) ? 4'h4 :
 (in == 2'b11) ? 4'h8 :
 4'hx;

endmodule