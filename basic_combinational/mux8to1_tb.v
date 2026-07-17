module mux8to1;
reg d0,d1,d2,d3,d4,d5,d6,d7;
reg s2,s1,s0;
wire y;
mux_8to1 mux(
.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.s2(s2),.s1(s1),.s0(s0),.y(y));
initial begin 
d0=0;d1=1;d2=0;d3=1;
d4=0;d5=1;d6=0;d7=1;
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
$monitor("time=%0t d0=%b,d1=%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b,s2=%b,s1=%b,s0=%b,y=%b",$time,d0,d1,d2,d3,d4,d5,d6,d7,s2,s1,s0,y);
#80 $finish;
end 
endmodule

