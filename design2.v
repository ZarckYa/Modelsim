module design2(input [7:0] a,b, input clk,rst, output reg [7:0] s1,s2);

reg [7:0] din1;                  //variable
reg [5:0] c;                     //couter
reg [7:0] r1,r2,r3,r4,r5;        //five 8-bit reg
reg [15:0] r6;			 //one 16-bit reg


always @(posedge clk)                 
	if ( rst==0 )
	  begin
	  c<=6'b000000;
	  r1<=0;
	  end
	else
	  begin
	   c<=c-1;
	   r1<=a;
	   din1<=c+r1;
	  end
          
 
always @(posedge clk)
 // begin
	if ( rst==0 )
	  begin
	  s1<=0;
	  r2<=0;
	  r3<=0;
	  end
	 else
	   begin
	     s1<=s1+din1;
	     r2<=s1;
	     r3<=r2;
           end
 // end
	  
always @(posedge clk)
 // begin 
	if ( rst==0 )
	  begin
	  r4<=0;
	  r5<=0;
	  end
	else
	  begin
	  r4<=din1;
	  r5<=b;
	  end
 // end

always @(posedge clk)
  begin
	if ( rst==0 )
	  r6<=0;
	else
	 // begin
	  r6<=r4*r5;
	  s2=r6;
  	 // end
  end

endmodule

module test_d2;

reg [7:0] a, b;
wire [7:0] s1;
wire [15:0] s2;
reg rst, clk;

design2 d1(.a(a), .b(b), .clk(clk), .rst(rst), .s1(s1), .s2(s2));

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



