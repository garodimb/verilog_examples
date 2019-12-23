module Mux4_1(
    output out,
    input [1:0] control,
    input [3:0] in
);
    assign out = in[control];
endmodule