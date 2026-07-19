module encoder_4to2(
input a,b,c,d,
output x,y
);
assign x=b|a;
assign y=c|a;
endmodule

