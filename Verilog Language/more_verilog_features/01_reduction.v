/*
Parity checking is often used as a simple method of detecting errors when 
transmitting data through an imperfect channel. Create a circuit that will 
compute a parity bit for a 8-bit byte (which will add a 9th bit to the byte). 
We will use "even" parity, where the parity bit is just the XOR of all 8 data bits.
*/
// 异或运算得奇偶校验码。

module top_module (
    input [7:0] in,
    output parity); 
    
    assign parity = ^ in[7:0];  // 推荐这种简化写法。当然也可以写为 parity = in[0]^in[1]^in[2]^in[3]^in[4]^in[5]^in[6]; 。

endmodule