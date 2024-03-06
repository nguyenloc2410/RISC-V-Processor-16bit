`timescale 1ns / 1ps
`include "parameter.v"
module test_bench;
reg clk;
riscv_processor uut (.clk(clk));
initial begin
   clk <=0;
   `simulation_time;
   $finish;
end

always 
  begin
   #5 clk = ~clk;
  end
endmodule