module Delay_test;
reg in1,in2;
wire out1;
and #2 a1(out1,in1,in2);
begin
 initial 
 in1 = 1; 
 in2 = 0;
end
endmodule

