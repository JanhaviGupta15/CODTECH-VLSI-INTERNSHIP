# Task 2 - RAM Design

## Overview
This project implements a simple synchronous RAM (Random Access Memory) using Verilog.

The RAM supports:
- Write operation
- Read operation
The design stores data at specific memory locations and retrieves it based on the address.

## Memory Specification
- Total memory locations: 8
- Data width: 4 bits
- Address width: 3 bits
This means:
- Address range = 0 to 7
- Each location stores 4-bit data

## Operations Performed
### Write Operation
When 'we = 1', data ('din') is written into the memory at the specified address during the positive edge of the clock.
#### Example
write at address 0
we = 1;
add = 3'b000;
din = 4'b1010;
#10;
therefore at time = 5 : memory[000]=1010
### Read Operation
When "we=0", data("dout") is read from the memory at a particular address during the positive edge of the clock.
#### Example 
Read from address 0
we = 0;
add = 3'b000;
#10;
therefore at time = 25(posedge)
dout = memory[0] = 1010
