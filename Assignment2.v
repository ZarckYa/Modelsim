module Assignment2(input [7:0] a, b, input clk, rst, output  reg [7:0]  s1, output reg [15:0] s2);

reg [7:0] R_8bits1, R_8bits2, R_Pass1, R_Pass2, A_Res1, c;
reg [15:0] R_16bits;
reg [5:0] count;


/*always @( posedge clk ) 
if(!rst) 
	
	count <= 0;
	
else	
	count <= count - 1;*/



always @( posedge clk ) 
if(!rst) begin
	R_8bits1 = 0;
	count = 0;
	A_Res1 = R_8bits1 + {2'b00,count};
	end
else	begin
	R_8bits1 = a;
	count = count - 1;
	A_Res1 = R_8bits1 + {2'b00,count};
	end



always @( posedge clk )

if(!rst)
	R_Pass1 = 0;

else
	R_Pass1 = A_Res1;



always @( posedge clk )

if(!rst)
	s1 = 0;

else
	s1 = R_Pass1 + s1;



always @( posedge clk )

if(!rst)begin
	R_Pass2 = 0;
	R_8bits2 = 0;
	R_16bits = R_Pass2 * R_8bits2;
	s2 = R_16bits;
	end
else	begin
	R_Pass2 = R_Pass1;
	R_8bits2 = b;
	R_16bits = R_Pass2 * R_8bits2;
	s2 = R_16bits;
	end


endmodule




module Assignment_jufeng;

reg [7:0] a, b;
wire [7:0] s1;
wire [15:0] s2;
reg rst, clk;

Assignment2 A1(.a(a), .b(b), .clk(clk), .rst(rst), .s1(s1), .s2(s2));

initial
	begin
	//a = 5;
	//b = 7;
	clk = 0;
	rst = 0;
	#10 rst = 1;
	#5 a = 5;
	   b = 7;
	#1000 $stop;
	end


always #5 clk = ~clk;

endmodule











