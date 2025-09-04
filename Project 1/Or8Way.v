module Or8Way(
    input [8:0] in,
    output out
);
    wire w1, w2, w3, w4, w5, w6;
    or orGate1(w1, in[1], in[0]);
    or orGate2(w2, w1, in[2]);
    or orGate3(w3, w2, in[3]);
    or orGate4(w4, w3, in[4]);
    or orGate5(w5, w4, in[5]);
    or orGate6(w6, w5, in[6]);
    or orGate7(out, w6, in[7]);
endmodule