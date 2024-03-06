# Single Cycle RISC-V_Processor 16bit 
# 1. RISC-V Diagram

<div align="center">
<img src="/image/0.png">
</div>

# 2. Approach <br/>
In this project, we going to separate each block of RISC-V Processor and implement it as well. So each specific block is listed as follows: <br/>
* Program Counter (PC)<br/>
* Instruction Memory <br/>
* Register File <br/>
* ALU <br/>
* Data Memory <br/>

And the block controls all these blocks unit above called Control Unit (CU), I think this block is the most important than others.

# 3. Datapath <br/>
So just image that your Program Counter just like a pointer , when the pointer goes anywhere it send the address  - the instruction in the Instruction Memory is going to decoded into different parts and one of them is send to Register File block, then the data get from Register File based on the address send to the ALU block to excute while the Control-ALU block will decide which operation will be used?. Sound just that simple but believe me you really want to read more book to know how processor operate certainty<br/>

At the first time when I build this processor I don't know why it need a Data Memory because all the instruction I insert just only use the Register File to operate, but when I realize I forgot the most important instruction that is load and store :)) sound funny right ? then from there I understand all these block what it use for correctly

# 4. Instructions Structure
4.1 R-Type
<div align="center">
<img src="/image/3.png">
</div>
4.2 I-Type
<div align="center">
<img src="/image/2.png">
</div>
4.3 Jump
<div align="center">
<img src="/image/4.png">
</div>

# 5. Instruction Memory 
* 0000010000000000 load R0 <- Mem(R2 + 0)
* 0000010001000001 load R1 <- Mem(R2 + 1)
* 0010000001010000 Add R2 <- R0 + R1
* 0001001010000000 Store Mem(R1 + 0) <- R2
* 0011000001010000 sub R2 <- R0 - R1
* 0100000001010000 invert R2 <- !R0 
* 0101000001010000 logical shift left R2 <- R0<<R1 
* 0110000001010000 logical shift right R2 <- R0>>R1 
* 0111000001010000 AND R2<- R0 AND R1 
* 1000000001010000 OR R2<- R0 OR R1 
* 1001000001010000 SLT R2 <- 1 if R0 < R1 
* 0010000000000000 Add R0 <- R0 + R0
* 1011000001000001 BEQ branch to jump if R0=R1, PCnew= PC+2+offset<<1 = 28 => offset = 1
* 1100000001000000 BNE branch to jump if R0!=R1, PCnew= PC+2+offset<<1 = 28 => offset = 0
* 1101000000000000 J jump to the beginning address

# 6. RTL Viewer
<div align="center">
<img src="/image/5.jpg">
<img src="/image/6.jpg">
<img src="/image/7.jpg">
</div>

# 7. Simulation
<div align="center">
<img src="/image/8.jpg">
</div>

