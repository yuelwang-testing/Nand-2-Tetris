module Xor(
    input a, b,
    output out
);
    wire c, d, e;
    nand gate1(c, a, b);
    nand gate2(d, a, c);
    nand gate3(e, c, b);
    nand gate4(out, d, e);
endmodule