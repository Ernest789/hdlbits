//Build the adder-subtractor.
//实现加减法器。
/*
算法：
二进制数的减法通过补码实现，通过进位端控制加减。
二进制码与全0码按位异或得原码，与全1码异或得反码，反码加1得补码。
*/

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire c;  // carry-in.

    add16 addL ( .a(a[15:0]), .b( b[15:0] ^ {16{sub}} ), .sum(sum[15:0]), .cin(sub), .cout(c) );
    add16 addH ( .a(a[31:16]), .b( b[31:16] ^ {16{sub}} ), .sum(sum[31:16]), .cin(c) );

endmodule