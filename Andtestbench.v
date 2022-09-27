module testbench_and;
reg in1,in2;
wire out1;
and2 a1(.a(in1),.b(in2),.c(out1));
initial
 begin
 in1=1;in2=1;
 #10 in1=0;
 #10 in2=1;
 #10 in1=0;
 #10 ;
 end
endmodule
