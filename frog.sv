module frog (
	input clk,    // Clock
	input leftKey, // Clock Enable
	input rightKey,  // Asynchronous reset active low
	input upKey,
	input downKey,
	input reset,
	output xAxis,
	output yAxis
);
	reg nsx, nsy;
	always_comb 
		if(leftKey) begin
			nsx = xAxis - 1;
		end else if(rightKey) begin
			nsx = xAxis + 1;
		end else if(upKey) begin
			nsy = yAxis - 1;
		end else if(downKey) begin
			nsy = yAxis +1;
		end else begin
			nsx = xAxis;
			nsy = yAxis;
		end
	
	always_ff @(posedge clk) begin
		if(reset) begin
			xAxis <= 3;
			yAxis <=3;
		end else begin
			if(xAxis != nsx)
				/* code */
				xAxis <= nsx;
			else
				xAxis <= xAxis;
			if(yAxis != nsy)
				/* code */
				yAxis <= nsy;
			else
				yAxis <= yAxis;
		end
	end
endmodule 