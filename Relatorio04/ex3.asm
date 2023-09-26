.text
li $t0, 1 #a
li $t1, 2 #b
li $t2, 3 #c

blt $t0,$t1,ELSE
	sub $t2,$t0,$t1
	add $t0,$t1,$t2
	j EXIT
ELSE:
	sub $t1,$t0,$t2
	add $t2,$t1,$t2
EXIT: