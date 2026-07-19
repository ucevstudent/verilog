module encoder8to3_tb;
reg a,b,c,d,e,f,g,h;
wire x,y,z;
encoder_8to3 uut(
.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.x(x),.y(y),.z(z));
initial begin 
{a,b,c,d,e,f,g,h}=8'b00000001;#10;
{a,b,c,d,e,f,g,h}=8'b00000010;#10;
{a,b,c,d,e,f,g,h}=8'b00000100;#10;
{a,b,c,d,e,f,g,h}=8'b00001000;#10;
{a,b,c,d,e,f,g,h}=8'b00010000;#10;
{a,b,c,d,e,f,g,h}=8'b00100000;#10;
{a,b,c,d,e,f,g,h}=8'b01000000;#10;
{a,b,c,d,e,f,g,h}=8'b10000000;#10;
end 
initial begin
$monitor("time=%0t a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,h=%b,x=%b,y=%b,z=%b",$time,a,b,c,d,e,f,g,h,x,y,z);
#90 $finish;
end 
endmodule
