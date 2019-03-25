module csa(a,b,c,sum,carry);

input [62:0]a,b,c;
output [63:0]sum,carry;

assign sum[62:0]=a^b^c;
assign carry[63:1]= a&b | b&c | c&a;
assign carry[0]=0;
assign sum[63]=0;

endmodule // csa

