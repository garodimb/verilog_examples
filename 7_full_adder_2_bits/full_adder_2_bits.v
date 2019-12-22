module full_adder_2_bits(
    input carry_in,
    input [1:0] x,
    input [1:0] y,
    output [1:0] sum,
    output carry_out
);
    wire carry_internal;
    assign {carry_internal, sum[0]} = x[0] + y[0] + carry_in;
    assign {carry_out, sum[1]} = x[1] + y[1] + carry_internal;
endmodule