module inputUser(clk, reset,upClick, downClick, leftClick, rightClick, L, R, U, D);
	input clk, reset;
	input rightClick, leftClick, upClick, downClick;
	output reg L,R,U,D;
	handleClick Right(.clk(clk), .reset(reset), .click(~rightClick), .out(R));
	
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