# RTL_FUNDAMENTALS

A collection of fundamental RTL design projects implemented in Verilog HDL. This repository focuses on reusable digital building blocks, sequential logic circuits, combinational converters, and small integrated digital systems.

These projects were developed to strengthen core RTL design skills and digital design fundamentals.

---

## Tools Used

* Verilog HDL
* Icarus Verilog (Simulation)
* GTKWave (Waveform Analysis)

---

## Repository Structure

```bash
rtl-fundamentals/
│
├── parametrized_register/
├── parametrized_counters/
├── universal_parametrized_counter/
├── mod12_counter/
├── bi_shift_reg/
├── lfsr/
├── bin_gray_converter/
├── gray_bin_converter/
├── alu_dff_counter_fsm/
└── README.md
```

---

## Projects Included

### 1. Parameterized Register

Reusable synchronous N-bit register with reset and load control.

**Features:**

* Parameterized width
* Synchronous reset
* Load enable

---

### 2. Parameterized Counters

Configurable up-counter and down-counter implementations.

**Features:**

* Parameterized width
* Reset and preset
* Enable control

---

### 3. Universal Parameterized Counter

A flexible counter supporting both up-counting and down-counting modes.

**Features:**

* Up/Down mode selection
* Preset support
* Reset and enable

---

### 4. Mod-12 Counter

A modulo-12 counter for cyclic counting applications.

**Features:**

* Modulo counting
* Reset and enable
* Clock-based sequential logic

---

### 5. Bi-Directional Shift Register

A 4-bit shift register supporting multiple operating modes.

**Modes:**

* Hold
* Right Shift
* Left Shift
* Parallel Load

---

### 6. Linear Feedback Shift Register (LFSR)

A 4-bit pseudo-random sequence generator.

**Applications:**

* Random sequence generation
* Built-In Self-Test (BIST)
* Pattern generation

---

### 7. Binary to Gray Converter

Parameterized converter for Binary-to-Gray code conversion.

---

### 8. Gray to Binary Converter

Parameterized converter for Gray-to-Binary conversion.

---

### 9. ALU + Register + Counter + FSM Alert Mechanism

An integrated digital system combining multiple RTL modules.

**Modules Included:**

* ALU
* Register
* Counter
* FSM Alert Logic

---

## Learning Outcomes

This repository demonstrates practical implementation of:

* Combinational Logic Design
* Sequential Circuit Design
* Parameterized RTL Design
* Shift Register Architectures
* Counter Design
* FSM-Based Control Logic
* Multi-Module Integration

---

## Future Improvements

* Add synthesis reports
* Add timing analysis
* Add SystemVerilog testbenches
* Add assertions and functional coverage
