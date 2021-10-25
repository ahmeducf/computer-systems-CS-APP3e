
prog2l:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <__abi_tag-0x47>
 328:	78 38                	js     362 <__abi_tag-0x3a>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	30 00                	xor    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	80 00 c0             	addb   $0xc0,(%rax)
 34c:	04 00                	add    $0x0,%al
 34e:	00 00                	add    %al,(%rax)
 350:	01 00                	add    %eax,(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	00 00                	add    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	01 00                	add    %eax,(%rax)
 35a:	01 c0                	add    %eax,%eax
 35c:	04 00                	add    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	01 00                	add    %eax,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	00 00                	add    %al,(%rax)
 366:	00 00                	add    %al,(%rax)
 368:	02 00                	add    (%rax),%al
 36a:	01 c0                	add    %eax,%eax
 36c:	04 00                	add    $0x0,%al
	...

Disassembly of section .note.gnu.build-id:

0000000000000378 <.note.gnu.build-id>:
 378:	04 00                	add    $0x0,%al
 37a:	00 00                	add    %al,(%rax)
 37c:	14 00                	adc    $0x0,%al
 37e:	00 00                	add    %al,(%rax)
 380:	03 00                	add    (%rax),%eax
 382:	00 00                	add    %al,(%rax)
 384:	47                   	rex.RXB
 385:	4e 55                	rex.WRX push %rbp
 387:	00 81 7b 8a 30 50    	add    %al,0x50308a7b(%rcx)
 38d:	02 c0                	add    %al,%al
 38f:	b1 8d                	mov    $0x8d,%cl
 391:	66 ae                	data16 scas %es:(%rdi),%al
 393:	00 a7 da e6 95 d6    	add    %ah,-0x296a1926(%rdi)
 399:	83                   	.byte 0x83
 39a:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)

Disassembly of section .note.ABI-tag:

