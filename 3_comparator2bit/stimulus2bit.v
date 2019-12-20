module stimulus2bit;
    reg [1:0] x;
    reg [1:0] y;
    wire z;

    comparator2bit uut(.x(x), .y(y), .z(z));
    initial begin
        x = 0;
        y = 0;

        #20 x = 1;
            y = 2;
        #20 x = 3;
            y = 3;
        #40;
    end

    initial begin
        $monitor("[%3d] x=%2d, y=%2d, z=%d", $time, x, y, z);
    end
endmodule