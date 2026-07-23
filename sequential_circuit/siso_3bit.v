module siso_3bit(
input clk,rst,sin,
output sout);
reg q0,q1,q2;
always@(posedge clk or posedge rst) begin
if(rst) begin
q0<=1'b0;
q1<=1'b0;
q2<=1'b0;
end
else begin
q2<=q1;
q1<=q0;
q0<=sin;
end
end
assign sout=q2;
endmodule

