
libvector.so:     file format elf64-x86-64


Disassembly of section .note.gnu.property:

00000000000002a8 <.note.gnu.property>:
 2a8:	04 00                	add    $0x0,%al
 2aa:	00 00                	add    %al,(%rax)
 2ac:	20 00                	and    %al,(%rax)
 2ae:	00 00                	add    %al,(%rax)
 2b0:	05 00 00 00 47       	add    $0x47000000,%eax
 2b5:	4e 55                	rex.WRX push %rbp
 2b7:	00 01                	add    %al,(%rcx)
 2b9:	00 01                	add    %al,(%rcx)
 2bb:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 2bf:	00 01                	add    %al,(%rcx)
 2c1:	00 00                	add    %al,(%rax)
 2c3:	00 00                	add    %al,(%rax)
 2c5:	00 00                	add    %al,(%rax)
 2c7:	00 02                	add    %al,(%rdx)
 2c9:	00 01                	add    %al,(%rcx)
 2cb:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
	...

Disassembly of section .note.gnu.build-id:

00000000000002d8 <.note.gnu.build-id>:
 2d8:	04 00                	add    $0x0,%al
 2da:	00 00                	add    %al,(%rax)
 2dc:	14 00                	adc    $0x0,%al
 2de:	00 00                	add    %al,(%rax)
 2e0:	03 00                	add    (%rax),%eax
 2e2:	00 00                	add    %al,(%rax)
 2e4:	47                   	rex.RXB
 2e5:	4e 55                	rex.WRX push %rbp
 2e7:	00 42 27             	add    %al,0x27(%rdx)
 2ea:	56                   	push   %rsi
 2eb:	b5 0f                	mov    $0xf,%ch
 2ed:	dc 47 cd             	faddl  -0x33(%rdi)
 2f0:	8d 0d 8e 3c f4 ff    	lea    -0xbc372(%rip),%ecx        # fffffffffff43f84 <mulcnt+0xfffffffffff3ff5c>
 2f6:	6b d9 79             	imul   $0x79,%ecx,%ebx
 2f9:	8b                   	.byte 0x8b
 2fa:	a0                   	.byte 0xa0
 2fb:	6f                   	outsl  %ds:(%rsi),(%dx)

Disassembly of section .gnu.hash:

0000000000000300 <.gnu.hash>:
 300:	03 00                	add    (%rax),%eax
 302:	00 00                	add    %al,(%rax)
 304:	05 00 00 00 01       	add    $0x1000000,%eax
 309:	00 00                	add    %al,(%rax)
 30b:	00 06                	add    %al,(%rsi)
 30d:	00 00                	add    %al,(%rax)
 30f:	00 0c 00             	add    %cl,(%rax,%rax,1)
 312:	aa                   	stos   %al,%es:(%rdi)
 313:	00 00                	add    %al,(%rax)
 315:	10 00                	adc    %al,(%rax)
 317:	01 05 00 00 00 06    	add    %eax,0x6000000(%rip)        # 600031d <mulcnt+0x5ffc2f5>
 31d:	00 00                	add    %al,(%rax)
 31f:	00 08                	add    %cl,(%rax)
 321:	00 00                	add    %al,(%rax)
 323:	00 f9                	add    %bh,%cl
 325:	70 a3                	jo     2ca <_init-0xd36>
 327:	0e                   	(bad)  
 328:	d2 85 6d f1 91 c0    	rolb   %cl,-0x3f6e0e93(%rbp)
 32e:	a3                   	.byte 0xa3
 32f:	0e                   	(bad)  
 330:	6d                   	insl   (%dx),%es:(%rdi)
 331:	d5                   	(bad)  
 332:	6d                   	insl   (%dx),%es:(%rdi)
 333:	f1                   	icebp  

Disassembly of section .dynsym:

