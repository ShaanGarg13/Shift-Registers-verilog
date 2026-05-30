module pipo_tb();
  reg [7:0]datain;
  reg clock,reset;
  wire [7:0]dataout;
  PIPO uut(dataout,datain,clock,reset);
  initial begin
    clock=0;
    forever #5clock=~clock;
  end
  initial begin
    reset=1;
    @(posedge clock);
    // data = 10011010 MSB first
    datain[7:0]=8'b10011010;
    #10
    reset=0;
    #150;
  end
endmodule