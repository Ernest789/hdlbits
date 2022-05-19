/*Build a combinational circuit with four inputs, in[3:0].

There are 3 outputs:

out_and: output of a 4-input AND gate.
out_or: output of a 4-input OR gate.
out_xor: output of a 4-input XOR gate.
*/
//问题关键字：四输入与、或、异或门。

module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    
    assign out_and = in[0] & in[1] & in[2] & in[3],
        	out_or = in[0] | in[1] | in[2] | in[3],
           out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];

endmodule