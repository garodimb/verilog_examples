module comparator2bit(
    input [1:0] x,
    input [1:0] y,
    output z
);

    assign z = ( (x[0] & y[0]) & (x[1] & y[1]) ) |
               ( (~x[0] & ~y[0]) & (x[1] & y[1]) ) |
               ( (x[0] & y[0]) & (~x[1] & ~y[1]) ) |
               ( (~x[0] & ~y[0]) & (~x[1] & ~y[1]));
endmodule