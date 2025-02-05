# SystemVerilog Files - Lab 2

## Overview
This directory contains the SystemVerilog (`.sv`) files for Lab 2. These files define the hardware design and logic implementation required for the lab.

## Files
- **lab2_task.sv** - The main SystemVerilog module for Lab 2.
- **readme.md** - This file.

## How to Use
1. Open the `.sv` file in a SystemVerilog-supported IDE (Vivado, ModelSim, etc.).
2. Compile and simulate the design.
3. Verify functionality using testbenches.
4. Synthesize the design for FPGA implementation.

## Notes
- Ensure that all necessary modules are instantiated properly.
- Follow coding guidelines for readability and efficiency.
## Code
-module lab3_task( input logic c,
    input logic a,
input logic b,
output logic y,
output logic x
);

   assign x = (~c) ^ ( a|b);
   assign y = ((~(a&b)) ^ (a|b)) & ( a|b);

endmodule

## Author
- **Rameen**


