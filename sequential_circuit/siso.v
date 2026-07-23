module siso_2bit(
    input clk,
    input rst,
    input sin,
    output sout
);

reg q1, q0;

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        q1 <= 1'b0;
        q0 <= 1'b0;
    end
    else begin
        q0 <= q1;
        q1 <= sin;
    end
end

assign sout = q0;

endmodule
