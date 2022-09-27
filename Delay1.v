module multi_gate_delay(input a, b, select, output c);
wire w1, w2, sel_not;
//reg a, b, c, select;
and #2 a1(w1, a, b);
and #2 a2(w2, b, sel_not);
not #1 no1(sel_not, select);
or #2 or1(c, w1, w2);
endmodule
