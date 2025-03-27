`timescale 1ns / 1ps

module seven_segment_lab7_tb;

    // Declare test signals
    logic clk;
    logic reset;
    logic write;
    logic [3:0] num;
    logic [2:0] sel;
    logic [6:0] cathode;
    logic [7:0] anode;
    logic dp;

    // Instantiate the DUT (Device Under Test)
    seven_segment_lab7 dut (
        .clk(clk),
        .reset(reset),
        .write(write),
        .num(num),
        .sel(sel),
        .cathode(cathode),
        .anode(anode),
        .dp(dp)
    );

    // Generate a 100 MHz clock (10 ns period)
    always #5 clk = ~clk; 

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        write = 0;
        num = 4'b0000;
        sel = 3'b000;
        #30

        reset = 0; #10
        
        // Write values to different segments
        write = 1; sel = 3'b000; num = 4'b1010; #10
        write = 1; sel = 3'b001; num = 4'b0111; #10
        write = 1; sel = 3'b010; num = 4'b1100; #10
        write = 1; sel = 3'b011; num = 4'b0010; #10
        write = 1; sel = 3'b100; num = 4'b1101; #10
        write = 1; sel = 3'b101; num = 4'b1111; #10
        write = 1; sel = 3'b110; num = 4'b1001; #10
        write = 1; sel = 3'b111; num = 4'b0100; #10

        // Stop writing and observe behavior
        write = 0; 
        
        #270;
        reset = 1; #10;
    end
endmodule
