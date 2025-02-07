.data
	massage:	.asciiz "It was true.\n"
	massage2:	.asciiz "It was false.\n"
	number1:	.float 10.4
	number2:	.float 12.4
.text
	main:
		lwc1	$f0,number1
		lwc1	$f2,number2
		
		c.eq.s $f0,$f2
		
		# going exit label when f0=f2
		bc1t exit
		
		# Print massage when it false
		li	$v0,4
		la	$a0,massage2
		syscall
	# End
	li	$v0,10
	syscall
	
	exit:
		li	$v0,4
		la	$a0,massage
		syscall