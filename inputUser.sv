module inputUser(clk, reset, leftClick, rightClick, upClick, downClick, L, R, U, D);
	input clk, reset;
	input leftClick, rightClick, upClick, downClick; 
	output reg L, R, U, D;
	handleClick Left(.clk(clk), .reset(reset), .click(~leftClick), .out(L));
	handleClick Right(.clk(clk), .reset(reset), .click(~rightClick), .out(R));
	handleClick Up(.clk(clk), .reset(reset), .click(~upClick), .out(U));
	handleClick Down(.clk(clk), .reset(reset), .click(~downClick), .out(D));
	
endmodule 

module handleClick(clk, reset, click, out);
	input clk, reset, click;
	output reg out;
	parameter on = 1'b1, off =1'b0;
	reg ns, prev;
	always_comb
	case(out)
		on: begin
			ns = off;
		end
		off: begin
			if(click != prev & click == on)
				ns = on;
			else
				ns = off;
		end
		default ns = off;
	endcase
	
	always_ff @(posedge clk)
		if(reset)
			begin
				out <= off;
				prev <= off;
			end
		else
			begin
				out <= ns;
				prev <= click;
			end
			
	
endmodule 

module handleClick_testbench();
	reg clk;
	reg reset;
	reg click;
	wire out;
	handleClick dut (.clk, .reset, .click, .out);
	 // Set up the clock
	parameter CLOCK_PERIOD=100;
	initial clk=1;
	always begin
	#(CLOCK_PERIOD/2); clk = ~clk;
	end
	 initial begin
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk); reset <= 1;
		 @(posedge clk); reset <= 0; click <= 1;
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk); click <= 0;
		 @(posedge clk); 
		 @(posedge clk); click <= 1;
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk); click <= 0;
		 @(posedge clk);
		 $stop; // End the simulation
	  end
endmodule 
	
	
	
	
	
	