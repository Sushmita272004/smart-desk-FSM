# Emotion-Aware Smart Desk Assistant (FSM-Based, Verilog)

This project implements a **Finite State Machine (FSM)** in Verilog to control LED lighting and audio output based on user emotion inputs.

## 🧠 Features
- Emotion-based LED and audio control logic
- Uses registered outputs for glitch-free behavior
- Designed using FSM principles in Verilog
- Simulated using Icarus Verilog and GTKWave

## 🧪 Emotion Mapping
| Emotion Code | State    | LED Color | Audio |
|--------------|----------|-----------|-------|
| `000`        | IDLE     | Off       | Off   |
| `001`        | FOCUS    | Green     | Off   |
| `010`        | STRESS   | Red       | On    |
| `011`        | SLEEPY   | Blue      | On    |

## 🔧 Files
- `smart_desk_fsm.v` – Verilog FSM implementation
- `fsm_testbench.v` – Testbench to simulate emotion inputs
- `.gitignore` – To skip simulation files

## 🛠 Tools Used
- Verilog HDL (Icarus Verilog)
- GTKWave for waveform analysis
