module demux1to4_tb;
reg d,s1,s0;
wire y0,y1,y2,y3;
demux_1to4 uut(
.d(d),.s1(s1),.s0(s0),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin 
d=1;
end
initial begin
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
end
initial begin
$monitor("time=%0t d=%b,s1=%b,s0=%b,y0=%b,y1=%b,y2=%b,y3=%b",$time,d,s1,s0,y0,y1,y2,y3);
#40 $finish;
end 
endmodule

