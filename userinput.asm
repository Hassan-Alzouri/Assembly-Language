.data
	prompt:	.asciiz "Enter your age:"
	massages:	.asciiz "\nYour age is "
.text
	# Prompt the user to enter age
	li	$v0,4
	la	$a0,prompt
	syscall
	
	# Get the user age
	li	$v0,5
	syscall
	
	# Store the age in $t0
	move $t0,$v0
	
	# Display massage 
	li	$v0,4
	la	$a0,massages
	syscall
	
	# Print or show the age
	li	$v0,1
	move	$a0,$t0
	syscall
	