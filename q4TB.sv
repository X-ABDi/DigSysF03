`timescale 1ns/1ns
module q4TB();
    logic d;
    logic clk;
    wire q;
    wire qbar;
    q4Dlatch dlatch4(d, clk, q, qbar);

    initial begin
        clk = 0;
        forever #60 clk = ~clk;
    end

    initial begin
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