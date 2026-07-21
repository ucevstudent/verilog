module melay_1010(
    input clk,
    input rst,
    input in,
    output reg detected
);

parameter A = 2'b00,
          B = 2'b01,
          C = 2'b10,
          D = 2'b11;

reg [1:0] state, next_state;
always @(posedge clk or posedge rst)
begin
    if (rst)
        state <= A;
    else
        state <= next_state;
end
always @(*)
begin
    // Default values
    next_state = state;
    detected = 1'b0;

    case (state)

        A:
        begin
            if (in)
                next_state = B;
            else
                next_state = A;
        end

        B:
        begin
            if (in)
                next_state = B;
            else
                next_state = C;
        end

        C:
        begin
            if (in)
                next_state = D;
            else
                next_state = A;
        end

        D:
        begin
            if (in)
            begin
                next_state = B;
                detected = 1'b0;
            end
            else
            begin
                next_state = C;   // Overlapping
                detected = 1'b1;  // 1010 detected
            end
        end

        default:
        begin
            next_state = A;
            detected = 1'b0;
        end

    endcase
end

endmodule
