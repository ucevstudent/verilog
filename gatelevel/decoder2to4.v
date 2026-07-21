module decoder2to4(
input a,b,
output d0,d1,d2,d3);
not(w1,a);
not(w2,b);
and(d0,w1,w2);
and(d1,w1,b);
and(d2,a,w2);
and(d3,a,b);
endmodule
