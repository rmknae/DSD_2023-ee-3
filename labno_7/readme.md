# 📌 Lab_no_7: Sequential Circuit Design – Clock Manipulation  

This lab focuses on the **design, simulation, and FPGA implementation** of a sequential circuit that drives all eight seven-segment displays on the Nexys A7 board. The design uses **clock manipulation** to display different characters simultaneously by time-multiplexing the displays.  

## 📝 Objective  
- Store and display eight different hexadecimal characters (`0–F`) on the seven-segment displays.  
- Use a **write operation** (`write = 1`) to load values into memory locations corresponding to each display.  
- Use a **read operation** (`write = 0`) to output the stored values across all displays.  
- Implement a **clock divider** to reduce the 100 MHz onboard clock to approximately **100 Hz**, ensuring proper multiplexing and persistence of vision.  
- Ensure sequential design uses **flip-flops** only (no latches).  

## 🛠 Tools  
- SystemVerilog  
- Vivado (for synthesis, implementation, and FPGA constraints)  
- QuestaSim (for simulation)  
- Draw.io (for partition diagrams)  

## 📂 Folder Structure  
- `docs/` → Truth tables, K-maps, design partitions, diagrams, and reports  
- `rtl/` → RTL design files (`Lab7_clock_display.sv`)  
- `testbench/` → Testbench for simulation (`Lab7_clock_display_tb.sv`)  
- `constraints/` → FPGA pin mapping file (`Lab7_constraints.xdc`)  
- `simulation/` → Simulation waveforms and timing results  

## 📥 Inputs  
- `clk` → 100 MHz onboard clock  
- `reset` → Active-high reset (clears stored values)  
- `write` → Write enable signal (1 = store value, 0 = read values)  
- `num[3:0]` → 4-bit input representing hexadecimal digit (0–F)  
- `sel[2:0]` → 3-bit input selecting which display to write to (0–7)  

## 📤 Outputs  
- `seg[6:0]` → Seven-segment segment control signals  
- `an[7:0]` → Anode enable signals for the displays  

## 🚀 Workflow  
1. **Design Partitioning**  
   - Divide the system into submodules: multiplexers, decoders, flip-flops, and clock divider.  
   - Avoid gate-level design; prefer higher-level modules.  

2. **Logic Derivation**  
   - Use **K-maps** to minimize logic for required components not covered in behavioral modeling.  

3. **Clock Manipulation**  
   - Implement a **clock divider** to scale down 100 MHz → ~100 Hz using toggle flip-flops.  

4. **RTL Coding**  
   - Write modular SystemVerilog code for the design.  

5. **Simulation**  
   - Test circuit functionality in **QuestaSim**.  

6. **Synthesis & Implementation**  
   - Generate synthesis and timing reports in **Vivado**.  
   - Identify maximum combinational delay (synthesis vs. implementation).  
   - Record FPGA **resource utilization** (LUTs, IOs, FFs, etc.).  

7. **FPGA Testing**  
   - Apply inputs using switches, display outputs on seven-segment LEDs.  

## 📊 Deliverables  
- Hand-sketched **design partition diagram** with labeled signals and bus widths  
- Truth tables & K-maps for minimized logic  
- RTL SystemVerilog code (`rtl/`) and testbench (`testbench/`)  
- Simulation waveforms (`simulation/`)  
- Vivado schematic (elaborated design view)  
- Synthesis & implementation timing analysis (maximum delays)  
- Resource utilization report  
- FPGA bitstream tested on Nexys A7 board  

