
module mux(input s,a,b,output out
);


assign out =((~s)&(a))|((s)&(b));
endmodule
