module mux_forloop(
input [7:0] d,
input [2:0] sel,
output reg y
);
integer i;
always@(*) begin
for(i=0;i<8;i=i+1)
begin
if(sel==i)
y=d[i];
end
end
endmodule
