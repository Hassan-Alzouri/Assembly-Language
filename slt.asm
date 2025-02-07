.data
	massage:	.asciiz "The number is less than the other>"
.text
	main:
		addi	$t0,$zero,1
		addi	$t1,$zero,200
		
		slt	$s0,$t0,$t1
		bne	$s0,$zero,printMassage
	#End
	li	$v0,10
	syscall
	
	printMassage:
		li	$v0,4
		la	$a0,massage
		syscall
		