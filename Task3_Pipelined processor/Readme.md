# Task 3 - Pipeline Processor

## Overview
This project implements a simple 4-stage pipelined processor using Verilog.

Stages:
* Fetch (IF)
* Decode (ID)
* Execute (EX)
* Writeback (WB)

Supported operations:
* ADD
* SUB
* LOAD

## Files
* pipeline.v → Main design code
* pipeline_tb.v → Testbench
* Pipeline_Waveform.png → Simulation output

## Testbench Explanation
Three instructions were given:
# Instruction 1:
Opcode = 00
A = 5
B = 3
Operation: ADD
Result = 8

Flow:
0–10 → Fetch
10–20 → Decode
20–30 → Execute
30–40 → Writeback

# Instruction 2:
Opcode = 01
A = 8
B = 2
Operation: SUB
Result = 6

Flow:
10–20 → Fetch
20–30 → Decode
30–40 → Execute
40–50 → Writeback


# Instruction 3:
Opcode = 10
A = 0
B = 7
Operation: LOAD
Result = 7

Flow:
20–30 → Fetch
30–40 → Decode
40–50 → Execute
50–60 → Writeback

## Result
The waveform confirms correct pipelined execution and proper output generation.
