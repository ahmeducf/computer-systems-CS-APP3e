
prog2l:     file format elf64-x86-64
prog2l
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000001050

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000002d8 memsz 0x00000000000002d8 flags r--
  INTERP off    0x0000000000000318 vaddr 0x0000000000000318 paddr 0x0000000000000318 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**12
         filesz 0x0000000000000660 memsz 0x0000000000000660 flags r--
    LOAD off    0x0000000000001000 vaddr 0x0000000000001000 paddr 0x0000000000001000 align 2**12
         filesz 0x0000000000000225 memsz 0x0000000000000225 flags r-x
    LOAD off    0x0000000000002000 vaddr 0x0000000000002000 paddr 0x0000000000002000 align 2**12
         filesz 0x0000000000000120 memsz 0x0000000000000120 flags r--
    LOAD off    0x0000000000002dd8 vaddr 0x0000000000003dd8 paddr 0x0000000000003dd8 align 2**12
         filesz 0x0000000000000270 memsz 0x0000000000000280 flags rw-
 DYNAMIC off    0x0000000000002de8 vaddr 0x0000000000003de8 paddr 0x0000000000003de8 align 2**3
         filesz 0x00000000000001f0 memsz 0x00000000000001f0 flags rw-
    NOTE off    0x0000000000000338 vaddr 0x0000000000000338 paddr 0x0000000000000338 align 2**3
         filesz 0x0000000000000040 memsz 0x0000000000000040 flags r--
    NOTE off    0x0000000000000378 vaddr 0x0000000000000378 paddr 0x0000000000000378 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
0x6474e553 off    0x0000000000000338 vaddr 0x0000000000000338 paddr 0x0000000000000338 align 2**3
         filesz 0x0000000000000040 memsz 0x0000000000000040 flags r--
EH_FRAME off    0x0000000000002014 vaddr 0x0000000000002014 paddr 0x0000000000002014 align 2**2
         filesz 0x0000000000000034 memsz 0x0000000000000034 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000002dd8 vaddr 0x0000000000003dd8 paddr 0x0000000000003dd8 align 2**0
         filesz 0x0000000000000228 memsz 0x0000000000000228 flags r--

Dynamic Section:
  NEEDED               ./libvector.so
  NEEDED               libc.so.6
  INIT                 0x0000000000001000
  FINI                 0x0000000000001218
  INIT_ARRAY           0x0000000000003dd8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000003de0
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x00000000000003c0
  STRTAB               0x00000000000004a0
  SYMTAB               0x00000000000003e0
  STRSZ                0x000000000000009a
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000004000
  PLTRELSZ             0x0000000000000030
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000000630
  RELA                 0x0000000000000570
  RELASZ               0x00000000000000c0
  RELAENT              0x0000000000000018
  FLAGS_1              0x0000000008000000
  VERNEED              0x0000000000000550
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x000000000000053a
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
  5 .dynsym       000000c0  00000000000003e0  00000000000003e0  000003e0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .dynstr       0000009a  00000000000004a0  00000000000004a0  000004a0  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version  00000010  000000000000053a  000000000000053a  0000053a  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .gnu.version_r 00000020  0000000000000550  0000000000000550  00000550  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.dyn     000000c0  0000000000000570  0000000000000570  00000570  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .rela.plt     00000030  0000000000000630  0000000000000630  00000630  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 11 .init         0000001b  0000000000001000  0000000000001000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .plt          00000030  0000000000001020  0000000000001020  00001020  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .text         000001c5  0000000000001050  0000000000001050  00001050  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .fini         0000000d  0000000000001218  0000000000001218  00001218  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .rodata       00000012  0000000000002000  0000000000002000  00002000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame_hdr 00000034  0000000000002014  0000000000002014  00002014  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .eh_frame     000000d8  0000000000002048  0000000000002048  00002048  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 18 .init_array   00000008  0000000000003dd8  0000000000003dd8  00002dd8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .fini_array   00000008  0000000000003de0  0000000000003de0  00002de0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001f0  0000000000003de8  0000000000003de8  00002de8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000028  0000000000003fd8  0000000000003fd8  00002fd8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      00000028  0000000000004000  0000000000004000  00003000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000020  0000000000004028  0000000000004028  00003028  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          00000010  0000000000004048  0000000000004048  00003048  2**3
                  ALLOC
 25 .comment      00000012  0000000000000000  0000000000000000  00003048  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000              abi-note.c
