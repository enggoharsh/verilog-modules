module mux8x1 (
    input  [7:0] I0,
    input  [7:0] I1,
    input  [7:0] I2,
    input  [7:0] I3,
    input  [7:0] I4,
    input  [7:0] I5,
    input  [7:0] I6,
    input  [7:0] I7,
    input [2:0] sel,
    output [7:0] Y

);

assign Y = (sel == 3'b000) ? I0 : 
(sel == 3'b001) ? I1 : 
(sel == 3'b010) ? I2 : 
(sel == 3'b011) ? I3 : 
(sel == 3'b100) ? I4 : 
(sel == 3'b101) ? I5 : 
(sel == 3'b110) ? I6 : 
I7;
    
endmodule