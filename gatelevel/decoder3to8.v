module decoder3to8(
input a,b,c,
output d0,d1,d2,d3,d4,d5,d6,d7);
wire w1,w2,w3;
not(w1,a);
not(w2,b);
not(w3,c);
and(d0,w1,w2,w3);
and(d1,w1,w2,c);
and(d2,w1,b,w3);
and(d3,w1,b,c);
and(d4,a,w2,w3);
and(d5,a,w2,c);
and(d6,a,b,w3);
and(d7,a,b,c);
endmodule
