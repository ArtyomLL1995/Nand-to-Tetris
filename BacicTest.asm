// push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
@R3
D=A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D

