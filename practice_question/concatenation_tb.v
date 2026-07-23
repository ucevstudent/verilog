module concatenation_tb;
reg [3:0]a;
reg [3:0]b;
wire [7:0]y;
concatenation uut(
.a(a),.b(b),.y(y)
);
initial begin
a=4'b1100;
b=4'b0011;#10;
end
initial begin
$monitor("time=%0t a=%b,b=%b,y=%b",$time,a,b,y);
#20;
$finish;
end
endmodule
