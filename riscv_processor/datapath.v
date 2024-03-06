`timescale 1ns / 1ps

module datapath (opcode, clk, reg_dst, reg_write, alu_op, alu_src, jump, beq, bne, mem_write, mem_read, mem_to_reg);

input reg_dst,reg_write,clk,alu_src,jump,beq,bne,mem_write,mem_read,mem_to_reg;

input [1:0] alu_op;
output [3:0] opcode;
 
wire zero_flag,beq_control,bne_control;
wire [15:0] instruction,wd,rd_1,rd_2,result,PC_j,PC_bne,PC_branch,extend_im,mem_read_data,rd2_prime,PC_2beq,PC_2bne;
wire [2:0] ws, ctrl_alu,rs_1,rs_2;
wire [12:0] jump_shift;
reg  [15:0] pc_current;
wire [15:0] pc_next,pc2;

 initial begin
  pc_current <= 16'd0;
 end
 always @(posedge clk)
 begin 
   pc_current <= pc_next;
 end
assign pc2 = pc_current + 16'd2;

instruction_memory im(.pc_addr(pc_current),.instr(instruction));

assign rs_1 = instruction[11:9];
assign rs_2 = instruction[8:6];
assign ws = reg_dst ? instruction[5:3] : instruction[8:6];
assign wd = mem_to_reg ? mem_read_data : result;

register_file rf(.rs1(rs_1),.rs2(rs_2),.ws(ws),.wd(wd),.rd1(rd_1),.rd2(rd_2),.we(reg_write),.clk(clk));

alu_control alcnt(.ALUOp(alu_op), .Opcode(instruction[15:12]), .alu_ctrl(ctrl_alu));

assign extend_im = {{10{instruction[5]}},instruction[5:0]};

assign rd2_prime = alu_src ? extend_im : rd_2; 

alu al(.rd1(rd_1),.rd2(rd2_prime),.alu_control(ctrl_alu),.zero(zero_flag),.res(result));

assign jump_shift = {instruction[11:0],1'b0};
assign PC_j = {pc2[15:13],jump_shift};

assign PC_branch = pc2 + {extend_im[14:0],1'b0};

assign beq_control = beq & zero_flag;
assign bne_control = bne & (~zero_flag);

assign PC_2beq = beq_control ? PC_branch : pc2;
assign PC_2bne = bne_control ? PC_branch : PC_2beq;
assign pc_next = jump ? PC_j : PC_2bne;


data_memory dtmr(.addr(result),.wdata(rd_2),.rdata(mem_read_data),.we(mem_write),.clk(clk),.re(mem_read));

assign opcode = instruction[15:12];
endmodule