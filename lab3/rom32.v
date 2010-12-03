//-----------------------------------------------------------------------------
// Title         : Read-Only Memory (Instruction ROM)
// Project       : ECE 313 - Computer Organization
//-----------------------------------------------------------------------------
// File          : rom32.v
// Author        : John Nestor  <nestorj@lafayette.edu>
// Organization  : Lafayette College
// 
// Created       : October 2002
// Last modified : 7 January 2005
//-----------------------------------------------------------------------------
// Description :
//   Behavioral model of a read-only memory used in the implementations of the MIPS
//   processor subset described in Ch. 5-6 of "Computer Organization and Design, 3rd ed."
//   by David Patterson & John Hennessey, Morgan Kaufmann, 2004 (COD3e).  
//
//   Note the use of the Verilog concatenation operator to specify different
//   instruction fields in each memory element.
//
//-----------------------------------------------------------------------------

module rom32(address, data_out);
  input  [31:0] address;
  output [31:0] data_out;
  reg    [31:0] data_out;

  parameter BASE_ADDRESS = 25'd0; // address that applies to this memory

  wire [4:0] mem_offset;
  wire address_select;

  assign mem_offset = address[6:2];  // drop 2 LSBs to get word offset

  assign address_select = (address[31:7] == BASE_ADDRESS);  // address decoding

  always @(address_select or mem_offset)
  begin
    if ((address % 4) != 0) $display($time, " rom32 error: unaligned address %d", address);
    if (address_select == 1)
    begin
      case (mem_offset) 
        //5'd0 : data_out = { 6'd35, 5'd0, 5'd1, 16'd4 };              // lw $1, 4($0)    r1=1
       // 5'd1 : data_out = { 6'd35, 5'd0, 5'd2, 16'd8 };              // lw $2, 8($0)    r2=2
        5'd0 : data_out = { 32'h20090000 };
        5'd1 : data_out = { 32'h200a0004 };
        5'd2 : data_out = { 32'h21290001 };
        5'd3 : data_out = { 32'h152afffe };
        5'd4 : data_out = { 32'h08000000 };
          //5'd0 : data_out = { 6'd35, 5'd0, 5'd1, 16'd4 };              // lw $1, 4($0)    r1=1
          //5'd1 : data_out = { 6'd35, 5'd0, 5'd2, 16'd8 };              // lw $2, 8($0)    r2=2
          //5'd2  : data_out = { 6'b001000, 5'd2, 5'd2, 16'd3 };         // addi $2, $2, 4  r2+=3
          //5'd3  : data_out = { 6'b001000, 5'd1, 5'd1, 16'd1 };         // addi $1, $1, 1  r1+=1
          //5'd4  : data_out = { 6'd5, 5'd1, 5'd2, -16'd2};              // bne $1, $2, -2 (if $1 != $2 goto: 5'd3)
          //5'd5  : data_out = { 6'd2, 26'd0 };                          // j 0; restart loop
          default data_out = 32'hxxxx;
      endcase
      $display($time, " reading data: rom32[%h] => %h", address, data_out);
    end
  end 
endmodule

