`timescale 1ns/1ns
module Adress_Generator (
     input [31:0] returnadress,
     input returnM,Int_flush,rst,clk,PCSrcE,StallF,
     //input PCFbar,
     //input [31:0] ImmExt,
     input [31:0] PCPlus4F,PCTargetE,
    output reg [31:0] PCF
);
    reg[31:0] PCFbar;
    always @(*) begin
            PCFbar <= PCSrcE?  PCTargetE : PCPlus4F;
            
        end
    always @(posedge clk) begin
        if (rst)begin
            PCF <= 32'd0;
        end    
        else if(StallF)begin
             PCF <= PCF; 
        end     
       // else if(Int_flush)begin
         //    PCF <= 32'd0; 
        //end     
        else if(returnM)begin
             PCF <= returnadress;
        end                  
        else begin
            PCF <= PCFbar;  
        end      
    end 
    

endmodule