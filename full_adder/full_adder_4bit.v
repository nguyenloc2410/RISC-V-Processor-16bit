module full_adder_4bit(
input [3:0] a,b,
output [3:0] s,
output cout
);
wire [3:1] c;

half_adder st1(a[0], b[0], s[0], c[1]);
full_adder st2(a[1], b[1], c[1], s[1], c[2]);
full_adder st3(a[2], b[2], c[2], s[2], c[3]);
full_adder st4(a[3], b[3], c[3], s[3], cout);
endmodule

