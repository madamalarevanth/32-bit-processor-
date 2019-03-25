`include "PrefixAdder/dff_layer.v"
`include "PrefixAdder/adder1.v"
`include "PrefixAdder/adder2.v"
`include "PrefixAdder/layer1.v"
`include "PrefixAdder/layer2.v"
`include "PrefixAdder/layer3.v"
`include "PrefixAdder/layer4.v"
`include "PrefixAdder/layer5.v"
`include "PrefixAdder/layer6.v"
module prefix_pipe(a,b,c0,y,cout,clk);
input [31:0] a,b;
input c0,clk;
output [31:0] y;
output cout;

wire [31:0] g,p,q;
assign p = a^b;
assign g = a&b;
assign q = p|g;

wire [31:0] g1,q1,gp1,qp1,g2,q2,gp2,qp2,g3,q3,gp3,qp3,g4,q4,gp4,qp4,g5,q5,gp5,qp5;
wire c1,c2,c3,c4,c5;
wire [31:0] p1,p2,p3,p4;

layer1 u1(g,q,c0,g1,q1);
dff_layer d1(g1,gp1,clk);
dff_layer d2(q1,qp1,clk);
dff d3(c0,c1,clk);

layer2 u2(gp1,qp1,c1,g2,q2);
dff_layer d4(g2,gp2,clk);
dff_layer d5(q2,qp2,clk);
dff d6(c1,c2,clk);

layer3 u3(gp2,qp2,c2,g3,q3);
dff_layer d7(g3,gp3,clk);
dff_layer d8(q3,qp3,clk);
dff d9(c2,c3,clk);

layer4 u4(gp3,qp3,c3,g4,q4);
dff_layer d10(g4,gp4,clk);
dff_layer d11(q4,qp4,clk);
dff d12(c3,c4,clk);

layer5 u5(gp4,qp4,c4,g5,q5);
dff_layer d13(g5,gp5,clk);
dff_layer d14(q5,qp5,clk);
dff d15(c4,c5,clk);

dff_layer d16(p,p1,clk);
dff_layer d17(p1,p2,clk);
dff_layer d18(p2,p3,clk);
dff_layer d19(p3,p4,clk);

layer6 u6(p4,c5,gp5,qp5,y,cout);

endmodule