module  testCtr;
    //
    reg  clk ;
        
    reg [31:0] IR;
    

  

  
  reg Zero;
  
  wire PCWr,IRWr,RFWr,DMWr,Bsel;
  
  wire [1:0] WDSel;
  
  wire [1:0] RegSel;
  
  wire [1:0] ExtOp;
  
  wire [3:0] ALUop;
  
  wire [1:0] NPCOp;
  
  wire  [3:0] Be;
    
    // instantiate the controller module
   controller U_CTRL( clk,IR,Zero,PCWr,IRWr,RegSel,ExtOp,RFWr,WDSel,DMWr,ALUop,NPCOp,Bsel,Be ) ;
 
    initial
    begin
        
        clk= 0 ;
        
        Zero=1;  
        
       /* #400 IR=32'h00000021;
        #400 IR=32'h00000023;
        #400 IR=32'h8f000000;
        #400 IR=32'haf000000;
        #400 IR=32'h3f000000;
        #400 IR=32'h37000000;
        #400 IR=32'h10000000;
        #400 IR=32'h0f000000;*/
        
             IR=32'h00430820;
        #400 IR=32'h00841022;
        #400 IR=32'h1d20fffe;
        #400 IR=32'h002a0018;
        #400 IR=32'h80620064;
        #400 IR=32'ha4690064;
        #400 IR=32'h00400008;
        #400 IR=32'h40091000;
        #400 IR=32'h40812800;
                          
        
        #3600 $finish ;
    end
    
    always  
        #40 clk = ~clk ;

endmodule

