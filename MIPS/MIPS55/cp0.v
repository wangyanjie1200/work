module cp0(A1,A2,A3,WD1,WD2,CP0Wr,HWInt,clk,reset,RD,intr);
  `include "op.v"
  input [4:0] A1;
  input [4:0] A2;
  input [4:0] A3;
  
  input [31:0]WD1;
  
  input [31:0]WD2;
  
  input [1:0] CP0Wr;
  
  input [5:0] HWInt;
  
  input reset;
  
  input clk;
  
  output [31:0] RD;
  
  wire [15:10] hwint_pend;
    
  output intr;
  assign intr=hwint_pend>0;
  
  reg [31:0] RF[31:0];//reg file;
  
  //intrupt mask;
  wire [15:10] im;
  assign im=RF[`CP0_SR][15:10];
  
  wire exl,ie;
  assign exl=RF[`CP0_SR][1];
  assign ie=RF[`CP0_SR][0];

  
  assign RD=RF[A1];
  
  integer i;
  integer j;
  always@(posedge clk)
  begin
    if(reset)
    begin
          for(i=0;i<=31;i=i+1) 
            RF[i]<=0; 
    end
    
    else
    begin
      if(CP0Wr[1])
        RF[A2] <= WD1; 
      if(CP0Wr[0])     
        RF[A3] <= WD2;
        
      for(j=0;j<5;j=j+1)
        if()
    end    

  end
  
  
  
  initial
  begin
        for(i=0;i<=31;i=i+1) 
            RF[i]<=0; 
  end
  
  
endmodule


