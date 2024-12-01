`timescale 1ns/1ns
module Adder8bit(input [7:0]a, [7:0]b, output [7:0]sum);
    assign #(32) sum = a + b;
endmodule

module sequenceAdder(input [7:0]a, input reset, input clk, output reg [7:0]q);
    reg [7:0]b;
    reg [7:0]nb;
    myReg regB(a, reset, clk, b, nb);
    Adder8bit add(a, b, q);
    assign b = q;
    // always @(clk) begin
    //     if (clk) begin
    //         b <= q;
    //     end    
    // end
endmodule


