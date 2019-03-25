module dff_s(d,q,clk);
input  d;
input clk;
output reg  q;
always @(posedge clk)
begin
q<=d;
end
endmodule