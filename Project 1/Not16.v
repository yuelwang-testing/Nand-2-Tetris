module Not16(
    input [16:0] in,
    output [16:0] out,
);
    not notArray [16:0] (out, in);
endmodule