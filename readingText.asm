.data
	massage:	.asciiz "Hello, "
	userInput:	.space	20
.text
	main:
		# Get user input as text
		li	$v0,8
		la	$a0,userInput
		li	$a1,20
		syscall
		
		# Dispaly hello
		li	$v0,4
		la	$a0,massage
		syscall
		
		# Display the name 
		li	$v0,4
		la	$a0,userInput
		syscall
		
	
	# End
	li	$v0,10
	syscall