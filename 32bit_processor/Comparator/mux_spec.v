module mux_spec(A,B,s,Max,Min);
input [31:0] A,B;
input s;
output [31:0] Max,Min;
assign Max = s?A:B;
assign Min = S?B:A;
endmodule