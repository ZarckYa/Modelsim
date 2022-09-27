module HAdder(input a, b, output sum, cin);

//wire w1, w2;

xor x1(sum, a, b);
and a1(cin, a, b);

endmodule
