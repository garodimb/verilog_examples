module comparator(
    input x,
    input y,
    output z
);

    wire x_, y_, p, q;
    and(x_, x);
    and(y_, y);
    and(p, x, y);
    and(q, ~x, ~y);
    or(z, p, q);
endmodule