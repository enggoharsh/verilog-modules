

module orgate_tb (
    
);
reg A, B;
wire Y;

orgate o1 (A, B, Y);
initial begin
    $dumpfile ("orgate.vcd");
    $dumpvars (0, orgate_tb);
    {A, B} = 2'b00;
    #10 {A, B} = 2'b01;
    #10 {A,B} = 2'b10;
    #10 {A,B} =  2'b11;
    #10;
    $finish ;
end
endmodule