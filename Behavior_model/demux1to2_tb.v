module demux1to2_tb;
reg d,sel;
wire y0,y1;
demux1to2 uut(
.d(d),.sel(sel),.y0(y0),.y1(y1));
initial begin
    d = 1; sel = 0; #10;
    d = 1; sel = 1; #10;
    d = 0; sel = 0; #10;
    d = 0; sel = 1; #10;
end
initial begin 
$monitor("time=%0t sel=%b,d=%b,y0=%b,y1=%b",$time,sel,d,y0,y1);
#40 $finish;
end
endmodule
