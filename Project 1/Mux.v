module Mux(
    input a, b, sel,
    output out
);
    wire unSel, c, d;
    not gateNot(unSel, sel);
    and gateAnd1(c, a, unSel);
    and gateAnd2(d, sel, b);
    or gateOr(out, c, d);
endmodule
