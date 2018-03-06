module frog(Clock,Reset,L,R,U,D,red_array, green_array);
	input Clock,Reset;
	input L,R,U,D;
	output reg [7:0][7:0] green_array;
	input reg [7:0][7:0] red_array;
	reg resetfield;
	initial
	resetfield =0;
	
	
	lights LED64(Clock, Reset, resetfield, L, R,U,D, green_array[7][0], green_array[7][6],1'b0,green_array[6][7], red_array[7][7],green_array[7][7]);
	lights LED63(Clock, Reset, resetfield, L, R,U,D, green_array[7][7], green_array[7][5],1'b0,green_array[6][6], red_array[7][6],green_array[7][6]);
	lights LED62(Clock, Reset, resetfield, L, R,U,D, green_array[7][6], green_array[7][4],1'b0,green_array[6][5], red_array[7][5],green_array[7][5]);
	lights LED61(Clock, Reset, resetfield, L, R,U,D, green_array[7][5], green_array[7][3],1'b0,green_array[6][4], red_array[7][4],green_array[7][4]);
	lights LED60(Clock, Reset, resetfield, L, R,U,D, green_array[7][4], green_array[7][2],1'b0,green_array[6][3], red_array[7][3],green_array[7][3]);
	lights LED59(Clock, Reset, resetfield, L, R,U,D, green_array[7][3], green_array[7][1],1'b0,green_array[6][2], red_array[7][2],green_array[7][2]);
	lights LED58(Clock, Reset, resetfield, L, R,U,D, green_array[7][2], green_array[7][0],1'b0,green_array[6][1], red_array[7][1],green_array[7][1]);
	lights LED57(Clock, Reset, resetfield, L, R,U,D, green_array[7][1], green_array[7][7],1'b0,green_array[6][0], red_array[7][0],green_array[7][0]);
	
	lights LED56(Clock, Reset, resetfield, L, R,U,D, green_array[6][0], green_array[6][6],green_array[7][7],green_array[5][7], red_array[6][7],green_array[6][7]);
	lights LED55(Clock, Reset, resetfield, L, R,U,D, green_array[6][7], green_array[6][5],green_array[7][6],green_array[5][6], red_array[6][6],green_array[6][6]);
	lights LED54(Clock, Reset, resetfield, L, R,U,D, green_array[6][6], green_array[6][4],green_array[7][5],green_array[5][5], red_array[6][5],green_array[6][5]);
	lights LED53(Clock, Reset, resetfield, L, R,U,D, green_array[6][5], green_array[6][3],green_array[7][4],green_array[5][4], red_array[6][4],green_array[6][4]);
	lights LED52(Clock, Reset, resetfield, L, R,U,D, green_array[6][4], green_array[6][2],green_array[7][3],green_array[5][3], red_array[6][3],green_array[6][3]);
	lights LED51(Clock, Reset, resetfield, L, R,U,D, green_array[6][3], green_array[6][1],green_array[7][2],green_array[5][2], red_array[6][2],green_array[6][2]);
	lights LED50(Clock, Reset, resetfield, L, R,U,D, green_array[6][2], green_array[6][0],green_array[7][1],green_array[5][1], red_array[6][1],green_array[6][1]);
	lights LED49(Clock, Reset, resetfield, L, R,U,D, green_array[6][1], green_array[6][7],green_array[7][0],green_array[5][0], red_array[6][0],green_array[6][0]);
	
	lights LED48(Clock, Reset, resetfield, L, R,U,D, green_array[5][0], green_array[5][6],green_array[6][7],green_array[4][7], red_array[5][7],green_array[5][7]);
	lights LED47(Clock, Reset, resetfield, L, R,U,D, green_array[5][7], green_array[5][5],green_array[6][6],green_array[4][6], red_array[5][6],green_array[5][6]);
	lights LED46(Clock, Reset, resetfield, L, R,U,D, green_array[5][6], green_array[5][4],green_array[6][5],green_array[4][5], red_array[5][5],green_array[5][5]);
	lights LED45(Clock, Reset, resetfield, L, R,U,D, green_array[5][5], green_array[5][3],green_array[6][4],green_array[4][4], red_array[5][4],green_array[5][4]);
	lights LED44(Clock, Reset, resetfield, L, R,U,D, green_array[5][4], green_array[5][2],green_array[6][3],green_array[4][3], red_array[5][3],green_array[5][3]);
	lights LED43(Clock, Reset, resetfield, L, R,U,D, green_array[5][3], green_array[5][1],green_array[6][2],green_array[4][2], red_array[5][2],green_array[5][2]);
	lights LED42(Clock, Reset, resetfield, L, R,U,D, green_array[5][2], green_array[5][0],green_array[6][1],green_array[4][1], red_array[5][1],green_array[5][1]);
	lights LED41(Clock, Reset, resetfield, L, R,U,D, green_array[5][1], green_array[5][7],green_array[6][0],green_array[4][0], red_array[5][0],green_array[5][0]);

	lights LED40(Clock, Reset, resetfield, L, R,U,D, green_array[4][0], green_array[4][6],green_array[5][7],green_array[3][7], red_array[4][7],green_array[4][7]);
	lights LED39(Clock, Reset, resetfield, L, R,U,D, green_array[4][7], green_array[4][5],green_array[5][6],green_array[3][6], red_array[4][6],green_array[4][6]);
	lights LED38(Clock, Reset, resetfield, L, R,U,D, green_array[4][6], green_array[4][4],green_array[5][5],green_array[3][5], red_array[4][5],green_array[4][5]);
	lights LED37(Clock, Reset, resetfield, L, R,U,D, green_array[4][5], green_array[4][3],green_array[5][4],green_array[3][4], red_array[4][4],green_array[4][4]);
	lights LED36(Clock, Reset, resetfield, L, R,U,D, green_array[4][4], green_array[4][2],green_array[5][3],green_array[3][3], red_array[4][3],green_array[4][3]);
	lights LED35(Clock, Reset, resetfield, L, R,U,D, green_array[4][3], green_array[4][1],green_array[5][2],green_array[3][2], red_array[4][2],green_array[4][2]);
	lights LED34(Clock, Reset, resetfield, L, R,U,D, green_array[4][2], green_array[4][0],green_array[5][1],green_array[3][1], red_array[4][1],green_array[4][1]);
	lights LED33(Clock, Reset, resetfield, L, R,U,D, green_array[4][1], green_array[4][7],green_array[5][0],green_array[3][0], red_array[4][0],green_array[4][0]);

	lights LED32(Clock, Reset, resetfield, L, R,U,D, green_array[3][0], green_array[3][6],green_array[4][7],green_array[2][7], red_array[3][7],green_array[3][7]);
	lights LED31(Clock, Reset, resetfield, L, R,U,D, green_array[3][7], green_array[3][5],green_array[4][6],green_array[2][6], red_array[3][6],green_array[3][6]);
	lights LED30(Clock, Reset, resetfield, L, R,U,D, green_array[3][6], green_array[3][4],green_array[4][5],green_array[2][5], red_array[3][5],green_array[3][5]);
	lights LED29(Clock, Reset, resetfield, L, R,U,D, green_array[3][5], green_array[3][3],green_array[4][4],green_array[2][4], red_array[3][4],green_array[3][4]);
	lights LED28(Clock, Reset, resetfield, L, R,U,D, green_array[3][4], green_array[3][2],green_array[4][3],green_array[2][3], red_array[3][3],green_array[3][3]);
	lights LED27(Clock, Reset, resetfield, L, R,U,D, green_array[3][3], green_array[3][1],green_array[4][2],green_array[2][2], red_array[3][2],green_array[3][2]);
	lights LED26(Clock, Reset, resetfield, L, R,U,D, green_array[3][2], green_array[3][0],green_array[4][1],green_array[2][1], red_array[3][1],green_array[3][1]);
	lights LED25(Clock, Reset, resetfield, L, R,U,D, green_array[3][1], green_array[3][7],green_array[4][0],green_array[2][0], red_array[3][0],green_array[3][0]);

	lights LED24(Clock, Reset, resetfield, L, R,U,D, green_array[2][0], green_array[2][6],green_array[3][7],green_array[1][7], red_array[2][7],green_array[2][7]);
	lights LED23(Clock, Reset, resetfield, L, R,U,D, green_array[2][7], green_array[2][5],green_array[3][6],green_array[1][6], red_array[2][6],green_array[2][6]);
	lights LED22(Clock, Reset, resetfield, L, R,U,D, green_array[2][6], green_array[2][4],green_array[3][5],green_array[1][5], red_array[2][5],green_array[2][5]);
	lights LED21(Clock, Reset, resetfield, L, R,U,D, green_array[2][5], green_array[2][3],green_array[3][4],green_array[1][4], red_array[2][4],green_array[2][4]);
	lights LED20(Clock, Reset, resetfield, L, R,U,D, green_array[2][4], green_array[2][2],green_array[3][3],green_array[1][3], red_array[2][3],green_array[2][3]);
	lights LED19(Clock, Reset, resetfield, L, R,U,D, green_array[2][3], green_array[2][1],green_array[3][2],green_array[1][2], red_array[2][2],green_array[2][2]);
	lights LED18(Clock, Reset, resetfield, L, R,U,D, green_array[2][2], green_array[2][0],green_array[3][1],green_array[1][1], red_array[2][1],green_array[2][1]);
	lights LED17(Clock, Reset, resetfield, L, R,U,D, green_array[2][1], green_array[2][7],green_array[3][0],green_array[1][0], red_array[2][0],green_array[2][0]);

	lights LED16(Clock, Reset, resetfield, L, R,U,D, green_array[1][0], green_array[1][6],green_array[2][7],green_array[0][7], red_array[1][7],green_array[1][7]);
	lights LED15(Clock, Reset, resetfield, L, R,U,D, green_array[1][7], green_array[1][5],green_array[2][6],green_array[0][6], red_array[1][6],green_array[1][6]);
	lights LED14(Clock, Reset, resetfield, L, R,U,D, green_array[1][6], green_array[1][4],green_array[2][5],green_array[0][5], red_array[1][5],green_array[1][5]);
	lights LED13(Clock, Reset, resetfield, L, R,U,D, green_array[1][5], green_array[1][3],green_array[2][4],green_array[0][4], red_array[1][4],green_array[1][4]);
	lights LED12(Clock, Reset, resetfield, L, R,U,D, green_array[1][4], green_array[1][2],green_array[2][3],green_array[0][3], red_array[1][3],green_array[1][3]);
	lights LED11(Clock, Reset, resetfield, L, R,U,D, green_array[1][3], green_array[1][1],green_array[2][2],green_array[0][2], red_array[1][2],green_array[1][2]);
	lights LED10(Clock, Reset, resetfield, L, R,U,D, green_array[1][2], green_array[1][0],green_array[2][1],green_array[0][1], red_array[1][1],green_array[1][1]);
	lights LED9(Clock, Reset, resetfield, L, R,U,D, green_array[1][1], green_array[1][7],green_array[2][0],green_array[0][0], red_array[1][0],green_array[1][0]);	
	
	bottomLight LED8(Clock, Reset, resetfield, L, R,U,D, green_array[0][0], green_array[0][6],green_array[1][7],green_array[0][7],green_array[0][7]);
	bottomLight LED7(Clock, Reset, resetfield, L, R,U,D, green_array[0][7], green_array[0][5],green_array[1][6],green_array[0][6],green_array[0][6]);
	bottomLight LED6(Clock, Reset, resetfield, L, R,U,D, green_array[0][6], green_array[0][4],green_array[1][5],green_array[0][5],green_array[0][5]);
	bottomLight LED5(Clock, Reset, resetfield, L, R,U,D, green_array[0][5], green_array[0][3],green_array[1][4],green_array[0][4],green_array[0][4]);
	bottomLight LED4(Clock, Reset, resetfield, L, R,U,D, green_array[0][4], green_array[0][2],green_array[1][3],green_array[0][3],green_array[0][3]);
	center LED3(Clock, Reset, resetfield, L, R,U,D, green_array[0][3], green_array[0][1],green_array[1][2],green_array[0][2],green_array[0][2]);
	bottomLight LED2(Clock, Reset, resetfield, L, R,U,D, green_array[0][2], green_array[0][0],green_array[1][1],green_array[0][1],green_array[0][1]);
	bottomLight LED1(Clock, Reset, resetfield, L, R,U,D, green_array[0][1], green_array[0][7],green_array[1][0],green_array[0][0],green_array[0][0]);
	
	
endmodule
