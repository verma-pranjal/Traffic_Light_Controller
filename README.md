# 🚦 Traffic Light Controller (Verilog)

This project simulates a **Traffic Light Controller** using Verilog HDL.  
It is implemented as a **Finite State Machine (FSM)** and tested via **testbench** using Xilinx Vivado.

---

## 📌 Description

This module mimics the basic functionality of a traffic signal system with three lights:  
- 🔴 **Red**
- 🟢 **Green**
- 🟡 **Yellow**

It follows a simple sequence with timing logic using a counter.

---

## 🧠 FSM Design

| State      | Output Active | Duration (Clocks) |
|------------|----------------|-------------------|
| S_Red      | Red            | 5 clocks          |
| S_Green    | Green          | 5 clocks          |
| S_Yellow   | Yellow         | 2 clocks          |

- Transition is controlled via a **4-bit counter**
- FSM transitions only after the counter reaches zero

---

## 🧾 Files Included

| File Name                     | Description                              |
|------------------------------|------------------------------------------|
| `Traffic_Light_Controller.v` | Main FSM module (RTL logic)              |
| `traffic_light_controller_tb.v` | Testbench for simulation                 |
| `README.md`                  | Project documentation                    |
| `waveform.png`               | Output waveform screenshot (to be added) |

---

## 🧪 Simulation

Simulation was performed using **Vivado XSim**.

### ✅ Output Screenshot:
<img width="1904" height="1001" alt="image" src="https://github.com/user-attachments/assets/084f1803-6652-4f35-b0d1-1b03abda08a7" />


*(You can replace `waveform.png` with the actual filename of your screenshot)*

The waveform shows correct transitions between `Red → Green → Yellow → Red...` with respective durations.

---

## 🛠️ Tools Used

- 💻 **Vivado 2020.2**
- 📝 Verilog HDL
- 🧠 XSim Simulator

---

## 🚀 How to Run

1. Open the project in Vivado
2. Add source and simulation files
3. Set the top module as `traffic_light_controller_tb`
4. Run Behavioral Simulation
5. Observe waveform transitions

---

## 🙋 Author

**Pranjal Verma**  
B.Tech, Electrical Engineering  
IIT Jammu  

---

## 📥 License

This project is for educational purposes only.
