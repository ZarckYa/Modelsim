module FAdder_Test;

wire sum, cout;
reg in1, in2, cin;

FAdder f1(.a(in1), .b(in2), .cin(cin), .sum(sum), .cout(cout));

initial
begin
 in1 = 1;
 in2 = 0;
 cin = 0;
#10 in1 = 0;
    in2 = 1;
#10 in1 = 1;
#10 cin = 1;
#10 in1 = 0;
    in2 = 0;
#10;
end

endmodule
