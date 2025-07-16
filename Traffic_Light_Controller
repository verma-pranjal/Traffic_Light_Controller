`timescale 1ns / 1ps

// Created by Pranjal Verma

module Traffic_Light_Controller(
input clk,
input reset,
output reg Red,
output reg Green,
output reg Yellow
);
parameter S_Red = 2'b00;
parameter S_Green = 2'b01;
parameter S_Yellow = 2'b10;

reg [1:0] curr_state;
reg [1:0] next_state;
reg [3:0] counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        curr_state <= S_Red;
        counter <= 4'd5;
    end
    else begin
        if (counter > 0) begin
            counter <= counter - 1;    // keep counting
        end
        else begin
            curr_state <= next_state; // move to next state
            // reset counter based on next state
            case (next_state)
                S_Red:    counter <= 4'd5;
                S_Green:  counter <= 4'd5;
                S_Yellow: counter <= 4'd2;
                default:  counter <= 4'd5;
            endcase
        end
    end
end

always @(*)begin
    case(curr_state)
    S_Red: next_state = S_Green;
    S_Green: next_state = S_Yellow;
    S_Yellow: next_state = S_Red;
    endcase
end
always @(*)begin
    Red = 0;
    Green =0;
    Yellow =0;
    
    case(curr_state)
    S_Red: Red = 1;
    S_Green: Green=1;
    S_Yellow: Yellow = 1;
    endcase
end
endmodule
