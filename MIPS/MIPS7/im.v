module im(addr,dout);
  
  `include "op.v"
  //input clk;
  input [11:2] addr;
  output [31:0] dout;
  reg [31:0] instr[1023:0];
  reg [31:0] ans;
  
  assign dout=instr[addr];   
///  always@(posedge clk)
 //   ans<=instr[addr];
    
    
    
  initial 
  begin   



    /*instr[0]=32'h37180000;
    instr[1]=32'h0c000003;
    instr[2]=32'h0308c020;
    instr[3]=32'h01896020;*/
    instr[0]=32'h37180000;
    instr[1]=32'h35080001;
    instr[2]=32'h35290004;
    instr[3]=32'h358c0024;
    instr[4]=32'h01896023;
    instr[5]=32'h3c0a0110;
    instr[6]=32'had8a0064;
    instr[7]=32'h8d930064;
    instr[8]=32'had980000;
    instr[9]=32'h0308c020;
    instr[10]=32'h01896020;
    instr[11]=32'h1318fffc;
    
    /*instr[0]=32'h00000021;
    instr[1]=32'h00000023;
    instr[2]=32'h8f000000;
    instr[3]=32'haf000000;
    instr[4]=32'h3f000000;
    instr[5]=32'h37000000;
    instr[6]=32'h10000000;
    instr[7]=32'h0f000000;*/
  end
  
endmodule