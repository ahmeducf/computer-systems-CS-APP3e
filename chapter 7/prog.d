
prog:     file format elf64-x86-64
prog
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000001020

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000002d8 memsz 0x00000000000002d8 flags r--
  INTERP off    0x0000000000000318 vaddr 0x0000000000000318 paddr 0x0000000000000318 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**12
         filesz 0x00000000000005e0 memsz 0x00000000000005e0 flags r--
    LOAD off    0x0000000000001000 vaddr 0x0000000000001000 paddr 0x0000000000001000 align 2**12
         filesz 0x00000000000001d5 memsz 0x00000000000001d5 flags r-x
    LOAD off    0x0000000000002000 vaddr 0x0000000000002000 paddr 0x0000000000002000 align 2**12
         filesz 0x00000000000000f8 memsz 0x00000000000000f8 flags r--
    LOAD off    0x0000000000002e28 vaddr 0x0000000000003e28 paddr 0x0000000000003e28 align 2**12
         filesz 0x0000000000000208 memsz 0x0000000000000210 flags rw-
 DYNAMIC off    0x0000000000002e38 vaddr 0x0000000000003e38 paddr 0x0000000000003e38 align 2**3
         filesz 0x00000000000001a0 memsz 0x00000000000001a0 flags rw-
    NOTE off    0x0000000000000338 vaddr 0x0000000000000338 paddr 0x0000000000000338 align 2**3
         filesz 0x0000000000000040 memsz 0x0000000000000040 flags r--
    NOTE off    0x0000000000000378 vaddr 0x0000000000000378 paddr 0x0000000000000378 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
0x6474e553 off    0x0000000000000338 vaddr 0x0000000000000338 paddr 0x0000000000000338 align 2**3
         filesz 0x0000000000000040 memsz 0x0000000000000040 flags r--
EH_FRAME off    0x0000000000002004 vaddr 0x0000000000002004 paddr 0x0000000000002004 align 2**2
         filesz 0x0000000000000034 memsz 0x0000000000000034 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000002e28 vaddr 0x0000000000003e28 paddr 0x0000000000003e28 align 2**0
         filesz 0x00000000000001d8 memsz 0x00000000000001d8 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x0000000000001000
  FINI                 0x00000000000011c8
  INIT_ARRAY           0x0000000000003e28
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000003e30
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x00000000000003c0
  STRTAB               0x0000000000000470
  SYMTAB               0x00000000000003e0
  STRSZ                0x000000000000007d
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  RELA                 0x0000000000000520
  RELASZ               0x00000000000000c0
  RELAENT              0x0000000000000018
  FLAGS_1              0x0000000008000000
  VERNEED              0x0000000000000500
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x00000000000004ee
  RELACOUNT            0x0000000000000003

Version References:
  required from libc.so.6:
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000000318  0000000000000318  00000318  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.gnu.property 00000040  0000000000000338  0000000000000338  00000338  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000000378  0000000000000378  00000378  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .note.ABI-tag 00000020  000000000000039c  000000000000039c  0000039c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .gnu.hash     0000001c  00000000000003c0  00000000000003c0  000003c0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynsym       00000090  00000000000003e0  00000000000003e0  000003e0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .dynstr       0000007d  0000000000000470  0000000000000470  00000470  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version  0000000c  00000000000004ee  00000000000004ee  000004ee  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .gnu.version_r 00000020  0000000000000500  0000000000000500  00000500  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.dyn     000000c0  0000000000000520  0000000000000520  00000520  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         0000001b  0000000000001000  0000000000001000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .text         000001a5  0000000000001020  0000000000001020  00001020  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .fini         0000000d  00000000000011c8  00000000000011c8  000011c8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .rodata       00000004  0000000000002000  0000000000002000  00002000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 14 .eh_frame_hdr 00000034  0000000000002004  0000000000002004  00002004  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame     000000c0  0000000000002038  0000000000002038  00002038  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .init_array   00000008  0000000000003e28  0000000000003e28  00002e28  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 17 .fini_array   00000008  0000000000003e30  0000000000003e30  00002e30  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .dynamic      000001a0  0000000000003e38  0000000000003e38  00002e38  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .got          00000028  0000000000003fd8  0000000000003fd8  00002fd8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .got.plt      00000018  0000000000004000  0000000000004000  00003000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .data         00000018  0000000000004018  0000000000004018  00003018  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .bss          00000008  0000000000004030  0000000000004030  00003030  2**0
                  ALLOC
 23 .comment      00000012  0000000000000000  0000000000000000  00003030  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000              abi-note.c
