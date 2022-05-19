//Given an 8-bit input vector [7:0], reverse its bit ordering.
//翻转向量bit顺序。

module top_module( 
    input [7:0] in,
    output [7:0] out
);
    
    assign out = { in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7] }; //不能in[0:7],和python语法区分开
    
endmodule

/*
reg [7:0] in, out;
integer i;
always@(*) begin
    for(i=0;i<=7:i++) begin
        out[i] = in[7-i];
    end
end
*/