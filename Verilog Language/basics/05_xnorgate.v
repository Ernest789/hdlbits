//Create a module that implements an XNOR gate.
//同或门
module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = a~^b;  //写成~a^b a~^b a^~b 都可以实现同或运算

endmodule