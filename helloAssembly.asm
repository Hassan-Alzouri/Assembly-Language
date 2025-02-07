.data
	myMassage:	.asciiz "Hello World \n"
	myCharacter:	.byte	'H'
	age:	.word 21	# This is word or integer
	PI:	.float 3.11
	myDouble:	.double 7.202
	zeroDouble:	.double 0.0
	number1:	.word 5
	number2:	.word 10
.text 
	li	$v0,4
	la	$a0,myMassage
	syscall
	li	$v0,4
	la	$a0,myCharacter
	syscall 
	# Print an integer to the screen
	li 	$v0,1
	lw	$a0,age
	syscall 	
	li	$v0,2
	lwc1	$f12,PI
	syscall
	
	ldc1	$f2,myDouble
	ldc1	$f0,zeroDouble
	
	li	$v0,3
	add.d	$f12,$f2,$f0
	syscall
	
	lw	$t0,number1($zero)
	lw	$t1,number2($zero)
	
	add $t2,$t0,$t1		# t2 =  t0 + t1
	
	li	$v0,1
	add $a0,$zero,$t2
	syscall
	
	lw	$s0,number1	# s0=5
	lw	$s1,number2	#s1=10
	
	sub $t0,$s0,$s1		#t0=5-10
	
	li	$v0,1
	move $a0,$t0
	syscall