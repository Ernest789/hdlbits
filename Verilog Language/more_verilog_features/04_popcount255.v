// A "population count" circuit counts the number of '1's in an input vector. 
// Build a population count circuit for a 255-bit input vector.
// 高电平个数计数器。
module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    always@(*) begin
        out = 8'b0;
        for (int i=0; i<$bits(in); i++) begin  
            if(in[i])  // 用if语句不是最优解，下面注释中的解法更好。
                out = out + 8'b1;
        end
    end

endmodule

/*
module top_module (
	input [254:0] in,
	output reg [7:0] out
);

	always @(*) begin	// Combinational always block
		out = 0;
		for (int i=0;i<255;i++)
			out = out + in[i];
	end
	
endmodule

*/