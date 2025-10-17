.data
firstNumPrompt: .asciiz "Enter first number:  "
secondNumPrompt: .asciiz "Enter second number:  "
thirdNumPrompt: .asciiz "Enter third number:  "
fourthNumPrompt: .asciiz "Enter fourth number:  "
resultPrompt: .asciiz "The average is: "


.text

main:
    #reading numbers
    li $v0, 4      #print prom1
    la $a0, firstNumPrompt
    syscall

    li $v0, 5      #read num1
    syscall
    move $t0, $v0  

    li $v0, 4      #print prom2
    la $a0, secondNumPrompt
    syscall

    li $v0, 5      #read num2
    syscall
    move $t1, $v0

    li $v0, 4      #print prom3
    la $a0, thirdNumPrompt
    syscall

    li $v0, 5      #read num3
    syscall
    move $t2, $v0

    li $v0, 4      #print prom4
    la $a0, fourthNumPrompt
    syscall

    li $v0, 5      #read num4
    syscall
    move $t3, $v0

    li $v0, 4      #print result prom.
    la $a0, resultPrompt
    syscall

    add $t4, $t0, $t1 
    add $t4, $t4, $t2
    add $t4, $t4, $t3

    li $t5, 4
    div $t4, $t5
    mflo $a0
    
    li $v0, 1  #print result
    syscall

    

exit:
    li $v0, 10
    syscall
