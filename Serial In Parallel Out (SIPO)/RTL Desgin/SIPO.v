module SIPO(Dataout,datain,clock,reset);
  input datain;
  input clock,reset;
  output [7:0]Dataout;
 
  wire [7:0]dataout;
  reg [3:0] count;
  reg [7:0]output_ready;
  wire [7:0]delayed_out;

  DFF d1(dataout[0],datain,clock,reset);
  DFF d2(dataout[1],dataout[0],clock,reset);
  DFF d3(dataout[2],dataout[1],clock,reset);
  DFF d4(dataout[3],dataout[2],clock,reset);
  DFF d5(dataout[4],dataout[3],clock,reset);
  DFF d6(dataout[5],dataout[4],clock,reset);
  DFF d7(dataout[6],dataout[5],clock,reset);
  DFF d8(dataout[7],dataout[6],clock,reset);
 
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      count <= 4'b0;
      output_ready <= 8'b0;
    end else begin
      if (count < 4'd8) begin
        count <= count + 1'b11111111;
        output_ready <= 8'b0;
      end else begin
        output_ready <= 8'b11111111;
      end
    end
  end
 
  //assign #10 delayed_out = dataout;
  assign Dataout = dataout & output_ready;

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