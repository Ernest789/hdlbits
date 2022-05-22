//Build an XOR gate three ways, using an assign statement, a combinational always block, and a clocked always block. 
//用三种方式实现异或门：assign语句、always组合逻辑、alwys时序。

// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    assign out_assign = a ^ b;
    
    always@(*) 
        out_always_comb = out_assign;
    
    always@( posedge clk )
        out_always_ff <= out_assign;  //上升沿触发，时序电路用非阻塞赋值。

endmodule