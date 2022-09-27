
module testbench_and;
reg in1,in2;
wire out1;
and2 a1(.a(in1),.b(in2),.c(out1));
initial
 begin
 in1=0;in2=0;
 #5 $display("in1 =%b in2=%b and output is %b\n",in1,in2,out1);
 #10 in1=1;
 #5 $display("in1 =%b in2=%b and output is %b\n",in1,in2,out1);
 #10 in2=1;
 #5 $display("in1 =%b in2=%b and output is %b\n",in1,in2,out1);
 #10 in1=0;
 #5 $display("in1 =%b in2=%b and output is %b\n",in1,in2,out1);
 #10 ;
 
 end
endmodule