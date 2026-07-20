//Q4 MUX_4to1 to 2to1
module mux_2to1(
input d0,d1,s0,
output y);
assign y=~s0&d0|s0&d1;
endmodule
module mux_4to1(
input d0,d1,d2,d3,s0,s1,
output y);
wire w1,w2;
//1st 2to1 mux
mux_2to1 a1 (.d0(d0),.d1(d1),.s0(s0),.y(w1));
//2nd 2to1 mux
mux_2to1 a2 (.d0(d2),.d1(d3),.s0(s0),.y(w2));
//3rd 2to1 mux
mux_2to1 a3 (.d0(w1),.d1(w2),.s0(s1),.y(y));
endmodule

