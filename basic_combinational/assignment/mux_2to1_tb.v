module mux2to1_tb;
reg d0,d1,s;
wire y;
mux_2to1 uut(
.d0(d0),.d1(d1),.s(s),.y(y));
initial begin 
d0=0;s=0;#10;
d1=1;s=1;#10;
end 
initial begin
$monitor("time=%0t d0=%b,d1=%b,s=%b,y=%b",$time,d0,d1,s,y);
#20 $finish;
end 
endmodule

