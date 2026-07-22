module mux2to1(
input d0,d1,s,
output reg y);
always@(*)begin 
if(s)
y=d1;
else
y=d0;
end
endmodule

