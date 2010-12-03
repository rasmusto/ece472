//-----------------------------------------------------------------------------
// Title         : MIPS Single-Cycle Processor
// Project       : ECE 472 - Proj 3
//-----------------------------------------------------------------------------
// File          : mips_single.v
// Author        : John Nestor  <nestorj@lafayette.edu>
// Students      : Ashtyn Moehlenhoff and Torben Rasmussen
// Organization  : Lafayette College/Oregon State University
// 
// Created       : October 2002
// Last modified : 29 October 2010
//-----------------------------------------------------------------------------
// Description :
//   "Single Cycle" implementation of the MIPS processor subset described in
//   Section 5.4 of "Computer Organization and Design, 3rd ed."
//   by David Patterson & John Hennessey, Morgan Kaufmann, 2004 (COD3e).  
//
//   It implements the equivalent of Figure 5.19 on page 309 of COD3e
//
//-----------------------------------------------------------------------------

module mips_single(clk, reset);
    input clk, reset;

    // instruction bus
    wire [31:0] instr;

    // break out important fields from instruction
    wire [5:0] opcode, funct;
    wire [4:0] rs, rt, rd, shamt;
    wire [15:0] immed;
    wire [31:0] extend_immed, b_offset, jumpoffset_shifted;
    wire [25:0] jumpoffset;

    assign opcode = instr[31:26];
    assign rs = instr[25:21];
    assign rt = instr[20:16];
    assign rd = instr[15:11];
    assign shamt = instr[10:6];
    assign funct = instr[5:0];
    assign immed = instr[15:0];
    assign jumpoffset = instr[25:0];

    // sign-extender
    assign extend_immed = { {16{immed[15]}}, immed };
    
    // branch offset shifter
    assign b_offset = extend_immed << 2;

    // datapath signals
    wire [4:0] rfile_wn;
    wire [31:0] rfile_rd1, rfile_rd2, rfile_wd, alu_b, alu_out, b_tgt, pc_next,
                pc, pc_incr, br_add_out, dmem_rdata, jump_in;
    
    // control signals

    wire RegWrite, Branch, PCSrc, PCSrc2, PCSrc_out, RegDst, MemtoReg, MemRead, MemWrite, ALUSrc, Zero, Jump;
    wire [1:0] ALUOp;
    wire [2:0] Operation;

    // module instantiations

    reg32		PC(clk, reset, pc_next, pc);

    add32 		PCADD(pc, 32'd4, pc_incr);

    add32 		BRADD(pc_incr, b_offset, b_tgt);

    reg_file	RFILE(clk, RegWrite, rs, rt, rfile_wn, rfile_rd1, rfile_rd2, rfile_wd); 

    alu 		ALU(Operation, rfile_rd1, alu_b, alu_out, Zero);

    rom32 		IMEM(pc, instr);

    mem32 		DMEM(clk, MemRead, MemWrite, alu_out, rfile_rd2, dmem_rdata);

    and  		BR_AND(PCSrc, Branch, Zero);
    
    and    BR_AND2(PCSrc2, Branch, ~Zero);

    mux2 #(5) 	RFMUX(RegDst, rt, rd, rfile_wn);

    mux2 #(32)	PCMUX(PCSrc_out, pc_incr, b_tgt, jump_in);

    mux2 #(32) ALUMUX(ALUSrc, rfile_rd2, extend_immed, alu_b);

    mux2 #(32)	WRMUX(MemtoReg, alu_out, dmem_rdata, rfile_wd);
    
    mux2 #(1) BRMUX(Branch_Sel, PCSrc, PCSrc2, PCSrc_out); 
    
    //********************************* LAB3 Stuff ************************************
    //JUMP instruction:
    assign jumpoffset_shifted = jumpoffset << 2; //get the jumpoffset * 4 to have the correct jump value    
    mux2 #(32) JMPMUX(Jump, jump_in, jumpoffset_shifted, pc_next);
        
    
    //******************************* END LAB3 Stuff **********************************

    control_single CTL(.opcode(opcode), .RegDst(RegDst), .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), 
                       .RegWrite(RegWrite), .MemRead(MemRead), .MemWrite(MemWrite), .Branch(Branch), 
                       .ALUOp(ALUOp), .Jump(Jump), .Branch_Sel(Branch_Sel));

    alu_ctl 	ALUCTL(ALUOp, funct, Operation);
endmodule
