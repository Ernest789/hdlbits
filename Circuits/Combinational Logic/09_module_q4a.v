//Module A is supposed to implement the function z = (x^y) & x. Implement this module.
//实现 z = (x^y) & x 运算的模块A

//顶层模块
module top_module (input x, input y, output z);

    A A_ins (x, y, z);  // 按位置连接端口

endmodule

//子模块A
module A (x, y, z);
    
    input x, y;
    output z;
    
    assign z = (x^y) & x;
    
endmodule