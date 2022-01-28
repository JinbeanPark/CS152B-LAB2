module traffic_light_controller(CLK, RESET, BUTTON, SENSOR, 
                                MAIN_RED, MAIN_YELLOW, MAIN_GREEN, 
                                SIDE_RED, SIDE_YELLOW, SIDE_GREEN, WALK);

    // input and output
    input CLK, BUTTON, SENSOR;
    output MAIN_RED, MAIN_YELLOW, MAIN_GREEN, SIDE_RED, SIDE_YELLOW, SIDE_GREEN, WALK;

    // internal constants
    parameter S1 = 3'h0, S1_1 = 3'h1, S1_2 = 3'h2, S2 = 3'h3, S3 = 3'h4, S3_1 = 3'h5, S4 = 3'h6, S5 = 3'h7; 

    // registers
    reg walk; // store if walk button is pressed
    reg state; // store current state
    reg counter; // for timing

    // when button is pressed
    always @ (BUTTON) begin:
        walk = 1;
    end

    // when clock signal arrives
    always @ (posedge CLK) begin:
        // when reset is pressed; reset all internal values
        if(reset == 1) begin
            walk = 0;
            state = S1;
            counter = 0;
        // otherwise (normal cases)
        end else begin
            counter += 1; // increment counter
            // check if it needs to change state
            case (state):
                S1:
                S1_1:
                S1_2
                S2:
                S3:
                S3_1:
                S4:
                S5:
        end
    end

endmodule