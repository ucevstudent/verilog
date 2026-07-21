module demux1to4(
input d,s1,s0,output y0,y1,y2,y3);
wire w1,w2;
not(w1,s1);
not(w2,s0);
and(y0,w1,w2,d);
and(y1,w1,s0,d);
and(y2,s1,w2,d);
and(y3,s1,s0,d);
endmodule

