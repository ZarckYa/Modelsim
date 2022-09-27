module Lab4_part3;

reg [4:0] a, b;
wire [5:0] c1, c2, c3, c4;
wire d1, d2, d3, d4;

assign d1 = a == b;
assign d2 = | b;
assign d3 = a > b;
assign d4 = a && b;
assign c1 = a & b;
assign c2 = a << 2;
assign c3 = a >> b;
assign c4 = (a > b)? a + b : a - b;

initial
 	begin
	$monitor("d1 = %b, d2 = %b, d3 = %b, d4 = %b, c1 = %b, c2 = %b, c3 = %b, c4 = %b", d1,d2,d3,d4,c1,c2,c3,c4);
	a = 5;
	b = 5;
	#10
	a = -5;
	b = 4;
	#10;
	end
endmodule