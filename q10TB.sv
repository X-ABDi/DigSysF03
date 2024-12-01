`timescale 1ns/1ns
module q10TB ();
    logic [7:0]a;
    logic reset, clk;
    wire [7:0]q1, q2;
    SA2 adder1(a, reset, clk, q1);
    sequenceAdder adder2(a, reset, clk, q2);

    initial begin
        clk = 0;
        forever begin
            #40 clk = ~clk;
        end
    end

    initial begin
        reset = 1;
        #200;
        reset = 0;
        #200;
        a = 8'd1;
        #2000;
        $stop;
    end
endmodule