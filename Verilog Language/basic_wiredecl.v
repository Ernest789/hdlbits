// Create two intermediate wires to connect the AND and OR gates together. 
//创建中间变量连接与门与或门。
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and1,and2,or1;
    
    assign and1 = a & b;
    assign and2 = c & d;
    assign or1 = and1 | and2;
    assign out = or1;
    assign out_n = ~or1;

endmodule

/*
//Yes,it is possible to create a circuit with the same functionality without the intermediate wires.
//不用中间变量也能实现相同功能的电路。
module top_module (
    input a,b,c,d,
    output out,out_n );
    
    assign out = (a&b)|(c&d);
    assign out_n = ~((a&b)|(c&d));

endmodule

*/