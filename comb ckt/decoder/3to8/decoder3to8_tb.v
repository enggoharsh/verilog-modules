module decoder3to8_tb (
);

reg [2:0] in;
wire [7:0] out;

decoder3to8 dec3to8 (in, out);

initial begin
    $dumpfile ("decoder3to8.vcd");
    $dumpvars (0, decoder3to8_tb);

    in = 3'b000;
    #10 in = 3'b001;
    #10 in = 3'b010;
    #10 in = 3'b011;
    #10 in = 3'b100;
    #10 in = 3'b101;
    #10 in = 3'b110;
    #10 in = 3'b111;

    #10;
    $finish;
end
    
endmodule