module cars (
	input clk,    // Clock
	input reset,
	input [7:0][7:0] red,
	output reg [7:0][7:0] red_array);
	always_ff @(posedge clk) begin
		if(reset) begin
			red_array <= {
				{8'b00000000},
				{8'b11000110},
				{8'b00101101},
				{8'b11100100},
				{8'b00001101},
				{8'b11001100},
				{8'b00101010},
				{8'b00000000}
			};
		end else begin
			red_array[0] <={red_array[0][0] ,red_array[0][7:1]};
			red_array[1] <={red_array[1][0] ,red_array[1][7:1]};
			red_array[2] <={red_array[2][0] ,red_array[2][7:1]};
			red_array[3] <={red_array[3][0] ,red_array[3][7:1]};
			red_array[4] <={red_array[4][0] ,red_array[4][7:1]};
			red_array[5] <={red_array[5][0] ,red_array[5][7:1]};
			red_array[6] <={red_array[6][0] ,red_array[6][7:1]};
			red_array[7] <={red_array[7][0] ,red_array[7][7:1]};
		end
	end

endmodule
