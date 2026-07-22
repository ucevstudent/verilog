module magnitude_comp_tb;
reg a1,a2,b1,b2;
wire out1,out2,out3;
magnitude_comparator uut(
.a1(a1),.a2(a2),.b1(b1),.b2(b2),.out1(out1),.out2(out2),.out3(out3));
initial begin 
{a1,a2,b1,b2}=4'b0000;#10;
{a1,a2,b1,b2}=4'b0001;#10;
{a1,a2,b1,b2}=4'b0010;#10;
{a1,a2,b1,b2}=4'b0011;#10;
{a1,a2,b1,b2}=4'b0100;#10;
{a1,a2,b1,b2}=4'b0101;#10;
{a1,a2,b1,b2}=4'b0110;#10;
{a1,a2,b1,b2}=4'b0111;#10;
{a1,a2,b1,b2}=4'b1000;#10;
{a1,a2,b1,b2}=4'b1001;#10;
{a1,a2,b1,b2}=4'b1010;#10;
{a1,a2,b1,b2}=4'b1011;#10;
{a1,a2,b1,b2}=4'b1100;#10;
{a1,a2,b1,b2}=4'b1101;#10;
{a1,a2,b1,b2}=4'b1110;#10;
{a1,a2,b1,b2}=4'b1111;#10;
end
initial begin
$monitor("time=%0t a1=%b,a2=%b,b1=%b,b2=%b,out1=%b,out2=%b,out3=%b",$time,a1,a2,b1,b2,out1,out2,out3);
#160;
$finish;
end
endmodule
