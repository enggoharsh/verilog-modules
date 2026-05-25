module encoder4to2_tb (
);

reg [3:0] in;
wire [1:0] out;

encoder4to2 e4 (.in(in),
                .out(out));

initial begin
    $dumpfile ("encoder4to2.vcd");
    $dumpvars (0, encoder4to2_tb);

    in = 4'b0000;
    #10 in = 4'b0001;
    #10 in = 4'b0010;
    #10 in = 4'b0100;
    #10 in = 4'b0101;
    #10 in = 4'b1000;
    #10 in = 4'b1111;
    #10 in = 4'b1011;
    #10;
    $display ("Run sucessfully");
    $finish;
    
end   
endmodule