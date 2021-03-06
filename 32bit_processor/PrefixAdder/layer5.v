module layer5(g,a,c0,go,ao);
input [31:0] g,a;
input c0;
output [31:0] go,ao;

assign ao[0] = a[0];
assign ao[1] = a[1];
assign ao[2] = a[2];
assign ao[3] = a[3];
assign ao[4] = a[4];
assign ao[5] = a[5];
assign ao[6] = a[6];
assign ao[7] = a[7];
assign ao[8] = a[8];
assign ao[9] = a[9];
assign ao[10] = a[10];
assign ao[11] = a[11];
assign ao[12] = a[12];
assign ao[13] = a[13];
assign ao[14] = a[14];
assign ao[15] = a[15];
assign ao[16] = a[16];
assign ao[17] = a[17];
assign ao[18] = a[18];
assign ao[19] = a[19];
assign ao[20] = a[20];
assign ao[21] = a[21];
assign ao[22] = a[22];
assign ao[23] = a[23];
assign ao[24] = a[24];
assign ao[25] = a[25];
assign ao[26] = a[26];
assign ao[27] = a[27];
assign ao[28] = a[28];
assign ao[29] = a[29];
assign ao[30] = a[30];
assign go[0] = g[0];
assign go[1] = g[1];
assign go[2] = g[2];
assign go[3] = g[3];
assign go[4] = g[4];
assign go[5] = g[5];
assign go[6] = g[6];
assign go[7] = g[7];
assign go[8] = g[8];
assign go[9] = g[9];
assign go[10] = g[10];
assign go[11] = g[11];
assign go[12] = g[12];
assign go[13] = g[13];
assign go[14] = g[14];
adder1 u1({g[15],a[15]},c0,go[15]);
adder1 u2({g[16],a[16]},g[0],go[16]);
adder1 u3({g[17],a[17]},g[1],go[17]);
adder1 u4({g[18],a[18]},g[2],go[18]);
adder1 u5({g[19],a[19]},g[3],go[19]);
adder1 u6({g[20],a[20]},g[4],go[20]);
adder1 u7({g[21],a[21]},g[5],go[21]);
adder1 u8({g[22],a[22]},g[6],go[22]);
adder1 u9({g[23],a[23]},g[7],go[23]);
adder1 u10({g[24],a[24]},g[8],go[24]);
adder1 u11({g[25],a[25]},g[9],go[25]);
adder1 u12({g[26],a[26]},g[10],go[26]);
adder1 u13({g[27],a[27]},g[11],go[27]);
adder1 u14({g[28],a[28]},g[12],go[28]);
adder1 u15({g[29],a[29]},g[13],go[29]);
adder1 u16({g[30],a[30]},g[14],go[30]);

adder2 u17({g[31],a[31]},{g[15],a[15]},{go[31],ao[31]});

endmodule