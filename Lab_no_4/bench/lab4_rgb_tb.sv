module lab4_rgb_tb;

  
    logic [1:0] a1;
    logic [1:0] b1;
    logic R1, G1, B1;

    localparam period = 10;

    Lab4_rgb UUT (
        .a(a1),
        .b(b1),
        .R(R1),
        .G(G1),
        .B(B1)
    );

   
    initial begin
       
        a1 = 2'b00; b1 = 2'b00; #period;
        a1 = 2'b00; b1 = 2'b01; #period;
        a1 = 2'b00; b1 = 2'b10; #period;
        a1 = 2'b00; b1 = 2'b11; #period;
        a1 = 2'b01; b1 = 2'b00; #period;
        a1 = 2'b01; b1 = 2'b01; #period;
        a1 = 2'b01; b1 = 2'b10; #period;
        a1 = 2'b01; b1 = 2'b11; #period;
        a1 = 2'b10; b1 = 2'b00; #period;
        a1 = 2'b10; b1 = 2'b01; #period;
        a1 = 2'b10; b1 = 2'b10; #period;
        a1 = 2'b10; b1 = 2'b11; #period;
        a1 = 2'b11; b1 = 2'b00; #period;
        a1 = 2'b11; b1 = 2'b01; #period;
        a1 = 2'b11; b1 = 2'b10; #period;
        a1 = 2'b11; b1 = 2'b11; #period;
        $stop;
    end 

    // Monitor the outputs of the DUT
    initial begin
        $monitor("a=%b, b=%b, R=%b, G=%b, B=%b", a1, b1, R1, G1, B1);
    end

endmodule
