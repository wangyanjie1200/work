module test;
  
  reg clk;
  
  reg reset;
  
  mips55 MIPS(clk,reset);
  
  initial
  begin
    clk=0;
    reset=0;
    
    #1000000 $finish;
  end
  
  always
    #40 clk=~clk;
  
  
endmodule
