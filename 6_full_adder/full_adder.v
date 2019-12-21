module full_adder(
    input carry_in,
    input x,
    input y,
    output sum,
    output carry_out
);

assign {carry_out, sum} = x + y + carry_in;

endmodule