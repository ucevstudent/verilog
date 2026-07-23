module muxforloop_tb;
reg [7:0]d;
reg [2:0]sel;
wire y;
mux_forloop uut(
.d(d),.sel(sel),.y(y));
initial begin
d=8'b01011100;
sel=3'b000;#10;
sel=3'b001;#10;
sel=3'b010;#10;
sel=3'b011;#10;
sel=3'b100;#10;
sel=3'b101;#10;
sel=3'b110;#10;
sel=3'b111;#10;
end
initial begin 
$monitor("time=%0t d=%b,sel=%b,y=%b",$time,d,sel,y);
#80;
$finish;
end
endmodule
