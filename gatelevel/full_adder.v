module full_adder(
input a,b,c,
output sum,carry);
wire w1,w2,w3,w4;
xor(w1,a,b);
xor(sum,w1,c);
and(w2,a,b);
and(w3,b,c);
and(w4,a,c);
or(carry,w2,w3,w4);
endmodule
