module Delay_Test;
reg in1, in2, sel;
wire out1;
multi_gate_delay m1(.a(in1), .b(in2), .c(out1), .select(sel));

initial
begin
 in1 = 1;
 in2 = 0;
 sel = 0;
#10 sel = 1;
#10 in1 = 0;
    in2 = 1;
#10 sel = 0;
#10 in1 = 1'bx;
#10 in2 = 1'bx;
#10;
end

endmodule

