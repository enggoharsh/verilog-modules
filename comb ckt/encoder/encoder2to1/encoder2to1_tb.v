module encoder2to1_tb (
);

reg [1:0] in;
wire out;

encoder2to1 e2 (in, out);

initial begin
    $dumpfile ("encoder2to1.vcd");
    $dumpvars (0, encoder2to1_tb);
    
    in = 2'b11;
    #10 in  = 2'b10;
    #10 in = 2'b01;
    #10 in = 2'b00;
    #10;
    $finish;
end
    
endmodule