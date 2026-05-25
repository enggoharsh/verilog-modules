module notgate_tb ();

reg A;
wire Y;

notgate n1 (A, Y);

initial begin
    $dumpfile ("notgate.vcd");
    $dumpvars (0, notgate_tb);
    A = 0;
    #10 A = 1;
    #20;
    $finish ;
end

endmodule