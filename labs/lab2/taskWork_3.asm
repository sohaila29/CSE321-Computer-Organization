# switch....case
.data
prompt: .asciiz "Enter a number (1-3): "
msg1: .asciiz "Be gentle with yourself — you are still learning.\n"
msg2: .asciiz "Let your dreams be bigger than your fears.\n"
msg3: .asciiz "Gratitude turns ordinary days into blessings.\n"
defaulMsg: .asciiz "Breathe — you are doing your best.\n"

.text
main:
    
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0    

    
    beq $t0, 1, case1   
    beq $t0, 2, case2   
    beq $t0, 3, case3   
    j default     

case1:
    li $v0, 4
    la $a0, msg1
    syscall
    j exit

case2:
    li $v0, 4
    la $a0, msg2
    syscall
    j exit

case3:
    li $v0, 4
    la $a0, msg3
    syscall
    j exit

default:
    li $v0, 4
    la $a0, defaulMsg
    syscall

exit:
    li $v0, 10
    syscall
