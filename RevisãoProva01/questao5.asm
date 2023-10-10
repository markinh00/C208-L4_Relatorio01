.data
	m_pri: .asciiz "digite o primeiro número: "
	m_seg: .asciiz "digite o segundo número: "
	m_ter: .asciiz "digite o terceiro número: "
	m_menor: .asciiz "soma menor que 100!"
	m_igual: .asciiz "soma igual que 100!"
	m_maior: .asciiz "soma maior que 100!"
	
.text
	#enviando a primeira mensagem
	la $a0,m_pri
	li $v0,4
	syscall
	#recebendo a resposta do usuário
	li $v0,5
	syscall
	add $t0,$v0,$0
	
	#enviando a segunda mensagem
	la $a0,m_seg
	li $v0,4
	syscall
	#recebendo a resposta do usuário
	li $v0,5
	syscall
	add $t1,$v0,$0
	
	#enviando a terceira mensagem
	la $a0,m_ter
	li $v0,4
	syscall
	#recebendo a resposta do usuário
	li $v0,5
	syscall
	add $t2, $v0, $0
	
	#somando as variáveis
	add $t0,$t0,$t1
	add $t0,$t0,$t2
	
	#validando os dados
	blt $t0,100,menor
	bgt $t0,100,maior
		la $a0,m_igual
		li $v0,4
		syscall
		j exit
	menor:
		la $a0,m_menor
		li $v0,4
		syscall
		j exit
	maior:
		la $a0,m_maior
		li $v0,4
		syscall
		j exit
	exit:
		li $v0,10
		syscall
	
	
	
	
	