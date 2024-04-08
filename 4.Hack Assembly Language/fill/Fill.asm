// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.


@8192
D=A
@MAX_ADDRESS
M=D

(LISTEN)
@8192
D=A
@COUNT
M=D
@B
M=0
@ADDRESS 
M=0

@KBD
D=M
@PSCREEN
D;JEQ
@B 
M=-1
@PSCREEN
0;JMP

(PSCREEN)
@COUNT
D=M
(LOOP)
@LISTEN
D;JEQ
@MAX_ADDRESS
D=M 
@COUNT
D=D-M 
@SCREEN 
D=A+D
@ADDRESS 
M=D
@B 
D=M 
@ADDRESS 
A=M 
M=D
@COUNT
M=M-1 
D=M
@LOOP
0;JMP





@LISTEN
0;JMP


(END)
@END
0;JMP