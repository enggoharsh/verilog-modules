module fs_tb ;

reg A, B, Bin;
wire diff, Bout;

fs FS1 (.diff(diff), .Bout(Bout), .A(A), .B(B), .Bin(Bin));

initial begin
    $dumpfile ("fs.vcd");
    $dumpvars (0, fs_tb);

    {A, B, Bin} = 3'b000;
    #10 {A, B, Bin} = 3'b001;
    #10 {A, B, Bin} = 3'b010;
    #10 {A, B, Bin} = 3'b011;
    #10 {A, B, Bin} = 3'b100;
    #10 {A, B, Bin} = 3'b101;
    #10 {A, B, Bin} = 3'b110;
    #10 {A, B, Bin} = 3'b111;
    #10;
    $finish;
end

endmodule