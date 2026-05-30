# 8-Bit Shift Registers in Verilog HDL

## Overview

This repository contains the implementation of four fundamental 8-Bit Shift Register architectures using Verilog HDL:

- Serial In Serial Out (SISO)
- Serial In Parallel Out (SIPO)
- Parallel In Serial Out (PISO)
- Parallel In Parallel Out (PIPO)

These designs demonstrate different methods of data storage, transfer, and conversion in digital systems. The projects were developed using D Flip-Flop based architectures and verified through simulation and waveform analysis.

The repository includes RTL design, functional verification using testbenches, simulation waveforms, logic synthesis reports, and synthesized RTL schematics.

The functionality and operational behavior of the shift registers were studied using a reference application note on shift register architectures.

---

## Shift Registers Included

### 1. Serial In Serial Out (SISO)

A shift register where data is entered serially and retrieved serially. Each clock cycle shifts the data by one stage until it reaches the final output.

#### Features
- Serial data input
- Serial data output
- Cascaded D Flip-Flop architecture
- Clock-controlled shifting
- Asynchronous reset support

---

### 2. Serial In Parallel Out (SIPO)

A shift register that converts serial input data into parallel output data. After receiving all bits serially, the complete data word becomes available simultaneously at the outputs.

#### Features
- Serial data input
- Parallel data output
- Serial-to-parallel conversion
- Output enable mechanism
- Asynchronous reset support

---

### 3. Parallel In Serial Out (PISO)

A shift register that accepts parallel input data and transmits it serially. Parallel data is loaded into the register and shifted out one bit per clock cycle.

#### Features
- Parallel data loading
- Serial data transmission
- Shift control signal
- Parallel-to-serial conversion
- Asynchronous reset support

---

### 4. Parallel In Parallel Out (PIPO)

A register that loads and outputs all data bits simultaneously. It is commonly used for temporary data storage and buffering applications.

#### Features
- Parallel data input
- Parallel data output
- Simultaneous data transfer
- Clock-controlled storage
- Asynchronous reset support

---

## Design Specifications

- 8-Bit Register Width
- D Flip-Flop Based Architecture
- Synchronous Operation
- Asynchronous Reset Support
- Serial and Parallel Data Transfer Modes
- Modular Verilog Implementation

---

## Tools Used

- Quartus II for RTL Design and Logic Synthesis
- ModelSim-Altera for Simulation and Waveform Generation
- Verilog HDL

---

## Functional Verification

Each design is verified using dedicated testbenches that validate:

- Reset functionality
- Data loading operations
- Data shifting operations
- Serial communication behavior
- Parallel data transfer
- Clock synchronization
- Functional correctness of outputs

### Test Pattern Used

Input Data:

`10011010`

This pattern is used to verify data propagation, storage, and conversion across all shift register architectures.

---

## Simulation Results

Waveform analysis confirms:

- Correct serial data shifting
- Accurate parallel data loading
- Proper serial-to-parallel conversion
- Proper parallel-to-serial conversion
- Successful clock synchronization
- Correct reset operation
- Reliable data storage and retrieval

---

## Synthesis Results

Logic synthesis is performed using Quartus II.

Synthesis outputs include:

- Logic synthesis reports

---

## Applications

- Data buffering
- Serial communication systems
- Parallel communication systems
- Data format conversion
- Embedded systems
- Processor interfacing
- Digital signal processing
- Communication protocols
- Temporary data storage

---

## Author

Shaan Garg
