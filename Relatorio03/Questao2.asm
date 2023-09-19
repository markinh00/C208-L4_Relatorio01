#enviando a pergunta para o usuario
.data
question_1: .asciiz "Entre com a sua idade: "

.text
li $v0, 4
la $a0, question_1
syscall 

#lendo a resposta com a idade do usuario
.text 
li $v0, 5
syscall 
move $s6, $v0

#adicionando 30 a idade do usuario
addi $s7,$s6,30

#mostrando a idade do usuario daqui 30 anos
.text 
 li $v0, 1
 la $a0, ($s7)
 syscall 