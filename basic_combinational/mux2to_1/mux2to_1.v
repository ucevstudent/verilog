module mux2to_1(input d0,d1,s,output y);
assign y=(~s&d0|s&d1);
endmodule
