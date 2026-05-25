module encoder8to3 (input [7:0] in,
output [2:0] out
);

assign out = (in == 8'h01) ? 3'b000 :
(in == 8'h02) ? 3'b001 :
(in == 8'h04) ? 3'b010 :
(in == 8'h08) ? 3'b011 :
(in == 8'h10) ? 3'b100 :
(in == 8'h20) ? 3'b101 :
(in == 8'h40) ? 3'b110 :
(in == 8'h80) ? 3'b111 : 3'bxxx;
   
endmodule