000000000000039c l     O .note.ABI-tag	0000000000000020              __abi_tag
0000000000000000 l    df *ABS*	0000000000000000              init.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000001080 l     F .text	0000000000000000              deregister_tm_clones
00000000000010b0 l     F .text	0000000000000000              register_tm_clones
00000000000010f0 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000004048 l     O .bss	0000000000000001              completed.0
0000000000003de0 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000001140 l     F .text	0000000000000000              frame_dummy
0000000000003dd8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main2.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
000000000000211c l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000003de0 l       .init_array	0000000000000000              __init_array_end
0000000000003de8 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000003dd8 l       .init_array	0000000000000000              __init_array_start
0000000000002014 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000004000 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000001000 l     F .init	0000000000000000              _init
0000000000001210 g     F .text	0000000000000005              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000004028  w      .data	0000000000000000              data_start
0000000000004048 g       .data	0000000000000000              _edata
0000000000004050 g     O .bss	0000000000000008              z
0000000000004038 g     O .data	0000000000000008              x
0000000000001218 g     F .fini	0000000000000000              .hidden _fini
0000000000000000       F *UND*	0000000000000000              printf@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __libc_start_main@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              addvec
0000000000004028 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000004030 g     O .data	0000000000000000              .hidden __dso_handle
0000000000002000 g     O .rodata	0000000000000004              _IO_stdin_used
00000000000011a0 g     F .text	0000000000000065              __libc_csu_init
0000000000004058 g       .bss	0000000000000000              _end
0000000000001050 g     F .text	000000000000002f              _start
0000000000004040 g     O .data	0000000000000008              y
0000000000004048 g       .bss	0000000000000000              __bss_start
0000000000001149 g     F .text	0000000000000055              main
0000000000004048 g     O .data	0000000000000000              .hidden __TMC_END__
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

