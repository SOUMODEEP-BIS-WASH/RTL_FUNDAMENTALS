# Universal Parameterized Counter

## Overview

This project implements a configurable counter capable of both incrementing and decrementing depending on the selected mode.

The design supports reset, preset loading, and enable control.

## Features

* Parameterized width
* Up counting mode
* Down counting mode
* Preset load
* Reset support
* Enable control

## Modes

* `mode = 0` → Up Counter
* `mode = 1` → Down Counter

## Verification

Test cases covered:

* Up counting
* Down counting
* Reset operation
* Preset loading

## Files

* `design.v`
* `tb.v`

## Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave

