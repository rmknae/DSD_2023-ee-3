module seven_segment_lab7(
input logic clk,
input logic reset,
input logic write,
input logic [3:0] num,
input logic [2:0] sel,
output logic [6:0] cathode,
output logic [7:0] anode,
 output logic dp
);

logic [16:0] new_clk;
logic [2:0] fast_selector;
logic [2:0] new_selector;
logic [3:0] registers [0:7];
logic [3:0] number_from_mux;
 logic en [0:7];
// clock that makes 100 MHz = 763 Hz
assign dp = 1;
always_ff @(posedge clk) begin

   if (reset) 
    new_clk <= 17'b00000000000000000;

   else if (new_clk == 17'b11111111111111111)
    new_clk <= 17'b00000000000000000;

   else if (write)
    new_clk <= 17'b00000000000000000;

   else 
     new_clk <= new_clk + 1 ;

end

always_ff @(posedge new_clk[16]) begin 

 if (reset) 
    fast_selector <= 3'b000;
 else if (write)
    fast_selector <= 3'b000;
else if (fast_selector == 3'b111)
   fast_selector <= 3'b000;
else 
   fast_selector <= fast_selector + 1;


end

always_comb begin 
  if (write)
    new_selector = sel;
  else 
    new_selector = fast_selector;
end

always_comb begin
    case (new_selector)
                3'b000 : anode = 8'b11111110;
                3'b001 : anode = 8'b11111101;
                3'b010 : anode = 8'b11111011;
                3'b011 : anode = 8'b11110111;
                3'b100 : anode = 8'b11101111;
                3'b101 : anode = 8'b11011111;
                3'b110 : anode = 8'b10111111;
                3'b111 : anode = 8'b01111111;
    endcase
end

always_comb begin
        for (int i = 0; i < 8; i++) 
            en[i] = (write & ~anode[i]);  // Enable only the selected register
    end

always_ff @(posedge clk) begin
        if (reset) begin
            for (int i = 0; i < 8; i++) 
                registers[i] <= 4'b0000;
        end 
        else begin
            for (int i = 0; i < 8; i++) begin
                if (en[i]) 
                    registers[i] <= num; // Write only to enabled register
            end
        end
    end


always_comb begin 
    case(new_selector)
         3'b000: number_from_mux = registers[new_selector];
         3'b001: number_from_mux = registers[new_selector];
         3'b010: number_from_mux = registers[new_selector];
         3'b011: number_from_mux = registers[new_selector];
         3'b100: number_from_mux = registers[new_selector];
         3'b101: number_from_mux = registers[new_selector];
         3'b110: number_from_mux = registers[new_selector];
         3'b111: number_from_mux = registers[new_selector];

    endcase
end  

always_comb begin

case (number_from_mux)
         4'b0000 : cathode = 7'b0000001;
            4'b0001 : cathode = 7'b1001111;
            4'b0010 : cathode = 7'b0010010;
            4'b0011 : cathode = 7'b0000110;
            4'b0100 : cathode = 7'b1001100;
            4'b0101 : cathode = 7'b0100100;
            4'b0110 : cathode = 7'b0100000;
            4'b0111 : cathode = 7'b0001111;
            4'b1000 : cathode = 7'b0000000;
            4'b1001 : cathode = 7'b0000100;
            4'b1010 : cathode = 7'b0001000;
            4'b1011 : cathode = 7'b1100000;
            4'b1100 : cathode = 7'b0110001;
            4'b1101 : cathode = 7'b1000010;
            4'b1110 : cathode = 7'b0110000;
            4'b1111 : cathode = 7'b0111000; 
endcase
end
endmodule