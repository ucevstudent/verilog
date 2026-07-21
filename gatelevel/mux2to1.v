module mux2to1(
input d0,d1,s,
output y);
wire w1,w2,w3;
not(w1,s);
and(w2,d0,w1);
and(w3,d1,s);
or(y,w2,w3);
endmodule
