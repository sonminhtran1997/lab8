module LSFR(input clk, input reset, output reg[8:0] random);
	initial 
		random = 9'b000000000;
	always_ff @(posedge clk) begin
		if(reset) begin
			random <= 9'b000000000;
		end else begin
			random[0] <= {random[7:0],~(random[8] ^ random[4])};
		end end
endmodule 
