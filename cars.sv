module cars (clk, reset, shift, red_array);
	input clk;    // Clock
	input reset;
	input shift;
	output reg [7:0][7:0] red_array;


	always_ff @(posedge clk)
		if(reset) begin
			red_array <= {
				{8'b00000000},
				{8'b10000100},
				{8'b00010100},
				{8'b10000010},
				{8'b10001001},
				{8'b10000100},
				{8'b00100010},
				{8'b00000000}
			};
		end else if(shift) begin
			red_array[0] <= {red_array[0][0] ,red_array[0][7:1]};
			red_array[1] <= {red_array[1][0] ,red_array[1][7:1]};
			red_array[2] <= {red_array[2][0] ,red_array[2][7:1]};
			red_array[3] <= {red_array[3][0] ,red_array[3][7:1]};
			red_array[4] <= {red_array[4][0] ,red_array[4][7:1]};
			red_array[5] <= {red_array[5][0] ,red_array[5][7:1]};
			red_array[6] <= {red_array[6][0] ,red_array[6][7:1]};
			red_array[7] <= {red_array[7][0] ,red_array[7][7:1]};
		end
endmodule
