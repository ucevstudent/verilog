module mux4to2_tb;
reg d0,d1,d2,d3;
reg s0,s1;
wire y;
mux_4to1 uut(
       .d0(d0),.d1(d1),.d2(d2),.d3(d3),.s0(s0),.s1(s1),.y(y));
initial begin
d0=1;d1=1;d2=1;d3=1;
{s0,s1}=2'b00;#10;
{s0,s1}=2'b01;#10;
{s0,s1}=2'b10;#10;
{s0,s1}=2'b11;#10;
end
initial begin 
	$monitor("time=%0t d0=%b,d1=%b,d2=%b,d3=%b,s0=%b,s1=%b,y=%b",$time,d0,d1,d2,d3,s0,s1,y);
	#40 $finish;
end
endmodule
