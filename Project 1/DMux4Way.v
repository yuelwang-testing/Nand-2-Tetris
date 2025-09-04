module DMux4Way(
    input in,
    input [1:0] sel,
    output a, b, c, d
);
    wire outa, outb;
    DMux DMuxGate1(.in(in), .sel(sel[1]), .a(outa), .b(outb));
    DMux DMuxGate2(.in(outa), .sel(sel[0]), .a(a), .b(b));
    DMux DMuxGate3(.in(outb), .sel(sel[0]), .a(c), .b(d));
endmodule