0000000000000338 <.dynsym>:
	...
 350:	10 00                	adc    %al,(%rax)
 352:	00 00                	add    %al,(%rax)
 354:	20 00                	and    %al,(%rax)
	...
 366:	00 00                	add    %al,(%rax)
 368:	01 00                	add    %eax,(%rax)
 36a:	00 00                	add    %al,(%rax)
 36c:	20 00                	and    %al,(%rax)
	...
 37e:	00 00                	add    %al,(%rax)
 380:	2c 00                	sub    $0x0,%al
 382:	00 00                	add    %al,(%rax)
 384:	20 00                	and    %al,(%rax)
	...
 396:	00 00                	add    %al,(%rax)
 398:	46 00 00             	rex.RX add %r8b,(%rax)
 39b:	00 22                	add    %ah,(%rdx)
	...
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 63 00             	add    %ah,0x0(%rbx)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	11 00                	adc    %eax,(%rax)
 3b6:	14 00                	adc    $0x0,%al
 3b8:	28 40 00             	sub    %al,0x0(%rax)
 3bb:	00 00                	add    %al,(%rax)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 04 00             	add    %al,(%rax,%rax,1)
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 00                	add    %al,(%rax)
 3c6:	00 00                	add    %al,(%rax)
 3c8:	55                   	push   %rbp
 3c9:	00 00                	add    %al,(%rax)
 3cb:	00 11                	add    %dl,(%rcx)
 3cd:	00 14 00             	add    %dl,(%rax,%rax,1)
 3d0:	24 40                	and    $0x40,%al
 3d2:	00 00                	add    %al,(%rax)
 3d4:	00 00                	add    %al,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	04 00                	add    $0x0,%al
 3da:	00 00                	add    %al,(%rax)
 3dc:	00 00                	add    %al,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	6a 00                	push   $0x0
 3e2:	00 00                	add    %al,(%rax)
 3e4:	12 00                	adc    (%rax),%al
 3e6:	0a 00                	or     (%rax),%al
 3e8:	6e                   	outsb  %ds:(%rsi),(%dx)
 3e9:	11 00                	adc    %eax,(%rax)
 3eb:	00 00                	add    %al,(%rax)
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 87 00 00 00 00    	add    %al,0x0(%rdi)
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
 3fb:	00 12                	add    %dl,(%rdx)
 3fd:	00 0a                	add    %cl,(%rdx)
 3ff:	00 e9                	add    %ch,%cl
 401:	10 00                	adc    %al,(%rax)
 403:	00 00                	add    %al,(%rax)
 405:	00 00                	add    %al,(%rax)
 407:	00 85 00 00 00 00    	add    %al,0x0(%rbp)
 40d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000410 <.dynstr>:
 410:	00 5f 5f             	add    %bl,0x5f(%rdi)
 413:	67 6d                	insl   (%dx),%es:(%edi)
 415:	6f                   	outsl  %ds:(%rsi),(%dx)
 416:	6e                   	outsb  %ds:(%rsi),(%dx)
 417:	5f                   	pop    %rdi
 418:	73 74                	jae    48e <_init-0xb72>
 41a:	61                   	(bad)  
 41b:	72 74                	jb     491 <_init-0xb6f>
 41d:	5f                   	pop    %rdi
 41e:	5f                   	pop    %rdi
 41f:	00 5f 49             	add    %bl,0x49(%rdi)
 422:	54                   	push   %rsp
 423:	4d 5f                	rex.WRB pop %r15
 425:	64 65 72 65          	fs gs jb 48e <_init-0xb72>
 429:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 430:	4d 
 431:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 433:	6f                   	outsl  %ds:(%rsi),(%dx)
 434:	6e                   	outsb  %ds:(%rsi),(%dx)
 435:	65 54                	gs push %rsp
 437:	61                   	(bad)  
 438:	62                   	(bad)  
 439:	6c                   	insb   (%dx),%es:(%rdi)
 43a:	65 00 5f 49          	add    %bl,%gs:0x49(%rdi)
 43e:	54                   	push   %rsp
 43f:	4d 5f                	rex.WRB pop %r15
 441:	72 65                	jb     4a8 <_init-0xb58>
 443:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 44a:	4d 
 44b:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 44d:	6f                   	outsl  %ds:(%rsi),(%dx)
 44e:	6e                   	outsb  %ds:(%rsi),(%dx)
 44f:	65 54                	gs push %rsp
 451:	61                   	(bad)  
 452:	62                   	(bad)  
 453:	6c                   	insb   (%dx),%es:(%rdi)
 454:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 458:	63 78 61             	movsxd 0x61(%rax),%edi
 45b:	5f                   	pop    %rdi
 45c:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 462:	7a 65                	jp     4c9 <_init-0xb37>
 464:	00 61 64             	add    %ah,0x64(%rcx)
 467:	64 63 6e 74          	movsxd %fs:0x74(%rsi),%ebp
 46b:	00 61 64             	add    %ah,0x64(%rcx)
 46e:	64 76 65             	fs jbe 4d6 <_init-0xb2a>
 471:	63 00                	movsxd (%rax),%eax
 473:	6d                   	insl   (%dx),%es:(%rdi)
 474:	75 6c                	jne    4e2 <_init-0xb1e>
 476:	63 6e 74             	movsxd 0x74(%rsi),%ebp
 479:	00 6d 75             	add    %ch,0x75(%rbp)
 47c:	6c                   	insb   (%dx),%es:(%rdi)
 47d:	76 65                	jbe    4e4 <_init-0xb1c>
 47f:	63 00                	movsxd (%rax),%eax
 481:	6c                   	insb   (%dx),%es:(%rdi)
 482:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
 489:	36 00 47 4c          	ss add %al,0x4c(%rdi)
 48d:	49                   	rex.WB
 48e:	42                   	rex.X
 48f:	43 5f                	rex.XB pop %r15
 491:	32 2e                	xor    (%rsi),%ch
 493:	32 2e                	xor    (%rsi),%ch
 495:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000000498 <.gnu.version>:
	...
 4a0:	02 00                	add    (%rax),%al
 4a2:	01 00                	add    %eax,(%rax)
 4a4:	01 00                	add    %eax,(%rax)
 4a6:	01 00                	add    %eax,(%rax)
 4a8:	01 00                	add    %eax,(%rax)

