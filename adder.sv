module adder(cout, num1, num2);
	output reg cout;
	input[8:0] num1, num2;
	reg[8:0] sum;
	always_comb begin 
		{cout, sum} = num1 + num2;
	end
endmodule