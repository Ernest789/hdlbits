//You are given a 100-bit input vector in[99:0]. We want to know some relationships between each bit and its neighbour.
//100位bit的数据相邻位关系

module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    
    always@(*) begin  // 还是难以逃脱c语言的影响
        for (int i=0;i<99;i++) begin
            out_both[i] = in[i+1] & in[i];
            out_any[i+1] = in[i+1] | in[i];
            out_different[i] = in[i+1] ^ in[i];
        end
        out_different[99] = in[0] ^ in[99];
    end

endmodule

/*
系统给出的答案更好

module top_module (
	input [99:0] in,
	output [98:0] out_both,
	output [99:1] out_any,
	output [99:0] out_different
);

	// See gatesv for explanations.
	assign out_both = in & in[99:1];  //可用移位操作：in & (in >> 1)
	assign out_any = in[99:1] | in ;
	assign out_different = in ^ {in[0], in[99:1]};  // 对于不同位数的扩展
	
endmodule
*/