module Register_8bits(input [7:0] din, input clk, reset, output reg [7:0] q);

always @(posedge clk or negedge clk)
//or negedge clk
//posedge clk or
if(!reset)
	q <= 0;
else
	q <= din;

endmodule

module adder_8bits(input [7:0] a, b, output [7:0] c);

assign c = a + b;

endmodule


module Lab5_part6;

reg [7:0]din;
reg clk, rst ;
wire [7:0] w1, w2, sum ;


Register_8bits r1(.din(din), .clk(clk), .reset(rst), .q(w1));
adder_8bits a1(.a(w1), .b(sum), .c(w2));
Register_8bits r2(.din(w2), .clk(clk), .reset(rst), .q(sum));


initial
	begin
	din = 2;
	clk = 1;
	rst = 0;
	#10 rst = 1;
	#100 $stop;
	end

always
	begin
	#10 clk = ~clk;
	end


endmodule