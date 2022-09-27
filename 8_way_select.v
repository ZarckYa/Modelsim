module selector8way(input [3:0] A,B,C,D,E,F,G,H, input [2:0] sel, output [3:0] out);

wire [3:0] w1,w2,w3,w4,w5,w6;

multi_4bits m1(.a(H), .b(D), .c(w1), .sel(sel[2]));
multi_4bits m2(.a(F), .b(B), .c(w2), .sel(sel[2]));
multi_4bits m3(.a(G), .b(C), .c(w3), .sel(sel[2]));
multi_4bits m4(.a(E), .b(A), .c(w4), .sel(sel[2]));
multi_4bits m5(.a(w1), .b(w2), .c(w5), .sel(sel[1]));
multi_4bits m6(.a(w3), .b(w4), .c(w6), .sel(sel[1]));
multi_4bits m7(.a(w5), .b(w6), .c(out), .sel(sel[0]));

endmodule