000000000000039c l     O .note.ABI-tag	0000000000000020              __abi_tag
0000000000000000 l    df *ABS*	0000000000000000              init.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000001050 l     F .text	0000000000000000              deregister_tm_clones
0000000000001080 l     F .text	0000000000000000              register_tm_clones
00000000000010c0 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000004030 l     O .bss	0000000000000001              completed.0
0000000000003e30 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000001110 l     F .text	0000000000000000              frame_dummy
0000000000003e28 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main.c
0000000000000000 l    df *ABS*	0000000000000000              sum.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000000020f4 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000003e30 l       .init_array	0000000000000000              __init_array_end
0000000000003e38 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000003e28 l       .init_array	0000000000000000              __init_array_start
0000000000002004 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000004000 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000001000 l     F .init	0000000000000000              _init
00000000000011c0 g     F .text	0000000000000005              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000004018  w      .data	0000000000000000              data_start
0000000000004028 g     O .data	0000000000000008              array
0000000000004030 g       .data	0000000000000000              _edata
00000000000011c8 g     F .fini	0000000000000000              .hidden _fini
0000000000000000       F *UND*	0000000000000000              __libc_start_main@GLIBC_2.2.5
0000000000004018 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000004020 g     O .data	0000000000000000              .hidden __dso_handle
0000000000001133 g     F .text	000000000000001c              sum
0000000000002000 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000001150 g     F .text	0000000000000065              __libc_csu_init
0000000000004038 g       .bss	0000000000000000              _end
0000000000001020 g     F .text	000000000000002f              _start
0000000000004030 g       .bss	0000000000000000              __bss_start
0000000000001119 g     F .text	000000000000001a              main
0000000000004030 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@GLIBC_2.2.5



Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .text:

