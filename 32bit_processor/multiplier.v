`include "csa.v"
module multiplier(a,b,out,clk);
input clk;
input [31:0]a,b;
output [63:0]out;

wire [62:0]p[0:31];
wire [31:0]x[31:0];


AND a1(a,b[0],x[0]);
AND a2(a,b[1],x[1]);
AND a3(a,b[2],x[2]);
AND a4(a,b[3],x[3]);
AND a5(a,b[4],x[4]);
AND a6(a,b[5],x[5]);
AND a7(a,b[6],x[6]);
AND a8(a,b[7],x[7]);
AND a9(a,b[8],x[8]);
AND a10(a,b[9],x[9]);
AND a11(a,b[10],x[10]);
AND a12(a,b[11],x[11]);
AND a13(a,b[12],x[12]);
AND a14(a,b[13],x[13]);
AND a15(a,b[14],x[14]);
AND a16(a,b[15],x[15]);
AND a17(a,b[16],x[16]);
AND a18(a,b[17],x[17]);
AND a19(a,b[18],x[18]);
AND a20(a,b[19],x[19]);
AND a21(a,b[20],x[20]);
AND a22(a,b[21],x[21]);
AND a23(a,b[22],x[22]);
AND a24(a,b[23],x[23]);
AND a25(a,b[24],x[24]);
AND a26(a,b[25],x[25]);
AND a27(a,b[26],x[26]);
AND a28(a,b[27],x[27]);
AND a29(a,b[28],x[28]);
AND a30(a,b[29],x[29]);
AND a31(a,b[30],x[30]);
AND a32(a,b[31],x[31]);



assign p[0][31:0]=x[0];
assign p[1][32:1]=x[1];
assign p[2][33:2]=x[2];
assign p[3][34:3]=x[3];
assign p[4][35:4]=x[4];
assign p[5][36:5]=x[5];
assign p[6][37:6]=x[6]; 	
assign p[7][38:7]=x[7];
assign p[8][39:8]=x[8];
assign p[9][40:9]=x[9];
assign p[10][41:10]=x[10];
assign p[11][42:11]=x[11];
assign p[12][43:12]=x[12];
assign p[13][44:13]=x[13];
assign p[14][45:14]=x[14]; 	
assign p[15][46:15]=x[15];
assign p[16][47:16]=x[16];
assign p[17][48:17]=x[17];
assign p[18][49:18]=x[18];
assign p[19][50:19]=x[19];
assign p[20][51:20]=x[20];
assign p[21][52:21]=x[21];
assign p[22][53:22]=x[22]; 	
assign p[23][54:23]=x[23];
assign p[24][55:24]=x[24];
assign p[25][56:25]=x[25];
assign p[26][57:26]=x[26];
assign p[27][58:27]=x[27];
assign p[28][59:28]=x[28];
assign p[29][60:29]=x[29];
assign p[30][61:30]=x[30]; 	
assign p[31][62:31]=x[31];

assign p[0][62:32]=0;
assign p[1][62:33]=0;
assign p[2][62:34]=0;
assign p[3][62:35]=0;
assign p[4][62:36]=0;
assign p[5][62:37]=0;
assign p[6][62:38]=0;
assign p[7][62:39]=0;
assign p[8][62:40]=0;
assign p[9][62:41]=0;
assign p[10][62:42]=0;
assign p[11][62:43]=0;
assign p[12][62:44]=0;
assign p[13][62:45]=0;
assign p[14][62:46]=0;
assign p[15][62:47]=0;
assign p[16][62:48]=0;
assign p[17][62:49]=0;
assign p[18][62:50]=0;
assign p[19][62:51]=0;
assign p[20][62:52]=0;
assign p[21][62:53]=0;
assign p[22][62:54]=0;
assign p[23][62:55]=0;
assign p[24][62:56]=0;
assign p[25][62:57]=0;
assign p[26][62:58]=0;
assign p[27][62:59]=0;
assign p[28][62:60]=0;
assign p[29][62:61]=0;
assign p[30][62:62]=0;

assign p[1][0:0]=0;
assign p[2][1:0]=0;
assign p[3][2:0]=0;
assign p[4][3:0]=0;
assign p[5][4:0]=0;
assign p[6][5:0]=0;
assign p[7][6:0]=0;
assign p[8][7:0]=0;
assign p[9][8:0]=0;
assign p[10][9:0]=0;
assign p[11][10:0]=0;
assign p[12][11:0]=0;
assign p[13][12:0]=0;
assign p[14][13:0]=0;
assign p[15][14:0]=0;
assign p[16][15:0]=0;
assign p[17][16:0]=0;
assign p[18][17:0]=0;
assign p[19][18:0]=0;
assign p[20][19:0]=0;
assign p[21][20:0]=0;
assign p[22][21:0]=0;
assign p[23][22:0]=0;
assign p[24][23:0]=0;
assign p[25][24:0]=0;
assign p[26][25:0]=0;
assign p[27][26:0]=0;
assign p[28][27:0]=0;
assign p[29][28:0]=0;
assign p[30][29:0]=0;
assign p[31][30:0]=0;



//level 1

wire [63:0]p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22;

csa l11(p[0],p[1],p[2],p1,p2);
csa l12(p[3],p[4],p[5],p3,p4);
csa l13(p[6],p[7],p[8],p5,p6);
csa l14(p[9],p[10],p[11],p7,p8);
csa l15(p[12],p[13],p[14],p9,p10);
csa l16(p[15],p[16],p[17],p11,p12);
csa l17(p[18],p[19],p[20],p13,p14);
csa l18(p[21],p[22],p[23],p15,p16);
csa l19(p[24],p[25],p[26],p17,p18);
csa l110(p[27],p[28],p[29],p19,p20);

assign p21[63]=0;
assign p22[63]=0;
assign p21[62:0]=p[30];
assign p22[62:0]=p[31];



//level 2
wire [63:0]q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15;

csa  l21(p1[62:0],p2[62:0],p3[62:0],q1,q2);
csa  l22(p4[62:0],p5[62:0],p6[62:0],q3,q4);
csa  l23(p7[62:0],p8[62:0],p9[62:0],q5,q6);
csa  l24(p10[62:0],p11[62:0],p12[62:0],q7,q8);
csa  l25(p13[62:0],p14[62:0],p15[62:0],q9,q10);
csa  l26(p16[62:0],p17[62:0],p18[62:0],q11,q12);
csa  l27(p19[62:0],p20[62:0],p21[62:0],q13,q14);

assign q15=p22;

//level 3
wire [63:0]r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;

csa  l31(q1[62:0],q2[62:0],q3[62:0],r1,r2);
csa  l32(q4[62:0],q5[62:0],q6[62:0],r3,r4);
csa  l33(q7[62:0],q8[62:0],q9[62:0],r5,r6);
csa  l34(q10[62:0],q11[62:0],q12[62:0],r7,r8);
csa  l35(q13[62:0],q14[62:0],q15[62:0],r9,r10);


//level 4
wire [63:0]s1,s2,s3,s4,s5,s6,s7;

csa  l41(r1[62:0],r2[62:0],r3[62:0],s1,s2);
csa  l42(r4[62:0],r5[62:0],r6[62:0],s3,s4);
csa  l43(r7[62:0],r8[62:0],r9[62:0],s5,s6);
assign s7=r10;


//level 5
wire [63:0]t1,t2,t3,t4,t5;

csa  l51(s1[62:0],s2[62:0],s3[62:0],t1,t2);
csa  l52(s4[62:0],s5[62:0],s6[62:0],t3,t4);
assign t5=s7;


//level 6
wire [63:0]u1,u2,u3,u4;

csa  l61(t1[62:0],t2[62:0],t3[62:0],u1,u2);
assign u3=t4;
assign u4=t5;


//level 7
wire [63:0]v1,v2,v3;

csa  l71(u1[62:0],u2[62:0],u3[62:0],v1,v2);
assign v3=u4;


//level 8
wire [63:0]w1,w2;

csa  l81(v1[62:0],v2[62:0],v3[62:0],w1,w2);


//level 9 prefix adder call
wire [63:0]mult;

prefix_pipe pre(w1[31:0],w2[31:0],0,mult[31:0],cout,clk);
prefix_pipe pre1(w1[63:32],w2[63:32],cout,mult[63:32],Cout,clk);
assign out=mult;


endmodule // multiplier



module AND(a,b,c);
input [31:0]a;
input b;
output [31:0]c;

assign c[0]=a[0]&b;
assign c[1]=a[1]&b;
assign c[2]=a[2]&b;
assign c[3]=a[3]&b;
assign c[4]=a[4]&b;
assign c[5]=a[5]&b;
assign c[6]=a[6]&b;
assign c[7]=a[7]&b;
assign c[8]=a[8]&b;
assign c[9]=a[9]&b;
assign c[10]=a[10]&b;
assign c[11]=a[11]&b;
assign c[12]=a[12]&b;
assign c[13]=a[13]&b;
assign c[14]=a[14]&b;
assign c[15]=a[15]&b;
assign c[16]=a[16]&b;
assign c[17]=a[17]&b;
assign c[18]=a[18]&b;
assign c[19]=a[19]&b;
assign c[20]=a[20]&b;
assign c[21]=a[21]&b;
assign c[22]=a[22]&b;
assign c[23]=a[23]&b;
assign c[24]=a[24]&b;
assign c[25]=a[25]&b;
assign c[26]=a[26]&b;
assign c[27]=a[27]&b;
assign c[28]=a[28]&b;
assign c[29]=a[29]&b;
assign c[30]=a[30]&b;
assign c[31]=a[31]&b;


endmodule
