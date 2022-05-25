/*
 See mt2015_q4a（本文件夹中09）and mt2015_q4b（本文件夹中10）for the submodules used here. 
 The top-level design consists of two instantiations each of subcircuits A and B, as shown below.
 电路图略
*/
//用09和10题中的模块实现电路。

module top_module (input x, input y, output z);
    
    wire za1, zb1, za2, zb2;
    
    A A1 (.x(x), .y(y), .z(za1));
    B B1 (.x(x), .y(y), .z(zb1));
    A A2 (.x(x), .y(y), .z(za2));
    B B2 (.x(x), .y(y), .z(zb2));
    
    assign z = (za1 | zb1) ^ (za2 & zb2);

endmodule

//子模块A
module A ( input x, input y, output z );
    
    assign z = (x^y) & x;
    
endmodule

//子模块B
module B ( input x, input y, output z );
    
    assign z = x ~^ y;

endmodule