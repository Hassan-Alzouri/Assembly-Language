.data
	number1:	.double	15.00
	number2:	.double 3.00
.text
	ldc1	$f2,number1
	ldc1	$f4,number2
	
	mul.d	$f12,$f2,$f4
	
	li	$v0,3
	syscall
	