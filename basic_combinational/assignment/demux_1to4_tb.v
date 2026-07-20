module demux1to4_tb;
reg a;
reg s0,s1;
wire d0,d1,d2,d3;
demux_1to4 uut(
.a(a),
.s0(s0),
.s1(s1),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3));
initial begin
a=1;
end
initial begin 
{s0,s1}=2'b00;#10;
{s0,s1}=2'b01;#10;
{s0,s1}=2'b10;#10;
{s0,s1}=2'b11;#10;
end
initial begin
$monitor("time=%0t a=%b,s0=%b,s1=%b,d0=%b,d1=%b,d2=%b,d3=%b",$time,a,s0,s1,d0,d1,d2,d3);
end
endmodule 
