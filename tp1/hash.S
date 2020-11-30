#include <sys/syscall.h>
#include <sys/regdef.h>
	.rdata
	error_msg: .asciiz "Assertion HASH_INIT or HASH_MORE failed.\nAborted\n"
	.text
	.ent string_hash_more
	.globl string_hash_more

#Como soy Leaf no tengo A B A propio ni guardo ra
#En ete caso no tengo variables adicionales por lo que L T A esta vacio
#( A B A Caller)
#  a2
#  a1
#  a0
#---S R A---
#  fp
#  gp

string_hash_more:
	#Stack
	.frame fp,8,ra
	subu sp,sp,8

	#(S R A)
	.cprestore 0
	sw fp,4(sp)
	move fp,sp

	#(A B A Caller)
	sw a2,16(sp)
	sw a1,12(sp)
	sw a0,8(sp)

	#Assert para verificar que el hash este inicializado y que tenga el flag de more
	lb t0,0(a0)
	beq t0,1,assert_right#constante string_hash_init
	beq t0,2,assert_right#constante string_hash_more
	b assert_wrong

assert_right:

	#If flag == hash_init
	lb t0,0(a0)
	li t1,1#constante string_hash_more
	bne t1,t0,while

	#flag
	li t0,2#constante string_hash_more
	sb t0,0(a0)
	#hash
	lb t0,0(a1)
	sll t0,t0,7
	sw t0,4(a0)


while:
	#*str != 0
	lw t3,12(sp)
	lb t3,0(t3)
	beqz t3,return
	#len != 0
	lw t3,16(sp)
	beqz t3,return
	addi t3,t3,-1
	sw t3,16(sp)

	#calculo de hash
	lw t3,8(sp)
	lw t0,4(t3)
	mul t0,t0,1000003
	lw t1,12(sp)# vuelvo a leer str de arriba para evitar bugs
	lb t2,0(t1)#*str
	xor t0,t0,t2
	sw t0,4(t3)
	addi t1,t1,1#str++
	sw t1,12(sp)#vuelvo a guardar a1++

	#size++
	lw t0,8(t3)
	addi t0,t0,1
	sw t0,8(t3)
	b while
assert_wrong:
	li a0,2
	li a2,53
	la a1,error_msg
	li v0,SYS_write
	syscall
	li v0,SYS_exit#
	syscall
return:
	lw fp,4(sp)
	addu sp,sp,8

	jr	ra
	.end 	string_hash_more


