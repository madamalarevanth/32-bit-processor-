module divider(A,B,Result);

input [31:0] A;
input [31:0] B;
output [31:0] Result;

reg [31:0] Result = 0;
reg [31:0] a1,b1;
reg [32:0] p1;
integer i;

always@ (A or B)
begin
	a1 = A;
	b1 = B;
	p1 = 0;
	for(i=0;i<32;i=i+1)
	begin
		p1 = {p1[30:0],a1[31]};
		a1[31:1] = a1[30:0];
		p1 = p1-b1;
		if(p1[31]==1'b1)
		begin
			a1[0] = 1'b0;
			p1 = p1+b1;
		end
		else
			a1[0] = 1'b1;
	end
	Result = a1;
end

endmodule