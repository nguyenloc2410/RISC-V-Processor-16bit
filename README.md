# Single Cycle RISC-V_Processor 16bit 
# 1. RISC-V Diagram

<div align="center">
<img src="/image/1.png">
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
<img src="/image/2.jpg">
</div>
