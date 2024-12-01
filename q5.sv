`timescale 1ns/1ns
module q5Dlatch (input d, r, clk, output q, nq);
    wire dr, drnot ,rnot, clknot, qin, nqin ;
    wire q2, nq2;

    not #(7) notd(rnot, r);
    and #(7) resetnand(dr, rnot, d);
    not #(7) data(drnot, dr);
    not #(7) notclk(clknot, clk);
    nand #(7) firstQ(qin, drnot, clknot);
    nand #(7) firstNQ(nqin, dr, clknot);
    nand #(7) secondQ(q2, nq2, qin);
    nand #(7) secondNQ(nq2, q2, nqin);
    assign q = q2;
    assign nq = nq2;
endmodule
