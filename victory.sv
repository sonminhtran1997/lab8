module victory (
	input clk,    // Clock
	input reset,
	input up,
	input [7:0][7:0] array,
	output reg resetfield,
	output reg [6:0] playerHex
);
	reg[2:0] psUser, nsUser;
	parameter ZERO = 3'b000;
	parameter SEVEN = 3'b111;
	always_comb
		if((array[7][0] | array[7][1] | array[7][2]
		| array[7][3] | array[7][4] | array[7][5]
		| array[7][6] | array[7][7]) & up) begin
			resetfield = 1'b1;
			nsUser = psUser + 3'b001;
		end else begin
			resetfield = 1'b0;
			nsUser = psUser;
		end
	decode(psUser, playerHex);

	always @(posedge clk)
		if(reset) begin
			psUser <= ZERO;
		end else begin
			psUser <= nsUser; 
		end
endmodule

module decode(ps, hex);
	input[2:0] ps;
	output reg [6:0] hex;
	parameter zero = 3'b000, one = 3'b001, two = 3'b010, three = 3'b011, four = 3'b100, five = 3'b101, six = 3'b110, seven = 3'b111;
	always_comb 
	case(ps)
		zero: hex = 7'b1000000;
		one: hex = 7'b1111001;
		two: hex = 7'b0100100;
		three: hex = 7'b0110000;
		four: hex = 7'b0011001;
		five: hex = 7'b0010010;
		six: hex = 7'b0000010;
		seven: hex = 7'b1111000;
		default: hex = 7'bxxxxxxx;
	endcase
endmodule