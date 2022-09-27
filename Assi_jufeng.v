module Register_8bits(input [7:0] din, input clk, reset, output reg [7:0] q);

always @( posedge clk )

if(!reset)
	q <= 0;
else
	q <= din;

endmodule

module Register_16bits(input [15:0] din, input clk, reset, output reg [15:0] q);

always @( posedge clk )

if(!reset)
	q <= 0;
else
	q <= din;

endmodule

module Counter(input clk, reset, output reg [5:0] cout);

always @( posedge clk )

if(!reset)
	cout <= 0;
else
	cout <= cout - 1;
endmodule

module Adder_Reg_Sim(input [7:0] a, input [5:0] count, input rst, clk, output [7:0] out );

reg [7:0] counter;
wire [7:0] w1, r1;

assign counter = {2'b0,count};
Register_8bits R1(.din(a), .reset(rst), .clk(clk), .q(r1));
assign w1 = counter + r1;
Register_8bits R2(.din(w1), .reset(rst), .clk(clk), .q(out));

endmodule

module Adder_Reg_Com(input [7:0] din, input rst, clk, output reg [7:0] sum );

always @( posedge clk )

if(!rst)
	sum <= 0;
else
	sum <= din + sum;

endmodule

module Muti_Reg(input [7:0] in1, b, input rst, clk, output [15:0] result);

wire [7:0 ] r2, r3;
wire [15:0] w2;

Register_8bits R1(.din(b), .reset(rst), .clk(clk), .q(r2));
Register_8bits R2(.din(in1), .reset(rst), .clk(clk), .q(r3));
assign w2 = r2 * r3;
Register_16bits R3(.din(w2), .reset(rst), .clk(clk), .q(result));

endmodule


module Final_Combine(input [7:0] a, b, input clk, rst, output [7:0] s1, output [15:0] s2);

wire [5:0] C_Res;
wire [7:0] A_Res;

Counter C1(.clk(clk), .reset(rst), .cout(C_Res));
Adder_Reg_Sim A1(.count(C_Res), .a(a), .clk(clk), .rst(rst), .out(A_Res));
Adder_Reg_Com A2(.din(A_Res), .rst(rst), .clk(clk), .sum(s1));
Muti_Reg M1(.in1(A_Res), .b(b), .clk(clk), .rst(rst), .result(s2));

endmodule

module Assi_jufeng;

reg [7:0] a, b;
wire [7:0] s1;
wire [15:0] s2;
reg rst, clk;

Final_Combine F1(.a(a), .b(b), .clk(clk), .rst(rst), .s1(s1), .s2(s2));

initial
	begin
	a = 5;
	b = 7;
	clk = 0;
	rst = 0;
	#10 rst = 1;
	#1000 $stop;
	end


always #5 clk = ~clk;

endmodule











