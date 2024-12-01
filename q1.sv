`timescale 1ns/1ns
module srlatch(input s, r, clk, output q, nq);
wire wr, wc, ws, in1, in2;
wire q2, nq2;
not #(7) nr(wr, r);
not #(7) ns(ws, s);
not #(7) nclk(wc, clk);
or #(7) ror(in1, wr, wc);
or #(7) sor(in2, ws, wc);
nand #(7) qnand(q2, in1, nq2);
nand #(7) nqnand(nq2, in2, q2);
assign q = q2;
assign nq = nq2;
endmodule