/*
You are provided with a BCD one-digit adder named bcd_fadd that adds two BCD digits 
and carry-in, and produces a sum and carry-out.

module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );

Instantiate 100 copies of bcd_fadd to create a 100-digit BCD ripple-carry adder. Your
adder should add two 100-digit BCD numbers (packed into 400-bit vectors) and a carry-in
to produce a 100-digit sum and carry out.
*/
//问题关键词：两位bcd码全加器构成100位bcd码全加器。

//模块的多次例化需要generate语句。
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] c;
    
    bcd_fadd add0(a[3:0], b[3:0], cin, c[0], sum[3:0]);
    
    genvar i;
    generate  //该语句用于实现模块多次例化
        for (i=1;i<100;i++) begin:NameOfThisLoop
            bcd_fadd addi( a[4*i+3 :4*i], b[4*i+3 :4*i], c[i-1], c[i], sum[4*i+3 :4*i] );
        end
    endgenerate
   
    assign cout = c[99];  // wire类型不可过程赋值，只能用连续赋值，过程赋值需要在always或initial中进行。

endmodule

/*
由于不知道generate语句，我用always-for做了各种尝试，总是报错，浪费了很长时间，最后查了一下才知道正确解法。
generate是常用语句之一，需要掌握。
*/
