
module mux8x1_tb ();

reg [7:0] I[7:0];
reg [2:0] sel;
wire [7:0] Y;

mux8x1 m8 (I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7], sel, Y);

initial begin
    $dumpfile ("mux8x1.vcd");
    $dumpvars (0, mux8x1_tb);
    
    I[0] = 8'h12;
    I[1] = 8'h13;
    I[2] = 8'h14;
    I[3] = 8'h15;
    I[4] = 8'h16;
    I[5] = 8'h17;
    I[6] = 8'h18;
    I[7] = 8'h19;

    sel = 3'b000;
    #10 sel = 3'b001;
    #10 sel = 3'b010;
    #10 sel = 3'b011;
    #10 sel = 3'b100;
    #10 sel = 3'b101;
    #10 sel = 3'b110;
    #10 sel = 3'b111;
    #10;
    $finish ;
end
endmodule