module bits_Adder_Test;

reg [3:0] in1, in2;
reg cin;
wire [3:0] sum;
wire cout;

bits_adder b1(.a(in1), .b(in2), .cin(cin), .cout(cout), .sum(sum));

initial
begin
 in1 = 4'b0000;
 in2 = 4'b0001;
 cin = 0;
#10 in1 = 4'b0010;
#10 in2 = 4'b0011;
#10 in1 = 4'b0100;
#10 in2 = 4'b1111;
#10;
end

endmodule
