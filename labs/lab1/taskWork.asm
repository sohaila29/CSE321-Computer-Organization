.data
name: .asciiz "Name: Sohaila Samy Galal\n"
id: .asciiz "ID: 20812022200570\n"
course: .asciiz "Course: CSE321-Computer-Organization"

.text
main:
    li $v0, 4
    la $a0, name
    syscall

    li $v0, 4
    la $a0, id
    syscall

    li $v0, 4
    la $a0, course
    syscall
    
    li $v0, 10
    syscall