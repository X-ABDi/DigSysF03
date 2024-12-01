`timescale 1ns/1ns
module q8masterSlave(input d, reset, clk, output q, nq);
    wire p, np;
    wire w1, nreset; 
    not #(7) not_1(nreset, reset);
    nand #(7) nand_1(w1, nreset, d);
    q4Dlatch Mlatch (w1, clk, p, np);
    q4Dlatch Slatch (p, ~clk, q, nq);
endmodule