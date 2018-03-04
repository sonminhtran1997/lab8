module DE1_SoC(GPIO_0,CLOCK_50,SW,KEY);
//green [16:9], red [24:17], and sink [32:25]
	output reg  [35:0] GPIO_0 ;
	input [3:0] KEY;
	input [9:0] SW;
	input	CLOCK_50;
	reg [31:0] clk;
	reg [7:0][7:0] red_array, green_array;
	clock_divider clkdiv(CLOCK_50, clk);
	
	
	wire L, R, U, D;
	//assign LEDR[9:0]= 10'b0;
	
	inputUser inputpress(clk[15], SW[9],KEY[3],KEY[2],KEY[1],KEY[0],L,R,U,D);
	frog setFrog(clk[15],SW[9],L,R,U,D,green_array);
	cars getCar(clk[15], SW[9], red_array, red_array);
	led_matrix_driver driver(clk[15], red_array, green_array, GPIO_0[27:20], GPIO_0[35:28], GPIO_0[19:12]);
endmodule

module clock_divider (clock, divided_clock);
	input clock;
	output bit [31:0] divided_clock;
	always_ff@(posedge clock)
		divided_clock = divided_clock + 1;
		
endmodule