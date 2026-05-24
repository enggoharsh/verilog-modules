
module andgate_tb(
    
);

reg A, B;
wire Y;

and_gate A1 (A, B, Y);

initial begin
    $dumpfile ("andgate.vcd");
    $dumpvars (0, andgate_tb);
    {A,B} = 2'b00;
   #10 {A,B} = 2'b01;
   #10 {A,B} = 2'b10;
   #10 {A,B} = 2'b11;
   $finish ;
end

    
endmodule