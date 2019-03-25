module bit16(
input shift_rot,
input [4:0] r,
input [31:0]x,
output [31:0] y
    );
 
mux	u1	(	r[4]	,	x	[	0	]	,	x	[	16	]	,	y	[	0	]	)	;		
mux	u2	(	r[4]	,	x	[	1	]	,	x	[	17	]	,	y	[	1	]	)	;		
mux	u3	(	r[4]	,	x	[	2	]	,	x	[	18	]	,	y	[	2	]	)	;		
mux	u4	(	r[4]	,	x	[	3	]	,	x	[	19	]	,	y	[	3	]	)	;		
mux	u5	(	r[4]	,	x	[	4	]	,	x	[	20	]	,	y	[	4	]	)	;		
mux	u6	(	r[4]	,	x	[	5	]	,	x	[	21	]	,	y	[	5	]	)	;		
mux	u7	(	r[4]	,	x	[	6	]	,	x	[	22	]	,	y	[	6	]	)	;		
mux	u8	(	r[4]	,	x	[	7	]	,	x	[	23	]	,	y	[	7	]	)	;		
mux	u9	(	r[4]	,	x	[	8	]	,	x	[	24	]	,	y	[	8	]	)	;		
mux	u10	(	r[4]	,	x	[	9	]	,	x	[	25	]	,	y	[	9	]	)	;		
mux	u11	(	r[4]	,	x	[	10	]	,	x	[	26	]	,	y	[	10	]	)	;		
mux	u12	(	r[4]	,	x	[	11	]	,	x	[	27	]	,	y	[	11	]	)	;		
mux	u13	(	r[4]	,	x	[	12	]	,	x	[	28	]	,	y	[	12	]	)	;		
mux	u14	(	r[4]	,	x	[	13	]	,	x	[	29	]	,	y	[	13	]	)	;		
mux	u15	(	r[4]	,	x	[	14	]	,	x	[	30	]	,	y	[	14	]	)	;		
mux	u16	(	r[4]	,	x	[	15	]	,	x	[	31	]	,	y	[	15	]	)	;		
mux	u17	(	r[4]	,	x	[	16	]	,(1'b0&(~shift_rot)|x[0]&shift_rot)	,	y	[	16	]	)	;		
mux	u18	(	r[4]	,	x	[	17	]	,(1'b0&(~shift_rot)|x[1]&shift_rot)	,	y	[	17	]	)	;		
mux	u19	(	r[4]	,	x	[	18	]	,(1'b0&(~shift_rot)|x[2]&shift_rot)	,	y	[	18	]	)	;		
mux	u20	(	r[4]	,	x	[	19	]	,(1'b0&(~shift_rot)|x[3]&shift_rot)     ,	y	[	19	]	)	;		
mux	u21	(	r[4]	,	x	[	20	]	,(1'b0&(~shift_rot)|x[4]&shift_rot)	,	y	[	20	]	)	;		
mux	u22	(	r[4]	,	x	[	21	]	,(1'b0&(~shift_rot)|x[5]&shift_rot)	,	y	[	21	]	)	;		
mux	u23	(	r[4]	,	x	[	22	]	,(1'b0&(~shift_rot)|x[6]&shift_rot)	,	y	[	22	]	)	;		
mux	u24	(	r[4]	,	x	[	23	]	,(1'b0&(~shift_rot)|x[7]&shift_rot)	,	y	[	23	]	)	;		
mux	u25	(	r[4]	,	x	[	24	]	,(1'b0&(~shift_rot)|x[8]&shift_rot)	,	y	[	24	]	)	;		
mux	u26	(	r[4]	,	x	[	25	]	,(1'b0&(~shift_rot)|x[9]&shift_rot)	,	y	[	25	]	)	;		
mux	u27	(	r[4]	,	x	[	26	]	,(1'b0&(~shift_rot)|x[10]&shift_rot)	,	y	[	26	]	)	;		
mux	u28	(	r[4]	,	x	[	27	]	,(1'b0&(~shift_rot)|x[11]&shift_rot)	,	y	[	27	]	)	;		
mux	u29	(	r[4]	,	x	[	28	]	,(1'b0&(~shift_rot)|x[12]&shift_rot)    ,	y	[	28	]	)	;		
mux	u30	(	r[4]	,	x	[	29	]	,(1'b0&(~shift_rot)|x[13]&shift_rot)	,	y	[	29	]	)	;		
mux	u31	(	r[4]	,	x	[	30	]	,(1'b0&(~shift_rot)|x[14]&shift_rot)	,	y	[	30	]	)	;		
mux	u32	(	r[4]	,	x	[	31	]	,(1'b0&(~shift_rot)|x[15]&shift_rot)	,	y	[	31	]	)	;		

endmodule
