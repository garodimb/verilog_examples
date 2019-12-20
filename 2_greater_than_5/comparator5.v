/*
 * Implement and verify the verilog code for a circuit that has three inputs and one one output.
 * The three inputs represent a binary number ( from 0 to 7) and output is 1 if the value is
 * greater than 5 else it is 0.
 */

module comparator5(
    input bit0,
    input bit1,
    input bit2,
    output result
);
    assign result = ( bit1 & bit2 );
endmodule