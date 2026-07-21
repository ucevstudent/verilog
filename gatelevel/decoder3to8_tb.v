module decoder3to8_tb;
reg a,b,c;
wire d0,d1,d2,d3,d4,d5,d6,d7;
decoder3to8 uut(
.a(a),
.b(b),
.c(c),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7)
);
initial begin
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
end
initial begin 
$monitor("time=%0t a=%b,b=%b,c=%b,d0=%b,d1=%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b",$time,a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
#80 $finish;
end 
endmodule
