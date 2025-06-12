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

// Start File Ball.vm

// function Ball.new 0
(Ball.new)

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1
@ReturAddress_Memory.alloc2
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
@Memory.alloc
0;JMP
(ReturAddress_Memory.alloc2)

// pop pointer 0
@R3
D=A
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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 10
@10
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
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

// pop this 11
@11
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 12
@12
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
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

// pop this 13
@13
D=A
@THIS
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

// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.show 1
@ReturAddress_Ball.show23
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
@Ball.show
0;JMP
(ReturAddress_Ball.show23)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
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


// function Ball.dispose 0
(Ball.dispose)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1
@ReturAddress_Memory.deAlloc31
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
@Memory.deAlloc
0;JMP
(ReturAddress_Memory.deAlloc31)

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


// function Ball.show 0
(Ball.show)

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

// pop pointer 0
@R3
D=A
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

// neg
@SP
AM=M-1
M=-M
@SP
M=M+1

// call Screen.setColor 1
@ReturAddress_Screen.setColor40
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor40)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.draw 1
@ReturAddress_Ball.draw43
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
@Ball.draw
0;JMP
(ReturAddress_Ball.draw43)

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


// function Ball.hide 0
(Ball.hide)

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

// pop pointer 0
@R3
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

// call Screen.setColor 1
@ReturAddress_Screen.setColor51
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor51)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.draw 1
@ReturAddress_Ball.draw54
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
@Ball.draw
0;JMP
(ReturAddress_Ball.draw54)

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


// function Ball.draw 0
(Ball.draw)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
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

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle69
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle69)

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


// function Ball.getLeft 0
(Ball.getLeft)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
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


// function Ball.getRight 0
(Ball.getRight)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
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


// function Ball.setDestination 3
(Ball.setDestination)
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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
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

// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
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

// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1
@ReturAddress_Math.abs97
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
@Math.abs
0;JMP
(ReturAddress_Math.abs97)

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

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1
@ReturAddress_Math.abs100
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
@Math.abs
0;JMP
(ReturAddress_Math.abs100)

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL104
D;JGE
@SP
A=M
M=-1
@END_LABEL104
0;JMP
(JUMP_LABEL104)
@SP
A=M
M=0
(END_LABEL104)
@SP
AM=M+1

// pop this 7
@7
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_25
@SP
AM=M-1
D=M
@Ball_IF_25
D;JNE

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

// pop local 2
@2
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL117
D;JGE
@SP
A=M
M=-1
@END_LABEL117
0;JMP
(JUMP_LABEL117)
@SP
A=M
M=0
(END_LABEL117)
@SP
AM=M+1

// pop this 8
@8
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL121
D;JGE
@SP
A=M
M=-1
@END_LABEL121
0;JMP
(JUMP_LABEL121)
@SP
A=M
M=0
(END_LABEL121)
@SP
AM=M+1

// pop this 9
@9
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto Ball_ELSE_20
@Ball_ELSE_20
0;JMP

// label Ball_IF_25
(Ball_IF_25)

// push this 0
@0
D=A
@THIS
A=D+M
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL127
D;JGE
@SP
A=M
M=-1
@END_LABEL127
0;JMP
(JUMP_LABEL127)
@SP
A=M
M=0
(END_LABEL127)
@SP
AM=M+1

// pop this 8
@8
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL131
D;JGE
@SP
A=M
M=-1
@END_LABEL131
0;JMP
(JUMP_LABEL131)
@SP
A=M
M=0
(END_LABEL131)
@SP
AM=M+1

// pop this 9
@9
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_ELSE_20
(Ball_ELSE_20)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// call Math.multiply 2
@ReturAddress_Math.multiply136
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply136)

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// call Math.multiply 2
@ReturAddress_Math.multiply142
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply142)

// pop this 5
@5
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.multiply 2
@ReturAddress_Math.multiply148
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply148)

// pop this 6
@6
D=A
@THIS
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


// function Ball.move 0
(Ball.move)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.hide 1
@ReturAddress_Ball.hide156
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
@Ball.hide
0;JMP
(ReturAddress_Ball.hide156)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 4
@4
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL160
D;JGE
@SP
A=M
M=-1
@END_LABEL160
0;JMP
(JUMP_LABEL160)
@SP
A=M
M=0
(END_LABEL160)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_26
@SP
AM=M-1
D=M
@Ball_IF_26
D;JNE

// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 5
@5
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto Ball_ELSE_21
@Ball_ELSE_21
0;JMP

// label Ball_IF_26
(Ball_IF_26)

// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 6
@6
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 9
@9
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_27
@SP
AM=M-1
D=M
@Ball_IF_27
D;JNE

// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_28
@SP
AM=M-1
D=M
@Ball_IF_28
D;JNE

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto Ball_ELSE_22
@Ball_ELSE_22
0;JMP

// label Ball_IF_28
(Ball_IF_28)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_ELSE_22
(Ball_ELSE_22)

// goto Ball_ELSE_23
@Ball_ELSE_23
0;JMP

// label Ball_IF_27
(Ball_IF_27)

// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_29
@SP
AM=M-1
D=M
@Ball_IF_29
D;JNE

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto Ball_ELSE_24
@Ball_ELSE_24
0;JMP

// label Ball_IF_29
(Ball_IF_29)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_ELSE_24
(Ball_ELSE_24)

// label Ball_ELSE_23
(Ball_ELSE_23)

// label Ball_ELSE_21
(Ball_ELSE_21)

// push this 8
@8
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_30
@SP
AM=M-1
D=M
@Ball_IF_30
D;JNE

// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_31
@SP
AM=M-1
D=M
@Ball_IF_31
D;JNE

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto Ball_ELSE_25
@Ball_ELSE_25
0;JMP

// label Ball_IF_31
(Ball_IF_31)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_ELSE_25
(Ball_ELSE_25)

// goto Ball_ELSE_26
@Ball_ELSE_26
0;JMP

// label Ball_IF_30
(Ball_IF_30)

// push this 7
@7
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_32
@SP
AM=M-1
D=M
@Ball_IF_32
D;JNE

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// goto Ball_ELSE_27
@Ball_ELSE_27
0;JMP

// label Ball_IF_32
(Ball_IF_32)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_ELSE_27
(Ball_ELSE_27)

// label Ball_ELSE_26
(Ball_ELSE_26)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 10
@10
D=A
@THIS
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
@JUMP_LABEL244
D;JLE
@SP
A=M
M=-1
@END_LABEL244
0;JMP
(JUMP_LABEL244)
@SP
A=M
M=0
(END_LABEL244)
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

// if-goto Ball_IF_33
@SP
AM=M-1
D=M
@Ball_IF_33
D;JNE

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 10
@10
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_IF_33
(Ball_IF_33)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 11
@11
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL255
D;JGE
@SP
A=M
M=-1
@END_LABEL255
0;JMP
(JUMP_LABEL255)
@SP
A=M
M=0
(END_LABEL255)
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

// if-goto Ball_IF_34
@SP
AM=M-1
D=M
@Ball_IF_34
D;JNE

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 11
@11
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_IF_34
(Ball_IF_34)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 12
@12
D=A
@THIS
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
@JUMP_LABEL266
D;JLE
@SP
A=M
M=-1
@END_LABEL266
0;JMP
(JUMP_LABEL266)
@SP
A=M
M=0
(END_LABEL266)
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

// if-goto Ball_IF_35
@SP
AM=M-1
D=M
@Ball_IF_35
D;JNE

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 12
@12
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_IF_35
(Ball_IF_35)

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 13
@13
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL277
D;JGE
@SP
A=M
M=-1
@END_LABEL277
0;JMP
(JUMP_LABEL277)
@SP
A=M
M=0
(END_LABEL277)
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

// if-goto Ball_IF_36
@SP
AM=M-1
D=M
@Ball_IF_36
D;JNE

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 14
@14
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 13
@13
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Ball_IF_36
(Ball_IF_36)

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.show 1
@ReturAddress_Ball.show287
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
@Ball.show
0;JMP
(ReturAddress_Ball.show287)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 14
@14
D=A
@THIS
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


// function Ball.bounce 5
(Ball.bounce)
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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide296
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
@Math.divide
0;JMP
(ReturAddress_Math.divide296)

// pop local 2
@2
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

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide300
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
@Math.divide
0;JMP
(ReturAddress_Math.divide300)

// pop local 3
@3
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
@JUMP_LABEL304
D;JNE
@SP
A=M
M=-1
@END_LABEL304
0;JMP
(JUMP_LABEL304)
@SP
A=M
M=0
(END_LABEL304)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_37
@SP
AM=M-1
D=M
@Ball_IF_37
D;JNE

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@4
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

// goto Ball_ELSE_28
@Ball_ELSE_28
0;JMP

// label Ball_IF_37
(Ball_IF_37)

// push this 2
@2
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL313
D;JGE
@SP
A=M
M=-1
@END_LABEL313
0;JMP
(JUMP_LABEL313)
@SP
A=M
M=0
(END_LABEL313)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

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

// push constant 1
@1
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
@JUMP_LABEL317
D;JNE
@SP
A=M
M=-1
@END_LABEL317
0;JMP
(JUMP_LABEL317)
@SP
A=M
M=0
(END_LABEL317)
@SP
AM=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push this 2
@2
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL321
D;JGE
@SP
A=M
M=-1
@END_LABEL321
0;JMP
(JUMP_LABEL321)
@SP
A=M
M=0
(END_LABEL321)
@SP
AM=M+1

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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL325
D;JNE
@SP
A=M
M=-1
@END_LABEL325
0;JMP
(JUMP_LABEL325)
@SP
A=M
M=0
(END_LABEL325)
@SP
AM=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_38
@SP
AM=M-1
D=M
@Ball_IF_38
D;JNE

// push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@4
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

// goto Ball_ELSE_29
@Ball_ELSE_29
0;JMP

// label Ball_IF_38
(Ball_IF_38)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@4
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

// label Ball_ELSE_29
(Ball_ELSE_29)

// label Ball_ELSE_28
(Ball_ELSE_28)

// push this 14
@14
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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
@JUMP_LABEL340
D;JNE
@SP
A=M
M=-1
@END_LABEL340
0;JMP
(JUMP_LABEL340)
@SP
A=M
M=0
(END_LABEL340)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_39
@SP
AM=M-1
D=M
@Ball_IF_39
D;JNE

// push constant 506
@506
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 50
@50
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

// call Math.multiply 2
@ReturAddress_Math.multiply348
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply348)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide350
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
@Math.divide
0;JMP
(ReturAddress_Math.divide350)

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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply355
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply355)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// goto Ball_ELSE_30
@Ball_ELSE_30
0;JMP

// label Ball_IF_39
(Ball_IF_39)

// push this 14
@14
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL362
D;JNE
@SP
A=M
M=-1
@END_LABEL362
0;JMP
(JUMP_LABEL362)
@SP
A=M
M=0
(END_LABEL362)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_40
@SP
AM=M-1
D=M
@Ball_IF_40
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply369
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply369)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide371
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
@Math.divide
0;JMP
(ReturAddress_Math.divide371)

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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply376
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply376)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// goto Ball_ELSE_31
@Ball_ELSE_31
0;JMP

// label Ball_IF_40
(Ball_IF_40)

// push this 14
@14
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL383
D;JNE
@SP
A=M
M=-1
@END_LABEL383
0;JMP
(JUMP_LABEL383)
@SP
A=M
M=0
(END_LABEL383)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Ball_IF_41
@SP
AM=M-1
D=M
@Ball_IF_41
D;JNE

// push constant 250
@250
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
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

// call Math.multiply 2
@ReturAddress_Math.multiply391
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply391)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide393
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
@Math.divide
0;JMP
(ReturAddress_Math.divide393)

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

