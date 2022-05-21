/*
In this exercise, you will create a circuit with two levels of hierarchy. 
Your top_module will instantiate two copies of add16 (provided), each of which 
will instantiate 16 copies of add1 (which you must write). Thus, you must write 
two modules: top_module and add1.
*/
//和上题类似，区别在于需要写一个add1模块

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c;
    add16 addL ( .a(a[15:0]), .b(b[15:0]), .cout(c), .sum(sum[15:0]) );
    add16 addH ( .a(a[31:16]), .b(b[31:16]), .cin(c), .sum(sum[31:16]) );

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign { cout, sum } = a + b + cin;  // cin无输入时默认为0。

endmodule

/*
hdl三种描述方法，不推荐从真值表和逻辑电路构建赋值关系。
*/