module demux1to8(
input d,s2,s1,s0,
output y0,y1,y2,y3,y4,y5,y6,y7);
wire w1,w2,w3;
not(w1,s2);
not(w2,s1);
not(w3,s0);
and(y0,w1,w2,w3,d);
and(y1,w1,w2,s0,d);
and(y2,w1,s1,w3,d);
and(y3,w1,s1,s0,d);
and(y4,s2,w2,w3,d);
and(y5,s2,w2,s0,d);
and(y6,s2,s1,w3,d);
and(y7,s2,s1,s0,d);
endmodule
