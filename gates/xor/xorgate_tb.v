module xorgate_tb ();


reg A, B;
wire Y;

xorgate x1 (A, B, Y);

initial begin
    $dumpfile ("xorgate.vcd");
    $dumpvars (0, xorgate_tb);

    {A, B} = 2'b00;
    #10 {A, B} = 2'b01;
    #10 {A, B} = 2'b10;
    #10 {A, B} = 2'b11;
    #20;
    $finish;
end
endmodule