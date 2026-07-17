module full_subractor(input a,b,c,output diff,barrow);
assign diff=a^b^c;
assign barrow=(~a&c|~a&b|b&c);
endmodule

