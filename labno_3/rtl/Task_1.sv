module lab2_task(
    input logic a,
    input logic b,
    input logic c,
    output logic x,
    output logic y
);

logic not_c;
logic or_ab;
logic and_ab;
logic xor_For_y;

assign not_c = ~c;        
assign or_ab = a | b;       
assign and_ab = a & b;      
assign xor_For_y = ~and_ab ^ or_ab; 

assign x = not_c ^ or_ab;   // Final output x
assign y = xor_For_y & or_ab;  // Final output y

endmodule