// push this 0
@0
D=A
@THIS
A=D+M
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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply398
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply398)

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

// goto Ball_ELSE_32
@Ball_ELSE_32
0;JMP

// label Ball_IF_41
(Ball_IF_41)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply407
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply407)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide409
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
@Math.divide
0;JMP
(ReturAddress_Math.divide409)

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

// push this 0
@0
D=A
@THIS
A=D+M
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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply414
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply414)

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

// label Ball_ELSE_32
(Ball_ELSE_32)

// label Ball_ELSE_31
(Ball_ELSE_31)

// label Ball_ELSE_30
(Ball_ELSE_30)

// push pointer 0
@R3
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

// call Ball.setDestination 3
@ReturAddress_Ball.setDestination423
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
@3
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
@Ball.setDestination
0;JMP
(ReturAddress_Ball.setDestination423)

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


// End File Ball.vm

// Start File PongGame.vm

// function PongGame.new 0
(PongGame.new)

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1
@ReturAddress_Memory.alloc429
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
@Memory.alloc
0;JMP
(ReturAddress_Memory.alloc429)

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Screen.clearScreen 0
@ReturAddress_Screen.clearScreen431
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
@Screen.clearScreen
0;JMP
(ReturAddress_Screen.clearScreen431)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 6
@6
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 230
@230
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1

// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Bat.new 4
@ReturAddress_Bat.new439
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
@4
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
@Bat.new
0;JMP
(ReturAddress_Bat.new439)

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 253
@253
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 222
@222
D=A
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

// push constant 511
@511
D=A
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

// push constant 229
@229
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Ball.new 6
@ReturAddress_Ball.new447
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
@6
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
@Ball.new
0;JMP
(ReturAddress_Ball.new447)

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 400
@400
D=A
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

// call Ball.setDestination 3
@ReturAddress_Ball.setDestination452
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
@3
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
@Ball.setDestination
0;JMP
(ReturAddress_Ball.setDestination452)

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

// push constant 238
@238
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 240
@240
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle458
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle458)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 22
@22
D=A
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

// call Output.moveCursor 2
@ReturAddress_Output.moveCursor462
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
@Output.moveCursor
0;JMP
(ReturAddress_Output.moveCursor462)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@ReturAddress_String.new465
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
@String.new
0;JMP
(ReturAddress_String.new465)

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar467
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar467)

// push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar469
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar469)

// push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar471
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar471)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar473
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar473)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar475
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar475)

// push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar477
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar477)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar479
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar479)

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar481
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar481)

// call Output.printString 1
@ReturAddress_Output.printString482
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
@Output.printString
0;JMP
(ReturAddress_Output.printString482)

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

// pop this 3
@3
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
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

// pop this 2
@2
D=A
@THIS
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

// pop this 5
@5
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
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


// function PongGame.dispose 0
(PongGame.dispose)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.dispose 1
@ReturAddress_Bat.dispose498
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
@Bat.dispose
0;JMP
(ReturAddress_Bat.dispose498)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.dispose 1
@ReturAddress_Ball.dispose501
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
@Ball.dispose
0;JMP
(ReturAddress_Ball.dispose501)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1
@ReturAddress_Memory.deAlloc504
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
@Memory.deAlloc
0;JMP
(ReturAddress_Memory.deAlloc504)

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


// function PongGame.newInstance 0
(PongGame.newInstance)

// call PongGame.new 0
@ReturAddress_PongGame.new509
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
@PongGame.new
0;JMP
(ReturAddress_PongGame.new509)

// pop static 0
@PongGame.0
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


// function PongGame.getInstance 0
(PongGame.getInstance)

// push static 0
@PongGame.0
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


// function PongGame.run 1
(PongGame.run)
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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label PongGame_WHILE_24
(PongGame_WHILE_24)

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto PongGame_WHILE_24_END
@SP
AM=M-1
D=M
@PongGame_WHILE_24_END
D;JNE

// label PongGame_WHILE_25
(PongGame_WHILE_25)

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
@JUMP_LABEL527
D;JNE
@SP
A=M
M=-1
@END_LABEL527
0;JMP
(JUMP_LABEL527)
@SP
A=M
M=0
(END_LABEL527)
@SP
AM=M+1

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto PongGame_WHILE_25_END
@SP
AM=M-1
D=M
@PongGame_WHILE_25_END
D;JNE

// call Keyboard.keyPressed 0
@ReturAddress_Keyboard.keyPressed533
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
@Keyboard.keyPressed
0;JMP
(ReturAddress_Keyboard.keyPressed533)

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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.move 1
@ReturAddress_Bat.move536
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
@Bat.move
0;JMP
(ReturAddress_Bat.move536)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call PongGame.moveBall 1
@ReturAddress_PongGame.moveBall539
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
@PongGame.moveBall
0;JMP
(ReturAddress_PongGame.moveBall539)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1
@ReturAddress_Sys.wait542
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
@Sys.wait
0;JMP
(ReturAddress_Sys.wait542)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto PongGame_WHILE_25
@PongGame_WHILE_25
0;JMP

// label PongGame_WHILE_25_END
(PongGame_WHILE_25_END)

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

// push constant 130
@130
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
@JUMP_LABEL548
D;JNE
@SP
A=M
M=-1
@END_LABEL548
0;JMP
(JUMP_LABEL548)
@SP
A=M
M=0
(END_LABEL548)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_58
@SP
AM=M-1
D=M
@PongGame_IF_58
D;JNE

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Bat.setDirection 2
@ReturAddress_Bat.setDirection553
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
@Bat.setDirection
0;JMP
(ReturAddress_Bat.setDirection553)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto PongGame_ELSE_41
@PongGame_ELSE_41
0;JMP

// label PongGame_IF_58
(PongGame_IF_58)

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

// push constant 132
@132
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
@JUMP_LABEL559
D;JNE
@SP
A=M
M=-1
@END_LABEL559
0;JMP
(JUMP_LABEL559)
@SP
A=M
M=0
(END_LABEL559)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_59
@SP
AM=M-1
D=M
@PongGame_IF_59
D;JNE

// push this 0
@0
D=A
@THIS
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

// call Bat.setDirection 2
@ReturAddress_Bat.setDirection564
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
@Bat.setDirection
0;JMP
(ReturAddress_Bat.setDirection564)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto PongGame_ELSE_42
@PongGame_ELSE_42
0;JMP

// label PongGame_IF_59
(PongGame_IF_59)

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

// push constant 140
@140
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
@JUMP_LABEL570
D;JNE
@SP
A=M
M=-1
@END_LABEL570
0;JMP
(JUMP_LABEL570)
@SP
A=M
M=0
(END_LABEL570)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_60
@SP
AM=M-1
D=M
@PongGame_IF_60
D;JNE

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

// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label PongGame_IF_60
(PongGame_IF_60)

// label PongGame_ELSE_42
(PongGame_ELSE_42)

// label PongGame_ELSE_41
(PongGame_ELSE_41)

// label PongGame_WHILE_26
(PongGame_WHILE_26)

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
@JUMP_LABEL582
D;JNE
@SP
A=M
M=-1
@END_LABEL582
0;JMP
(JUMP_LABEL582)
@SP
A=M
M=0
(END_LABEL582)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto PongGame_WHILE_26_END
@SP
AM=M-1
D=M
@PongGame_WHILE_26_END
D;JNE

// call Keyboard.keyPressed 0
@ReturAddress_Keyboard.keyPressed589
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
@Keyboard.keyPressed
0;JMP
(ReturAddress_Keyboard.keyPressed589)

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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.move 1
@ReturAddress_Bat.move592
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
@Bat.move
0;JMP
(ReturAddress_Bat.move592)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call PongGame.moveBall 1
@ReturAddress_PongGame.moveBall595
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
@PongGame.moveBall
0;JMP
(ReturAddress_PongGame.moveBall595)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.wait 1
@ReturAddress_Sys.wait598
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
@Sys.wait
0;JMP
(ReturAddress_Sys.wait598)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto PongGame_WHILE_26
@PongGame_WHILE_26
0;JMP

// label PongGame_WHILE_26_END
(PongGame_WHILE_26_END)

// goto PongGame_WHILE_24
@PongGame_WHILE_24
0;JMP

// label PongGame_WHILE_24_END
(PongGame_WHILE_24_END)

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_61
@SP
AM=M-1
D=M
@PongGame_IF_61
D;JNE

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.moveCursor 2
@ReturAddress_Output.moveCursor609
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
@Output.moveCursor
0;JMP
(ReturAddress_Output.moveCursor609)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@ReturAddress_String.new612
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
@String.new
0;JMP
(ReturAddress_String.new612)

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar614
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar614)

// push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar616
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar616)

// push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar618
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar618)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar620
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar620)

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar622
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar622)

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar624
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar624)

// push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar626
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar626)

// push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar628
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar628)

// push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar630
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar630)

// call Output.printString 1
@ReturAddress_Output.printString631
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
@Output.printString
0;JMP
(ReturAddress_Output.printString631)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label PongGame_IF_61
(PongGame_IF_61)

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


// function PongGame.moveBall 5
(PongGame.moveBall)
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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.move 1
@ReturAddress_Ball.move640
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
@Ball.move
0;JMP
(ReturAddress_Ball.move640)

// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 2
@2
D=A
@THIS
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL644
D;JLE
@SP
A=M
M=-1
@END_LABEL644
0;JMP
(JUMP_LABEL644)
@SP
A=M
M=0
(END_LABEL644)
@SP
AM=M+1

// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 5
@5
D=A
@THIS
A=D+M
D=M
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
@JUMP_LABEL647
D;JNE
@SP
A=M
M=-1
@END_LABEL647
0;JMP
(JUMP_LABEL647)
@SP
A=M
M=0
(END_LABEL647)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_62
@SP
AM=M-1
D=M
@PongGame_IF_62
D;JNE

// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 5
@5
D=A
@THIS
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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.getLeft 1
@ReturAddress_Bat.getLeft657
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
@Bat.getLeft
0;JMP
(ReturAddress_Bat.getLeft657)

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

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.getRight 1
@ReturAddress_Bat.getRight660
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
@Bat.getRight
0;JMP
(ReturAddress_Bat.getRight660)

// pop local 2
@2
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.getLeft 1
@ReturAddress_Ball.getLeft663
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
@Ball.getLeft
0;JMP
(ReturAddress_Ball.getLeft663)

// pop local 3
@3
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Ball.getRight 1
@ReturAddress_Ball.getRight666
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
@Ball.getRight
0;JMP
(ReturAddress_Ball.getRight666)

// pop local 4
@4
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

// push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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
@JUMP_LABEL670
D;JNE
@SP
A=M
M=-1
@END_LABEL670
0;JMP
(JUMP_LABEL670)
@SP
A=M
M=0
(END_LABEL670)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_63
@SP
AM=M-1
D=M
@PongGame_IF_63
D;JNE

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

// push local 4
@4
D=A
@LCL
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
@JUMP_LABEL675
D;JLE
@SP
A=M
M=-1
@END_LABEL675
0;JMP
(JUMP_LABEL675)
@SP
A=M
M=0
(END_LABEL675)
@SP
AM=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL678
D;JGE
@SP
A=M
M=-1
@END_LABEL678
0;JMP
(JUMP_LABEL678)
@SP
A=M
M=0
(END_LABEL678)
@SP
AM=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 3
@3
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_64
@SP
AM=M-1
D=M
@PongGame_IF_64
D;JNE

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 10
@10
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL689
D;JGE
@SP
A=M
M=-1
@END_LABEL689
0;JMP
(JUMP_LABEL689)
@SP
A=M
M=0
(END_LABEL689)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_65
@SP
AM=M-1
D=M
@PongGame_IF_65
D;JNE

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

