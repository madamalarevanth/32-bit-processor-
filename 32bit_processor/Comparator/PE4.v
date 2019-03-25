module PE4(A,Y);
input [3:0] A;
output [3:0] Y;
assign Y[0] = (~A[3])&(~A[2])&(~A[1])&(A[0]);
assign Y[1] = (~A[3])&(~A[2])&(A[1]);
assign Y[2] = (~A[3])&A[2];
assign Y[3] = A[3];
endmodule