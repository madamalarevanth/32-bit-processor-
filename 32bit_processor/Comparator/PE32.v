`include "Comparator/PE4.v"
`include "Comparator/PE2.v"
module PE32(A,Y);
input [31:0] A;
output [31:0] Y;

wire [31:0] temp;
wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;
wire [3:0] ans0,ans1;
wire [1:0] ans2; 
wire [31:0] temp2;

PE4 u1(A[3:0],temp[3:0]);
assign x1 = temp[3]|temp[2]|temp[1]|temp[0];
PE4 u2(A[7:4],temp[7:4]);
assign x2 = temp[7]|temp[6]|temp[5]|temp[4];
PE4 u3(A[11:8],temp[11:8]);
assign x3 = temp[11]|temp[10]|temp[9]|temp[8];
PE4 u4(A[15:12],temp[15:12]);
assign x4 = temp[15]|temp[14]|temp[13]|temp[12];

PE4 u5({x4,x3,x2,x1},ans0);
assign temp2[3:0] = temp[3:0]&{4{ans0[0]}};
assign temp2[7:4] = temp[7:4]&{4{ans0[1]}};
assign temp2[11:8] = temp[11:8]&{4{ans0[2]}};
assign temp2[15:12] = temp[15:8]&{4{ans0[3]}};


PE4 u6(A[19:16],temp[19:16]);
assign x5 = temp[19]|temp[18]|temp[17]|temp[16];
PE4 u7(A[23:20],temp[23:20]);
assign x6 = temp[23]|temp[22]|temp[21]|temp[20];
PE4 u8(A[27:24],temp[27:24]);
assign x7 = temp[27]|temp[26]|temp[25]|temp[24];
PE4 u9(A[31:28],temp[31:28]);
assign x8 = temp[31]|temp[30]|temp[29]|temp[28];

PE4 u10({x8,x7,x6,x5},ans1);
assign temp2[19:16] = temp[19:16]&{4{ans1[0]}};
assign temp2[23:20] = temp[23:20]&{4{ans1[1]}};
assign temp2[27:24] = temp[27:24]&{4{ans1[2]}};
assign temp2[31:28] = temp[31:28]&{4{ans1[3]}};

assign x9 = temp2[15]|temp2[14]|temp2[13]|temp2[12]|temp2[11]|temp2[10]|temp2[9]|temp2[8]|temp2[7]|temp2[6]|temp2[5]|temp2[4]|temp2[3]|temp2[2]|temp2[1]|temp2[0];
assign x10 = temp2[31]|temp2[30]|temp2[29]|temp2[28]|temp2[27]|temp2[26]|temp2[25]|temp2[24]|temp2[23]|temp2[22]|temp2[21]|temp2[20]|temp2[19]|temp2[18]|temp2[17]|temp2[16];

PE2 u11({x10,x9},ans2);
assign Y[15:0] = temp2[15:0]&{16{ans2[0]}};
assign Y[31:16] = temp2[31:16]&{16{ans2[1]}};

endmodule


