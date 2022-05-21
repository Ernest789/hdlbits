/*
In this exercise, you are provided with the same module add16 as the previous exercise, 
which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. You 
must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 
multiplexer.
*/
//问题关键词：两个16位全加器，构成32位超前进位加法器。

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    wire [15:0] sumH0, sumH1;
    
    add16 addL (.a(a[15:0]), .b(b[15:0]), .cout(sel), .sum(sum[15:0]) );
    add16 addH0 (.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sumH0) );
    add16 addH1 (.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sumH1) );
    
    assign sum[31:16] = (sel) ? sumH1 : sumH0;

endmodule

