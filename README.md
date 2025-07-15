## 🎯 Emotion-Aware Smart Desk Assistant (Verilog + FSM)
This project implements an FSM-based Emotion-Aware Desk Assistant that adapts ambient lighting (led_color) and audio alerts (audio) based on user emotion inputs.

## 💡 Features
- FSM detects emotions: Focus, Stress, Sleepy, Neutral
- Real-time reactive lighting and alert system
- Glitch-free outputs using registered logic
- Designed in Verilog HDL and verified using GTKWave

## 🧠 Emotion Mapping
Emotion Code	State	LED Color	Audio
- 000	IDLE	Off	Off
- 001	FOCUS	Green	Off
- 010	STRESS	Red	On
- 011	SLEEPY	Blue	On

## 🛠 Tech Stack
- Verilog HDL (FSM Design)
- GTKWave for waveform analysis
- Icarus Verilog for simulation

## 📁 File Structure
- smart_desk_fsm.v — main FSM logic
- fsm_testbench.v — testbench for emotion input simulation
- fsm.vcd — waveform file (view with GTKWave)

## how to run
- iverilog -o desk.vvp smart_desk_fsm.v fsm_testbench.v
- vvp desk.vvp
- gtkwave fsm.vcd
