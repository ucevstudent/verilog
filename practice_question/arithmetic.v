module arithmetic(
input[3:0]a,
input[3:0]b,
output[7:0]add,
output[7:0]sub,
output[7:0]mul,
output[7:0]div,
output[7:0]modl
);
assign add=a+b;
assign sub=a-b;
assign mul=a*b;
assign div=a/b;
assign modl=a%b;
endmodule

