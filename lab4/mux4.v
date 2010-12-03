//4-to-1 MUX://
module mux4(sel, a, b, c, d, y);
  input [31:0] a,b,c,d;
  input [1:0] sel;
  output [31:0] y;
  reg [31:0] y;

  always@(*)
  case (sel)
    2'd0:  y=a;
    2'd1:  y=b;
    2'd2:  y=c;
    2'd3:  y=d;
  default: $display("Error in selection");
  endcase
endmodule