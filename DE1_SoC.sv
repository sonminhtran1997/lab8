module DE1_SoC(GPIO_0,CLOCK_50,SW,KEY,HEX0);
//green [16:9], red [24:17], and sink [32:25]
	output reg  [35:0] GPIO_0 ;
	output [6:0] HEX0;
	input [3:0] KEY;
	input [9:0] SW;
	input	CLOCK_50;
	reg [31:0] clk;
	reg [7:0][7:0] red_array, green_array;
	clock_divider clkdiv(CLOCK_50, clk);
	reg shift;
	
	wire L, R, U, D;
	//assign LEDR[9:0]= 10'b0;
	reg[8:0] ranNum;
	LSFR randomize(.clk(clk[15]), .reset(SW[9]), .random(ranNum));
	adder add(.cout(shift), .num1(ranNum), .num2(SW[8:0]));
	cars getCar(clk[15], SW[9], shift, red_array);
	inputUser inputpress(clk[15], SW[9],KEY[3],KEY[2],KEY[1],KEY[0],L,R,U,D);
	frog setFrog(clk[15],SW[9],L,R,U,D, red_array, green_array, HEX0);
	
	led_matrix_driver driver(clk[15], red_array, green_array, GPIO_0[27:20], GPIO_0[35:28], GPIO_0[19:12]);
endmodule

module clock_divider (clock, divided_clock);
	input clock;
	output bit [31:0] divided_clock;
	always_ff@(posedge clock)
		divided_clock = divided_clock + 1;
		
endmodule
