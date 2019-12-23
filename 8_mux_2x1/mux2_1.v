module Mux2_1(
    output out,
    input control,
    input in0,
    input in1
);
    // if control is 0 then out should be in0
    assign out = control ? in1 : in0;
endmodule