`include "Comparator/PE32.v"
`include "Comparator/mux_spec.v"

module comparator(A,B,Min,Max);
input [31:0] A,B;
output [31:0] Min,Max;

wire [31:0] temp,ans0,ans1,o1;

PE32 u1(A^B,temp);
assign ans0 = temp&A;
assign ans1 = temp&B;

assign x1 = |ans0;
assign x2 = |ans1;

mux_spec u2(A,B,x1,Max,Min);

endmodule