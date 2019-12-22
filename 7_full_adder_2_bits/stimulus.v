module stimuls;
    reg carry_in;
    reg [1:0] x;
    reg [1:0] y;
    wire [1:0] sum;
    wire carry_out;

    full_adder_2_bits uut(
            .carry_in(carry_in),
            .x(x),
            .y(y),
            .sum(sum),
            .carry_out(carry_out)
    );

    initial begin
        carry_in = 0;
        x = 0;
        y = 0;

        #20 x = 3;
        #20 y = 3;
        #20 carry_in = 1;
        #40;
    end

    initial begin
        $monitor("[%3d] %b %02b %02b %02b %b", $time, carry_in, x, y, sum, carry_out);
    end
endmodule