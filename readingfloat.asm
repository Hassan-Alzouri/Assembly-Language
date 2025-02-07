.data
	massage:	.asciiz "Enter the value of PI: "
	zeroAsFloat:	.float 0.0
.text 
	lwc1	$f4,zeroAsFloat 	# f4 =0.0
	
	# Display massage
	li	$v0,4
	la	$a0,massage
	syscall 
	
	# Reading user input 
	li	$v0,6
	syscall
	
	# Display value
	li	$v0,2
	add.s	$f12,$f0,$f4
	syscall