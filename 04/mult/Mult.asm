// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@i
M=0  // initialize variable i
@R2
M=0  // initialize result

(LOOP)

@R1
D=M  // load R1 value into D register
@i
D=M-D
@END
D;JGE  // check i - R1 >= 0 <=> i >= R1, if true then goto END
@i
M=M+1  // i = i + 1

@R0
D=M  // load R0 value into D register
@R2
M=M+D  // R2 = R2 + R0

@LOOP
0; JMP // go back to loop

(END)
@END
0;JMP  // infinite loop
