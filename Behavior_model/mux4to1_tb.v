module mux4to1_tb;
reg d0,d1,d2,d3;
reg [1:0]s;
wire y;
mux4to1 mux(
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.s(s),
.y(y)
);
initial begin 
d0=1;d1=0;d2=1;d3=0;
s=2'b00;#10;
s=2'b01;#10;
s=2'b10;#10;
s=2'b11;#10;
end
initial begin
$monitor("time=%0t d0=%b,d1=%b,d2=%b,d3=%b,s=%b,y=%b",$time,d0,d1,d2,d3,s,y);
#40 $finish;
end 
endmodule
