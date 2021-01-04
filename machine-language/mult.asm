// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
(LOOP)
    //set RAM register to D
    @count
    D = M

    // get R1, then substract count from it
    @R1
    D = D  -  M
    
    // branching
    // if D == 0 end loop
    @STOP
    D;JEQ

    // Get R0 put it into D    
    @R0
    D = M
    
    // Create/Get Sum Register, then put it into D and add M
    @sum
    M = D + M
    
    // Increment count by one
    @count
    M = M + 1
    
    @LOOP
    0;JMP

(STOP)
    @sum
    D = M
    @R2
    M = D
    @END
    0;JMP

(END)
    @END
    0;JMP
