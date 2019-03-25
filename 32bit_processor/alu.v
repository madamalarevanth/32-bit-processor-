`include "PrefixAdder/prefix_pipe.v"
`include "multiplier.v"
`include "shifter.v"
`include "Comparator/comparator.v"
`include "mem.v"
`include "Divider/divider.v"

module alu(a,b,r,clk,opcode,out);
input [31:0] a,b;
input [4:0] r;
input [3:0] opcode;
input clk;
output reg [63:0] out;

//Adder
wire [31:0] sum;
wire sum_carry;
prefix_pipe u1(a,b,1'b0,sum,sum_carry,clk);

//Subtractor
wire [31:0] subt;
wire sub_carry;
prefix_pipe u2(a,~b,1'b1,subt,sub_carry,clk);

//Multiplier
wire [63:0] mult;
multiplier u3(a,b,mult,clk);

wire [31:0]left_s;
shifter s1(a,clk,1'b1,1'b0,r,left_s);

wire [31:0]right_s;
shifter s2(a,clk,1'b0,1'b0,r,right_s);

wire [31:0]left_rot;
shifter s3(a,clk,1'b1,1'b1,r,left_rot);

wire [31:0] right_rot;
shifter s4(a,clk,1'b0,1'b1,r,right_rot);

//Divider
wire [31:0] div_out;
divider u11(a,b,div_out);

//Comparator
wire [31:0] min,max;
comparator u8(a,b,min,max);

//Memory I/O Operations
wire [31:0] out1,out2;
mem u9(a[4:0],b,out1,1'b0);
mem u10(a[4:0],b,out2,1'b1);

//opcode definition 
parameter    add= 4'b0000;
parameter 	 sub= 4'b0001;
parameter	 mul= 4'b0010;
parameter 	 div= 4'b0011;
parameter	 ls=  4'b0100;
parameter	 rs=  4'b0101;
parameter    lr=  4'b0110;
parameter 	 rr=  4'b0111;
parameter	 cmp= 4'b1000;
parameter 	 Or=  4'b1001;
parameter	 And= 4'b1010;
parameter	 Not= 4'b1011;
parameter 	 Xor= 4'b1100;
parameter	 load=4'b1101;
parameter	 store=4'b1110;

always@(*)
begin 
   case(opcode)
	 add:out <={31'b0,{sum_carry,sum}};
	 sub:out<= {32'b0,subt};
	 mul:out<= mult;
 	 div:out<= {32'b0,div_out};
	 ls: out <=  left_s;
	 rs: out <=  right_s;
	 lr: out <=  left_rot;
 	 rr: out<=  right_rot;
	 cmp: out<= min;
 	 Or: out<=  a|b;
	 And: out<=  a&b;
	 Not: out<=  ~a;
 	 Xor:out <=  a^b;
	 load:out<= 4'b1101;
	 store:out <=  out2;
	endcase 
end
endmodule