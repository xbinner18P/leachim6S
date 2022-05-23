		.rdata
		.align		2
hello:		.asciz		"Hello world\n"<0>
		.align		4
length:		.word		. - hello
		.text
		.globl		__start
__start:
		move		$a0,$0
		la		$a1,hello
		lw		$a2,length
		li		$v0,0xfa4
		syscall
		li		$v0,0xfa1
		syscall
