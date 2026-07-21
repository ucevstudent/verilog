module graytobinary_tb;
reg g0,g1,g2,g3;
wire b0,b1,b2,b3;
gray_binary uut(
.g0(g0),.g1(g1),.g2(g2),.g3(g3),.b0(b0),.b1(b1),.b2(b2),.b3(b3));
initial begin 
{g0,g1,g2,g3}=4'b0000;#10;
{g0,g1,g2,g3}=4'b0001;#10;
{g0,g1,g2,g3}=4'b0011;#10;
{g0,g1,g2,g3}=4'b0010;#10;
{g0,g1,g2,g3}=4'b0110;#10;
{g0,g1,g2,g3}=4'b0111;#10;
{g0,g1,g2,g3}=4'b0101;#10;
{g0,g1,g2,g3}=4'b0100;#10;
{g0,g1,g2,g3}=4'b1100;#10;
{g0,g1,g2,g3}=4'b1101;#10;
{g0,g1,g2,g3}=4'b1111;#10;
{g0,g1,g2,g3}=4'b1110;#10;
{g0,g1,g2,g3}=4'b1010;#10;
{g0,g1,g2,g3}=4'b1011;#10;
{g0,g1,g2,g3}=4'b1001;#10;
{g0,g1,g2,g3}=4'b1000;#10;
end
initial begin
$monitor("time=%0t g0=%b,g1=%b,g2=%b,g3=%b,b0=%b,b1=%b,b2=%b,b3=%b",$time,g0,g1,g2,g3,b0,b1,b2,b3);
#160 $finish;
end
endmodule
