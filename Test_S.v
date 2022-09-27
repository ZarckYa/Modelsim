module test_signed;
reg signed [4:0] a,b;
wire [5:0] d;

assign d=a+b;

initial
  begin
	
	#10;
	a=-3;
	b=2;
	$monitor ("D is %d",d);
  end 
endmodule

