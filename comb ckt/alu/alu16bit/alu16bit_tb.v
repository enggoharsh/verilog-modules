module alu16bit_tb ();

reg [15:0] A, B;
reg [3:0] op;
reg Cin;
wire [15:0] out;
wire Cout;
wire overflow;

alu16bit DUT (.A(A),
.B(B),
.op(op),
.Cin(Cin),
.out(out),
.Cout(Cout),
.overflow(overflow));

initial begin
    $dumpfile ("alu16bit.vcd");
    $dumpvars (0, alu16bit_tb);

    A = 16'hABCD; B = 16'hDEF0; Cin = 1'b1;
    op = 4'h0;
    #10 op = 4'h1;
    #10 op = 4'h2;
    #10 op = 4'h3;
    #10 op = 4'h4;
    #10 op = 4'h5;
    #10 op = 4'h6;
    #10 op = 4'h7;
    #10 op = 4'h8;
    #10 op = 4'h9;
    #10 op = 4'ha;
    #10 op = 4'hb;
    #10 op = 4'hc;
    #10 op = 4'hd;
    #10 op = 4'he;
    #10 op = 4'hf;
    #10;
    $finish;
end
endmodule