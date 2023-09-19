.text
li $t0, 54
li $t1, 45

add $t2,$t0,$t1

li $v0, 1
la $a0, ($t2)
syscall 