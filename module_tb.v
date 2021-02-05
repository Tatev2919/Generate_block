module module_tb;
	reg clk;
	reg [3:0] a,b;
	wire [4:0] c;

	operation #(.op(1)) op1 (clk,a,b,c);
	operation #(.op(0)) op2 (clk,a,b,c);

	initial begin 
		$dumpfile("v.vcd");
		$dumpvars();
	end

	initial begin 
		clk = 0;
		a = 5;
		b = 6;
		#200;
		$finish;
	end
	
	always #10 clk = ~clk;

endmodule 
