//Create a module that implements a NOR gate.
//异或门
module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = ~(a|b);  //异或运算符^

endmodule
