// behavioural design of full subtractor

module fs (
    input A, B, Bin,
    output diff, Bout
);

assign diff = A ^ B ^ Bin;
assign Bout = ~A & Bin | ~A & B | B & Bin ;

endmodule