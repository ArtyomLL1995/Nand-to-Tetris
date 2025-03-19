// push constant 25
@25
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

// eq
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@NOTEQUAL3
D;JNE
@SP
A=M
M=-1
@END3
0;JMP
(NOTEQUAL3)
@SP
A=M
M=0
(END3)
@SP
AM=M+1

// push constant 150
@150
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 151
@151
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
@NOTEQUAL6
D;JNE
@SP
A=M
M=-1
@END6
0;JMP
(NOTEQUAL6)
@SP
A=M
M=0
(END6)
@SP
AM=M+1

// push constant 299
@299
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M

