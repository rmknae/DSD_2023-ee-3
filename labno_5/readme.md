# 📌 Lab_no_5: Combinational Circuit Design using K-Maps – Seven Segment Display  

This lab focuses on the **design, simulation, and FPGA implementation** of a seven-segment display driver circuit using **SystemVerilog**. The design uses **K-Maps** to derive minimized logic expressions that control the display segments based on a 4-bit input. The functionality is verified through simulation and tested on the FPGA board.  

## 🛠 Tools  
- SystemVerilog  
- Vivado (for synthesis, implementation, constraints, and FPGA programming)  
- QuestaSim (for simulation)  
- Draw.io (for K-map & circuit diagrams)  

## 📂 Folder Structure  
- `docs/` → Truth tables, K-maps, minimized logic, and diagrams  
- `rtl/` → RTL design file (`Lab5_seven_segment.sv`)  
- `testbench/` → Testbench for simulation (`Lab5_seven_segment_tb.sv`)  
- `constraints/` → FPGA pin mapping file (`Lab5_constraints.xdc`)  
- `simulation/` → Simulation waveforms and results  

## 📥 Inputs  
- `num[3:0]` → 4-bit input signal representing a hexadecimal digit (0–F)  
- `sel[2:0]` → 3-bit input signal to select one of the eight seven-segment displays  

## 📤 Outputs  
- `seg[6:0]` → Seven-segment display segment control signals  
- `an[7:0]` → Anode control signals for the displays  

## 🚀 Workflow  
1. Construct truth tables for seven-segment outputs based on `num[3:0]`  
2. Simplify each segment logic using **K-Maps**  
3. Implement the minimized logic in **SystemVerilog RTL**  
4. Simulate design in **QuestaSim** and verify waveforms  
5. Apply FPGA constraints and synthesize design in **Vivado**  
6. Generate bitstream and test design on the FPGA board  

