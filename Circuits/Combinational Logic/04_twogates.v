//
//同或运算
module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    assign out = (in1 ~^ in2) ^ in3;  // 此处用^符号，输出波形正确，跟02_nor.v里矛盾。

endmodule