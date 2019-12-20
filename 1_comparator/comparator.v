`timescale 1ns / 1ps
module comparator(
    input x,
    input y,
    output z
    );
 
assign z = (~x & ~y) | (x & y);
 
endmodule