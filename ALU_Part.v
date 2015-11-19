
// Register File Design
module D_ff (input clk, input reset, input regWrite, input decOut1b, input d, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1'b1)
		q=0;
	else
		if(regWrite == 1'b1 && decOut1b==1'b1) begin q=d; end
	end
endmodule

module register4bit( input clk, input reset, input regWrite, input decOut1b, input [3:0] writeData, output  [3:0] outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
	D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
	D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
endmodule

module register1bit( input clk, input reset, input regWrite, input decOut1b, input writeData, output outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData, outR);
endmodule

module register2bit( input clk, input reset, input regWrite, input decOut1b, input [1:0]writeData, output [1:0] outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
endmodule

module register3bit( input clk, input reset, input regWrite, input decOut1b, input [2:0]writeData, output [2:0] outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
	D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
endmodule

module register16bit( input clk, input reset, input regWrite, input decOut1b, input [15:0] writeData, output  [15:0] outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
	D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
	D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
	D_ff d4(clk, reset, regWrite, decOut1b, writeData[4], outR[4]);
	D_ff d5(clk, reset, regWrite, decOut1b, writeData[5], outR[5]);
	D_ff d6(clk, reset, regWrite, decOut1b, writeData[6], outR[6]);
	D_ff d7(clk, reset, regWrite, decOut1b, writeData[7], outR[7]);
	D_ff d8(clk, reset, regWrite, decOut1b, writeData[8], outR[8]);
	D_ff d9(clk, reset, regWrite, decOut1b, writeData[9], outR[9]);
	D_ff d10(clk, reset, regWrite, decOut1b, writeData[10], outR[10]);
	D_ff d11(clk, reset, regWrite, decOut1b, writeData[11], outR[11]);
	D_ff d12(clk, reset, regWrite, decOut1b, writeData[12], outR[12]);
	D_ff d13(clk, reset, regWrite, decOut1b, writeData[13], outR[13]);
	D_ff d14(clk, reset, regWrite, decOut1b, writeData[14], outR[14]);
	D_ff d15(clk, reset, regWrite, decOut1b, writeData[15], outR[15]);
endmodule

module registerSet( input clk, input reset, input regWrite, input [8:0] decOut, input [15:0] writeData,  output [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
		register16bit r0 (clk, reset, 1'b0, decOut[0] , writeData , outR0 );
		register16bit r1 (clk, reset, regWrite, decOut[1] , writeData , outR1 );
		register16bit r2 (clk, reset, regWrite, decOut[2] , writeData , outR2 );
		register16bit r3 (clk, reset, regWrite, decOut[3] , writeData , outR3 );
		register16bit r4 (clk, reset, regWrite, decOut[4] , writeData , outR4 );
		register16bit r5 (clk, reset, regWrite, decOut[5] , writeData , outR5 );
		register16bit r6 (clk, reset, regWrite, decOut[6] , writeData , outR6 );
		register16bit r7 (clk, reset, regWrite, decOut[7] , writeData , outR7 );
endmodule

module decoder3to8( input [2:0] destReg, output reg [7:0] decOut);
	always@(destReg)
	begin	
		case(destReg)
			3'b000: decOut=8'b00000001; 
			3'b001: decOut=8'b00000010;
			3'b010: decOut=8'b00000100;
			3'b011: decOut=8'b00001000;
			3'b100: decOut=8'b00010000;
			3'b101: decOut=8'b00100000;
			3'b110: decOut=8'b01000000;
			3'b111: decOut=8'b10000000;
		endcase
	end
endmodule

module mux8to1( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7, input [2:0] Sel, output reg [15:0] outBus );
	always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or Sel)
	begin
		case (Sel)
				3'b000: outBus=outR0;
				3'b001: outBus=outR1;
				3'b010: outBus=outR2;
				3'b011: outBus=outR3;
				3'b100: outBus=outR4;
				3'b101: outBus=outR5;
				3'b110: outBus=outR6;
				3'b111: outBus=outR7;
		endcase
	end
endmodule

module registerFile(input clk, input reset, input regWrite, input [2:0] srcRegA, input [2:0] srcRegB, 
		input [2:0] destReg,  input [15:0] writeData, output [15:0] outBusA, output [15:0] outBusB );
	wire [7:0] decOut;
	wire [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7 ;
	decoder3to8 d0 (destReg,decOut);
	registerSet rSet0(clk, reset, regWrite, decOut, writeData, outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7) ;
	mux8to1 m1(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegA,outBusA);
	mux8to1 m2(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegB,outBusB);
endmodule

module D_ff_Mem (input clk, input reset, input regWrite, input decOut1b,input init, input d, output reg q);
	always @ (negedge clk)
	begin
	if(reset==1)
		q=init;
	else
		if(regWrite == 1 && decOut1b==1) begin q=d; end
	end
endmodule

module register_Mem(input clk,input reset,input regWrite,input decOut1b,input [15:0]init, input [15:0] d_in, output [15:0] q_out);
	D_ff_Mem dMem0 (clk,reset,regWrite,decOut1b,init[0],d_in[0],q_out[0]);
	D_ff_Mem dMem1 (clk,reset,regWrite,decOut1b,init[1],d_in[1],q_out[1]);
	D_ff_Mem dMem2 (clk,reset,regWrite,decOut1b,init[2],d_in[2],q_out[2]);
	D_ff_Mem dMem3 (clk,reset,regWrite,decOut1b,init[3],d_in[3],q_out[3]);
	
	D_ff_Mem dMem4 (clk,reset,regWrite,decOut1b,init[4],d_in[4],q_out[4]);
	D_ff_Mem dMem5 (clk,reset,regWrite,decOut1b,init[5],d_in[5],q_out[5]);
	D_ff_Mem dMem6 (clk,reset,regWrite,decOut1b,init[6],d_in[6],q_out[6]);
	D_ff_Mem dMem7 (clk,reset,regWrite,decOut1b,init[7],d_in[7],q_out[7]);

	D_ff_Mem dMem8 (clk,reset,regWrite,decOut1b,init[8],d_in[8],q_out[8]);
	D_ff_Mem dMem9 (clk,reset,regWrite,decOut1b,init[9],d_in[9],q_out[9]);
	D_ff_Mem dMem10 (clk,reset,regWrite,decOut1b,init[10],d_in[10],q_out[10]);
	D_ff_Mem dMem11 (clk,reset,regWrite,decOut1b,init[11],d_in[11],q_out[11]);
	
	D_ff_Mem dMem12 (clk,reset,regWrite,decOut1b,init[12],d_in[12],q_out[12]);
	D_ff_Mem dMem13 (clk,reset,regWrite,decOut1b,init[13],d_in[13],q_out[13]);
	D_ff_Mem dMem14 (clk,reset,regWrite,decOut1b,init[14],d_in[14],q_out[14]);
	D_ff_Mem dMem15 (clk,reset,regWrite,decOut1b,init[15],d_in[15],q_out[15]);
	
endmodule

module Mem(input clk, input reset,input memWrite,input memRead, input [15:0] pc, input [15:0] dataIn,output [15:0] IR );
	wire [15:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
					Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,decOut;
	
	decoder4to16 dec0( pc[4:1], decOut);
	
	register_Mem r0(clk,reset,memWrite,decOut[0],16'b 101_0000_1000_01111,dataIn,Qout0); //addi $r8,$r0,15
	register_Mem r1(clk,reset,memWrite,decOut[1],16'b 101_0000_0101_00101,dataIn,Qout1); //addi $r5,$r0,5
	register_Mem r2(clk,reset,memWrite,decOut[2],16'b 101_0000_0010_00010,dataIn,Qout2); //addi $r2,$r0,2
	register_Mem r3(clk,reset,memWrite,decOut[3],16'b 101_0000_0000_00000,dataIn,Qout3); //addi $r0,$r0,0
	
	register_Mem r4(clk,reset,memWrite,decOut[4],16'b 001_1000_1000_00000,dataIn,Qout4); //mul $r8,$r8
	register_Mem r5(clk,reset,memWrite,decOut[5],16'b 100_0000_0000_01001,dataIn,Qout5); //mflo $r9
	register_Mem r6(clk,reset,memWrite,decOut[6],16'b 000_0101_0101_01010,dataIn,Qout6); //add $r10,$r5,$r5
	register_Mem r7(clk,reset,memWrite,decOut[7],16'b 101_0000_0100_00100,dataIn,Qout7);  //addi $r4,$r0,4
	
	register_Mem r8(clk,reset,memWrite,decOut[8],16'b 111_0000_0101_00000,dataIn,Qout8); //sw $r5,$r0(0)
	register_Mem r9(clk,reset,memWrite,decOut[9],16'b 010_1000_0010_00000,dataIn,Qout9); //div $r8,$r2
	register_Mem r10(clk,reset,memWrite,decOut[10],16'b 011_0000_0000_00001,dataIn,Qout10); //mfhi $r1
	register_Mem r11(clk,reset,memWrite,decOut[11],16'b 100_0000_0000_00111,dataIn,Qout11); //mflo $r7
	
	register_Mem r12(clk,reset,memWrite,decOut[12],16'b 000_0000_0000_00000,dataIn,Qout12);	//add $r0,$r0,$r0
	register_Mem r13(clk,reset,memWrite,decOut[13],16'b 110_0000_0110_00000,dataIn,Qout13); //lw $r6,$r0(0)
	register_Mem r14(clk,reset,memWrite,decOut[14],16'b 000_0101_0001_00101,dataIn,Qout14); //add $r5,$r5,$r1
	register_Mem r15(clk,reset,memWrite,decOut[15],16'b 000_0010_0001_00011,dataIn,Qout15); //add $r3,$r2,$r1
	
	mux16to1 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,pc[4:1],IR);
endmodule

module decoder4to16( input [3:0] destReg, output reg [15:0] decOut);
	always@(destReg)
	case(destReg)
			4'b0000: decOut=16'b0000000000000001; 
			4'b0001: decOut=16'b0000000000000010;
			4'b0010: decOut=16'b0000000000000100;
			4'b0011: decOut=16'b0000000000001000;
			4'b0100: decOut=16'b0000000000010000;
			4'b0101: decOut=16'b0000000000100000;
			4'b0110: decOut=16'b0000000001000000;
			4'b0111: decOut=16'b0000000010000000;
			4'b1000: decOut=16'b0000000100000000; 
			4'b1001: decOut=16'b0000001000000000;
			4'b1010: decOut=16'b0000010000000000;
			4'b1011: decOut=16'b0000100000000000;
			4'b1100: decOut=16'b0001000000000000;
			4'b1101: decOut=16'b0010000000000000;
			4'b1110: decOut=16'b0100000000000000;
			4'b1111: decOut=16'b1000000000000000;
	endcase
endmodule

module mux16to1( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [15:0] outBus );
	always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or outR8 or outR9 or outR10 or outR11 or outR12 or outR13 or outR14 or outR15 or Sel)
	case (Sel)
				4'b0000: outBus=outR0;
				4'b0001: outBus=outR1;
				4'b0010: outBus=outR2;
				4'b0011: outBus=outR3;
				4'b0100: outBus=outR4;
				4'b0101: outBus=outR5;
				4'b0110: outBus=outR6;
				4'b0111: outBus=outR7;
				4'b1000: outBus=outR8;
				4'b1001: outBus=outR9;
				4'b1010: outBus=outR10;
				4'b1011: outBus=outR11;
				4'b1100: outBus=outR12;
				4'b1101: outBus=outR13;
				4'b1110: outBus=outR14;
				4'b1111: outBus=outR15;
	endcase
endmodule

module pcAdder(input [15:0] pc, output reg [15:0] newPC);
	always @(pc)
	begin
		newPC = pc + 2;
	end
endmodule

module IF_ID(input clk, input reset,input regWrite, input decOut1b,input [15:0] instr, output [15:0] p0_intr);

  register16bit instr_fetch_reg(clk,reset,regWrite,decOut1b,instr,p0_intr);
  	
endmodule

module ID_EX(input clk, input reset,input regWrite, input decOut1b,input [15:0] regOut1,input [15:0] regOut2,
  input [15:0] sExtOut, input [2:0] ctr_Rd, input ctr_aluSrcA, input [1:0] ctr_aluSrcB,input [1:0] ctr_aluOp,input ctr_regWrite, input[1:0] ctr_toReg,
  output [15:0] p1_regOut1,output [15:0] p1_regOut2,output [15:0] p1_sExtOut,output [2:0] p1_Rd, output  p1_aluSrcA,output [1:0] p1_aluSrcB,
  output [1:0] p1_aluOp, output p1_regWrite, output[1:0] p1_toReg);

  register16bit regout1_reg(clk,reset,regWrite,decOut1b,regOut1,p1_regOut1);
  register16bit regout2_reg(clk,reset,regWrite,decOut1b,regOut2,p1_regOut2);
  register16bit sext_reg(clk,reset,regWrite,decOut1b,sExtOut,p1_sExtOut);
  register1bit aluSrcA_reg(clk, reset, regWrite, decOut1b, ctr_aluSrcA, p1_aluSrcA);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, ctr_Rd, p1_Rd);
  register2bit aluSrcB_reg(clk,reset,regWrite,decOut1b,ctr_aluSrcB,p1_aluSrcB);
  register2bit aluop_reg(clk,reset,regWrite,decOut1b,ctr_aluOp,p1_aluOp);
  register1bit regwrite_reg(clk,reset,regWrite,decOut1b,ctr_regWrite,p1_regWrite);
  register2bit toreg_reg(clk,reset,regWrite,decOut1b,ctr_toReg,p1_toReg);
	  
endmodule

/* module EX_MEM(input clk, input reset,input regWrite, input decOut1b,
   input [15:0] aluOut,input [15:0] p1_regOut2,input [3:0] mux4bOut,input p1_regWrite, input[1:0] p1_toReg,
	output [15:0] p2_aluOut, output [15:0] p2_regOut2,output[3:0] p2_mux4bOut, output p2_regWrite, output[1:0] p2_toReg );
	
	//Write your code here
	register16bit hiout_reg(clk,reset,regWrite,decOut1b,hiOut,p2_hiOut);
	register16bit loout_reg(clk,reset,regWrite,decOut1b,loOut,p2_loOut);
	register16bit aluout_reg(clk,reset,regWrite,decOut1b,aluOut,p2_aluOut);
	register16bit p1regout2_reg(clk,reset,regWrite,decOut1b,p1_regOut2,p2_regOut2);
	register4bit mux4bout_reg(clk,reset,regWrite,decOut1b,mux4bOut,p2_mux4bOut);
	register1bit p1memread_reg(clk,reset,regWrite,decOut1b,p1_memRead,p2_memRead);
  register1bit p1memwrite_reg(clk,reset,regWrite,decOut1b,p1_memWrite,p2_memWrite);
  register1bit p1regwrite_reg(clk,reset,regWrite,decOut1b,p1_regWrite,p2_regWrite);
  register2bit p1toreg_reg(clk,reset,regWrite,decOut1b,p1_toReg,p2_toReg);
	
endmodule
 */

module ctrlCkt	( input [4:0] opcode, input [1:0] funcField, output reg immSrc, output reg regSrcB, output reg regDestB, output reg [1:0] aluSrcA, output reg aluSrcB, output reg [1:0] aluOp,output reg regWrite, output reg[1:0] toReg);
	
	// immSrc goes to sign etender. No mux required before sign extender. 
	//regDestB = 0 for Rd [0-2] and 1 for second Rd [8-10]
	// regSrcB = 0 for Rm and 1 for Rd
	//immSrc = 0 for short and 1 for long.
	//aluSrcA = 00 for Rn, 01 for Rm, and 10 for Rd
	// aluSrcB = 0 for Rd and 1 for Imm.
	// toReg :- To write to register, 00 and to writeto memory 01
	// aluOp is equal to funcField for Add and Sub, for cmp it is 11 and for and it is 01.
	always@(opcode)
	begin
	  case(opcode)
	      5'b00011: begin immSrc = 0; regDestB = 0; aluSrcA = 2'b00; aluSrcB = 1; aluOp = funcField; regWrite = 1; toReg = 2'b00; end
	      5'b01000: begin regDestB = 0; regSrcB = 0; aluSrcA = 2'b01; aluSrcB = 0; aluOp = 2'b01; regWrite = 1; toReg = 2'b00; end
	      5'b00111: begin immSrc = 1; regSrcB = 1; regDestB = 1; aluSrcA = 2'b10 ; aluSrcB = 1; aluOp = 2'b11; regWrite = 0; end
	  endcase
	end 
endmodule


module signExt(input [2:0] immShort, input [7:0] immLong, input immSrc, output reg [15:0] sextOutput );
	always @(immShort, immLong, immSrc)
	begin
		if (immSrc == 1'b0)
			sextOutput = {{13{immShort[2]}},immShort[2:0]};
		else 
			sextOutput = {{8{immLong[7]}},immLong[7:0]};
	end
endmodule 

module mux2to1 (input [16:0] inp1, input [16:0] inp2, input sel, output reg [15:0] muxOut );
	always @(inp1, inp2, sel)
	begin
		if (sel == 1'b0)
			muxOut = inp1;
		else 
			muxOut = inp2;
	end
endmodule

module mux3to1 (input [16:0] inp1,inp2, inp3, input [1:0] sel, output reg [15:0] muxOut);
	always @(inp1, inp2, inp3, sel)
	begin
		if (sel == 2'b00)
			muxOut = inp1;
		else if (sel == 2'b01)
			muxOut = inp2;
		else 
			muxOut = inp3;
	end
endmodule

