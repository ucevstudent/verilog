module arithmetic_tb;
reg [3:0] a;
reg [3:0] b;
wire [7:0] add;
wire [7:0] sub;
wire [7:0] mul;
wire [7:0] div;
wire [7:0] modl;
arithmetic uut(
    .a(a),
    .b(b),
    .add(add),
    .sub(sub),
    .mul(mul),
    .div(div),
    .modl(modl)
);

initial begin
       $monitor("time=%b a=%b,b=%b,add=%b,sub=%b,mul=%b,div=%b,modl=%b",
             $time, a, b, add, sub, mul, div, modl);
    a = 10; b = 5; #10;
    $finish;
end
endmodule
