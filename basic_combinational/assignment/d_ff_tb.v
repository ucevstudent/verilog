module d_ff_tb;
reg clk,rst,d;
wire q;
dff D1(
.clk(clk),
.rst(rst),
.d(d),
.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
rst=0;d=1;#10;
rst=1;d=0;#10;
rst=1;d=1;#10;
end
initial begin 
$monitor("time=%0t clk=%b,rst=%b,d=%b,q=%b",$time,clk,rst,d,q);
#30 $finish;
end 
endmodule 
 
