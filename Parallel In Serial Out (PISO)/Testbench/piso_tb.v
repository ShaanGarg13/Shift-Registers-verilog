module piso_tb();
  reg [7:0]datain;
  reg clock,reset,shift;
  wire dataout;
  PISO uut(dataout,datain,shift,clock,reset);
  initial begin
    clock=0;
    forever #5clock=~clock;
  end
  initial begin
    reset=1;
    @(posedge clock);
    reset=0;
    @(posedge clock);
    shift=0;
    @(posedge clock);
    // data = 10011010 MSB first
    datain[7:0]=8'b10011010;
    @(posedge clock);
    shift=1;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
  end
endmodule