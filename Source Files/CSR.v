`timescale 1ns/1ns
module csr (
    input clk,
    input [0:31] PCM,
    input interupt,returnM,
    output reg Int_sel,Int_flush,
    output reg [0:31] PC_Int,returnadress
);
    //reg [31:0] returnadress;
    wire [31:0] handleradress;
    reg [31:0] save;
    always @(*)begin
        save[0] <= interupt;
    end
    assign handleradress = 32'd4;
    always@(*)begin
        if(interupt)begin
            Int_flush <= 1;
    end
    end
    always @(*) begin
        //if(returnM)begin
          //  PC_Int <= returnadress;
            //Int_sel <= 1;
        //end 
        if(save[0])begin
            PC_Int <= handleradress;
            returnadress <= PCM;
            Int_sel <= 1;
              
        end     
        else begin
            Int_sel <= 0;
            Int_flush <= 0;
        end    
    end 

    
    
endmodule