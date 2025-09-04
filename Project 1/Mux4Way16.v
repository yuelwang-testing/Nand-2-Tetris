module Mux4Way16(
    input [15:0] a, b, c, d,
    input [1:0] sel,
    output [15:0] out
);
    wire [15:0] outab, outcd;
    Mux16 mux16Gate1(.a(a), .b(b), .sel(sel[0:0]), .out(outab));
    Mux16 mux16Gate2(.a(c), .b(d), .sel(sel[0:0]), .out(outcd));
    Mux16 mux16Gate3(.a(outab), .b(outcd), .sel(sel[1:1]), .out(out));
endmodule