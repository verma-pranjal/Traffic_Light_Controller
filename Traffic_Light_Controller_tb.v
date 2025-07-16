`timescale 1ns / 1ps

// Written by Pranjal Verma 


module traffic_light_controller_tb;
reg clk;
reg reset;

wire Red;
wire Green;
wire Yellow;

Traffic_Light_Controller uut(
.clk(clk),
.reset(reset),
.Red(Red),
.Green(Green),
.Yellow(Yellow)
);

always #10 clk=~clk;

initial begin
    clk = 0;
    reset =1;
    
    #30;
    reset = 0;
    
    #300;
    $finish;
end

endmodule
