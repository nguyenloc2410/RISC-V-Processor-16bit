`timescale 1ns / 1ps
`include "parameter.v"
module instruction_memory(pc_addr,instr);
input [15:0] pc_addr;
output [15:0] instr;
reg [15: 0] instr_memo [14: 0];
wire [3:0] instr_addr = pc_addr[4:1];
initial begin
$readmemb("C:/Users/never/OneDrive/Desktop/riscv_processor/instr_list.txt",instr_memo,0,14);
end
assign instr = instr_memo[instr_addr]; 
endmodule