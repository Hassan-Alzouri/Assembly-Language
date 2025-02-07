.data
	prompt:		.asciiz "Enter the value of e: "
.text
	# Display massage to the user
	li	$v0,4
	la	$a0,prompt
	syscall
	
	# Get the double value
	li	$v0,7
	syscall
	
	# Display the user input
	li	$v0,3
	add.d	$f12,$f0,$f10
	syscall
	