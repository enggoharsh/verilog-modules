module encoder2to1 (input [1:0] in,
output out

);

assign out = (in == 2'b01) ? 0 : (in == 2'b10) ? 1 : 1'bx ; 
    
endmodule