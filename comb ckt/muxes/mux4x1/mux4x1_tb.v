module mux4x1_tb (

);


reg [3:0] I0, I1, I2, I3;
reg [1:0] sel;
wire [3:0] Y;

mxu4x1 m2 (I0, I1, I2, I3, sel, Y);

initial begin
    $dumpfile ("mux4x1.vcd");
    $dumpvars (0, mux4x1_tb);
    {I0, I1, I2, I3} = 16'hABCD;
    sel = 2'b00;
    #20 sel = 2'b01;
    #20 sel = 2'b10;
    #20 sel = 2'b11;
    #20;
    $finish;
end
    
endmodule