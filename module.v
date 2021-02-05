module operation
#(parameter op = 1'b1)
(clk,a,b,c);
input [3:0] a,b;
output reg [4:0] c;
input clk;
 
parameter add = 1'b0;
parameter sub = 1'b1;
wire [4:0] c_r;
generate 
	if( op == add ) begin 
		assign c_r = a + b;
	end
	else if( op == sub) begin 
		assign c_r = a - b;
	end
endgenerate 

always @(posedge clk) begin 
	c <= c_r;
end
endmodule 
