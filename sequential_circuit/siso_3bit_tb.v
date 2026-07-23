module siso_3bit_tb;
reg clk,rst,sin;
wire sout;
siso_3bit uut(
.clk(clk),.rst(rst),.sin(sin),.sout(sout));
initial begin 
clk=0;
rst=1;
sin=0;
#10;
rst=0;
forever #5 clk=~clk;
end
initial begin 
sin=1;#10;
sin=1;#10;
sin=0;#10;
end
initial begin 
$monitor("time=%0t clk=%b,rst=%b,sin=%b,sout=%b",$time,clk,rst,sin,sout);
#80;
$finish;
end
endmodule
