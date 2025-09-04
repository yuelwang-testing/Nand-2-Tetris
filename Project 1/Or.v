module Or (
    input a, b,
    output out
);
    wire c, d;
    not gateNot1(c, a);
    not gateNot2(d, b);
    nand gateNand(out, c, d);
endmodule