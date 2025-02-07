.data
	massage:	.asciiz"Hi,everybody.\nMyname is Hassan.\n"
.text
	main:
		jal	displayMassage
		
		addi	$s0,$zero,5
		# Print number of 5 to screen
		li	$v0,1
		add	$a0,$zero,$s0
		syscall
		
		# Tell the system that the program is done.
		li	$v0,10
		syscall
		
		
	displayMassage:
		li	$v0,4
		la	$a0,massage
		syscall
		
		jr	$ra