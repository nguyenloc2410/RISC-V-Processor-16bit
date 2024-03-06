`timescale 1ns / 1ps

module alu_control( alu_ctrl, ALUOp, Opcode);
input [1:0] ALUOp;
input [3:0] Opcode;
output reg[2:0] alu_ctrl;

wire [5:0] ALUControlIn;

assign ALUControlIn = {ALUOp,Opcode};
always @(*)
casex (ALUControlIn)
   6'b10xxxx: alu_ctrl=3'b000;
   6'b01xxxx: alu_ctrl=3'b001;
   6'b000010: alu_ctrl=3'b000;
   6'b000011: alu_ctrl=3'b001;
   6'b000100: alu_ctrl=3'b010;
   6'b000101: alu_ctrl=3'b011;
   6'b000110: alu_ctrl=3'b100;
   6'b000111: alu_ctrl=3'b101;
   6'b001000: alu_ctrl=3'b110;
   6'b001001: alu_ctrl=3'b111;
  default: alu_ctrl=3'b000;
endcase
endmodule