`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:37 01/27/2019 
// Design Name: 
// Module Name:    multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplier #(integer M=5, integer N=4) (
    input [M-1:0]a,
    input [N-1:0]b,
    output [(M+N)-1:0]p
    );

wire [M*N-1:0]l;
wire [(M-1)*(N-1)-1:0]c_out;
wire [M*(N-1)-1:0]s;
genvar i;
generate
	for(i=0;i<N;i=i+1)begin:gen_loop
		layer la(a,b[i],[(i+1)*M-1:i*M]l);
	end
endgenerate

wire [M-2:0]z;
integer i1;
initial begin
	for(i1=0;i1<=(M-2);i1=i1+1) begin
		z[i1]=0;
	end
end
layer_adder l1([M-1:0]l,[2*M-1:M]l,z,[M-1:0]s,[M-2:0]c_out,P[0]);

genvar i2;
generate
	for(i2=1;i2<(N-1);i2=i2+1)begin:gen_loop
		layer_adder l2([i2*M-1:(i2-1)*M]s,[(i2+2)M-1:(i2+1)*M]l,[i2*(M-1)-1:(i2-1)*(M-1)]c_out,[(i2+1)*M-1:i2*M]s,[(i2+1)*(M-1)-1:i2*(M-1)]c_out,P[i2]);
	end
endgenerate

P[N-1]=s[M*(N-2)];
wire [M-2:0]co;
full_adder f1(s[M*(N-2)+1],c_out[(M-1)*(N-2)],0,P[N],co[0]);
genvar i3;
generate
	for(i3=1;i3<(M-1);i3=i3+1)begin:gen_loop
		full_adder f2(s[M*(N-2)+1+i3],c_out[(M-1)*(N-2)+i3],co[i3-1],P[N+i3],co[i3]);
	end
endgenerate
assign P[M*N-1]=co[M-2];

endmodule
