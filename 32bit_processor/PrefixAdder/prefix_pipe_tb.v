module prefix_pipe_tb();
reg [31:0] a,b;
reg clk,c0;
wire [31:0] y;
wire cout;

prefix_pipe u1(a,b,c0,y,cout,clk);

initial
repeat(1)
begin
clk=1'b0;
a = 32'b00000000000000001111111111111111;
b = 32'b11111111111111110000000000000000;
c0=1'b0;
#50
a = 32'b00000000000000001111111111111111;
b = 32'b11111111111111110000000000000000;
c0=1'b1;
#50
a = 32'b00000000000000000000000000000111;
b = 32'b00000000000000000000000000000011;
c0=1'b0;
#1000 $finish;
end

always #10 clk=~clk;

initial
begin
$monitor($time,"\nA = %b, B = %b, Cin = %b, clk = %b, Sum = %b, Cout = %b",a,b,c0,clk,y,cout);
end

endmodule