000000000000039c <__abi_tag>:
 39c:	04 00                	add    $0x0,%al
 39e:	00 00                	add    %al,(%rax)
 3a0:	10 00                	adc    %al,(%rax)
 3a2:	00 00                	add    %al,(%rax)
 3a4:	01 00                	add    %eax,(%rax)
 3a6:	00 00                	add    %al,(%rax)
 3a8:	47                   	rex.RXB
 3a9:	4e 55                	rex.WRX push %rbp
 3ab:	00 00                	add    %al,(%rax)
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 04 00             	add    %al,(%rax,%rax,1)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	04 00                	add    $0x0,%al
 3b6:	00 00                	add    %al,(%rax)
 3b8:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003c0 <.gnu.hash>:
 3c0:	01 00                	add    %eax,(%rax)
 3c2:	00 00                	add    %al,(%rax)
 3c4:	01 00                	add    %eax,(%rax)
 3c6:	00 00                	add    %al,(%rax)
 3c8:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000003e0 <.dynsym>:
	...
 3f8:	01 00                	add    %eax,(%rax)
 3fa:	00 00                	add    %al,(%rax)
 3fc:	20 00                	and    %al,(%rax)
	...
 40e:	00 00                	add    %al,(%rax)
 410:	4d 00 00             	rex.WRB add %r8b,(%r8)
 413:	00 12                	add    %dl,(%rdx)
	...
 425:	00 00                	add    %al,(%rax)
 427:	00 63 00             	add    %ah,0x0(%rbx)
 42a:	00 00                	add    %al,(%rax)
 42c:	12 00                	adc    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	46 00 00             	rex.RX add %r8b,(%rax)
 443:	00 12                	add    %dl,(%rdx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 1d 00 00 00 20    	add    %bl,0x20000000(%rip)        # 2000045d <_end+0x1fffc405>
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 2c 00             	add    %ch,(%rax,%rax,1)
 472:	00 00                	add    %al,(%rax)
 474:	20 00                	and    %al,(%rax)
	...
 486:	00 00                	add    %al,(%rax)
 488:	54                   	push   %rsp
 489:	00 00                	add    %al,(%rax)
 48b:	00 22                	add    %ah,(%rdx)
	...

Disassembly of section .dynstr:

00000000000004a0 <.dynstr>:
 4a0:	00 5f 49             	add    %bl,0x49(%rdi)
 4a3:	54                   	push   %rsp
 4a4:	4d 5f                	rex.WRB pop %r15
 4a6:	64 65 72 65          	fs gs jb 50f <__abi_tag+0x173>
 4aa:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4b1:	4d 
 4b2:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4b4:	6f                   	outsl  %ds:(%rsi),(%dx)
 4b5:	6e                   	outsb  %ds:(%rsi),(%dx)
 4b6:	65 54                	gs push %rsp
 4b8:	61                   	(bad)  
 4b9:	62                   	(bad)  
 4ba:	6c                   	insb   (%dx),%es:(%rdi)
 4bb:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 4bf:	67 6d                	insl   (%dx),%es:(%edi)
 4c1:	6f                   	outsl  %ds:(%rsi),(%dx)
 4c2:	6e                   	outsb  %ds:(%rsi),(%dx)
 4c3:	5f                   	pop    %rdi
 4c4:	73 74                	jae    53a <__abi_tag+0x19e>
 4c6:	61                   	(bad)  
 4c7:	72 74                	jb     53d <__abi_tag+0x1a1>
 4c9:	5f                   	pop    %rdi
 4ca:	5f                   	pop    %rdi
 4cb:	00 5f 49             	add    %bl,0x49(%rdi)
 4ce:	54                   	push   %rsp
 4cf:	4d 5f                	rex.WRB pop %r15
 4d1:	72 65                	jb     538 <__abi_tag+0x19c>
 4d3:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4da:	4d 
 4db:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4dd:	6f                   	outsl  %ds:(%rsi),(%dx)
 4de:	6e                   	outsb  %ds:(%rsi),(%dx)
 4df:	65 54                	gs push %rsp
 4e1:	61                   	(bad)  
 4e2:	62                   	(bad)  
 4e3:	6c                   	insb   (%dx),%es:(%rdi)
 4e4:	65 00 61 64          	add    %ah,%gs:0x64(%rcx)
 4e8:	64 76 65             	fs jbe 550 <__abi_tag+0x1b4>
 4eb:	63 00                	movsxd (%rax),%eax
 4ed:	70 72                	jo     561 <__abi_tag+0x1c5>
 4ef:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
 4f6:	63 78 61             	movsxd 0x61(%rax),%edi
 4f9:	5f                   	pop    %rdi
 4fa:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 500:	7a 65                	jp     567 <__abi_tag+0x1cb>
 502:	00 5f 5f             	add    %bl,0x5f(%rdi)
 505:	6c                   	insb   (%dx),%es:(%rdi)
 506:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 50d:	72 74                	jb     583 <__abi_tag+0x1e7>
 50f:	5f                   	pop    %rdi
 510:	6d                   	insl   (%dx),%es:(%rdi)
 511:	61                   	(bad)  
 512:	69 6e 00 2e 2f 6c 69 	imul   $0x696c2f2e,0x0(%rsi),%ebp
 519:	62                   	(bad)  
 51a:	76 65                	jbe    581 <__abi_tag+0x1e5>
 51c:	63 74 6f 72          	movsxd 0x72(%rdi,%rbp,2),%esi
 520:	2e 73 6f             	jae,pn 592 <__abi_tag+0x1f6>
 523:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 527:	63 2e                	movsxd (%rsi),%ebp
 529:	73 6f                	jae    59a <__abi_tag+0x1fe>
 52b:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 530:	49                   	rex.WB
 531:	42                   	rex.X
 532:	43 5f                	rex.XB pop %r15
 534:	32 2e                	xor    (%rsi),%ch
 536:	32 2e                	xor    (%rsi),%ch
 538:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000000053a <.gnu.version>:
 53a:	00 00                	add    %al,(%rax)
 53c:	00 00                	add    %al,(%rax)
 53e:	02 00                	add    (%rax),%al
 540:	02 00                	add    (%rax),%al
 542:	00 00                	add    %al,(%rax)
 544:	00 00                	add    %al,(%rax)
 546:	00 00                	add    %al,(%rax)
 548:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000550 <.gnu.version_r>:
 550:	01 00                	add    %eax,(%rax)
 552:	01 00                	add    %eax,(%rax)
 554:	84 00                	test   %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	10 00                	adc    %al,(%rax)
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	75 1a                	jne    57c <__abi_tag+0x1e0>
 562:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 568:	8e 00                	mov    (%rax),%es
 56a:	00 00                	add    %al,(%rax)
 56c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000570 <.rela.dyn>:
 570:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 576 <__abi_tag+0x1da>
 576:	00 00                	add    %al,(%rax)
 578:	08 00                	or     %al,(%rax)
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	40 11 00             	rex adc %eax,(%rax)
 583:	00 00                	add    %al,(%rax)
 585:	00 00                	add    %al,(%rax)
 587:	00 e0                	add    %ah,%al
 589:	3d 00 00 00 00       	cmp    $0x0,%eax
 58e:	00 00                	add    %al,(%rax)
 590:	08 00                	or     %al,(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	f0 10 00             	lock adc %al,(%rax)
 59b:	00 00                	add    %al,(%rax)
 59d:	00 00                	add    %al,(%rax)
 59f:	00 30                	add    %dh,(%rax)
 5a1:	40 00 00             	rex add %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	08 00                	or     %al,(%rax)
 5aa:	00 00                	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	30 40 00             	xor    %al,0x0(%rax)
 5b3:	00 00                	add    %al,(%rax)
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 d8                	add    %bl,%al
 5b9:	3f                   	(bad)  
 5ba:	00 00                	add    %al,(%rax)
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	06                   	(bad)  
 5c1:	00 00                	add    %al,(%rax)
 5c3:	00 01                	add    %al,(%rcx)
	...
 5cd:	00 00                	add    %al,(%rax)
 5cf:	00 e0                	add    %ah,%al
 5d1:	3f                   	(bad)  
 5d2:	00 00                	add    %al,(%rax)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	00 00                	add    %al,(%rax)
 5d8:	06                   	(bad)  
 5d9:	00 00                	add    %al,(%rax)
 5db:	00 03                	add    %al,(%rbx)
	...
 5e5:	00 00                	add    %al,(%rax)
 5e7:	00 e8                	add    %ch,%al
 5e9:	3f                   	(bad)  
 5ea:	00 00                	add    %al,(%rax)
 5ec:	00 00                	add    %al,(%rax)
 5ee:	00 00                	add    %al,(%rax)
 5f0:	06                   	(bad)  
 5f1:	00 00                	add    %al,(%rax)
 5f3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 5f9 <__abi_tag+0x25d>
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 00                	add    %al,(%rax)
 5fd:	00 00                	add    %al,(%rax)
 5ff:	00 f0                	add    %dh,%al
 601:	3f                   	(bad)  
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	06                   	(bad)  
 609:	00 00                	add    %al,(%rax)
 60b:	00 06                	add    %al,(%rsi)
	...
 615:	00 00                	add    %al,(%rax)
 617:	00 f8                	add    %bh,%al
 619:	3f                   	(bad)  
 61a:	00 00                	add    %al,(%rax)
 61c:	00 00                	add    %al,(%rax)
 61e:	00 00                	add    %al,(%rax)
 620:	06                   	(bad)  
 621:	00 00                	add    %al,(%rax)
 623:	00 07                	add    %al,(%rdi)
	...

Disassembly of section .rela.plt:

0000000000000630 <.rela.plt>:
 630:	18 40 00             	sbb    %al,0x0(%rax)
 633:	00 00                	add    %al,(%rax)
 635:	00 00                	add    %al,(%rax)
 637:	00 07                	add    %al,(%rdi)
 639:	00 00                	add    %al,(%rax)
 63b:	00 02                	add    %al,(%rdx)
	...
 645:	00 00                	add    %al,(%rax)
 647:	00 20                	add    %ah,(%rax)
 649:	40 00 00             	rex add %al,(%rax)
 64c:	00 00                	add    %al,(%rax)
 64e:	00 00                	add    %al,(%rax)
 650:	07                   	(bad)  
 651:	00 00                	add    %al,(%rax)
 653:	00 04 00             	add    %al,(%rax,%rax,1)
	...

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

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	7a 20                	jp     2026 <__GNU_EH_FRAME_HDR+0x12>
    2006:	3d 20 5b 25 64       	cmp    $0x64255b20,%eax
    200b:	2c 20                	sub    $0x20,%al
    200d:	25 64 5d 0a 00       	and    $0xa5d64,%eax

Disassembly of section .eh_frame_hdr:

0000000000002014 <__GNU_EH_FRAME_HDR>:
    2014:	01 1b                	add    %ebx,(%rbx)
    2016:	03 3b                	add    (%rbx),%edi
    2018:	30 00                	xor    %al,(%rax)
    201a:	00 00                	add    %al,(%rax)
    201c:	05 00 00 00 0c       	add    $0xc000000,%eax
    2021:	f0 ff                	lock (bad) 
    2023:	ff 64 00 00          	jmp    *0x0(%rax,%rax,1)
    2027:	00 3c f0             	add    %bh,(%rax,%rsi,8)
    202a:	ff                   	(bad)  
    202b:	ff 4c 00 00          	decl   0x0(%rax,%rax,1)
    202f:	00 35 f1 ff ff 8c    	add    %dh,-0x7300000f(%rip)        # ffffffff8d002026 <_end+0xffffffff8cffdfce>
    2035:	00 00                	add    %al,(%rax)
    2037:	00 8c f1 ff ff ac 00 	add    %cl,0xacffff(%rcx,%rsi,8)
    203e:	00 00                	add    %al,(%rax)
    2040:	fc                   	cld    
    2041:	f1                   	icebp  
    2042:	ff                   	(bad)  
    2043:	ff f4                	push   %rsp
    2045:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

0000000000002048 <__FRAME_END__-0xd4>:
    2048:	14 00                	adc    $0x0,%al
    204a:	00 00                	add    %al,(%rax)
    204c:	00 00                	add    %al,(%rax)
    204e:	00 00                	add    %al,(%rax)
    2050:	01 7a 52             	add    %edi,0x52(%rdx)
    2053:	00 01                	add    %al,(%rcx)
    2055:	78 10                	js     2067 <__GNU_EH_FRAME_HDR+0x53>
    2057:	01 1b                	add    %ebx,(%rbx)
    2059:	0c 07                	or     $0x7,%al
    205b:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2061:	00 00                	add    %al,(%rax)
    2063:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2066:	00 00                	add    %al,(%rax)
    2068:	e8 ef ff ff 2f       	call   3000205c <_end+0x2fffe004>
    206d:	00 00                	add    %al,(%rax)
    206f:	00 00                	add    %al,(%rax)
    2071:	44 07                	rex.R (bad) 
    2073:	10 00                	adc    %al,(%rax)
    2075:	00 00                	add    %al,(%rax)
    2077:	00 24 00             	add    %ah,(%rax,%rax,1)
    207a:	00 00                	add    %al,(%rax)
    207c:	34 00                	xor    $0x0,%al
    207e:	00 00                	add    %al,(%rax)
    2080:	a0 ef ff ff 30 00 00 	movabs 0x30ffffef,%al
    2087:	00 00 
    2089:	0e                   	(bad)  
    208a:	10 46 0e             	adc    %al,0xe(%rsi)
    208d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2090:	0b 77 08             	or     0x8(%rdi),%esi
    2093:	80 00 3f             	addb   $0x3f,(%rax)
    2096:	1a 3b                	sbb    (%rbx),%bh
    2098:	2a 33                	sub    (%rbx),%dh
    209a:	24 22                	and    $0x22,%al
    209c:	00 00                	add    %al,(%rax)
    209e:	00 00                	add    %al,(%rax)
    20a0:	1c 00                	sbb    $0x0,%al
    20a2:	00 00                	add    %al,(%rax)
    20a4:	5c                   	pop    %rsp
    20a5:	00 00                	add    %al,(%rax)
    20a7:	00 a1 f0 ff ff 55    	add    %ah,0x55fffff0(%rcx)
    20ad:	00 00                	add    %al,(%rax)
    20af:	00 00                	add    %al,(%rax)
    20b1:	41 0e                	rex.B (bad) 
    20b3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    20b9:	02 50 0c             	add    0xc(%rax),%dl
    20bc:	07                   	(bad)  
    20bd:	08 00                	or     %al,(%rax)
    20bf:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    20c3:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
    20c7:	00 d8                	add    %bl,%al
    20c9:	f0 ff                	lock (bad) 
    20cb:	ff 65 00             	jmp    *0x0(%rbp)
    20ce:	00 00                	add    %al,(%rax)
    20d0:	00 46 0e             	add    %al,0xe(%rsi)
    20d3:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    20d9:	8e 03                	mov    (%rbx),%es
    20db:	45 0e                	rex.RB (bad) 
    20dd:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    20e3:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86302f2d <_end+0xffffffff862feed5>
    20e9:	06                   	(bad)  
    20ea:	48 0e                	rex.W (bad) 
    20ec:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    20f2:	6e                   	outsb  %ds:(%rsi),(%dx)
    20f3:	0e                   	(bad)  
    20f4:	38 41 0e             	cmp    %al,0xe(%rcx)
    20f7:	30 41 0e             	xor    %al,0xe(%rcx)
    20fa:	28 42 0e             	sub    %al,0xe(%rdx)
    20fd:	20 42 0e             	and    %al,0xe(%rdx)
    2100:	18 42 0e             	sbb    %al,0xe(%rdx)
    2103:	10 42 0e             	adc    %al,0xe(%rdx)
    2106:	08 00                	or     %al,(%rax)
    2108:	10 00                	adc    %al,(%rax)
    210a:	00 00                	add    %al,(%rax)
    210c:	c4                   	(bad)  
    210d:	00 00                	add    %al,(%rax)
    210f:	00 00                	add    %al,(%rax)
    2111:	f1                   	icebp  
    2112:	ff                   	(bad)  
    2113:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 2119 <__GNU_EH_FRAME_HDR+0x105>
    2119:	00 00                	add    %al,(%rax)
	...

000000000000211c <__FRAME_END__>:
    211c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003dd8 <__frame_dummy_init_array_entry>:
    3dd8:	40 11 00             	rex adc %eax,(%rax)
    3ddb:	00 00                	add    %al,(%rax)
    3ddd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003de0 <__do_global_dtors_aux_fini_array_entry>:
    3de0:	f0 10 00             	lock adc %al,(%rax)
    3de3:	00 00                	add    %al,(%rax)
    3de5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003de8 <_DYNAMIC>:
    3de8:	01 00                	add    %eax,(%rax)
    3dea:	00 00                	add    %al,(%rax)
    3dec:	00 00                	add    %al,(%rax)
    3dee:	00 00                	add    %al,(%rax)
    3df0:	75 00                	jne    3df2 <_DYNAMIC+0xa>
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
    3df6:	00 00                	add    %al,(%rax)
    3df8:	01 00                	add    %eax,(%rax)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	84 00                	test   %al,(%rax)
    3e02:	00 00                	add    %al,(%rax)
    3e04:	00 00                	add    %al,(%rax)
    3e06:	00 00                	add    %al,(%rax)
    3e08:	0c 00                	or     $0x0,%al
    3e0a:	00 00                	add    %al,(%rax)
    3e0c:	00 00                	add    %al,(%rax)
    3e0e:	00 00                	add    %al,(%rax)
    3e10:	00 10                	add    %dl,(%rax)
    3e12:	00 00                	add    %al,(%rax)
    3e14:	00 00                	add    %al,(%rax)
    3e16:	00 00                	add    %al,(%rax)
    3e18:	0d 00 00 00 00       	or     $0x0,%eax
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 18                	add    %bl,(%rax)
    3e21:	12 00                	adc    (%rax),%al
    3e23:	00 00                	add    %al,(%rax)
    3e25:	00 00                	add    %al,(%rax)
    3e27:	00 19                	add    %bl,(%rcx)
    3e29:	00 00                	add    %al,(%rax)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 d8                	add    %bl,%al
    3e31:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e36:	00 00                	add    %al,(%rax)
    3e38:	1b 00                	sbb    (%rax),%eax
    3e3a:	00 00                	add    %al,(%rax)
    3e3c:	00 00                	add    %al,(%rax)
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	08 00                	or     %al,(%rax)
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	1a 00                	sbb    (%rax),%al
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	e0 3d                	loopne 3e8f <_DYNAMIC+0xa7>
    3e52:	00 00                	add    %al,(%rax)
    3e54:	00 00                	add    %al,(%rax)
    3e56:	00 00                	add    %al,(%rax)
    3e58:	1c 00                	sbb    $0x0,%al
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	08 00                	or     %al,(%rax)
    3e62:	00 00                	add    %al,(%rax)
    3e64:	00 00                	add    %al,(%rax)
    3e66:	00 00                	add    %al,(%rax)
    3e68:	f5                   	cmc    
    3e69:	fe                   	(bad)  
    3e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 c0                	add    %al,%al
    3e71:	03 00                	add    (%rax),%eax
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e7d <_DYNAMIC+0x95>
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 a0 04 00 00 00    	add    %ah,0x4(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 06                	add    %al,(%rsi)
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 e0                	add    %ah,%al
    3e91:	03 00                	add    (%rax),%eax
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 0a                	add    %cl,(%rdx)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 9a 00 00 00 00    	add    %bl,0x0(%rdx)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 0b                	add    %cl,(%rbx)
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 18                	add    %bl,(%rax)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ebd <_DYNAMIC+0xd5>
	...
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 03                	add    %al,(%rbx)
	...
    3ed1:	40 00 00             	rex add %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	02 00                	add    (%rax),%al
    3eda:	00 00                	add    %al,(%rax)
    3edc:	00 00                	add    %al,(%rax)
    3ede:	00 00                	add    %al,(%rax)
    3ee0:	30 00                	xor    %al,(%rax)
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	14 00                	adc    $0x0,%al
    3eea:	00 00                	add    %al,(%rax)
    3eec:	00 00                	add    %al,(%rax)
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	07                   	(bad)  
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 17                	add    %dl,(%rdi)
    3ef9:	00 00                	add    %al,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 30                	add    %dh,(%rax)
    3f01:	06                   	(bad)  
    3f02:	00 00                	add    %al,(%rax)
    3f04:	00 00                	add    %al,(%rax)
    3f06:	00 00                	add    %al,(%rax)
    3f08:	07                   	(bad)  
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 70 05             	add    %dh,0x5(%rax)
    3f12:	00 00                	add    %al,(%rax)
    3f14:	00 00                	add    %al,(%rax)
    3f16:	00 00                	add    %al,(%rax)
    3f18:	08 00                	or     %al,(%rax)
    3f1a:	00 00                	add    %al,(%rax)
    3f1c:	00 00                	add    %al,(%rax)
    3f1e:	00 00                	add    %al,(%rax)
    3f20:	c0 00 00             	rolb   $0x0,(%rax)
    3f23:	00 00                	add    %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 09                	add    %cl,(%rcx)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	00 00                	add    %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 18                	add    %bl,(%rax)
    3f31:	00 00                	add    %al,(%rax)
    3f33:	00 00                	add    %al,(%rax)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 fb                	add    %bh,%bl
    3f39:	ff                   	(bad)  
    3f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 00                	add    %al,(%rax)
    3f41:	00 00                	add    %al,(%rax)
    3f43:	08 00                	or     %al,(%rax)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 fe                	add    %bh,%dh
    3f49:	ff                   	(bad)  
    3f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 50 05             	add    %dl,0x5(%rax)
    3f52:	00 00                	add    %al,(%rax)
    3f54:	00 00                	add    %al,(%rax)
    3f56:	00 00                	add    %al,(%rax)
    3f58:	ff                   	(bad)  
    3f59:	ff                   	(bad)  
    3f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 01                	add    %al,(%rcx)
    3f61:	00 00                	add    %al,(%rax)
    3f63:	00 00                	add    %al,(%rax)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 f0                	add    %dh,%al
    3f69:	ff                   	(bad)  
    3f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 3a                	add    %bh,(%rdx)
    3f71:	05 00 00 00 00       	add    $0x0,%eax
    3f76:	00 00                	add    %al,(%rax)
    3f78:	f9                   	stc    
    3f79:	ff                   	(bad)  
    3f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f7d:	00 00                	add    %al,(%rax)
    3f7f:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fd8 <.got>:
	...

Disassembly of section .got.plt:

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	e8 3d 00 00 00       	call   4042 <y+0x2>
	...
    4015:	00 00                	add    %al,(%rax)
    4017:	00 36                	add    %dh,(%rsi)
    4019:	10 00                	adc    %al,(%rax)
    401b:	00 00                	add    %al,(%rax)
    401d:	00 00                	add    %al,(%rax)
    401f:	00 46 10             	add    %al,0x10(%rsi)
    4022:	00 00                	add    %al,(%rax)
    4024:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004028 <__data_start>:
	...

0000000000004030 <__dso_handle>:
    4030:	30 40 00             	xor    %al,0x0(%rax)
    4033:	00 00                	add    %al,(%rax)
    4035:	00 00                	add    %al,(%rax)
	...

0000000000004038 <x>:
    4038:	01 00                	add    %eax,(%rax)
    403a:	00 00                	add    %al,(%rax)
    403c:	02 00                	add    (%rax),%al
	...

0000000000004040 <y>:
    4040:	03 00                	add    (%rax),%eax
    4042:	00 00                	add    %al,(%rax)
    4044:	04 00                	add    $0x0,%al
	...

Disassembly of section .bss:

0000000000004048 <completed.0>:
	...

0000000000004050 <z>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 31                	xor    %esi,(%rcx)
   d:	2e 31 2e             	cs xor %ebp,(%rsi)
  10:	30 00                	xor    %al,(%rax)
