`ifndef PARAMETER_H_
`define PARAMETER_H_
// fpga4student.com 
// FPGA projects, VHDL projects, Verilog projects 
// Verilog code for RISC Processor 
// Parameter file
`define width 16 // 16 bits instruction memory, data memory
`define depth 15 // instruction memory, instructions number, this number can be changed. Adding more instructions to verify your design is a good idea.
`define depth_d 8 // The number of data in data memory. We only use 8 data. Do not change this number. You can change the value of each data inside test.data file. Total number is fixed at 8. 
`define simulation_time #10
`endif