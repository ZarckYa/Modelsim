module blockingexample;

reg a, b, c;

initial
	begin
	a = 1;
	b = 1;
	end

initial
	begin
	#10 a = ~b;
	b = a;
	c = ~ (a & b);
	#10;
	end
endmodule
	
