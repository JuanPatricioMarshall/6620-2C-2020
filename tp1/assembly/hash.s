        .file   1 "hash.c"
        .section .mdebug.abi32
        .previous
        .nan    legacy
        .module fp=xx
        .module nooddspreg
        .abicalls
        .text
        .align  2
        .globl  string_hash_init
        .set    nomips16
        .set    nomicromips
        .ent    string_hash_init
        .type   string_hash_init, @function
string_hash_init:
        .frame  $fp,8,$31               # vars= 0, regs= 1/0, args= 0, gp= 0
        .mask   0x40000000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .set    nomacro
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        sw      $4,8($fp)
        lw      $2,8($fp)
        li      $3,1                    # 0x1
        sb      $3,0($2)
        lw      $2,8($fp)
        sw      $0,4($2)
        lw      $2,8($fp)
        sw      $0,8($2)
        nop
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    string_hash_init
        .size   string_hash_init, .-string_hash_init
        .rdata
        .align  2
$LC0:
        .ascii  "hash.c\000"
        .align  2
$LC1:
        .ascii  "sh->flag == STRING_HASH_INIT || sh->flag == STRING_HASH_"
        .ascii  "MORE\000"
        .text
        .align  2
        .globl  string_hash_more
        .set    nomips16
        .set    nomicromips
        .ent    string_hash_more
        .type   string_hash_more, @function
string_hash_more:
        .frame  $fp,32,$31              # vars= 0, regs= 2/0, args= 16, gp= 8
        .mask   0xc0000000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .cpload $25
        .set    nomacro
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        .cprestore      16
        sw      $4,32($fp)
        sw      $5,36($fp)
        sw      $6,40($fp)
        lw      $2,32($fp)
        lb      $3,0($2)
        li      $2,1                    # 0x1
        beq     $3,$2,$L3
        nop

        lw      $2,32($fp)
        lb      $3,0($2)
        li      $2,2                    # 0x2
        beq     $3,$2,$L3
        nop

        lw      $2,%got(__PRETTY_FUNCTION__.1638)($28)
        addiu   $7,$2,%lo(__PRETTY_FUNCTION__.1638)
        li      $6,17                   # 0x11
        lw      $2,%got($LC0)($28)
        addiu   $5,$2,%lo($LC0)
        lw      $2,%got($LC1)($28)
        addiu   $4,$2,%lo($LC1)
        lw      $2,%call16(__assert_fail)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,__assert_fail
1:      jalr    $25
        nop

$L3:
        lw      $2,32($fp)
        lb      $3,0($2)
        li      $2,1                    # 0x1
        bne     $3,$2,$L5
        nop

        lw      $2,32($fp)
        li      $3,2                    # 0x2
        sb      $3,0($2)
        lw      $2,36($fp)
        lb      $2,0($2)
        sll     $3,$2,7
        lw      $2,32($fp)
        sw      $3,4($2)
        b       $L5
        nop

$L7:
        lw      $2,32($fp)
        lw      $3,4($2)
        li      $2,983040                       # 0xf0000
        ori     $2,$2,0x4243
        mul     $3,$3,$2
        lw      $2,36($fp)
        addiu   $4,$2,1
        sw      $4,36($fp)
        lb      $2,0($2)
        xor     $3,$3,$2
        lw      $2,32($fp)
        sw      $3,4($2)
        lw      $2,32($fp)
        lw      $2,8($2)
        addiu   $3,$2,1
        lw      $2,32($fp)
        sw      $3,8($2)
$L5:
        lw      $2,36($fp)
        lb      $2,0($2)
        beq     $2,$0,$L8
        nop

        lw      $2,40($fp)
        addiu   $3,$2,-1
        sw      $3,40($fp)
        bne     $2,$0,$L7
        nop

$L8:
        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    string_hash_more
        .size   string_hash_more, .-string_hash_more
        .align  2
        .globl  string_hash_done
        .set    nomips16
        .set    nomicromips
        .ent    string_hash_done
        .type   string_hash_done, @function
string_hash_done:
        .frame  $fp,32,$31              # vars= 0, regs= 2/0, args= 16, gp= 8
        .mask   0xc0000000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .cpload $25
        .set    nomacro
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        .cprestore      16
        sw      $4,32($fp)
        lw      $2,32($fp)
        lb      $3,0($2)
        li      $2,1                    # 0x1
        beq     $3,$2,$L10
        nop

        lw      $2,32($fp)
        lb      $3,0($2)
        li      $2,2                    # 0x2
        beq     $3,$2,$L10
        nop

        lw      $2,%got(__PRETTY_FUNCTION__.1645)($28)
        addiu   $7,$2,%lo(__PRETTY_FUNCTION__.1645)
        li      $6,33                   # 0x21
        lw      $2,%got($LC0)($28)
        addiu   $5,$2,%lo($LC0)
        lw      $2,%got($LC1)($28)
        addiu   $4,$2,%lo($LC1)
        lw      $2,%call16(__assert_fail)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,__assert_fail
1:      jalr    $25
        nop

$L10:
        lw      $2,32($fp)
        lw      $2,4($2)
        move    $3,$2
        lw      $2,32($fp)
        lw      $2,8($2)
        xor     $2,$3,$2
        move    $3,$2
        lw      $2,32($fp)
        sw      $3,4($2)
        lw      $2,32($fp)
        lw      $3,4($2)
        li      $2,-1                   # 0xffffffffffffffff
        bne     $3,$2,$L11
        nop

        lw      $2,32($fp)
        li      $3,-2                   # 0xfffffffffffffffe
        sw      $3,4($2)
$L11:
        lw      $2,32($fp)
        li      $3,3                    # 0x3
        sb      $3,0($2)
        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    string_hash_done
        .size   string_hash_done, .-string_hash_done
        .align  2
        .globl  string_hash_value
        .set    nomips16
        .set    nomicromips
        .ent    string_hash_value
        .type   string_hash_value, @function
string_hash_value:
        .frame  $fp,8,$31               # vars= 0, regs= 1/0, args= 0, gp= 0
        .mask   0x40000000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .set    nomacro
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        sw      $4,8($fp)
        lw      $2,8($fp)
        lw      $2,4($2)
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    string_hash_value
        .size   string_hash_value, .-string_hash_value
        .rdata
        .align  2
        .type   __PRETTY_FUNCTION__.1638, @object
        .size   __PRETTY_FUNCTION__.1638, 17
__PRETTY_FUNCTION__.1638:
        .ascii  "string_hash_more\000"
        .align  2
        .type   __PRETTY_FUNCTION__.1645, @object
        .size   __PRETTY_FUNCTION__.1645, 17
__PRETTY_FUNCTION__.1645:
        .ascii  "string_hash_done\000"
        .ident  "GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
