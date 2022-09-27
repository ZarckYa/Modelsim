module testbench_or;
reg in1,in2,in3;
wire out1;
or3 a1(.a(in1),.b(in2),.c(in3),.d(out1));
initial
 begin
 in1=0;in2=0;in3=0;

 #10 in1=0;in2=0;in3=1;

 #10 in1=0;in2=1;in3=0;
 
 #10 in1=0;in2=1;in3=1;

 #10 in1=1;in2=0;in3=0;
 
 #10 in1=1;in2=0;in3=1;

 #10 in1=1;in2=1;in3=0;

 #10 in1=1;in2=1;in3=1;
 #10 ;
 
 end
endmodule
