module DMux(
    input in, sel,
    output a, b
);
    wire unSel;
    not gateNot(unSel, sel);
    and gateAnd1(a, in, unSel);
    and gateAnd2(b, in, sel);
endmodule