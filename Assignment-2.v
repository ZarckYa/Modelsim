/**********
*Author: Jufeng Yang
*Date:6/12/2020
*
**********/
module Assignment2(input [7:0] a, b, input clk, rst, output  [7:0]  s1, output [15:0] s2);

reg [7:0] R_8bits1, R_8bits2, R_Pass1, R_Pass2, A_Res;
reg [15:0] R_16bits;
reg [5:0] count;


always @( posedge clk ) 
if(!rst) begin
	R_8bits1 <= 0;
	count <= 0;
	R_8bits2 <= 0;
	R_Pass1 <= 0;
	end
else	begin
	R_8bits1 <= a;
	count <= count - 1;
	R_8bits2 <= b;
	R_Pass1 <= R_8bits1 + {2'b00,count};
	end

assign s1 = A_Res;
assign s2 = R_16bits;

always @( posedge clk )

if(!rst)begin
	A_Res <= 0;
	end

else	begin
	A_Res <= R_Pass1 + A_Res;
	end

always @( posedge clk )

if(!rst)begin
	
	R_Pass2 <= 0;
	R_16bits <= 0;
	
	end
else	begin
	R_Pass2 <= R_Pass1;
	R_16bits <= R_Pass2 * R_8bits2;
	end
endmodule

module Assignment_ju;

reg [7:0] a, b;
wire [7:0] s1;
wire [15:0] s2;
reg rst, clk;

Assignment2 A1(.a(a), .b(b), .clk(clk), .rst(rst), .s1(s1), .s2(s2));

initial
	begin
	a = 5;
	b = 7;
	clk = 0;
	rst = 0;
	#10 rst = 1;
	# 930 $strobe("#940  s1 = %h, s2 = %h", s1, s2);
	#60 $stop;
	end

always #5 clk = ~clk;

endmodule











