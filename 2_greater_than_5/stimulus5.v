module stimulus;
    reg bit0;
    reg bit1;
    reg bit2;
    wire result;

    comparator5 uut(.bit0(bit0), .bit1(bit1), .bit2(bit2), .result(result));

    initial begin
        bit0 = 0;
        bit1 = 0;
        bit2 = 0;
        
        #20 bit0=1; //1
        #20 bit1=1; //2
            bit0=0;
        #20 bit0=1; //3
        #20 bit2=1; //4
            bit1=0;
            bit0=0;
        #20 bit0=1; //5
        #20 bit1=1; //6
            bit0=0;
        #20 bit0=1; //7
        #40;
    end

    initial begin
        $monitor("%d%d%d -> %d", bit2, bit1, bit0, result);
    end

endmodule