module demux1ot8_tb;
reg d,s2,s1,s0;
wire y0,y1,y2,y3,y4,y5,y6,y7;
demux_1to8 uut(
.d(d),.s2(s2),.s1(s1),.s0(s0),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
initial begin 
d=1;
end
initial begin
s2=0;s1=0;s0=0;#10;
s2=0;s1=0;s0=1;#10;
s2=0;s1=1;s0=0;#10;
s2=0;s1=1;s0=1;#10;
s2=1;s1=0;s0=0;#10;
s2=1;s1=0;s0=1;#10;
s2=1;s1=1;s0=0;#10;
s2=1;s1=1;s0=1;#10;
end
initial begin 
$monitor("time=%0t d=%b,s2=%b,s1=%b,s0=%b,y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b",$time,d,s2,s1,s0,y0,y1,y2,y3,y4,y5,y6,y7);
#80 $finish;
end 
endmodule
