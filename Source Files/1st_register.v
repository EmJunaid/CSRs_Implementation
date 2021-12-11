`timescale 1ns/1ns
module first_register (
    input Int_flush,
    input clk,rst,StallD,FlushD,
    input [31:0] instruction,PCInt,PCPlus4F,
    output reg [31:0] instrD, PCD,PCPlus4D
);
    always @(posedge clk) begin
        if (rst) begin
           instrD <= 32'd0;
            PCD <= 32'd0;
            PCPlus4D <= 32'd0;
        end
        else if (StallD) begin
            instrD <= instrD;
            PCD <= PCD;
            PCPlus4D <= PCPlus4D;
        end
        else if (FlushD) begin
            instrD <= 32'd0;
            PCD <= 32'd0;
            PCPlus4D <= 32'd0;
        end
        //else if (Int_flush) begin
          //  instrD <= 32'd0;
            //PCD <= 32'd0;
             //PCPlus4D <= 32'd0;
         //end
        
        else begin
            instrD <= instruction;
            PCD <= PCInt;
            PCPlus4D <= PCPlus4F;
        end
        
    end
    
endmodule