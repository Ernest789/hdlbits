/*
There are 7 outputs, each with a logic gate driving it:

out_and: a and b
out_or: a or b
out_xor: a xor b
out_nand: a nand b
out_nor: a nor b
out_xnor: a xnor b
out_anotb: a and-not b

*/
//实现以上逻辑门
module top_module( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);
    
    assign out_and = a & b,  // 与
    	    out_or = a | b,  // 或
     	   out_xor = a ^ b,  // 异或
          out_nand = ~(a & b),  // 与非
           out_nor = ~(a | b),  // 或非
     	  out_xnor = a ~^ b,  // 同或
         out_anotb = a & (~b);  // a 与 b非

endmodule