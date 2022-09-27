module arith1(sel,inv,a,b,c,y);
  input sel,inv;
  input signed [7:0] a,b,c;
  output signed [8:0] y;
  
  reg [7:0] op;
	reg [8:0] y;
  
  always @(a,b,c,sel,inv,y)
    begin
         if (sel == 1'b0)
           op = a; 
         else  
           op = b;
         y = c + $signed(op ^ {8{inv}}) + $signed({1'b0,inv}); 
    end
endmodule

