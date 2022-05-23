//Build a combinational circuit with 100 inputs, in[99:0].
//实现100输入组合电路。

module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor 
);

    assign out_and = & in[99:0],
        	out_or = | in[99:0],
           out_xor = ^ in[99:0];

endmodule