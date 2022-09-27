
module design2(
   input [7:0] a,
   input [7:0] b, 
   input clk,
   input reset,
   output[7:0] s1,
   output[15:0] s2
);

wire [7:0] din1;
wire [7:0] din2;                  //variable
wire [15:0] din3;
reg [5:0] c;                     //couter
reg [7:0] r1;
reg [7:0] r2;
reg [7:0] r3;
reg [7:0] r4;
reg [7:0] r5;        // 8-bit reg
reg [15:0] r6;    // 16-bit reg

assign s1 = r5;
assign s2 = r6;
assign din1 = r1 + c;
assign din2 = din1 + r5;
assign din3 = r2 * r3;
always@(posedge clk)
  if ( reset==0 )
    c<=0;
  else
    c<=c-1;

always@(posedge clk)
  if ( reset==0 )
    begin
    r1<=0;
    r2<=0;
    r3<=0;
    r4<=0;
    r5<=0;
    r6<=0;
    end
  else
    begin
    r1<=a;
    r2<=b;
    r3<=din1;
    r4<=din2;
    r5<=r4;
    r6<=din3;
    end
endmodule

 



module A1;

reg [7:0] a, b;
wire [7:0] s1;
wire [15:0] s2;
reg rst, clk;

design2 d1(.a(a), .b(b), .clk(clk), .reset(rst), .s1(s1), .s2(s2) );

initial
  begin
 a = 5;
 b = 7;
 clk = 0;
 rst = 0;
 #1000 $stop;
  end


always #5 clk = ~clk;
always #10 rst=1;

endmodule