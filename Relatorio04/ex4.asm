.text
li $t0, 10 #i
li $t1, 0 #cont

WHILE: bgt $t0, 0, LOOP
j EXIT
LOOP:
	addi $t1,$t1,5
	subi $t0,$t0,2
	j WHILE
EXIT: