`timescale 1ns/1ns
module myReg2(input [7:0]a, reset, clk, output reg [7:0]q, reg [7:0]nq);
    q8masterSlave r0(a[0], reset, clk, q[0], nq[0]);
    q8masterSlave r1(a[1], reset, clk, q[1], nq[1]);
    q8masterSlave r2(a[2], reset, clk, q[2], nq[2]);
    q8masterSlave r3(a[3], reset, clk, q[3], nq[3]);
    q8masterSlave r4(a[4], reset, clk, q[4], nq[4]);
    q8masterSlave r5(a[5], reset, clk, q[5], nq[5]);
    q8masterSlave r6(a[6], reset, clk, q[6], nq[6]);
    q8masterSlave r7(a[7], reset, clk, q[7], nq[7]);

endmodule

module SA2 (input [7:0]a, reset, clk, output reg [7:0]q);
    reg [7:0]reg_out;
    reg [7:0]reg_outbar;
    myReg2 my_reg(a, reset, clk, reg_out, reg_outbar);
    Adder8bit add1(a, reg_out, q);
    assign reg_out = q;
    // always @(clk or reset) begin   
    //     if (clk) begin
    //         reg_out <= q;
    //     end
    // end
endmodule

// reg [7:0]b;
//     reg [7:0]nb;
//     myReg regB(a, reset, clk, b, nb);
//     Adder8bit add(a, b, q);
    
//     always @(clk) begin
//         if (clk) begin
//             b <= q;
//         end    
//     end