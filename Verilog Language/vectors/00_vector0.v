//Build a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit outputs.
//建立一个输入为3 bit向量的电路，然后输出相同向量，另外将向量分成三个独立的1 bit输出。
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
    
    assign outv = vec,  // 这是一种方便的写法。
             o0 = vec[0],
             o1 = vec[1],
             o2 = vec[2];

endmodule