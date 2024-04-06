// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

@count
M=0
@tmp_var
M=0

@R0
D=M
@Z0
D;JEQ
@R1
D=M
@Z0
D;JEQ
@MUL
0;JMP
(Z0)
@R2
M=0
@END
0;JMP


(MUL)
@R0
D=M
@count
M=D
(LOOP)
@FINAL
D;JLE
@R1
D=M
@tmp_var
D=M+D
M=D
@count
D=M
D=D-1
M=D
@LOOP
0;JMP

(FINAL)
@tmp_var
D=M
@R2
M=D
@END
0;JMP

(END)
@END
0;JMP