// goto PongGame_ELSE_43
@PongGame_ELSE_43
0;JMP

// label PongGame_IF_65
(PongGame_IF_65)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL701
D;JLE
@SP
A=M
M=-1
@END_LABEL701
0;JMP
(JUMP_LABEL701)
@SP
A=M
M=0
(END_LABEL701)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto PongGame_IF_66
@SP
AM=M-1
D=M
@PongGame_IF_66
D;JNE

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label PongGame_IF_66
(PongGame_IF_66)

// label PongGame_ELSE_43
(PongGame_ELSE_43)

// push this 6
@6
D=A
@THIS
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

// pop this 6
@6
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.setWidth 2
@ReturAddress_Bat.setWidth714
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
@Bat.setWidth
0;JMP
(ReturAddress_Bat.setWidth714)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.moveCursor 2
@ReturAddress_Output.moveCursor722
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
@Output.moveCursor
0;JMP
(ReturAddress_Output.moveCursor722)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Output.printInt 1
@ReturAddress_Output.printInt725
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
@Output.printInt
0;JMP
(ReturAddress_Output.printInt725)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label PongGame_IF_64
(PongGame_IF_64)

// label PongGame_IF_63
(PongGame_IF_63)

// push this 1
@1
D=A
@THIS
A=D+M
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

// call Ball.bounce 2
@ReturAddress_Ball.bounce731
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
@Ball.bounce
0;JMP
(ReturAddress_Ball.bounce731)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label PongGame_IF_62
(PongGame_IF_62)

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


// End File PongGame.vm

// Start File String.vm

// function String.new 0
(String.new)

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1
@ReturAddress_Memory.alloc738
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
@Memory.alloc
0;JMP
(ReturAddress_Memory.alloc738)

// pop pointer 0
@R3
D=A
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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL742
D;JGE
@SP
A=M
M=-1
@END_LABEL742
0;JMP
(JUMP_LABEL742)
@SP
A=M
M=0
(END_LABEL742)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_IF_53
@SP
AM=M-1
D=M
@String_IF_53
D;JNE

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label String_IF_53
(String_IF_53)

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

// call Array.new 1
@ReturAddress_Array.new749
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
@Array.new
0;JMP
(ReturAddress_Array.new749)

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@ReturAddress_Array.new752
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
@Array.new
0;JMP
(ReturAddress_Array.new752)

// pop static 0
@String.0
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

// pop static 1
@String.1
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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
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


// function String.setInt 3
(String.setInt)
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

// pop pointer 0
@R3
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 1
@1
D=A
@THIS
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

// call Memory.poke 2
@ReturAddress_Memory.poke769
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
(ReturAddress_Memory.poke769)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL773
D;JGE
@SP
A=M
M=-1
@END_LABEL773
0;JMP
(JUMP_LABEL773)
@SP
A=M
M=0
(END_LABEL773)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_IF_54
@SP
AM=M-1
D=M
@String_IF_54
D;JNE

// push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 999
@999
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.poke 2
@ReturAddress_Memory.poke778
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
(ReturAddress_Memory.poke778)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar786
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar786)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

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

// call Math.multiply 2
@ReturAddress_Math.multiply791
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply791)

// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label String_IF_54
(String_IF_54)

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

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// label String_WHILE_20
(String_WHILE_20)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide801
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
@Math.divide
0;JMP
(ReturAddress_Math.divide801)

// push constant 0
@0
D=A
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
@JUMP_LABEL803
D;JLE
@SP
A=M
M=-1
@END_LABEL803
0;JMP
(JUMP_LABEL803)
@SP
A=M
M=0
(END_LABEL803)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_WHILE_20_END
@SP
AM=M-1
D=M
@String_WHILE_20_END
D;JNE

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide812
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
@Math.divide
0;JMP
(ReturAddress_Math.divide812)

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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply816
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply816)

// pop local 2
@2
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

// goto String_WHILE_20
@String_WHILE_20
0;JMP

// label String_WHILE_20_END
(String_WHILE_20_END)

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

// label String_WHILE_21
(String_WHILE_21)

// push local 2
@2
D=A
@LCL
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL827
D;JLE
@SP
A=M
M=-1
@END_LABEL827
0;JMP
(JUMP_LABEL827)
@SP
A=M
M=0
(END_LABEL827)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_WHILE_21_END
@SP
AM=M-1
D=M
@String_WHILE_21_END
D;JNE

// push pointer 0
@R3
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide833
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
@Math.divide
0;JMP
(ReturAddress_Math.divide833)

// push constant 48
@48
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

// call String.appendChar 2
@ReturAddress_String.appendChar836
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar836)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

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

// push local 2
@2
D=A
@LCL
A=D+M
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide842
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
@Math.divide
0;JMP
(ReturAddress_Math.divide842)

// call Math.multiply 2
@ReturAddress_Math.multiply843
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply843)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop argument 1
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide848
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
@Math.divide
0;JMP
(ReturAddress_Math.divide848)

// pop local 2
@2
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

// goto String_WHILE_21
@String_WHILE_21
0;JMP

// label String_WHILE_21_END
(String_WHILE_21_END)

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


// function String.appendChar 0
(String.appendChar)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
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


// function String.length 0
(String.length)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
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


// function String.charAt 0
(String.charAt)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
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


// function String.setCharAt 0
(String.setCharAt)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// push this 0
@0
D=A
@THIS
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

// push argument 2
@2
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


// function String.eraseLastChar 0
(String.eraseLastChar)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop this 1
@1
D=A
@THIS
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


// function String.dispose 0
(String.dispose)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Array.dispose 1
@ReturAddress_Array.dispose920
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
@Array.dispose
0;JMP
(ReturAddress_Array.dispose920)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1
@ReturAddress_Memory.deAlloc923
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
@Memory.deAlloc
0;JMP
(ReturAddress_Memory.deAlloc923)

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


// function String.clearString 1
(String.clearString)
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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// label String_WHILE_22
(String_WHILE_22)

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

// push constant 0
@0
D=A
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
@JUMP_LABEL935
D;JLE
@SP
A=M
M=-1
@END_LABEL935
0;JMP
(JUMP_LABEL935)
@SP
A=M
M=0
(END_LABEL935)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_WHILE_22_END
@SP
AM=M-1
D=M
@String_WHILE_22_END
D;JNE

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call String.eraseLastChar 1
@ReturAddress_String.eraseLastChar939
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
@String.eraseLastChar
0;JMP
(ReturAddress_String.eraseLastChar939)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// push constant 1
@1
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

// goto String_WHILE_22
@String_WHILE_22
0;JMP

// label String_WHILE_22_END
(String_WHILE_22_END)

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


// function String.intValue 4
(String.intValue)
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

// pop pointer 0
@R3
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label String_WHILE_23
(String_WHILE_23)

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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL959
D;JGE
@SP
A=M
M=-1
@END_LABEL959
0;JMP
(JUMP_LABEL959)
@SP
A=M
M=0
(END_LABEL959)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_WHILE_23_END
@SP
AM=M-1
D=M
@String_WHILE_23_END
D;JNE

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call String.charAt 2
@ReturAddress_String.charAt964
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
@String.charAt
0;JMP
(ReturAddress_String.charAt964)

// pop local 3
@3
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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
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
@JUMP_LABEL968
D;JNE
@SP
A=M
M=-1
@END_LABEL968
0;JMP
(JUMP_LABEL968)
@SP
A=M
M=0
(END_LABEL968)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_IF_55
@SP
AM=M-1
D=M
@String_IF_55
D;JNE

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

// pop local 2
@2
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

// goto String_ELSE_38
@String_ELSE_38
0;JMP

// label String_IF_55
(String_IF_55)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL982
D;JGE
@SP
A=M
M=-1
@END_LABEL982
0;JMP
(JUMP_LABEL982)
@SP
A=M
M=0
(END_LABEL982)
@SP
AM=M+1

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 57
@57
D=A
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
@JUMP_LABEL985
D;JLE
@SP
A=M
M=-1
@END_LABEL985
0;JMP
(JUMP_LABEL985)
@SP
A=M
M=0
(END_LABEL985)
@SP
AM=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto String_IF_56
@SP
AM=M-1
D=M
@String_IF_56
D;JNE

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// goto String_ELSE_39
@String_ELSE_39
0;JMP

// label String_IF_56
(String_IF_56)

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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply995
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply995)

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 3
@3
D=A
@LCL
A=D+M
D=M
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

// call Math.abs 1
@ReturAddress_Math.abs999
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
@Math.abs
0;JMP
(ReturAddress_Math.abs999)

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

// label String_ELSE_39
(String_ELSE_39)

// label String_ELSE_38
(String_ELSE_38)

// goto String_WHILE_23
@String_WHILE_23
0;JMP

// label String_WHILE_23_END
(String_WHILE_23_END)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1013
D;JNE
@SP
A=M
M=-1
@END_LABEL1013
0;JMP
(JUMP_LABEL1013)
@SP
A=M
M=0
(END_LABEL1013)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto String_IF_57
@SP
AM=M-1
D=M
@String_IF_57
D;JNE

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

// neg
@SP
AM=M-1
M=-M
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


// goto String_ELSE_40
@String_ELSE_40
0;JMP

// label String_IF_57
(String_IF_57)

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


// label String_ELSE_40
(String_ELSE_40)

// function String.newLine 0
(String.newLine)

// push constant 128
@128
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


// function String.backSpace 0
(String.backSpace)

// push constant 129
@129
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


// function String.doubleQuote 0
(String.doubleQuote)

// push constant 34
@34
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


// End File String.vm

// Start File Math.vm

// function Math.init 0
(Math.init)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Math.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@ReturAddress_Array.new1037
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
@Array.new
0;JMP
(ReturAddress_Array.new1037)

// pop static 0
@Math.0
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

// push static 0
@Math.0
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

// push constant 1
@1
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

// push static 0
@Math.0
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

// push constant 2
@2
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

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 4
@4
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 8
@8
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

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 16
@16
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

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 32
@32
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

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 64
@64
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

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 128
@128
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

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 256
@256
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

// push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 512
@512
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

// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 1024
@1024
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

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 2048
@2048
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 4096
@4096
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

// push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 8192
@8192
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

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 16384
@16384
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

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Math.0
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

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16384
@16384
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


// function Math.bit 0
(Math.bit)

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
@Math.0
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

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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
@JUMP_LABEL1180
D;JNE
@SP
A=M
M=-1
@END_LABEL1180
0;JMP
(JUMP_LABEL1180)
@SP
A=M
M=0
(END_LABEL1180)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

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


// function Math.multiply 3
(Math.multiply)
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
@SP
A=M
M=0
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

// pop local 2
@2
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Math_WHILE_0
(Math_WHILE_0)

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1193
D;JGE
@SP
A=M
M=-1
@END_LABEL1193
0;JMP
(JUMP_LABEL1193)
@SP
A=M
M=0
(END_LABEL1193)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_WHILE_0_END
@SP
AM=M-1
D=M
@Math_WHILE_0_END
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

// call Math.bit 2
@ReturAddress_Math.bit1198
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
@Math.bit
0;JMP
(ReturAddress_Math.bit1198)

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_0
@SP
AM=M-1
D=M
@Math_IF_0
D;JNE

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

// push local 2
@2
D=A
@LCL
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

// label Math_IF_0
(Math_IF_0)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
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

// pop local 2
@2
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

// goto Math_WHILE_0
@Math_WHILE_0
0;JMP

// label Math_WHILE_0_END
(Math_WHILE_0_END)

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


// function Math.divide 1
(Math.divide)
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

// call Math.abs 1
@ReturAddress_Math.abs1220
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
@Math.abs
0;JMP
(ReturAddress_Math.abs1220)

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

