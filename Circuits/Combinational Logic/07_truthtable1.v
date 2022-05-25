/*
_____________________________
|  Row	|  Inputs  | Outputs |
| number| x3 x2 x1 |    f    |
|   0	| 0	 0	0  |    0    |
|   1	| 0	 0	1  |    0    |
|   2	| 0	 1	0  |    1    |
|   3	| 0	 1	1  |    1    |
|   4	| 1	 0	0  |    0    |
|   5	| 1	 0	1  |    1    |
|   6	| 1	 1	0  |    0    |
|   7	| 1	 1	1  |    1    |
``````````````````````````````
*/
//从上面真值表总结逻辑电路
module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f = (x1 & x3) | (~x3 & x2);  // 逻辑化简法

endmodule

/*
也可以用选择语句实现，但是会造成资源浪费。
*/