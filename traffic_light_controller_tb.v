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

    // Reset before starting.
		clk = 0;
		reset = 1;
		#10
		
		// Case 1. req = 0, ss = 0;
		reset= 0;
		req = 0;
		ss = 0;
		#100;
		
		// Case 2. req = 0, ss = 1;
		//clk = 0;
		reset = 0;
		req = 0;
		ss = 1;
		#130;
		
		// Case 3. req = 1, ss = 0;
		//clk = 0;
		reset = 0;
		req = 1;
		#10
		req = 0;
		ss = 0;
		#190;
		
		// Case 4. req = 1, ss = 1;
		//clk = 0;
		reset = 0;
		req = 1;
		#10
		req = 0;
		ss = 1;
		#190
		
		// Case 5. req = 1, ss = 0;
		//clk = 0;
		reset = 0;
		req = 1;
		#10
		req = 0;
		ss = 0;
		#190
		
		// Case 6. req = 0, ss = 0;
		//clk = 0;
		reset = 0;
		req = 0;
		ss = 0;
		#100;

    $display("test complete");
end

always #5 clk = ~clk;

endmodule