// call Math.abs 1
@ReturAddress_Math.abs1222
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
@Math.abs
0;JMP
(ReturAddress_Math.abs1222)

// call Math.calcDivision 2
@ReturAddress_Math.calcDivision1223
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
@Math.calcDivision
0;JMP
(ReturAddress_Math.calcDivision1223)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1227
D;JGE
@SP
A=M
M=-1
@END_LABEL1227
0;JMP
(JUMP_LABEL1227)
@SP
A=M
M=0
(END_LABEL1227)
@SP
AM=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1230
D;JGE
@SP
A=M
M=-1
@END_LABEL1230
0;JMP
(JUMP_LABEL1230)
@SP
A=M
M=0
(END_LABEL1230)
@SP
AM=M+1

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1231
D;JNE
@SP
A=M
M=-1
@END_LABEL1231
0;JMP
(JUMP_LABEL1231)
@SP
A=M
M=0
(END_LABEL1231)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_1
@SP
AM=M-1
D=M
@Math_IF_1
D;JNE

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


// goto Math_ELSE_0
@Math_ELSE_0
0;JMP

// label Math_IF_1
(Math_IF_1)

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

// neg
@SP
AM=M-1
M=-M
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


// label Math_ELSE_0
(Math_ELSE_0)

// function Math.calcDivision 1
(Math.calcDivision)
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1245
D;JGE
@SP
A=M
M=-1
@END_LABEL1245
0;JMP
(JUMP_LABEL1245)
@SP
A=M
M=0
(END_LABEL1245)
@SP
AM=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1248
D;JGE
@SP
A=M
M=-1
@END_LABEL1248
0;JMP
(JUMP_LABEL1248)
@SP
A=M
M=0
(END_LABEL1248)
@SP
AM=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_2
@SP
AM=M-1
D=M
@Math_IF_2
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// goto Math_ELSE_1
@Math_ELSE_1
0;JMP

// label Math_IF_2
(Math_IF_2)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Math.calcDivision 2
@ReturAddress_Math.calcDivision1260
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
@Math.calcDivision
0;JMP
(ReturAddress_Math.calcDivision1260)

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
@Math.1
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop static 1
@Math.1
D=A
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

// call Math.multiply 2
@ReturAddress_Math.multiply1271
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply1271)

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1274
D;JGE
@SP
A=M
M=-1
@END_LABEL1274
0;JMP
(JUMP_LABEL1274)
@SP
A=M
M=0
(END_LABEL1274)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_3
@SP
AM=M-1
D=M
@Math_IF_3
D;JNE

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

// goto Math_ELSE_2
@Math_ELSE_2
0;JMP

// label Math_IF_3
(Math_IF_3)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// label Math_ELSE_2
(Math_ELSE_2)

// label Math_ELSE_1
(Math_ELSE_1)

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


// function Math.sqrt 3
(Math.sqrt)
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
@SP
A=M
M=0
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

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Math_WHILE_1
(Math_WHILE_1)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1302
D;JLE
@SP
A=M
M=-1
@END_LABEL1302
0;JMP
(JUMP_LABEL1302)
@SP
A=M
M=0
(END_LABEL1302)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_WHILE_1_END
@SP
AM=M-1
D=M
@Math_WHILE_1_END
D;JNE

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

// push static 0
@Math.0
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@2
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply1315
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply1315)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1317
D;JLE
@SP
A=M
M=-1
@END_LABEL1317
0;JMP
(JUMP_LABEL1317)
@SP
A=M
M=0
(END_LABEL1317)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply1321
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply1321)

// push constant 0
@0
D=A
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
@JUMP_LABEL1323
D;JLE
@SP
A=M
M=-1
@END_LABEL1323
0;JMP
(JUMP_LABEL1323)
@SP
A=M
M=0
(END_LABEL1323)
@SP
AM=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_4
@SP
AM=M-1
D=M
@Math_IF_4
D;JNE

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// label Math_IF_4
(Math_IF_4)

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

// push constant 1
@1
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

// goto Math_WHILE_1
@Math_WHILE_1
0;JMP

// label Math_WHILE_1_END
(Math_WHILE_1_END)

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


// function Math.min 0
(Math.min)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1341
D;JLE
@SP
A=M
M=-1
@END_LABEL1341
0;JMP
(JUMP_LABEL1341)
@SP
A=M
M=0
(END_LABEL1341)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_5
@SP
AM=M-1
D=M
@Math_IF_5
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


// goto Math_ELSE_3
@Math_ELSE_3
0;JMP

// label Math_IF_5
(Math_IF_5)

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


// label Math_ELSE_3
(Math_ELSE_3)

// function Math.max 0
(Math.max)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1354
D;JLE
@SP
A=M
M=-1
@END_LABEL1354
0;JMP
(JUMP_LABEL1354)
@SP
A=M
M=0
(END_LABEL1354)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_6
@SP
AM=M-1
D=M
@Math_IF_6
D;JNE

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


// goto Math_ELSE_4
@Math_ELSE_4
0;JMP

// label Math_IF_6
(Math_IF_6)

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


// label Math_ELSE_4
(Math_ELSE_4)

// function Math.abs 0
(Math.abs)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL1367
D;JGE
@SP
A=M
M=-1
@END_LABEL1367
0;JMP
(JUMP_LABEL1367)
@SP
A=M
M=0
(END_LABEL1367)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Math_IF_7
@SP
AM=M-1
D=M
@Math_IF_7
D;JNE

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

// neg
@SP
AM=M-1
M=-M
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


// goto Math_ELSE_5
@Math_ELSE_5
0;JMP

// label Math_IF_7
(Math_IF_7)

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


// label Math_ELSE_5
(Math_ELSE_5)

// function Math.getPowersOfTwo 0
(Math.getPowersOfTwo)

// push static 0
@Math.0
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


// End File Math.vm

// Start File Array.vm

// function Array.new 0
(Array.new)

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

// call Memory.alloc 1
@ReturAddress_Memory.alloc1383
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
@Memory.alloc
0;JMP
(ReturAddress_Memory.alloc1383)

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


// function Array.dispose 0
(Array.dispose)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1
@ReturAddress_Memory.deAlloc1389
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
@Memory.deAlloc
0;JMP
(ReturAddress_Memory.deAlloc1389)

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


// End File Array.vm

// Start File Main.vm

// function Main.main 1
(Main.main)
@SP
A=M
M=0
@SP
M=M+1

// call PongGame.newInstance 0
@ReturAddress_PongGame.newInstance1394
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
@PongGame.newInstance
0;JMP
(ReturAddress_PongGame.newInstance1394)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call PongGame.getInstance 0
@ReturAddress_PongGame.getInstance1396
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
@PongGame.getInstance
0;JMP
(ReturAddress_PongGame.getInstance1396)

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

// call PongGame.run 1
@ReturAddress_PongGame.run1399
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
@PongGame.run
0;JMP
(ReturAddress_PongGame.run1399)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// call PongGame.dispose 1
@ReturAddress_PongGame.dispose1402
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
@PongGame.dispose
0;JMP
(ReturAddress_PongGame.dispose1402)

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

// Start File Keyboard.vm

// function Keyboard.init 0
(Keyboard.init)

// push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Keyboard.0
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


// function Keyboard.keyPressed 0
(Keyboard.keyPressed)

// push static 0
@Keyboard.0
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


// function Keyboard.readChar 1
(Keyboard.readChar)
@SP
A=M
M=0
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

// call Output.printChar 1
@ReturAddress_Output.printChar1420
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
@Output.printChar
0;JMP
(ReturAddress_Output.printChar1420)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Keyboard_WHILE_14
(Keyboard_WHILE_14)

// call Keyboard.keyPressed 0
@ReturAddress_Keyboard.keyPressed1423
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
@Keyboard.keyPressed
0;JMP
(ReturAddress_Keyboard.keyPressed1423)

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
@JUMP_LABEL1425
D;JNE
@SP
A=M
M=-1
@END_LABEL1425
0;JMP
(JUMP_LABEL1425)
@SP
A=M
M=0
(END_LABEL1425)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Keyboard_WHILE_14_END
@SP
AM=M-1
D=M
@Keyboard_WHILE_14_END
D;JNE

// goto Keyboard_WHILE_14
@Keyboard_WHILE_14
0;JMP

// label Keyboard_WHILE_14_END
(Keyboard_WHILE_14_END)

// call Keyboard.keyPressed 0
@ReturAddress_Keyboard.keyPressed1430
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
@Keyboard.keyPressed
0;JMP
(ReturAddress_Keyboard.keyPressed1430)

// pop static 1
@Keyboard.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Keyboard_WHILE_15
(Keyboard_WHILE_15)

// call Keyboard.keyPressed 0
@ReturAddress_Keyboard.keyPressed1433
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
@Keyboard.keyPressed
0;JMP
(ReturAddress_Keyboard.keyPressed1433)

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
@JUMP_LABEL1435
D;JNE
@SP
A=M
M=-1
@END_LABEL1435
0;JMP
(JUMP_LABEL1435)
@SP
A=M
M=0
(END_LABEL1435)
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

// if-goto Keyboard_WHILE_15_END
@SP
AM=M-1
D=M
@Keyboard_WHILE_15_END
D;JNE

// goto Keyboard_WHILE_15
@Keyboard_WHILE_15
0;JMP

// label Keyboard_WHILE_15_END
(Keyboard_WHILE_15_END)

// push static 1
@Keyboard.1
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call Output.backSpace 0
@ReturAddress_Output.backSpace1443
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
@Output.backSpace
0;JMP
(ReturAddress_Output.backSpace1443)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// call Output.printChar 1
@ReturAddress_Output.printChar1446
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
@Output.printChar
0;JMP
(ReturAddress_Output.printChar1446)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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


// function Keyboard.readLine 2
(Keyboard.readLine)
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

// call String.length 1
@ReturAddress_String.length1452
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
@String.length
0;JMP
(ReturAddress_String.length1452)

// push constant 0
@0
D=A
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
@JUMP_LABEL1454
D;JLE
@SP
A=M
M=-1
@END_LABEL1454
0;JMP
(JUMP_LABEL1454)
@SP
A=M
M=0
(END_LABEL1454)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Keyboard_IF_22
@SP
AM=M-1
D=M
@Keyboard_IF_22
D;JNE

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

// call Output.printString 1
@ReturAddress_Output.printString1458
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
@Output.printString
0;JMP
(ReturAddress_Output.printString1458)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Keyboard_IF_22
(Keyboard_IF_22)

// push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@ReturAddress_String.new1462
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
@String.new
0;JMP
(ReturAddress_String.new1462)

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

// label Keyboard_WHILE_16
(Keyboard_WHILE_16)

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

// if-goto Keyboard_WHILE_16_END
@SP
AM=M-1
D=M
@Keyboard_WHILE_16_END
D;JNE

// call Keyboard.readChar 0
@ReturAddress_Keyboard.readChar1469
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
@Keyboard.readChar
0;JMP
(ReturAddress_Keyboard.readChar1469)

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

// push constant 128
@128
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
@JUMP_LABEL1473
D;JNE
@SP
A=M
M=-1
@END_LABEL1473
0;JMP
(JUMP_LABEL1473)
@SP
A=M
M=0
(END_LABEL1473)
@SP
AM=M+1

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

// push constant 129
@129
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
@JUMP_LABEL1476
D;JNE
@SP
A=M
M=-1
@END_LABEL1476
0;JMP
(JUMP_LABEL1476)
@SP
A=M
M=0
(END_LABEL1476)
@SP
AM=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto Keyboard_IF_23
@SP
AM=M-1
D=M
@Keyboard_IF_23
D;JNE

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

// push constant 128
@128
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
@JUMP_LABEL1482
D;JNE
@SP
A=M
M=-1
@END_LABEL1482
0;JMP
(JUMP_LABEL1482)
@SP
A=M
M=0
(END_LABEL1482)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Keyboard_IF_24
@SP
AM=M-1
D=M
@Keyboard_IF_24
D;JNE

