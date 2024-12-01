`timescale 1ns/1ns
module q9TB();
    logic [7:0]a;
    logic reset, clk;
    logic [7:0]q;
    SA2 sa2(a, reset, clk, q);

    initial begin
        clk = 0;
        forever begin
            #60 clk = ~clk;
        end
    end    

    initial begin
        // b = 8'd4;
        reset = 1;
        #80;
        reset = 0;
        #80;
        a = 8'd12;
        #2000;
        $stop;
    end    
;endmodule