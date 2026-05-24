module mux2x1 (
    input [1:0] I1, I2,
    input sel,
    output [1:0] Y

);

assign Y = sel ? I1 : I2;
    
endmodule