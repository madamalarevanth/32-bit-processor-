module bit8(
input shift_rot,
input [4:0] r,
input [31:0]x,
output [31:0] y
    );

mux	u1	(	r[3]	,	x	[	0	]	,	x	[	8	]	,	y	[	0	]	)	;		
mux	u2	(	r[3]	,	x	[	1	]	,	x	[	9	]	,	y	[	1	]	)	;		
mux	u3	(	r[3]	,	x	[	2	]	,	x	[	10	]	,	y	[	2	]	)	;		
mux	u4	(	r[3]	,	x	[	3	]	,	x	[	11	]	,	y	[	3	]	)	;		
mux	u5	(	r[3]	,	x	[	4	]	,	x	[	12	]	,	y	[	4	]	)	;		
mux	u6	(	r[3]	,	x	[	5	]	,	x	[	13	]	,	y	[	5	]	)	;		
mux	u7	(	r[3]	,	x	[	6	]	,	x	[	14	]	,	y	[	6	]	)	;		
mux	u8	(	r[3]	,	x	[	7	]	,	x	[	15	]	,	y	[	7	]	)	;		
mux	u9	(	r[3]	,	x	[	8	]	,	x	[	16	]	,	y	[	8	]	)	;		
mux	u10	(	r[3]	,	x	[	9	]	,	x	[	17	]	,	y	[	9	]	)	;		
mux	u11	(	r[3]	,	x	[	10	]	,	x	[	18	]	,	y	[	10	]	)	;		
mux	u12	(	r[3]	,	x	[	11	]	,	x	[	19	]	,	y	[	11	]	)	;		
mux	u13	(	r[3]	,	x	[	12	]	,	x	[	20	]	,	y	[	12	]	)	;		
mux	u14	(	r[3]	,	x	[	13	]	,	x	[	21	]	,	y	[	13	]	)	;		
mux	u15	(	r[3]	,	x	[	14	]	,	x	[	22	]	,	y	[	14	]	)	;		
mux	u16	(	r[3]	,	x	[	15	]	,	x	[	23	]	,	y	[	15	]	)	;		
mux	u17	(	r[3]	,	x	[	16	]	,	x	[	24	]	,	y	[	16	]	)	;		
mux	u18	(	r[3]	,	x	[	17	]	,	x	[	25	]	,	y	[	17	]	)	;		
mux	u19	(	r[3]	,	x	[	18	]	,	x	[	26	]	,	y	[	18	]	)	;		
mux	u20	(	r[3]	,	x	[	19	]	,	x	[	27	]	,	y	[	19	]	)	;		
mux	u21	(	r[3]	,	x	[	20	]	,	x	[	28	]	,	y	[	20	]	)	;		
mux	u22	(	r[3]	,	x	[	21	]	,	x	[	29	]	,	y	[	21	]	)	;		
mux	u23	(	r[3]	,	x	[	22	]	,	x	[	30	]	,	y	[	22	]	)	;		
mux	u24	(	r[3]	,	x	[	23	]	,	x	[	31	]	,	y	[	23	]	)	;		
mux	u25	(	r[3]	,	x	[	24	]	,(1'b0&(~shift_rot)|x[0]&shift_rot)	,	y	[	24	]	)	;		
mux	u26	(	r[3]	,	x	[	25	]	,(1'b0&(~shift_rot)|x[1]&shift_rot)	,	y	[	25	]	)	;		
mux	u27	(	r[3]	,	x	[	26	]	,(1'b0&(~shift_rot)|x[2]&shift_rot)	,	y	[	26	]	)	;		
mux	u28	(	r[3]	,	x	[	27	]	,(1'b0&(~shift_rot)|x[3]&shift_rot)	,	y	[	27	]	)	;		
mux	u29	(	r[3]	,	x	[	28	]	,(1'b0&(~shift_rot)|x[4]&shift_rot)	,	y	[	28	]	)	;		
mux	u30	(	r[3]	,	x	[	29	]	,(1'b0&(~shift_rot)|x[5]&shift_rot)	,	y	[	29	]	)	;		
mux	u31	(	r[3]	,	x	[	30	]	,(1'b0&(~shift_rot)|x[6]&shift_rot)	,	y	[	30	]	)	;		
mux	u32	(	r[3]	,	x	[	31	]	,(1'b0&(~shift_rot)|x[7]&shift_rot)	,	y	[	31	]	)	;		

endmodule
