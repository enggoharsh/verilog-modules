
module decoder1to2 (
    input in,
    output [1:0]Y
);

assign Y = (in == 0) ? 2'b01 :
(in == 1) ? 2'b10 : 2'bxx; 
endmodule