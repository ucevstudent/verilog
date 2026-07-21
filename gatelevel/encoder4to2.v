module encoder4to2(
input a,b,c,d,
output x,y);
or(x,a,b);
or(y,c,a);
endmodule
