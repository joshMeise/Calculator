# VHDL Calculator

Simple Calculator in VHDL for BASYS 3 Board: This project implements a basic calculator supporting addition, subtraction, and multiplication, with input and output via serial connection.

## Project Structure

- **VHDL**: Contains all the source code for the calculator.
  - **source**: Subdirectory containing the main VHDL files for the calculator.
  - **testbenches**: Subdirectory containing testbenches for verifying the functionality of the calculator.

- **constraints**: Contains the constraints file for the BASYS 3 board.

## Usage

To run the VHDL Calculator on the BASYS 3 board, follow these steps:

1. **Compile the VHDL Code**: Use a VHDL simulation and synthesis tool (such as Xilinx Vivado) to compile the VHDL files and generate the bitstream.
2. **Program the BASYS 3 Board**: Load the generated bitstream onto the BASYS 3 board.
3. **Connect Serial Interface**: Set up a serial connection to the BASYS 3 board using a terminal program (such as PuTTY).

### Serial Input Format

The calculator accepts input via a serial connection with the following format:

1. **First Number**: A signed integer between -128 and 127.
2. **Space**: A space character (' ').
3. **Operation**: A button push indicating the operation:
   - **Add**: Top Button
   - **Subtract**: Middle Button
   - **Multiply**: Bottom Button
4. **Second Number**: A signed integer between -128 and 127.
5. **Space**: A space character (' ').

### Example Input
1. `23 [top button] 45`
2. `-12 [bottom button] -62`
3. `10 [middle button] 5`

This input performs the following calculations:

1. `23 + 45 = 68`
2. `-12 - 50 = -62`
3. `10 x 5 = 50`

### Serial Connection

The calculator communicates via a serial connection with the following parameters:

- **Baud Rate**: 9600 (configurable)
- **Data Bits**: 8
- **Parity**: None
- **Stop Bits**: 1

### Configuration

- **Clock Division**: The system clock is divided from 100MHz to 1MHz. This can be adjusted by changing the `clockDividerRatioConstant` value inside `topLevel.vhd`.
- **Baud Rate**: The baud rate for the serial connection is set to 9600. This can be adjusted by changing the `baudCounterConstant` value inside `topLevel.vhd`.

## VHDL Files

### Source Files

- **topLevel.vhd**: The top-level module for the calculator.
- **buttonInterface.vhd**: Button monopulser.
- **clockGenerator.vhd**: Clock divider.
- **receiver.vhd**: SCI receiver.
- **fsm.vhd**: Controller for the calculator.
- **datapath.vhd**: Datapath for the calculator.
- **opToFIFO.vhd**: Converts an operation (+, - or x) to the ASCII equivalent followed by a space.
- **numToFIFO.vhd**: Converts a number to the ASCII BCD equivalent followed by a space.
- **ansToFIFO.vhd**: Converts a number to the ASCII BCD equivalent preceded by an equal sign and space, and followed by a carriage return and newline character.
- **FIFO.vhd**: Holds the ASCII equivalents of the symbols to be transmitted in a queue for transmission to the transmitter.
- **transmitter.vhd**: SCI transmitter.
- **myPackage.vhd**: Custom package containing definition of register file and operation types.
- **constraints.xcd**: Constrains file.

## Constraints

The constraints file is configured for the BASYS 3 board and includes pin assignments for the system clock, buttons, and serial communication.

## Authors

Joshua Meise and Brandon Zhao

This VHDL Calculator project was developed as part of Dartmouth College's COSC 56 class, Digital Electronics. The project demonstrates the use of VHDL for implementing a basic calculator with serial communication on an FPGA.

