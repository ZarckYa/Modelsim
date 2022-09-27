module multi_32bits(input [31:0] a, b, input sel, output [31:0] c);

multi_gates m1(.a(a[0]), .b(b[0]), .c(c[0]), .select(sel));
multi_gates m2(.a(a[1]), .b(b[1]), .c(c[1]), .select(sel));
multi_gates m3(.a(a[2]), .b(b[2]), .c(c[2]), .select(sel));
multi_gates m4(.a(a[3]), .b(b[3]), .c(c[3]), .select(sel));
multi_gates m5(.a(a[4]), .b(b[4]), .c(c[4]), .select(sel));
multi_gates m6(.a(a[5]), .b(b[5]), .c(c[5]), .select(sel));
multi_gates m7(.a(a[6]), .b(b[6]), .c(c[6]), .select(sel));
multi_gates m8(.a(a[7]), .b(b[7]), .c(c[7]), .select(sel));
multi_gates m9(.a(a[8]), .b(b[8]), .c(c[8]), .select(sel));
multi_gates m10(.a(a[9]), .b(b[9]), .c(c[9]), .select(sel));
multi_gates m11(.a(a[10]), .b(b[10]), .c(c[10]), .select(sel));
multi_gates m12(.a(a[11]), .b(b[11]), .c(c[11]), .select(sel));
multi_gates m13(.a(a[12]), .b(b[12]), .c(c[12]), .select(sel));
multi_gates m14(.a(a[13]), .b(b[13]), .c(c[13]), .select(sel));
multi_gates m15(.a(a[14]), .b(b[14]), .c(c[14]), .select(sel));
multi_gates m16(.a(a[15]), .b(b[15]), .c(c[15]), .select(sel));
multi_gates m17(.a(a[16]), .b(b[16]), .c(c[16]), .select(sel));
multi_gates m18(.a(a[17]), .b(b[17]), .c(c[17]), .select(sel));
multi_gates m19(.a(a[18]), .b(b[18]), .c(c[18]), .select(sel));
multi_gates m20(.a(a[19]), .b(b[19]), .c(c[19]), .select(sel));
multi_gates m21(.a(a[20]), .b(b[20]), .c(c[20]), .select(sel));
multi_gates m22(.a(a[21]), .b(b[21]), .c(c[21]), .select(sel));
multi_gates m23(.a(a[22]), .b(b[22]), .c(c[22]), .select(sel));
multi_gates m24(.a(a[23]), .b(b[23]), .c(c[23]), .select(sel));
multi_gates m25(.a(a[24]), .b(b[24]), .c(c[24]), .select(sel));
multi_gates m26(.a(a[25]), .b(b[25]), .c(c[25]), .select(sel));
multi_gates m27(.a(a[26]), .b(b[26]), .c(c[26]), .select(sel));
multi_gates m28(.a(a[27]), .b(b[27]), .c(c[27]), .select(sel));
multi_gates m29(.a(a[28]), .b(b[28]), .c(c[28]), .select(sel));
multi_gates m30(.a(a[29]), .b(b[29]), .c(c[29]), .select(sel));
multi_gates m31(.a(a[30]), .b(b[30]), .c(c[30]), .select(sel));
multi_gates m32(.a(a[31]), .b(b[31]), .c(c[31]), .select(sel));

endmodule

module adder_32bits(input [31:0]a, b, output [31:0] c);

assign c = a + b;

endmodule

module Lab_part2;

reg [31:0] PCin, Cons;
reg  sel;
wire [31:0] w1, PCout;

adder_32bits a1(.a(PCin), .b(Cons), .c(w1));
mutil_32bits m1(.a(PCin), .b(Cons), .sel(sel), .c(PCout));


always
	begin
	
	end

endmodule






















