# Lab 5: Combinational Circuit Design using K-Maps - Seven Segment Display

This lab focuses on designing and simulating a seven-segment display driver circuit using **SystemVerilog**. The circuit determines the segment outputs based on a 4-bit input signal and is verified through simulation.

## 📂 Folder Structure
- **docs/** - Contains Karnaugh maps used for logic derivation.
- **rtl/** - Includes SystemVerilog RTL (Register Transfer Level) design file (`Lab5_seven_segment.sv`).
- **bench/** - Contains the testbench (`Lab5_seven_segment_tb.sv`) for simulation.
- **constraints/** - FPGA constraint files (`Lab5_constraints.xdc`).

## Inputs:
- num[3:0]: 4-bit input signal representing a hexadecimal digit (0-F)
- sel[2:0]: 3-bit input signal selecting one of the eight seven-segment displays

## Outputs:
- seg[6:0]: Seven-segment display output signals
- an[7:0]: Anode control signals for the displays
