module alu_tb();
reg [31:0] a,b;
reg [4:0] r;
reg clk;
reg [3:0] opcode;
wire [63:0] out;

alu t2(a,b,r,clk,opcode,out);

initial
begin
	clk=1'b0;
    a=32'd30;
	b=32'd20;
	r=5'd0;
	opcode=4'd0;
	
	#100
	a=32'd30;
	b=32'd30;
	r=5'd0;
	opcode=4'd1;

	#100
	a=32'd30;
	b=32'd30;
	r=5'd0;
	opcode=4'd3;
	#100
	a=32'd34;
	b=32'd0;
	r=5'd4;
	opcode=4'd4;
#1000 $finish;
end
always#10 clk=~clk; 	

initial
begin
$monitor($time,"  a=%d,  b=%d,  r=%d,  opcode=%d,   out=%d",a,b,r,opcode,out);
end

endmodule