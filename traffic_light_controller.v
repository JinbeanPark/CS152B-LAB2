module traffic_controller(clk, reset, req, ss, ml, sl, wl);

	
	input clk, reset, req, ss;
	output wl;
    output[1:0] ml, sl; // 00 = Green, 01 = Yellow, 10 = Red
	
    reg [2:0] state;
    reg sensorState;
	reg wrReg, wlReg; // walk request register and walk light register
	reg [1:0] mlReg, slReg;
    integer secs; // passed seconds
    parameter [2:0] mlGreen = 3'b000;   // Main light is green & Side light is red
    parameter [2:0] mlYellow = 3'b001;  // Main light is yellow & Side light is red 
    parameter [2:0] slGreen = 3'b010;   // Side light is green & Main light is red
    parameter [2:0] slYellow = 3'b011;  // Side light is Yellow & Main light is red
    parameter [2:0] wlOn = 3'b100;  // Walk light is green
    
    // async reset
    always @(posedge reset) begin
        state = mlGreen;
        sensorState = 0;
        secs = 0;
        wrReg = 0;
    end

    // async button
    always @(posedge req) begin
        wrReg = 1;
    end

    always @(posedge clk) begin
        
        case (state)
            mlGreen: begin
                if (secs != 0 && secs % 3 == 0) begin
                    
                    if ((secs == 9 && sensorState == 1) || (secs == 12 && sensorState == 0)) begin
                        state = mlYellow;
                        sensorState = 0;
                        secs = 0;
                    end
                    if (secs == 6 && ss == 1)
                        sensorState = 1'b1;
                        //secs = secs + 3;
                end
            end
            mlYellow: begin
                if (secs == 2) begin
                    secs = 0;
                    state = wrReg == 1'b1 ? wlOn : slGreen;
                    wrReg = 0;
                end
            end
            slGreen: begin
                //secs = secs + 1;
                if (secs == 6 && ss == 1)
                    sensorState = 1;
                else if (secs == 6 && ss == 0) begin
                    secs = 0;
                    state = slYellow;
                end
                else if (secs == 9 && sensorState == 1) begin
                    secs = 0;
                    sensorState = 0;
                    state = slYellow;
                end
            end
            slYellow: begin
                //secs = secs + 1;
                if (secs == 2) begin
                    secs = 0;
                    state = mlGreen;
                end
            end
            wlOn: begin
                //secs = secs + 1;
                if (secs == 3) begin
                    secs = 0;
                    state = slGreen;
                end
            end
			endcase
        secs = secs + 1;

    end
	 
	 always @(state) begin
		case (state)
			mlGreen: begin 
				mlReg = 2'b00;
				slReg = 2'b10;
				wlReg = 1'b0;
			end
			mlYellow: begin
				mlReg = 2'b01;
				slReg = 2'b10;
				wlReg = 1'b0;
			end
			slGreen: begin
				mlReg = 2'b10;
				slReg = 2'b00;
				wlReg = 1'b0;
			end
			slYellow: begin
				mlReg = 2'b10;
				slReg = 2'b01;
				wlReg = 1'b0;
			end
			wlOn: begin
				mlReg = 2'b10;
				slReg = 2'b10;
				wlReg = 1'b1;
			end
		endcase
	 end
	 
	 assign ml = mlReg;
	 assign sl = slReg;
	 assign wl = wlReg;

endmodule
