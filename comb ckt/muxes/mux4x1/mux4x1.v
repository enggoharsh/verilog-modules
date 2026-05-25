
module mxu4x1 (
input [3:0] I0, I1, I2, I3,
input [1:0] sel,
output [3:0] Y

);


assign Y  = (sel == 2'b00) ? I0 : (sel == 2'b01) ? I1 : (sel == 2'b10) ? I2 : (sel == 2'b11) ? I3 : 4'hZ; 

endmodule