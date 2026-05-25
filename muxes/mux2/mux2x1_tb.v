module mux2x1_tb (
    
);

reg [1:0] I1, I2;
reg sel;
wire [1:0] Y;

mux2x1 m1 (I1, I2, sel, Y);

initial begin
    $dumpfile ("mux2x1.vcd");
    $dumpvars (0, mux2x1_tb);
    I1 = 2'd2;
    I2 =  2'd1;
    sel = 0;
    #10 sel = 1;
    #10 sel  = 0;
    #10 I1 = 2'b00;
    #10 I2 = 2'b11;
    #10 sel = 1;
    #20;
    $finish;
end
endmodule