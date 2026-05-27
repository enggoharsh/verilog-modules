module rom16bit_tb (
);

reg [3:0] addr;
wire [15:0] data_out;

rom16bit DUT (.addr(addr), .data_out(data_out));

initial begin
    $dumpfile ("rom16bit.vcd");
    $dumpvars (0, rom16bit_tb);

    addr = 16'h0000;
   #10 addr = 16'h0001;
   #10 addr = 16'h0002;
   #10 addr = 16'h0003;
   #10 addr = 16'h0004;
   #10 addr = 16'h0005;
   #10 addr = 16'h0006;
   #10 addr = 16'h0007;
   #10 addr = 16'h0008;
   #10 addr = 16'h0009;
   #10 addr = 16'h000a;
   #10 addr = 16'h000b;
   #10 addr = 16'h000c;
   #10 addr = 16'h000d;
   #10 addr = 16'h000e;
   #10 addr = 16'h000f;

   #10;
   $finish;
end
    
endmodule