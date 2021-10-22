
main2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	b9 02 00 00 00       	mov    $0x2,%ecx
   9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10 <main+0x10>
  10:	48 89 c2             	mov    %rax,%rdx
  13:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1a <main+0x1a>
  1a:	48 89 c6             	mov    %rax,%rsi
  1d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 24 <main+0x24>
  24:	48 89 c7             	mov    %rax,%rdi
  27:	e8 00 00 00 00       	call   2c <main+0x2c>
  2c:	8b 15 00 00 00 00    	mov    0x0(%rip),%edx        # 32 <main+0x32>
  32:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 38 <main+0x38>
  38:	89 c6                	mov    %eax,%esi
  3a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 41 <main+0x41>
  41:	48 89 c7             	mov    %rax,%rdi
  44:	b8 00 00 00 00       	mov    $0x0,%eax
  49:	e8 00 00 00 00       	call   4e <main+0x4e>
  4e:	b8 00 00 00 00       	mov    $0x0,%eax
  53:	5d                   	pop    %rbp
  54:	c3                   	ret    

Disassembly of section .data:

0000000000000000 <x>:
   0:	01 00                	add    %eax,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
	...

0000000000000008 <y>:
   8:	03 00                	add    (%rax),%eax
   a:	00 00                	add    %al,(%rax)
   c:	04 00                	add    $0x0,%al
	...

Disassembly of section .bss:

0000000000000000 <z>:
	...

Disassembly of section .rodata:

0000000000000000 <.rodata>:
   0:	7a 20                	jp     22 <y+0x1a>
   2:	3d 20 5b 25 64       	cmp    $0x64255b20,%eax
   7:	2c 20                	sub    $0x20,%al
   9:	25 64 5d 0a 00       	and    $0xa5d64,%eax

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	00 47 43             	add    %al,0x43(%rdi)
   3:	43 3a 20             	rex.XB cmp (%r8),%spl
   6:	28 47 4e             	sub    %al,0x4e(%rdi)
   9:	55                   	push   %rbp
   a:	29 20                	sub    %esp,(%rax)
   c:	31 31                	xor    %esi,(%rcx)
   e:	2e 31 2e             	cs xor %ebp,(%rsi)
  11:	30 00                	xor    %al,(%rax)

Disassembly of section .note.gnu.property:

0000000000000000 <.note.gnu.property>:
   0:	04 00                	add    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	20 00                	and    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	05 00 00 00 47       	add    $0x47000000,%eax
   d:	4e 55                	rex.WRX push %rbp
   f:	00 02                	add    %al,(%rdx)
  11:	00 01                	add    %al,(%rcx)
  13:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
	...
  1f:	00 01                	add    %al,(%rcx)
  21:	00 01                	add    %al,(%rcx)
  23:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
  27:	00 01                	add    %al,(%rcx)
  29:	00 00                	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

0000000000000000 <.eh_frame>:
   0:	14 00                	adc    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	01 7a 52             	add    %edi,0x52(%rdx)
   b:	00 01                	add    %al,(%rcx)
   d:	78 10                	js     1f <.eh_frame+0x1f>
   f:	01 1b                	add    %ebx,(%rbx)
  11:	0c 07                	or     $0x7,%al
  13:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
  19:	00 00                	add    %al,(%rax)
  1b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  1e:	00 00                	add    %al,(%rax)
  20:	00 00                	add    %al,(%rax)
  22:	00 00                	add    %al,(%rax)
  24:	55                   	push   %rbp
  25:	00 00                	add    %al,(%rax)
  27:	00 00                	add    %al,(%rax)
  29:	41 0e                	rex.B (bad) 
  2b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  31:	02 50 0c             	add    0xc(%rax),%dl
  34:	07                   	(bad)  
  35:	08 00                	or     %al,(%rax)
	...
