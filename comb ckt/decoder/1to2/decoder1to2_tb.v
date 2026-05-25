
module decoder1to2_tb ();

reg in;
wire [1:0]Y;

decoder1to2 d1 (in, Y);

initial begin
    $dumpfile ("decoder1to2.vcd");
    $dumpvars (0, decoder1to2_tb);


    #10 in = 0;
    #10 in = 1;
    #10;
    $finish;
end
endmodule