module PIPO(dataout,datain,clock,reset);
  input [7:0]datain;
  input clock,reset;
  output [7:0]dataout;
  DFF d1(dataout[7],datain[7],clock,reset);
  DFF d2(dataout[6],datain[6],clock,reset);
  DFF d3(dataout[5],datain[5],clock,reset);
  DFF d4(dataout[4],datain[4],clock,reset);
  DFF d5(dataout[3],datain[3],clock,reset);
  DFF d6(dataout[2],datain[2],clock,reset);
  DFF d7(dataout[1],datain[1],clock,reset);
  DFF d8(dataout[0],datain[0],clock,reset);
endmodule

module DFF(q,d,clk,rst);
  input d,clk,rst;
  output reg q;
  always @(posedge clk or posedge rst)
    begin
      if (rst==1)
        q<=0;
      else
        q<=d;
    end
endmodule