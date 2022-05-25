//
//异或运算
module top_module (
    input in1,
    input in2,
    output out);
    
    assign out = ~(in1|in2);  // 只能用或非表示异或关系，使用^波形不对。

endmodule