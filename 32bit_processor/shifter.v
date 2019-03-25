`include "dff_32.v"
`include "dff_single.v"
`include "dff_s.v"
`include "bit16.v"
`include "bit8.v"
`include "bit4.v"
`include "bit2.v"
`include "bit1.v"
`include "shift_select.v"


module shifter(
    input [31:0] x,
    input clk,s,shift_rot,//s=left(1)-or-right(0),shift_rot=shifth(0)-or-rot(1)
    input [4:0] r,//bits to be shifted 
    output [31:0] y
    );
    
        wire[31:0] temp1,temp2; 
        wire a1,a2,a3,a4;
	wire [31:0] a,b,c,d,e,f,g,h,i;
	wire [4:0] r1,r2,r3,r4;
	
	shift_select s1(x,s,temp1);   
	bit16 us0(shift_rot,r,temp1,a);
	dff_32 d1(a,clk,b);
	dff_single ds1(r,r1,clk);
	bit8 us1(shift_rot,r1,b,c);
	dff_32 d2(c,clk,d);
 	dff_single ds2(r1,r2,clk);
	bit4 us2(shift_rot,r2,d,e);
	dff_32 d3(e,clk,f);
	dff_single ds3(r2,r3,clk);
	bit2 us3(shift_rot,r3,f,g);
	dff_32 d4(g,clk,h);
	dff_single ds4(r3,r4,clk);
	bit1 us4(shift_rot,r4,h,temp2);

   dff_s ds11(s,a1,clk);
	dff_s ds22(a1,a2,clk);
	dff_s ds33(a2,a3,clk);
	dff_s ds44(a3,a4,clk);

        shift_select s2(temp2,a4,y);	
endmodule