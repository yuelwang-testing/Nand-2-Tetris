module Or16(
    input [16:0] a, [16:0] b,
    output [16:0] out
);
    or orArray [16:0] (out, a, b);
endmodule