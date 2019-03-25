module mem(address,in,out,read);

input [4:0] address;
input [31:0] in;
output reg [31:0] out;
input read;
reg [31:0] memory [31:0];			

initial
begin
memory[0]=32'd0;
memory[1]=32'd1;
memory[2]=32'd2;
memory[3]=32'd3;
memory[4]=32'd4;
memory[5]=32'd5;
memory[6]=32'd6;
memory[7]=32'd7;
memory[8]=32'd8;
memory[9]=32'd9;
memory[10]=32'd10;
memory[11]=32'd11;
memory[12]=32'd12;
memory[13]=32'd13;
memory[14]=32'd14;
memory[15]=32'd15;
memory[16]=32'd16;
memory[17]=32'd17;
memory[18]=32'd18;
memory[19]=32'd19;
memory[20]=32'd20;
memory[21]=32'd21;
memory[22]=32'd22;
memory[23]=32'd23;
memory[24]=32'd24;
memory[25]=32'd25;
memory[26]=32'd26;
memory[27]=32'd27;
memory[28]=32'd28;
memory[29]=32'd29;
memory[30]=32'd30;
memory[31]=32'd31;
end


always @(*)

begin

	if(read)
	begin
	out=memory[address];
	end

	else
	begin	
	memory[address]=in;
	out=memory[address];  		
	end

end


endmodule


