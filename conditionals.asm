.data
	massage1:	.asciiz "This numbers are egual\n"
	massage2:	.asciiz "This number are Not egual\n"
	massage3:	.asciiz "This massage for Non-condition\n"
.text
	main:
		addi	$t0,$zero,20
		addi	$t1,$zero,20
		
		# If t0 =t1
		beq	$t0,$t1,egual
		
		# If t0 !=t1
		bne	$t0,$t1,notegual
		
		# No condition 
		b	nonCondition
		
	# Syscall to end the program>
	li	$v0,10
	syscall
		
	egual:
		li	$v0,4
		la	$a0,massage1
		syscall
		
		li	$v0,10
		syscall
		
	notegual:
		li	$v0,4
		la	$a0,massage2
		syscall
		
	nonCondition:
		li	$v0,4
		la	$a0,massage3
		syscall
	
		
	