# 32-bit-processor-
as part of our curriculum i have developed a 32 bit pipelined-processor in verilog code for Computer Architecture course 

basically the processor contains 8 functionalities 

1.Addition and Subtraction :for which i have used prefix adder following ladner-fischer logic  and a pipelined approach 

2.Multiplication:for multiplication i have used wallace tree multiplier (with carry save adders inside it)

3.Division: for division particularly i followed booths division algorithm

4.Shifter: the shifter used here is a barrel shifter and it can perform both left and right shift by controlling a shifting bit 

5.Rotator: the Rotator used here is a barrel ROtator and it can perform both left and right rotate functions  by controlling a control bit 

6.Logic Unit: the logic unit perform basic logical operations like and,or,xor and not 

7.comparator : used a priority based comparator which uses priority encoder in a approach of divide and conquer to compare which numer is bigger 

8.Memory: used register to store the data elements temporarly and access it for further applications 