0000000000001020 <_start>:
    1020:	f3 0f 1e fa          	endbr64 
    1024:	31 ed                	xor    %ebp,%ebp
    1026:	49 89 d1             	mov    %rdx,%r9
    1029:	5e                   	pop    %rsi
    102a:	48 89 e2             	mov    %rsp,%rdx
    102d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1031:	50                   	push   %rax
    1032:	54                   	push   %rsp
    1033:	4c 8d 05 86 01 00 00 	lea    0x186(%rip),%r8        # 11c0 <__libc_csu_fini>
    103a:	48 8d 0d 0f 01 00 00 	lea    0x10f(%rip),%rcx        # 1150 <__libc_csu_init>
    1041:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1119 <main>
    1048:	ff 15 92 2f 00 00    	call   *0x2f92(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    104e:	f4                   	hlt    
    104f:	90                   	nop

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d d9 2f 00 00 	lea    0x2fd9(%rip),%rdi        # 4030 <__TMC_END__>
    1057:	48 8d 05 d2 2f 00 00 	lea    0x2fd2(%rip),%rax        # 4030 <__TMC_END__>
    105e:	48 39 f8             	cmp    %rdi,%rax
    1061:	74 15                	je     1078 <deregister_tm_clones+0x28>
    1063:	48 8b 05 6e 2f 00 00 	mov    0x2f6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    106a:	48 85 c0             	test   %rax,%rax
    106d:	74 09                	je     1078 <deregister_tm_clones+0x28>
    106f:	ff e0                	jmp    *%rax
    1071:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1078:	c3                   	ret    
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d a9 2f 00 00 	lea    0x2fa9(%rip),%rdi        # 4030 <__TMC_END__>
    1087:	48 8d 35 a2 2f 00 00 	lea    0x2fa2(%rip),%rsi        # 4030 <__TMC_END__>
    108e:	48 29 fe             	sub    %rdi,%rsi
    1091:	48 89 f0             	mov    %rsi,%rax
    1094:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1098:	48 c1 f8 03          	sar    $0x3,%rax
    109c:	48 01 c6             	add    %rax,%rsi
    109f:	48 d1 fe             	sar    %rsi
    10a2:	74 14                	je     10b8 <register_tm_clones+0x38>
    10a4:	48 8b 05 45 2f 00 00 	mov    0x2f45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10ab:	48 85 c0             	test   %rax,%rax
    10ae:	74 08                	je     10b8 <register_tm_clones+0x38>
    10b0:	ff e0                	jmp    *%rax
    10b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <__do_global_dtors_aux>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	80 3d 65 2f 00 00 00 	cmpb   $0x0,0x2f65(%rip)        # 4030 <__TMC_END__>
    10cb:	75 33                	jne    1100 <__do_global_dtors_aux+0x40>
    10cd:	55                   	push   %rbp
    10ce:	48 83 3d 22 2f 00 00 	cmpq   $0x0,0x2f22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10d5:	00 
    10d6:	48 89 e5             	mov    %rsp,%rbp
    10d9:	74 0d                	je     10e8 <__do_global_dtors_aux+0x28>
    10db:	48 8b 3d 3e 2f 00 00 	mov    0x2f3e(%rip),%rdi        # 4020 <__dso_handle>
    10e2:	ff 15 10 2f 00 00    	call   *0x2f10(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e8:	e8 63 ff ff ff       	call   1050 <deregister_tm_clones>
    10ed:	c6 05 3c 2f 00 00 01 	movb   $0x1,0x2f3c(%rip)        # 4030 <__TMC_END__>
    10f4:	5d                   	pop    %rbp
    10f5:	c3                   	ret    
    10f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10fd:	00 00 00 
    1100:	c3                   	ret    
    1101:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1108:	00 00 00 00 
    110c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001110 <frame_dummy>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	e9 67 ff ff ff       	jmp    1080 <register_tm_clones>

0000000000001119 <main>:
    1119:	48 83 ec 08          	sub    $0x8,%rsp
    111d:	be 02 00 00 00       	mov    $0x2,%esi
    1122:	48 8d 3d ff 2e 00 00 	lea    0x2eff(%rip),%rdi        # 4028 <array>
    1129:	e8 05 00 00 00       	call   1133 <sum>
    112e:	48 83 c4 08          	add    $0x8,%rsp
    1132:	c3                   	ret    

0000000000001133 <sum>:
    1133:	b8 00 00 00 00       	mov    $0x0,%eax
    1138:	ba 00 00 00 00       	mov    $0x0,%edx
    113d:	eb 09                	jmp    1148 <sum+0x15>
    113f:	48 63 c8             	movslq %eax,%rcx
    1142:	03 14 8f             	add    (%rdi,%rcx,4),%edx
    1145:	83 c0 01             	add    $0x1,%eax
    1148:	39 f0                	cmp    %esi,%eax
    114a:	7c f3                	jl     113f <sum+0xc>
    114c:	89 d0                	mov    %edx,%eax
    114e:	c3                   	ret    
    114f:	90                   	nop

0000000000001150 <__libc_csu_init>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	41 57                	push   %r15
    1156:	4c 8d 3d cb 2c 00 00 	lea    0x2ccb(%rip),%r15        # 3e28 <__frame_dummy_init_array_entry>
    115d:	41 56                	push   %r14
    115f:	49 89 d6             	mov    %rdx,%r14
    1162:	41 55                	push   %r13
    1164:	49 89 f5             	mov    %rsi,%r13
    1167:	41 54                	push   %r12
    1169:	41 89 fc             	mov    %edi,%r12d
    116c:	55                   	push   %rbp
    116d:	48 8d 2d bc 2c 00 00 	lea    0x2cbc(%rip),%rbp        # 3e30 <__do_global_dtors_aux_fini_array_entry>
    1174:	53                   	push   %rbx
    1175:	4c 29 fd             	sub    %r15,%rbp
    1178:	48 83 ec 08          	sub    $0x8,%rsp
    117c:	e8 7f fe ff ff       	call   1000 <_init>
    1181:	48 c1 fd 03          	sar    $0x3,%rbp
    1185:	74 1f                	je     11a6 <__libc_csu_init+0x56>
    1187:	31 db                	xor    %ebx,%ebx
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1190:	4c 89 f2             	mov    %r14,%rdx
    1193:	4c 89 ee             	mov    %r13,%rsi
    1196:	44 89 e7             	mov    %r12d,%edi
    1199:	41 ff 14 df          	call   *(%r15,%rbx,8)
    119d:	48 83 c3 01          	add    $0x1,%rbx
    11a1:	48 39 dd             	cmp    %rbx,%rbp
    11a4:	75 ea                	jne    1190 <__libc_csu_init+0x40>
    11a6:	48 83 c4 08          	add    $0x8,%rsp
    11aa:	5b                   	pop    %rbx
    11ab:	5d                   	pop    %rbp
    11ac:	41 5c                	pop    %r12
    11ae:	41 5d                	pop    %r13
    11b0:	41 5e                	pop    %r14
    11b2:	41 5f                	pop    %r15
    11b4:	c3                   	ret    
    11b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11bc:	00 00 00 00 

00000000000011c0 <__libc_csu_fini>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	c3                   	ret    

Disassembly of section .fini:

00000000000011c8 <_fini>:
    11c8:	f3 0f 1e fa          	endbr64 
    11cc:	48 83 ec 08          	sub    $0x8,%rsp
    11d0:	48 83 c4 08          	add    $0x8,%rsp
    11d4:	c3                   	ret    
