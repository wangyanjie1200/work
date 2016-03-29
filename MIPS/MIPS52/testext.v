module  testext;
   
    
        
    reg [15:0] Imm16;
    
    reg [1:0] ExtOp;
    
    wire [31:0] Imm32;
    
    
    // instantiate the controller module
   ext U_EXT( Imm16,ExtOp,Imm32 ) ;
 
    initial
    begin
        
        Imm16=16'b1100-0000-1000-1111;
        
        #80 ExtOp=2'b00;        

        #80 ExtOp=2'b01;      
        
        #80 ExtOp=2'b10; 
        
    end
    
  
endmodule




