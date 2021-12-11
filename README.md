# CSRs_Implementation

# Implementation:


In this repo I have implemented a CSR module in 5 stage pipelined Risc-V Processor but this is a very limited implementation and can only handle one interrupt at a time.
Implementation is such that CSR module consist of three registers, one contains the handler adress, one stores the value of PC at the time of interrupt arrival and last one register the interrupt when it arrives.

# Working:


Working is such that whenever interrupt arrives and register into coressponding register the current value of PC at execution stage stored and all stages of pipeline get flush and PC jumps to the handler adress. And then the required instructions are executed and at the end of handler MRET command is used to return to normal execution of program.

# Test Code And Result:

Following program is used to test the working of interrupt handling:


j main


j handler


main: addi x1,x0,10


addi x2,x0,20


addi x3,x0,20


addi x4,x0,20


addi x5,x0,20


addi x6,x0,20


end: j end


handler: addi x7,x0,20


addi x8,x0,20


addi x9,x0,20


addi x10,x0,20


addi x11,x0,20


MRET

And the simulated result is attached below:

![Screenshot (193)](https://user-images.githubusercontent.com/93525537/145671501-4dcc5300-9ab2-48aa-8f4b-578936bff7b2.png)
