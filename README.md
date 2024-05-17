# VGA Controller Project on FPGA

## 1. Introduction
This project involves designing and implementing a VGA controller on an FPGA using Verilog HDL. Our primary objective is to replace a traditional solid IC implementation with a modern, FPGA-based solution to display images on a VGA monitor.

## 2. Project Details
**Professor:** [Professor's Name]  
**Team Name:** [Your Team Name]  
**Team Members:**
- [Member 1 Name]
- [Member 2 Name]
- [Member 3 Name]
- [Member 4 Name]  
**Project Title:** FPGA-Powered Video Graphics Array

### Roles of Each Member:
- **Design and Architecture:** [Member 1 Name]
- **Logic Analysis:** [Member 2 Name], [Member 3 Name]
- **Testing:** [Member 4 Name]

## 3. Aim and Objectives
The aim of this project is to design a VGA controller using an FPGA and Verilog HDL to display images on a VGA monitor. Our objectives include understanding VGA signal standards, designing timing generation logic, implementing the design in Verilog, and testing the system.

## 4. Problem Statement
The traditional approach to VGA controller design using solid ICs is outdated and lacks flexibility. We aim to replace this with an FPGA-based solution to leverage the benefits of programmability and high integration.

## 5. Proposed Solution
Our solution involves designing a VGA controller using the Cyclone IV FPGA board. The controller will generate the necessary VGA signals (HSync, VSync, RGB data) and handle the timing logic required to display images stored in RAM on the VGA monitor.

## 6. Technical Specifications

### i. VGA Standard
The VGA standard specifies the signal timing and synchronization requirements for displaying images on VGA-compatible monitors. 

### ii. VGA Controller Architecture Description
The architecture consists of two main blocks: the VGA Sync block for generating synchronization signals and the Pixel Generation block for fetching and outputting pixel data.

### iii. VGA Signal Timing
The VGA signal timing involves precise generation of HSync and VSync pulses, along with pixel clock timing, to ensure proper image rendering.

### iv. The Interfacing for VGA On The FPGA Board
Our FPGA board, the Cyclone IV, includes a built-in VGA port with active signals for HSync, VSync, and RGB data.

## 7. Design Details

### i. Inputs and Outputs
Our VGA controller design takes inputs such as clock and reset signals and outputs HSync, VSync, and RGB data signals. Internal signals include pixel coordinates and the Video On signal.

### ii. Logic Design
The logic design includes:
- **Horizontal Counter:** Counts from 0 to 639, generates done_x signal for line completion.
- **Vertical Counter:** Similar to horizontal counter but with enable signal from done_x.
- **HSync and VSync Generation:** Comparators and gates to generate synchronization signals.
- **Control Logic for Video Output:** Determines when to output video data based on pixel coordinates.

#### Horizontal Counter:
- Built from a register, comparator, adder, and mux.

#### Vertical Counter:
- Similar to horizontal counter but with an enable signal from the done_x flag.

#### HSync and VSync Generation:
- Utilizes less-than comparators and logic gates to generate sync signals.

#### Control Logic for Video Output:
- Comprised of comparators and an AND gate to generate the Video On signal.

### iii. Hardware Description Language (HDL) Implementation
The design will be implemented in Verilog HDL, encompassing modules for each component such as horizontal counter, vertical counter, VGA controller, memory ROM, and top-level file.

#### Horizontal Counter Module
#### Vertical Counter Module
#### VGA Controller Module
#### Memory ROM Module
#### Top-Level Module

### iv. Testing and Simulation
Our testing phase will involve simulating the Verilog design to ensure correctness of timing signals and proper image rendering on the VGA monitor.

### v. Optimization and Performance Enhancement
We encountered a memory limitation on our FPGA for 640x480x3-bit RGB data. To address this, we reduced the clock speed from 25MHz to 10MHz and adjusted the horizontal standards to fit the memory constraints.

## 8. Results and Findings
Our VGA controller successfully generated the required synchronization signals and displayed images stored in RAM on the VGA monitor. Detailed simulation results and performance metrics will be provided.

## 9. FPGA Design Demo
A live demo was conducted on the Cyclone IV FPGA board, showcasing the VGA controller's ability to render images accurately on a VGA monitor. [Include images or screenshots of the demo]

## 10. References
- [Include references to datasheets, academic papers, and other resources used in your project]