Disassembly of section .gnu.version_r:

00000000000004b0 <.gnu.version_r>:
 4b0:	01 00                	add    %eax,(%rax)
 4b2:	01 00                	add    %eax,(%rax)
 4b4:	71 00                	jno    4b6 <_init-0xb4a>
 4b6:	00 00                	add    %al,(%rax)
 4b8:	10 00                	adc    %al,(%rax)
 4ba:	00 00                	add    %al,(%rax)
 4bc:	00 00                	add    %al,(%rax)
 4be:	00 00                	add    %al,(%rax)
 4c0:	75 1a                	jne    4dc <_init-0xb24>
 4c2:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 4c8:	7b 00                	jnp    4ca <_init-0xb36>
 4ca:	00 00                	add    %al,(%rax)
 4cc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000004d0 <.rela.dyn>:
 4d0:	40                   	rex
 4d1:	3e 00 00             	ds add %al,(%rax)
 4d4:	00 00                	add    %al,(%rax)
 4d6:	00 00                	add    %al,(%rax)
 4d8:	08 00                	or     %al,(%rax)
 4da:	00 00                	add    %al,(%rax)
 4dc:	00 00                	add    %al,(%rax)
 4de:	00 00                	add    %al,(%rax)
 4e0:	e0 10                	loopne 4f2 <_init-0xb0e>
 4e2:	00 00                	add    %al,(%rax)
 4e4:	00 00                	add    %al,(%rax)
 4e6:	00 00                	add    %al,(%rax)
 4e8:	48                   	rex.W
 4e9:	3e 00 00             	ds add %al,(%rax)
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 00                	add    %al,(%rax)
 4f0:	08 00                	or     %al,(%rax)
 4f2:	00 00                	add    %al,(%rax)
 4f4:	00 00                	add    %al,(%rax)
 4f6:	00 00                	add    %al,(%rax)
 4f8:	90                   	nop
 4f9:	10 00                	adc    %al,(%rax)
 4fb:	00 00                	add    %al,(%rax)
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 18                	add    %bl,(%rax)
 501:	40 00 00             	rex add %al,(%rax)
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	08 00                	or     %al,(%rax)
 50a:	00 00                	add    %al,(%rax)
 50c:	00 00                	add    %al,(%rax)
 50e:	00 00                	add    %al,(%rax)
 510:	18 40 00             	sbb    %al,0x0(%rax)
 513:	00 00                	add    %al,(%rax)
 515:	00 00                	add    %al,(%rax)
 517:	00 d0                	add    %dl,%al
 519:	3f                   	(bad)  
 51a:	00 00                	add    %al,(%rax)
 51c:	00 00                	add    %al,(%rax)
 51e:	00 00                	add    %al,(%rax)
 520:	06                   	(bad)  
 521:	00 00                	add    %al,(%rax)
 523:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 529 <_init-0xad7>
 529:	00 00                	add    %al,(%rax)
 52b:	00 00                	add    %al,(%rax)
 52d:	00 00                	add    %al,(%rax)
 52f:	00 d8                	add    %bl,%al
 531:	3f                   	(bad)  
 532:	00 00                	add    %al,(%rax)
 534:	00 00                	add    %al,(%rax)
 536:	00 00                	add    %al,(%rax)
 538:	06                   	(bad)  
 539:	00 00                	add    %al,(%rax)
 53b:	00 01                	add    %al,(%rcx)
	...
 545:	00 00                	add    %al,(%rax)
 547:	00 e0                	add    %ah,%al
 549:	3f                   	(bad)  
 54a:	00 00                	add    %al,(%rax)
 54c:	00 00                	add    %al,(%rax)
 54e:	00 00                	add    %al,(%rax)
 550:	06                   	(bad)  
 551:	00 00                	add    %al,(%rax)
 553:	00 02                	add    %al,(%rdx)
	...
 55d:	00 00                	add    %al,(%rax)
 55f:	00 e8                	add    %ch,%al
 561:	3f                   	(bad)  
 562:	00 00                	add    %al,(%rax)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	06                   	(bad)  
 569:	00 00                	add    %al,(%rax)
 56b:	00 06                	add    %al,(%rsi)
	...
 575:	00 00                	add    %al,(%rax)
 577:	00 f0                	add    %dh,%al
 579:	3f                   	(bad)  
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	06                   	(bad)  
 581:	00 00                	add    %al,(%rax)
 583:	00 03                	add    %al,(%rbx)
	...
 58d:	00 00                	add    %al,(%rax)
 58f:	00 f8                	add    %bh,%al
 591:	3f                   	(bad)  
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	06                   	(bad)  
 599:	00 00                	add    %al,(%rax)
 59b:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d1 2f 00 00 	mov    0x2fd1(%rip),%rax        # 3fe0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .text:

