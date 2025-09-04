module And16(
    input [16:0] a, [16:0] b,
    output [16:0] out
);
    and andArray [16:0] (out, a, b);
endmodule