module SISO(dataout, datain, clock, reset);
 
  input datain;
  input clock, reset;
  output dataout;
 
  wire [6:0] w;

  // DFFs Chain 
  DFF d1(w[0], datain, clock, reset);
  DFF d2(w[1], w[0],  clock, reset);
  DFF d3(w[2], w[1],  clock, reset);
  DFF d4(w[3], w[2],  clock, reset);
  DFF d5(w[4], w[3],  clock, reset);
  DFF d6(w[5], w[4],  clock, reset);
  DFF d7(w[6], w[5],  clock, reset);
  DFF d8(dataout, w[6], clock, reset); // Direct link to output port

endmodule

module DFF(q, d, clk, rst);
  input d, clk, rst;
  output reg q;
  always @(posedge clk or posedge rst) begin
    if (rst == 1)
      q <= 0;
    else
      q <= d;
  end
endmodule
