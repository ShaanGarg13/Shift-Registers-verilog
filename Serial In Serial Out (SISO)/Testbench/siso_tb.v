module siso_tb();
  reg datain,clock,reset;
  wire dataout;
  SISO uut(dataout,datain,clock,reset);
  initial begin
    clock=1;
    forever #5clock=~clock;
  end
  initial begin
    // initialization
//     datain=1'b0;
    reset=1;
    #15;
    reset=0;
    // data = 10011010 MSB first (9A)
    // data load start
    @(posedge clock);
    datain=1'b1;
    @(posedge clock);
    datain=1'b0;
    @(posedge clock);
    datain=1'b0;
    @(posedge clock);
    datain=1'b1;
    @(posedge clock);
    datain=1'b1;
    @(posedge clock);
    datain=1'b0;
    @(posedge clock);
    datain=1'b1;
    @(posedge clock);
    datain=1'b0;
    //data load end
//     @(posedge clock); // buffer
    // data out start
//     datain = 1'b0;
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    @(posedge clock);
    // data out end
    $finish;
  end
endmodule