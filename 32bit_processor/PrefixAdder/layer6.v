module layer6(p,c0,g,a,s,cout);
input [31:0] p,g,a;
input c0;
output [31:0] s;
output cout;

assign s[0] = p[0]^c0;
assign s[31:1] = p[31:1]^g[30:0];
adder1 u1({g[31],a[31]},c0,cout);

endmodule