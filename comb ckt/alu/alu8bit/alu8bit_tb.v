module alu8bit_tb ();

reg [7:0] A, B;
reg [3:0] op;
reg Cin;
wire [7:0] res;
wire Cout;


alu8bit DUT (.A(A), .B(B), .Cin(Cin), .Cout(Cout), .out(res), .op(op));

initial begin
    $dumpfile ("alu8bit.vcd");
    $dumpvars (0, alu8bit_tb);

    A = 8'hAB; B = 8'hF0; Cin = 1'b1;
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