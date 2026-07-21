module demux1to2(
input s,d,output y0,y1);
not(w1,s);
and(y0,w1,d);
and(y1,s,d);
endmodule
