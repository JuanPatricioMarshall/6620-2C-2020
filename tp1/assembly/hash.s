        .file   1 "tp1.c"
        .section .mdebug.abi32
        .previous
        .nan    legacy
        .module fp=xx
        .module nooddspreg
        .abicalls
        .rdata
        .align  2
$LC0:
        .ascii  "\011Usage:\012\011\011tp1 -h\012\011\011tp1 -V\012\011\011"
        .ascii  "tp1 -i in_file -o out_file\012\011Options:\012\011\011-V"
        .ascii  ", --version\011Print version and quit.\012\011\011-h, --"
        .ascii  "help\011Print this information.\012\011\011-i, --input\011"
        .ascii  "Specify input stream/file, \"-\" for stdin.\012\011\011-"
        .ascii  "o, --output\011Specify output stream/file, \"-\" for std"
        .ascii  "out.\012\011Examples:\012\011\011tp1 < in.txt > out.txt\012"
        .ascii  "\011\011cat in.txt | tp1 -i - > out.txt\000"
        .text
        .align  2
        .set    nomips16
        .set    nomicromips
        .ent    print_help
        .type   print_help, @function
print_help:
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
        lw      $2,%got($LC0)($28)
        addiu   $4,$2,%lo($LC0)
        lw      $2,%call16(puts)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,puts
1:      jalr    $25
        nop

        lw      $28,16($fp)
        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    print_help
        .size   print_help, .-print_help
        .rdata
        .align  2
$LC1:
        .ascii  "tp1 -i in_file -o out_file\000"
        .text
        .align  2
        .set    nomips16
        .set    nomicromips
        .ent    print_usage
        .type   print_usage, @function
print_usage:
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
        lw      $2,%got($LC1)($28)
        addiu   $4,$2,%lo($LC1)
        lw      $2,%call16(puts)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,puts
1:      jalr    $25
        nop

        lw      $28,16($fp)
        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    print_usage
        .size   print_usage, .-print_usage
        .rdata
        .align  2
$LC2:
        .ascii  "tp1 1.0\000"
        .text
        .align  2
        .set    nomips16
        .set    nomicromips
        .ent    print_version
        .type   print_version, @function
print_version:
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
        lw      $2,%got($LC2)($28)
        addiu   $4,$2,%lo($LC2)
        lw      $2,%call16(puts)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,puts
1:      jalr    $25
        nop

        lw      $28,16($fp)
        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    print_version
        .size   print_version, .-print_version
        .rdata
        .align  2
$LC3:
        .ascii  "hVui:o:\000"
        .align  2
$LC4:
        .ascii  "-\000"
        .align  2
$LC5:
        .ascii  "r\000"
        .align  2
$LC6:
        .ascii  "can't open input file, errno = %d\012\000"
        .align  2
$LC7:
        .ascii  "w\000"
        .align  2
$LC8:
        .ascii  "Can't open output file, errno = %d\012\000"
        .align  2
$LC9:
        .ascii  "0x%04x %s\000"
        .text
        .align  2
        .globl  main
        .set    nomips16
        .set    nomicromips
        .ent    main
        .type   main, @function
main:
        .frame  $fp,104,$31             # vars= 64, regs= 2/0, args= 24, gp= 8
        .mask   0xc0000000,-4
        .fmask  0x00000000,0
        .set    noreorder
        .cpload $25
        .set    nomacro
        addiu   $sp,$sp,-104
        sw      $31,100($sp)
        sw      $fp,96($sp)
        move    $fp,$sp
        .cprestore      24
        sw      $4,104($fp)
        sw      $5,108($fp)
        sw      $0,64($fp)
        li      $2,-1                   # 0xffffffffffffffff
        sw      $2,32($fp)
        li      $2,-1                   # 0xffffffffffffffff
        sw      $2,36($fp)
        li      $2,-1                   # 0xffffffffffffffff
        sw      $2,40($fp)
        li      $2,-1                   # 0xffffffffffffffff
        sw      $2,44($fp)
        sw      $0,48($fp)
        sw      $0,52($fp)
        sw      $0,72($fp)
        sw      $0,76($fp)
        sw      $0,80($fp)
        b       $L5
        nop

