//Create a 100-bit binary ripple-carry adder by instantiating 100 full adders.
//实现100位二进制行波进位全加器，并输出每一位计算的进位。

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    always@(*) begin
        {cout[0],sum[0]} = a[0] + b[0] + cin;
        for(int i=1;i<100;i++) begin
            {cout[i],sum[i]} = a[i] + b[i] + cout[i-1];
        end
    end

endmodule