/*This problem is similar to module. You are given a module named mod_a that
has 2 outputs and 4 inputs, in some order.
*/
//按名称连接端口

module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a instance1( .in1(a), .in2(b),.in3(c), .in4(d), .out1(out1), .out2(out2) );

endmodule