// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

//256r X 512c

(LISTEN)

    @count
    M = 0

    @KBD
    D = M
    @ON
    D;JGT

    @OFF
    0;JMP

(ON)

    @count
    D = M
    
    @SCREEN
    A = A + D
    M = 0
   
    @R0
    D = M
 
    @count
    D = D - M 
    M = M + 1
    
    @LISTEN
    D;JEQ

    
    @ON
    0;JMP

(OFF)
    @count
    D = M
    
    @SCREEN
    A = A + D
    M = -1
   
    @R0
    D = M
 
    @count
    D = D - M 
    M = M + 1
    
    @LISTEN
    D;JEQ

    
    @OFF
    0;JMP
