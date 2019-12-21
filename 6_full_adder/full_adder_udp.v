module full_adder(
    input carry_in,
    input x,
    input y,
    output sum,
    output carry_out
    );
    sum_result result(sum, carry_in, x, y);
    sum_carry carry(carry_out, carry_in, x, y);
endmodule

primitive sum_result(
    output sum,
    input carry_in,
    input x,
    input y);
    table
    //carry_in, x, y : sum
    0   0   0   :   0;
    0   0   1   :   1;
    0   1   0   :   1;
    0   1   1   :   0;
    1   0   0   :   1;
    1   0   1   :   0;
    1   1   0   :   0;
    1   1   1   :   1;
    endtable
endprimitive

primitive sum_carry(
    output carry_out,
    input carry_in,
    input x,
    input y);
    table
    //carry_in, x, y : carry_out
    0   0   0   :   0;
    0   0   1   :   0;
    0   1   0   :   0;
    0   1   1   :   1;
    1   0   0   :   0;
    1   0   1   :   1;
    1   1   0   :   1;
    1   1   1   :   1;
    endtable
endprimitive