// push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@SP
M=M-1
@2
D=A
@LCL
A=D+M
D=A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D

