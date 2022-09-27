module Test_Lab1;
reg in1;
wire out1;
func a1(.a(in1),.c(out1));
initial
begin
in1=0;
#8 in1=1;
#8;
end
endmodule