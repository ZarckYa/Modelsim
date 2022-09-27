
module quzi61;
reg signed [3:0] a, b; // signed 4-bit inputs
reg   ci;               // unsigned 1-bit input
wire signed [3:0] sum; // signed 4-bit output
wire co;                // unsigned 1-bit output
         
assign {co,sum} = a + b + $signed({1'b0,ci}); 

initial
  begin
a  = 4'b0100;
b  = 4'b0011;
ci = 1'b1;
	$monitor("%b",{co,sum});
  end
endmodule
