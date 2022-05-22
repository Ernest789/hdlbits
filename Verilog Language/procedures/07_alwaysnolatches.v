/*
Suppose you're building a circuit to process scancodes from a PS/2 keyboard for a game.
Given the last two bytes of scancodes received, you need to indicate whether one of the 
arrow keys on the keyboard have been pressed.  This involves a fairly simple mapping, 
which can be implemented as a case statement (or if-elseif) with four cases.
 ________________________________
| Scancode [15:0] |   Arrow key  |
|   16'he06b	  |  left arrow  |
|   16'he072      |  down arrow  |
|   16'he074	  |  right arrow |
|   16'he075      |   up arrow   |
| Anything else	  |     none     |
``````````````````````````````````
*/
//实现一个游戏方向控制器。

// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    
    always@(*) begin  
        left = 1'b0; down = 1'b0; right = 1'b0; up = 1'b0;  // 此句在always语句中运行几次？
        case(scancode)
            16'he06b : left = 1'b1;
			16'he072 : down = 1'b1;
			16'he074 : right = 1'b1;
			16'he075 : up = 1'b1;
            default : begin  // 不写default也可以得到相同结果
                left = 1'b0; 
                down = 1'b0; 
                right = 1'b0; 
                up = 1'b0;
            end
        endcase
    end

endmodule