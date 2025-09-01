module And (
    input a, b,
    output out
);
    wire c;
    nand gate1(c, a, b);
    nand gate2(out, c, 1);
endmodule
