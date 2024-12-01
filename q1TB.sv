`timescale 1ns/1ns
module lacthTB();
logic s, r, clk=0;
wire q, nq;
srlatch latch1(s, r, clk, q, nq);

initial begin
    forever begin
        #10 clk = ~clk;
    end
end

initial begin
  //  clk = 0;
    // q = 0;
    // nq = 0;
    #80;
    s = 0;
    r = 1;
    #80;
    r = 0;
    #80;
    s = 1;
    #80;
    r = 1;
    #80;
    s = 0;
    #80;
    r = 0;
    #80;
    $stop;
end
endmodule