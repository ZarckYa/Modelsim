/*********************
Author: Jufeng Yang.
Date: 29/10/2020.
Discribtion: This is a a high-speed encryption scheme that is implemented in 
             hardware.
**********************/

//The Sbox module.
module Sbox(input [2:0] sbi, output [2:0] sbo);

   wire w1, w2;
   assign sbo[0] = sbi[0];
   not no_1(w1, sbi[1]);      
   xor xor_1(w2, sbi[0], sbi[2]);
   xor xor_2(sbo[2], w1, w2);
   assign sbo[1] = w1;

endmodule

//The Key Adjust mudule.
module Key_Adjust(input [11:0] ki, output [11:0] ko);

   assign ko = ki ^ (~ {ki[10:0], ki[11]});

endmodule

//The Key Combine module
module Key_Combine(input [11:0] k, di, output [11:0] do);

   assign do = di ^ k;

endmodule

//The SPN module
module SPN(input [11:0] si, output [11:0] so);

   Sbox s1(.sbi(si[2:0]), .sbo(so[4:2]));
   Sbox s2(.sbi(si[5:3]), .sbo(so[7:5]));
   Sbox s3(.sbi(si[8:6]), .sbo(so[10:8]));
   Sbox s4(.sbi(si[11:9]), .sbo({so[1:0],so[11]}));

endmodule

//The final module
module Encryption(input [11:0] Din, Key, output [11:0] Dout);

   wire [11:0] KCO_1, KAO_1, SO_1, KCO_2, SO_2, KAO_2;

   Key_Combine KC_1(.di(Din), .k(Key), .do(KCO_1));
   Key_Adjust KA_1(.ki(Key), .ko(KAO_1));
   SPN S_1(.si(KCO_1), .so(SO_1));
   Key_Combine KC_2(.di(SO_1), .k(KAO_1), .do(KCO_2));
   Key_Adjust KA_2(.ki(KAO_1), .ko(KAO_2));
   SPN S_2(.si(KCO_2), .so(SO_2));
   Key_Combine KC_3(.di(SO_2), .k(KAO_2), .do(Dout));

endmodule

//This can test 
module Testbench();

   reg [11:0] Din, Key;
   wire [11:0] Dout;

   Encryption En(.Din(Din), .Key(Key), .Dout(Dout));

initial
    begin
	Din = 12'b 110101011011;
	Key = 12'b 101011001101;
	$monitor($time, " -- The binary output is : %b, The hexadecimal output is : %3h", Dout, Dout);
	$monitoron;
	#10 Din = 12'b 101010011001;
	    Key = 12'b 100100101101;
	#10 $monitoroff;
	
end

endmodule






















