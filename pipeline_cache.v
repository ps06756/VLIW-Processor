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

module instructionMem(input clk, input reset,input memWrite,input memRead, input [15:0] pc, input [15:0] dataIn,output [15:0] IR );
	wire [15:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
					Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,decOut;	
	decoder4to16 dec0( pc[4:1], decOut);	
	register_Mem r0(clk,reset,memWrite,decOut[0],16'b 01101_00000_000_001,dataIn,Qout0); //ldrb $1 $0, 0
	register_Mem r1(clk,reset,memWrite,decOut[1],16'b 01100_00000_001_010,dataIn,Qout1); //swrb $2, $1, 0
	mux16to1 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,pc[4:1],IR);
endmodule

// We will verify the no of bits used in memory and cache afterwards. 
module dataMem (input clk, input reset, input memWrite, input memRead, input [15:0] address);
//Memory Design Ends
endmodule
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


// Used in Data Memory
module register8bit (input clk, input reset, input regWrite, input decOut1b, input [7:0] writeData, output [7:0] outR);
D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
	D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
	D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
	D_ff d4(clk, reset, regWrite, decOut1b, writeData[4], outR[4]);
	D_ff d5(clk, reset, regWrite, decOut1b, writeData[5], outR[5]);
	D_ff d6(clk, reset, regWrite, decOut1b, writeData[6], outR[6]);
	D_ff d7(clk, reset, regWrite, decOut1b, writeData[7], outR[7]);
	D_ff d8(clk, reset, regWrite, decOut1b, writeData[8], outR[8]);
endmodule

// Used in Instruction memory
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

module registerSet( input clk, input reset, input regWrite, input [7:0] decOut, input [7:0] writeData,  output [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
		register16bit r0 (clk, reset, 1'b0    , decOut[0] , writeData , outR0 );
		register16bit r1 (clk, reset, regWrite, decOut[1] , writeData , outR1 );
		register16bit r2 (clk, reset, regWrite, decOut[2] , writeData , outR2 );
		register16bit r3 (clk, reset, regWrite, decOut[3] , writeData , outR3 );
		register16bit r4 (clk, reset, regWrite, decOut[4] , writeData , outR4 );
		register16bit r5 (clk, reset, regWrite, decOut[5] , writeData , outR5 );
		register16bit r6 (clk, reset, regWrite, decOut[6] , writeData , outR6 );
		register16bit r7 (clk, reset, regWrite, decOut[7] , writeData , outR7 );
endmodule

module decoder3to16( input [2:0] destReg, output reg [7:0] decOut);
	always@(destReg)
	case(destReg)
		3'b000: decOut = 8'b00000001;
		3'b001: decOut = 8'b00000010;
		3'b010: decOut = 8'b00000100;
		3'b011: decOut = 8'b00001000;
		3'b100: decOut = 8'b00010000;
		3'b101: decOut = 8'b00100000;
		3'b110: decOut = 8'b01000000;
		3'b111: decOut = 8'b10000000;
	endcase
endmodule

// Internal mux used in RegFile
module mux8to1( input [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,input [2:0] Sel, output reg [15:0] outBus );
	always@(outR0 or outR1 or outR2 or outR3 or outR4 or outR5 or outR6 or outR7 or Sel)
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
endmodule

// Register File
module registerFile(input clk, input reset, input regWrite, input [2:0] srcRegA, input [2:0] srcRegB, 
		input [2:0] destReg,  input [15:0] writeData, output [15:0] outBusA, output [15:0] outBusB );
	wire [7:0] decOut;
	wire [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7;
	decoder3to16 d0 (destReg,decOut);
	registerSet rSet0(clk, reset, regWrite, decOut, writeData, outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
	mux8to1 m1(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegA,outBusA);
	mux8to1 m2(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegB,outBusB);
endmodule



//Register 4 bits
module register4bit( input clk, input reset, input regWrite, input decOut1b, input [3:0] writeData, output  [3:0] outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
	D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
	D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
endmodule

//Register 1 bit
module register1bit( input clk, input reset, input regWrite, input decOut1b, input writeData, output outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData, outR);
endmodule

//Register 2 bits
module register2bit( input clk, input reset, input regWrite, input decOut1b, input [1:0]writeData, output [1:0] outR );
	D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
	D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
endmodule

module adder(input [15:0] in1, input [15:0] in2, output reg [15:0] adder_out);
	always@(in1 or in2)
		adder_out = in1 +in2;
endmodule

module zeroExtend8to16 (input [7:0] data, output reg [15:0] zeroExtData);
	zeroExtData = {8{0}, data[7:0]};
endmodule

module signExt5to16( input [4:0] offset, output reg [15:0] signExtOffset);
	always@(offset)
	begin
			signExtOffset={{11{offset[4]}},offset[4:0]};
	end
endmodule

module mux2to1_16bits(input [15:0] in1, input [15:0] in2, input sel, output reg [15:0] muxout);
	 always@(in1 or in2 or sel)
	 begin
		case(sel)
			2'b0 : muxout = in1;
			2'b1 : muxout = in2;			
		endcase
	 end
endmodule

module mux2to1_4bits(input [3:0] in1, input [3:0] in2, input sel, output reg [3:0] muxout);
	 always@(in1 or in2 or sel)
	 begin
		case(sel)
			0 : muxout = in1;
			1 : muxout = in2;
		endcase
	 end
endmodule


module alu(input [15:0] aluIn1, input [15:0] aluIn2, input [1:0] aluOp, output reg [15:0] aluOut);
	always@(aluIn1 or aluIn2 or aluOp)
	begin
		case(aluOp)
			2'b00: aluOut = aluIn1 + aluIn2;
			2'b01: aluOut = aluIn1 - aluIn2;
			3'b10: aluOut = aluIn1 & aluIn2;
			3'b11: aluOut = aluIn1 << aluIn2; 
		endcase
	end
endmodule

module mux4to1_16bits(input [15:0] in1, input [15:0] in2, input [15:0] in3,input [15:0] in4, input [1:0] sel, output reg [15:0] muxout);
	 always@(in1 or in2 or in3 or in4 or sel)
	 begin
		case(sel)
			2'b00 : muxout = in1;
			2'b01 : muxout = in2;
			2'b10 : muxout = in3;
			2'b11 : muxout = in4;
		endcase
	 end
endmodule


module ctrlCkt	( 	input [2:0] opcode, output reg aluSrcB, output reg [1:0] aluOp, output reg hiWrite, output reg loWrite, output reg regDst, output reg memRead, output reg memWrite,output reg regWrite, output reg[1:0] toReg);
	
	//Write your code here
	
endmodule

module IF_ID(input clk, input reset,input regWrite, input decOut1b,input [15:0] instr, output [15:0] p0_intr);

	//Write your code here
	
endmodule

module ID_EX(input clk, input reset,input regWrite, input decOut1b,input [15:0] regOut1,input [15:0] regOut2,
  input [15:0] sExtOut,input [3:0] inst_Rt,input [3:0] inst_Rd,input ctr_aluSrcB,input [1:0] ctr_aluOp, input ctr_hiWrite, input ctr_loWrite, 
  input ctr_regDst, input ctr_memRead, input ctr_memWrite,input ctr_regWrite, input[1:0] ctr_toReg,
  output [15:0] p1_regOut1,output [15:0] p1_regOut2,output [15:0] p1_sExtOut,output [3:0] p1_rt,output [3:0] p1_rd,
  output p1_aluSrcB, output [1:0] p1_aluOp, output p1_hiWrite, output p1_loWrite, output p1_regDst, output p1_memRead,
  output p1_memWrite,output p1_regWrite, output[1:0] p1_toReg);

	//Write your code here
	
endmodule

module EX_MEM(input clk, input reset,input regWrite, input decOut1b,input [15:0] hiOut, input [15:0] loOut,
   input [15:0] aluOut,input [15:0] p1_regOut2,input [3:0] mux4bOut,input p1_memRead, input p1_memWrite,input p1_regWrite,
	input[1:0] p1_toReg,output[15:0] p2_hiOut,output [15:0] p2_loOut,output [15:0] p2_aluOut,
	output [15:0] p2_regOut2,output[3:0] p2_mux4bOut,output p2_memRead, output p2_memWrite,
	output p2_regWrite, output[1:0] p2_toReg );
	
	//Write your code here
	
endmodule

module MEM_WB(input clk, input reset,input regWrite, input decOut1b,input [15:0] p2_hiOut, input [15:0] p2_loOut,
   input [15:0] p2_aluOut,input [15:0] memOut,input [3:0] p2_mux4bOut,input p2_regWrite,input[1:0] p2_toReg,
	output[15:0] p3_hiOut,output [15:0] p3_loOut,output [15:0] p3_aluOut,
	output [15:0] p3_memOut,output[3:0] p3_mux4bOut,output p3_regWrite, output[1:0] p3_toReg );

	//Write your code here

	endmodule

//topModule
module pipeline(input clk, input reset, output [15:0] Result );
	
	//Write your code here
	
endmodule

module pipelineTestBench;
	reg clk;
	reg reset;
	wire [15:0] Result;
	pipeline uut (.clk(clk), .reset(reset), .Result(Result));

	always
	#5 clk=~clk;
	
	initial
	begin
		clk=0; reset=1;
		#10  reset=0;	
		
		#210 $finish; 
	end
endmodule

