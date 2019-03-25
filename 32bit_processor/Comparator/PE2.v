module PE2(A,Y);
input [1:0] A;
output [1:0] Y;
assign Y[0] = (~A[1])&(A[0]);
assign Y[1] = A[1];
endmodule