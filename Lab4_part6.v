module multi_5bits(input [4:0] a, b, input sel, output [4:0] c);

multi_gates m1(.a(a[0]), .b(b[0]), .c(c[0]), .select(sel));
multi_gates m2(.a(a[1]), .b(b[1]), .c(c[1]), .select(sel));
multi_gates m3(.a(a[2]), .b(b[2]), .c(c[2]), .select(sel));
multi_gates m4(.a(a[3]), .b(b[3]), .c(c[3]), .select(sel));
multi_gates m5(.a(a[4]), .b(b[4]), .c(c[4]), .select(sel));

endmodule


module way4_sel(input [4:0] A, B, C, D, input [1:0] sel, output [4:0] out);

//A:00, B:01, C:10, D:11
wire [4:0] w1, w2;

multi_5bits m1(.a(D), .b(B), .sel(sel[1]), .c(w1));
multi_5bits m2(.a(C), .b(A), .sel(sel[1]), .c(w2));
multi_5bits m3(.a(w1), .b(w2), .sel(sel[0]), .c(out));

endmodule

module Lab4_part6;

reg [4:0] a, b, c ,d;
wire [4:0] out;
reg [1:0] sel;

way4_sel w1(.A(a), .B(b), .C(c), .D(d), .sel(sel), .out(out));

initial
	begin
	$monitor("out = %d", out);
	a = 8;
	b = 6;
	c = 4;
	d = 2;
	sel = 3;
	end
endmodule


