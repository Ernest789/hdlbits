/*
Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit 
comparisons in the 25-bit output vector. The output should be 1 if the two bits 
being compared are equal.
*/
//问题关键词：扩展后比较是否相等，相等则输出1.
//该算法用assign实现时，用异或计算即可。

module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a, b, c, d, e} }; 

endmodule

/*判断语句非常繁琐
always@(*) begin
    if(a===b) begin
        out[23] = 1;
        out[19] = 1;
    end
    else begin
        out[23] = 0;
        out[19] = 0;
    end
    //其他位的比较与上面过程类似
end
*/