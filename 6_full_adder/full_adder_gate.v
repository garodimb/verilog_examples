module full_adder(
    input carry_in,
    input x,
    input y,
    output sum,
    output carry_out   
);

    wire xor1_, and1_, and2_;
    xor(xor1_, x, y);
    xor(sum, carry_in, xor1_);
    and(and1_, xor1_, carry_in);
    and(and2_, x, y);
    or(carry_out, and1_, and2_);
endmodule