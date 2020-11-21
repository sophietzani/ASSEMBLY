
#start

      .data                                            #statement the variebles
inp1: .asciiz "Insert an intiger:"                     #input message(string)
inp2: .asciiz "Insert a second intiger:"               #input message(string)
out: .asciiz "The result of the subtraction is: "      #output message(string)
int1: .word 0                                          #statement of an integer varieble (int1) and initialization with 0
int2: .word 0                                          #statement of an integer varieble (int2) and initialization with 0



.text                                                  #main body of the program

 main:                                                 #label which shows at the main body 

      la $a0, inp1                                     #store anything I want to show at register $a0
      li $v0, 4                                        #unsign the value 4 sto $v0 to show a string
      syscall                                          #execute system call to show a string
      
      li $v0, 5                                        #unsign the value 5 at $v0 to read an intiger
      syscall                                          #execute system call to end the program
      move $t0 ,$v0                                    #store anything I want to show register %t0
      
      la $a0, inp2                                     #store anything I want to show  register $a0
      li $v0, 4                                        #unsign the value 4 at $v0 to show a string
      syscall                                          #execute system call to end the program
      
      li $v0, 5                                        #unsign the value 5 at $v0 to read an intiger
      syscall                                          #execute system call to end the program
      move $t1 $v0                                     #store anything I want to show at register %t1
      
      sub $t1 ,$t0 ,$t1                                #subtract from the integer which I had read (t1=t0 -t1)
      
      la $a0 ,out                                      #store anything I want to show at register $a0
      li $v0 ,4                                        #unsign the value 4 at $v0 to show a string
      syscall                                          #execute system call to read the integer
      
      li $v0 ,1                                        #unsign the value 1 at $v0 to read an intiger
      move $a0 ,$t1                                    #store anything I want to show at register $a0
      syscall                                          #execute system call to read the integer
      
      li $v0 ,10                                       #unsign the value 10 at $v0 to end the program
      syscall                                          #execute system call to end the program
      
     #End of the program
      
      
      
