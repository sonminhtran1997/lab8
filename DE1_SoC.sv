	module DE1_SoC (CLOCK_50, GPIO_0, KEY, SW, rowsink);
	output reg [35:0] GPIO_0;
	reg [7:0][7:0] red_array, green_array;
	output reg [7:0] rowsink;
	wire xAxis, yAxis;
	wire L, R, U, D;
	input CLOCK_50;
	input [3:0] KEY;
	input [9:0] SW;
//	initial begin
//		for (int i = 0; i < 8; i++) begin
//			for (int j = 0; j < 8; j++) begin
//				green_array[i][j] <= 8'b00000000;
//			end
//		end
//		xAxis = 3;
//		yAxis = 3;
//		green_array[xAxis][yAxis] = 1;
//	end
//module inputUser(clk, reset,upClick, downClick, leftClick, rightClick, L, R, U, D);
	inputUser in(CLOCK_50, SW[9], KEY[3], KEY[2], KEY[1], KEY[0], L, R, U, D);
	frog setFrog(CLOCK_50, L, R, U, D, SW[9], xAxis, yAxis);
	always_ff @* begin 
		green_array[xAxis][yAxis] = 1'b1;
	end
	
// 	module frog (
// 	input clk,    // Clock
// 	input leftKey, // Clock Enable
// 	input rightKey,  // Asynchronous reset active low
// 	input upKey,
// 	input downKey,
// 	output xAxis,
// 	output yAxis
//	output[7:0][7:0] array_green
// );
//	assign GPIO_0 [19:12] = 8'b00000000;
//	assign  GPIO_0 [35:28]=8'b10000000;
//	assign  GPIO_0 [27:20]=8'b01000000;
//	assign  GPIO_0 [27:20]=8'b10000001;
	driver drive (CLOCK_50, green_array, GPIO_0[35:28], rowsink);
endmodule

//module DE1_SoC_testbench();
//	reg clk;
//	wire[35:0] gpi;
//	wire[7:0][7:0] red_array, green_array, rowsink;
//	//module setUp(CLOCK_50, HEX0, HEX3, KEY, LEDR, SW);
//	DE1_SoC dut (clk, gpi, red_array, green_array, rowsink);
//	 // Set up the clock
//	 parameter CLOCK_PERIOD=100;
//	 initial clk=1;
//	 always begin
//	 #(CLOCK_PERIOD/2); clk = ~clk;
//	 end
//	 
//	 initial begin
//		 @(posedge clk); 
//		 @(posedge clk);
//		 @(posedge clk); 
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk); 
//		 @(posedge clk);
//		 @(posedge clk); 
//		 @(posedge clk);
//		 @(posedge clk); 
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//		 @(posedge clk);
//	$stop; // End the simulation
// end
//endmodule 
