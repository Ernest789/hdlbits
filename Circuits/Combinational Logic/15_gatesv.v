//You are given a four-bit input vector in[3:0]. We want to know some relationships between each bit and its neighbour.
//相邻bit的关系

//如果用逻辑表化简的方法会特别麻烦，从问题本质出发，用逻辑关系表达
module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    
    assign out_both = { in[3] & in[2], in[2] & in[1], in[1] & in[0] },  // both,用与门找全为1
        out_any = { in[3] | in[2], in[2] | in[1], in[1] | in[0] },  // any,用或门找存在1
        out_different = { in[0] ^ in[3], in[3] ^ in[2], in[2] ^ in[1], in[1] ^ in[0] };  // 用异或门找不同

endmodule