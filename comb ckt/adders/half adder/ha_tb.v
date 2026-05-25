module ha_tb ();

reg A, B;
wire sum, carry;

ha h1 (.A(A), .B(B), .carry(carry), .sum(sum));

initial begin
    $dumpfile ("ha.vcd");
    $dumpvars (0, ha_tb);

    {A,B} = 2'b00;
    #10 {A,B} = 2'b01;
    #10 {A,B} = 2'b10;
    #10 {A,B} = 2'b11;
    #10;
    $display("the half adder is ready");
    $finish;

end
endmodule