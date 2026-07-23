module decoder_2to4_tb;
reg [1:0]a;
wire [3:0]d;
decoder2to4 uut(
.a(a),.d(d));
initial begin 
a=2'b00;#10;
a=2'b01;#10;
a=2'b10;#10;
a=2'b11;#10;
end
initial begin
$monitor("time=%0t a=%b d=%b",$time,a,d);
#40;
$finish;
end
endmodule

