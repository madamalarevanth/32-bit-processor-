module PE32_tb();
reg [31:0] A;
wire [31:0] Y;

PE32 u1(A,Y);
initial
begin

A=$random;

end

initial
begin
$monitor($time,"A=%b,\nY=%b",A,Y);
end

endmodule