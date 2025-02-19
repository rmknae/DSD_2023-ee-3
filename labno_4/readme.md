# Lab 4: RGB Logic Circuit

This lab focuses on designing and simulating an RGB logic circuit using **SystemVerilog**. 
The circuit determines the Red (R), Green (G), and Blue (B) outputs based on 2-bit input signals 
and is verified through simulation.

## 📂 Folder Structure
- **docs/** - Contains Karnaugh maps used for logic derivation.
- **rtl/** - Includes SystemVerilog RTL (Register Transfer Level) design file (`Lab4_rgb.sv`).
- **bench/** - Contains the testbench (`Lab4_rgb_tb.sv`) for simulation.
- **constraints/** - FPGA constraint files (`Lab4_constraints.xdc`).

## Inputs:
- a[1:0]: 2-bit input signal
- b[1:0]: 2-bit input signal

## Outputs:
- R: Red output logic
- G: Green output logic
- B: Blue output logic