// call Output.println 0
@ReturAddress_Output.println1485
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
@Output.println
0;JMP
(ReturAddress_Output.println1485)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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


// goto Keyboard_ELSE_18
@Keyboard_ELSE_18
0;JMP

// label Keyboard_IF_24
(Keyboard_IF_24)

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

// call String.eraseLastChar 1
@ReturAddress_String.eraseLastChar1492
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
@String.eraseLastChar
0;JMP
(ReturAddress_String.eraseLastChar1492)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Output.backSpace 0
@ReturAddress_Output.backSpace1494
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
@Output.backSpace
0;JMP
(ReturAddress_Output.backSpace1494)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Keyboard_ELSE_18
(Keyboard_ELSE_18)

// goto Keyboard_ELSE_19
@Keyboard_ELSE_19
0;JMP

// label Keyboard_IF_23
(Keyboard_IF_23)

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

// call String.appendChar 2
@ReturAddress_String.appendChar1501
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar1501)

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

// label Keyboard_ELSE_19
(Keyboard_ELSE_19)

// goto Keyboard_WHILE_16
@Keyboard_WHILE_16
0;JMP

// label Keyboard_WHILE_16_END
(Keyboard_WHILE_16_END)

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


// function Keyboard.readInt 1
(Keyboard.readInt)
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

// call Keyboard.readLine 1
@ReturAddress_Keyboard.readLine1510
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
@Keyboard.readLine
0;JMP
(ReturAddress_Keyboard.readLine1510)

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

// call String.intValue 1
@ReturAddress_String.intValue1513
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
@String.intValue
0;JMP
(ReturAddress_String.intValue1513)

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


// End File Keyboard.vm

// Start File Sys.vm

// function Sys.init 0
(Sys.init)

// call Memory.init 0
@ReturAddress_Memory.init1516
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
(ReturAddress_Memory.init1516)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Math.init 0
@ReturAddress_Math.init1518
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
@Math.init
0;JMP
(ReturAddress_Math.init1518)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Screen.init 0
@ReturAddress_Screen.init1520
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
@Screen.init
0;JMP
(ReturAddress_Screen.init1520)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Output.init 0
@ReturAddress_Output.init1522
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
@Output.init
0;JMP
(ReturAddress_Output.init1522)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Keyboard.init 0
@ReturAddress_Keyboard.init1524
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
@Keyboard.init
0;JMP
(ReturAddress_Keyboard.init1524)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Main.main 0
@ReturAddress_Main.main1526
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
(ReturAddress_Main.main1526)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Sys.halt 0
@ReturAddress_Sys.halt1528
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
(ReturAddress_Sys.halt1528)

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

// label Sys_WHILE_11
(Sys_WHILE_11)

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

// if-goto Sys_WHILE_11_END
@SP
AM=M-1
D=M
@Sys_WHILE_11_END
D;JNE

// goto Sys_WHILE_11
@Sys_WHILE_11
0;JMP

// label Sys_WHILE_11_END
(Sys_WHILE_11_END)

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


// function Sys.wait 2
(Sys.wait)
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Sys_WHILE_12
(Sys_WHILE_12)

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

// push constant 0
@0
D=A
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
@JUMP_LABEL1548
D;JLE
@SP
A=M
M=-1
@END_LABEL1548
0;JMP
(JUMP_LABEL1548)
@SP
A=M
M=0
(END_LABEL1548)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Sys_WHILE_12_END
@SP
AM=M-1
D=M
@Sys_WHILE_12_END
D;JNE

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

// push constant 1
@1
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

// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 280
@280
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Sys_WHILE_13
(Sys_WHILE_13)

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

// push constant 0
@0
D=A
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
@JUMP_LABEL1560
D;JLE
@SP
A=M
M=-1
@END_LABEL1560
0;JMP
(JUMP_LABEL1560)
@SP
A=M
M=0
(END_LABEL1560)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Sys_WHILE_13_END
@SP
AM=M-1
D=M
@Sys_WHILE_13_END
D;JNE

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

// push constant 1
@1
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

// goto Sys_WHILE_13
@Sys_WHILE_13
0;JMP

// label Sys_WHILE_13_END
(Sys_WHILE_13_END)

// goto Sys_WHILE_12
@Sys_WHILE_12
0;JMP

// label Sys_WHILE_12_END
(Sys_WHILE_12_END)

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


// function Sys.error 0
(Sys.error)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@ReturAddress_String.new1575
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
@String.new
0;JMP
(ReturAddress_String.new1575)

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar1577
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar1577)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar1579
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar1579)

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar1581
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar1581)

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar1583
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar1583)

// call Output.printString 1
@ReturAddress_Output.printString1584
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
@Output.printString
0;JMP
(ReturAddress_Output.printString1584)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// call Output.printInt 1
@ReturAddress_Output.printInt1587
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
@Output.printInt
0;JMP
(ReturAddress_Output.printInt1587)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@ReturAddress_String.new1590
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
@String.new
0;JMP
(ReturAddress_String.new1590)

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.appendChar 2
@ReturAddress_String.appendChar1592
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
@String.appendChar
0;JMP
(ReturAddress_String.appendChar1592)

// call Output.printString 1
@ReturAddress_Output.printString1593
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
@Output.printString
0;JMP
(ReturAddress_Output.printString1593)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Output.println 0
@ReturAddress_Output.println1595
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
@Output.println
0;JMP
(ReturAddress_Output.println1595)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Sys.halt 0
@ReturAddress_Sys.halt1597
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
(ReturAddress_Sys.halt1597)

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


// End File Sys.vm

// Start File Output.vm

// function Output.init 0
(Output.init)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Output.0
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

// pop static 1
@Output.1
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

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 4
@Output.4
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.initMap 0
@ReturAddress_Output.initMap1610
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
@Output.initMap
0;JMP
(ReturAddress_Output.initMap1610)

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


// function Output.initMap 1
(Output.initMap)
@SP
A=M
M=0
@SP
M=M+1

// push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@ReturAddress_Array.new1616
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
@Array.new
0;JMP
(ReturAddress_Array.new1616)

// pop static 3
@Output.3
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

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1630
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1630)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 32
@32
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create1644
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1644)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1658
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1658)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 20
@20
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1672
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1672)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 35
@35
D=A
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

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1686
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1686)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// call Output.create 12
@ReturAddress_Output.create1700
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1700)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 37
@37
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1714
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1714)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1728
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1728)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1742
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1742)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1756
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1756)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1770
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1770)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 42
@42
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create1784
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1784)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 43
@43
D=A
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

// push constant 0
@0
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create1798
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1798)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 44
@44
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// call Output.create 12
@ReturAddress_Output.create1812
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1812)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 45
@45
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create1826
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1826)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 46
@46
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1840
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1840)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 47
@47
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 1
@1
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1854
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1854)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1868
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1868)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1882
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1882)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1896
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1896)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1910
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1910)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1924
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1924)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1938
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1938)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1952
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1952)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1966
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1966)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1980
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1980)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create1994
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create1994)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 58
@58
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create2008
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2008)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 59
@59
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2022
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2022)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 60
@60
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2036
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2036)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 61
@61
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2050
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2050)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 62
@62
D=A
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

// push constant 0
@0
D=A
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

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create2064
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2064)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
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

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2078
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2078)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2092
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2092)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2106
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2106)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2120
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2120)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
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

// push constant 3
@3
D=A
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

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2134
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2134)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2148
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2148)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2162
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2162)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
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

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
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

// call Output.create 12
@ReturAddress_Output.create2176
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2176)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
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

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 44
@44
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2190
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2190)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2204
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2204)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2218
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2218)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2232
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2232)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2246
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2246)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 76
@76
D=A
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

// push constant 3
@3
D=A
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

// push constant 3
@3
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2260
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2260)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2274
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2274)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2288
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2288)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2302
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2302)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
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

// push constant 3
@3
D=A
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

// push constant 3
@3
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2316
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2316)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
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

// call Output.create 12
@ReturAddress_Output.create2330
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2330)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2344
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2344)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2358
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2358)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2372
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2372)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2386
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2386)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2400
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2400)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2414
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2414)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2428
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2428)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2442
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2442)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2456
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2456)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2470
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2470)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 92
@92
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
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

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2484
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2484)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2498
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2498)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2512
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2512)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 95
@95
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
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

// call Output.create 12
@ReturAddress_Output.create2526
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2526)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2540
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2540)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 97
@97
D=A
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

// push constant 0
@0
D=A
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

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2554
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2554)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 98
@98
D=A
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

// push constant 3
@3
D=A
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

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2568
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2568)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 99
@99
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2582
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2582)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2596
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2596)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 101
@101
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2610
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2610)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2624
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2624)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 103
@103
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// call Output.create 12
@ReturAddress_Output.create2638
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2638)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 104
@104
D=A
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

// push constant 3
@3
D=A
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

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2652
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2652)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2666
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2666)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
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

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// call Output.create 12
@ReturAddress_Output.create2680
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2680)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 107
@107
D=A
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

// push constant 3
@3
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2694
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2694)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2708
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2708)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 109
@109
D=A
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

// push constant 0
@0
D=A
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

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 43
@43
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2722
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2722)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 110
@110
D=A
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

// push constant 0
@0
D=A
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

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2736
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2736)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 111
@111
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2750
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2750)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 112
@112
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
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

// push constant 3
@3
D=A
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

// call Output.create 12
@ReturAddress_Output.create2764
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2764)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 113
@113
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
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

// call Output.create 12
@ReturAddress_Output.create2778
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2778)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 114
@114
D=A
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

// push constant 0
@0
D=A
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

// push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2792
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2792)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 115
@115
D=A
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

// push constant 0
@0
D=A
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

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2806
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2806)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 28
@28
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2820
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2820)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 117
@117
D=A
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

// push constant 0
@0
D=A
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

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 54
@54
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2834
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2834)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 118
@118
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2848
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2848)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 119
@119
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 18
@18
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2862
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2862)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 120
@120
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2876
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2876)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 121
@121
D=A
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

// push constant 0
@0
D=A
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

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
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

// call Output.create 12
@ReturAddress_Output.create2890
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2890)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 122
@122
D=A
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

// push constant 0
@0
D=A
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

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2904
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2904)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2918
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2918)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2932
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2932)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 7
@7
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2946
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2946)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 25
@25
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.create 12
@ReturAddress_Output.create2960
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
@12
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
@Output.create
0;JMP
(ReturAddress_Output.create2960)

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


// function Output.create 1
(Output.create)
@SP
A=M
M=0
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Array.new 1
@ReturAddress_Array.new2966
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
@Array.new
0;JMP
(ReturAddress_Array.new2966)

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

// push static 3
@Output.3
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

// push constant 1
@1
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 2
@2
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

// push constant 2
@2
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 3
@3
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

// push constant 3
@3
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 4
@4
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

// push constant 4
@4
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 5
@5
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

// push constant 5
@5
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 6
@6
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

// push constant 6
@6
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 7
@7
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

// push constant 7
@7
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 8
@8
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

// push constant 8
@8
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 9
@9
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

// push constant 9
@9
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 10
@10
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

// push constant 10
@10
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push argument 11
@11
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


// function Output.getMap 0
(Output.getMap)

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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3069
D;JGE
@SP
A=M
M=-1
@END_LABEL3069
0;JMP
(JUMP_LABEL3069)
@SP
A=M
M=0
(END_LABEL3069)
@SP
AM=M+1

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

