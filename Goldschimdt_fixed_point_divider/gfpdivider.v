`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:50 04/06/2019 
// Design Name: 
// Module Name:    gfpdivider 
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
module gfpdivider(
    input [15:0]N,
    input [15:0]D,
    input clk,
    input reset,
    output [15:0]No
    );

wire [15:0]Nc,Dc,Np,Dp,N7,N77,N7c,N77c,Do,Dm1,Nm1,D0,N0,N00,F0,D00,F00,N1,D1,F1,D11,F11,N11,N2,D2,F2,N22,D22,F22,N3,D3,F3,N33,D33,F33,N4,D4,F4,N44,D44,F44,N5,D5,F5,N55,F55,D55,N6,D6,F6,N66,D66,F66;
wire [31:0]d0,n0,n1,d1,n2,d2,n3,d3,n4,d4,n5,d5,n6,d6,n7;
wire P,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17;

xor x(P,N[15],D[15]);

dff dd1(P,clk,reset,P1);
dff dd2(P1,clk,reset,P2);
dff dd3(P2,clk,reset,P3);
dff dd4(P3,clk,reset,P4);
dff dd5(P4,clk,reset,P5);
dff dd6(P5,clk,reset,P6);
dff dd7(P6,clk,reset,P7);
dff dd8(P7,clk,reset,P8);
dff dd9(P8,clk,reset,P9);
dff dd10(P9,clk,reset,P10);
dff dd11(P10,clk,reset,P11);
dff dd12(P11,clk,reset,P12);
dff dd13(P12,clk,reset,P13);
dff dd14(P13,clk,reset,P14);
dff dd15(P14,clk,reset,P15);
dff dd16(P15,clk,reset,P16);
dff dd17(P16,clk,reset,P17);

complement2 c11(N,Nc);
complement2 c22(D,Dc);

assign Np=(N[15])?Nc:N;
assign Dp=(D[15])?Dc:D;

reg16 reg01(Np,clk,reset,Nm1);
reg16 reg02(Dp,clk,reset,Dm1);

lutable l(Dm1,Do);

multiplier m01(Do,Dm1,d0);
multiplier m02(Do,Nm1,n0);

reg16 reg03(n0[23:8],clk,reset,N0);
reg16 reg04(N0,clk,reset,N00);

reg16 reg05(d0[16:1],clk,reset,D0);
complement2 c01(D0,F0);
reg16 reg06(D0,clk,reset,D00);
reg16 reg07(F0,clk,reset,F00);

multiplier m03(F00,N00,n1);
multiplier m04(F00,D00,d1);



reg16 reg08(n1[30:15],clk,reset,N1);
reg16 reg09(N1,clk,reset,N11);

reg16 reg10(d1[30:15],clk,reset,D1);
complement2 c02(D1,F1);
reg16 reg11(D1,clk,reset,D11);
reg16 reg12(F1,clk,reset,F11);

multiplier m05(F11,N11,n2);
multiplier m06(F11,D11,d2);


reg16 reg13(n2[30:15],clk,reset,N2);
reg16 reg14(N2,clk,reset,N22);

reg16 reg15(d2[30:15],clk,reset,D2);
complement2 c03(D2,F2);
reg16 reg16(D2,clk,reset,D22);
reg16 reg17(F2,clk,reset,F22);

multiplier m07(F22,N22,n3);
multiplier m08(F22,D22,d3);



reg16 reg18(n3[30:15],clk,reset,N3);
reg16 reg19(N3,clk,reset,N33);

reg16 reg20(d3[30:15],clk,reset,D3);
complement2 c04(D3,F3);
reg16 reg21(D3,clk,reset,D33);
reg16 reg22(F3,clk,reset,F33);

multiplier m09(F33,N33,n4);
multiplier m10(F33,D33,d4);



reg16 reg23(n4[30:15],clk,reset,N4);
reg16 reg24(N4,clk,reset,N44);

reg16 reg25(d4[30:15],clk,reset,D4);
complement2 c05(D4,F4);
reg16 reg26(D4,clk,reset,D44);
reg16 reg27(F4,clk,reset,F44);

multiplier m11(F44,N44,n5);
multiplier m12(F44,D44,d5);



reg16 reg28(n5[30:15],clk,reset,N5);
reg16 reg29(N5,clk,reset,N55);

reg16 reg30(d5[30:15],clk,reset,D5);
complement2 c06(D5,F5);
reg16 reg31(D5,clk,reset,D55);
reg16 reg32(F5,clk,reset,F55);

multiplier m13(F55,N55,n6);
multiplier m14(F55,D55,d6);



reg16 reg33(n6[30:15],clk,reset,N6);
reg16 reg34(N6,clk,reset,N66);

reg16 reg35(d6[30:15],clk,reset,D6);
complement2 c07(D6,F6);
reg16 reg36(D6,clk,reset,D66);
reg16 reg37(F6,clk,reset,F66);

multiplier m15(F66,N66,n7);



reg16 reg38(n7[30:15],clk,reset,N7);
reg16 reg39(N7,clk,reset,N77);

complement2 c33(N7,N7c);
reg16 reg40(N7c,clk,reset,N77c);

assign No=(P17)?N77c:N77;

endmodule
