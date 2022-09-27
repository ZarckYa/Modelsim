module FAdder(input a, b, cin, output sum, cout);

wire si, s2, c1, c2;

HAdder h1(.a(a), .b(b), .sum(s1), .cin(c1));
HAdder h2(.a(cin), .b(s1), .sum(sum), .cin(c2));
or or1(cout, c1, c2);

endmodule
