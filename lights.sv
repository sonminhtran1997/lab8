module lights (clk, Reset, resetfield, L, R,U,D, NL, NR,NU,ND, red, lightOn);
input clk, Reset, resetfield, red;
 // L - True when left key (KEY[3]) is pressed
 // R - True when right key (KEY[0]) is pressed
 // NL - True when the light to the left of this one is ON
 // NR - True when the light on the right of this one is ON
 input L, R, U, D, NL, NR, NU, ND;
 // lightOn – True when this normal light should be ON/lit
 output reg lightOn;
 reg ns;//the status of light
 parameter On=1'b1, Off=1'b0; //if the light is on
 always_comb
	case(lightOn)
		On: 
			if(~L&R&U&D | ~L&R&U&~D | ~L&R&~U&D | ~L&~R&U&D | ~L&~R&~U&~D | L&R&U&D |L&R&U&~D | L&R&~U&D |L&R&~U&~D | L&~R&U&D | L&~R&U&~D | L&~R&~U&D) //either press at the same time, or no one press
				ns=On;
			else ns=Off;
		Off:
			if (ND&~L&~R&U&~D | NU&~L&~R&~U&D | NL&~L&R&~U&~D | NR&L&~R&~U&~D)//either NR and L or NL and R are true.
				ns = On;
			else ns=Off;
		default: ns = 1'bX;
	endcase
		always_ff @(posedge clk)
		if(Reset|resetfield|red)
			lightOn <=Off ; //turn off when reset
		else
			lightOn<=ns;
endmodule 