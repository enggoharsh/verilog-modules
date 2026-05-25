module hs_tb ();


reg A, B;
wire diff, borr;

hs hs1 (A, B, diff, borr);

initial begin
    $dumpfile ("hs.vcd");
    $dumpvars (0, hs_tb);

    {A, B} = 2'b00;
    #10 {A, B} = 2'b01;
    #10 {A, B} = 2'b10;
    #10 {A, B} = 2'b11;
    #10;

    $finish;
end
endmodule