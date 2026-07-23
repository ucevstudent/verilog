module decoder_3to8_tb;
reg [2:0]a;
wire [7:0]d;
decoder3to8 uut(
.a(a),.d(d));
initial begin 
a=3'b000;#10;
a=3'b001;#10;
a=3'b010;#10;
a=3'b011;#10;
a=3'b100;#10;
a=3'b101;#10;
a=3'b110;#10;
a=3'b111;#10;
end
initial begin
$monitor("time=%0t a=%b d=%b",$time,a,d);
#80;
$finish;
end
endmodule
