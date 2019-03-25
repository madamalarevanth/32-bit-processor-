module divider_tb();
reg [31:0] A,B;
wire [31:0] Result;

divider u1(A,B,Result);
initial
begin
A = 32'b00000000000000000000000000001001;
B = 32'b00000000000000000000000000000100;
end

initial
begin
$monitor($time,"\nA = %b,\nB = %b, \nResult = %b",A,B,Result);
end

endmodule