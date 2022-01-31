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

     // 14 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 15 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 16 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 17 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 18 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 19 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 20 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 21 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 22 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 23 s
    ss = 1;
    req = 1;
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 24 s
    clk = 1; 
    req = 0;
    #50

    clk = 0; 
    #50

    // 25 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 26 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 27 s
    clk = 1; 
    #50

    clk = 0; 
    #50
    
    // 28 s
    clk = 1; 
    #50

    clk = 0; 
    #50
    // 29 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 30 s
    clk = 1; 
    #50

    clk = 0; 
    #50
    
    // 31 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 32 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 33 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 34 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 35 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 36 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 37 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 38 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 39 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 40 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 41 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 42 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 43 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 44 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 45 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 46 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 47 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 48 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 49 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 50 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 51 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 52 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 53 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 54 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    // 55 s
    clk = 1; 
    #50

    clk = 0; 
    #50

    $display("test complete");
end

endmodule