// push constant 126
@126
D=A
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
@JUMP_LABEL3072
D;JLE
@SP
A=M
M=-1
@END_LABEL3072
0;JMP
(JUMP_LABEL3072)
@SP
A=M
M=0
(END_LABEL3072)
@SP
AM=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_42
@SP
AM=M-1
D=M
@Output_IF_42
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop argument 0
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Output_IF_42
(Output_IF_42)

// push static 3
@Output.3
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


// function Output.moveCursor 1
(Output.moveCursor)
@SP
A=M
M=0
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

// pop static 0
@Output.0
D=A
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

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 63
@63
D=A
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
@JUMP_LABEL3092
D;JLE
@SP
A=M
M=-1
@END_LABEL3092
0;JMP
(JUMP_LABEL3092)
@SP
A=M
M=0
(END_LABEL3092)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_43
@SP
AM=M-1
D=M
@Output_IF_43
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Output_IF_43
(Output_IF_43)

// push static 0
@Output.0
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3104
D;JGE
@SP
A=M
M=-1
@END_LABEL3104
0;JMP
(JUMP_LABEL3104)
@SP
A=M
M=0
(END_LABEL3104)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_44
@SP
AM=M-1
D=M
@Output_IF_44
D;JNE

// push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 0
@Output.0
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Output_IF_44
(Output_IF_44)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 22
@22
D=A
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
@JUMP_LABEL3116
D;JLE
@SP
A=M
M=-1
@END_LABEL3116
0;JMP
(JUMP_LABEL3116)
@SP
A=M
M=0
(END_LABEL3116)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_45
@SP
AM=M-1
D=M
@Output_IF_45
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Output_IF_45
(Output_IF_45)

// push static 1
@Output.1
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3124
D;JGE
@SP
A=M
M=-1
@END_LABEL3124
0;JMP
(JUMP_LABEL3124)
@SP
A=M
M=0
(END_LABEL3124)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_46
@SP
AM=M-1
D=M
@Output_IF_46
D;JNE

// push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Output.1
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Output_IF_46
(Output_IF_46)

// push static 0
@Output.0
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

// call Math.divide 2
@ReturAddress_Math.divide3132
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
@Math.divide
0;JMP
(ReturAddress_Math.divide3132)

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

// push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply3136
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply3136)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop static 2
@Output.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Output.clearChar 0
@ReturAddress_Output.clearChar3140
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
@Output.clearChar
0;JMP
(ReturAddress_Output.clearChar3140)

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


// function Output.printChar 5
(Output.printChar)
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

// push constant 129
@129
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
@JUMP_LABEL3147
D;JNE
@SP
A=M
M=-1
@END_LABEL3147
0;JMP
(JUMP_LABEL3147)
@SP
A=M
M=0
(END_LABEL3147)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

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

// push constant 128
@128
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
@JUMP_LABEL3151
D;JNE
@SP
A=M
M=-1
@END_LABEL3151
0;JMP
(JUMP_LABEL3151)
@SP
A=M
M=0
(END_LABEL3151)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_47
@SP
AM=M-1
D=M
@Output_IF_47
D;JNE

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

// call Output.getMap 1
@ReturAddress_Output.getMap3157
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
@Output.getMap
0;JMP
(ReturAddress_Output.getMap3157)

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@3
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

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push constant 1
@1
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
@JUMP_LABEL3165
D;JNE
@SP
A=M
M=-1
@END_LABEL3165
0;JMP
(JUMP_LABEL3165)
@SP
A=M
M=0
(END_LABEL3165)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_48
@SP
AM=M-1
D=M
@Output_IF_48
D;JNE

// push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// goto Output_ELSE_33
@Output_ELSE_33
0;JMP

// label Output_IF_48
(Output_IF_48)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// label Output_ELSE_33
(Output_ELSE_33)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 4
@4
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

// label Output_WHILE_17
(Output_WHILE_17)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3180
D;JGE
@SP
A=M
M=-1
@END_LABEL3180
0;JMP
(JUMP_LABEL3180)
@SP
A=M
M=0
(END_LABEL3180)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_WHILE_17_END
@SP
AM=M-1
D=M
@Output_WHILE_17_END
D;JNE

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 4
@4
D=A
@LCL
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

// push static 4
@Output.4
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

// push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push local 3
@3
D=A
@LCL
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply3201
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply3201)

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
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

// pop local 4
@4
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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop local 3
@3
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

// goto Output_WHILE_17
@Output_WHILE_17
0;JMP

// label Output_WHILE_17_END
(Output_WHILE_17_END)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// call Output.moveCursor 2
@ReturAddress_Output.moveCursor3221
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
@Output.moveCursor
0;JMP
(ReturAddress_Output.moveCursor3221)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Output_IF_47
(Output_IF_47)

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


// function Output.printString 1
(Output.printString)
@SP
A=M
M=0
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

// label Output_WHILE_18
(Output_WHILE_18)

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

// call String.length 1
@ReturAddress_String.length3232
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
@String.length
0;JMP
(ReturAddress_String.length3232)

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3233
D;JGE
@SP
A=M
M=-1
@END_LABEL3233
0;JMP
(JUMP_LABEL3233)
@SP
A=M
M=0
(END_LABEL3233)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_WHILE_18_END
@SP
AM=M-1
D=M
@Output_WHILE_18_END
D;JNE

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

// call String.charAt 2
@ReturAddress_String.charAt3238
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
@String.charAt
0;JMP
(ReturAddress_String.charAt3238)

// call Output.printChar 1
@ReturAddress_Output.printChar3239
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
@Output.printChar
0;JMP
(ReturAddress_Output.printChar3239)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// goto Output_WHILE_18
@Output_WHILE_18
0;JMP

// label Output_WHILE_18_END
(Output_WHILE_18_END)

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


// function Output.printInt 1
(Output.printInt)
@SP
A=M
M=0
@SP
M=M+1

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// call String.new 1
@ReturAddress_String.new3251
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
@String.new
0;JMP
(ReturAddress_String.new3251)

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

// call String.setInt 2
@ReturAddress_String.setInt3255
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
@String.setInt
0;JMP
(ReturAddress_String.setInt3255)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// call Output.printString 1
@ReturAddress_Output.printString3258
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
@Output.printString
0;JMP
(ReturAddress_Output.printString3258)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// call String.dispose 1
@ReturAddress_String.dispose3261
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
@String.dispose
0;JMP
(ReturAddress_String.dispose3261)

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


// function Output.println 0
(Output.println)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Output.moveCursor 2
@ReturAddress_Output.moveCursor3270
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
@Output.moveCursor
0;JMP
(ReturAddress_Output.moveCursor3270)

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


// function Output.backSpace 0
(Output.backSpace)

// push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// call Output.moveCursor 2
@ReturAddress_Output.moveCursor3279
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
@Output.moveCursor
0;JMP
(ReturAddress_Output.moveCursor3279)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// call Output.clearChar 0
@ReturAddress_Output.clearChar3281
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
@Output.clearChar
0;JMP
(ReturAddress_Output.clearChar3281)

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


// function Output.clearChar 3
(Output.clearChar)
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
@SP
A=M
M=0
@SP
M=M+1

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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
@JUMP_LABEL3288
D;JNE
@SP
A=M
M=-1
@END_LABEL3288
0;JMP
(JUMP_LABEL3288)
@SP
A=M
M=0
(END_LABEL3288)
@SP
AM=M+1

// push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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
@JUMP_LABEL3293
D;JNE
@SP
A=M
M=-1
@END_LABEL3293
0;JMP
(JUMP_LABEL3293)
@SP
A=M
M=0
(END_LABEL3293)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_49
@SP
AM=M-1
D=M
@Output_IF_49
D;JNE

// push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// goto Output_ELSE_34
@Output_ELSE_34
0;JMP

// label Output_IF_49
(Output_IF_49)

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// label Output_ELSE_34
(Output_ELSE_34)

// label Output_WHILE_19
(Output_WHILE_19)

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

// push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3308
D;JGE
@SP
A=M
M=-1
@END_LABEL3308
0;JMP
(JUMP_LABEL3308)
@SP
A=M
M=0
(END_LABEL3308)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_WHILE_19_END
@SP
AM=M-1
D=M
@Output_WHILE_19_END
D;JNE

// push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
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

// call Math.multiply 2
@ReturAddress_Math.multiply3314
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply3314)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 255
@255
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
@JUMP_LABEL3319
D;JNE
@SP
A=M
M=-1
@END_LABEL3319
0;JMP
(JUMP_LABEL3319)
@SP
A=M
M=0
(END_LABEL3319)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Output_IF_50
@SP
AM=M-1
D=M
@Output_IF_50
D;JNE

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

// push static 4
@Output.4
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

// push static 4
@Output.4
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// goto Output_ELSE_35
@Output_ELSE_35
0;JMP

// label Output_IF_50
(Output_IF_50)

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

// push static 4
@Output.4
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

// label Output_ELSE_35
(Output_ELSE_35)

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

// goto Output_WHILE_19
@Output_WHILE_19
0;JMP

// label Output_WHILE_19_END
(Output_WHILE_19_END)

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


// End File Output.vm

// Start File Screen.vm

// function Screen.init 0
(Screen.init)

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop static 1
@Screen.1
D=A
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

// neg
@SP
AM=M-1
M=-M
@SP
M=M+1

// pop static 2
@Screen.2
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// call Math.getPowersOfTwo 0
@ReturAddress_Math.getPowersOfTwo3361
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
@Math.getPowersOfTwo
0;JMP
(ReturAddress_Math.getPowersOfTwo3361)

// pop static 0
@Screen.0
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


// function Screen.setColor 0
(Screen.setColor)

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

// pop static 2
@Screen.2
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


// function Screen.drawPixel 2
(Screen.drawPixel)
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

// push constant 32
@32
D=A
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

// call Math.multiply 2
@ReturAddress_Math.multiply3373
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply3373)

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide3376
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
@Math.divide
0;JMP
(ReturAddress_Math.divide3376)

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

// push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_8
@SP
AM=M-1
D=M
@Screen_IF_8
D;JNE

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

// push static 1
@Screen.1
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

// push static 1
@Screen.1
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

// push static 0
@Screen.0
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

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// goto Screen_ELSE_6
@Screen_ELSE_6
0;JMP

// label Screen_IF_8
(Screen_IF_8)

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

// push static 1
@Screen.1
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

// push static 1
@Screen.1
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

// push static 0
@Screen.0
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

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// label Screen_ELSE_6
(Screen_ELSE_6)

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


// function Screen.drawLine 7
(Screen.drawLine)
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
@SP
A=M
M=0
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 3
@3
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

// push argument 3
@3
D=A
@ARG
A=D+M
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 4
@4
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

// push local 3
@3
D=A
@LCL
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
@JUMP_LABEL3439
D;JNE
@SP
A=M
M=-1
@END_LABEL3439
0;JMP
(JUMP_LABEL3439)
@SP
A=M
M=0
(END_LABEL3439)
@SP
AM=M+1

// push local 4
@4
D=A
@LCL
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
@JUMP_LABEL3442
D;JNE
@SP
A=M
M=-1
@END_LABEL3442
0;JMP
(JUMP_LABEL3442)
@SP
A=M
M=0
(END_LABEL3442)
@SP
AM=M+1

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_9
@SP
AM=M-1
D=M
@Screen_IF_9
D;JNE

// push local 3
@3
D=A
@LCL
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
@JUMP_LABEL3448
D;JNE
@SP
A=M
M=-1
@END_LABEL3448
0;JMP
(JUMP_LABEL3448)
@SP
A=M
M=0
(END_LABEL3448)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_10
@SP
AM=M-1
D=M
@Screen_IF_10
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

// push argument 3
@3
D=A
@ARG
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

// call Screen.drawVerticalLine 3
@ReturAddress_Screen.drawVerticalLine3454
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
@3
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
@Screen.drawVerticalLine
0;JMP
(ReturAddress_Screen.drawVerticalLine3454)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto Screen_ELSE_7
@Screen_ELSE_7
0;JMP

