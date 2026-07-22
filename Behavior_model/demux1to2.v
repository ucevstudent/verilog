module demux1to2(
input d,
input sel,
output reg y0,
output reg y1
);
always@(*) begin 
if(sel)
y0=d;
else
y1=d;
end
endmodule
