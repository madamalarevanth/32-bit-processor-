`include "PrefixAdder/dff.v"
module dff_layer(d,q,clk);
input [31:0] d;
input clk;
output [31:0] q;

dff	u1	(	d[0	]	,	q[0	]	,	clk	);
dff	u2	(	d[1	]	,	q[1	]	,	clk	);
dff	u3	(	d[2	]	,	q[2	]	,	clk	);
dff	u4	(	d[3	]	,	q[3	]	,	clk	);
dff	u5	(	d[4	]	,	q[4	]	,	clk	);
dff	u6	(	d[5	]	,	q[5	]	,	clk	);
dff	u7	(	d[6	]	,	q[6	]	,	clk	);
dff	u8	(	d[7	]	,	q[7	]	,	clk	);
dff	u9	(	d[8	]	,	q[8	]	,	clk	);
dff	u10	(	d[9	]	,	q[9	]	,	clk	);
dff	u11	(	d[10	]	,	q[10	]	,	clk	);
dff	u12	(	d[11	]	,	q[11	]	,	clk	);
dff	u13	(	d[12	]	,	q[12	]	,	clk	);
dff	u14	(	d[13	]	,	q[13	]	,	clk	);
dff	u15	(	d[14	]	,	q[14	]	,	clk	);
dff	u16	(	d[15	]	,	q[15	]	,	clk	);
dff	u17	(	d[16	]	,	q[16	]	,	clk	);
dff	u18	(	d[17	]	,	q[17	]	,	clk	);
dff	u19	(	d[18	]	,	q[18	]	,	clk	);
dff	u20	(	d[19	]	,	q[19	]	,	clk	);
dff	u21	(	d[20	]	,	q[20	]	,	clk	);
dff	u22	(	d[21	]	,	q[21	]	,	clk	);
dff	u23	(	d[22	]	,	q[22	]	,	clk	);
dff	u24	(	d[23	]	,	q[23	]	,	clk	);
dff	u25	(	d[24	]	,	q[24	]	,	clk	);
dff	u26	(	d[25	]	,	q[25	]	,	clk	);
dff	u27	(	d[26	]	,	q[26	]	,	clk	);
dff	u28	(	d[27	]	,	q[27	]	,	clk	);
dff	u29	(	d[28	]	,	q[28	]	,	clk	);
dff	u30	(	d[29	]	,	q[29	]	,	clk	);
dff	u31	(	d[30	]	,	q[30	]	,	clk	);
dff	u32	(	d[31	]	,	q[31	]	,	clk	);

endmodule