module stimuls;
    reg carry_in;
    reg x;
    reg y;
    wire sum;
    wire carry_out;

    full_adder uut(.carry_in(carry_in), .x(x), .y(y), .sum(sum), .carry_out(carry_out));

    initial begin
        carry_in = 0;
        x = 0;
        y = 0;
        
        #20 x = 1;
        #20 y = 1;
        #20 carry_in = 1;
    end

    initial begin
        $monitor("[%3d] x(%d) + y(%d) + c(%d) => S(%d), C(%d)", $time, x, y, carry_in, sum, carry_out);
    end
endmodule