module Mux16(a, b, sel, out);
    input [15:0] a;
    input [15:0] b;
    input sel;
    output [15:0] out;
    Mux muxArray [15:0] (.out(out), .a(a), .b(b), .sel(sel));
endmodule
