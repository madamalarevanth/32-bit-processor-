module adder1(il,gr,gout);
input [1:0] il;
input gr;
output gout;
assign gout = il[1]|(il[0]&gr);
endmodule