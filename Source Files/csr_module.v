`timescale 1ns/1ns
module scrmodule (
    input rst,clk,
    input [11:0] csraddresW,
    input csrwriteW,
    input [31:0] RD1W,
    output reg [31:0] csrvalue,c
);
reg [31:0] csrs[4096:0] ;
integer i;
    always @(*) begin
        c<=csrs[12'h300];
        csrvalue <= 32'd20;//csrs[csraddresW];
        
    end
    always @(posedge clk) begin
        if(rst)begin
            for(i=0;i<4096;i=i+1)
                csrs[i]<=32'd0;
        end
        else if(csrwriteW)begin
            csrs[csraddresW] <= RD1W;
        end
        

    end
    
endmodule