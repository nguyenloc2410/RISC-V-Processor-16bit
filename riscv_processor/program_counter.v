`timescale 1ns / 1ps

module program_counter(pc_next,clk,pc_current);
input [15:0] pc_next;
input clk;
output reg [15:0] pc_current;
initial begin
  pc_current <= 16'd0;
 end
always @(posedge clk)begin
	pc_current <= pc_next;
end
endmodule