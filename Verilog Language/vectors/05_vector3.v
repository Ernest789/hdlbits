/*
  Given several input vectors, concatenate them together then split them up into several
output vectors. There are six 5-bit input vectors: a, b, c, d, e, and f, for a total of
30 bits of input. There are four 8-bit output vectors: w, x, y, and z, for 32 bits of output. 
The output should be a concatenation of the input vectors followed by two 1 bits:
_____________________________
| a | b | c | d | e | f | 11 |

               |
               V
_____________________________    
|  w   |  x   |  y   |   z   |
*/
//问题关键字：6个5bit输入，末尾加11，赋值，4个8bit输出。

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    assign { w, x, y, z } = { a, b, c, d, e, f, {2'b11} };  // 必须标明数据长度和类型，不能写成{11}；可以写成{2{1'b1}}。

endmodule