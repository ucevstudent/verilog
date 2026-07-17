module mux_8to1(
input d0,d1,d2,d3,d4,d5,d6,d7,
input s2,s1,s0, 
output y);
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
not(w1,w2);
not(w2,s1);
and(w4,w1,w2,w3,d0);
and(w5,w1,w2,s0,d1);
and(w6,w1,s1,w3,d2);
and(w7,w1,s1,s0,d3);
and(w8,s2,w2,w3,d4);
and(w9,s2,w2,s0,d5);
and(w10,s2,s1,w3,d6);
and(w11,s2,s1,s0,d7);
or(y,w4,w5,w6,w7,w8,w9,w10,w11);
endmodule
