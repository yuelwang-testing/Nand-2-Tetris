module Mux4Way16(
    input [15:0] a, b, c, d, e, f, g, h
    input [2:0] sel,
    output [15:0] out
);
    wire [15:0] outab, outcd, outef, outgh, outabcd, outefgh;
    Mux16 mux16Gate1(.a(a), .b(b), .sel(sel[0:0]), .out(outab));
    Mux16 mux16Gate2(.a(c), .b(d), .sel(sel[0:0]), .out(outcd));
    Mux16 mux16Gate3(.a(e), .b(f), .sel(sel[0:0]), .out(outef));
    Mux16 mux16Gate4(.a(g), .b(h), .sel(sel[0:0]), .out(outgh));
    Mux16 mux16Gate5(.a(outab), .b(outcd), .sel(sel[1:1]), .out(outabcd));
    Mux16 mux16Gate6(.a(outef), .b(outgh), .sel(sel[1:1]), .out(outefgh));
    Mux16 mux16Gate7(.a(outabcd), .b(outefgh), .sel(sel[2:2]), .out(out));
endmodule