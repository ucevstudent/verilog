module demux_1to4(
input d,s0,s1,
output y0,y1,y2,y3);
assign y0=~s1&~s0&d;
assign y1=~s1&s0&d;
assign y2=s1&~s0&d;
assign y3=s1&s0&d;
endmodule


