
# Bi-Directional Shift Register

## Overview

This project implements a 4-bit bidirectional shift register using multiplexers and D flip-flops.

The register supports multiple operating modes including hold, left shift, right shift, and parallel load.

## Features

* Hold mode
* Right shift
* Left shift
* Parallel load
* Modular design using MUX + DFF

## Modes

* `00` → Hold
* `01` → Right Shift
* `10` → Left Shift
* `11` → Parallel Load

## Verification

Test cases covered:

* Right shift operation
* Left shift operation
* Parallel load
* Hold state


## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
