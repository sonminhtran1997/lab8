module center (Clock, Reset, resetfield, L, R,U,D, NL, NR,NU,ND, lightOn);
 input Clock, Reset, resetfield;
 // L - True when left key (KEY[3]) is pressed
 // R - True when right key (KEY[0]) is pressed
 // NL - True when the light to the left of this one is ON
 // NR - True when the light on the right of this one is ON
 input L, R, U, D;
 input NL, NR, NU, ND;
 // lightOn – True when this normal light should be ON/lit
 output reg lightOn;
 reg ns;//the status of light
 parameter On=1'b1, Off=1'b0; //if the light is on
 always_comb
	case(lightOn)
		On: if(L&R&U&D|L&R&U&~D|L&R&~U&D|L&R&~U&~D|L&~R&U&D|L&~R&U&~D|L&~R&~U&D|
		~L&R&U&D|~L&R&U&~D|~L&R&~U&D|~L&~R&U&D|~L&~R&~U&~D) 
				ns=On;
			else ns=Off;
		Off:if (NL&~L&R&~U&~D|NR&L&~R&~U&~D|ND&~L&~R&U&~D|NU&~L&~R&~U&D)
				ns = On;
			else ns=Off;
		default: ns = 1'bX;
	endcase
		always_ff @(posedge Clock)
		if(Reset|resetfield)
			lightOn <= On; //turn on when reset
		else
			lightOn<=ns;
endmodule 