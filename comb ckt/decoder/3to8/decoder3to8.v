module decoder3to8 (
    input [2:0] in,
    output [7:0] out
 
);


assign out = (in == 3'b000) ? 8'h01 :
(in == 3'b001) ? 8'h02 :
(in == 3'b010) ? 8'h04 :
(in == 3'b011) ? 8'h08 :
(in == 3'b100) ? 8'h10 :
(in == 3'b101) ? 8'h20 :
(in == 3'b110) ? 8'h40 :
(in == 3'b111) ? 8'h80 :
8'hxx;
    
endmodule