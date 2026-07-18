module demux1to2_tb;
reg d,s;
wire y0,y1;
demux_1to2 uut(
.d(d),.s(s),.y0(y0),.y1(y1));
initial begin
    d = 1; s = 0; #10;
    d = 1; s = 1; #10;
    d = 0; s = 0; #10;
    d = 0; s = 1; #10;
end
initial begin 
$monitor("time=%0t s=%b,d=%b,y0=%b,y1=%b",$time,s,d,y0,y1);
#40 $finish;
end
endmodule
