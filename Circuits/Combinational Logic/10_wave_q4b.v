/*
Circuit B can be described by the following simulation waveform:
波形图略……
*/
//波形明显是同或运算

module top_module ( input x, input y, output z );
    
    assign z = x ~^ y;

endmodule
