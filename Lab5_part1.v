module Lab5_part1;

reg a, b, clk;

initial
	begin
	clk = 0;
	a = 0;
	b = 1;
	#50 $stop;
	end

always
	begin
	#5 clk = ~clk;
	end

always
	begin
	#10 a = ~a;
	#5 b = b ^ a;
	end

endmodule
