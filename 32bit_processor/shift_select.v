`include "mux.v"
module shift_select(X,S,Y);
input [31:0] X;
input S;
output [31:0] Y;

mux	u1	(S,	X[	0	],	X[	31	],Y[	0	]);

mux	u2	(S,	X[	1	],	X[	30	],Y[	1	]);

mux	u3	(S,	X[	2	],	X[	29	],Y[	2	]);

mux	u4	(S,	X[	3	],	X[	28	],Y[	3	]);

mux	u5	(S,	X[	4	],	X[	27	],Y[	4	]);

mux	u6	(S,	X[	5	],	X[	26	],Y[	5	]);

mux	u7	(S,	X[	6	],	X[	25	],Y[	6	]);

mux	u8	(S,	X[	7	],	X[	24	],Y[	7	]);

mux	u9	(S,	X[	8	],	X[	23	],Y[	8	]);

mux	u10	(S,	X[	9	],	X[	22	],Y[	9	]);

mux	u11	(S,	X[	10	],	X[	21	],Y[	10	]);

mux	u12	(S,	X[	11	],	X[	20	],Y[	11	]);

mux	u13	(S,	X[	12	],	X[	19	],Y[	12	]);

mux	u14	(S,	X[	13	],	X[	18	],Y[	13	]);

mux	u15	(S,	X[	14	],	X[	17	],Y[	14	]);

mux	u16	(S,	X[	15	],	X[	16	],Y[	15	]);

mux	u17	(S,	X[	16	],	X[	15	],Y[	16	]);

mux	u18	(S,	X[	17	],	X[	14	],Y[	17	]);

mux	u19	(S,	X[	18	],	X[	13	],Y[	18	]);

mux	u20	(S,	X[	19	],	X[	12	],Y[	19	]);

mux	u21	(S,	X[	20	],	X[	11	],Y[	20	]);

mux	u22	(S,	X[	21	],	X[	10	],Y[	21	]);

mux	u23	(S,	X[	22	],	X[	9	],Y[	22	]);

mux	u24	(S,	X[	23	],	X[	8	],Y[	23	]);

mux	u25	(S,	X[	24	],	X[	7	],Y[	24	]);

mux	u26	(S,	X[	25	],	X[	6	],Y[	25	]);

mux	u27	(S,	X[	26	],	X[	5	],Y[	26	]);

mux	u28	(S,	X[	27	],	X[	4	],Y[	27	]);

mux	u29	(S,	X[	28	],	X[	3	],Y[	28	]);

mux	u30	(S,	X[	29	],	X[	2	],Y[	29	]);

mux	u31	(S,	X[	30	],	X[	1	],Y[	30	]);

mux	u32	(S,	X[	31	],	X[	0	],Y[	31	]);

									
endmodule	