`timescale 1ns/1ns
module q4Dlatch (input d, clk, output q, nq);
    wire dnot, clknot;
    not #(7) notd(dnot, d);
    // not #(7) notclk(clknot, clk);
    // nand #(7) firstQ(qin, d, clknot);
    // nand #(7) firstNQ(nqin, dnot, clknot);
    // nand #(7) secondQ(q, nq, qin);
    // nand #(7) secondNQ(nq, q, nqin);

    srlatch latch1(dnot, d, clk, q, nq);
endmodule