module dff_single(d,q,clk);
input [4:0] d;
input clk;
output reg [4:0] q;
always @(posedge clk)
begin
q<=d;
end
endmodule