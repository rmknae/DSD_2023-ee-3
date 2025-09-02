# 📌 Lab_no_4: RGB Logic Circuit  

This lab focuses on the **design, simulation, and FPGA implementation** of an RGB logic circuit using **SystemVerilog**. The circuit drives the tri-color LED on the Nexys A7 board based on two 2-bit inputs and displays different colors according to the comparison results.  

## 📝 Objective  
Design a circuit with inputs `a[1:0]` and `b[1:0]` such that the RGB LED outputs are:  

- **Purple (R + B)** → when `a > b`  
- **Yellow (R + G)** → when `a = b`  
- **Cyan (G + B)** → when `a < b`  

The logic is derived using **truth tables** and **K-maps**, implemented in SystemVerilog, and verified via simulation and FPGA testing.  

## 🛠 Tools  
- SystemVerilog  
- Vivado (for synthesis, implementation, constraints, and FPGA programming)  
- QuestaSim (for simulation)  
- Draw.io (for K-map & circuit diagrams)  

## 📂 Folder Structure  
- `docs/` → Truth tables, K-maps, minimized logic, diagrams, and synthesis reports  
- `rtl/` → SystemVerilog RTL design file (`Lab4_rgb.sv`)  
- `testbench/` → Testbench for simulation (`Lab4_rgb_tb.sv`)  
- `constraints/` → FPGA pin mapping file (`Lab4_constraints.xdc`)  
- `simulation/` → Waveforms and QuestaSim results  

## 📥 Inputs  
- `a[1:0]` → 2-bit input signal  
- `b[1:0]` → 2-bit input signal  

## 📤 Outputs  
- `R` → Red LED control  
- `G` → Green LED control  
- `B` → Blue LED control  

## 🚀 Workflow  
1. Constructed truth tables for given input-output mapping  
2. Derived minimized logic using **K-Maps**  
3. Write RTL code in SystemVerilog  
4. Simulated design in **QuestaSim** and verify waveforms  
5. Applied FPGA constraints and synthesize design in **Vivado**  
6. Generate bitstream and test on Nexys A7 board  

## 📊 Deliverables  
- Truth table, K-maps, and minimized expressions  
- Circuit diagrams (designed + Vivado elaborated schematic)  
- SystemVerilog RTL & testbench files  
- FPGA constraints (`.xdc`)  
- Synthesis results: resource utilization and maximum combinational delay  
- Simulation waveforms  

