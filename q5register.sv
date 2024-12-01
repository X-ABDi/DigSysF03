`timescale 1ns/1ns
module myReg(input [7:0]a, input reset, input clk, output reg [7:0]q, reg [7:0]nq);
    q5Dlatch r0(a[0], reset, clk, q[0], nq[0]);
    q5Dlatch r1(a[1], reset, clk, q[1], nq[1]);
    q5Dlatch r2(a[2], reset, clk, q[2], nq[2]);
    q5Dlatch r3(a[3], reset, clk, q[3], nq[3]);
    q5Dlatch r4(a[4], reset, clk, q[4], nq[4]);
    q5Dlatch r5(a[5], reset, clk, q[5], nq[5]);
    q5Dlatch r6(a[6], reset, clk, q[6], nq[6]);
    q5Dlatch r7(a[7], reset, clk, q[7], nq[7]);

    // always @(clk, reset) begin
    //     if (reset) begin

    //     end     
    // end

endmodule