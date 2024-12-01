`timescale 1ns/1ns
module q8MSTB();
    logic d;
    logic reset, clk;
    wire q, nq;
    q8masterSlave MSlatch(d, reset, clk, q, nq);

    initial begin
        clk = 0;
        forever begin
            #40 clk = ~clk;
        end
    end

    initial begin
        reset = 1;
        #100;
        reset = 0;
        #100;
        d = 0;
        #150;
        d = 1;
        #150;
        d = 0;
        #150;
        d = 1;
        #150;
        d = 0;
        #150;
        $stop;
    end
    
endmodule