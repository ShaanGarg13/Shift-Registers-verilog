module PISO(dataout,datain,shift,clock,reset);
  input [7:0]datain;
  input clock;
  input reset,shift;
  output dataout;
 
  //wire internal_out;
  wire [6:0]w;
  wire [6:0]w2;
  // shift=1 then data shift
  // shift=0 then data load
  DFF d1(w[0],datain[7],clock,reset);
  mux2x1 m1(w2[0],shift,datain[6],w[0]);
 
  DFF d2(w[1],w2[0],clock,reset);
  mux2x1 m2(w2[1],shift,datain[5],w[1]);
 
  DFF d3(w[2],w2[1],clock,reset);
  mux2x1 m3(w2[2],shift,datain[4],w[2]);
 
  DFF d4(w[3],w2[2],clock,reset);
  mux2x1 m4(w2[3],shift,datain[3],w[3]);
 
  DFF d5(w[4],w2[3],clock,reset);
  mux2x1 m5(w2[4],shift,datain[2],w[4]);
 
  DFF d6(w[5],w2[4],clock,reset);
  mux2x1 m6(w2[5],shift,datain[1],w[5]);
 
  DFF d7(w[6],w2[5],clock,reset);
  mux2x1 m7(w2[6],shift,datain[0],w[6]);
 
  DFF d8(dataout,w2[6],clock,reset);
 
  //assign #10 dataout = internal_out;
   
endmodule

module mux2x1(out,S0,I0,I1);
  input I0,I1,S0;
  output out;
  assign out = (~S0)&I0 | S0&I1;
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

