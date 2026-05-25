module encoder8to3_tb ();

reg [7:0] in;
wire [2:0] out;

encoder8to3 en8 (.in(in), 
.out(out));

initial begin
    $dumpfile ("encoder8to3.vcd");
    $dumpvars (0, encoder8to3_tb);

    in = 8'h00;
   #10 in = 8'h01;
   #10 in = 8'h02;
   #10 in = 8'h04;
   #10 in = 8'h08;
   #10 in = 8'h0f;
   #10 in = 8'h10;
   #10 in = 8'h20;
   #10 in = 8'h40;
   #10 in = 8'h80;
   #10 in = 8'hf0;
   #10;
   $display("yeah! everything is fine");
   $finish;

end
endmodule