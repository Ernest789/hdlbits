// There are two commonly-used methods to connect a wire to a port: by position or by name.
// 两个一般方法给端口接线

module top_module ( input a, input b, output out );
    
    mod_a instance1( .out(out), .in1(a), .in2(b) );  // by name 

endmodule

/*
module top_module ( input a, input b, output out );
    
    mod_a instance1( a, b, out );   // by position

endmodule
*/