module design2(input [7:0] a,b, input clk,rst,output reg [7:0] s1,[15:0] s2,[5:0] c);

reg [7:0] din1;                  //variable
reg [15:0] din2;
//reg [5:0] c;                     //couter
reg [7:0] r1,r2,r3,r4,r5;        // 8-bit reg
reg [15:0] r6;			 // 16-bit reg

/*always@(posedge clk)
  if ( rst==0 )
    c<=0;
  else
    c<=c-1;*/

always@(posedge clk)
  if ( rst==0 )
    begin
	r1<=0;
	r2<=0;
	r3<=0;
	r4<=0;
	r5<=0;
	r6<=0;
	s1<=0;
	s2<=0;
	c<=0;
    end
  else
    begin
	r1<=a;
	r2<=b;
	r3<=r1+c;
	s1<=a+c+s1;
	s2<=(a+c)*b;
	c<=c-1;
	//r4<=s1;
	//r5<=r4;
	//r6<=s2;
    end
endmodule

	



module A;

reg [7:0] a, b;
wire [5:0] count;
wire [7:0] s1;
wire [15:0] s2;
reg rst, clk;

design2 d1(.a(a), .b(b), .clk(clk), .rst(rst), .s1(s1), .s2(s2), .c(count) );

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



