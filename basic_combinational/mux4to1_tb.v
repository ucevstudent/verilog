module mux4to1_tb;
reg d0,d1,d2,d3;
reg s1,s0;
wire y;
mux4to1 mux(
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.s1(s1),
.s0(s0),
.y(y)
);
initial begin 
d0=1;d1=0;d2=1;d3=0;
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
end
initial begin
$monitor("time=%0t d0=%b,d1=%b,d2=%b,d3=%b,s1=%b,s0=%b,y=%b",$time,d0,d1,d2,d3,s1,s0,y);
#40 $finish;
end 
endmodule
