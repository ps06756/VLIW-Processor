// Register File Design
module D_ffC (input clk, input reset, input regWrite, input regWriteDoosra, input decOut1b, input decOut1bDoosra,
                        input d, input dDoosra, output reg q);
        always @ (negedge clk)
        begin
        if(reset==1'b1)
                q=0;
        else
                if(regWrite == 1'b1 && decOut1b==1'b1) begin q=d; end
                else if (regWriteDoosra == 1'b1 && decOut1bDoosra == 1'b1) begin q = dDoosra; end
        end
endmodule
 
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
 
module register8bit( input clk, input reset, input regWrite, input decOut1b, input [7:0] writeData, output  [7:0] outR );
        D_ff d0(clk, reset, regWrite, decOut1b, writeData[0], outR[0]);
        D_ff d1(clk, reset, regWrite, decOut1b, writeData[1], outR[1]);
        D_ff d2(clk, reset, regWrite, decOut1b, writeData[2], outR[2]);
        D_ff d3(clk, reset, regWrite, decOut1b, writeData[3], outR[3]);
        D_ff d4(clk, reset, regWrite, decOut1b, writeData[4], outR[4]);
        D_ff d5(clk, reset, regWrite, decOut1b, writeData[5], outR[5]);
        D_ff d6(clk, reset, regWrite, decOut1b, writeData[6], outR[6]);
        D_ff d7(clk, reset, regWrite, decOut1b, writeData[7], outR[7]);
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
 
module register16bitC( input clk, input reset, input regWrite, input regWriteDoosra, input decOut1b,
                                        input decOut1bDoosra, input [15:0] writeData, input [15:0] writeDataDoosra, output  [15:0] outR );
        D_ffC d0(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[0], writeDataDoosra[0], outR[0]);
        D_ffC d1(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[1], writeDataDoosra[1], outR[1]);
        D_ffC d2(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[2], writeDataDoosra[2], outR[2]);
        D_ffC d3(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[3], writeDataDoosra[3], outR[3]);
        D_ffC d4(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[4], writeDataDoosra[4], outR[4]);
        D_ffC d5(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[5], writeDataDoosra[5], outR[5]);
        D_ffC d6(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[6], writeDataDoosra[6], outR[6]);
        D_ffC d7(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[7], writeDataDoosra[7], outR[7]);
        D_ffC d8(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[8], writeDataDoosra[8], outR[8]);
        D_ffC d9(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[9], writeDataDoosra[9], outR[9]);
        D_ffC d10(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[10], writeDataDoosra[10], outR[10]);
        D_ffC d11(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[11], writeDataDoosra[11], outR[11]);
        D_ffC d12(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[12], writeDataDoosra[12], outR[12]);
        D_ffC d13(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[13], writeDataDoosra[13], outR[13]);
        D_ffC d14(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[14], writeDataDoosra[14], outR[14]);
        D_ffC d15(clk, reset, regWrite, regWriteDoosra, decOut1b, decOut1bDoosra, writeData[15], writeDataDoosra[15], outR[15]);
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
 
module register32bit( input clk, input reset, input regWrite, input decOut1b, input [31:0] writeData, output [31:0] outR );
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
        D_ff d16(clk, reset, regWrite, decOut1b, writeData[16], outR[16]);
        D_ff d17(clk, reset, regWrite, decOut1b, writeData[17], outR[17]);
        D_ff d18(clk, reset, regWrite, decOut1b, writeData[18], outR[18]);
        D_ff d19(clk, reset, regWrite, decOut1b, writeData[19], outR[19]);
        D_ff d20(clk, reset, regWrite, decOut1b, writeData[20], outR[20]);
        D_ff d21(clk, reset, regWrite, decOut1b, writeData[21], outR[21]);
        D_ff d22(clk, reset, regWrite, decOut1b, writeData[22], outR[22]);
        D_ff d23(clk, reset, regWrite, decOut1b, writeData[23], outR[23]);
        D_ff d24(clk, reset, regWrite, decOut1b, writeData[24], outR[24]);
        D_ff d25(clk, reset, regWrite, decOut1b, writeData[25], outR[25]);
        D_ff d26(clk, reset, regWrite, decOut1b, writeData[26], outR[26]);
        D_ff d27(clk, reset, regWrite, decOut1b, writeData[27], outR[27]);
        D_ff d28(clk, reset, regWrite, decOut1b, writeData[28], outR[28]);
        D_ff d29(clk, reset, regWrite, decOut1b, writeData[29], outR[29]);
        D_ff d30(clk, reset, regWrite, decOut1b, writeData[30], outR[30]);
        D_ff d31(clk, reset, regWrite, decOut1b, writeData[31], outR[31]);
endmodule
 
module registerSet( input clk, input reset, input regWrite, input regWriteDoosra, input [7:0] decOut,
                                        input [7:0] decOutDoosra, input [15:0] writeData, input [15:0] writeDataDoosra,
                                        output [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7);
                register16bitC r0 (clk, reset, regWrite, regWriteDoosra, decOut[0] , decOutDoosra[0], writeData , writeDataDoosra, outR0 );
                register16bitC r1 (clk, reset, regWrite, regWriteDoosra, decOut[1] , decOutDoosra[1], writeData , writeDataDoosra, outR1 );
                register16bitC r2 (clk, reset, regWrite, regWriteDoosra, decOut[2] , decOutDoosra[2], writeData , writeDataDoosra,outR2 );
                register16bitC r3 (clk, reset, regWrite, regWriteDoosra, decOut[3] , decOutDoosra[3], writeData , writeDataDoosra,outR3 );
                register16bitC r4 (clk, reset, regWrite, regWriteDoosra, decOut[4] , decOutDoosra[4], writeData ,  writeDataDoosra,outR4 );
                register16bitC r5 (clk, reset, regWrite, regWriteDoosra, decOut[5] , decOutDoosra[5], writeData , writeDataDoosra,outR5 );
                register16bitC r6 (clk, reset, regWrite, regWriteDoosra, decOut[6] , decOutDoosra[6], writeData , writeDataDoosra,outR6 );
                register16bitC r7 (clk, reset, regWrite, regWriteDoosra, decOut[7] , decOutDoosra[7], writeData , writeDataDoosra,outR7 );
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
 
module registerFile(input clk, input reset, input regWrite, input regWriteDoosra, input [2:0] srcRegA
                , input [2:0] srcRegB,
                input [2:0] srcRegC, input [2:0] srcRegD, input [2:0] destReg, input [2:0] destRegDoosra,
                input [15:0] writeData, input [15:0] writeDataDoosra,
                output [15:0] outBusA, output [15:0] outBusB, output [15:0] outBusC, output [15:0] outBusD );
               
        wire [7:0] decOut, decOutDoosra;
        wire [15:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7 ;
        decoder3to8 d0 (destReg,decOut);
        decoder3to8 d1 (destRegDoosra, decOutDoosra);
        registerSet rSet0(clk, reset, regWrite, regWriteDoosra,decOut, decOutDoosra, writeData, writeDataDoosra,outR0,outR1,outR2,outR3,
        outR4,outR5,outR6,outR7) ;
        mux8to1 m1(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegA,outBusA);
        mux8to1 m2(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegB,outBusB);
        mux8to1 m3(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegC,outBusC);
        mux8to1 m4(outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,srcRegD,outBusD);
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
module register_Mem_8(input clk,input reset,input regWrite,input decOut1b,input [7:0]init, input [7:0] d_in, output [7:0] q_out);
        D_ff_Mem dMem0 (clk,reset,regWrite,decOut1b,init[0],d_in[0],q_out[0]);
        D_ff_Mem dMem1 (clk,reset,regWrite,decOut1b,init[1],d_in[1],q_out[1]);
        D_ff_Mem dMem2 (clk,reset,regWrite,decOut1b,init[2],d_in[2],q_out[2]);
        D_ff_Mem dMem3 (clk,reset,regWrite,decOut1b,init[3],d_in[3],q_out[3]);
       
        D_ff_Mem dMem4 (clk,reset,regWrite,decOut1b,init[4],d_in[4],q_out[4]);
        D_ff_Mem dMem5 (clk,reset,regWrite,decOut1b,init[5],d_in[5],q_out[5]);
        D_ff_Mem dMem6 (clk,reset,regWrite,decOut1b,init[6],d_in[6],q_out[6]);
        D_ff_Mem dMem7 (clk,reset,regWrite,decOut1b,init[7],d_in[7],q_out[7]);
       
endmodule
 
module Mem(input clk, input reset,input memWrite,input memRead, input [15:0] pc, input [15:0] dataIn,output [31:0] IR );
        wire [15:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
                                        Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15,decOut;
       
        decoder4to16 dec0( pc[4:1], decOut);
       
        register_Mem r0(clk,reset,memWrite,decOut[0],16'b 00011_10_101_000_100,dataIn,Qout0); //addi #-3,$r0,$r4 = -3
        register_Mem r1(clk,reset,memWrite,decOut[1],16'b 01101_00001_000_101,dataIn,Qout1); //load  $r0(1), $r5
        register_Mem r2(clk,reset,memWrite,decOut[2],16'b 00011_11_001_100_111,dataIn,Qout2); //subi #1,$r4,$r7   = -4
        register_Mem r3(clk,reset,memWrite,decOut[3],16'b 01101_00100_000_110,dataIn,Qout3); // load  $r0(4), $r6
       
        register_Mem r4(clk,reset,memWrite,decOut[4],16'b 00011_10_101_010_111,dataIn,Qout4); //addi #-3,$r2,$r7 = -3
        register_Mem r5(clk,reset,memWrite,decOut[5],16'b11100_00000000010  ,  dataIn,Qout5); //Jmp 2
        register_Mem r6(clk,reset,memWrite,decOut[6],16'b 01000_01100_010_110,dataIn,Qout6);  // and  $r2 $r6 $r6 = 0  
        register_Mem r7(clk,reset,memWrite,decOut[7],16'b 01100_00011_000_100,dataIn,Qout7);  // store $r0(3),$r4 = 0
       
        register_Mem r8(clk,reset,memWrite,decOut[8],16'b 00011_10_101_010_111,dataIn,Qout8); // addi #0 $r2 $r7 = 0
        register_Mem r9(clk,reset,memWrite,decOut[9],16'b 11010_100_11111100,dataIn,Qout9);  // branch eq  -4
        register_Mem r10(clk,reset,memWrite,decOut[10],16'b 011_0000_0000_00001,dataIn,Qout10); //mfhi $r1
        register_Mem r11(clk,reset,memWrite,decOut[11],16'b 100_0000_0000_00111,dataIn,Qout11); //mflo $r7
       
        register_Mem r12(clk,reset,memWrite,decOut[12],16'b 000_0000_0000_00000,dataIn,Qout12); //add $r0,$r0,$r0
        register_Mem r13(clk,reset,memWrite,decOut[13],16'b 110_0000_0110_00000,dataIn,Qout13); //lw $r6,$r0(0)
        register_Mem r14(clk,reset,memWrite,decOut[14],16'b 000_0101_0001_00101,dataIn,Qout14); //add $r5,$r5,$r1
        register_Mem r15(clk,reset,memWrite,decOut[15],16'b 000_0010_0001_00011,dataIn,Qout15); //add $r3,$r2,$r1
       
        mux16to1 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,pc[4:1],IR[15:0]);
        mux16to1 mMem2 (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,pc[4:1]+2'b01,IR[31:16]);
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
 
module mux16to1_8( input [7:0] outR0,outR1,outR2,outR3,outR4,outR5,outR6,outR7,outR8,outR9,outR10,outR11,outR12,outR13,outR14,outR15, input [3:0] Sel, output reg [7:0] outBus );
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
                newPC = pc + 4;
        end
endmodule
 
module adderModule(input [15:0] inp1, input [15:0] inp2, output reg [15:0] adderKaResult);
        always @(inp1, inp2)
        begin  
                adderKaResult = inp1 + inp2;
        end
endmodule
 
module IF_ID(input clk, input reset,input regWrite, input decOut1b,input [31:0] instr, input [15:0] PC,
                        output [15:0] p0_intr, output [15:0] p0_intr2, output [15:0] PCOut);
 
  register16bit PC_reg (clk, reset, regWrite, decOut1b, PC, PCOut);
  register16bit instr_fetch_reg(clk,reset,regWrite,decOut1b,instr[15:0],p0_intr);
  register16bit instr_fetch_reg_2(clk,reset,regWrite,decOut1b,instr[31:16],p0_intr2);
       
endmodule
 
module ID_EX(input clk, input reset,input regWrite, input decOut1b,input [15:0] insFetchOutput, input [15:0] regOut1,input [15:0] regOut2,
                        input [15:0] sExtOut, input [2:0] ctr_Rd, input [1:0] ctr_aluSrcA, input ctr_aluSrcB,
                        input [1:0] ctr_aluOp,input ctr_regWrite,input [15:0] PC, input [15:0] regOut3,
                        input [15:0] regOut4, input [15:0] sExtOutNeecheWaala, input [2:0] RdNeecheWaala, input regWriteNeeche,
                        output [15:0] p1_regOut1,output [15:0] p1_regOut2,output [15:0] p1_sExtOut,
                        output [2:0] p1_Rd, output [1:0]  p1_aluSrcA,output p1_aluSrcB,
                        output [1:0] p1_aluOp, output p1_regWrite, output [15:0] p1_PC,
                        output [15:0] p1_regOut3, output [15:0] p1_regOut4, output [15:0] p1_sExtOutNeecheWaala,
                    output [2:0] p1_RdNeecheWaala, output p1_regWriteNeeche, output [15:0] p1_insFetchOutput);
 
  register16bit regout1_reg(clk,reset,regWrite,decOut1b,regOut1,p1_regOut1);
  register16bit regout2_reg(clk,reset,regWrite,decOut1b,regOut2,p1_regOut2);
  register16bit sext_reg(clk,reset,regWrite,decOut1b,sExtOut,p1_sExtOut);
  register16bit fetchOut_reg(clk,reset,regWrite,decOut1b,insFetchOutput,p1_insFetchOutput);
  register2bit aluSrcA_reg(clk, reset, regWrite, decOut1b, ctr_aluSrcA, p1_aluSrcA);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, ctr_Rd, p1_Rd);
  register1bit aluSrcB_reg(clk,reset,regWrite,decOut1b,ctr_aluSrcB,p1_aluSrcB);
  register2bit aluop_reg(clk,reset,regWrite,decOut1b,ctr_aluOp,p1_aluOp);
  register1bit regwrite_reg(clk,reset,regWrite,decOut1b,ctr_regWrite,p1_regWrite);
  register16bit regout3_reg(clk,reset,regWrite,decOut1b,regOut3,p1_regOut3);
  register16bit regout4_reg(clk,reset,regWrite,decOut1b,regOut4,p1_regOut4);
  register16bit PC_reg(clk,reset,regWrite,decOut1b,PC,p1_PC);
  register16bit signExtNeeche_reg(clk,reset,regWrite,decOut1b,sExtOutNeecheWaala,p1_sExtOutNeecheWaala);
  register3bit Rd_regNeeche (clk, reset, regWrite, decOut1b, RdNeecheWaala, p1_RdNeecheWaala);
  register1bit regWriteNeeche_reg(clk,reset,regWriteNeeche,decOut1b,regWriteNeeche,p1_regWriteNeeche);
 
endmodule
 
module EX_MEM(input clk, input reset,input regWrite, input decOut1b,
   input [15:0] aluOut,input [2:0] p1_Rd, input p1_regWrite,
   input [15:0] p1_outBusD, input [15:0] AluKaOutputNeeche, input p1_memRead, input p1_memWrite,
   input [2:0] p1_RdNeecheWaala, input p1_regWriteNeecheWaala,
   input [15:0] p1_outBusA,input [15:0] p1_outBusB,
        output [15:0] p2_aluOut, output [2:0] p2_Rd, output p2_regWrite,
   output [15:0] p2_outBusD, output [15:0] p2_AluKaOutputNeeche, output p2_memRead, output p2_memWrite,
        output [2:0] p2_RdNeecheWaala, output p2_regWriteNeecheWaala,output [15:0] p2_outBusA,output [15:0] p2_outBusB);
       
  register16bit aluout_reg(clk,reset,regWrite,decOut1b,aluOut,p2_aluOut);
  register1bit p1regwrite_reg(clk,reset,regWrite,decOut1b,p1_regWrite,p2_regWrite);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, p1_Rd, p2_Rd) ;
  register16bit outBusD_reg(clk,reset,regWrite,decOut1b,p1_outBusD,p2_outBusD);
  register16bit AluKaOutputNeeche_reg(clk,reset,regWrite,decOut1b, AluKaOutputNeeche,p2_AluKaOutputNeeche);
  register1bit memRead_reg(clk,reset,regWrite,decOut1b,p1_memRead,p2_memRead);
  register1bit memWrite_reg(clk,reset,regWrite,decOut1b,p1_memWrite,p2_memWrite);
  register3bit RdNeecheWaala_reg(clk,reset,regWrite,decOut1b,p1_RdNeecheWaala,p2_RdNeecheWaala);
  register1bit regWriteNeeche_reg(clk,reset,regWrite,decOut1b,p1_regWriteNeecheWaala,p2_regWriteNeecheWaala);
  register16bit outBusA_reg(clk,reset,regWrite,decOut1b,p1_outBusA,p2_outBusA);
  register16bit outBusB_reg(clk,reset,regWrite,decOut1b,p1_outBusB,p2_outBusB);
endmodule
 
module MEM_WB(input clk, input reset,input regWrite, input decOut1b,
   input [15:0] p2_aluOut,input [2:0] p2_Rd, input p2_regWrite,
        input [7:0] memoryKaOutput, input p2_regWriteNeeche, input [2:0] p2_RdNeecheWaala,
                input [15:0] p2_outBusA,input [15:0] p2_outBusB,
        output [15:0] p3_aluOut, output [2:0] p3_Rd, output p3_regWrite,
        output [7:0] p3_memoryKaOutput, output p3_regWriteNeeche, output [2:0] p3_RdNeecheWaala,output [15:0] p3_outBusA,output [15:0] p3_outBusB);
       
  register16bit aluout_reg(clk,reset,regWrite,decOut1b,p2_aluOut,p3_aluOut);
  register1bit p1regwrite_reg(clk,reset,regWrite,decOut1b,p2_regWrite,p3_regWrite);
  register3bit Rd_reg (clk, reset, regWrite, decOut1b, p2_Rd, p3_Rd) ;
  register8bit memory_Reg (clk, reset, regWrite, decOut1b, memoryKaOutput, p3_memoryKaOutput) ;
  register1bit p2_regWriteNeeche_reg(clk, reset, regWrite, decOut1b, p2_regWriteNeeche, p3_regWriteNeeche) ;
  register3bit p2_RdNeecheWaala_reg(clk, reset, regWrite, decOut1b, p2_RdNeecheWaala, p3_RdNeecheWaala) ;
  register16bit outBusA_reg(clk,reset,regWrite,decOut1b,p2_outBusA,p3_outBusA);
  register16bit outBusB_reg(clk,reset,regWrite,decOut1b,p2_outBusB,p3_outBusB);
 
endmodule
 
module signExtModule (input [4:0] offset5, input [10:0] offset11, input [7:0]  offset8, input [1:0] ctrSignExt,
                                          output reg [15:0] signExtModuleOutput);
        always @(offset5, offset11, offset8, ctrSignExt)
        begin
                if (ctrSignExt == 2'b00)
                        signExtModuleOutput = {{11{offset5[4]}},offset5[4:0]};
                else if (ctrSignExt == 2'b01)
                        signExtModuleOutput = {{5{offset11[10]}},offset11[10:0]};
                else if (ctrSignExt == 2'b10)
                        signExtModuleOutput = {{8{offset8[7]}},offset8[7:0]};
        end
 
endmodule
 
 
module ALU( input [15:0] AluIn1, input [15:0] AluIn2, input [1:0] AluOp, output reg [15:0] AluOut,output reg [3:0] flag);
        always @(AluIn1, AluIn2, AluOp)
        begin
        if (AluOp == 2'b10)
                AluOut = AluIn1 + AluIn2;
        else if (AluOp == 2'b11)
                AluOut = AluIn1 - AluIn2;
        else if (AluOp == 2'b01)
                AluOut = AluIn1 & AluIn2;
                if(AluOut==0) flag[2] = 1; else flag[2] =0;
        end
endmodule
 
module adderforbranch(input [15:0] PC, input [15:0] shiftedvalue, input opcodebit, input zeroflag, output reg [15:0] BranchAddress);
        always@(PC,shiftedvalue, opcodebit, zeroflag)
        begin
                if(zeroflag==1 && opcodebit==1)
                        BranchAddress = PC + shiftedvalue;
                else if(zeroflag==0 && opcodebit==0)
                        BranchAddress = PC + shiftedvalue;
                else
                        BranchAddress = PC + 4;
        end
endmodule
 
module ctrlCkt  ( input [4:0] opcode, input [1:0] funcField, input [4:0] opcodeNeeche,
                                 output reg immSrc, output reg regSrcB, output reg regDestB, output reg [1:0] aluSrcA,
                                 output reg aluSrcB, output reg [1:0] aluOp,output reg regWrite,
                                 output reg regWriteNeeche,
                                 output reg [1:0] signExtNeeche, output reg memRead, output reg memWrite,
                                                                 output reg [1:0] pcmux
                                 );
 
       
        // immSrc goes to sign etender. No mux required before sign extender.
        //regDestB = 0 for Rd [0-2] and 1 for second Rd [8-10]
        // regSrcB = 0 for Rm and 1 for Rd
        //immSrc = 0 for short and 1 for long.
        //aluSrcA = 00 for Rn, 01 for Rm, and 10 for Rd
        // aluSrcB = 0 for Rd and 1 for Imm.
        // aluOp is equal to funcField for Add and Sub, for cmp it is 11 and for and it is 01.
       
       
        // signExtNeeche means 2'b00 for [10:6] and 2'b01 for [10:0], 2'b10 for [7:0]
                // pcmux is added which is 00 for normal pc add , 01 for jump , and 10 for branch
        always@(opcode, opcodeNeeche, funcField)
        begin
          case(opcode)
              5'b00011: begin immSrc = 0; regSrcB = 0 ; regDestB = 0; aluSrcA = 2'b00; aluSrcB = 1; aluOp = funcField; regWrite = 1; end
              5'b01000: begin regDestB = 0; regSrcB = 0; aluSrcA = 2'b01; aluSrcB = 0; aluOp = 2'b01; regWrite = 1; end
              5'b00111: begin immSrc = 1; regSrcB = 1; regDestB = 1; aluSrcA = 2'b10 ; aluSrcB = 1; aluOp = 2'b11; regWrite = 0; end
          endcase
          case (opcodeNeeche)
              5'b01101: begin memRead = 1; memWrite = 0; regWriteNeeche = 1; signExtNeeche = 2'b00; pcmux = 00; end
              5'b01100: begin memWrite = 1; memRead = 0; regWriteNeeche = 0; signExtNeeche = 2'b00; pcmux = 00; end
                          5'b11100 : begin memWrite = 0; memRead = 0; regWriteNeeche = 0; signExtNeeche = 2'b01; pcmux = 01; end
                          5'b11010 : begin memWrite = 0;memRead = 0; regWriteNeeche = 0; signExtNeeche = 2'b10; pcmux = 10; end
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
 
module mux2to1 (input [2:0] inp1, input [2:0] inp2, input sel, output reg [2:0] muxOut );
        always @(inp1, inp2, sel)
        begin
                if (sel == 1'b0)
                        muxOut = inp1;
                else
                        muxOut = inp2;
        end
endmodule
 
module mux2to1_16 (input [15:0] inp1, input [15:0] inp2, input sel, output reg [15:0] muxOut );
        always @(inp1, inp2, sel)
        begin
                if (sel == 1'b0)
                        muxOut = inp1;
                else
                        muxOut = inp2;
        end
endmodule
 
module mux3to1 (input [15:0] inp1,inp2, inp3, input [1:0] sel, output reg [15:0] muxOut);
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
 
module PCMux3to1 (input [15:0] inp1,inp2, inp3, input [1:0] sel, output reg [15:0] muxOut);
        always @(inp1, inp2, inp3, sel)
        begin
                if (sel == 2'b01)
                        muxOut = inp2;
                else if (sel == 2'b10)
                        muxOut = inp3;
                else
                        muxOut = inp1;
        end
endmodule
 
module forwardingUnit(input [2:0] presentRs,input [2:0] presentRt, input [2:0] exmemRd, input [2:0] memwbRd,input exmemregwrite, input memwbregwrite,output reg [1:0] muxsourcea);
always@(presentRs,presentRt,exmemRd,memwbRd,exmemregwrite,memwbregwrite)
begin
        if(exmemregwrite == 1 && exmemRd == presentRs)
                muxsourcea = 2'b01;
        else
        begin
                if( memwbregwrite == 1 && memwbRd == presentRs)
                        muxsourcea = 2'b10;
                else
                        muxsourcea = 2'b00;
        end
       /*  if(exmemregwrite == 1 && exmemRd == presentRt)
                muxsourceb = 2'b01;
        else
        begin
                if( memwbregwrite == 1 && memwbRd == presentRt)
                        muxsourceb = 2'b10;
                else
                        muxsourceb = 2'b00;
        end */
end
endmodule
 
module processor(input clk, input reset, output [15:0] Result, output [7:0] Result2, output reg [31:0]  memoryOutput);
 
        wire [15:0] PCAdd, PCResult, sextOut, insFetchOut, insFetchOutNeeche, outBusA, outBusB, p1_outBusA, p1_outBusB, p1_sextOut, AluKaOutput;
        wire [15:0] p2_aluKaOutput, p3_aluKaOutput, aluTempB, teeninputwalamux, PCResultOutput;
        wire [15:0] outBusC, outBusD, signExtModuleOutput, p1_outBusC, p1_outBusD, p1_signExtModuleOutput,p2_outBusA,p2_outBusB,fout1,fout2,p3_outBusA,p3_outBusB;
        wire [15:0] p1_PCOut, execAdderKaOutput, p2_outBusD, p2_execAdderKaOutput,pcmuxkaOutput,PCBranch, p1_insFetchOut;
        wire immSrc, regSrcB, regDestB, aluSrcB, regWrite, p1_aluSrcB, p1_regWrite, p2_regWrite, p3_regWrite;
        wire regWriteNeeche, memRead, memWrite, p1_regWriteNeeche, p2_memRead, p2_memWrite, p2_regWriteNeeche;
        wire p3_regWriteNeeche;
        wire [1:0] aluSrcA, aluOp, toReg, p1_aluSrcA, p1_aluOp, p1_toReg, p2_toReg, p3_toReg, signExtNeeche,pcmux,fmuxsourcea,fmuxsourceb;
        wire [2:0] regDestMuxOut, regSrcBMuxOut, p1_Rd, p2_Rd, p3_Rd,p1_RdNeeche, p2_RdNeeche, p3_RdNeeche;
        wire [31:0] MemorykaOutput, insMemOut;
        wire [7:0] dataMemOut;
        wire [3:0] flags;
       
        always @(insMemOut)
        begin
                memoryOutput = insMemOut;
        end
        // Here my pcadder adds 4 to value in PCResult and store it in PCAdd , my mux selects between PCAdd, PCJump and PCBranch and store it in pcmuxkaoutput, which is stored in register
        pcAdder pcAdd(PCResult,PCAdd);
        PCMux3to1 pcwaalamux(PCAdd,PCResultOutput + (signExtModuleOutput<<1),PCBranch,pcmux,pcmuxkaOutput);
        register16bit registerPC(clk,reset,1'b1,1'b1,pcmuxkaOutput,PCResult);
               
        Mem mem(clk,reset,1'b0,1'b1, PCResult, 16'd0, insMemOut );
        ctrlCkt ctrl(insFetchOut[15:11],insFetchOut[10:9], insFetchOutNeeche[15:11], immSrc, regSrcB, regDestB, aluSrcA, aluSrcB, aluOp, regWrite,
                regWriteNeeche, signExtNeeche,memRead, memWrite,pcmux);
                               
        IF_ID if_id(clk, reset,1'b1, 1'b1,insMemOut, PCAdd, insFetchOut, insFetchOutNeeche, PCResultOutput);
               
        adderforbranch addingbranch(PCResultOutput,signExtModuleOutput<<1 , insFetchOutNeeche[14] , flags[2] , PCBranch);
               
        mux2to1 regDestMux(insFetchOut[2:0], insFetchOut[10:8], regDestB, regDestMuxOut);
        mux2to1 regSrcBMux(insFetchOut[5:3], insFetchOut[2:0], regSrcB, regSrcBMuxOut);
        signExt sext(insFetchOut[8:6], insFetchOut[7:0], immSrc, sextOut );
        registerFile regFile(clk, reset, p3_regWrite, p3_regWriteNeeche, insFetchOut[5:3], regSrcBMuxOut,
                                                 insFetchOutNeeche[5:3], insFetchOutNeeche[2:0], p3_Rd, p3_RdNeeche, Result, {8'd0,Result2},
                                                 outBusA, outBusB, outBusC,outBusD );
        signExtModule signExtM(insFetchOutNeeche[10:6], insFetchOutNeeche[10:0], insFetchOutNeeche[7:0],
                                                  signExtNeeche, signExtModuleOutput);
        ID_EX id_ex(clk, reset, 1'b1, 1'b1, insFetchOut,outBusA, outBusB,sextOut, regDestMuxOut, aluSrcA, aluSrcB, aluOp,regWrite,
                                PCResultOutput, outBusC, outBusD, signExtModuleOutput, insFetchOutNeeche[2:0], regWriteNeeche,
                                p1_outBusA, p1_outBusB, p1_sextOut,p1_Rd, p1_aluSrcA, p1_aluSrcB,p1_aluOp,p1_regWrite,
                p1_PCOut, p1_outBusC, p1_outBusD, p1_signExtModuleOutput, p1_RdNeeche, p1_regWriteNeeche, p1_insFetchOut);
        mux3to1 threetoonemux(p1_outBusA,p1_outBusB,p1_outBusB,p1_aluSrcA, teeninputwalamux);
        mux2to1_16 regTempMux (p1_outBusB, p1_sextOut, p1_aluSrcB, aluTempB);
        //This is Forwarding Unit
        forwardingUnit thisisforwarding(p1_insFetchOut[5:3],p1_insFetchOut[5:3],p2_Rd,p3_Rd,p2_regWrite,p3_regWrite,fmuxsourcea);   
        mux3to1 for_fmuxsourcea(teeninputwalamux,p2_aluKaOutput,p3_outBusA,fmuxsourcea,fout1);
       // mux3to1 for_fmuxsourceb(aluTempB,p2_outBusB,p3_outBusB,fmuxsourceb,fout2);
        ALU alu( fout1, aluTempB, p1_aluOp, AluKaOutput,flags);
               
        adderModule execAdder(p1_outBusC, p1_signExtModuleOutput, execAdderKaOutput);
        EX_MEM ex_mem(clk, reset, 1'b1, 1'b1, AluKaOutput, p1_Rd, p1_regWrite, p1_outBusD,
                                  execAdderKaOutput, memRead, memWrite, p1_RdNeeche, p1_regWriteNeeche, p1_outBusA, p1_outBusB,
                                  p2_aluKaOutput, p2_Rd, p2_regWrite, p2_outBusD, p2_execAdderKaOutput,
                                  p2_memRead, p2_memWrite, p2_RdNeeche, p2_regWriteNeeche,p2_outBusA,p2_outBusB);
        dataMemActual dataMem(clk, reset,p2_memWrite,p2_memRead, p2_execAdderKaOutput, p2_outBusD[7:0] ,dataMemOut );
        MEM_WB mem_wb(clk, reset,1'b1, 1'b1, p2_aluKaOutput, p2_Rd, p2_regWrite,
                                   dataMemOut, p2_regWriteNeeche, p2_RdNeeche, p2_outBusA, p2_outBusB, Result, p3_Rd, p3_regWrite, Result2, p3_regWriteNeeche,p3_RdNeeche, p3_outBusA, p3_outBusB );
endmodule
 
 
module dataMem(input clk,input reset,input regWrite,input decOut1b,input [7:0]init, input [7:0] d_in, output [7:0] q_out);
        D_ff_Mem dMem0 (clk,reset,regWrite,decOut1b,init[0],d_in[0],q_out[0]);
        D_ff_Mem dMem1 (clk,reset,regWrite,decOut1b,init[1],d_in[1],q_out[1]);
        D_ff_Mem dMem2 (clk,reset,regWrite,decOut1b,init[2],d_in[2],q_out[2]);
        D_ff_Mem dMem3 (clk,reset,regWrite,decOut1b,init[3],d_in[3],q_out[3]);
       
        D_ff_Mem dMem4 (clk,reset,regWrite,decOut1b,init[4],d_in[4],q_out[4]);
        D_ff_Mem dMem5 (clk,reset,regWrite,decOut1b,init[5],d_in[5],q_out[5]);
        D_ff_Mem dMem6 (clk,reset,regWrite,decOut1b,init[6],d_in[6],q_out[6]);
        D_ff_Mem dMem7 (clk,reset,regWrite,decOut1b,init[7],d_in[7],q_out[7]);
       
endmodule
 
module dataMemActual(input clk, input reset,input memWrite,input memRead, input [15:0] address, input [7:0] dataIn,output [7:0] memOut );
        wire [7:0] Qout0, Qout1, Qout2, Qout3, Qout4, Qout5, Qout6, Qout7,
                                        Qout8, Qout9, Qout10, Qout11, Qout12, Qout13, Qout14, Qout15;
        wire [15:0] decOut;
       
        decoder4to16 dec0( address[3:0], decOut);
       
        register_Mem_8 r0(clk,reset,memWrite,decOut[0],8'b0000_0101,dataIn,Qout0);
        register_Mem_8 r1(clk,reset,memWrite,decOut[1],8'b0000_1101,dataIn,Qout1);
        register_Mem_8 r2(clk,reset,memWrite,decOut[2],8'b1000_0000,dataIn,Qout2);
        register_Mem_8 r3(clk,reset,memWrite,decOut[3],8'b1100_0000,dataIn,Qout3);
       
        register_Mem_8 r4(clk,reset,memWrite,decOut[4],8'b0000_0000,dataIn,Qout4);
        register_Mem_8 r5(clk,reset,memWrite,decOut[5],8'b0000_0000,dataIn,Qout5); //mflo $r9
        register_Mem_8 r6(clk,reset,memWrite,decOut[6],8'b0000_0000,dataIn,Qout6); //add $r10,$r5,$r5
        register_Mem_8 r7(clk,reset,memWrite,decOut[7],8'b0000_0000,dataIn,Qout7);  //addi $r4,$r0,4
       
        register_Mem_8 r8(clk,reset,memWrite,decOut[8],8'b0000_0000,dataIn,Qout8); //sw $r5,$r0(0)
        register_Mem_8 r9(clk,reset,memWrite,decOut[9],8'b0000_0000,dataIn,Qout9); //div $r8,$r2
        register_Mem_8 r10(clk,reset,memWrite,decOut[10],8'b0000_0000,dataIn,Qout10); //mfhi $r1
        register_Mem_8 r11(clk,reset,memWrite,decOut[11],8'b0000_0000,dataIn,Qout11); //mflo $r7
       
        register_Mem_8 r12(clk,reset,memWrite,decOut[12],8'b0000_0000,dataIn,Qout12);   //add $r0,$r0,$r0
        register_Mem_8 r13(clk,reset,memWrite,decOut[13],8'b0000_0000,dataIn,Qout13); //lw $r6,$r0(0)
        register_Mem_8 r14(clk,reset,memWrite,decOut[14],8'b0000_0000,dataIn,Qout14); //add $r5,$r5,$r1
        register_Mem_8 r15(clk,reset,memWrite,decOut[15],8'b0000_0000,dataIn,Qout15); //add $r3,$r2,$r1
       
        mux16to1_8 mMem (Qout0,Qout1,Qout2,Qout3,Qout4,Qout5,Qout6,Qout7,Qout8,Qout9,Qout10,Qout11,Qout12,Qout13,Qout14,Qout15,address[3:0],memOut);
endmodule
 
module processorKiTestBench;
        reg clk;
        reg reset;
        wire [15:0] Result;
        wire [7:0] Result2;
        wire [31:0] memoryOutput;
        processor uut (.clk(clk), .reset(reset), .Result(Result), . Result2(Result2), .memoryOutput(memoryOutput));
 
        always
        #5 clk=~clk;
       
        initial
        begin
                clk=0; reset=1;
                #10  reset=0;  
               
                #140 $finish;
        end
endmodule