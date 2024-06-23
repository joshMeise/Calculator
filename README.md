# VHDL Calculator

This project is a simple calculator implemented in VHDL for the BASYS 3 board. It supports basic arithmetic operations: addition, subtraction, and multiplication. The calculator takes input through a serial connection and processes it accordingly.

## Project Structure

- **VHDL**: Contains all the source code for the calculator.
  - **source**: Subdirectory containing the main VHDL files for the calculator.
  - **testbenches**: Subdirectory containing testbenches for verifying the functionality of the calculator.

- **constraints**: Contains the constraints file for the BASYS 3 board.

## Usage

To run the VHDL Calculator on the BASYS 3 board, follow these steps:

1. **Compile the VHDL Code**: Use your preferred VHDL simulation and synthesis tool (such as Xilinx Vivado) to compile the VHDL files and generate the bitstream.
2. **Program the BASYS 3 Board**: Load the generated bitstream onto the BASYS 3 board.
3. **Connect Serial Interface**: Set up a serial connection to the BASYS 3 board using a terminal program (such as PuTTY or Tera Term).

### Serial Input Format

The calculator accepts input via a serial connection with the following format:

1. **First Number**: A signed integer between -128 and 127.
2. **Space**: A space character (' ').
3. **Operation**: A button push indicating the operation:
   - **Add**: Button 1
   - **Subtract**: Button 2
   - **Multiply**: Button 3
4. **Second Number**: A signed integer between -128 and 127.
5. **Space**: A space character (' ').

### Example Input


This input performs the following calculations:

1. `23 + 45`
2. `-12 - 50`
3. `10 * 5`

### Serial Connection

The calculator communicates via a serial connection with the following parameters:

- **Baud Rate**: 9600 (configurable)
- **Data Bits**: 8
- **Parity**: None
- **Stop Bits**: 1

### Configuration

- **Clock Division**: The system clock is divided from 100MHz to 1MHz. This can be adjusted by changing the `generic` value inside `topLevel.vhd`.
- **Baud Rate**: The baud rate for the serial connection is set to 9600. This can be adjusted by changing the `generic` value inside `topLevel.vhd`.

## VHDL Files

### Source Files

- **topLevel.vhd**: The top-level module for the calculator.
- **calculator.vhd**: Implements the arithmetic operations.
- **uart.vhd**: Manages serial communication.

### Testbenches

- **test_calculator.vhd**: Testbench for verifying the calculator functionality.
- **test_uart.vhd**: Testbench for verifying the UART communication.

## Constraints

The constraints file is configured for the BASYS 3 board and includes pin assignments for the system clock, buttons, and serial communication.

## Author

Joshua Meise

This VHDL Calculator project was developed as part of Dartmouth College's CS50 class, Software Design and Implementation. The project demonstrates the use of VHDL for implementing a basic calculator with serial communication on an FPGA.

