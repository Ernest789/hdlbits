/*
Given four unsigned numbers, find the minimum. Unsigned numbers can be compared with standard 
comparison operators (a < b). Use the conditional operator to make two-way min circuits, then 
compose a few of them to create a 4-way min circuit. 
*/
//使用条件语句(? :)输出最小值。
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);

    // assign intermediate_result1 = compare? true: false;    
    wire [7:0] m1, m2;
    
    assign m1 = (a>b)?b:a;
    assign m2 = (m1>c)?c:m1;
    assign min = (m2>d)?d:m2;

endmodule

/*
//不推荐的写法
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    
    wire [7:0] m1, m2;
    
    assign min = (a>b)?(  (b>c)?( (c>d)?d:c ):
                                ( (b>d)?d:b )   ):
        			   (  (a>c)?( (c>d)?d:c ):
         						( (a>d)?d:a )   )  ;

endmodule
*/