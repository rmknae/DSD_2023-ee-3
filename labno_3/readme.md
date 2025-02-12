# Lab 3: Combinational Circuit Simulation

This lab focuses on designing and simulating combinational circuits using **SystemVerilog**. The circuits are tested using **QuestaSim** 

## 📂 Folder Structure
- **docs/** - reference materials.
- **rtl/** - Contains SystemVerilog RTL (Register Transfer Level) design files.
- **test bench/** - Includes testbenches for verifying circuit functionality.

## 🚀 How to Run

### Using QuestaSim
```sh
vlog rtl/*.sv test bench/*.sv
vsim -c -do "run -all" <testbench_module_name>
