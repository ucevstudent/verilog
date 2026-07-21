module fulladder_tb;
reg a,b,c;
wire sum,carry;
full_adder fa1(
.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
end
initial begin 
	$monitor("time=%0t a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,c,sum,carry);
	#80;
$finish;
end
endmodule
