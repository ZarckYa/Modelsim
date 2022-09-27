module multi_gates(input a, b, select, output c);
wire w1, w2, sel_not;
//reg a, b, c, select;
and a1(w1, a, select);
and a2(w2, b, sel_not);
not no1(sel_not, select);
or or1(c, w1, w2);
endmodule

module adder_3bits(input [2:0]a, b, output [3:0] c);

assign c = a + b;

endmodule

module Muti(input [2:0] a, b, input sel, output [2:0] c);

multi_gates m1(.a(a[0]), .b(b[0]), .c(c[0]), .select(sel));
multi_gates m2(.a(a[1]), .b(b[1]), .c(c[1]), .select(sel));
multi_gates m3(.a(a[2]), .b(b[2]), .c(c[2]), .select(sel));

endmodule

module Compara(input [3:0] a, b, output c);

assign c = a > b;

endmodule


module Lab4_part5;

reg [2:0] in1,in2,m1,m2;
wire [3:0]w1,w2;
wire w3;
wire [2:0] out1;

adder_3bits a1(.a(in1), .b(m1), .c(w1));
adder_3bits a2(.a(in2), .b(m2), .c(w2));
Compara c1(.a(w1), .b(w2), .c(w3));
Muti M1(.sel(w3), .a(in1), .b(in2), .c(out1));

initial
	begin
	in1 = 3'b001;
	in2 = 3'b001;
	 m1 = 3'b001;
	 m2 = 3'b011;
	$monitor("output = %b", out1);
	end

endmodule

