module siso_2bit_tb;

reg clk, rst, sin;
wire sout;

// Instantiate the DUT
siso_2bit uut(
    .clk(clk),
    .rst(rst),
    .sin(sin),
    .sout(sout)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    sin = 0;

    #10 rst = 0;

    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;
    sin = 0; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t clk=%b rst=%b sin=%b sout=%b",
             $time, clk, rst, sin, sout);
end

endmodule
