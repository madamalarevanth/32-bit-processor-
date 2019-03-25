module dff_32(D,clk,Q);
input [31:0] D; 
input clk; 
output reg [31:0] Q;
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule 