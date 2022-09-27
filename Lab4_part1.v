module lab4_part1;

reg [4:0] a,b;
wire [6:0] c,e;
wire [3:0] d;
wire [9:0] f;

assign c = a + b;
assign d = a + b;
assign e = a * b;
assign f = a * b;

initial
 	begin
	$monitor("a = %b, b = %b, c = %b, d = %b, e = %b, f = %b",a,b,c,d,e,f);
	a = 1;
	b = 2;
	#10
	a = -3;
	b = 2;
	#10
	a = 2'b11;
	b = 3'b011;
	#10
	a = 5'b01011;
	b = 5'b11001;
	#10
	a = 5'b10x00;
	b = 5'b00000;
	#10
	a = 5'h3A;
	b = 5'hE;
	#10;
	end
endmodule

