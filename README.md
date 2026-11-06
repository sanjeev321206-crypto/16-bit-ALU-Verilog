
# 16-bit Arithmetic Logic Unit (ALU)

## 1. Project Overview

This project implements a 16-bit Arithmetic Logic Unit
(ALU) using Verilog HDL.

The ALU performs eight arithmetic and logical operations
based on a 3-bit control signal.

The design is simulated and verified using Icarus Verilog
and GTKWave.

## 2. Features

- 16-bit input operands
- 3-bit operation selector
- Eight supported operations
- Zero flag detection
- Verilog testbench
- Simulation waveform generation

## 3. Supported Operations

| Opcode | Operation | Description |
|--------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | Bitwise AND |
| 011 | OR | Bitwise OR |
| 100 | XOR | Bitwise XOR |
| 101 | NOT | Bitwise NOT of A |
| 110 | SHL | Shift left |
| 111 | SHR | Shift right |

## 4. Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Linux
- Git and GitHub

## 5. Project Structure

```text
ALU_Project/
├── alu.v
├── alu_tb.v
├── README.md
├── alu_wave.vcd
└── alu_sim
```

## 6. Simulation and Verification

The design was compiled and simulated using:

```bash
iverilog -o alu_sim alu.v alu_tb.v
vvp alu_sim
```

All eight ALU operations were tested.

The zero flag was also verified using a
subtraction operation that produces zero.

## 7. Verification Results

| Test | Expected Result | Status |
|------|-----------------|--------|
| ADD | 16 | PASS |
| SUB | 8 | PASS |
| AND | 4 | PASS |
| OR | 12 | PASS |
| XOR | 8 | PASS |
| NOT | FFF3 | PASS |
| SHL | 24 | PASS |
| SHR | 6 | PASS |
| Zero Flag | 1 | PASS |

## 8. Future Improvements

- Add carry and overflow flags.
- Add more comprehensive test cases.
- Implement randomized verification.
- Perform RTL synthesis.
- Analyze hardware area and timing.

## 9. Author

ECE Student

Project: 16-bit ALU Design using Verilog HDL
