module lab3_task( input logic c,
    input logic a,
input logic b,
output logic y,
output logic x
);

   assign x = (~c) ^ ( a|b);
   assign y = ((~(a&b)) ^ (a|b)) & ( a|b);

endmodule