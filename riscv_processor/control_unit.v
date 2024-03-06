`timescale 1ns / 1ps

module control_unit(opcode, alu_op, reg_dst, reg_write, alu_src, jump, beq, bne, mem_write, mem_read, mem_to_reg);
input [3:0] opcode;
output reg[1:0] alu_op;
output reg reg_dst, reg_write, alu_src, jump, beq, bne, mem_write, mem_read, mem_to_reg;

always @(*)begin
case(opcode)
	4'b0000:begin
		reg_dst = 1'b0;
		alu_src = 1'b1;
		mem_to_reg = 1'b1;
		reg_write = 1'b1;
		mem_read = 1'b1;
		mem_write = 1'b0;
		beq = 1'b0;
		bne = 1'b0;
		alu_op = 2'b10;
		jump = 1'b0;   
	end
	4'b0001:begin
		reg_dst = 1'b0;
		alu_src = 1'b1;
		mem_to_reg = 1'b0;
		reg_write = 1'b0;
		mem_read = 1'b0;
		mem_write = 1'b1;
		beq = 1'b0;
		bne = 1'b0;
		alu_op = 2'b10;
		jump = 1'b0;   
	end
	4'b1011:
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b1;
    bne = 1'b0;
    alu_op = 2'b01;
    jump = 1'b0;   
   end
 4'b1100:  
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b1;
    alu_op = 2'b01;
    jump = 1'b0;   
   end
 4'b1101:  
   begin
    reg_dst = 1'b0;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b0;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b1;   
   end  
	default : begin
    reg_dst = 1'b1;
    alu_src = 1'b0;
    mem_to_reg = 1'b0;
    reg_write = 1'b1;
    mem_read = 1'b0;
    mem_write = 1'b0;
    beq = 1'b0;
    bne = 1'b0;
    alu_op = 2'b00;
    jump = 1'b0;   
   end
endcase
end
endmodule