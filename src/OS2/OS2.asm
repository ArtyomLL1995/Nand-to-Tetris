// Setting SP to 256 

@256
D=A
@SP
M=D

// Automatic call of Sys.init function 

@ReturAddress_Sys.init0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(ReturAddress_Sys.init0)

// Start File Main.vm

// function Main.main 1
(Main.main)
@SP
A=M
M=0
@SP
M=M+1

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.poke 2
@ReturAddress_Memory.poke7
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.poke
0;JMP
(ReturAddress_Memory.poke7)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// End File Main.vm

// Start File Sys.vm

// function Sys.init 0
(Sys.init)

// call Memory.init 0
@ReturAddress_Memory.init12
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.init
0;JMP
(ReturAddress_Memory.init12)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Main.main 0
@ReturAddress_Main.main14
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.main
0;JMP
(ReturAddress_Main.main14)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Sys.halt 0
@ReturAddress_Sys.halt16
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.halt
0;JMP
(ReturAddress_Sys.halt16)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// function Sys.halt 0
(Sys.halt)

// label Sys_WHILE_0
(Sys_WHILE_0)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
AM=M-1
M=-M
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Sys_WHILE_0_END
@SP
AM=M-1
D=M
@Sys_WHILE_0_END
D;JNE

// goto Sys_WHILE_0
@Sys_WHILE_0
0;JMP

// label Sys_WHILE_0_END
(Sys_WHILE_0_END)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// End File Sys.vm

// Start File Memory.vm

// function Memory.init 0
(Memory.init)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Memory.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Memory.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 2
@Memory.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// function Memory.peek 0
(Memory.peek)

// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// function Memory.poke 0
(Memory.poke)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Memory.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// function Memory.alloc 2
(Memory.alloc)
@SP
A=M
M=0
@SP
M=M+1
@SP
A=M
M=0
@SP
M=M+1

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.getFreeBlock 2
@ReturAddress_Memory.getFreeBlock76
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.getFreeBlock
0;JMP
(ReturAddress_Memory.getFreeBlock76)

// pop local 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 1
@1
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 9999
@9999
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// function Memory.getFreeBlock 0
(Memory.getFreeBlock)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL143
D;JLE
@SP
A=M
M=-1
@END_LABEL143
0;JMP
(JUMP_LABEL143)
@SP
A=M
M=0
(END_LABEL143)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto Memory_IF_0
@SP
AM=M-1
D=M
@Memory_IF_0
D;JNE

// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// goto Memory_ELSE_0
@Memory_ELSE_0
0;JMP

// label Memory_IF_0
(Memory_IF_0)

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL159
D;JNE
@SP
A=M
M=-1
@END_LABEL159
0;JMP
(JUMP_LABEL159)
@SP
A=M
M=0
(END_LABEL159)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Memory_IF_1
@SP
AM=M-1
D=M
@Memory_IF_1
D;JNE

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.error 1
@ReturAddress_Sys.error163
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@1
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.error
0;JMP
(ReturAddress_Sys.error163)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto Memory_ELSE_1
@Memory_ELSE_1
0;JMP

// label Memory_IF_1
(Memory_IF_1)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.getFreeBlock 2
@ReturAddress_Memory.getFreeBlock175
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@2
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.getFreeBlock
0;JMP
(ReturAddress_Memory.getFreeBlock175)

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// label Memory_ELSE_1
(Memory_ELSE_1)

// label Memory_ELSE_0
(Memory_ELSE_0)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// function Memory.deAlloc 0
(Memory.deAlloc)

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 2
@Memory.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push static 1
@Memory.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// pop pointer 1
@R4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push temp 0
@R5
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop static 2
@Memory.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// return
@LCL
D=M
@R13
M=D
@5
A=D-A
D=M
@R14
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@4
D=A
@R13
A=M-D
D=M
@LCL
M=D
@3
D=A
@R13
A=M-D
D=M
@ARG
M=D
@2
D=A
@R13
A=M-D
D=M
@THIS
M=D
@1
D=A
@R13
A=M-D
D=M
@THAT
M=D
@R14
A=M
0;JMP
// End function


// End File Memory.vm