$L13:
        lw      $2,64($fp)
        addiu   $2,$2,-63
        sltu    $3,$2,49
        beq     $3,$0,$L6
        nop

        sll     $3,$2,2
        lw      $2,%got($L8)($28)
        addiu   $2,$2,%lo($L8)
        addu    $2,$3,$2
        lw      $2,0($2)
        addu    $2,$2,$28
        jr      $2
        nop

        .rdata
        .align  2
        .align  2
$L8:
        .gpword $L7
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L9
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L10
        .gpword $L11
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L6
        .gpword $L12
        .text
$L10:
        sw      $0,32($fp)
        b       $L5
        nop

$L9:
        sw      $0,36($fp)
        b       $L5
        nop

$L11:
        sw      $0,40($fp)
        lw      $2,%got(optarg)($28)
        lw      $2,0($2)
        sw      $2,48($fp)
        b       $L5
        nop

$L12:
        sw      $0,44($fp)
        lw      $2,%got(optarg)($28)
        lw      $2,0($2)
        sw      $2,52($fp)
        b       $L5
        nop

$L7:
        li      $4,1                    # 0x1
        lw      $2,%call16(exit)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,exit
1:      jalr    $25
        nop

$L6:
        lw      $2,%got(print_usage)($28)
        addiu   $2,$2,%lo(print_usage)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,print_usage
1:      jalr    $25
        nop

        lw      $28,24($fp)
        li      $4,1                    # 0x1
        lw      $2,%call16(exit)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,exit
1:      jalr    $25
        nop

$L5:
        addiu   $2,$fp,80
        sw      $2,16($sp)
        lw      $2,%got(long_options.3323)($28)
        addiu   $7,$2,%lo(long_options.3323)
        lw      $2,%got($LC3)($28)
        addiu   $6,$2,%lo($LC3)
        lw      $5,108($fp)
        lw      $4,104($fp)
        lw      $2,%call16(getopt_long)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,getopt_long
1:      jalr    $25
        nop

        lw      $28,24($fp)
        sw      $2,64($fp)
        lw      $3,64($fp)
        li      $2,-1                   # 0xffffffffffffffff
        bne     $3,$2,$L13
        nop

        lw      $2,32($fp)
        bne     $2,$0,$L14
        nop

        lw      $2,%got(print_help)($28)
        addiu   $2,$2,%lo(print_help)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,print_help
1:      jalr    $25
        nop

        lw      $28,24($fp)
        move    $4,$0
        lw      $2,%call16(exit)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,exit
1:      jalr    $25
        nop

$L14:
        lw      $2,36($fp)
        bne     $2,$0,$L15
        nop

        lw      $2,%got(print_version)($28)
        addiu   $2,$2,%lo(print_version)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,print_version
1:      jalr    $25
        nop

        lw      $28,24($fp)
        move    $4,$0
        lw      $2,%call16(exit)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,exit
1:      jalr    $25
        nop

$L15:
        lw      $2,%got(stdin)($28)
        lw      $2,0($2)
        sw      $2,56($fp)
        lw      $2,%got(stdout)($28)
        lw      $2,0($2)
        sw      $2,60($fp)
        lw      $2,40($fp)
        bne     $2,$0,$L16
        nop

        lw      $2,%got($LC4)($28)
        addiu   $5,$2,%lo($LC4)
        lw      $4,48($fp)
        lw      $2,%call16(strcmp)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,strcmp
1:      jalr    $25
        nop

        lw      $28,24($fp)
        beq     $2,$0,$L16
        nop

        lw      $2,%got($LC5)($28)
        addiu   $5,$2,%lo($LC5)
        lw      $4,48($fp)
        lw      $2,%call16(fopen)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,fopen
1:      jalr    $25
        nop

        lw      $28,24($fp)
        sw      $2,56($fp)
        lw      $2,56($fp)
        bne     $2,$0,$L16
        nop

        lw      $2,%call16(__errno_location)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,__errno_location
1:      jalr    $25
        nop

        lw      $28,24($fp)
        lw      $2,0($2)
        move    $5,$2
        lw      $2,%got($LC6)($28)
        addiu   $4,$2,%lo($LC6)
        lw      $2,%call16(printf)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,printf
1:      jalr    $25
        nop

        lw      $28,24($fp)
        li      $2,1                    # 0x1
        b       $L21
        nop

