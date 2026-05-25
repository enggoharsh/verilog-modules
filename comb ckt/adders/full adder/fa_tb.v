module fa_tb ();

reg A, B, Cin;
wire sum, carry;

fa fa1 (.A(A), .B(B), .Cin(Cin), .sum(sum), .carry(carry));

initial begin
    $dumpfile ("fa.vcd");
    $dumpvars (0, fa_tb);

    {A, B, Cin} = 3'b000;
    #10 {A, B, Cin} = 3'b001;
    #10 {A, B, Cin} = 3'b010;
    #10 {A, B, Cin} = 3'b011;
    #10 {A, B, Cin} = 3'b100;
    #10 {A, B, Cin} = 3'b101;
    #10 {A, B, Cin} = 3'b110;
    #10 {A, B, Cin} = 3'b111;

    #10;
    $display ("execution successful");
    $finish;

end
endmodule