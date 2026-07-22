module mux8to1_tb;
reg d0,d1,d2,d3,d4,d5,d6,d7;
reg [2:0]s;
wire y;
mux8to1 uut(
.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.s(s),.y(y));
initial begin 
d0=0;d1=1;d2=0;d3=1;
d4=0;d5=1;d6=0;d7=1;
s=3'b000;#10;
s=3'b001;#10;
s=3'b010;#10;
s=3'b011;#10;
s=3'b100;#10;
s=3'b101;#10;
s=3'b110;#10;
s=3'b111;#10;
end
initial begin
$monitor("time=%0t d0=%b,d1=%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b,s=%b,,y=%b",$time,d0,d1,d2,d3,d4,d5,d6,d7,s,y);
#80 $finish;
end 
endmodule
