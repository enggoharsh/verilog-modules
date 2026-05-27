module rom16bit (input [3:0] addr,
output [15:0] data_out

);
 integer i;
reg [15:0] mem [0:15] ;

                      // 256 locations of size 16bit
initial begin

for (i = 0 ; i < 16 ; i = i + 1) begin
        $readmemh ("contents.txt", mem);
    end
end

assign data_out = mem[addr];

endmodule