module DMux8Way(
    input in,
    input [2:0] sel,
    output a, b, c, d, e, f, g, h
);
    wire outab, outcd, outef, outgh, outabcd, outefgh;
    DMux DMuxGate1(.in(in), .sel(sel[2]), .a(outabcd), .b(outefgh));
    DMux DMuxGate2(.in(outabcd), .sel(sel[1]), .a(outab), .b(outcd));
    DMux DMuxGate3(.in(outefgh), .sel(sel[1]), .a(outef), .b(outgh));
    DMux DMuxGate4(.in(outab), .sel(sel[0]), .a(a), .b(b));
    DMux DMuxGate5(.in(outcd), .sel(sel[0]), .a(c), .b(d));
    DMux DMuxGate6(.in(outef), .sel(sel[0]), .a(e), .b(f));
    DMux DMuxGate7(.in(outgh), .sel(sel[0]), .a(g), .b(h));
endmodule