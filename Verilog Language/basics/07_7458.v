//Create a module with the same functionality as the 7458 chip. 
//创建一个和7458芯片相同功能的模块
module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    assign p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f);
    assign p2y = (p2a & p2b) | (p2c & p2d);

endmodule