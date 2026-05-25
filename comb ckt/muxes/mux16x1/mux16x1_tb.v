module mux16x1_tb ();

reg [15:0] I[15:0];
reg [3:0] sel;
wire [15:0] Y;

mux16x1 m16 (I[0], I[1], I[2], I[3], I[4], I[5], I[6], I[7], 
I[8], I[9], I[10], I[11], I[12], I[13], I[14], I[15], sel, Y);

initial begin
    $dumpfile ("mux16x1.vcd");
    $dumpvars (0, mux16x1_tb);

    I[0] = 16'h1234;
    I[1] = 16'h5678;
    I[2] = 16'h9abc;
    I[3] = 16'hdef0;
    I[4] = 16'h1234;
    I[5] = 16'h5678;
    I[6] = 16'h9abc;
    I[7] = 16'hdef0;
    I[8] = 16'h1234;
    I[9] = 16'h5678;
    I[10] = 16'h9abc;
    I[11] = 16'hdef0;
    I[12] = 16'h1234;
    I[13] = 16'h5678;
    I[14] = 16'h9abc;
    I[15] = 16'hdef0;

    sel = 4'h0;
    #10 sel = 4'h1;
    #10 sel = 4'h2;
    #10 sel = 4'h3;
    #10 sel = 4'h4;
    #10 sel = 4'h5;
    #10 sel = 4'h6;
    #10 sel = 4'h7;
    #10 sel = 4'h8;
    #10 sel = 4'h9;
    #10 sel = 4'ha;
    #10 sel = 4'hb;
    #10 sel = 4'hc;
    #10 sel = 4'hd;
    #10 sel = 4'he;
    #10 sel = 4'hf; 
    #10;
    $finish;
end
    
endmodule