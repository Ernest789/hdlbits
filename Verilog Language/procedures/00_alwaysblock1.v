//Build an AND gate using both an assign statement and a combinational always block. 
//分别用assign和always实现与门。

// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);

    assign out_assign = a & b;

    always@(*)  // *表明这是一个组合逻辑电路

        // out_alwaysblock = a & b;
        out_alwaysblock = out_assign;

endmodule
