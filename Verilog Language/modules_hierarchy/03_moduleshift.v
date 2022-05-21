/*
You are given a module my_dff with two inputs and one output (that implements 
a D flip-flop). Instantiate three of them, then chain them together to make a shift register of length 3.
*/
//三个D触发器，构成三位移位寄存器。

module top_module ( input clk, input d, output q );
    
    wire q1, q2;
    my_dff instance1(.clk(clk), .d(d), .q(q1) );  // connecte ports by name.
    my_dff instance2(.clk(clk), .d(q1), .q(q2) );
    my_dff instance3(.clk(clk), .d(q2), .q(q) );

endmodule

/*
module top_module (
	input clk,
	input d,
	output q
);

	wire a, b;	// Create two wires. I called them a and b.

	// Create three instances of my_dff, with three different instance names (d1, d2, and d3).
	// Connect ports by position: ( input clk, input d, output q)
	my_dff d1 ( clk, d, a );
	my_dff d2 ( clk, a, b );
	my_dff d3 ( clk, b, q );

endmodule
*/