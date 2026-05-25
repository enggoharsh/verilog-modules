module adder4bit_tb ();

reg [3:0] A, B;
reg Cin;
wire [3:0] sum;
wire carry;

adder4bit add4 (A, B, Cin, sum, carry);

initial begin
    $dumpfile ("adder4bit.vcd");
    $dumpvars (0, adder4bit_tb);

    {A, B, Cin} = 9'b000000000;
    #10 {A, B, Cin} = 9'b000100011;
    #10;
    $finish;
end
endmodule