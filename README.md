# VGA Controller in Verilog
This repository contains a Verilog implementation of a VGA Controller compliant with the VGA (Video Graphics Array) standard. VGA is a widely-used interface standard for connecting computer monitors and displays, known for its historical significance in early PC graphics.

## Table of Contents
- Introduction
- VGA Standard
- Design
 1. `Horizontal Counter`
 2. `Vertical Counter`
 3. `VGA Controller`
- Usage
- Simulation
- License

## Introduction
The VGA (Video Graphics Array) standard is an analog graphics display standard developed by IBM in 1987. It has been a widely adopted interface for connecting computer monitors and displays for many years. VGA controllers are integral to generating the required video signals to display images and graphics on VGA-compatible monitors.

This Verilog implementation of a VGA Controller adheres to VGA standard specifications and includes three key modules.

## VGA Standard
The VGA standard specifies various parameters that define how video signals are generated and displayed. These parameters include:

Resolution: VGA typically supports resolutions like 640x480 pixels, 800x600 pixels, and 1024x768 pixels.
Refresh Rate: Common refresh rates are 60Hz, 72Hz, and 75Hz.
Color Depth: VGA supports 256 colors from a palette of 262,144 (18-bit color depth).
Sync Signals: VGA uses horizontal and vertical synchronization signals, HSYNC and VSYNC, to define the timing of each frame.
These standard specifications are essential for ensuring compatibility with VGA monitors.
![VGA Standard](https://i.ibb.co/GCxpX3b/Screenshot-2023-09-12-032527.png)
## Design
The Verilog design for the VGA Controller is modular, following the VGA standard's timing and specifications.

### Horizontal Counter
Inputs:
clk: Clock input
reset_n: Active low reset
Outputs:
pixel_x: Horizontal pixel coordinate
done_x: Signal indicating the end of a horizontal line
The horizontal counter module generates the horizontal pixel coordinates for the VGA display. It increments the pixel_x counter and generates a "done_x" signal when reaching the end of a horizontal line.

### Vertical Counter
Inputs:
clk: Clock input
reset_n: Active low reset
enable: Enables vertical counter (controlled by "done_x" signal from horizontal_counter)
Outputs:
pixel_y: Vertical pixel coordinate
done_y: Signal indicating the end of a vertical frame
The vertical counter module generates the vertical pixel coordinates for the VGA display. It increments the pixel_y counter and generates a "done_y" signal when reaching the end of a vertical frame. The "enable" input allows control over vertical synchronization.

### VGA Controller
Inputs:
clk: Clock input
reset_n: Active low reset
rgb_sw[2:0]: RGB color values (user-defined)
Outputs:
rgb[2:0]: RGB color values for the VGA display
hsync: Horizontal synchronization signal
vsync: Vertical synchronization signal
The VGA controller module combines the horizontal and vertical counters to produce VGA timing signals (hsync and vsync). It also controls whether the video is displayed or not (video_on) and sets the RGB color values based on user-defined input.

![Architecture Of VGA](https://i.ibb.co/T1mb2bQ/Screenshot-2023-09-12-032548.png)

## Usage
To use this VGA Controller design, you can include the Verilog modules in your FPGA project and instantiate them as needed. Ensure that you configure the design parameters (e.g., resolution, refresh rate) to match the VGA standard specifications for your target display.

## Simulation
This repository includes simulation files and testbenches to verify the functionality of the VGA Controller design. You can simulate the design using a Verilog simulation tool to ensure it adheres to the VGA standard specifications and meets your display requirements before implementation on an FPGA or other hardware.

## License
This VGA Controller design is provided under the MIT License. Feel free to modify and use it in your projects, ensuring it complies with the VGA standard
