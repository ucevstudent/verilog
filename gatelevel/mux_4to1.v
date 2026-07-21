module mux_4to1(
input d0,d1,d2,d3,
input s0,s1,
output y);
wire w1,w2,w3,w4,w5,w6;
not(w1,s1);
not(w2,s0);
and(w3,w1,w2,d0);
and(w4,w1,s0,d1);
and(w5,s1,w2,d2);
and(w6,s1,s0,d3);
or(y,w3,w4,w5,w6);
endmodule
