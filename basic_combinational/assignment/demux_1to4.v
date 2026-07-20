module demux_1to4(
input a,s0,s1,
output d0,d1,d2,d3
);
assign d0=a&~s0&~s1;
assign d1=a&~s0&s1;
assign d2=a&s0&~s1;
assign d3=a&s0&s1;
endmodule
