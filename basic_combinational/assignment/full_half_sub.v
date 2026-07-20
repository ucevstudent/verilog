//Q02 fullsubtractor using halfsubtractor
module half_sub(
input a,b,
output diff,borrow);
assign diff=a^b;
assign borrow=~a&b;
endmodule
module fullsubtractor(
input a,b,c,
output diff,borrow);
wire d1,b1,b2;
//1st half subtractor
half_sub a1(.a(a),.b(b),.diff(d1),.borrow(b1));
//2nd half subtractor
half_sub a2(.a(d1),.b(c),.diff(diff),.borrow(b2));
assign borrow=b1|b2;
endmodule

