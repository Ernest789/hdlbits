/*
Suppose you are designing a circuit to control a cellphone's ringer and vibration motor. 
Whenever the phone needs to ring from an incoming call (input ring), your circuit must either 
turn on the ringer (output ringer = 1) or the motor (output motor = 1), but not both. If the 
phone is in vibrate mode (input vibrate_mode = 1), turn on the motor. Otherwise, turn on the ringer.
*/
// 控制响铃还是振动

//行为描述
module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    
    always@(*) begin
        
        ringer = 1'b0;  // 置零是必须的
        motor = 1'b0;
        
        if(vibrate_mode) begin
            if(ring)
                motor = 1'b1;
        end
    	else begin
            if(ring)
                ringer = 1'b1;
        end
    end

endmodule

/*
//数据流描述
module top_module(
	input ring, 
	input vibrate_mode,
	output ringer,
	output motor
);
	
	// When should ringer be on? When (phone is ringing) and (phone is not in vibrate mode)
	assign ringer = ring & ~vibrate_mode;
	
	// When should motor be on? When (phone is ringing) and (phone is in vibrate mode)
	assign motor = ring & vibrate_mode;
	
endmodule
*/