// label Screen_IF_10
(Screen_IF_10)

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

// push argument 2
@2
D=A
@ARG
A=D+M
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

// call Screen.drawHorizontalLine 3
@ReturAddress_Screen.drawHorizontalLine3461
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
@3
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
@Screen.drawHorizontalLine
0;JMP
(ReturAddress_Screen.drawHorizontalLine3461)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Screen_ELSE_7
(Screen_ELSE_7)

// goto Screen_ELSE_8
@Screen_ELSE_8
0;JMP

// label Screen_IF_9
(Screen_IF_9)

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1
@ReturAddress_Math.abs3467
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3467)

// pop local 5
@5
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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.abs 1
@ReturAddress_Math.abs3470
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3470)

// pop local 6
@6
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// label Screen_WHILE_2
(Screen_WHILE_2)

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

// call Math.abs 1
@ReturAddress_Math.abs3480
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3480)

// push local 5
@5
D=A
@LCL
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
@JUMP_LABEL3482
D;JLE
@SP
A=M
M=-1
@END_LABEL3482
0;JMP
(JUMP_LABEL3482)
@SP
A=M
M=0
(END_LABEL3482)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

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

// call Math.abs 1
@ReturAddress_Math.abs3485
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3485)

// push local 6
@6
D=A
@LCL
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
@JUMP_LABEL3487
D;JLE
@SP
A=M
M=-1
@END_LABEL3487
0;JMP
(JUMP_LABEL3487)
@SP
A=M
M=0
(END_LABEL3487)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_2_END
@SP
AM=M-1
D=M
@Screen_WHILE_2_END
D;JNE

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawPixel 2
@ReturAddress_Screen.drawPixel3498
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
@Screen.drawPixel
0;JMP
(ReturAddress_Screen.drawPixel3498)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push local 2
@2
D=A
@LCL
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3502
D;JGE
@SP
A=M
M=-1
@END_LABEL3502
0;JMP
(JUMP_LABEL3502)
@SP
A=M
M=0
(END_LABEL3502)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_11
@SP
AM=M-1
D=M
@Screen_IF_11
D;JNE

// push local 3
@3
D=A
@LCL
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3507
D;JLE
@SP
A=M
M=-1
@END_LABEL3507
0;JMP
(JUMP_LABEL3507)
@SP
A=M
M=0
(END_LABEL3507)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_12
@SP
AM=M-1
D=M
@Screen_IF_12
D;JNE

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

// goto Screen_ELSE_9
@Screen_ELSE_9
0;JMP

// label Screen_IF_12
(Screen_IF_12)

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

// push constant 1
@1
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

// label Screen_ELSE_9
(Screen_ELSE_9)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 6
@6
D=A
@LCL
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

// pop local 2
@2
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

// goto Screen_ELSE_10
@Screen_ELSE_10
0;JMP

// label Screen_IF_11
(Screen_IF_11)

// push local 4
@4
D=A
@LCL
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3529
D;JLE
@SP
A=M
M=-1
@END_LABEL3529
0;JMP
(JUMP_LABEL3529)
@SP
A=M
M=0
(END_LABEL3529)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_13
@SP
AM=M-1
D=M
@Screen_IF_13
D;JNE

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

// goto Screen_ELSE_11
@Screen_ELSE_11
0;JMP

// label Screen_IF_13
(Screen_IF_13)

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

// push constant 1
@1
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

// label Screen_ELSE_11
(Screen_ELSE_11)

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@5
D=A
@LCL
A=D+M
D=M
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

// pop local 2
@2
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

// label Screen_ELSE_10
(Screen_ELSE_10)

// goto Screen_WHILE_2
@Screen_WHILE_2
0;JMP

// label Screen_WHILE_2_END
(Screen_WHILE_2_END)

// label Screen_ELSE_8
(Screen_ELSE_8)

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


// function Screen.drawHorizontalLineFast 3
(Screen.drawHorizontalLineFast)
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
@SP
A=M
M=0
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.abs 1
@ReturAddress_Math.abs3557
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3557)

// pop local 2
@2
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

// call Math.min 2
@ReturAddress_Math.min3561
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
@Math.min
0;JMP
(ReturAddress_Math.min3561)

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

// call Math.max 2
@ReturAddress_Math.max3565
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
@Math.max
0;JMP
(ReturAddress_Math.max3565)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 3
@3
D=A
@ARG
A=D+M
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.populateLine 5
@ReturAddress_Screen.populateLine3572
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
@5
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
@Screen.populateLine
0;JMP
(ReturAddress_Screen.populateLine3572)

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


// function Screen.populateLine 2
(Screen.populateLine)
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3579
D;JNE
@SP
A=M
M=-1
@END_LABEL3579
0;JMP
(JUMP_LABEL3579)
@SP
A=M
M=0
(END_LABEL3579)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_14
@SP
AM=M-1
D=M
@Screen_IF_14
D;JNE

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Screen_WHILE_3
(Screen_WHILE_3)

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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// push argument 4
@4
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3597
D;JGE
@SP
A=M
M=-1
@END_LABEL3597
0;JMP
(JUMP_LABEL3597)
@SP
A=M
M=0
(END_LABEL3597)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_3_END
@SP
AM=M-1
D=M
@Screen_WHILE_3_END
D;JNE

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

// push static 0
@Screen.0
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// goto Screen_WHILE_3
@Screen_WHILE_3
0;JMP

// label Screen_WHILE_3_END
(Screen_WHILE_3_END)

// push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_15
@SP
AM=M-1
D=M
@Screen_IF_15
D;JNE

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
@Screen.1
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

// push static 1
@Screen.1
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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// goto Screen_ELSE_12
@Screen_ELSE_12
0;JMP

// label Screen_IF_15
(Screen_IF_15)

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
@Screen.1
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

// push static 1
@Screen.1
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

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// label Screen_ELSE_12
(Screen_ELSE_12)

// goto Screen_ELSE_13
@Screen_ELSE_13
0;JMP

// label Screen_IF_14
(Screen_IF_14)

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Screen_WHILE_4
(Screen_WHILE_4)

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3660
D;JGE
@SP
A=M
M=-1
@END_LABEL3660
0;JMP
(JUMP_LABEL3660)
@SP
A=M
M=0
(END_LABEL3660)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_4_END
@SP
AM=M-1
D=M
@Screen_WHILE_4_END
D;JNE

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

// push static 0
@Screen.0
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// goto Screen_WHILE_4
@Screen_WHILE_4
0;JMP

// label Screen_WHILE_4_END
(Screen_WHILE_4_END)

// push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_16
@SP
AM=M-1
D=M
@Screen_IF_16
D;JNE

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
@Screen.1
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

// push static 1
@Screen.1
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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// goto Screen_ELSE_14
@Screen_ELSE_14
0;JMP

// label Screen_IF_16
(Screen_IF_16)

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
@Screen.1
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

// push static 1
@Screen.1
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

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// label Screen_ELSE_14
(Screen_ELSE_14)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Screen_WHILE_5
(Screen_WHILE_5)

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3723
D;JGE
@SP
A=M
M=-1
@END_LABEL3723
0;JMP
(JUMP_LABEL3723)
@SP
A=M
M=0
(END_LABEL3723)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_5_END
@SP
AM=M-1
D=M
@Screen_WHILE_5_END
D;JNE

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

// push static 0
@Screen.0
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// goto Screen_WHILE_5
@Screen_WHILE_5
0;JMP

// label Screen_WHILE_5_END
(Screen_WHILE_5_END)

// push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_17
@SP
AM=M-1
D=M
@Screen_IF_17
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

// push static 1
@Screen.1
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

// push static 1
@Screen.1
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

// or
@SP
AM=M-1
D=M
A=A-1
M=D|M

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

// goto Screen_ELSE_15
@Screen_ELSE_15
0;JMP

// label Screen_IF_17
(Screen_IF_17)

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

// push static 1
@Screen.1
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

// push static 1
@Screen.1
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

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

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

// label Screen_ELSE_15
(Screen_ELSE_15)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3779
D;JLE
@SP
A=M
M=-1
@END_LABEL3779
0;JMP
(JUMP_LABEL3779)
@SP
A=M
M=0
(END_LABEL3779)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_18
@SP
AM=M-1
D=M
@Screen_IF_18
D;JNE

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Screen_WHILE_6
(Screen_WHILE_6)

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3789
D;JGE
@SP
A=M
M=-1
@END_LABEL3789
0;JMP
(JUMP_LABEL3789)
@SP
A=M
M=0
(END_LABEL3789)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_6_END
@SP
AM=M-1
D=M
@Screen_WHILE_6_END
D;JNE

// push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_19
@SP
AM=M-1
D=M
@Screen_IF_19
D;JNE

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Screen.1
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

// goto Screen_ELSE_16
@Screen_ELSE_16
0;JMP

// label Screen_IF_19
(Screen_IF_19)

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// push static 1
@Screen.1
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

// label Screen_ELSE_16
(Screen_ELSE_16)

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

// goto Screen_WHILE_6
@Screen_WHILE_6
0;JMP

// label Screen_WHILE_6_END
(Screen_WHILE_6_END)

// label Screen_IF_18
(Screen_IF_18)

// label Screen_ELSE_13
(Screen_ELSE_13)

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


// function Screen.drawHorizontalLine 6
(Screen.drawHorizontalLine)
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.abs 1
@ReturAddress_Math.abs3833
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3833)

// pop local 3
@3
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

// call Math.min 2
@ReturAddress_Math.min3837
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
@Math.min
0;JMP
(ReturAddress_Math.min3837)

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

// call Math.max 2
@ReturAddress_Math.max3841
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
@Math.max
0;JMP
(ReturAddress_Math.max3841)

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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.multiply 2
@ReturAddress_Math.multiply3845
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply3845)

// pop local 2
@2
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

// push local 2
@2
D=A
@LCL
A=D+M
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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide3850
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
@Math.divide
0;JMP
(ReturAddress_Math.divide3850)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 4
@4
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide3856
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
@Math.divide
0;JMP
(ReturAddress_Math.divide3856)

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 5
@5
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

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@5
D=A
@LCL
A=D+M
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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.populateLine 5
@ReturAddress_Screen.populateLine3864
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
@5
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
@Screen.populateLine
0;JMP
(ReturAddress_Screen.populateLine3864)

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


// function Screen.drawVerticalLine 3
(Screen.drawVerticalLine)
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
@SP
A=M
M=0
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.abs 1
@ReturAddress_Math.abs3872
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3872)

// pop local 2
@2
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// call Math.min 2
@ReturAddress_Math.min3878
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
@Math.min
0;JMP
(ReturAddress_Math.min3878)

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

// label Screen_WHILE_7
(Screen_WHILE_7)

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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3883
D;JGE
@SP
A=M
M=-1
@END_LABEL3883
0;JMP
(JUMP_LABEL3883)
@SP
A=M
M=0
(END_LABEL3883)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_7_END
@SP
AM=M-1
D=M
@Screen_WHILE_7_END
D;JNE

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawPixel 2
@ReturAddress_Screen.drawPixel3890
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
@Screen.drawPixel
0;JMP
(ReturAddress_Screen.drawPixel3890)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// goto Screen_WHILE_7
@Screen_WHILE_7
0;JMP

// label Screen_WHILE_7_END
(Screen_WHILE_7_END)

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


// function Screen.drawRectangle 8
(Screen.drawRectangle)
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

// push argument 3
@3
D=A
@ARG
A=D+M
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Math.abs 1
@ReturAddress_Math.abs3904
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
@Math.abs
0;JMP
(ReturAddress_Math.abs3904)

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

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.min 2
@ReturAddress_Math.min3908
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
@Math.min
0;JMP
(ReturAddress_Math.min3908)

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

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// call Math.multiply 2
@ReturAddress_Math.multiply3912
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
@Math.multiply
0;JMP
(ReturAddress_Math.multiply3912)

