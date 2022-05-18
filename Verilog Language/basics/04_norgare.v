//Create a module that implements a NOR gate.
//异或门
module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = ~(a|b);  //异或运算符 ^ ,在hdlbits网站上使用^时波形mismatch，原因未知

endmodule