Disassembly of section .plt:

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <addvec@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 4020 <addvec>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	31 ed                	xor    %ebp,%ebp
    1056:	49 89 d1             	mov    %rdx,%r9
    1059:	5e                   	pop    %rsi
    105a:	48 89 e2             	mov    %rsp,%rdx
    105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1061:	50                   	push   %rax
    1062:	54                   	push   %rsp
    1063:	4c 8d 05 a6 01 00 00 	lea    0x1a6(%rip),%r8        # 1210 <__libc_csu_fini>
    106a:	48 8d 0d 2f 01 00 00 	lea    0x12f(%rip),%rcx        # 11a0 <__libc_csu_init>
    1071:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1149 <main>
    1078:	ff 15 62 2f 00 00    	call   *0x2f62(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    107e:	f4                   	hlt    
    107f:	90                   	nop

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d c1 2f 00 00 	lea    0x2fc1(%rip),%rdi        # 4048 <__TMC_END__>
    1087:	48 8d 05 ba 2f 00 00 	lea    0x2fba(%rip),%rax        # 4048 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 91 2f 00 00 	lea    0x2f91(%rip),%rdi        # 4048 <__TMC_END__>
    10b7:	48 8d 35 8a 2f 00 00 	lea    0x2f8a(%rip),%rsi        # 4048 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 15 2f 00 00 	mov    0x2f15(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	80 3d 4d 2f 00 00 00 	cmpb   $0x0,0x2f4d(%rip)        # 4048 <__TMC_END__>
    10fb:	75 33                	jne    1130 <__do_global_dtors_aux+0x40>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d f2 2e 00 00 	cmpq   $0x0,0x2ef2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0d                	je     1118 <__do_global_dtors_aux+0x28>
    110b:	48 8b 3d 1e 2f 00 00 	mov    0x2f1e(%rip),%rdi        # 4030 <__dso_handle>
    1112:	ff 15 e0 2e 00 00    	call   *0x2ee0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1118:	e8 63 ff ff ff       	call   1080 <deregister_tm_clones>
    111d:	c6 05 24 2f 00 00 01 	movb   $0x1,0x2f24(%rip)        # 4048 <__TMC_END__>
    1124:	5d                   	pop    %rbp
    1125:	c3                   	ret    
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 
    1130:	c3                   	ret    
    1131:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1138:	00 00 00 00 
    113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 67 ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001149 <main>:
    1149:	55                   	push   %rbp
    114a:	48 89 e5             	mov    %rsp,%rbp
    114d:	b9 02 00 00 00       	mov    $0x2,%ecx
    1152:	48 8d 05 f7 2e 00 00 	lea    0x2ef7(%rip),%rax        # 4050 <z>
    1159:	48 89 c2             	mov    %rax,%rdx
    115c:	48 8d 05 dd 2e 00 00 	lea    0x2edd(%rip),%rax        # 4040 <y>
    1163:	48 89 c6             	mov    %rax,%rsi
    1166:	48 8d 05 cb 2e 00 00 	lea    0x2ecb(%rip),%rax        # 4038 <x>
    116d:	48 89 c7             	mov    %rax,%rdi
    1170:	e8 cb fe ff ff       	call   1040 <addvec@plt>
    1175:	8b 15 d9 2e 00 00    	mov    0x2ed9(%rip),%edx        # 4054 <z+0x4>
    117b:	8b 05 cf 2e 00 00    	mov    0x2ecf(%rip),%eax        # 4050 <z>
    1181:	89 c6                	mov    %eax,%esi
    1183:	48 8d 05 7a 0e 00 00 	lea    0xe7a(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    118a:	48 89 c7             	mov    %rax,%rdi
    118d:	b8 00 00 00 00       	mov    $0x0,%eax
    1192:	e8 99 fe ff ff       	call   1030 <printf@plt>
    1197:	b8 00 00 00 00       	mov    $0x0,%eax
    119c:	5d                   	pop    %rbp
    119d:	c3                   	ret    
    119e:	66 90                	xchg   %ax,%ax

00000000000011a0 <__libc_csu_init>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	41 57                	push   %r15
    11a6:	4c 8d 3d 2b 2c 00 00 	lea    0x2c2b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    11ad:	41 56                	push   %r14
    11af:	49 89 d6             	mov    %rdx,%r14
    11b2:	41 55                	push   %r13
    11b4:	49 89 f5             	mov    %rsi,%r13
    11b7:	41 54                	push   %r12
    11b9:	41 89 fc             	mov    %edi,%r12d
    11bc:	55                   	push   %rbp
    11bd:	48 8d 2d 1c 2c 00 00 	lea    0x2c1c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    11c4:	53                   	push   %rbx
    11c5:	4c 29 fd             	sub    %r15,%rbp
    11c8:	48 83 ec 08          	sub    $0x8,%rsp
    11cc:	e8 2f fe ff ff       	call   1000 <_init>
    11d1:	48 c1 fd 03          	sar    $0x3,%rbp
    11d5:	74 1f                	je     11f6 <__libc_csu_init+0x56>
    11d7:	31 db                	xor    %ebx,%ebx
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11e0:	4c 89 f2             	mov    %r14,%rdx
    11e3:	4c 89 ee             	mov    %r13,%rsi
    11e6:	44 89 e7             	mov    %r12d,%edi
    11e9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    11ed:	48 83 c3 01          	add    $0x1,%rbx
    11f1:	48 39 dd             	cmp    %rbx,%rbp
    11f4:	75 ea                	jne    11e0 <__libc_csu_init+0x40>
    11f6:	48 83 c4 08          	add    $0x8,%rsp
    11fa:	5b                   	pop    %rbx
    11fb:	5d                   	pop    %rbp
    11fc:	41 5c                	pop    %r12
    11fe:	41 5d                	pop    %r13
    1200:	41 5e                	pop    %r14
    1202:	41 5f                	pop    %r15
    1204:	c3                   	ret    
    1205:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    120c:	00 00 00 00 

0000000000001210 <__libc_csu_fini>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	c3                   	ret    

Disassembly of section .fini:

0000000000001218 <_fini>:
    1218:	f3 0f 1e fa          	endbr64 
    121c:	48 83 ec 08          	sub    $0x8,%rsp
    1220:	48 83 c4 08          	add    $0x8,%rsp
    1224:	c3                   	ret    
