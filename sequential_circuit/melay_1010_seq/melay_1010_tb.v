module melay1010_tb;
reg clk, rst, in;
wire detected;

melay_1010 uut(
    .clk(clk),
    .rst(rst),
    .in(in),
    .detected(detected)
);

// Clock Generation
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    rst = 1;
    in = 0;
    #10 rst = 0;

    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 0; #10;

    in = 1; #10;
    in = 0; #10;

    #20;
    $finish;
end

initial
begin
    $monitor("time=%0t clk=%b rst=%b in=%b detected=%b",
             $time, clk, rst, in, detected);
end

endmodule
