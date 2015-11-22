module T_FF (input clk, input reset, input write, input d, output reg q);
  
  always@(negedge clk)
    if(reset) q=1'b0;
    else if(write)
      begin
        if(d==1'b0) q = d;
        if(d==1'b1) q = ~q;
      end
endmodule

module decoder3To8(input[2:0] inp, output reg[3:0] decOut);
  
  always@(inp)
    case(inp)
      3'b000 : decOut = 8'd1;
	  3'b001 : decOut = 8'd2;
      2'b010 : decOut = 8'd4;
      3'b011 : decOut = 8'd8;
      3'b100 : decOut = 8'd16;
	  3'b101 : decOut = 8'd32;
	  3'b110 : decOut = 8'd64;
	  3'b111: decOut  = 8'd128;
    endcase
endmodule


module comparator(input [6:0] input_1,input [6:0] input_2,input enable,output reg comparatorOut);
always@(input_1 or input_2 or enable)
begin
  if(enable)
    begin
   	  if(input_1== input_2)
 	  	   comparatorOut = 1;
 	    else 
 		    comparatorOut =0;
 		end
 	else
 	  begin
 	    comparatorOut=0;
 	  end
end
endmodule


module tagBlock(input clk, input reset, input write, input [6:0] tag,output [6:0] tagData);    

  D_FF d0(clk,reset,write,tag[0],tagData[0]);
  D_FF d1(clk,reset,write,tag[1],tagData[1]);
  D_FF d2(clk,reset,write,tag[2],tagData[2]);
  D_FF d3(clk,reset,write,tag[3],tagData[3]);
  
  D_FF d4(clk,reset,write,tag[4],tagData[4]);
  D_FF d5(clk,reset,write,tag[5],tagData[5]);
  
endmodule


module tagArray(input clk, input reset, input [127:0] we, input [6:0] tag,
output [5:0] tagOut0, output [5:0] tagOut1, output [5:0] tagOut2, output [5:0] tagOut3,
output [5:0] tagOut4, output [5:0] tagOut5, output [5:0] tagOut6, output [5:0] tagOut7,
output [5:0] tagOut8, output [5:0] tagOut9, output [5:0] tagOut10, output [5:0] tagOut11,
output [5:0] tagOut12, output [5:0] tagOut13, output [5:0] tagOut14, output [5:0] tagOut15,
output [5:0] tagOut16, output [5:0] tagOut17, output [5:0] tagOut18, output [5:0] tagOut19,
output [5:0] tagOut20, output [5:0] tagOut21, output [5:0] tagOut22, output [5:0] tagOut23,
output [5:0] tagOut24, output [5:0] tagOut25, output [5:0] tagOut26, output [5:0] tagOut27,
output [5:0] tagOut28, output [5:0] tagOut29, output [5:0] tagOut30, output [5:0] tagOut31,
output [5:0] tagOut32, output [5:0] tagOut33, output [5:0] tagOut34, output [5:0] tagOut35,
output [5:0] tagOut36, output [5:0] tagOut37, output [5:0] tagOut38, output [5:0] tagOut39,
output [5:0] tagOut40, output [5:0] tagOut41, output [5:0] tagOut42, output [5:0] tagOut43,
output [5:0] tagOut44, output [5:0] tagOut45, output [5:0] tagOut46, output [5:0] tagOut47,
output [5:0] tagOut48, output [5:0] tagOut49, output [5:0] tagOut50, output [5:0] tagOut51,
output [5:0] tagOut52, output [5:0] tagOut53, output [5:0] tagOut54, output [5:0] tagOut55,
output [5:0] tagOut56, output [5:0] tagOut57, output [5:0] tagOut58, output [5:0] tagOut59,
output [5:0] tagOut60, output [5:0] tagOut61, output [5:0] tagOut62, output [5:0] tagOut63,
output [5:0] tagOut64, output [5:0] tagOut65, output [5:0] tagOut66, output [5:0] tagOut67,
output [5:0] tagOut68, output [5:0] tagOut69, output [5:0] tagOut70, output [5:0] tagOut71,
output [5:0] tagOut72, output [5:0] tagOut73, output [5:0] tagOut74, output [5:0] tagOut75,
output [5:0] tagOut76, output [5:0] tagOut77, output [5:0] tagOut78, output [5:0] tagOut79,
output [5:0] tagOut80, output [5:0] tagOut81, output [5:0] tagOut82, output [5:0] tagOut83,
output [5:0] tagOut84, output [5:0] tagOut85, output [5:0] tagOut86, output [5:0] tagOut87,
output [5:0] tagOut88, output [5:0] tagOut89, output [5:0] tagOut90, output [5:0] tagOut91,
output [5:0] tagOut92, output [5:0] tagOut93, output [5:0] tagOut94, output [5:0] tagOut95,
output [5:0] tagOut96, output [5:0] tagOut97, output [5:0] tagOut98, output [5:0] tagOut99,
output [5:0] tagOut100, output [5:0] tagOut101, output [5:0] tagOut102, output [5:0] tagOut103,
output [5:0] tagOut104, output [5:0] tagOut105, output [5:0] tagOut106, output [5:0] tagOut107,
output [5:0] tagOut108, output [5:0] tagOut109, output [5:0] tagOut110, output [5:0] tagOut111,
output [5:0] tagOut112, output [5:0] tagOut113, output [5:0] tagOut114, output [5:0] tagOut115,
output [5:0] tagOut116, output [5:0] tagOut117, output [5:0] tagOut118, output [5:0] tagOut119,
output [5:0] tagOut120, output [5:0] tagOut121, output [5:0] tagOut122, output [5:0] tagOut123,
output [5:0] tagOut124, output [5:0] tagOut125, output [5:0] tagOut126, output [5:0] tagOut127);

	tagBlock t0(clk, reset, we[0], tag,tagOut0);
	tagBlock t1(clk, reset, we[1], tag,tagOut1);
	tagBlock t2(clk, reset, we[2], tag,tagOut2);
	tagBlock t3(clk, reset, we[3], tag,tagOut3);
	tagBlock t4(clk, reset, we[4], tag,tagOut4);
	tagBlock t5(clk, reset, we[5], tag,tagOut5);
	tagBlock t6(clk, reset, we[6], tag,tagOut6);
	tagBlock t7(clk, reset, we[7], tag,tagOut7);
	tagBlock t8(clk, reset, we[8], tag,tagOut8);
	tagBlock t9(clk, reset, we[9], tag,tagOut9);
	tagBlock t10(clk, reset, we[10], tag,tagOut10);
	tagBlock t11(clk, reset, we[11], tag,tagOut11);
	tagBlock t12(clk, reset, we[12], tag,tagOut12);
	tagBlock t13(clk, reset, we[13], tag,tagOut13);
	tagBlock t14(clk, reset, we[14], tag,tagOut14);
	tagBlock t15(clk, reset, we[15], tag,tagOut15);
	tagBlock t16(clk, reset, we[16], tag,tagOut16);
	tagBlock t17(clk, reset, we[17], tag,tagOut17);
	tagBlock t18(clk, reset, we[18], tag,tagOut18);
	tagBlock t19(clk, reset, we[19], tag,tagOut19);
	tagBlock t20(clk, reset, we[20], tag,tagOut20);
	tagBlock t21(clk, reset, we[21], tag,tagOut21);
	tagBlock t22(clk, reset, we[22], tag,tagOut22);
	tagBlock t23(clk, reset, we[23], tag,tagOut23);
	tagBlock t24(clk, reset, we[24], tag,tagOut24);
	tagBlock t25(clk, reset, we[25], tag,tagOut25);
	tagBlock t26(clk, reset, we[26], tag,tagOut26);
	tagBlock t27(clk, reset, we[27], tag,tagOut27);
	tagBlock t28(clk, reset, we[28], tag,tagOut28);
	tagBlock t29(clk, reset, we[29], tag,tagOut29);
	tagBlock t30(clk, reset, we[30], tag,tagOut30);
	tagBlock t31(clk, reset, we[31], tag,tagOut31);
	tagBlock t32(clk, reset, we[32], tag,tagOut32);
	tagBlock t33(clk, reset, we[33], tag,tagOut33);
	tagBlock t34(clk, reset, we[34], tag,tagOut34);
	tagBlock t35(clk, reset, we[35], tag,tagOut35);
	tagBlock t36(clk, reset, we[36], tag,tagOut36);
	tagBlock t37(clk, reset, we[37], tag,tagOut37);
	tagBlock t38(clk, reset, we[38], tag,tagOut38);
	tagBlock t39(clk, reset, we[39], tag,tagOut39);
	tagBlock t40(clk, reset, we[40], tag,tagOut40);
	tagBlock t41(clk, reset, we[41], tag,tagOut41);
	tagBlock t42(clk, reset, we[42], tag,tagOut42);
	tagBlock t43(clk, reset, we[43], tag,tagOut43);
	tagBlock t44(clk, reset, we[44], tag,tagOut44);
	tagBlock t45(clk, reset, we[45], tag,tagOut45);
	tagBlock t46(clk, reset, we[46], tag,tagOut46);
	tagBlock t47(clk, reset, we[47], tag,tagOut47);
	tagBlock t48(clk, reset, we[48], tag,tagOut48);
	tagBlock t49(clk, reset, we[49], tag,tagOut49);
	tagBlock t50(clk, reset, we[50], tag,tagOut50);
	tagBlock t51(clk, reset, we[51], tag,tagOut51);
	tagBlock t52(clk, reset, we[52], tag,tagOut52);
	tagBlock t53(clk, reset, we[53], tag,tagOut53);
	tagBlock t54(clk, reset, we[54], tag,tagOut54);
	tagBlock t55(clk, reset, we[55], tag,tagOut55);
	tagBlock t56(clk, reset, we[56], tag,tagOut56);
	tagBlock t57(clk, reset, we[57], tag,tagOut57);
	tagBlock t58(clk, reset, we[58], tag,tagOut58);
	tagBlock t59(clk, reset, we[59], tag,tagOut59);
	tagBlock t60(clk, reset, we[60], tag,tagOut60);
	tagBlock t61(clk, reset, we[61], tag,tagOut61);
	tagBlock t62(clk, reset, we[62], tag,tagOut62);
	tagBlock t63(clk, reset, we[63], tag,tagOut63);
	tagBlock t64(clk, reset, we[64], tag,tagOut64);
	tagBlock t65(clk, reset, we[65], tag,tagOut65);
	tagBlock t66(clk, reset, we[66], tag,tagOut66);
	tagBlock t67(clk, reset, we[67], tag,tagOut67);
	tagBlock t68(clk, reset, we[68], tag,tagOut68);
	tagBlock t69(clk, reset, we[69], tag,tagOut69);
	tagBlock t70(clk, reset, we[70], tag,tagOut70);
	tagBlock t71(clk, reset, we[71], tag,tagOut71);
	tagBlock t72(clk, reset, we[72], tag,tagOut72);
	tagBlock t73(clk, reset, we[73], tag,tagOut73);
	tagBlock t74(clk, reset, we[74], tag,tagOut74);
	tagBlock t75(clk, reset, we[75], tag,tagOut75);
	tagBlock t76(clk, reset, we[76], tag,tagOut76);
	tagBlock t77(clk, reset, we[77], tag,tagOut77);
	tagBlock t78(clk, reset, we[78], tag,tagOut78);
	tagBlock t79(clk, reset, we[79], tag,tagOut79);
	tagBlock t80(clk, reset, we[80], tag,tagOut80);
	tagBlock t81(clk, reset, we[81], tag,tagOut81);
	tagBlock t82(clk, reset, we[82], tag,tagOut82);
	tagBlock t83(clk, reset, we[83], tag,tagOut83);
	tagBlock t84(clk, reset, we[84], tag,tagOut84);
	tagBlock t85(clk, reset, we[85], tag,tagOut85);
	tagBlock t86(clk, reset, we[86], tag,tagOut86);
	tagBlock t87(clk, reset, we[87], tag,tagOut87);
	tagBlock t88(clk, reset, we[88], tag,tagOut88);
	tagBlock t89(clk, reset, we[89], tag,tagOut89);
	tagBlock t90(clk, reset, we[90], tag,tagOut90);
	tagBlock t91(clk, reset, we[91], tag,tagOut91);
	tagBlock t92(clk, reset, we[92], tag,tagOut92);
	tagBlock t93(clk, reset, we[93], tag,tagOut93);
	tagBlock t94(clk, reset, we[94], tag,tagOut94);
	tagBlock t95(clk, reset, we[95], tag,tagOut95);
	tagBlock t96(clk, reset, we[96], tag,tagOut96);
	tagBlock t97(clk, reset, we[97], tag,tagOut97);
	tagBlock t98(clk, reset, we[98], tag,tagOut98);
	tagBlock t99(clk, reset, we[99], tag,tagOut99);
	tagBlock t100(clk, reset, we[100], tag,tagOut100);
	tagBlock t101(clk, reset, we[101], tag,tagOut101);
	tagBlock t102(clk, reset, we[102], tag,tagOut102);
	tagBlock t103(clk, reset, we[103], tag,tagOut103);
	tagBlock t104(clk, reset, we[104], tag,tagOut104);
	tagBlock t105(clk, reset, we[105], tag,tagOut105);
	tagBlock t106(clk, reset, we[106], tag,tagOut106);
	tagBlock t107(clk, reset, we[107], tag,tagOut107);
	tagBlock t108(clk, reset, we[108], tag,tagOut108);
	tagBlock t109(clk, reset, we[109], tag,tagOut109);
	tagBlock t110(clk, reset, we[110], tag,tagOut110);
	tagBlock t111(clk, reset, we[111], tag,tagOut111);
	tagBlock t112(clk, reset, we[112], tag,tagOut112);
	tagBlock t113(clk, reset, we[113], tag,tagOut113);
	tagBlock t114(clk, reset, we[114], tag,tagOut114);
	tagBlock t115(clk, reset, we[115], tag,tagOut115);
	tagBlock t116(clk, reset, we[116], tag,tagOut116);
	tagBlock t117(clk, reset, we[117], tag,tagOut117);
	tagBlock t118(clk, reset, we[118], tag,tagOut118);
	tagBlock t119(clk, reset, we[119], tag,tagOut119);
	tagBlock t120(clk, reset, we[120], tag,tagOut120);
	tagBlock t121(clk, reset, we[121], tag,tagOut121);
	tagBlock t122(clk, reset, we[122], tag,tagOut122);
	tagBlock t123(clk, reset, we[123], tag,tagOut123);
	tagBlock t124(clk, reset, we[124], tag,tagOut124);
	tagBlock t125(clk, reset, we[125], tag,tagOut125);
	tagBlock t126(clk, reset, we[126], tag,tagOut126);
	tagBlock t127(clk, reset, we[127], tag,tagOut127);
endmodule

module D_FF(input clk, input reset, input write, input d, output reg q); 
  always @(negedge clk)
    if(reset)
      q=1'b0;
    else
    if(write)
      q=d;
endmodule

module reg8Bit (input clk, input reset, input write, input [7:0] d, output reg [7:0] q);
		D_FF dff_0(clk, reset, write, d[0], q[0]);
		D_FF dff_1(clk, reset, write, d[1], q[1]);
		D_FF dff_2(clk, reset, write, d[2], q[2]);
		D_FF dff_3(clk, reset, write, d[3], q[3]);
		
		D_FF dff_4(clk, reset, write, d[4], q[4]);
		D_FF dff_5(clk, reset, write, d[5], q[5]);
		D_FF dff_6(clk, reset, write, d[6], q[6]);
		D_FF dff_7(clk, reset, write, d[7], q[7]);
endmodule

module cacheLine(input clk, input reset, input enable, input [7:0] decOut, input [63:0] inVal, output [63:0] outVal);
				 
		reg8Bit reg0(clk, reset, decOut[0] | enable, inVal[7:0], outVal[7:0]);
		reg8Bit reg1(clk, reset, decOut[1] | enable, inVal[15:8], outVal[15:8]);
		reg8Bit reg2(clk, reset, decOut[2] | enable, inVal[23:16], outVal[23:16]);
		reg8Bit reg3(clk, reset, decOut[3] | enable, inVal[31:24], outVal[31:24]);
		
		reg8Bit reg4(clk, reset, decOut[4] | enable, inVal[39:32], outVal[39:32]);
		reg8Bit reg5(clk, reset, decOut[5] | enable, inVal[47:40], outVal[47:40]);
		reg8Bit reg6(clk, reset, decOut[6] | enable, inVal[55:48], outVal[55:48]);
		reg8Bit reg7(clk, reset, decOut[7] | enable, inVal[63:56], outVal[63:56]);
		
endmodule 

module cache(input clk, input reset, input [15:0] address, input [63:0] inp, output [63:0] outp);

		reg [63:0] decOut;
		reg [7:0] decOut2;
		decoder6to64 (address[8:3], decOut);
		decoder3To8 (address[2:0], decOut2);
		
		cacheLine cacheLine0(clk, reset, decOut[0], decOut2, inp, outp );
		cacheLine cacheLine1(clk, reset, decOut[1], decOut2, inp, outp );
		cacheLine cacheLine2(clk, reset, decOut[2], decOut2, inp, outp );
		cacheLine cacheLine3(clk, reset, decOut[3], decOut2, inp, outp );
		cacheLine cacheLine4(clk, reset, decOut[4], decOut2, inp, outp );
		cacheLine cacheLine5(clk, reset, decOut[5], decOut2, inp, outp );
		cacheLine cacheLine6(clk, reset, decOut[6], decOut2, inp, outp );
		cacheLine cacheLine7(clk, reset, decOut[7], decOut2, inp, outp );
		cacheLine cacheLine8(clk, reset, decOut[8], decOut2, inp, outp );
		cacheLine cacheLine9(clk, reset, decOut[9], decOut2, inp, outp );
		cacheLine cacheLine10(clk, reset, decOut[10], decOut2, inp, outp );
		cacheLine cacheLine11(clk, reset, decOut[11], decOut2, inp, outp );
		cacheLine cacheLine12(clk, reset, decOut[12], decOut2, inp, outp );
		cacheLine cacheLine13(clk, reset, decOut[13], decOut2, inp, outp );
		cacheLine cacheLine14(clk, reset, decOut[14], decOut2, inp, outp );
		cacheLine cacheLine15(clk, reset, decOut[15], decOut2, inp, outp );
		cacheLine cacheLine16(clk, reset, decOut[16], decOut2, inp, outp );
		cacheLine cacheLine17(clk, reset, decOut[17], decOut2, inp, outp );
		cacheLine cacheLine18(clk, reset, decOut[18], decOut2, inp, outp );
		cacheLine cacheLine19(clk, reset, decOut[19], decOut2, inp, outp );
		cacheLine cacheLine20(clk, reset, decOut[20], decOut2, inp, outp );
		cacheLine cacheLine21(clk, reset, decOut[21], decOut2, inp, outp );
		cacheLine cacheLine22(clk, reset, decOut[22], decOut2, inp, outp );
		cacheLine cacheLine23(clk, reset, decOut[23], decOut2, inp, outp );
		cacheLine cacheLine24(clk, reset, decOut[24], decOut2, inp, outp );
		cacheLine cacheLine25(clk, reset, decOut[25], decOut2, inp, outp );
		cacheLine cacheLine26(clk, reset, decOut[26], decOut2, inp, outp );
		cacheLine cacheLine27(clk, reset, decOut[27], decOut2, inp, outp );
		cacheLine cacheLine28(clk, reset, decOut[28], decOut2, inp, outp );
		cacheLine cacheLine29(clk, reset, decOut[29], decOut2, inp, outp );
		cacheLine cacheLine30(clk, reset, decOut[30], decOut2, inp, outp );
		cacheLine cacheLine31(clk, reset, decOut[31], decOut2, inp, outp );
		cacheLine cacheLine32(clk, reset, decOut[32], decOut2, inp, outp );
		cacheLine cacheLine33(clk, reset, decOut[33], decOut2, inp, outp );
		cacheLine cacheLine34(clk, reset, decOut[34], decOut2, inp, outp );
		cacheLine cacheLine35(clk, reset, decOut[35], decOut2, inp, outp );
		cacheLine cacheLine36(clk, reset, decOut[36], decOut2, inp, outp );
		cacheLine cacheLine37(clk, reset, decOut[37], decOut2, inp, outp );
		cacheLine cacheLine38(clk, reset, decOut[38], decOut2, inp, outp );
		cacheLine cacheLine39(clk, reset, decOut[39], decOut2, inp, outp );
		cacheLine cacheLine40(clk, reset, decOut[40], decOut2, inp, outp );
		cacheLine cacheLine41(clk, reset, decOut[41], decOut2, inp, outp );
		cacheLine cacheLine42(clk, reset, decOut[42], decOut2, inp, outp );
		cacheLine cacheLine43(clk, reset, decOut[43], decOut2, inp, outp );
		cacheLine cacheLine44(clk, reset, decOut[44], decOut2, inp, outp );
		cacheLine cacheLine45(clk, reset, decOut[45], decOut2, inp, outp );
		cacheLine cacheLine46(clk, reset, decOut[46], decOut2, inp, outp );
		cacheLine cacheLine47(clk, reset, decOut[47], decOut2, inp, outp );
		cacheLine cacheLine48(clk, reset, decOut[48], decOut2, inp, outp );
		cacheLine cacheLine49(clk, reset, decOut[49], decOut2, inp, outp );
		cacheLine cacheLine50(clk, reset, decOut[50], decOut2, inp, outp );
		cacheLine cacheLine51(clk, reset, decOut[51], decOut2, inp, outp );
		cacheLine cacheLine52(clk, reset, decOut[52], decOut2, inp, outp );
		cacheLine cacheLine53(clk, reset, decOut[53], decOut2, inp, outp );
		cacheLine cacheLine54(clk, reset, decOut[54], decOut2, inp, outp );
		cacheLine cacheLine55(clk, reset, decOut[55], decOut2, inp, outp );
		cacheLine cacheLine56(clk, reset, decOut[56], decOut2, inp, outp );
		cacheLine cacheLine57(clk, reset, decOut[57], decOut2, inp, outp );
		cacheLine cacheLine58(clk, reset, decOut[58], decOut2, inp, outp );
		cacheLine cacheLine59(clk, reset, decOut[59], decOut2, inp, outp );
		cacheLine cacheLine60(clk, reset, decOut[60], decOut2, inp, outp );
		cacheLine cacheLine61(clk, reset, decOut[61], decOut2, inp, outp );
		cacheLine cacheLine62(clk, reset, decOut[62], decOut2, inp, outp );
		cacheLine cacheLine63(clk, reset, decOut[63], decOut2, inp, outp );
		
endmodule