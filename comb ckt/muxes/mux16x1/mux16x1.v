/* 


this time i will use case statements to design 16:1 mux 
*/

module mux16x1 (
  input [15:0] I0,
  input [15:0] I1,
  input [15:0] I2,
  input [15:0] I3,
  input [15:0] I4,
  input [15:0] I5,
  input [15:0] I6,
  input [15:0] I7,
  input [15:0] I8,
  input [15:0] I9,
  input [15:0] I10,
  input [15:0] I11,
  input [15:0] I12,
  input [15:0] I13,
  input [15:0] I14,
  input [15:0] I15,
  input [3:0] sel,
  output reg [15:0] Y
);

always @(*) begin
    case(sel)
        4'h0: Y = I0;
        4'h1: Y = I1;
        4'h2: Y = I2;
        4'h3: Y = I3;
        4'h4: Y = I4;
        4'h5: Y = I5;
        4'h6: Y = I6;
        4'h7: Y = I7;
        4'h8: Y = I8;
        4'h9: Y = I9;
        4'ha: Y = I10;
        4'hb: Y = I11;
        4'hc: Y = I12;
        4'hd: Y = I13;
        4'he: Y = I14;
        4'hf: Y = I15;
    endcase

end
    
endmodule