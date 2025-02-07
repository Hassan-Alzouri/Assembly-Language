.data
	newLine:	.asciiz"\n"
.text
	main:
		addi	$s0,$zero,10
		
		jal	increaseMyRegister
		
		# Print a new line
		li	$v0,4
		la	$a0,newLine
		syscall
		
		jal printThevalue
		
		
		
		# This line is going to signal end program.
		li	$v0,10
		syscall
	
	increaseMyRegister:
		addi	$sp,$sp,-8
		sw	$s0,0($sp)
		sw	$ra,4($sp)
		
		addi	$s0,$s0,30
		#Nested procedure
		jal	printThevalue
		
		lw	$s0,0($sp)
		lw	$ra,4($sp)
		addi	$sp,$sp,4
		
		jr	$ra
	printThevalue:
		# Print value!
		li	$v0,1
		move	$a0,$s0
		syscall
		
		jr	$ra