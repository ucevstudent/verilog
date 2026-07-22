
module demux1to4_tb;
reg d;
reg [1:0]sel;
wire y0,y1,y2,y3;
demux1to4 uut(
.d(d),.sel(sel),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin 
d=1;
end
initial begin
sel=2'b00;#10;
sel=2'b01;#10;
sel=2'b10;#10;
sel=2'b11;#10;
end
initial begin
$monitor("time=%0t d=%b,sel=%b,y0=%b,y1=%b,y2=%b,y3=%b",$time,d,sel,y0,y1,y2,y3);
#40 $finish;
end 
endmodule
