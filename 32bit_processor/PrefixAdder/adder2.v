module adder2(il,ir,o);
input [1:0] il,ir;
output [1:0] o;
assign o[1] = il[1]|(il[0]&ir[1]);
assign o[0] = il[0]&ir[0];
endmodule