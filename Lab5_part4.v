module flipflop(input d, clk, reset, output reg q);

always @(posedge clk)

if(!reset)
	q <= 0;
else
	q <= d;

endmodule



module Lab5_part4;

reg din;
reg clk;
reg reset;
wire qout;

flipflop f1(.d(din), .clk(clk), .reset(reset), .q(qout));

initial
	begin
	din = 1;
	clk = 1;
	#60 $stop;
	end

always
	begin
	#10 clk = ~clk;
	end

always
	begin
	#10 reset = 0;
	#10 reset = 1;
	#10 reset = 0;
	#20 reset = 1;
	end


endmodule




	


