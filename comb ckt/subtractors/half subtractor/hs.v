module hs (input A, B,
output diff, borr);


 xor (diff, A, B);
 not (Anot, A);
 and (borr, Anot, B);
endmodule