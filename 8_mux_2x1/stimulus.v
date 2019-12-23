module stimuls;
    wire out;
    reg control, in0, in1;
    Mux2_1 mux(.out(out), .control(control), .in0(in0), .in1(in1));

    initial begin
        control = 0;
        in0 = 0;
        in1 = 0;
        #20 in0 = 1; in1 = 0;
        #20 in0 = 0; in1 = 1;
        #20 in0 = 1; in1 = 1;
        #20 control = 1;
        #20 in0 = 1; in1 = 0;
        #20 in0 = 0; in1 = 1;
        #20 in0 = 0; in1 = 0;
        #20 $finish;
    end

    initial begin
        $monitor("[%3d] control=%d, in0=%d, in1=%d, out=%d", $time, control, in0, in1, out);
    end
endmodule