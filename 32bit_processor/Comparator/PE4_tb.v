module PE4_tb();
reg [3:0] A;
wire [3:0] Y;

PE4 u1(A,Y);
initial
begin

A=4'b1111;

end

initial
begin
$monitor($time,"A=%b,\nY=%b",A,Y);
end

endmodule