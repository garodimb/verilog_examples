module comparator(
    input x,
    input y,
    output z
);

    compare c0(z, x, y);
endmodule

primitive compare(output out, input in1, input in2);
    table
    // in1 in2 :out
        0   0   :   1;
        0   1   :   0;
        1   0   :   0;
        1   1   :   1;
    endtable
endprimitive