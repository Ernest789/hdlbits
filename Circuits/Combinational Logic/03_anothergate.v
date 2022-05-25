//
//实现与门，其中in2要先取反
module top_module (
    input in1,
    input in2,
    output out);
    
    assign out = in1 & (~in2);

endmodule