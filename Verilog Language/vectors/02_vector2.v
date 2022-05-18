// Build a circuit that will reverse the byte ordering of the 4-byte word.
//转换四个字节的字节顺序
module top_module( 
    input [31:0] in,
    output [31:0] out );

    assign out[31:24] = in[7:0],
           out[23:16] = in[15:8],
            out[15:8] = in[23:16],
             out[7:0] = in[31:24];

endmodule