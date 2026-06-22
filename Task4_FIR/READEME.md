# Task 4 - FIR Filter Design

## Overview
This project implements a 3-tap FIR (Finite Impulse Response) filter using Verilog.

The filter uses the equation:
y[n] = h0x[n] + h1x[n−1] + h2x[n−2]

Coefficients used:
h0 = 1
h1 = 2
h2 = 1

This means:
y[n] = x[n] + 2x[n−1] + x[n−2]

## Files
* fir_filter.v → Main FIR filter design
* fir_filter_tb.v → Testbench
* FIR_Waveform.png → Simulation output

## Testbench Explanation
Input samples applied:
2, 4, 6, 8, 10

### Sample 1
Input = 2
Previous samples not available
Output = X

### Sample 2
Input = 4
Only one previous sample available
Output = X

### Sample 3
Input = 6
Previous samples = 4, 2
Output: 6 + 2(4) + 2 = 16

### Sample 4
Input = 8
Previous samples = 6, 4
Output: 8 + 2(6) + 4 = 24

### Sample 5
Input = 10
Previous samples = 8, 6
Output: 10 + 2(8) + 6 = 32

## Result
The waveform verifies correct FIR filter operation and proper shifting of delayed samples.
