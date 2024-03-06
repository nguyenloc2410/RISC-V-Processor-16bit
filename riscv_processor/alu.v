`timescale 1ns / 1ps
module alu(rd1,rd2,alu_control,zero,res);
input [15:0] rd1,rd2;
input [2:0] alu_control;
output zero;
output reg [15:0] res;
always @(*)
begin
	case(alu_control)
		3'b000 : res <= rd1 + rd2;
		3'b001 : res <= rd1 - rd2;
		3'b010 : res <= ~rd1 ;
		3'b011 : res <= rd1 << rd2;
		3'b100 : res <= rd1 >> rd2;
		3'b101 : res <= rd1 & rd2;
		3'b110 : res <= rd1 | rd2;
		3'b111 : 
		begin
			if(rd1 < rd2) res <= 16'd1;
			else res <= 16'd0;
		end
		default : 	res = rd1 + rd2;
	endcase
end
assign zero = (res == 16'd0) ? 1'b1: 1'b0;
endmodule