$L16:
        lw      $2,44($fp)
        bne     $2,$0,$L19
        nop

        lw      $2,%got($LC4)($28)
        addiu   $5,$2,%lo($LC4)
        lw      $4,52($fp)
        lw      $2,%call16(strcmp)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,strcmp
1:      jalr    $25
        nop

        lw      $28,24($fp)
        beq     $2,$0,$L19
        nop

        lw      $2,%got($LC7)($28)
        addiu   $5,$2,%lo($LC7)
        lw      $4,52($fp)
        lw      $2,%call16(fopen)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,fopen
1:      jalr    $25
        nop

        lw      $28,24($fp)
        sw      $2,60($fp)
        lw      $2,60($fp)
        bne     $2,$0,$L19
        nop

        lw      $2,%call16(__errno_location)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,__errno_location
1:      jalr    $25
        nop

        lw      $28,24($fp)
        lw      $2,0($2)
        move    $5,$2
        lw      $2,%got($LC8)($28)
        addiu   $4,$2,%lo($LC8)
        lw      $2,%call16(printf)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,printf
1:      jalr    $25
        nop

        lw      $28,24($fp)
        li      $2,1                    # 0x1
        b       $L21
        nop

$L20:
        addiu   $2,$fp,84
        move    $4,$2
        lw      $2,%call16(string_hash_init)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,string_hash_init
1:      jalr    $25
        nop

        lw      $28,24($fp)
        lw      $3,72($fp)
        lw      $4,68($fp)
        addiu   $2,$fp,84
        move    $6,$4
        move    $5,$3
        move    $4,$2
        lw      $2,%call16(string_hash_more)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,string_hash_more
1:      jalr    $25
        nop

        lw      $28,24($fp)
        addiu   $2,$fp,84
        move    $4,$2
        lw      $2,%call16(string_hash_done)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,string_hash_done
1:      jalr    $25
        nop

        lw      $28,24($fp)
        addiu   $2,$fp,84
        move    $4,$2
        lw      $2,%call16(string_hash_value)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,string_hash_value
1:      jalr    $25
        nop

        lw      $28,24($fp)
        move    $3,$2
        lw      $2,72($fp)
        move    $7,$2
        move    $6,$3
        lw      $2,%got($LC9)($28)
        addiu   $5,$2,%lo($LC9)
        lw      $4,60($fp)
        lw      $2,%call16(fprintf)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,fprintf
1:      jalr    $25
        nop

        lw      $28,24($fp)
$L19:
        addiu   $3,$fp,76
        addiu   $2,$fp,72
        lw      $6,56($fp)
        move    $5,$3
        move    $4,$2
        lw      $2,%call16(getline)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,getline
1:      jalr    $25
        nop

        lw      $28,24($fp)
        sw      $2,68($fp)
        lw      $3,68($fp)
        li      $2,-1                   # 0xffffffffffffffff
        bne     $3,$2,$L20
        nop

        lw      $4,56($fp)
        lw      $2,%call16(fclose)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,fclose
1:      jalr    $25
        nop

        lw      $28,24($fp)
        lw      $4,60($fp)
        lw      $2,%call16(fclose)($28)
        move    $25,$2
        .reloc  1f,R_MIPS_JALR,fclose
1:      jalr    $25
        nop

        lw      $28,24($fp)
        move    $2,$0
$L21:
        move    $sp,$fp
        lw      $31,100($sp)
        lw      $fp,96($sp)
        addiu   $sp,$sp,104
        jr      $31
        nop

        .set    macro
        .set    reorder
        .end    main
        .size   main, .-main
        .rdata
        .align  2
$LC10:
        .ascii  "help\000"
        .align  2
$LC11:
        .ascii  "version\000"
        .align  2
$LC12:
        .ascii  "input\000"
        .align  2
$LC13:
        .ascii  "output\000"
        .section        .data.rel.local,"aw",@progbits
        .align  2
        .type   long_options.3323, @object
        .size   long_options.3323, 80
long_options.3323:
        .word   $LC10
        .word   0
        .word   0
        .word   104
        .word   $LC11
        .word   0
        .word   0
        .word   86
        .word   $LC12
        .word   1
        .word   0
        .word   105
        .word   $LC13
        .word   1
        .word   0
        .word   111
        .word   0
        .word   0
        .word   0
        .word   0
        .ident  "GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
root@debian-stretch-mips:/tmp/tp1/tp1# cat hash.s
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