0000000000001020 <deregister_tm_clones>:
    1020:	48 8d 3d f9 2f 00 00 	lea    0x2ff9(%rip),%rdi        # 4020 <completed.0>
    1027:	48 8d 05 f2 2f 00 00 	lea    0x2ff2(%rip),%rax        # 4020 <completed.0>
    102e:	48 39 f8             	cmp    %rdi,%rax
    1031:	74 15                	je     1048 <deregister_tm_clones+0x28>
    1033:	48 8b 05 9e 2f 00 00 	mov    0x2f9e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    103a:	48 85 c0             	test   %rax,%rax
    103d:	74 09                	je     1048 <deregister_tm_clones+0x28>
    103f:	ff e0                	jmp    *%rax
    1041:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1048:	c3                   	ret    
    1049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001050 <register_tm_clones>:
    1050:	48 8d 3d c9 2f 00 00 	lea    0x2fc9(%rip),%rdi        # 4020 <completed.0>
    1057:	48 8d 35 c2 2f 00 00 	lea    0x2fc2(%rip),%rsi        # 4020 <completed.0>
    105e:	48 29 fe             	sub    %rdi,%rsi
    1061:	48 89 f0             	mov    %rsi,%rax
    1064:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1068:	48 c1 f8 03          	sar    $0x3,%rax
    106c:	48 01 c6             	add    %rax,%rsi
    106f:	48 d1 fe             	sar    %rsi
    1072:	74 14                	je     1088 <register_tm_clones+0x38>
    1074:	48 8b 05 75 2f 00 00 	mov    0x2f75(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    107b:	48 85 c0             	test   %rax,%rax
    107e:	74 08                	je     1088 <register_tm_clones+0x38>
    1080:	ff e0                	jmp    *%rax
    1082:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1088:	c3                   	ret    
    1089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001090 <__do_global_dtors_aux>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	80 3d 85 2f 00 00 00 	cmpb   $0x0,0x2f85(%rip)        # 4020 <completed.0>
    109b:	75 33                	jne    10d0 <__do_global_dtors_aux+0x40>
    109d:	55                   	push   %rbp
    109e:	48 83 3d 52 2f 00 00 	cmpq   $0x0,0x2f52(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10a5:	00 
    10a6:	48 89 e5             	mov    %rsp,%rbp
    10a9:	74 0d                	je     10b8 <__do_global_dtors_aux+0x28>
    10ab:	48 8b 3d 66 2f 00 00 	mov    0x2f66(%rip),%rdi        # 4018 <__dso_handle>
    10b2:	ff 15 40 2f 00 00    	call   *0x2f40(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10b8:	e8 63 ff ff ff       	call   1020 <deregister_tm_clones>
    10bd:	c6 05 5c 2f 00 00 01 	movb   $0x1,0x2f5c(%rip)        # 4020 <completed.0>
    10c4:	5d                   	pop    %rbp
    10c5:	c3                   	ret    
    10c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10cd:	00 00 00 
    10d0:	c3                   	ret    
    10d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    10d8:	00 00 00 00 
    10dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000010e0 <frame_dummy>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	e9 67 ff ff ff       	jmp    1050 <register_tm_clones>

00000000000010e9 <addvec>:
    10e9:	55                   	push   %rbp
    10ea:	48 89 e5             	mov    %rsp,%rbp
    10ed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    10f1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    10f5:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    10f9:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
    10fc:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3fe8 <addcnt@@Base-0x3c>
    1103:	8b 00                	mov    (%rax),%eax
    1105:	8d 50 01             	lea    0x1(%rax),%edx
    1108:	48 8b 05 d9 2e 00 00 	mov    0x2ed9(%rip),%rax        # 3fe8 <addcnt@@Base-0x3c>
    110f:	89 10                	mov    %edx,(%rax)
    1111:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1118:	eb 48                	jmp    1162 <addvec+0x79>
    111a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    111d:	48 98                	cltq   
    111f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    1126:	00 
    1127:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    112b:	48 01 d0             	add    %rdx,%rax
    112e:	8b 08                	mov    (%rax),%ecx
    1130:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1133:	48 98                	cltq   
    1135:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    113c:	00 
    113d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1141:	48 01 d0             	add    %rdx,%rax
    1144:	8b 10                	mov    (%rax),%edx
    1146:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1149:	48 98                	cltq   
    114b:	48 8d 34 85 00 00 00 	lea    0x0(,%rax,4),%rsi
    1152:	00 
    1153:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1157:	48 01 f0             	add    %rsi,%rax
    115a:	01 ca                	add    %ecx,%edx
    115c:	89 10                	mov    %edx,(%rax)
    115e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1162:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1165:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    1168:	7c b0                	jl     111a <addvec+0x31>
    116a:	90                   	nop
    116b:	90                   	nop
    116c:	5d                   	pop    %rbp
    116d:	c3                   	ret    

000000000000116e <mulvec>:
    116e:	55                   	push   %rbp
    116f:	48 89 e5             	mov    %rsp,%rbp
    1172:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1176:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    117a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    117e:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
    1181:	48 8b 05 48 2e 00 00 	mov    0x2e48(%rip),%rax        # 3fd0 <mulcnt@@Base-0x58>
    1188:	8b 00                	mov    (%rax),%eax
    118a:	8d 50 01             	lea    0x1(%rax),%edx
    118d:	48 8b 05 3c 2e 00 00 	mov    0x2e3c(%rip),%rax        # 3fd0 <mulcnt@@Base-0x58>
    1194:	89 10                	mov    %edx,(%rax)
    1196:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    119d:	eb 4a                	jmp    11e9 <mulvec+0x7b>
    119f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11a2:	48 98                	cltq   
    11a4:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    11ab:	00 
    11ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11b0:	48 01 d0             	add    %rdx,%rax
    11b3:	8b 08                	mov    (%rax),%ecx
    11b5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11b8:	48 98                	cltq   
    11ba:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    11c1:	00 
    11c2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11c6:	48 01 d0             	add    %rdx,%rax
    11c9:	8b 00                	mov    (%rax),%eax
    11cb:	8b 55 fc             	mov    -0x4(%rbp),%edx
    11ce:	48 63 d2             	movslq %edx,%rdx
    11d1:	48 8d 34 95 00 00 00 	lea    0x0(,%rdx,4),%rsi
    11d8:	00 
    11d9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    11dd:	48 01 f2             	add    %rsi,%rdx
    11e0:	0f af c1             	imul   %ecx,%eax
    11e3:	89 02                	mov    %eax,(%rdx)
    11e5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    11e9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11ec:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    11ef:	7c ae                	jl     119f <mulvec+0x31>
    11f1:	90                   	nop
    11f2:	90                   	nop
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	ret    

Disassembly of section .fini:

00000000000011f8 <_fini>:
    11f8:	f3 0f 1e fa          	endbr64 
    11fc:	48 83 ec 08          	sub    $0x8,%rsp
    1200:	48 83 c4 08          	add    $0x8,%rsp
    1204:	c3                   	ret    

Disassembly of section .eh_frame_hdr:

0000000000002000 <__GNU_EH_FRAME_HDR>:
    2000:	01 1b                	add    %ebx,(%rbx)
    2002:	03 3b                	add    (%rbx),%edi
    2004:	1c 00                	sbb    $0x0,%al
    2006:	00 00                	add    %al,(%rax)
    2008:	02 00                	add    (%rax),%al
    200a:	00 00                	add    %al,(%rax)
    200c:	e9 f0 ff ff 38       	jmp    39002001 <mulcnt+0x38ffdfd9>
    2011:	00 00                	add    %al,(%rax)
    2013:	00 6e f1             	add    %ch,-0xf(%rsi)
    2016:	ff                   	(bad)  
    2017:	ff 58 00             	lcall  *0x0(%rax)
	...

Disassembly of section .eh_frame:

0000000000002020 <__FRAME_END__-0x58>:
    2020:	14 00                	adc    $0x0,%al
    2022:	00 00                	add    %al,(%rax)
    2024:	00 00                	add    %al,(%rax)
    2026:	00 00                	add    %al,(%rax)
    2028:	01 7a 52             	add    %edi,0x52(%rdx)
    202b:	00 01                	add    %al,(%rcx)
    202d:	78 10                	js     203f <__GNU_EH_FRAME_HDR+0x3f>
    202f:	01 1b                	add    %ebx,(%rbx)
    2031:	0c 07                	or     $0x7,%al
    2033:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
    2039:	00 00                	add    %al,(%rax)
    203b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    203e:	00 00                	add    %al,(%rax)
    2040:	a9 f0 ff ff 85       	test   $0x85fffff0,%eax
    2045:	00 00                	add    %al,(%rax)
    2047:	00 00                	add    %al,(%rax)
    2049:	41 0e                	rex.B (bad) 
    204b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    2051:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
    2057:	00 1c 00             	add    %bl,(%rax,%rax,1)
    205a:	00 00                	add    %al,(%rax)
    205c:	3c 00                	cmp    $0x0,%al
    205e:	00 00                	add    %al,(%rax)
    2060:	0e                   	(bad)  
    2061:	f1                   	icebp  
    2062:	ff                   	(bad)  
    2063:	ff 87 00 00 00 00    	incl   0x0(%rdi)
    2069:	41 0e                	rex.B (bad) 
    206b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    2071:	02 82 0c 07 08 00    	add    0x8070c(%rdx),%al
	...

0000000000002078 <__FRAME_END__>:
    2078:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003e40 <__frame_dummy_init_array_entry>:
    3e40:	e0 10                	loopne 3e52 <_DYNAMIC+0x2>
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003e48 <__do_global_dtors_aux_fini_array_entry>:
    3e48:	90                   	nop
    3e49:	10 00                	adc    %al,(%rax)
    3e4b:	00 00                	add    %al,(%rax)
    3e4d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003e50 <_DYNAMIC>:
    3e50:	01 00                	add    %eax,(%rax)
    3e52:	00 00                	add    %al,(%rax)
    3e54:	00 00                	add    %al,(%rax)
    3e56:	00 00                	add    %al,(%rax)
    3e58:	71 00                	jno    3e5a <_DYNAMIC+0xa>
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	0c 00                	or     $0x0,%al
    3e62:	00 00                	add    %al,(%rax)
    3e64:	00 00                	add    %al,(%rax)
    3e66:	00 00                	add    %al,(%rax)
    3e68:	00 10                	add    %dl,(%rax)
    3e6a:	00 00                	add    %al,(%rax)
    3e6c:	00 00                	add    %al,(%rax)
    3e6e:	00 00                	add    %al,(%rax)
    3e70:	0d 00 00 00 00       	or     $0x0,%eax
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 f8                	add    %bh,%al
    3e79:	11 00                	adc    %eax,(%rax)
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 19                	add    %bl,(%rcx)
    3e81:	00 00                	add    %al,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 40 3e             	add    %al,0x3e(%rax)
    3e8a:	00 00                	add    %al,(%rax)
    3e8c:	00 00                	add    %al,(%rax)
    3e8e:	00 00                	add    %al,(%rax)
    3e90:	1b 00                	sbb    (%rax),%eax
    3e92:	00 00                	add    %al,(%rax)
    3e94:	00 00                	add    %al,(%rax)
    3e96:	00 00                	add    %al,(%rax)
    3e98:	08 00                	or     %al,(%rax)
    3e9a:	00 00                	add    %al,(%rax)
    3e9c:	00 00                	add    %al,(%rax)
    3e9e:	00 00                	add    %al,(%rax)
    3ea0:	1a 00                	sbb    (%rax),%al
    3ea2:	00 00                	add    %al,(%rax)
    3ea4:	00 00                	add    %al,(%rax)
    3ea6:	00 00                	add    %al,(%rax)
    3ea8:	48                   	rex.W
    3ea9:	3e 00 00             	ds add %al,(%rax)
    3eac:	00 00                	add    %al,(%rax)
    3eae:	00 00                	add    %al,(%rax)
    3eb0:	1c 00                	sbb    $0x0,%al
    3eb2:	00 00                	add    %al,(%rax)
    3eb4:	00 00                	add    %al,(%rax)
    3eb6:	00 00                	add    %al,(%rax)
    3eb8:	08 00                	or     %al,(%rax)
    3eba:	00 00                	add    %al,(%rax)
    3ebc:	00 00                	add    %al,(%rax)
    3ebe:	00 00                	add    %al,(%rax)
    3ec0:	f5                   	cmc    
    3ec1:	fe                   	(bad)  
    3ec2:	ff 6f 00             	ljmp   *0x0(%rdi)
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 00                	add    %al,(%rax)
    3ec9:	03 00                	add    (%rax),%eax
    3ecb:	00 00                	add    %al,(%rax)
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3ed5 <_DYNAMIC+0x85>
    3ed5:	00 00                	add    %al,(%rax)
    3ed7:	00 10                	add    %dl,(%rax)
    3ed9:	04 00                	add    $0x0,%al
    3edb:	00 00                	add    %al,(%rax)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 06                	add    %al,(%rsi)
    3ee1:	00 00                	add    %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 38                	add    %bh,(%rax)
    3ee9:	03 00                	add    (%rax),%eax
    3eeb:	00 00                	add    %al,(%rax)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 0a                	add    %cl,(%rdx)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 87 00 00 00 00    	add    %al,0x0(%rdi)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 0b                	add    %cl,(%rbx)
    3f01:	00 00                	add    %al,(%rax)
    3f03:	00 00                	add    %al,(%rax)
    3f05:	00 00                	add    %al,(%rax)
    3f07:	00 18                	add    %bl,(%rax)
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 07                	add    %al,(%rdi)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 d0                	add    %dl,%al
    3f19:	04 00                	add    $0x0,%al
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 08                	add    %cl,(%rax)
    3f21:	00 00                	add    %al,(%rax)
    3f23:	00 00                	add    %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 d8                	add    %bl,%al
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	00 00                	add    %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 09                	add    %cl,(%rcx)
    3f31:	00 00                	add    %al,(%rax)
    3f33:	00 00                	add    %al,(%rax)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 18                	add    %bl,(%rax)
    3f39:	00 00                	add    %al,(%rax)
    3f3b:	00 00                	add    %al,(%rax)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 fe                	add    %bh,%dh
    3f41:	ff                   	(bad)  
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 b0 04 00 00 00    	add    %dh,0x4(%rax)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 ff                	add    %bh,%bh
    3f51:	ff                   	(bad)  
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 01                	add    %al,(%rcx)
    3f59:	00 00                	add    %al,(%rax)
    3f5b:	00 00                	add    %al,(%rax)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 f0                	add    %dh,%al
    3f61:	ff                   	(bad)  
    3f62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 98 04 00 00 00    	add    %bl,0x4(%rax)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 f9                	add    %bh,%cl
    3f71:	ff                   	(bad)  
    3f72:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f75:	00 00                	add    %al,(%rax)
    3f77:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fd0 <.got>:
	...

Disassembly of section .got.plt:

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	50                   	push   %rax
    4001:	3e 00 00             	ds add %al,(%rax)
	...

Disassembly of section .data:

0000000000004018 <__dso_handle>:
    4018:	18 40 00             	sbb    %al,0x0(%rax)
    401b:	00 00                	add    %al,(%rax)
    401d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000004020 <completed.0>:
    4020:	00 00                	add    %al,(%rax)
	...

0000000000004024 <addcnt>:
    4024:	00 00                	add    %al,(%rax)
	...

0000000000004028 <mulcnt>:
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
