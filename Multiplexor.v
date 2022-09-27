module multi_gates(input a, b, select, output c);
wire w1, w2, sel_not;
//reg a, b, c, select;
and a1(w1, a, select);
and a2(w2, b, sel_not);
not no1(sel_not, select);
or or1(c, w1, w2);
endmodule