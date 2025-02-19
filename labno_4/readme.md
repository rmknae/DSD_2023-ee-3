Lab 4: *RGB Logic Circuit*

Description:
This project implements a combinational logic circuit that determines the Red (R), Green (G), 
and Blue (B) outputs based on two 2-bit input signals, a[1:0] and b[1:0]. The logic equations 
are derived using Karnaugh maps.

File Structure:
- rtl/
  - Lab4_rgb.sv (Main design file)
- bench/
  - Lab4_rgb_tb.sv (Testbench for simulation)
- constraints/
  - Lab4_constraints.xdc (FPGA constraints file)
- docs/
  - K-map_for_R.png
  - K-map_for_G.png
  - K-map_for_B.png

Inputs:
- a[1:0]: 2-bit input signal
- b[1:0]: 2-bit input signal

Outputs:
- R: Red output logic
- G: Green output logic
- B: Blue output logic
