`timescale 1ms / 1ms
`include "traffic_light_controller.v"

module traffic_light_controller_tb;

    reg clk, reset, req, ss; // input
    wire wl; // output
    wire[1:0] ml, sl;

traffic_controller uut(clk, reset, req, ss, ml, sl, wl);

initial begin
    
    $dumpfile("test_tb.vcd");
    $dumpvars(0, traffic_light_controller_tb);

    // reset
    reset = 1; 
    ss = 0; 
    req = 0;
    clk = 0;
    #200

    // start clock
    // 1 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 2 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 3 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 4 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 5 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 6 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 7 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 8 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 9 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 10 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 11 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 12 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 13 s
    clk = 1; 
    #50

    clk = 0; 
    #50
    

    $display("test complete");
end

endmodule