module hardreg(d,clk,clrb,q);
	
	input clk,clrb;
	input[3:0] d;
	output reg [3:0] q;
	
	always@(posedge clk or  negedge clrb)
	begin
		if(!clrb)
			q<=0;// ??clrb=0?????
		else
			q<=d;      
	end
	
endmodule

`timescale 1 ns/ 1 ps

`define clock_period 20
module hardreg_tb;

	reg clk;
	reg clrb;
	reg [3:0] din;

	wire [3:0] dout;
                     
	hardreg hardreg0 (
	din,
	clk,
	clrb,
	dout
	);
	
	initial clk =1'b1;
	always#(`clock_period/2) clk=~clk;
	initial begin                                                  
         clrb=1'b0;
			din=4'b1111;
			#100
			clrb=1'b1;
			#100
			clrb=1'b0;
			#50 
			din =4'b0001;
			#100 
			clrb =1;
			#100 
			din =4'b0010;
			#100 
			din =4'b0011;
			#100 
			din =4'b0011;			
         #100
			clrb =0;
			#35
			din =4'b0101;			
         #100
         $stop;
            
		end
		                                                    
endmodule

