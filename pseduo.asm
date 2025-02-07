.data
	masssage:	.asciiz "Hi,how are you?"
.text
	main:
		addi	$s0,$zero,14
		addi	$s1,$zero,10
		
		bgt	$s0,$s1,displayHi	
	
	
	
	# End of main
	li	$v0,10
	syscall
	
	displayHi:
		li	$v0,4
		la	$a0,masssage
		syscall