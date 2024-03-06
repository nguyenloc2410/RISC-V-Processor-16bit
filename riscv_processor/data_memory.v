`timescale 1ns / 1ps
`include "parameter.v"
module data_memory (addr,wdata,rdata,we,clk,re);
input [15:0] addr,wdata;
input we,clk,re;
output [15:0] rdata;
reg [`width - 1:0] memory [`depth_d - 1:0];
wire [2:0] ram_addr = addr[2:0];
integer i;
initial begin
$readmemb("C:/Users/never/OneDrive/Desktop/riscv_processor/test.txt",memory);
end
always @(posedge clk)begin
if(we) memory[ram_addr] <= wdata;
end
assign rdata = re ? memory[ram_addr] : 16'd0;
endmodule