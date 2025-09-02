# ⚡ DSD 2023 – Digital System Design Labs  

This repository contains **SystemVerilog design and verification files** for the **Digital System Design (DSD)** course. Each lab focuses on different aspects of FPGA-based design, including combinational and sequential circuits, verification, and hardware implementation.  

## 🛠 Tools & Environment  
- **SystemVerilog** – RTL design & testbenches  
- **Vivado** – Synthesis, implementation, and FPGA programming  
- **QuestaSim** – Simulation and waveform analysis  
- **Draw.io** – Circuit diagrams & design partitions  
- **Nexys A7 FPGA** – Target hardware platform  

---

## 📂 Repository Structure  

### 🔹 [Labno_2](./Labno_2)  
SystemVerilog design and verification files for **basic combinational circuit design**, including FPGA constraints and documentation.  

### 🔹 [Labno_3](./labno_3)  
Design and simulation of **MUX/DEMUX & combinational modules** with testbench and FPGA implementation.  

### 🔹 [Labno_4](./labno_4)  
Design of **combinational logic circuits using K-maps**. Includes RTL, testbench, and timing analysis.  

### 🔹 [Labno_5](./labno_5)  
**Seven-Segment Display Driver** using minimized Boolean logic derived from **K-maps**. Displays hexadecimal digits (0–F) with FPGA constraints.  

### 🔹 [Labno_7](./labno_7)  
**Sequential Circuit Design with Clock Manipulation**. Displays 8 characters simultaneously on seven-segment displays using time-multiplexing and clock divider logic.  

---

## 🚀 General Workflow  
1. **Design** RTL using SystemVerilog  
2. **Apply FPGA constraints** (`.xdc`) for Nexys A7 board  
3. **Simulate** using QuestaSim testbench  
4. **Synthesize & Implement** in Vivado  
5. **Test on FPGA** hardware  

---

## 📑 Notes  
- Each lab folder includes:  
  - `rtl/` → SystemVerilog source files  
  - `testbench/` → Simulation testbenches  
  - `constraints/` → FPGA pin mapping files (`.xdc`)  
  - `docs/` → Diagrams, notes, K-maps, and reports  

---

✅ This repo serves as a **complete course archive** for DSD labs — from **combinational design** to **sequential clock-based systems**.  

