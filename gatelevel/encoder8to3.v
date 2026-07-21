module encoder8to3(
input a,b,c,d,e,f,g,h,
output x,y,z);
or(x,a,b,c,d);
or(y,a,b,e,f);
or(z,a,c,e,g);
endmodule