// pop local 2
@2
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.min 2
@ReturAddress_Math.min3916
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
@Math.min
0;JMP
(ReturAddress_Math.min3916)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide3918
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
@Math.divide
0;JMP
(ReturAddress_Math.divide3918)

// pop local 7
@7
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Math.max 2
@ReturAddress_Math.max3922
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
@Math.max
0;JMP
(ReturAddress_Math.max3922)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Math.divide 2
@ReturAddress_Math.divide3924
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
@Math.divide
0;JMP
(ReturAddress_Math.divide3924)

// pop local 6
@6
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

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@3
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

// label Screen_WHILE_8
(Screen_WHILE_8)

// push local 3
@3
D=A
@LCL
A=D+M
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3933
D;JGE
@SP
A=M
M=-1
@END_LABEL3933
0;JMP
(JUMP_LABEL3933)
@SP
A=M
M=0
(END_LABEL3933)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_8_END
@SP
AM=M-1
D=M
@Screen_WHILE_8_END
D;JNE

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 7
@7
D=A
@LCL
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

// pop local 4
@4
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 6
@6
D=A
@LCL
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

// pop local 5
@5
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Screen.drawHorizontalLineFast 4
@ReturAddress_Screen.drawHorizontalLineFast3948
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
@4
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
@Screen.drawHorizontalLineFast
0;JMP
(ReturAddress_Screen.drawHorizontalLineFast3948)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 32
@32
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

// pop local 2
@2
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

// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop local 3
@3
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

// goto Screen_WHILE_8
@Screen_WHILE_8
0;JMP

// label Screen_WHILE_8_END
(Screen_WHILE_8_END)

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


// function Screen.drawCircle 3
(Screen.drawCircle)
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
@SP
A=M
M=0
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 2
@2
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// pop local 2
@2
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

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

// push argument 2
@2
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

// call Screen.drawHorizontalLine 3
@ReturAddress_Screen.drawHorizontalLine3980
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
@3
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
@Screen.drawHorizontalLine
0;JMP
(ReturAddress_Screen.drawHorizontalLine3980)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Screen_WHILE_9
(Screen_WHILE_9)

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3985
D;JLE
@SP
A=M
M=-1
@END_LABEL3985
0;JMP
(JUMP_LABEL3985)
@SP
A=M
M=0
(END_LABEL3985)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_9_END
@SP
AM=M-1
D=M
@Screen_WHILE_9_END
D;JNE

// push local 2
@2
D=A
@LCL
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL3990
D;JGE
@SP
A=M
M=-1
@END_LABEL3990
0;JMP
(JUMP_LABEL3990)
@SP
A=M
M=0
(END_LABEL3990)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_20
@SP
AM=M-1
D=M
@Screen_IF_20
D;JNE

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 6
@6
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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// pop local 2
@2
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

// goto Screen_ELSE_17
@Screen_ELSE_17
0;JMP

// label Screen_IF_20
(Screen_IF_20)

// push local 2
@2
D=A
@LCL
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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL4013
D;JLE
@SP
A=M
M=-1
@END_LABEL4013
0;JMP
(JUMP_LABEL4013)
@SP
A=M
M=0
(END_LABEL4013)
@SP
AM=M+1

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

// gt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL4016
D;JLE
@SP
A=M
M=-1
@END_LABEL4016
0;JMP
(JUMP_LABEL4016)
@SP
A=M
M=0
(END_LABEL4016)
@SP
AM=M+1

// and
@SP
AM=M-1
D=M
A=A-1
M=D&M

// not
@SP
A=M-1
M=!M

// if-goto Screen_IF_21
@SP
AM=M-1
D=M
@Screen_IF_21
D;JNE

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

// push constant 1
@1
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

// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop local 2
@2
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

// label Screen_IF_21
(Screen_IF_21)

// label Screen_ELSE_17
(Screen_ELSE_17)

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawHorizontalLine 3
@ReturAddress_Screen.drawHorizontalLine4047
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
@3
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
@Screen.drawHorizontalLine
0;JMP
(ReturAddress_Screen.drawHorizontalLine4047)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Screen.drawHorizontalLine 3
@ReturAddress_Screen.drawHorizontalLine4058
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
@3
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
@Screen.drawHorizontalLine
0;JMP
(ReturAddress_Screen.drawHorizontalLine4058)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

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

// add
@SP
AM=M-1
D=M
A=A-1
M=D+M

// call Screen.drawHorizontalLine 3
@ReturAddress_Screen.drawHorizontalLine4069
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
@3
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
@Screen.drawHorizontalLine
0;JMP
(ReturAddress_Screen.drawHorizontalLine4069)

// pop temp 0
@SP
AM=M-1
D=M
@R5
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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

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

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// call Screen.drawHorizontalLine 3
@ReturAddress_Screen.drawHorizontalLine4080
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
@3
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
@Screen.drawHorizontalLine
0;JMP
(ReturAddress_Screen.drawHorizontalLine4080)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto Screen_WHILE_9
@Screen_WHILE_9
0;JMP

// label Screen_WHILE_9_END
(Screen_WHILE_9_END)

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


// function Screen.clearScreen 2
(Screen.clearScreen)
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

// push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

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

// label Screen_WHILE_10
(Screen_WHILE_10)

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

// push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL4092
D;JGE
@SP
A=M
M=-1
@END_LABEL4092
0;JMP
(JUMP_LABEL4092)
@SP
A=M
M=0
(END_LABEL4092)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Screen_WHILE_10_END
@SP
AM=M-1
D=M
@Screen_WHILE_10_END
D;JNE

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

// goto Screen_WHILE_10
@Screen_WHILE_10
0;JMP

// label Screen_WHILE_10_END
(Screen_WHILE_10_END)

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


// End File Screen.vm

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
@ReturAddress_Memory.getFreeBlock4157
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
(ReturAddress_Memory.getFreeBlock4157)

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
@JUMP_LABEL4224
D;JLE
@SP
A=M
M=-1
@END_LABEL4224
0;JMP
(JUMP_LABEL4224)
@SP
A=M
M=0
(END_LABEL4224)
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

// if-goto Memory_IF_51
@SP
AM=M-1
D=M
@Memory_IF_51
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


// goto Memory_ELSE_36
@Memory_ELSE_36
0;JMP

// label Memory_IF_51
(Memory_IF_51)

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
@JUMP_LABEL4240
D;JNE
@SP
A=M
M=-1
@END_LABEL4240
0;JMP
(JUMP_LABEL4240)
@SP
A=M
M=0
(END_LABEL4240)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Memory_IF_52
@SP
AM=M-1
D=M
@Memory_IF_52
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
@ReturAddress_Sys.error4244
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
(ReturAddress_Sys.error4244)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto Memory_ELSE_37
@Memory_ELSE_37
0;JMP

// label Memory_IF_52
(Memory_IF_52)

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
@ReturAddress_Memory.getFreeBlock4256
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
(ReturAddress_Memory.getFreeBlock4256)

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


// label Memory_ELSE_37
(Memory_ELSE_37)

// label Memory_ELSE_36
(Memory_ELSE_36)

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

// Start File Bat.vm

// function Bat.new 0
(Bat.new)

// push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Memory.alloc 1
@ReturAddress_Memory.alloc4295
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
@Memory.alloc
0;JMP
(ReturAddress_Memory.alloc4295)

// pop pointer 0
@R3
D=A
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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// pop this 1
@1
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop this 3
@3
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 4
@4
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.show 1
@ReturAddress_Bat.show4308
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
@Bat.show
0;JMP
(ReturAddress_Bat.show4308)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
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


// function Bat.dispose 0
(Bat.dispose)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Memory.deAlloc 1
@ReturAddress_Memory.deAlloc4316
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
@Memory.deAlloc
0;JMP
(ReturAddress_Memory.deAlloc4316)

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


// function Bat.show 0
(Bat.show)

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

// pop pointer 0
@R3
D=A
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

// neg
@SP
AM=M-1
M=-M
@SP
M=M+1

// call Screen.setColor 1
@ReturAddress_Screen.setColor4325
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor4325)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.draw 1
@ReturAddress_Bat.draw4328
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
@Bat.draw
0;JMP
(ReturAddress_Bat.draw4328)

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


// function Bat.hide 0
(Bat.hide)

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

// pop pointer 0
@R3
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

// call Screen.setColor 1
@ReturAddress_Screen.setColor4336
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor4336)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.draw 1
@ReturAddress_Bat.draw4339
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
@Bat.draw
0;JMP
(ReturAddress_Bat.draw4339)

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


// function Bat.draw 0
(Bat.draw)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle4354
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle4354)

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


// function Bat.setDirection 0
(Bat.setDirection)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

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

// pop this 4
@4
D=A
@THIS
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


// function Bat.getLeft 0
(Bat.getLeft)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
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


// function Bat.getRight 0
(Bat.getRight)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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


// function Bat.setWidth 0
(Bat.setWidth)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.hide 1
@ReturAddress_Bat.hide4381
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
@Bat.hide
0;JMP
(ReturAddress_Bat.hide4381)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

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

// pop this 2
@2
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push pointer 0
@R3
D=M
@SP
A=M
M=D
@SP
M=M+1

// call Bat.show 1
@ReturAddress_Bat.show4386
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
@Bat.show
0;JMP
(ReturAddress_Bat.show4386)

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


// function Bat.move 0
(Bat.move)

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

// pop pointer 0
@R3
D=A
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 4
@4
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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
@JUMP_LABEL4395
D;JNE
@SP
A=M
M=-1
@END_LABEL4395
0;JMP
(JUMP_LABEL4395)
@SP
A=M
M=0
(END_LABEL4395)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Bat_IF_67
@SP
AM=M-1
D=M
@Bat_IF_67
D;JNE

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@JUMP_LABEL4404
D;JGE
@SP
A=M
M=-1
@END_LABEL4404
0;JMP
(JUMP_LABEL4404)
@SP
A=M
M=0
(END_LABEL4404)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Bat_IF_68
@SP
AM=M-1
D=M
@Bat_IF_68
D;JNE

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Bat_IF_68
(Bat_IF_68)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1
@ReturAddress_Screen.setColor4411
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor4411)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle4427
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle4427)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

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

// call Screen.setColor 1
@ReturAddress_Screen.setColor4431
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor4431)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle4441
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle4441)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// goto Bat_ELSE_44
@Bat_ELSE_44
0;JMP

// label Bat_IF_67
(Bat_IF_67)

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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

// push constant 511
@511
D=A
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
@JUMP_LABEL4453
D;JLE
@SP
A=M
M=-1
@END_LABEL4453
0;JMP
(JUMP_LABEL4453)
@SP
A=M
M=0
(END_LABEL4453)
@SP
AM=M+1

// not
@SP
A=M-1
M=!M

// if-goto Bat_IF_69
@SP
AM=M-1
D=M
@Bat_IF_69
D;JNE

// push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
A=D+M
D=M
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

// pop this 0
@0
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D

// label Bat_IF_69
(Bat_IF_69)

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Screen.setColor 1
@ReturAddress_Screen.setColor4462
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor4462)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 4
@4
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle4474
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle4474)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

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

// call Screen.setColor 1
@ReturAddress_Screen.setColor4478
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
@Screen.setColor
0;JMP
(ReturAddress_Screen.setColor4478)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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

// push constant 3
@3
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@ReturAddress_Screen.drawRectangle4492
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
@4
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
@Screen.drawRectangle
0;JMP
(ReturAddress_Screen.drawRectangle4492)

// pop temp 0
@SP
AM=M-1
D=M
@R5
M=D

// label Bat_ELSE_44
(Bat_ELSE_44)

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


// End File Bat.vm

