module tflipflop_tb;
reg clk,rst,t;
wire q;
t_flipflop uut(
.clk(clk),.rst(rst),.t(t),.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin       	
rst=0;t=1;#10;
rst=1;t=0;#10;
rst=1;t=1;#10;
end
initial begin 
$monitor("time=%0t clk=%b,rst=%b,t=%b,q=%b",$time,clk,rst,t,q);
#30;
$finish;
end
endmodule

