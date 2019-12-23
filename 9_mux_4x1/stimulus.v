module stimuls;
    integer control_;
    integer in_; 
    wire out;
    reg [1:0] control;
    reg [3:0] in;
    Mux4_1 mux4_1(.out(out), .control(control), .in(in));

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, stimuls);
        control = 0;
        in = 0;
        for(control_ = 0; control_ < 4; control_ = control_ + 1) begin
            for(in_ = 0; in_ < 16; in_ = in_ + 1) begin
                #20 control = control_; in = in_;
            end
        end
    end

    initial begin
        $monitor("[%4d] in=%4b, control=%2b, out=%b", $time, in, control, out);
    end
endmodule