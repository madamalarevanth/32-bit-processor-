module comp_tb();
reg [31:0] A,B;
wire [31:0] Max,Min;

comparator u1(A,B,Min,Max);
initial
begin

A=$random;
B=$random;

end

initial
begin
$monitor($time,"A=%b,\nB=%b, \nMax=%b",A,B,Max);
end

endmodule