module mux4to1(input d0,d1,d2,d3,s1,s0,output y );
assign y=(~s1&~s0&d0|~s1&s0&d1|s1&~s0&d2|s1&s0&d3);
endmodule
