module multi_3bits(input [2:0] a, b, input sel, output [2:0] c);

multi_gates m1(.a(a[0]), .b(b[0]), .c(c[0]), .select(sel));
multi_gates m2(.a(a[1]), .b(b[1]), .c(c[1]), .select(sel));
multi_gates m3(.a(a[2]), .b(b[2]), .c(c[2]), .select(sel));

endmodule
