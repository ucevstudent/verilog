module demux_1to8(
input d,s2,s1,s0,
output y0,y1,y2,y3,y4,y5,y6,y7);
assign y0=~s2&~s1&~s0&d;
assign y1=~s2&~s1&s0&d;
assign y2=~s2&s1&~s0&d;
assign y3=~s2&s1&s0&d;
assign y4=s2&~s1&~s0&d;
assign y5=s2&~s1&s0&d;
assign y6=s2&s1&~s0&d;
assign y7=s2&s1&s0&d;
endmodule
