.text
li $t0, 2 #a
li $t1, 2 #b
li $t2, 3 #c

beq $t0,$t1,ELSE
	add $t2,$t0,$t1
	sub $t0,$t1,$t2
	j EXIT
ELSE:
	add $t1,$t0,$t2
	sub $t2,$t1,$t2
EXIT: