/*
===========================================
    Lab 4: RGB Logic Circuit
===========================================

    Description:
    This SystemVerilog module implements a combinational logic circuit
    that determines the Red (R), Green (G), and Blue (B) outputs based
    on 2-bit input signals `a` and `b`. The logic expressions are derived
    using Karnaugh maps.

    File Structure:
    - rtl/
      - Lab4_rgb.sv  (Main design file)
    - bench/
      - Lab4_rgb_tb.sv  (Testbench for verification)
    - constraints/
      - Lab4_constraints.xdc  (FPGA constraints file)
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

    Logic Equations:
    R = (~b[1] & ~b[0]) | ((~b[1] & a[1])) | ((a[1] & a[0])) | ((a[1] & ~b[0]));
    G = (~a[1] & ~a[0]) | (~a[1] & b[1]) | (b[1] & b[0]) | (b[1] & ~a[0]);
    B = (~a[1] & ~b[1]) | ((a[1] & b[1])) | (~a[0] & b[0]) | (~a[0] & ~b[0]);

   
