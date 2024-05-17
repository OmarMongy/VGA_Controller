# Design and Implementation of VGA Controller on FPGA Fabric for Visual Display and Monitoring

## 1. Introduction
This project involves designing and implementing a VGA controller on an FPGA using Verilog HDL.
Our primary objective is to replace a traditional solid IC implementation with a modern, FPGA-based solution to display images on a VGA monitor.

## 2. Project Details
**Professor:** Dr. Howida Abd AlLatif    
**Team Name:** ZDC  
**Team Members:**
- Omar Ashraf Abd El Mongy  
- Khaled Mohamed Fathy 
- Abd-Allah Reda Farag  
- Kareem Ahmed Fathy 
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

![VGA Standard](https://camo.githubusercontent.com/43352d94a0d30359c00d17dd86fec8375acfe09b10b6df1cd6ddcd78439213cf/68747470733a2f2f692e6962622e636f2f474378705833622f53637265656e73686f742d323032332d30392d31322d3033323532372e706e67)

### ii. VGA Controller Architecture Description
The architecture consists of two main blocks: the VGA Sync block for generating synchronization signals and the Pixel Generation block for fetching and outputting pixel data.
![VGA Standard](https://camo.githubusercontent.com/4850d7ebffc36b4e6ab96620a434981279dd11c7ea8d42b287bd9276846b7ea1/68747470733a2f2f692e6962622e636f2f54316d623262512f53637265656e73686f742d323032332d30392d31322d3033323534382e706e67)
### iii. VGA Signal Timing
The VGA signal timing involves precise generation of HSync and VSync pulses, along with pixel clock timing, to ensure proper image rendering.
![VGA Signal Timing](https://i.ibb.co/sPbPx85/unnamed.png)
### iv. The Interfacing for VGA On The FPGA Board
Our FPGA board, the Cyclone IV, includes a built-in VGA port with active signals for HSync, VSync, and RGB data.
![Interfacing](https://i.ibb.co/tmJT0GQ/Screenshot-2024-05-17-151410.png)
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
![VGA Standard](https://camo.githubusercontent.com/e9389fc52b8a0ea1c848db7bcb5d389212aad48c6afec852ce3bb679b0422924/68747470733a2f2f692e6962622e636f2f636b71626b62532f53637265656e73686f742d323032332d30392d32392d3139353530352e706e67253345)
### iv. Testing and Simulation
Our testing phase will involve simulating the Verilog design to ensure correctness of timing signals and proper image rendering on the VGA monitor.

### v. Optimization and Performance Enhancement
We encountered a memory limitation on our FPGA for 640x480x3-bit RGB data. To address this, we reduced the clock speed from 25MHz to 10MHz and adjusted the horizontal standards to fit the memory constraints.

## 8. Results and Findings
Our VGA controller successfully generated the required synchronization signals and displayed images stored in RAM on the VGA monitor. Detailed simulation results and performance metrics will be provided.

## 9. FPGA Design Demo
A live demo was conducted on the Cyclone IV FPGA board, showcasing the VGA controller's ability to render images accurately on a VGA monitor.
![Demo](https://i.ibb.co/YB2ZmGV/Whats-App-Image-2024-05-12-at-3-14-59-PM.jpg)
![Demo](https://i.ibb.co/CwyyP59/Whats-App-Image-2024-05-15-at-4-14-00-PM-2.jpg)
![Demo](https://i.ibb.co/M9K1LZS/Whats-App-Image-2024-05-15-at-4-14-00-PM.jpg)
![Demo](https://i.ibb.co/wC9W0kX/Whats-App-Image-2024-05-12-at-3-14-59-PM-2.jpg)
![Demo](https://i.ibb.co/CwyyP59/Whats-App-Image-2024-05-15-at-4-14-00-PM-2.jpg)
![Demo]([https://i.ibb.co/phVYpXc/Whats-App-Image-2024-05-15-at-4-14-00-PM-1.jpg)
## 10. References
➢ Rapid prototyping of digital systems SOPC edition (James O. Hamblen, Tyson S. Hall, 
Michael D. Furman) 
➢ Let’s build a video card! (Ben Eater) 
