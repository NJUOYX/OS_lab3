
kernel/kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <kEntry>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	53                   	push   %ebx
  100004:	83 ec 04             	sub    $0x4,%esp
  100007:	e8 35 00 00 00       	call   100041 <__x86.get_pc_thunk.bx>
  10000c:	81 c3 f4 4f 00 00    	add    $0x4ff4,%ebx
  100012:	e8 3b 08 00 00       	call   100852 <initSerial>
  100017:	e8 3e 21 00 00       	call   10215a <initIdt>
  10001c:	e8 42 1b 00 00       	call   101b63 <initIntr>
  100021:	e8 41 0a 00 00       	call   100a67 <initSeg>
  100026:	e8 21 19 00 00       	call   10194c <initVga>
  10002b:	e8 8f 18 00 00       	call   1018bf <initTimer>
  100030:	e8 d4 13 00 00       	call   101409 <initKeyTable>
  100035:	e8 18 0f 00 00       	call   100f52 <initFS>
  10003a:	e8 78 11 00 00       	call   1011b7 <initProc>
  10003f:	eb fe                	jmp    10003f <kEntry+0x3f>

00100041 <__x86.get_pc_thunk.bx>:
  100041:	8b 1c 24             	mov    (%esp),%ebx
  100044:	c3                   	ret    

00100045 <waitForInterrupt>:
  100045:	55                   	push   %ebp
  100046:	89 e5                	mov    %esp,%ebp
  100048:	e8 72 01 00 00       	call   1001bf <__x86.get_pc_thunk.ax>
  10004d:	05 b3 4f 00 00       	add    $0x4fb3,%eax
  100052:	f4                   	hlt    
  100053:	90                   	nop
  100054:	5d                   	pop    %ebp
  100055:	c3                   	ret    

00100056 <disableInterrupt>:
  100056:	55                   	push   %ebp
  100057:	89 e5                	mov    %esp,%ebp
  100059:	e8 61 01 00 00       	call   1001bf <__x86.get_pc_thunk.ax>
  10005e:	05 a2 4f 00 00       	add    $0x4fa2,%eax
  100063:	fa                   	cli    
  100064:	90                   	nop
  100065:	5d                   	pop    %ebp
  100066:	c3                   	ret    

00100067 <i2A>:
  100067:	55                   	push   %ebp
  100068:	89 e5                	mov    %esp,%ebp
  10006a:	83 ec 10             	sub    $0x10,%esp
  10006d:	e8 4d 01 00 00       	call   1001bf <__x86.get_pc_thunk.ax>
  100072:	05 8e 4f 00 00       	add    $0x4f8e,%eax
  100077:	8d 80 3d 01 00 00    	lea    0x13d(%eax),%eax
  10007d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100080:	8b 45 08             	mov    0x8(%ebp),%eax
  100083:	b9 0a 00 00 00       	mov    $0xa,%ecx
  100088:	99                   	cltd   
  100089:	f7 f9                	idiv   %ecx
  10008b:	89 d0                	mov    %edx,%eax
  10008d:	83 c0 30             	add    $0x30,%eax
  100090:	ff 4d fc             	decl   -0x4(%ebp)
  100093:	88 c2                	mov    %al,%dl
  100095:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100098:	88 10                	mov    %dl,(%eax)
  10009a:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10009d:	b8 67 66 66 66       	mov    $0x66666667,%eax
  1000a2:	f7 e9                	imul   %ecx
  1000a4:	c1 fa 02             	sar    $0x2,%edx
  1000a7:	89 c8                	mov    %ecx,%eax
  1000a9:	c1 f8 1f             	sar    $0x1f,%eax
  1000ac:	29 c2                	sub    %eax,%edx
  1000ae:	89 d0                	mov    %edx,%eax
  1000b0:	89 45 08             	mov    %eax,0x8(%ebp)
  1000b3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1000b7:	75 c7                	jne    100080 <i2A+0x19>
  1000b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1000bc:	c9                   	leave  
  1000bd:	c3                   	ret    

001000be <append>:
  1000be:	55                   	push   %ebp
  1000bf:	89 e5                	mov    %esp,%ebp
  1000c1:	53                   	push   %ebx
  1000c2:	e8 f8 00 00 00       	call   1001bf <__x86.get_pc_thunk.ax>
  1000c7:	05 39 4f 00 00       	add    $0x4f39,%eax
  1000cc:	eb 1a                	jmp    1000e8 <append+0x2a>
  1000ce:	8b 55 0c             	mov    0xc(%ebp),%edx
  1000d1:	8d 42 01             	lea    0x1(%edx),%eax
  1000d4:	89 45 0c             	mov    %eax,0xc(%ebp)
  1000d7:	8b 45 08             	mov    0x8(%ebp),%eax
  1000da:	8b 00                	mov    (%eax),%eax
  1000dc:	8d 58 01             	lea    0x1(%eax),%ebx
  1000df:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1000e2:	89 19                	mov    %ebx,(%ecx)
  1000e4:	8a 12                	mov    (%edx),%dl
  1000e6:	88 10                	mov    %dl,(%eax)
  1000e8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000eb:	8a 00                	mov    (%eax),%al
  1000ed:	84 c0                	test   %al,%al
  1000ef:	75 dd                	jne    1000ce <append+0x10>
  1000f1:	90                   	nop
  1000f2:	5b                   	pop    %ebx
  1000f3:	5d                   	pop    %ebp
  1000f4:	c3                   	ret    

001000f5 <displayMessage>:
  1000f5:	55                   	push   %ebp
  1000f6:	89 e5                	mov    %esp,%ebp
  1000f8:	53                   	push   %ebx
  1000f9:	83 ec 14             	sub    $0x14,%esp
  1000fc:	e8 40 ff ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  100101:	81 c3 ff 4e 00 00    	add    $0x4eff,%ebx
  100107:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  10010d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100110:	ff 75 08             	pushl  0x8(%ebp)
  100113:	8d 45 f4             	lea    -0xc(%ebp),%eax
  100116:	50                   	push   %eax
  100117:	e8 a2 ff ff ff       	call   1000be <append>
  10011c:	83 c4 08             	add    $0x8,%esp
  10011f:	8d 83 bc df ff ff    	lea    -0x2044(%ebx),%eax
  100125:	50                   	push   %eax
  100126:	8d 45 f4             	lea    -0xc(%ebp),%eax
  100129:	50                   	push   %eax
  10012a:	e8 8f ff ff ff       	call   1000be <append>
  10012f:	83 c4 08             	add    $0x8,%esp
  100132:	ff 75 0c             	pushl  0xc(%ebp)
  100135:	e8 2d ff ff ff       	call   100067 <i2A>
  10013a:	83 c4 04             	add    $0x4,%esp
  10013d:	50                   	push   %eax
  10013e:	8d 45 f4             	lea    -0xc(%ebp),%eax
  100141:	50                   	push   %eax
  100142:	e8 77 ff ff ff       	call   1000be <append>
  100147:	83 c4 08             	add    $0x8,%esp
  10014a:	8d 83 be df ff ff    	lea    -0x2042(%ebx),%eax
  100150:	50                   	push   %eax
  100151:	8d 45 f4             	lea    -0xc(%ebp),%eax
  100154:	50                   	push   %eax
  100155:	e8 64 ff ff ff       	call   1000be <append>
  10015a:	83 c4 08             	add    $0x8,%esp
  10015d:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  100163:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100166:	eb 1b                	jmp    100183 <displayMessage+0x8e>
  100168:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10016b:	8a 00                	mov    (%eax),%al
  10016d:	0f be c0             	movsbl %al,%eax
  100170:	83 ec 0c             	sub    $0xc,%esp
  100173:	50                   	push   %eax
  100174:	e8 7c 07 00 00       	call   1008f5 <putChar>
  100179:	83 c4 10             	add    $0x10,%esp
  10017c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10017f:	40                   	inc    %eax
  100180:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100183:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100186:	8a 00                	mov    (%eax),%al
  100188:	84 c0                	test   %al,%al
  10018a:	75 dc                	jne    100168 <displayMessage+0x73>
  10018c:	90                   	nop
  10018d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100190:	c9                   	leave  
  100191:	c3                   	ret    

00100192 <abort>:
  100192:	55                   	push   %ebp
  100193:	89 e5                	mov    %esp,%ebp
  100195:	83 ec 08             	sub    $0x8,%esp
  100198:	e8 22 00 00 00       	call   1001bf <__x86.get_pc_thunk.ax>
  10019d:	05 63 4e 00 00       	add    $0x4e63,%eax
  1001a2:	e8 af fe ff ff       	call   100056 <disableInterrupt>
  1001a7:	83 ec 08             	sub    $0x8,%esp
  1001aa:	ff 75 0c             	pushl  0xc(%ebp)
  1001ad:	ff 75 08             	pushl  0x8(%ebp)
  1001b0:	e8 40 ff ff ff       	call   1000f5 <displayMessage>
  1001b5:	83 c4 10             	add    $0x10,%esp
  1001b8:	e8 88 fe ff ff       	call   100045 <waitForInterrupt>
  1001bd:	eb f9                	jmp    1001b8 <abort+0x26>

001001bf <__x86.get_pc_thunk.ax>:
  1001bf:	8b 04 24             	mov    (%esp),%eax
  1001c2:	c3                   	ret    

001001c3 <stringChr>:
  1001c3:	55                   	push   %ebp
  1001c4:	89 e5                	mov    %esp,%ebp
  1001c6:	83 ec 14             	sub    $0x14,%esp
  1001c9:	e8 f1 ff ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1001ce:	05 32 4e 00 00       	add    $0x4e32,%eax
  1001d3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001d6:	88 45 ec             	mov    %al,-0x14(%ebp)
  1001d9:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1001e0:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1001e4:	75 31                	jne    100217 <stringChr+0x54>
  1001e6:	8b 45 10             	mov    0x10(%ebp),%eax
  1001e9:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1001ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1001f4:	eb 3c                	jmp    100232 <stringChr+0x6f>
  1001f6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1001f9:	8b 45 08             	mov    0x8(%ebp),%eax
  1001fc:	01 d0                	add    %edx,%eax
  1001fe:	8a 00                	mov    (%eax),%al
  100200:	38 45 ec             	cmp    %al,-0x14(%ebp)
  100203:	75 0f                	jne    100214 <stringChr+0x51>
  100205:	8b 45 10             	mov    0x10(%ebp),%eax
  100208:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10020b:	89 10                	mov    %edx,(%eax)
  10020d:	b8 00 00 00 00       	mov    $0x0,%eax
  100212:	eb 1e                	jmp    100232 <stringChr+0x6f>
  100214:	ff 45 fc             	incl   -0x4(%ebp)
  100217:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10021a:	8b 45 08             	mov    0x8(%ebp),%eax
  10021d:	01 d0                	add    %edx,%eax
  10021f:	8a 00                	mov    (%eax),%al
  100221:	84 c0                	test   %al,%al
  100223:	75 d1                	jne    1001f6 <stringChr+0x33>
  100225:	8b 45 10             	mov    0x10(%ebp),%eax
  100228:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10022b:	89 10                	mov    %edx,(%eax)
  10022d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100232:	c9                   	leave  
  100233:	c3                   	ret    

00100234 <stringChrR>:
  100234:	55                   	push   %ebp
  100235:	89 e5                	mov    %esp,%ebp
  100237:	83 ec 14             	sub    $0x14,%esp
  10023a:	e8 80 ff ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10023f:	05 c1 4d 00 00       	add    $0x4dc1,%eax
  100244:	8b 45 0c             	mov    0xc(%ebp),%eax
  100247:	88 45 ec             	mov    %al,-0x14(%ebp)
  10024a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100251:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100255:	75 13                	jne    10026a <stringChrR+0x36>
  100257:	8b 45 10             	mov    0x10(%ebp),%eax
  10025a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100260:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100265:	eb 47                	jmp    1002ae <stringChrR+0x7a>
  100267:	ff 45 fc             	incl   -0x4(%ebp)
  10026a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10026d:	8b 45 08             	mov    0x8(%ebp),%eax
  100270:	01 d0                	add    %edx,%eax
  100272:	8a 00                	mov    (%eax),%al
  100274:	84 c0                	test   %al,%al
  100276:	75 ef                	jne    100267 <stringChrR+0x33>
  100278:	8b 45 10             	mov    0x10(%ebp),%eax
  10027b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10027e:	89 10                	mov    %edx,(%eax)
  100280:	eb 21                	jmp    1002a3 <stringChrR+0x6f>
  100282:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100285:	8b 45 08             	mov    0x8(%ebp),%eax
  100288:	01 d0                	add    %edx,%eax
  10028a:	8a 00                	mov    (%eax),%al
  10028c:	38 45 ec             	cmp    %al,-0x14(%ebp)
  10028f:	75 0f                	jne    1002a0 <stringChrR+0x6c>
  100291:	8b 45 10             	mov    0x10(%ebp),%eax
  100294:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100297:	89 10                	mov    %edx,(%eax)
  100299:	b8 00 00 00 00       	mov    $0x0,%eax
  10029e:	eb 0e                	jmp    1002ae <stringChrR+0x7a>
  1002a0:	ff 4d fc             	decl   -0x4(%ebp)
  1002a3:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  1002a7:	79 d9                	jns    100282 <stringChrR+0x4e>
  1002a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1002ae:	c9                   	leave  
  1002af:	c3                   	ret    

001002b0 <stringLen>:
  1002b0:	55                   	push   %ebp
  1002b1:	89 e5                	mov    %esp,%ebp
  1002b3:	83 ec 10             	sub    $0x10,%esp
  1002b6:	e8 04 ff ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1002bb:	05 45 4d 00 00       	add    $0x4d45,%eax
  1002c0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1002c7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1002cb:	75 0a                	jne    1002d7 <stringLen+0x27>
  1002cd:	b8 00 00 00 00       	mov    $0x0,%eax
  1002d2:	eb 14                	jmp    1002e8 <stringLen+0x38>
  1002d4:	ff 45 fc             	incl   -0x4(%ebp)
  1002d7:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1002da:	8b 45 08             	mov    0x8(%ebp),%eax
  1002dd:	01 d0                	add    %edx,%eax
  1002df:	8a 00                	mov    (%eax),%al
  1002e1:	84 c0                	test   %al,%al
  1002e3:	75 ef                	jne    1002d4 <stringLen+0x24>
  1002e5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002e8:	c9                   	leave  
  1002e9:	c3                   	ret    

001002ea <stringCmp>:
  1002ea:	55                   	push   %ebp
  1002eb:	89 e5                	mov    %esp,%ebp
  1002ed:	83 ec 10             	sub    $0x10,%esp
  1002f0:	e8 ca fe ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1002f5:	05 0b 4d 00 00       	add    $0x4d0b,%eax
  1002fa:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100301:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100305:	74 06                	je     10030d <stringCmp+0x23>
  100307:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10030b:	75 3e                	jne    10034b <stringCmp+0x61>
  10030d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100312:	eb 44                	jmp    100358 <stringCmp+0x6e>
  100314:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100317:	8b 45 08             	mov    0x8(%ebp),%eax
  10031a:	01 d0                	add    %edx,%eax
  10031c:	8a 10                	mov    (%eax),%dl
  10031e:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  100321:	8b 45 0c             	mov    0xc(%ebp),%eax
  100324:	01 c8                	add    %ecx,%eax
  100326:	8a 00                	mov    (%eax),%al
  100328:	38 c2                	cmp    %al,%dl
  10032a:	74 07                	je     100333 <stringCmp+0x49>
  10032c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100331:	eb 25                	jmp    100358 <stringCmp+0x6e>
  100333:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100336:	8b 45 08             	mov    0x8(%ebp),%eax
  100339:	01 d0                	add    %edx,%eax
  10033b:	8a 00                	mov    (%eax),%al
  10033d:	84 c0                	test   %al,%al
  10033f:	75 07                	jne    100348 <stringCmp+0x5e>
  100341:	b8 00 00 00 00       	mov    $0x0,%eax
  100346:	eb 10                	jmp    100358 <stringCmp+0x6e>
  100348:	ff 45 fc             	incl   -0x4(%ebp)
  10034b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10034e:	3b 45 10             	cmp    0x10(%ebp),%eax
  100351:	75 c1                	jne    100314 <stringCmp+0x2a>
  100353:	b8 00 00 00 00       	mov    $0x0,%eax
  100358:	c9                   	leave  
  100359:	c3                   	ret    

0010035a <stringCpy>:
  10035a:	55                   	push   %ebp
  10035b:	89 e5                	mov    %esp,%ebp
  10035d:	83 ec 10             	sub    $0x10,%esp
  100360:	e8 5a fe ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100365:	05 9b 4c 00 00       	add    $0x4c9b,%eax
  10036a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100371:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100375:	74 06                	je     10037d <stringCpy+0x23>
  100377:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10037b:	75 2c                	jne    1003a9 <stringCpy+0x4f>
  10037d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100382:	eb 40                	jmp    1003c4 <stringCpy+0x6a>
  100384:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100387:	8b 45 08             	mov    0x8(%ebp),%eax
  10038a:	01 d0                	add    %edx,%eax
  10038c:	8a 00                	mov    (%eax),%al
  10038e:	84 c0                	test   %al,%al
  100390:	74 21                	je     1003b3 <stringCpy+0x59>
  100392:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100395:	8b 45 08             	mov    0x8(%ebp),%eax
  100398:	01 d0                	add    %edx,%eax
  10039a:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10039d:	8b 55 0c             	mov    0xc(%ebp),%edx
  1003a0:	01 ca                	add    %ecx,%edx
  1003a2:	8a 00                	mov    (%eax),%al
  1003a4:	88 02                	mov    %al,(%edx)
  1003a6:	ff 45 fc             	incl   -0x4(%ebp)
  1003a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ac:	3b 45 10             	cmp    0x10(%ebp),%eax
  1003af:	75 d3                	jne    100384 <stringCpy+0x2a>
  1003b1:	eb 01                	jmp    1003b4 <stringCpy+0x5a>
  1003b3:	90                   	nop
  1003b4:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1003b7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1003ba:	01 d0                	add    %edx,%eax
  1003bc:	c6 00 00             	movb   $0x0,(%eax)
  1003bf:	b8 00 00 00 00       	mov    $0x0,%eax
  1003c4:	c9                   	leave  
  1003c5:	c3                   	ret    

001003c6 <setBuffer>:
  1003c6:	55                   	push   %ebp
  1003c7:	89 e5                	mov    %esp,%ebp
  1003c9:	83 ec 14             	sub    $0x14,%esp
  1003cc:	e8 ee fd ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1003d1:	05 2f 4c 00 00       	add    $0x4c2f,%eax
  1003d6:	8b 45 10             	mov    0x10(%ebp),%eax
  1003d9:	88 45 ec             	mov    %al,-0x14(%ebp)
  1003dc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1003e3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1003e7:	75 07                	jne    1003f0 <setBuffer+0x2a>
  1003e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1003ee:	eb 26                	jmp    100416 <setBuffer+0x50>
  1003f0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1003f7:	eb 10                	jmp    100409 <setBuffer+0x43>
  1003f9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1003fc:	8b 45 08             	mov    0x8(%ebp),%eax
  1003ff:	01 c2                	add    %eax,%edx
  100401:	8a 45 ec             	mov    -0x14(%ebp),%al
  100404:	88 02                	mov    %al,(%edx)
  100406:	ff 45 fc             	incl   -0x4(%ebp)
  100409:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10040c:	3b 45 0c             	cmp    0xc(%ebp),%eax
  10040f:	7c e8                	jl     1003f9 <setBuffer+0x33>
  100411:	b8 00 00 00 00       	mov    $0x0,%eax
  100416:	c9                   	leave  
  100417:	c3                   	ret    

00100418 <readSuperBlock>:
  100418:	55                   	push   %ebp
  100419:	89 e5                	mov    %esp,%ebp
  10041b:	53                   	push   %ebx
  10041c:	83 ec 04             	sub    $0x4,%esp
  10041f:	e8 9b fd ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100424:	05 dc 4b 00 00       	add    $0x4bdc,%eax
  100429:	6a 00                	push   $0x0
  10042b:	6a 01                	push   $0x1
  10042d:	68 00 04 00 00       	push   $0x400
  100432:	ff 75 08             	pushl  0x8(%ebp)
  100435:	89 c3                	mov    %eax,%ebx
  100437:	e8 f6 19 00 00       	call   101e32 <diskRead>
  10043c:	83 c4 10             	add    $0x10,%esp
  10043f:	b8 00 00 00 00       	mov    $0x0,%eax
  100444:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100447:	c9                   	leave  
  100448:	c3                   	ret    

00100449 <readBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	56                   	push   %esi
  10044d:	53                   	push   %ebx
  10044e:	83 ec 20             	sub    $0x20,%esp
  100451:	e8 eb fb ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  100456:	81 c3 aa 4b 00 00    	add    $0x4baa,%ebx
  10045c:	89 e0                	mov    %esp,%eax
  10045e:	89 c6                	mov    %eax,%esi
  100460:	8b 45 08             	mov    0x8(%ebp),%eax
  100463:	8b 40 14             	mov    0x14(%eax),%eax
  100466:	85 c0                	test   %eax,%eax
  100468:	79 03                	jns    10046d <readBlock+0x24>
  10046a:	83 c0 03             	add    $0x3,%eax
  10046d:	c1 f8 02             	sar    $0x2,%eax
  100470:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100473:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  10047a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10047d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100480:	01 d0                	add    %edx,%eax
  100482:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100485:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100488:	8d 50 ff             	lea    -0x1(%eax),%edx
  10048b:	89 55 e8             	mov    %edx,-0x18(%ebp)
  10048e:	c1 e0 02             	shl    $0x2,%eax
  100491:	8d 50 03             	lea    0x3(%eax),%edx
  100494:	b8 10 00 00 00       	mov    $0x10,%eax
  100499:	48                   	dec    %eax
  10049a:	01 d0                	add    %edx,%eax
  10049c:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004a1:	ba 00 00 00 00       	mov    $0x0,%edx
  1004a6:	f7 f1                	div    %ecx
  1004a8:	6b c0 10             	imul   $0x10,%eax,%eax
  1004ab:	29 c4                	sub    %eax,%esp
  1004ad:	89 e0                	mov    %esp,%eax
  1004af:	83 c0 03             	add    $0x3,%eax
  1004b2:	c1 e8 02             	shr    $0x2,%eax
  1004b5:	c1 e0 02             	shl    $0x2,%eax
  1004b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004bb:	8b 45 10             	mov    0x10(%ebp),%eax
  1004be:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004c1:	7d 2b                	jge    1004ee <readBlock+0xa5>
  1004c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004c6:	8b 55 10             	mov    0x10(%ebp),%edx
  1004c9:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004cd:	c1 e0 09             	shl    $0x9,%eax
  1004d0:	89 c2                	mov    %eax,%edx
  1004d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1004d5:	8b 40 14             	mov    0x14(%eax),%eax
  1004d8:	52                   	push   %edx
  1004d9:	50                   	push   %eax
  1004da:	6a 01                	push   $0x1
  1004dc:	ff 75 14             	pushl  0x14(%ebp)
  1004df:	e8 4e 19 00 00       	call   101e32 <diskRead>
  1004e4:	83 c4 10             	add    $0x10,%esp
  1004e7:	b8 00 00 00 00       	mov    $0x0,%eax
  1004ec:	eb 5d                	jmp    10054b <readBlock+0x102>
  1004ee:	8b 45 10             	mov    0x10(%ebp),%eax
  1004f1:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  1004f4:	7d 50                	jge    100546 <readBlock+0xfd>
  1004f6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f9:	8b 40 44             	mov    0x44(%eax),%eax
  1004fc:	c1 e0 09             	shl    $0x9,%eax
  1004ff:	89 c1                	mov    %eax,%ecx
  100501:	8b 45 08             	mov    0x8(%ebp),%eax
  100504:	8b 50 14             	mov    0x14(%eax),%edx
  100507:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10050a:	51                   	push   %ecx
  10050b:	52                   	push   %edx
  10050c:	6a 01                	push   $0x1
  10050e:	50                   	push   %eax
  10050f:	e8 1e 19 00 00       	call   101e32 <diskRead>
  100514:	83 c4 10             	add    $0x10,%esp
  100517:	8b 45 10             	mov    0x10(%ebp),%eax
  10051a:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10051d:	89 c2                	mov    %eax,%edx
  10051f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100522:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100525:	c1 e0 09             	shl    $0x9,%eax
  100528:	89 c2                	mov    %eax,%edx
  10052a:	8b 45 08             	mov    0x8(%ebp),%eax
  10052d:	8b 40 14             	mov    0x14(%eax),%eax
  100530:	52                   	push   %edx
  100531:	50                   	push   %eax
  100532:	6a 01                	push   $0x1
  100534:	ff 75 14             	pushl  0x14(%ebp)
  100537:	e8 f6 18 00 00       	call   101e32 <diskRead>
  10053c:	83 c4 10             	add    $0x10,%esp
  10053f:	b8 00 00 00 00       	mov    $0x0,%eax
  100544:	eb 05                	jmp    10054b <readBlock+0x102>
  100546:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10054b:	89 f4                	mov    %esi,%esp
  10054d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100550:	5b                   	pop    %ebx
  100551:	5e                   	pop    %esi
  100552:	5d                   	pop    %ebp
  100553:	c3                   	ret    

00100554 <readInode>:
  100554:	55                   	push   %ebp
  100555:	89 e5                	mov    %esp,%ebp
  100557:	57                   	push   %edi
  100558:	56                   	push   %esi
  100559:	53                   	push   %ebx
  10055a:	83 ec 3c             	sub    $0x3c,%esp
  10055d:	e8 df fa ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  100562:	81 c3 9e 4a 00 00    	add    $0x4a9e,%ebx
  100568:	89 e0                	mov    %esp,%eax
  10056a:	89 c6                	mov    %eax,%esi
  10056c:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  100573:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10057a:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  100581:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100588:	8b 45 10             	mov    0x10(%ebp),%eax
  10058b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100591:	8b 45 08             	mov    0x8(%ebp),%eax
  100594:	8b 40 14             	mov    0x14(%eax),%eax
  100597:	8d 50 ff             	lea    -0x1(%eax),%edx
  10059a:	89 55 d0             	mov    %edx,-0x30(%ebp)
  10059d:	89 c2                	mov    %eax,%edx
  10059f:	b8 10 00 00 00       	mov    $0x10,%eax
  1005a4:	48                   	dec    %eax
  1005a5:	01 d0                	add    %edx,%eax
  1005a7:	bf 10 00 00 00       	mov    $0x10,%edi
  1005ac:	ba 00 00 00 00       	mov    $0x0,%edx
  1005b1:	f7 f7                	div    %edi
  1005b3:	6b c0 10             	imul   $0x10,%eax,%eax
  1005b6:	29 c4                	sub    %eax,%esp
  1005b8:	89 e0                	mov    %esp,%eax
  1005ba:	83 c0 00             	add    $0x0,%eax
  1005bd:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005c0:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005c7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ce:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  1005d5:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  1005dc:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1005e0:	74 0e                	je     1005f0 <readInode+0x9c>
  1005e2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1005e5:	8b 45 14             	mov    0x14(%ebp),%eax
  1005e8:	01 d0                	add    %edx,%eax
  1005ea:	8a 00                	mov    (%eax),%al
  1005ec:	84 c0                	test   %al,%al
  1005ee:	75 0a                	jne    1005fa <readInode+0xa6>
  1005f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1005f5:	e9 00 02 00 00       	jmp    1007fa <readInode+0x2a6>
  1005fa:	83 ec 04             	sub    $0x4,%esp
  1005fd:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100600:	50                   	push   %eax
  100601:	6a 2f                	push   $0x2f
  100603:	ff 75 14             	pushl  0x14(%ebp)
  100606:	e8 b8 fb ff ff       	call   1001c3 <stringChr>
  10060b:	83 c4 10             	add    $0x10,%esp
  10060e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100611:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100615:	74 07                	je     10061e <readInode+0xca>
  100617:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10061a:	85 c0                	test   %eax,%eax
  10061c:	74 0a                	je     100628 <readInode+0xd4>
  10061e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100623:	e9 d2 01 00 00       	jmp    1007fa <readInode+0x2a6>
  100628:	ff 45 e4             	incl   -0x1c(%ebp)
  10062b:	8b 45 08             	mov    0x8(%ebp),%eax
  10062e:	8b 40 20             	mov    0x20(%eax),%eax
  100631:	c1 e0 09             	shl    $0x9,%eax
  100634:	89 c2                	mov    %eax,%edx
  100636:	8b 45 10             	mov    0x10(%ebp),%eax
  100639:	89 10                	mov    %edx,(%eax)
  10063b:	8b 45 10             	mov    0x10(%ebp),%eax
  10063e:	8b 00                	mov    (%eax),%eax
  100640:	50                   	push   %eax
  100641:	6a 01                	push   $0x1
  100643:	68 80 00 00 00       	push   $0x80
  100648:	ff 75 0c             	pushl  0xc(%ebp)
  10064b:	e8 e2 17 00 00       	call   101e32 <diskRead>
  100650:	83 c4 10             	add    $0x10,%esp
  100653:	e9 8b 01 00 00       	jmp    1007e3 <readInode+0x28f>
  100658:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10065b:	8b 45 14             	mov    0x14(%ebp),%eax
  10065e:	01 c2                	add    %eax,%edx
  100660:	83 ec 04             	sub    $0x4,%esp
  100663:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100666:	50                   	push   %eax
  100667:	6a 2f                	push   $0x2f
  100669:	52                   	push   %edx
  10066a:	e8 54 fb ff ff       	call   1001c3 <stringChr>
  10066f:	83 c4 10             	add    $0x10,%esp
  100672:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100675:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  100679:	75 11                	jne    10068c <readInode+0x138>
  10067b:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10067e:	85 c0                	test   %eax,%eax
  100680:	75 0a                	jne    10068c <readInode+0x138>
  100682:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100687:	e9 6e 01 00 00       	jmp    1007fa <readInode+0x2a6>
  10068c:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100690:	75 09                	jne    10069b <readInode+0x147>
  100692:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  100699:	eb 15                	jmp    1006b0 <readInode+0x15c>
  10069b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10069e:	8b 00                	mov    (%eax),%eax
  1006a0:	66 83 f8 01          	cmp    $0x1,%ax
  1006a4:	75 0a                	jne    1006b0 <readInode+0x15c>
  1006a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006ab:	e9 4a 01 00 00       	jmp    1007fa <readInode+0x2a6>
  1006b0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006b3:	8b 40 04             	mov    0x4(%eax),%eax
  1006b6:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006b9:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006c0:	e9 ea 00 00 00       	jmp    1007af <readInode+0x25b>
  1006c5:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006c8:	50                   	push   %eax
  1006c9:	ff 75 d8             	pushl  -0x28(%ebp)
  1006cc:	ff 75 0c             	pushl  0xc(%ebp)
  1006cf:	ff 75 08             	pushl  0x8(%ebp)
  1006d2:	e8 72 fd ff ff       	call   100449 <readBlock>
  1006d7:	83 c4 10             	add    $0x10,%esp
  1006da:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006dd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006e1:	75 0a                	jne    1006ed <readInode+0x199>
  1006e3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006e8:	e9 0d 01 00 00       	jmp    1007fa <readInode+0x2a6>
  1006ed:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f0:	89 45 c8             	mov    %eax,-0x38(%ebp)
  1006f3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1006fa:	e9 85 00 00 00       	jmp    100784 <readInode+0x230>
  1006ff:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100702:	c1 e0 07             	shl    $0x7,%eax
  100705:	89 c2                	mov    %eax,%edx
  100707:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10070a:	01 d0                	add    %edx,%eax
  10070c:	8b 00                	mov    (%eax),%eax
  10070e:	85 c0                	test   %eax,%eax
  100710:	74 6e                	je     100780 <readInode+0x22c>
  100712:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100715:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100718:	8b 55 14             	mov    0x14(%ebp),%edx
  10071b:	01 d1                	add    %edx,%ecx
  10071d:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100720:	89 d7                	mov    %edx,%edi
  100722:	c1 e7 07             	shl    $0x7,%edi
  100725:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100728:	01 fa                	add    %edi,%edx
  10072a:	83 c2 04             	add    $0x4,%edx
  10072d:	83 ec 04             	sub    $0x4,%esp
  100730:	50                   	push   %eax
  100731:	51                   	push   %ecx
  100732:	52                   	push   %edx
  100733:	e8 b2 fb ff ff       	call   1002ea <stringCmp>
  100738:	83 c4 10             	add    $0x10,%esp
  10073b:	85 c0                	test   %eax,%eax
  10073d:	75 42                	jne    100781 <readInode+0x22d>
  10073f:	8b 45 08             	mov    0x8(%ebp),%eax
  100742:	8b 40 20             	mov    0x20(%eax),%eax
  100745:	c1 e0 09             	shl    $0x9,%eax
  100748:	89 c2                	mov    %eax,%edx
  10074a:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10074d:	c1 e0 07             	shl    $0x7,%eax
  100750:	89 c1                	mov    %eax,%ecx
  100752:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100755:	01 c8                	add    %ecx,%eax
  100757:	8b 00                	mov    (%eax),%eax
  100759:	48                   	dec    %eax
  10075a:	c1 e0 07             	shl    $0x7,%eax
  10075d:	01 d0                	add    %edx,%eax
  10075f:	89 c2                	mov    %eax,%edx
  100761:	8b 45 10             	mov    0x10(%ebp),%eax
  100764:	89 10                	mov    %edx,(%eax)
  100766:	8b 45 10             	mov    0x10(%ebp),%eax
  100769:	8b 00                	mov    (%eax),%eax
  10076b:	50                   	push   %eax
  10076c:	6a 01                	push   $0x1
  10076e:	68 80 00 00 00       	push   $0x80
  100773:	ff 75 0c             	pushl  0xc(%ebp)
  100776:	e8 b7 16 00 00       	call   101e32 <diskRead>
  10077b:	83 c4 10             	add    $0x10,%esp
  10077e:	eb 1a                	jmp    10079a <readInode+0x246>
  100780:	90                   	nop
  100781:	ff 45 dc             	incl   -0x24(%ebp)
  100784:	8b 45 08             	mov    0x8(%ebp),%eax
  100787:	8b 40 14             	mov    0x14(%eax),%eax
  10078a:	c1 e8 07             	shr    $0x7,%eax
  10078d:	89 c2                	mov    %eax,%edx
  10078f:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100792:	39 c2                	cmp    %eax,%edx
  100794:	0f 87 65 ff ff ff    	ja     1006ff <readInode+0x1ab>
  10079a:	8b 45 08             	mov    0x8(%ebp),%eax
  10079d:	8b 40 14             	mov    0x14(%eax),%eax
  1007a0:	c1 e8 07             	shr    $0x7,%eax
  1007a3:	89 c2                	mov    %eax,%edx
  1007a5:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007a8:	39 c2                	cmp    %eax,%edx
  1007aa:	77 11                	ja     1007bd <readInode+0x269>
  1007ac:	ff 45 d8             	incl   -0x28(%ebp)
  1007af:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007b2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007b5:	0f 8c 0a ff ff ff    	jl     1006c5 <readInode+0x171>
  1007bb:	eb 01                	jmp    1007be <readInode+0x26a>
  1007bd:	90                   	nop
  1007be:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007c1:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007c4:	7d 16                	jge    1007dc <readInode+0x288>
  1007c6:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007ca:	75 09                	jne    1007d5 <readInode+0x281>
  1007cc:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1007cf:	40                   	inc    %eax
  1007d0:	01 45 e4             	add    %eax,-0x1c(%ebp)
  1007d3:	eb 0e                	jmp    1007e3 <readInode+0x28f>
  1007d5:	b8 00 00 00 00       	mov    $0x0,%eax
  1007da:	eb 1e                	jmp    1007fa <readInode+0x2a6>
  1007dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1007e1:	eb 17                	jmp    1007fa <readInode+0x2a6>
  1007e3:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1007e6:	8b 45 14             	mov    0x14(%ebp),%eax
  1007e9:	01 d0                	add    %edx,%eax
  1007eb:	8a 00                	mov    (%eax),%al
  1007ed:	84 c0                	test   %al,%al
  1007ef:	0f 85 63 fe ff ff    	jne    100658 <readInode+0x104>
  1007f5:	b8 00 00 00 00       	mov    $0x0,%eax
  1007fa:	89 f4                	mov    %esi,%esp
  1007fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1007ff:	5b                   	pop    %ebx
  100800:	5e                   	pop    %esi
  100801:	5f                   	pop    %edi
  100802:	5d                   	pop    %ebp
  100803:	c3                   	ret    

00100804 <inByte>:
  100804:	55                   	push   %ebp
  100805:	89 e5                	mov    %esp,%ebp
  100807:	83 ec 14             	sub    $0x14,%esp
  10080a:	e8 b0 f9 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10080f:	05 f1 47 00 00       	add    $0x47f1,%eax
  100814:	8b 45 08             	mov    0x8(%ebp),%eax
  100817:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10081b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10081e:	89 c2                	mov    %eax,%edx
  100820:	ec                   	in     (%dx),%al
  100821:	88 45 ff             	mov    %al,-0x1(%ebp)
  100824:	8a 45 ff             	mov    -0x1(%ebp),%al
  100827:	c9                   	leave  
  100828:	c3                   	ret    

00100829 <outByte>:
  100829:	55                   	push   %ebp
  10082a:	89 e5                	mov    %esp,%ebp
  10082c:	83 ec 08             	sub    $0x8,%esp
  10082f:	e8 8b f9 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100834:	05 cc 47 00 00       	add    $0x47cc,%eax
  100839:	8b 45 08             	mov    0x8(%ebp),%eax
  10083c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10083f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100843:	88 d0                	mov    %dl,%al
  100845:	88 45 f8             	mov    %al,-0x8(%ebp)
  100848:	8a 45 f8             	mov    -0x8(%ebp),%al
  10084b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10084e:	ee                   	out    %al,(%dx)
  10084f:	90                   	nop
  100850:	c9                   	leave  
  100851:	c3                   	ret    

00100852 <initSerial>:
  100852:	55                   	push   %ebp
  100853:	89 e5                	mov    %esp,%ebp
  100855:	e8 65 f9 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10085a:	05 a6 47 00 00       	add    $0x47a6,%eax
  10085f:	6a 00                	push   $0x0
  100861:	68 f9 03 00 00       	push   $0x3f9
  100866:	e8 be ff ff ff       	call   100829 <outByte>
  10086b:	83 c4 08             	add    $0x8,%esp
  10086e:	6a 80                	push   $0xffffff80
  100870:	68 fb 03 00 00       	push   $0x3fb
  100875:	e8 af ff ff ff       	call   100829 <outByte>
  10087a:	83 c4 08             	add    $0x8,%esp
  10087d:	6a 01                	push   $0x1
  10087f:	68 f8 03 00 00       	push   $0x3f8
  100884:	e8 a0 ff ff ff       	call   100829 <outByte>
  100889:	83 c4 08             	add    $0x8,%esp
  10088c:	6a 00                	push   $0x0
  10088e:	68 f9 03 00 00       	push   $0x3f9
  100893:	e8 91 ff ff ff       	call   100829 <outByte>
  100898:	83 c4 08             	add    $0x8,%esp
  10089b:	6a 03                	push   $0x3
  10089d:	68 fb 03 00 00       	push   $0x3fb
  1008a2:	e8 82 ff ff ff       	call   100829 <outByte>
  1008a7:	83 c4 08             	add    $0x8,%esp
  1008aa:	6a c7                	push   $0xffffffc7
  1008ac:	68 fa 03 00 00       	push   $0x3fa
  1008b1:	e8 73 ff ff ff       	call   100829 <outByte>
  1008b6:	83 c4 08             	add    $0x8,%esp
  1008b9:	6a 0b                	push   $0xb
  1008bb:	68 fc 03 00 00       	push   $0x3fc
  1008c0:	e8 64 ff ff ff       	call   100829 <outByte>
  1008c5:	83 c4 08             	add    $0x8,%esp
  1008c8:	90                   	nop
  1008c9:	c9                   	leave  
  1008ca:	c3                   	ret    

001008cb <serialIdle>:
  1008cb:	55                   	push   %ebp
  1008cc:	89 e5                	mov    %esp,%ebp
  1008ce:	e8 ec f8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1008d3:	05 2d 47 00 00       	add    $0x472d,%eax
  1008d8:	68 fd 03 00 00       	push   $0x3fd
  1008dd:	e8 22 ff ff ff       	call   100804 <inByte>
  1008e2:	83 c4 04             	add    $0x4,%esp
  1008e5:	0f b6 c0             	movzbl %al,%eax
  1008e8:	83 e0 20             	and    $0x20,%eax
  1008eb:	85 c0                	test   %eax,%eax
  1008ed:	0f 95 c0             	setne  %al
  1008f0:	0f b6 c0             	movzbl %al,%eax
  1008f3:	c9                   	leave  
  1008f4:	c3                   	ret    

001008f5 <putChar>:
  1008f5:	55                   	push   %ebp
  1008f6:	89 e5                	mov    %esp,%ebp
  1008f8:	83 ec 04             	sub    $0x4,%esp
  1008fb:	e8 bf f8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100900:	05 00 47 00 00       	add    $0x4700,%eax
  100905:	8b 45 08             	mov    0x8(%ebp),%eax
  100908:	88 45 fc             	mov    %al,-0x4(%ebp)
  10090b:	90                   	nop
  10090c:	e8 ba ff ff ff       	call   1008cb <serialIdle>
  100911:	83 f8 01             	cmp    $0x1,%eax
  100914:	75 f6                	jne    10090c <putChar+0x17>
  100916:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  10091a:	50                   	push   %eax
  10091b:	68 f8 03 00 00       	push   $0x3f8
  100920:	e8 04 ff ff ff       	call   100829 <outByte>
  100925:	83 c4 08             	add    $0x8,%esp
  100928:	90                   	nop
  100929:	c9                   	leave  
  10092a:	c3                   	ret    

0010092b <putString>:
  10092b:	55                   	push   %ebp
  10092c:	89 e5                	mov    %esp,%ebp
  10092e:	83 ec 10             	sub    $0x10,%esp
  100931:	e8 89 f8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100936:	05 ca 46 00 00       	add    $0x46ca,%eax
  10093b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100942:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100946:	74 30                	je     100978 <putString+0x4d>
  100948:	eb 1e                	jmp    100968 <putString+0x3d>
  10094a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10094d:	8d 50 01             	lea    0x1(%eax),%edx
  100950:	89 55 fc             	mov    %edx,-0x4(%ebp)
  100953:	89 c2                	mov    %eax,%edx
  100955:	8b 45 08             	mov    0x8(%ebp),%eax
  100958:	01 d0                	add    %edx,%eax
  10095a:	8a 00                	mov    (%eax),%al
  10095c:	0f be c0             	movsbl %al,%eax
  10095f:	50                   	push   %eax
  100960:	e8 90 ff ff ff       	call   1008f5 <putChar>
  100965:	83 c4 04             	add    $0x4,%esp
  100968:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10096b:	8b 45 08             	mov    0x8(%ebp),%eax
  10096e:	01 d0                	add    %edx,%eax
  100970:	8a 00                	mov    (%eax),%al
  100972:	84 c0                	test   %al,%al
  100974:	75 d4                	jne    10094a <putString+0x1f>
  100976:	eb 01                	jmp    100979 <putString+0x4e>
  100978:	90                   	nop
  100979:	c9                   	leave  
  10097a:	c3                   	ret    

0010097b <putInt>:
  10097b:	55                   	push   %ebp
  10097c:	89 e5                	mov    %esp,%ebp
  10097e:	83 ec 30             	sub    $0x30,%esp
  100981:	e8 39 f8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100986:	05 7a 46 00 00       	add    $0x467a,%eax
  10098b:	8d 45 dc             	lea    -0x24(%ebp),%eax
  10098e:	83 c0 1f             	add    $0x1f,%eax
  100991:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100994:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100997:	c6 00 00             	movb   $0x0,(%eax)
  10099a:	ff 4d fc             	decl   -0x4(%ebp)
  10099d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1009a0:	c6 00 0a             	movb   $0xa,(%eax)
  1009a3:	8b 45 08             	mov    0x8(%ebp),%eax
  1009a6:	b9 0a 00 00 00       	mov    $0xa,%ecx
  1009ab:	99                   	cltd   
  1009ac:	f7 f9                	idiv   %ecx
  1009ae:	89 d0                	mov    %edx,%eax
  1009b0:	83 c0 30             	add    $0x30,%eax
  1009b3:	ff 4d fc             	decl   -0x4(%ebp)
  1009b6:	88 c2                	mov    %al,%dl
  1009b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1009bb:	88 10                	mov    %dl,(%eax)
  1009bd:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1009c0:	b8 67 66 66 66       	mov    $0x66666667,%eax
  1009c5:	f7 e9                	imul   %ecx
  1009c7:	c1 fa 02             	sar    $0x2,%edx
  1009ca:	89 c8                	mov    %ecx,%eax
  1009cc:	c1 f8 1f             	sar    $0x1f,%eax
  1009cf:	29 c2                	sub    %eax,%edx
  1009d1:	89 d0                	mov    %edx,%eax
  1009d3:	89 45 08             	mov    %eax,0x8(%ebp)
  1009d6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1009da:	75 c7                	jne    1009a3 <putInt+0x28>
  1009dc:	ff 75 fc             	pushl  -0x4(%ebp)
  1009df:	e8 47 ff ff ff       	call   10092b <putString>
  1009e4:	83 c4 04             	add    $0x4,%esp
  1009e7:	90                   	nop
  1009e8:	c9                   	leave  
  1009e9:	c3                   	ret    

001009ea <waitForInterrupt>:
  1009ea:	55                   	push   %ebp
  1009eb:	89 e5                	mov    %esp,%ebp
  1009ed:	e8 cd f7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1009f2:	05 0e 46 00 00       	add    $0x460e,%eax
  1009f7:	f4                   	hlt    
  1009f8:	90                   	nop
  1009f9:	5d                   	pop    %ebp
  1009fa:	c3                   	ret    

001009fb <enableInterrupt>:
  1009fb:	55                   	push   %ebp
  1009fc:	89 e5                	mov    %esp,%ebp
  1009fe:	e8 bc f7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100a03:	05 fd 45 00 00       	add    $0x45fd,%eax
  100a08:	fb                   	sti    
  100a09:	90                   	nop
  100a0a:	5d                   	pop    %ebp
  100a0b:	c3                   	ret    

00100a0c <setGdt>:
  100a0c:	55                   	push   %ebp
  100a0d:	89 e5                	mov    %esp,%ebp
  100a0f:	e8 ab f7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100a14:	05 ec 45 00 00       	add    $0x45ec,%eax
  100a19:	8b 55 0c             	mov    0xc(%ebp),%edx
  100a1c:	4a                   	dec    %edx
  100a1d:	66 89 90 40 01 00 00 	mov    %dx,0x140(%eax)
  100a24:	8b 55 08             	mov    0x8(%ebp),%edx
  100a27:	66 89 90 42 01 00 00 	mov    %dx,0x142(%eax)
  100a2e:	8b 55 08             	mov    0x8(%ebp),%edx
  100a31:	c1 ea 10             	shr    $0x10,%edx
  100a34:	66 89 90 44 01 00 00 	mov    %dx,0x144(%eax)
  100a3b:	8d 80 40 01 00 00    	lea    0x140(%eax),%eax
  100a41:	0f 01 10             	lgdtl  (%eax)
  100a44:	90                   	nop
  100a45:	5d                   	pop    %ebp
  100a46:	c3                   	ret    

00100a47 <lLdt>:
  100a47:	55                   	push   %ebp
  100a48:	89 e5                	mov    %esp,%ebp
  100a4a:	83 ec 04             	sub    $0x4,%esp
  100a4d:	e8 6d f7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100a52:	05 ae 45 00 00       	add    $0x45ae,%eax
  100a57:	8b 45 08             	mov    0x8(%ebp),%eax
  100a5a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100a5e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100a61:	0f 00 d0             	lldt   %ax
  100a64:	90                   	nop
  100a65:	c9                   	leave  
  100a66:	c3                   	ret    

00100a67 <initSeg>:
  100a67:	55                   	push   %ebp
  100a68:	89 e5                	mov    %esp,%ebp
  100a6a:	56                   	push   %esi
  100a6b:	53                   	push   %ebx
  100a6c:	83 ec 14             	sub    $0x14,%esp
  100a6f:	e8 cd f5 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  100a74:	81 c3 8c 45 00 00    	add    $0x458c,%ebx
  100a7a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100a81:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a87:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  100a8d:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a93:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  100a99:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a9f:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  100aa3:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100aa9:	8a 50 0d             	mov    0xd(%eax),%dl
  100aac:	83 e2 f0             	and    $0xfffffff0,%edx
  100aaf:	83 ca 0a             	or     $0xa,%edx
  100ab2:	88 50 0d             	mov    %dl,0xd(%eax)
  100ab5:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100abb:	8a 50 0d             	mov    0xd(%eax),%dl
  100abe:	83 ca 10             	or     $0x10,%edx
  100ac1:	88 50 0d             	mov    %dl,0xd(%eax)
  100ac4:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100aca:	8a 50 0d             	mov    0xd(%eax),%dl
  100acd:	83 e2 9f             	and    $0xffffff9f,%edx
  100ad0:	88 50 0d             	mov    %dl,0xd(%eax)
  100ad3:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100ad9:	8a 50 0d             	mov    0xd(%eax),%dl
  100adc:	83 ca 80             	or     $0xffffff80,%edx
  100adf:	88 50 0d             	mov    %dl,0xd(%eax)
  100ae2:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100ae8:	8a 50 0e             	mov    0xe(%eax),%dl
  100aeb:	83 ca 0f             	or     $0xf,%edx
  100aee:	88 50 0e             	mov    %dl,0xe(%eax)
  100af1:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100af7:	8a 50 0e             	mov    0xe(%eax),%dl
  100afa:	83 e2 ef             	and    $0xffffffef,%edx
  100afd:	88 50 0e             	mov    %dl,0xe(%eax)
  100b00:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b06:	8a 50 0e             	mov    0xe(%eax),%dl
  100b09:	83 e2 df             	and    $0xffffffdf,%edx
  100b0c:	88 50 0e             	mov    %dl,0xe(%eax)
  100b0f:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b15:	8a 50 0e             	mov    0xe(%eax),%dl
  100b18:	83 ca 40             	or     $0x40,%edx
  100b1b:	88 50 0e             	mov    %dl,0xe(%eax)
  100b1e:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b24:	8a 50 0e             	mov    0xe(%eax),%dl
  100b27:	83 ca 80             	or     $0xffffff80,%edx
  100b2a:	88 50 0e             	mov    %dl,0xe(%eax)
  100b2d:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b33:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  100b37:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b3d:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  100b43:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b49:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  100b4f:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b55:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  100b59:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b5f:	8a 50 15             	mov    0x15(%eax),%dl
  100b62:	83 e2 f0             	and    $0xfffffff0,%edx
  100b65:	83 ca 02             	or     $0x2,%edx
  100b68:	88 50 15             	mov    %dl,0x15(%eax)
  100b6b:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b71:	8a 50 15             	mov    0x15(%eax),%dl
  100b74:	83 ca 10             	or     $0x10,%edx
  100b77:	88 50 15             	mov    %dl,0x15(%eax)
  100b7a:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b80:	8a 50 15             	mov    0x15(%eax),%dl
  100b83:	83 e2 9f             	and    $0xffffff9f,%edx
  100b86:	88 50 15             	mov    %dl,0x15(%eax)
  100b89:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b8f:	8a 50 15             	mov    0x15(%eax),%dl
  100b92:	83 ca 80             	or     $0xffffff80,%edx
  100b95:	88 50 15             	mov    %dl,0x15(%eax)
  100b98:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b9e:	8a 50 16             	mov    0x16(%eax),%dl
  100ba1:	83 ca 0f             	or     $0xf,%edx
  100ba4:	88 50 16             	mov    %dl,0x16(%eax)
  100ba7:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100bad:	8a 50 16             	mov    0x16(%eax),%dl
  100bb0:	83 e2 ef             	and    $0xffffffef,%edx
  100bb3:	88 50 16             	mov    %dl,0x16(%eax)
  100bb6:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100bbc:	8a 50 16             	mov    0x16(%eax),%dl
  100bbf:	83 e2 df             	and    $0xffffffdf,%edx
  100bc2:	88 50 16             	mov    %dl,0x16(%eax)
  100bc5:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100bcb:	8a 50 16             	mov    0x16(%eax),%dl
  100bce:	83 ca 40             	or     $0x40,%edx
  100bd1:	88 50 16             	mov    %dl,0x16(%eax)
  100bd4:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100bda:	8a 50 16             	mov    0x16(%eax),%dl
  100bdd:	83 ca 80             	or     $0xffffff80,%edx
  100be0:	88 50 16             	mov    %dl,0x16(%eax)
  100be3:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100be9:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  100bed:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  100bf4:	e9 e1 01 00 00       	jmp    100dda <initSeg+0x373>
  100bf9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100bfc:	01 c0                	add    %eax,%eax
  100bfe:	40                   	inc    %eax
  100bff:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100c02:	42                   	inc    %edx
  100c03:	c1 e2 14             	shl    $0x14,%edx
  100c06:	c1 ea 10             	shr    $0x10,%edx
  100c09:	88 d1                	mov    %dl,%cl
  100c0b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100c0e:	42                   	inc    %edx
  100c0f:	c1 e2 14             	shl    $0x14,%edx
  100c12:	c1 ea 18             	shr    $0x18,%edx
  100c15:	88 55 e7             	mov    %dl,-0x19(%ebp)
  100c18:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c1e:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  100c24:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c2a:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  100c31:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c37:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  100c3b:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c41:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100c45:	83 e1 f0             	and    $0xfffffff0,%ecx
  100c48:	89 ce                	mov    %ecx,%esi
  100c4a:	83 ce 0a             	or     $0xa,%esi
  100c4d:	89 f1                	mov    %esi,%ecx
  100c4f:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100c53:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c59:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100c5d:	83 c9 10             	or     $0x10,%ecx
  100c60:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100c64:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c6a:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100c6e:	83 c9 60             	or     $0x60,%ecx
  100c71:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100c75:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c7b:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100c7f:	83 c9 80             	or     $0xffffff80,%ecx
  100c82:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100c86:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c8c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100c90:	83 e1 f0             	and    $0xfffffff0,%ecx
  100c93:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100c97:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100c9d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100ca1:	83 e1 ef             	and    $0xffffffef,%ecx
  100ca4:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100ca8:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100cae:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100cb2:	83 e1 df             	and    $0xffffffdf,%ecx
  100cb5:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100cb9:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100cbf:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100cc3:	83 c9 40             	or     $0x40,%ecx
  100cc6:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100cca:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100cd0:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100cd4:	83 c9 80             	or     $0xffffff80,%ecx
  100cd7:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100cdb:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100ce1:	8a 4d e7             	mov    -0x19(%ebp),%cl
  100ce4:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  100ce8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ceb:	40                   	inc    %eax
  100cec:	01 c0                	add    %eax,%eax
  100cee:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100cf1:	42                   	inc    %edx
  100cf2:	c1 e2 14             	shl    $0x14,%edx
  100cf5:	c1 ea 10             	shr    $0x10,%edx
  100cf8:	88 d1                	mov    %dl,%cl
  100cfa:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100cfd:	42                   	inc    %edx
  100cfe:	c1 e2 14             	shl    $0x14,%edx
  100d01:	c1 ea 18             	shr    $0x18,%edx
  100d04:	88 55 e7             	mov    %dl,-0x19(%ebp)
  100d07:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d0d:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  100d13:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d19:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  100d20:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d26:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  100d2a:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d30:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100d34:	83 e1 f0             	and    $0xfffffff0,%ecx
  100d37:	89 ce                	mov    %ecx,%esi
  100d39:	83 ce 02             	or     $0x2,%esi
  100d3c:	89 f1                	mov    %esi,%ecx
  100d3e:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100d42:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d48:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100d4c:	83 c9 10             	or     $0x10,%ecx
  100d4f:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100d53:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d59:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100d5d:	83 c9 60             	or     $0x60,%ecx
  100d60:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100d64:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d6a:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  100d6e:	83 c9 80             	or     $0xffffff80,%ecx
  100d71:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  100d75:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d7b:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100d7f:	83 e1 f0             	and    $0xfffffff0,%ecx
  100d82:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100d86:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d8c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100d90:	83 e1 ef             	and    $0xffffffef,%ecx
  100d93:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100d97:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100d9d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100da1:	83 e1 df             	and    $0xffffffdf,%ecx
  100da4:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100da8:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100dae:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100db2:	83 c9 40             	or     $0x40,%ecx
  100db5:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100db9:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100dbf:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  100dc3:	83 c9 80             	or     $0xffffff80,%ecx
  100dc6:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  100dca:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100dd0:	8a 4d e7             	mov    -0x19(%ebp),%cl
  100dd3:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  100dd7:	ff 45 f4             	incl   -0xc(%ebp)
  100dda:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  100dde:	0f 8e 15 fe ff ff    	jle    100bf9 <initSeg+0x192>
  100de4:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100dea:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  100df1:	63 00 
  100df3:	c7 c0 e0 52 10 00    	mov    $0x1052e0,%eax
  100df9:	c7 c2 40 52 10 00    	mov    $0x105240,%edx
  100dff:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  100e06:	c7 c0 e0 52 10 00    	mov    $0x1052e0,%eax
  100e0c:	c1 e8 10             	shr    $0x10,%eax
  100e0f:	88 c2                	mov    %al,%dl
  100e11:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e17:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  100e1d:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e23:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  100e29:	83 e2 f0             	and    $0xfffffff0,%edx
  100e2c:	83 ca 09             	or     $0x9,%edx
  100e2f:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  100e35:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e3b:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  100e41:	83 e2 ef             	and    $0xffffffef,%edx
  100e44:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  100e4a:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e50:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  100e56:	83 e2 9f             	and    $0xffffff9f,%edx
  100e59:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  100e5f:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e65:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  100e6b:	83 ca 80             	or     $0xffffff80,%edx
  100e6e:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  100e74:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e7a:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  100e80:	83 e2 f0             	and    $0xfffffff0,%edx
  100e83:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  100e89:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100e8f:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  100e95:	83 e2 ef             	and    $0xffffffef,%edx
  100e98:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  100e9e:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100ea4:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  100eaa:	83 e2 df             	and    $0xffffffdf,%edx
  100ead:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  100eb3:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100eb9:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  100ebf:	83 ca 40             	or     $0x40,%edx
  100ec2:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  100ec8:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100ece:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  100ed4:	83 e2 7f             	and    $0x7f,%edx
  100ed7:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  100edd:	c7 c0 e0 52 10 00    	mov    $0x1052e0,%eax
  100ee3:	c1 e8 18             	shr    $0x18,%eax
  100ee6:	88 c2                	mov    %al,%dl
  100ee8:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100eee:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  100ef4:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100efa:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  100f00:	83 e2 ef             	and    $0xffffffef,%edx
  100f03:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  100f09:	68 a0 00 00 00       	push   $0xa0
  100f0e:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100f14:	50                   	push   %eax
  100f15:	e8 f2 fa ff ff       	call   100a0c <setGdt>
  100f1a:	83 c4 08             	add    $0x8,%esp
  100f1d:	c7 c0 e0 52 10 00    	mov    $0x1052e0,%eax
  100f23:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  100f2a:	b8 98 00 00 00       	mov    $0x98,%eax
  100f2f:	0f 00 d8             	ltr    %ax
  100f32:	b8 10 00 00 00       	mov    $0x10,%eax
  100f37:	8e d8                	mov    %eax,%ds
  100f39:	b8 10 00 00 00       	mov    $0x10,%eax
  100f3e:	8e d0                	mov    %eax,%ss
  100f40:	6a 00                	push   $0x0
  100f42:	e8 00 fb ff ff       	call   100a47 <lLdt>
  100f47:	83 c4 04             	add    $0x4,%esp
  100f4a:	90                   	nop
  100f4b:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100f4e:	5b                   	pop    %ebx
  100f4f:	5e                   	pop    %esi
  100f50:	5d                   	pop    %ebp
  100f51:	c3                   	ret    

00100f52 <initFS>:
  100f52:	55                   	push   %ebp
  100f53:	89 e5                	mov    %esp,%ebp
  100f55:	53                   	push   %ebx
  100f56:	83 ec 04             	sub    $0x4,%esp
  100f59:	e8 61 f2 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  100f5e:	05 a2 40 00 00       	add    $0x40a2,%eax
  100f63:	83 ec 0c             	sub    $0xc,%esp
  100f66:	c7 c2 60 53 10 00    	mov    $0x105360,%edx
  100f6c:	52                   	push   %edx
  100f6d:	89 c3                	mov    %eax,%ebx
  100f6f:	e8 a4 f4 ff ff       	call   100418 <readSuperBlock>
  100f74:	83 c4 10             	add    $0x10,%esp
  100f77:	90                   	nop
  100f78:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f7b:	c9                   	leave  
  100f7c:	c3                   	ret    

00100f7d <loadElf>:
  100f7d:	55                   	push   %ebp
  100f7e:	89 e5                	mov    %esp,%ebp
  100f80:	53                   	push   %ebx
  100f81:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  100f87:	e8 b5 f0 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  100f8c:	81 c3 74 40 00 00    	add    $0x4074,%ebx
  100f92:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100f99:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  100fa0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100fa7:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
  100fae:	00 00 00 
  100fb1:	ff 75 08             	pushl  0x8(%ebp)
  100fb4:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  100fba:	50                   	push   %eax
  100fbb:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  100fc1:	50                   	push   %eax
  100fc2:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  100fc8:	50                   	push   %eax
  100fc9:	e8 86 f5 ff ff       	call   100554 <readInode>
  100fce:	83 c4 10             	add    $0x10,%esp
  100fd1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100fd4:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
  100fd8:	75 0a                	jne    100fe4 <loadElf+0x67>
  100fda:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100fdf:	e9 cd 00 00 00       	jmp    1010b1 <loadElf+0x134>
  100fe4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100feb:	eb 31                	jmp    10101e <loadElf+0xa1>
  100fed:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  100ff3:	8b 40 14             	mov    0x14(%eax),%eax
  100ff6:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  100ffa:	89 c2                	mov    %eax,%edx
  100ffc:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fff:	01 d0                	add    %edx,%eax
  101001:	50                   	push   %eax
  101002:	ff 75 f4             	pushl  -0xc(%ebp)
  101005:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  10100b:	50                   	push   %eax
  10100c:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  101012:	50                   	push   %eax
  101013:	e8 31 f4 ff ff       	call   100449 <readBlock>
  101018:	83 c4 10             	add    $0x10,%esp
  10101b:	ff 45 f4             	incl   -0xc(%ebp)
  10101e:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
  101024:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  101027:	7c c4                	jl     100fed <loadElf+0x70>
  101029:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10102c:	8b 40 18             	mov    0x18(%eax),%eax
  10102f:	89 45 10             	mov    %eax,0x10(%ebp)
  101032:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101035:	8b 40 1c             	mov    0x1c(%eax),%eax
  101038:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10103b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10103e:	c1 e0 05             	shl    $0x5,%eax
  101041:	89 c2                	mov    %eax,%edx
  101043:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101046:	01 d0                	add    %edx,%eax
  101048:	8b 40 04             	mov    0x4(%eax),%eax
  10104b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10104e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101055:	eb 11                	jmp    101068 <loadElf+0xeb>
  101057:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10105a:	8b 50 08             	mov    0x8(%eax),%edx
  10105d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101060:	01 d0                	add    %edx,%eax
  101062:	c6 00 00             	movb   $0x0,(%eax)
  101065:	ff 45 f0             	incl   -0x10(%ebp)
  101068:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10106b:	8b 50 10             	mov    0x10(%eax),%edx
  10106e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101071:	39 c2                	cmp    %eax,%edx
  101073:	77 e2                	ja     101057 <loadElf+0xda>
  101075:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10107c:	eb 23                	jmp    1010a1 <loadElf+0x124>
  10107e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101081:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101084:	01 c2                	add    %eax,%edx
  101086:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101089:	01 d0                	add    %edx,%eax
  10108b:	89 c1                	mov    %eax,%ecx
  10108d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101090:	8b 50 08             	mov    0x8(%eax),%edx
  101093:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101096:	01 d0                	add    %edx,%eax
  101098:	89 c2                	mov    %eax,%edx
  10109a:	8a 01                	mov    (%ecx),%al
  10109c:	88 02                	mov    %al,(%edx)
  10109e:	ff 45 f4             	incl   -0xc(%ebp)
  1010a1:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1010a4:	8b 50 14             	mov    0x14(%eax),%edx
  1010a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1010aa:	39 c2                	cmp    %eax,%edx
  1010ac:	77 d0                	ja     10107e <loadElf+0x101>
  1010ae:	8b 45 10             	mov    0x10(%ebp),%eax
  1010b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010b4:	c9                   	leave  
  1010b5:	c3                   	ret    

001010b6 <loadUMain>:
  1010b6:	55                   	push   %ebp
  1010b7:	89 e5                	mov    %esp,%ebp
  1010b9:	53                   	push   %ebx
  1010ba:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1010c0:	e8 7c ef ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1010c5:	81 c3 3b 3f 00 00    	add    $0x3f3b,%ebx
  1010cb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1010d2:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  1010d9:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  1010e0:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  1010e7:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  1010ee:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1010f5:	00 00 00 
  1010f8:	8d 83 c0 df ff ff    	lea    -0x2040(%ebx),%eax
  1010fe:	50                   	push   %eax
  1010ff:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  101105:	50                   	push   %eax
  101106:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  10110c:	50                   	push   %eax
  10110d:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  101113:	50                   	push   %eax
  101114:	e8 3b f4 ff ff       	call   100554 <readInode>
  101119:	83 c4 10             	add    $0x10,%esp
  10111c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101123:	eb 31                	jmp    101156 <loadUMain+0xa0>
  101125:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  10112b:	8b 40 14             	mov    0x14(%eax),%eax
  10112e:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  101132:	89 c2                	mov    %eax,%edx
  101134:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101137:	01 d0                	add    %edx,%eax
  101139:	50                   	push   %eax
  10113a:	ff 75 f4             	pushl  -0xc(%ebp)
  10113d:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  101143:	50                   	push   %eax
  101144:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  10114a:	50                   	push   %eax
  10114b:	e8 f9 f2 ff ff       	call   100449 <readBlock>
  101150:	83 c4 10             	add    $0x10,%esp
  101153:	ff 45 f4             	incl   -0xc(%ebp)
  101156:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  10115c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10115f:	7c c4                	jl     101125 <loadUMain+0x6f>
  101161:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101164:	8b 40 18             	mov    0x18(%eax),%eax
  101167:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10116a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10116d:	8b 40 1c             	mov    0x1c(%eax),%eax
  101170:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101173:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101176:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101179:	01 d0                	add    %edx,%eax
  10117b:	8b 40 04             	mov    0x4(%eax),%eax
  10117e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101181:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101188:	eb 1c                	jmp    1011a6 <loadUMain+0xf0>
  10118a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10118d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101190:	01 c2                	add    %eax,%edx
  101192:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101195:	01 d0                	add    %edx,%eax
  101197:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10119a:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10119d:	01 ca                	add    %ecx,%edx
  10119f:	8a 00                	mov    (%eax),%al
  1011a1:	88 02                	mov    %al,(%edx)
  1011a3:	ff 45 f4             	incl   -0xc(%ebp)
  1011a6:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  1011ad:	7e db                	jle    10118a <loadUMain+0xd4>
  1011af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1011b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1011b5:	c9                   	leave  
  1011b6:	c3                   	ret    

001011b7 <initProc>:
  1011b7:	55                   	push   %ebp
  1011b8:	89 e5                	mov    %esp,%ebp
  1011ba:	53                   	push   %ebx
  1011bb:	83 ec 14             	sub    $0x14,%esp
  1011be:	e8 7e ee ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1011c3:	81 c3 3d 3e 00 00    	add    $0x3e3d,%ebx
  1011c9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1011d0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1011d7:	eb 28                	jmp    101201 <initProc+0x4a>
  1011d9:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1011df:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011e2:	89 d0                	mov    %edx,%eax
  1011e4:	c1 e0 07             	shl    $0x7,%eax
  1011e7:	01 d0                	add    %edx,%eax
  1011e9:	c1 e0 05             	shl    $0x5,%eax
  1011ec:	01 d0                	add    %edx,%eax
  1011ee:	c1 e0 02             	shl    $0x2,%eax
  1011f1:	01 c8                	add    %ecx,%eax
  1011f3:	05 54 40 00 00       	add    $0x4054,%eax
  1011f8:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  1011fe:	ff 45 f4             	incl   -0xc(%ebp)
  101201:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  101205:	7e d2                	jle    1011d9 <initProc+0x22>
  101207:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10120d:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  101213:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101219:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  10121f:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101225:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  10122b:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101231:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  101237:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10123d:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  101244:	00 00 00 
  101247:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10124d:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  101254:	00 00 00 
  101257:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10125d:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  101264:	00 00 00 
  101267:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10126d:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  101274:	00 00 00 
  101277:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10127d:	8d 90 84 80 00 00    	lea    0x8084(%eax),%edx
  101283:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101289:	89 90 d0 80 00 00    	mov    %edx,0x80d0(%eax)
  10128f:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101295:	8d 90 d0 80 00 00    	lea    0x80d0(%eax),%edx
  10129b:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012a1:	89 90 d4 80 00 00    	mov    %edx,0x80d4(%eax)
  1012a7:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012ad:	c7 80 d8 80 00 00 00 	movl   $0x0,0x80d8(%eax)
  1012b4:	00 00 00 
  1012b7:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012bd:	c7 80 dc 80 00 00 00 	movl   $0x0,0x80dc(%eax)
  1012c4:	00 00 00 
  1012c7:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012cd:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  1012d4:	00 00 00 
  1012d7:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012dd:	c7 80 e4 80 00 00 01 	movl   $0x1,0x80e4(%eax)
  1012e4:	00 00 00 
  1012e7:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012ed:	c7 80 cc 80 00 00 23 	movl   $0x23,0x80cc(%eax)
  1012f4:	00 00 00 
  1012f7:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012fd:	c7 80 c8 80 00 00 00 	movl   $0x100000,0x80c8(%eax)
  101304:	00 10 00 
  101307:	9c                   	pushf  
  101308:	5a                   	pop    %edx
  101309:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10130f:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  101315:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10131b:	8b 80 c4 80 00 00    	mov    0x80c4(%eax),%eax
  101321:	80 cc 02             	or     $0x2,%ah
  101324:	89 c2                	mov    %eax,%edx
  101326:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10132c:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  101332:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101338:	c7 80 c0 80 00 00 1b 	movl   $0x1b,0x80c0(%eax)
  10133f:	00 00 00 
  101342:	e8 6f fd ff ff       	call   1010b6 <loadUMain>
  101347:	89 c2                	mov    %eax,%edx
  101349:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10134f:	89 90 bc 80 00 00    	mov    %edx,0x80bc(%eax)
  101355:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10135b:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  101362:	00 00 00 
  101365:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10136b:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  101372:	00 00 00 
  101375:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10137b:	c7 80 88 80 00 00 23 	movl   $0x23,0x8088(%eax)
  101382:	00 00 00 
  101385:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10138b:	c7 80 84 80 00 00 23 	movl   $0x23,0x8084(%eax)
  101392:	00 00 00 
  101395:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  10139b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1013a1:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1013a7:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  1013ad:	e8 49 f6 ff ff       	call   1009fb <enableInterrupt>
  1013b2:	cd 20                	int    $0x20
  1013b4:	e8 31 f6 ff ff       	call   1009ea <waitForInterrupt>
  1013b9:	eb f9                	jmp    1013b4 <initProc+0x1fd>

001013bb <inByte>:
  1013bb:	55                   	push   %ebp
  1013bc:	89 e5                	mov    %esp,%ebp
  1013be:	83 ec 14             	sub    $0x14,%esp
  1013c1:	e8 f9 ed ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1013c6:	05 3a 3c 00 00       	add    $0x3c3a,%eax
  1013cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1013ce:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1013d2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1013d5:	89 c2                	mov    %eax,%edx
  1013d7:	ec                   	in     (%dx),%al
  1013d8:	88 45 ff             	mov    %al,-0x1(%ebp)
  1013db:	8a 45 ff             	mov    -0x1(%ebp),%al
  1013de:	c9                   	leave  
  1013df:	c3                   	ret    

001013e0 <outByte>:
  1013e0:	55                   	push   %ebp
  1013e1:	89 e5                	mov    %esp,%ebp
  1013e3:	83 ec 08             	sub    $0x8,%esp
  1013e6:	e8 d4 ed ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1013eb:	05 15 3c 00 00       	add    $0x3c15,%eax
  1013f0:	8b 45 08             	mov    0x8(%ebp),%eax
  1013f3:	8b 55 0c             	mov    0xc(%ebp),%edx
  1013f6:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1013fa:	88 d0                	mov    %dl,%al
  1013fc:	88 45 f8             	mov    %al,-0x8(%ebp)
  1013ff:	8a 45 f8             	mov    -0x8(%ebp),%al
  101402:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101405:	ee                   	out    %al,(%dx)
  101406:	90                   	nop
  101407:	c9                   	leave  
  101408:	c3                   	ret    

00101409 <initKeyTable>:
  101409:	55                   	push   %ebp
  10140a:	89 e5                	mov    %esp,%ebp
  10140c:	83 ec 10             	sub    $0x10,%esp
  10140f:	e8 ab ed ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101414:	05 ec 3b 00 00       	add    $0x3bec,%eax
  101419:	c7 c2 40 a0 12 00    	mov    $0x12a040,%edx
  10141f:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101425:	c7 c2 20 9c 12 00    	mov    $0x129c20,%edx
  10142b:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101431:	c7 80 20 02 00 00 00 	movl   $0x0,0x220(%eax)
  101438:	00 00 00 
  10143b:	8d 90 60 01 00 00    	lea    0x160(%eax),%edx
  101441:	89 90 1c 02 00 00    	mov    %edx,0x21c(%eax)
  101447:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10144e:	eb 1f                	jmp    10146f <initKeyTable+0x66>
  101450:	8d 88 60 01 00 00    	lea    0x160(%eax),%ecx
  101456:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101459:	01 ca                	add    %ecx,%edx
  10145b:	c6 02 00             	movb   $0x0,(%edx)
  10145e:	8d 88 c0 01 00 00    	lea    0x1c0(%eax),%ecx
  101464:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101467:	01 ca                	add    %ecx,%edx
  101469:	c6 02 00             	movb   $0x0,(%edx)
  10146c:	ff 45 fc             	incl   -0x4(%ebp)
  10146f:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  101473:	7e db                	jle    101450 <initKeyTable+0x47>
  101475:	c6 80 62 01 00 00 31 	movb   $0x31,0x162(%eax)
  10147c:	c6 80 c2 01 00 00 21 	movb   $0x21,0x1c2(%eax)
  101483:	c6 80 63 01 00 00 32 	movb   $0x32,0x163(%eax)
  10148a:	c6 80 c3 01 00 00 40 	movb   $0x40,0x1c3(%eax)
  101491:	c6 80 64 01 00 00 33 	movb   $0x33,0x164(%eax)
  101498:	c6 80 c4 01 00 00 23 	movb   $0x23,0x1c4(%eax)
  10149f:	c6 80 65 01 00 00 34 	movb   $0x34,0x165(%eax)
  1014a6:	c6 80 c5 01 00 00 24 	movb   $0x24,0x1c5(%eax)
  1014ad:	c6 80 66 01 00 00 35 	movb   $0x35,0x166(%eax)
  1014b4:	c6 80 c6 01 00 00 25 	movb   $0x25,0x1c6(%eax)
  1014bb:	c6 80 67 01 00 00 36 	movb   $0x36,0x167(%eax)
  1014c2:	c6 80 c7 01 00 00 5e 	movb   $0x5e,0x1c7(%eax)
  1014c9:	c6 80 68 01 00 00 37 	movb   $0x37,0x168(%eax)
  1014d0:	c6 80 c8 01 00 00 26 	movb   $0x26,0x1c8(%eax)
  1014d7:	c6 80 69 01 00 00 38 	movb   $0x38,0x169(%eax)
  1014de:	c6 80 c9 01 00 00 2a 	movb   $0x2a,0x1c9(%eax)
  1014e5:	c6 80 6a 01 00 00 39 	movb   $0x39,0x16a(%eax)
  1014ec:	c6 80 ca 01 00 00 28 	movb   $0x28,0x1ca(%eax)
  1014f3:	c6 80 6b 01 00 00 30 	movb   $0x30,0x16b(%eax)
  1014fa:	c6 80 cb 01 00 00 29 	movb   $0x29,0x1cb(%eax)
  101501:	c6 80 7e 01 00 00 61 	movb   $0x61,0x17e(%eax)
  101508:	c6 80 de 01 00 00 41 	movb   $0x41,0x1de(%eax)
  10150f:	c6 80 90 01 00 00 62 	movb   $0x62,0x190(%eax)
  101516:	c6 80 f0 01 00 00 42 	movb   $0x42,0x1f0(%eax)
  10151d:	c6 80 8e 01 00 00 63 	movb   $0x63,0x18e(%eax)
  101524:	c6 80 ee 01 00 00 43 	movb   $0x43,0x1ee(%eax)
  10152b:	c6 80 80 01 00 00 64 	movb   $0x64,0x180(%eax)
  101532:	c6 80 e0 01 00 00 44 	movb   $0x44,0x1e0(%eax)
  101539:	c6 80 72 01 00 00 65 	movb   $0x65,0x172(%eax)
  101540:	c6 80 d2 01 00 00 45 	movb   $0x45,0x1d2(%eax)
  101547:	c6 80 81 01 00 00 66 	movb   $0x66,0x181(%eax)
  10154e:	c6 80 e1 01 00 00 46 	movb   $0x46,0x1e1(%eax)
  101555:	c6 80 82 01 00 00 67 	movb   $0x67,0x182(%eax)
  10155c:	c6 80 e2 01 00 00 47 	movb   $0x47,0x1e2(%eax)
  101563:	c6 80 83 01 00 00 68 	movb   $0x68,0x183(%eax)
  10156a:	c6 80 e3 01 00 00 48 	movb   $0x48,0x1e3(%eax)
  101571:	c6 80 77 01 00 00 69 	movb   $0x69,0x177(%eax)
  101578:	c6 80 d7 01 00 00 49 	movb   $0x49,0x1d7(%eax)
  10157f:	c6 80 84 01 00 00 6a 	movb   $0x6a,0x184(%eax)
  101586:	c6 80 e4 01 00 00 4a 	movb   $0x4a,0x1e4(%eax)
  10158d:	c6 80 85 01 00 00 6b 	movb   $0x6b,0x185(%eax)
  101594:	c6 80 e5 01 00 00 4b 	movb   $0x4b,0x1e5(%eax)
  10159b:	c6 80 86 01 00 00 6c 	movb   $0x6c,0x186(%eax)
  1015a2:	c6 80 e6 01 00 00 4c 	movb   $0x4c,0x1e6(%eax)
  1015a9:	c6 80 92 01 00 00 6d 	movb   $0x6d,0x192(%eax)
  1015b0:	c6 80 f2 01 00 00 4d 	movb   $0x4d,0x1f2(%eax)
  1015b7:	c6 80 91 01 00 00 6e 	movb   $0x6e,0x191(%eax)
  1015be:	c6 80 f1 01 00 00 4e 	movb   $0x4e,0x1f1(%eax)
  1015c5:	c6 80 78 01 00 00 6f 	movb   $0x6f,0x178(%eax)
  1015cc:	c6 80 d8 01 00 00 4f 	movb   $0x4f,0x1d8(%eax)
  1015d3:	c6 80 79 01 00 00 70 	movb   $0x70,0x179(%eax)
  1015da:	c6 80 d9 01 00 00 50 	movb   $0x50,0x1d9(%eax)
  1015e1:	c6 80 70 01 00 00 71 	movb   $0x71,0x170(%eax)
  1015e8:	c6 80 d0 01 00 00 51 	movb   $0x51,0x1d0(%eax)
  1015ef:	c6 80 73 01 00 00 72 	movb   $0x72,0x173(%eax)
  1015f6:	c6 80 d3 01 00 00 52 	movb   $0x52,0x1d3(%eax)
  1015fd:	c6 80 7f 01 00 00 73 	movb   $0x73,0x17f(%eax)
  101604:	c6 80 df 01 00 00 53 	movb   $0x53,0x1df(%eax)
  10160b:	c6 80 74 01 00 00 74 	movb   $0x74,0x174(%eax)
  101612:	c6 80 d4 01 00 00 54 	movb   $0x54,0x1d4(%eax)
  101619:	c6 80 76 01 00 00 75 	movb   $0x75,0x176(%eax)
  101620:	c6 80 d6 01 00 00 55 	movb   $0x55,0x1d6(%eax)
  101627:	c6 80 8f 01 00 00 76 	movb   $0x76,0x18f(%eax)
  10162e:	c6 80 ef 01 00 00 56 	movb   $0x56,0x1ef(%eax)
  101635:	c6 80 71 01 00 00 77 	movb   $0x77,0x171(%eax)
  10163c:	c6 80 d1 01 00 00 57 	movb   $0x57,0x1d1(%eax)
  101643:	c6 80 8d 01 00 00 78 	movb   $0x78,0x18d(%eax)
  10164a:	c6 80 ed 01 00 00 58 	movb   $0x58,0x1ed(%eax)
  101651:	c6 80 75 01 00 00 79 	movb   $0x79,0x175(%eax)
  101658:	c6 80 d5 01 00 00 59 	movb   $0x59,0x1d5(%eax)
  10165f:	c6 80 8c 01 00 00 7a 	movb   $0x7a,0x18c(%eax)
  101666:	c6 80 ec 01 00 00 5a 	movb   $0x5a,0x1ec(%eax)
  10166d:	c6 80 6c 01 00 00 2d 	movb   $0x2d,0x16c(%eax)
  101674:	c6 80 cc 01 00 00 5f 	movb   $0x5f,0x1cc(%eax)
  10167b:	c6 80 6d 01 00 00 3d 	movb   $0x3d,0x16d(%eax)
  101682:	c6 80 cd 01 00 00 2b 	movb   $0x2b,0x1cd(%eax)
  101689:	c6 80 7a 01 00 00 5b 	movb   $0x5b,0x17a(%eax)
  101690:	c6 80 da 01 00 00 7b 	movb   $0x7b,0x1da(%eax)
  101697:	c6 80 7b 01 00 00 5d 	movb   $0x5d,0x17b(%eax)
  10169e:	c6 80 db 01 00 00 7d 	movb   $0x7d,0x1db(%eax)
  1016a5:	c6 80 7c 01 00 00 0a 	movb   $0xa,0x17c(%eax)
  1016ac:	c6 80 dc 01 00 00 0a 	movb   $0xa,0x1dc(%eax)
  1016b3:	c6 80 87 01 00 00 3b 	movb   $0x3b,0x187(%eax)
  1016ba:	c6 80 e7 01 00 00 3a 	movb   $0x3a,0x1e7(%eax)
  1016c1:	c6 80 88 01 00 00 27 	movb   $0x27,0x188(%eax)
  1016c8:	c6 80 e8 01 00 00 22 	movb   $0x22,0x1e8(%eax)
  1016cf:	c6 80 89 01 00 00 60 	movb   $0x60,0x189(%eax)
  1016d6:	c6 80 e9 01 00 00 7e 	movb   $0x7e,0x1e9(%eax)
  1016dd:	c6 80 8b 01 00 00 5c 	movb   $0x5c,0x18b(%eax)
  1016e4:	c6 80 eb 01 00 00 7c 	movb   $0x7c,0x1eb(%eax)
  1016eb:	c6 80 93 01 00 00 2c 	movb   $0x2c,0x193(%eax)
  1016f2:	c6 80 f3 01 00 00 3c 	movb   $0x3c,0x1f3(%eax)
  1016f9:	c6 80 94 01 00 00 2e 	movb   $0x2e,0x194(%eax)
  101700:	c6 80 f4 01 00 00 3e 	movb   $0x3e,0x1f4(%eax)
  101707:	c6 80 95 01 00 00 2f 	movb   $0x2f,0x195(%eax)
  10170e:	c6 80 f5 01 00 00 3f 	movb   $0x3f,0x1f5(%eax)
  101715:	c6 80 99 01 00 00 20 	movb   $0x20,0x199(%eax)
  10171c:	c6 80 f9 01 00 00 20 	movb   $0x20,0x1f9(%eax)
  101723:	90                   	nop
  101724:	c9                   	leave  
  101725:	c3                   	ret    

00101726 <getKeyCode>:
  101726:	55                   	push   %ebp
  101727:	89 e5                	mov    %esp,%ebp
  101729:	83 ec 10             	sub    $0x10,%esp
  10172c:	e8 8e ea ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101731:	05 cf 38 00 00       	add    $0x38cf,%eax
  101736:	6a 60                	push   $0x60
  101738:	e8 7e fc ff ff       	call   1013bb <inByte>
  10173d:	83 c4 04             	add    $0x4,%esp
  101740:	0f b6 c0             	movzbl %al,%eax
  101743:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101746:	6a 61                	push   $0x61
  101748:	e8 6e fc ff ff       	call   1013bb <inByte>
  10174d:	83 c4 04             	add    $0x4,%esp
  101750:	0f b6 c0             	movzbl %al,%eax
  101753:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101756:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101759:	83 c8 80             	or     $0xffffff80,%eax
  10175c:	0f be c0             	movsbl %al,%eax
  10175f:	50                   	push   %eax
  101760:	6a 61                	push   $0x61
  101762:	e8 79 fc ff ff       	call   1013e0 <outByte>
  101767:	83 c4 08             	add    $0x8,%esp
  10176a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10176d:	0f be c0             	movsbl %al,%eax
  101770:	50                   	push   %eax
  101771:	6a 61                	push   $0x61
  101773:	e8 68 fc ff ff       	call   1013e0 <outByte>
  101778:	83 c4 08             	add    $0x8,%esp
  10177b:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  101782:	77 05                	ja     101789 <getKeyCode+0x63>
  101784:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101787:	eb 05                	jmp    10178e <getKeyCode+0x68>
  101789:	b8 00 00 00 00       	mov    $0x0,%eax
  10178e:	c9                   	leave  
  10178f:	c3                   	ret    

00101790 <switchKeyboard>:
  101790:	55                   	push   %ebp
  101791:	89 e5                	mov    %esp,%ebp
  101793:	e8 27 ea ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101798:	05 68 38 00 00       	add    $0x3868,%eax
  10179d:	8b 88 1c 02 00 00    	mov    0x21c(%eax),%ecx
  1017a3:	8d 90 60 01 00 00    	lea    0x160(%eax),%edx
  1017a9:	39 d1                	cmp    %edx,%ecx
  1017ab:	75 0e                	jne    1017bb <switchKeyboard+0x2b>
  1017ad:	8d 90 c0 01 00 00    	lea    0x1c0(%eax),%edx
  1017b3:	89 90 1c 02 00 00    	mov    %edx,0x21c(%eax)
  1017b9:	eb 0c                	jmp    1017c7 <switchKeyboard+0x37>
  1017bb:	8d 90 60 01 00 00    	lea    0x160(%eax),%edx
  1017c1:	89 90 1c 02 00 00    	mov    %edx,0x21c(%eax)
  1017c7:	90                   	nop
  1017c8:	5d                   	pop    %ebp
  1017c9:	c3                   	ret    

001017ca <getChar>:
  1017ca:	55                   	push   %ebp
  1017cb:	89 e5                	mov    %esp,%ebp
  1017cd:	53                   	push   %ebx
  1017ce:	e8 6e e8 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1017d3:	81 c3 2d 38 00 00    	add    $0x382d,%ebx
  1017d9:	8b 45 08             	mov    0x8(%ebp),%eax
  1017dc:	83 f8 3a             	cmp    $0x3a,%eax
  1017df:	74 32                	je     101813 <getChar+0x49>
  1017e1:	83 f8 3a             	cmp    $0x3a,%eax
  1017e4:	77 0f                	ja     1017f5 <getChar+0x2b>
  1017e6:	83 f8 2a             	cmp    $0x2a,%eax
  1017e9:	74 21                	je     10180c <getChar+0x42>
  1017eb:	83 f8 36             	cmp    $0x36,%eax
  1017ee:	74 1c                	je     10180c <getChar+0x42>
  1017f0:	e9 87 00 00 00       	jmp    10187c <getChar+0xb2>
  1017f5:	3d b6 00 00 00       	cmp    $0xb6,%eax
  1017fa:	74 10                	je     10180c <getChar+0x42>
  1017fc:	3d ba 00 00 00       	cmp    $0xba,%eax
  101801:	74 42                	je     101845 <getChar+0x7b>
  101803:	3d aa 00 00 00       	cmp    $0xaa,%eax
  101808:	74 02                	je     10180c <getChar+0x42>
  10180a:	eb 70                	jmp    10187c <getChar+0xb2>
  10180c:	e8 7f ff ff ff       	call   101790 <switchKeyboard>
  101811:	eb 69                	jmp    10187c <getChar+0xb2>
  101813:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  101819:	85 c0                	test   %eax,%eax
  10181b:	75 11                	jne    10182e <getChar+0x64>
  10181d:	c7 83 20 02 00 00 01 	movl   $0x1,0x220(%ebx)
  101824:	00 00 00 
  101827:	e8 64 ff ff ff       	call   101790 <switchKeyboard>
  10182c:	eb 4a                	jmp    101878 <getChar+0xae>
  10182e:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  101834:	83 f8 01             	cmp    $0x1,%eax
  101837:	75 3f                	jne    101878 <getChar+0xae>
  101839:	c7 83 20 02 00 00 02 	movl   $0x2,0x220(%ebx)
  101840:	00 00 00 
  101843:	eb 33                	jmp    101878 <getChar+0xae>
  101845:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  10184b:	83 f8 01             	cmp    $0x1,%eax
  10184e:	75 0c                	jne    10185c <getChar+0x92>
  101850:	c7 83 20 02 00 00 01 	movl   $0x1,0x220(%ebx)
  101857:	00 00 00 
  10185a:	eb 1f                	jmp    10187b <getChar+0xb1>
  10185c:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  101862:	83 f8 02             	cmp    $0x2,%eax
  101865:	75 14                	jne    10187b <getChar+0xb1>
  101867:	c7 83 20 02 00 00 00 	movl   $0x0,0x220(%ebx)
  10186e:	00 00 00 
  101871:	e8 1a ff ff ff       	call   101790 <switchKeyboard>
  101876:	eb 03                	jmp    10187b <getChar+0xb1>
  101878:	90                   	nop
  101879:	eb 01                	jmp    10187c <getChar+0xb2>
  10187b:	90                   	nop
  10187c:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  101880:	76 04                	jbe    101886 <getChar+0xbc>
  101882:	b0 00                	mov    $0x0,%al
  101884:	eb 0d                	jmp    101893 <getChar+0xc9>
  101886:	8b 93 1c 02 00 00    	mov    0x21c(%ebx),%edx
  10188c:	8b 45 08             	mov    0x8(%ebp),%eax
  10188f:	01 d0                	add    %edx,%eax
  101891:	8a 00                	mov    (%eax),%al
  101893:	5b                   	pop    %ebx
  101894:	5d                   	pop    %ebp
  101895:	c3                   	ret    

00101896 <outByte>:
  101896:	55                   	push   %ebp
  101897:	89 e5                	mov    %esp,%ebp
  101899:	83 ec 08             	sub    $0x8,%esp
  10189c:	e8 1e e9 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1018a1:	05 5f 37 00 00       	add    $0x375f,%eax
  1018a6:	8b 45 08             	mov    0x8(%ebp),%eax
  1018a9:	8b 55 0c             	mov    0xc(%ebp),%edx
  1018ac:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1018b0:	88 d0                	mov    %dl,%al
  1018b2:	88 45 f8             	mov    %al,-0x8(%ebp)
  1018b5:	8a 45 f8             	mov    -0x8(%ebp),%al
  1018b8:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1018bb:	ee                   	out    %al,(%dx)
  1018bc:	90                   	nop
  1018bd:	c9                   	leave  
  1018be:	c3                   	ret    

001018bf <initTimer>:
  1018bf:	55                   	push   %ebp
  1018c0:	89 e5                	mov    %esp,%ebp
  1018c2:	83 ec 10             	sub    $0x10,%esp
  1018c5:	e8 f5 e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1018ca:	05 36 37 00 00       	add    $0x3736,%eax
  1018cf:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  1018d6:	6a 34                	push   $0x34
  1018d8:	6a 43                	push   $0x43
  1018da:	e8 b7 ff ff ff       	call   101896 <outByte>
  1018df:	83 c4 08             	add    $0x8,%esp
  1018e2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1018e5:	25 ff 00 00 80       	and    $0x800000ff,%eax
  1018ea:	85 c0                	test   %eax,%eax
  1018ec:	79 07                	jns    1018f5 <initTimer+0x36>
  1018ee:	48                   	dec    %eax
  1018ef:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  1018f4:	40                   	inc    %eax
  1018f5:	0f be c0             	movsbl %al,%eax
  1018f8:	50                   	push   %eax
  1018f9:	6a 40                	push   $0x40
  1018fb:	e8 96 ff ff ff       	call   101896 <outByte>
  101900:	83 c4 08             	add    $0x8,%esp
  101903:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101906:	85 c0                	test   %eax,%eax
  101908:	79 05                	jns    10190f <initTimer+0x50>
  10190a:	05 ff 00 00 00       	add    $0xff,%eax
  10190f:	c1 f8 08             	sar    $0x8,%eax
  101912:	0f be c0             	movsbl %al,%eax
  101915:	50                   	push   %eax
  101916:	6a 40                	push   $0x40
  101918:	e8 79 ff ff ff       	call   101896 <outByte>
  10191d:	83 c4 08             	add    $0x8,%esp
  101920:	90                   	nop
  101921:	c9                   	leave  
  101922:	c3                   	ret    

00101923 <outByte>:
  101923:	55                   	push   %ebp
  101924:	89 e5                	mov    %esp,%ebp
  101926:	83 ec 08             	sub    $0x8,%esp
  101929:	e8 91 e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10192e:	05 d2 36 00 00       	add    $0x36d2,%eax
  101933:	8b 45 08             	mov    0x8(%ebp),%eax
  101936:	8b 55 0c             	mov    0xc(%ebp),%edx
  101939:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10193d:	88 d0                	mov    %dl,%al
  10193f:	88 45 f8             	mov    %al,-0x8(%ebp)
  101942:	8a 45 f8             	mov    -0x8(%ebp),%al
  101945:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101948:	ee                   	out    %al,(%dx)
  101949:	90                   	nop
  10194a:	c9                   	leave  
  10194b:	c3                   	ret    

0010194c <initVga>:
  10194c:	55                   	push   %ebp
  10194d:	89 e5                	mov    %esp,%ebp
  10194f:	83 ec 08             	sub    $0x8,%esp
  101952:	e8 68 e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101957:	05 a9 36 00 00       	add    $0x36a9,%eax
  10195c:	c7 80 24 02 00 00 00 	movl   $0x0,0x224(%eax)
  101963:	00 00 00 
  101966:	c7 80 28 02 00 00 00 	movl   $0x0,0x228(%eax)
  10196d:	00 00 00 
  101970:	c7 80 2c 02 00 00 00 	movl   $0x0,0x22c(%eax)
  101977:	00 00 00 
  10197a:	e8 12 00 00 00       	call   101991 <clearScreen>
  10197f:	83 ec 08             	sub    $0x8,%esp
  101982:	6a 00                	push   $0x0
  101984:	6a 00                	push   $0x0
  101986:	e8 5a 00 00 00       	call   1019e5 <updateCursor>
  10198b:	83 c4 10             	add    $0x10,%esp
  10198e:	90                   	nop
  10198f:	c9                   	leave  
  101990:	c3                   	ret    

00101991 <clearScreen>:
  101991:	55                   	push   %ebp
  101992:	89 e5                	mov    %esp,%ebp
  101994:	83 ec 10             	sub    $0x10,%esp
  101997:	e8 23 e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10199c:	05 64 36 00 00       	add    $0x3664,%eax
  1019a1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1019a8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1019af:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  1019b5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1019bc:	eb 1b                	jmp    1019d9 <clearScreen+0x48>
  1019be:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1019c1:	01 c0                	add    %eax,%eax
  1019c3:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1019c6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1019c9:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1019cf:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  1019d3:	66 89 02             	mov    %ax,(%edx)
  1019d6:	ff 45 fc             	incl   -0x4(%ebp)
  1019d9:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1019e0:	7e dc                	jle    1019be <clearScreen+0x2d>
  1019e2:	90                   	nop
  1019e3:	c9                   	leave  
  1019e4:	c3                   	ret    

001019e5 <updateCursor>:
  1019e5:	55                   	push   %ebp
  1019e6:	89 e5                	mov    %esp,%ebp
  1019e8:	83 ec 10             	sub    $0x10,%esp
  1019eb:	e8 cf e7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1019f0:	05 10 36 00 00       	add    $0x3610,%eax
  1019f5:	8b 55 08             	mov    0x8(%ebp),%edx
  1019f8:	89 d0                	mov    %edx,%eax
  1019fa:	c1 e0 02             	shl    $0x2,%eax
  1019fd:	01 d0                	add    %edx,%eax
  1019ff:	c1 e0 04             	shl    $0x4,%eax
  101a02:	89 c2                	mov    %eax,%edx
  101a04:	8b 45 0c             	mov    0xc(%ebp),%eax
  101a07:	01 d0                	add    %edx,%eax
  101a09:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101a0c:	6a 0f                	push   $0xf
  101a0e:	68 d4 03 00 00       	push   $0x3d4
  101a13:	e8 0b ff ff ff       	call   101923 <outByte>
  101a18:	83 c4 08             	add    $0x8,%esp
  101a1b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101a1e:	0f be c0             	movsbl %al,%eax
  101a21:	50                   	push   %eax
  101a22:	68 d5 03 00 00       	push   $0x3d5
  101a27:	e8 f7 fe ff ff       	call   101923 <outByte>
  101a2c:	83 c4 08             	add    $0x8,%esp
  101a2f:	6a 0e                	push   $0xe
  101a31:	68 d4 03 00 00       	push   $0x3d4
  101a36:	e8 e8 fe ff ff       	call   101923 <outByte>
  101a3b:	83 c4 08             	add    $0x8,%esp
  101a3e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101a41:	c1 f8 08             	sar    $0x8,%eax
  101a44:	0f be c0             	movsbl %al,%eax
  101a47:	50                   	push   %eax
  101a48:	68 d5 03 00 00       	push   $0x3d5
  101a4d:	e8 d1 fe ff ff       	call   101923 <outByte>
  101a52:	83 c4 08             	add    $0x8,%esp
  101a55:	90                   	nop
  101a56:	c9                   	leave  
  101a57:	c3                   	ret    

00101a58 <scrollScreen>:
  101a58:	55                   	push   %ebp
  101a59:	89 e5                	mov    %esp,%ebp
  101a5b:	53                   	push   %ebx
  101a5c:	83 ec 10             	sub    $0x10,%esp
  101a5f:	e8 d2 00 00 00       	call   101b36 <__x86.get_pc_thunk.dx>
  101a64:	81 c2 9c 35 00 00    	add    $0x359c,%edx
  101a6a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101a71:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101a78:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  101a7e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101a85:	eb 2b                	jmp    101ab2 <scrollScreen+0x5a>
  101a87:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101a8a:	01 c0                	add    %eax,%eax
  101a8c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101a8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101a92:	05 00 80 0b 00       	add    $0xb8000,%eax
  101a97:	66 8b 00             	mov    (%eax),%ax
  101a9a:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  101a9e:	c7 c1 60 a0 12 00    	mov    $0x12a060,%ecx
  101aa4:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  101aa7:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  101aab:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  101aaf:	ff 45 f8             	incl   -0x8(%ebp)
  101ab2:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  101ab9:	7e cc                	jle    101a87 <scrollScreen+0x2f>
  101abb:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101ac2:	eb 2f                	jmp    101af3 <scrollScreen+0x9b>
  101ac4:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101ac7:	01 c0                	add    %eax,%eax
  101ac9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101acc:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101acf:	8d 48 50             	lea    0x50(%eax),%ecx
  101ad2:	c7 c0 60 a0 12 00    	mov    $0x12a060,%eax
  101ad8:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  101adc:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  101ae0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101ae3:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  101ae9:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  101aed:	66 89 01             	mov    %ax,(%ecx)
  101af0:	ff 45 f8             	incl   -0x8(%ebp)
  101af3:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  101afa:	7e c8                	jle    101ac4 <scrollScreen+0x6c>
  101afc:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  101b02:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  101b09:	eb 1b                	jmp    101b26 <scrollScreen+0xce>
  101b0b:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101b0e:	01 c0                	add    %eax,%eax
  101b10:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101b13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101b16:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  101b1c:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  101b20:	66 89 02             	mov    %ax,(%edx)
  101b23:	ff 45 f8             	incl   -0x8(%ebp)
  101b26:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  101b2d:	7e dc                	jle    101b0b <scrollScreen+0xb3>
  101b2f:	90                   	nop
  101b30:	83 c4 10             	add    $0x10,%esp
  101b33:	5b                   	pop    %ebx
  101b34:	5d                   	pop    %ebp
  101b35:	c3                   	ret    

00101b36 <__x86.get_pc_thunk.dx>:
  101b36:	8b 14 24             	mov    (%esp),%edx
  101b39:	c3                   	ret    

00101b3a <outByte>:
  101b3a:	55                   	push   %ebp
  101b3b:	89 e5                	mov    %esp,%ebp
  101b3d:	83 ec 08             	sub    $0x8,%esp
  101b40:	e8 7a e6 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101b45:	05 bb 34 00 00       	add    $0x34bb,%eax
  101b4a:	8b 45 08             	mov    0x8(%ebp),%eax
  101b4d:	8b 55 0c             	mov    0xc(%ebp),%edx
  101b50:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101b54:	88 d0                	mov    %dl,%al
  101b56:	88 45 f8             	mov    %al,-0x8(%ebp)
  101b59:	8a 45 f8             	mov    -0x8(%ebp),%al
  101b5c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101b5f:	ee                   	out    %al,(%dx)
  101b60:	90                   	nop
  101b61:	c9                   	leave  
  101b62:	c3                   	ret    

00101b63 <initIntr>:
  101b63:	55                   	push   %ebp
  101b64:	89 e5                	mov    %esp,%ebp
  101b66:	e8 54 e6 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101b6b:	05 95 34 00 00       	add    $0x3495,%eax
  101b70:	6a 11                	push   $0x11
  101b72:	6a 20                	push   $0x20
  101b74:	e8 c1 ff ff ff       	call   101b3a <outByte>
  101b79:	83 c4 08             	add    $0x8,%esp
  101b7c:	6a 11                	push   $0x11
  101b7e:	68 a0 00 00 00       	push   $0xa0
  101b83:	e8 b2 ff ff ff       	call   101b3a <outByte>
  101b88:	83 c4 08             	add    $0x8,%esp
  101b8b:	6a 20                	push   $0x20
  101b8d:	6a 21                	push   $0x21
  101b8f:	e8 a6 ff ff ff       	call   101b3a <outByte>
  101b94:	83 c4 08             	add    $0x8,%esp
  101b97:	6a 28                	push   $0x28
  101b99:	68 a1 00 00 00       	push   $0xa1
  101b9e:	e8 97 ff ff ff       	call   101b3a <outByte>
  101ba3:	83 c4 08             	add    $0x8,%esp
  101ba6:	6a 04                	push   $0x4
  101ba8:	6a 21                	push   $0x21
  101baa:	e8 8b ff ff ff       	call   101b3a <outByte>
  101baf:	83 c4 08             	add    $0x8,%esp
  101bb2:	6a 02                	push   $0x2
  101bb4:	68 a1 00 00 00       	push   $0xa1
  101bb9:	e8 7c ff ff ff       	call   101b3a <outByte>
  101bbe:	83 c4 08             	add    $0x8,%esp
  101bc1:	6a 03                	push   $0x3
  101bc3:	6a 21                	push   $0x21
  101bc5:	e8 70 ff ff ff       	call   101b3a <outByte>
  101bca:	83 c4 08             	add    $0x8,%esp
  101bcd:	6a 03                	push   $0x3
  101bcf:	68 a1 00 00 00       	push   $0xa1
  101bd4:	e8 61 ff ff ff       	call   101b3a <outByte>
  101bd9:	83 c4 08             	add    $0x8,%esp
  101bdc:	90                   	nop
  101bdd:	c9                   	leave  
  101bde:	c3                   	ret    

00101bdf <inLong>:
  101bdf:	55                   	push   %ebp
  101be0:	89 e5                	mov    %esp,%ebp
  101be2:	83 ec 14             	sub    $0x14,%esp
  101be5:	e8 d5 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101bea:	05 16 34 00 00       	add    $0x3416,%eax
  101bef:	8b 45 08             	mov    0x8(%ebp),%eax
  101bf2:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  101bf6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101bf9:	89 c2                	mov    %eax,%edx
  101bfb:	ed                   	in     (%dx),%eax
  101bfc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101bff:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101c02:	c9                   	leave  
  101c03:	c3                   	ret    

00101c04 <outLong>:
  101c04:	55                   	push   %ebp
  101c05:	89 e5                	mov    %esp,%ebp
  101c07:	83 ec 04             	sub    $0x4,%esp
  101c0a:	e8 b0 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c0f:	05 f1 33 00 00       	add    $0x33f1,%eax
  101c14:	8b 45 08             	mov    0x8(%ebp),%eax
  101c17:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101c1b:	8b 45 0c             	mov    0xc(%ebp),%eax
  101c1e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101c21:	ef                   	out    %eax,(%dx)
  101c22:	90                   	nop
  101c23:	c9                   	leave  
  101c24:	c3                   	ret    

00101c25 <inByte>:
  101c25:	55                   	push   %ebp
  101c26:	89 e5                	mov    %esp,%ebp
  101c28:	83 ec 14             	sub    $0x14,%esp
  101c2b:	e8 8f e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c30:	05 d0 33 00 00       	add    $0x33d0,%eax
  101c35:	8b 45 08             	mov    0x8(%ebp),%eax
  101c38:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  101c3c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101c3f:	89 c2                	mov    %eax,%edx
  101c41:	ec                   	in     (%dx),%al
  101c42:	88 45 ff             	mov    %al,-0x1(%ebp)
  101c45:	8a 45 ff             	mov    -0x1(%ebp),%al
  101c48:	c9                   	leave  
  101c49:	c3                   	ret    

00101c4a <outByte>:
  101c4a:	55                   	push   %ebp
  101c4b:	89 e5                	mov    %esp,%ebp
  101c4d:	83 ec 08             	sub    $0x8,%esp
  101c50:	e8 6a e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c55:	05 ab 33 00 00       	add    $0x33ab,%eax
  101c5a:	8b 45 08             	mov    0x8(%ebp),%eax
  101c5d:	8b 55 0c             	mov    0xc(%ebp),%edx
  101c60:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101c64:	88 d0                	mov    %dl,%al
  101c66:	88 45 f8             	mov    %al,-0x8(%ebp)
  101c69:	8a 45 f8             	mov    -0x8(%ebp),%al
  101c6c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101c6f:	ee                   	out    %al,(%dx)
  101c70:	90                   	nop
  101c71:	c9                   	leave  
  101c72:	c3                   	ret    

00101c73 <waitDisk>:
  101c73:	55                   	push   %ebp
  101c74:	89 e5                	mov    %esp,%ebp
  101c76:	e8 44 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c7b:	05 85 33 00 00       	add    $0x3385,%eax
  101c80:	90                   	nop
  101c81:	68 f7 01 00 00       	push   $0x1f7
  101c86:	e8 9a ff ff ff       	call   101c25 <inByte>
  101c8b:	83 c4 04             	add    $0x4,%esp
  101c8e:	0f b6 c0             	movzbl %al,%eax
  101c91:	25 c0 00 00 00       	and    $0xc0,%eax
  101c96:	83 f8 40             	cmp    $0x40,%eax
  101c99:	75 e6                	jne    101c81 <waitDisk+0xe>
  101c9b:	90                   	nop
  101c9c:	c9                   	leave  
  101c9d:	c3                   	ret    

00101c9e <readSect>:
  101c9e:	55                   	push   %ebp
  101c9f:	89 e5                	mov    %esp,%ebp
  101ca1:	53                   	push   %ebx
  101ca2:	83 ec 10             	sub    $0x10,%esp
  101ca5:	e8 15 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101caa:	05 56 33 00 00       	add    $0x3356,%eax
  101caf:	e8 bf ff ff ff       	call   101c73 <waitDisk>
  101cb4:	6a 01                	push   $0x1
  101cb6:	68 f2 01 00 00       	push   $0x1f2
  101cbb:	e8 8a ff ff ff       	call   101c4a <outByte>
  101cc0:	83 c4 08             	add    $0x8,%esp
  101cc3:	8b 45 0c             	mov    0xc(%ebp),%eax
  101cc6:	0f be c0             	movsbl %al,%eax
  101cc9:	50                   	push   %eax
  101cca:	68 f3 01 00 00       	push   $0x1f3
  101ccf:	e8 76 ff ff ff       	call   101c4a <outByte>
  101cd4:	83 c4 08             	add    $0x8,%esp
  101cd7:	8b 45 0c             	mov    0xc(%ebp),%eax
  101cda:	c1 f8 08             	sar    $0x8,%eax
  101cdd:	0f be c0             	movsbl %al,%eax
  101ce0:	50                   	push   %eax
  101ce1:	68 f4 01 00 00       	push   $0x1f4
  101ce6:	e8 5f ff ff ff       	call   101c4a <outByte>
  101ceb:	83 c4 08             	add    $0x8,%esp
  101cee:	8b 45 0c             	mov    0xc(%ebp),%eax
  101cf1:	c1 f8 10             	sar    $0x10,%eax
  101cf4:	0f be c0             	movsbl %al,%eax
  101cf7:	50                   	push   %eax
  101cf8:	68 f5 01 00 00       	push   $0x1f5
  101cfd:	e8 48 ff ff ff       	call   101c4a <outByte>
  101d02:	83 c4 08             	add    $0x8,%esp
  101d05:	8b 45 0c             	mov    0xc(%ebp),%eax
  101d08:	c1 f8 18             	sar    $0x18,%eax
  101d0b:	83 c8 e0             	or     $0xffffffe0,%eax
  101d0e:	0f be c0             	movsbl %al,%eax
  101d11:	50                   	push   %eax
  101d12:	68 f6 01 00 00       	push   $0x1f6
  101d17:	e8 2e ff ff ff       	call   101c4a <outByte>
  101d1c:	83 c4 08             	add    $0x8,%esp
  101d1f:	6a 20                	push   $0x20
  101d21:	68 f7 01 00 00       	push   $0x1f7
  101d26:	e8 1f ff ff ff       	call   101c4a <outByte>
  101d2b:	83 c4 08             	add    $0x8,%esp
  101d2e:	e8 40 ff ff ff       	call   101c73 <waitDisk>
  101d33:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101d3a:	eb 22                	jmp    101d5e <readSect+0xc0>
  101d3c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101d3f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101d46:	8b 45 08             	mov    0x8(%ebp),%eax
  101d49:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  101d4c:	68 f0 01 00 00       	push   $0x1f0
  101d51:	e8 89 fe ff ff       	call   101bdf <inLong>
  101d56:	83 c4 04             	add    $0x4,%esp
  101d59:	89 03                	mov    %eax,(%ebx)
  101d5b:	ff 45 f8             	incl   -0x8(%ebp)
  101d5e:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  101d62:	7e d8                	jle    101d3c <readSect+0x9e>
  101d64:	90                   	nop
  101d65:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101d68:	c9                   	leave  
  101d69:	c3                   	ret    

00101d6a <writeSect>:
  101d6a:	55                   	push   %ebp
  101d6b:	89 e5                	mov    %esp,%ebp
  101d6d:	83 ec 10             	sub    $0x10,%esp
  101d70:	e8 4a e4 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101d75:	05 8b 32 00 00       	add    $0x328b,%eax
  101d7a:	e8 f4 fe ff ff       	call   101c73 <waitDisk>
  101d7f:	6a 01                	push   $0x1
  101d81:	68 f2 01 00 00       	push   $0x1f2
  101d86:	e8 bf fe ff ff       	call   101c4a <outByte>
  101d8b:	83 c4 08             	add    $0x8,%esp
  101d8e:	8b 45 0c             	mov    0xc(%ebp),%eax
  101d91:	0f be c0             	movsbl %al,%eax
  101d94:	50                   	push   %eax
  101d95:	68 f3 01 00 00       	push   $0x1f3
  101d9a:	e8 ab fe ff ff       	call   101c4a <outByte>
  101d9f:	83 c4 08             	add    $0x8,%esp
  101da2:	8b 45 0c             	mov    0xc(%ebp),%eax
  101da5:	c1 f8 08             	sar    $0x8,%eax
  101da8:	0f be c0             	movsbl %al,%eax
  101dab:	50                   	push   %eax
  101dac:	68 f4 01 00 00       	push   $0x1f4
  101db1:	e8 94 fe ff ff       	call   101c4a <outByte>
  101db6:	83 c4 08             	add    $0x8,%esp
  101db9:	8b 45 0c             	mov    0xc(%ebp),%eax
  101dbc:	c1 f8 10             	sar    $0x10,%eax
  101dbf:	0f be c0             	movsbl %al,%eax
  101dc2:	50                   	push   %eax
  101dc3:	68 f5 01 00 00       	push   $0x1f5
  101dc8:	e8 7d fe ff ff       	call   101c4a <outByte>
  101dcd:	83 c4 08             	add    $0x8,%esp
  101dd0:	8b 45 0c             	mov    0xc(%ebp),%eax
  101dd3:	c1 f8 18             	sar    $0x18,%eax
  101dd6:	83 c8 e0             	or     $0xffffffe0,%eax
  101dd9:	0f be c0             	movsbl %al,%eax
  101ddc:	50                   	push   %eax
  101ddd:	68 f6 01 00 00       	push   $0x1f6
  101de2:	e8 63 fe ff ff       	call   101c4a <outByte>
  101de7:	83 c4 08             	add    $0x8,%esp
  101dea:	6a 30                	push   $0x30
  101dec:	68 f7 01 00 00       	push   $0x1f7
  101df1:	e8 54 fe ff ff       	call   101c4a <outByte>
  101df6:	83 c4 08             	add    $0x8,%esp
  101df9:	e8 75 fe ff ff       	call   101c73 <waitDisk>
  101dfe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101e05:	eb 22                	jmp    101e29 <writeSect+0xbf>
  101e07:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101e0a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101e11:	8b 45 08             	mov    0x8(%ebp),%eax
  101e14:	01 d0                	add    %edx,%eax
  101e16:	8b 00                	mov    (%eax),%eax
  101e18:	50                   	push   %eax
  101e19:	68 f0 01 00 00       	push   $0x1f0
  101e1e:	e8 e1 fd ff ff       	call   101c04 <outLong>
  101e23:	83 c4 08             	add    $0x8,%esp
  101e26:	ff 45 fc             	incl   -0x4(%ebp)
  101e29:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  101e2d:	7e d8                	jle    101e07 <writeSect+0x9d>
  101e2f:	90                   	nop
  101e30:	c9                   	leave  
  101e31:	c3                   	ret    

00101e32 <diskRead>:
  101e32:	55                   	push   %ebp
  101e33:	89 e5                	mov    %esp,%ebp
  101e35:	81 ec 10 02 00 00    	sub    $0x210,%esp
  101e3b:	e8 7f e3 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101e40:	05 c0 31 00 00       	add    $0x31c0,%eax
  101e45:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101e4c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101e53:	8b 45 14             	mov    0x14(%ebp),%eax
  101e56:	85 c0                	test   %eax,%eax
  101e58:	79 05                	jns    101e5f <diskRead+0x2d>
  101e5a:	05 ff 01 00 00       	add    $0x1ff,%eax
  101e5f:	c1 f8 09             	sar    $0x9,%eax
  101e62:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101e65:	8b 45 14             	mov    0x14(%ebp),%eax
  101e68:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101e6d:	85 c0                	test   %eax,%eax
  101e6f:	79 07                	jns    101e78 <diskRead+0x46>
  101e71:	48                   	dec    %eax
  101e72:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101e77:	40                   	inc    %eax
  101e78:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101e7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101e7e:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101e84:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101e87:	01 d0                	add    %edx,%eax
  101e89:	50                   	push   %eax
  101e8a:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101e90:	50                   	push   %eax
  101e91:	e8 08 fe ff ff       	call   101c9e <readSect>
  101e96:	83 c4 08             	add    $0x8,%esp
  101e99:	ff 45 f8             	incl   -0x8(%ebp)
  101e9c:	eb 5e                	jmp    101efc <diskRead+0xca>
  101e9e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101ea1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101ea4:	01 d0                	add    %edx,%eax
  101ea6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101eab:	85 c0                	test   %eax,%eax
  101ead:	79 07                	jns    101eb6 <diskRead+0x84>
  101eaf:	48                   	dec    %eax
  101eb0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101eb5:	40                   	inc    %eax
  101eb6:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  101eb9:	8b 55 08             	mov    0x8(%ebp),%edx
  101ebc:	01 ca                	add    %ecx,%edx
  101ebe:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  101ec5:	88 02                	mov    %al,(%edx)
  101ec7:	ff 45 fc             	incl   -0x4(%ebp)
  101eca:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101ecd:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101ed0:	01 d0                	add    %edx,%eax
  101ed2:	25 ff 01 00 00       	and    $0x1ff,%eax
  101ed7:	85 c0                	test   %eax,%eax
  101ed9:	75 21                	jne    101efc <diskRead+0xca>
  101edb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101ede:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101ee4:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101ee7:	01 d0                	add    %edx,%eax
  101ee9:	50                   	push   %eax
  101eea:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101ef0:	50                   	push   %eax
  101ef1:	e8 a8 fd ff ff       	call   101c9e <readSect>
  101ef6:	83 c4 08             	add    $0x8,%esp
  101ef9:	ff 45 f8             	incl   -0x8(%ebp)
  101efc:	8b 45 0c             	mov    0xc(%ebp),%eax
  101eff:	0f af 45 10          	imul   0x10(%ebp),%eax
  101f03:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101f06:	7c 96                	jl     101e9e <diskRead+0x6c>
  101f08:	90                   	nop
  101f09:	c9                   	leave  
  101f0a:	c3                   	ret    

00101f0b <diskWrite>:
  101f0b:	55                   	push   %ebp
  101f0c:	89 e5                	mov    %esp,%ebp
  101f0e:	81 ec 10 02 00 00    	sub    $0x210,%esp
  101f14:	e8 a6 e2 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101f19:	05 e7 30 00 00       	add    $0x30e7,%eax
  101f1e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101f25:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101f2c:	8b 45 14             	mov    0x14(%ebp),%eax
  101f2f:	85 c0                	test   %eax,%eax
  101f31:	79 05                	jns    101f38 <diskWrite+0x2d>
  101f33:	05 ff 01 00 00       	add    $0x1ff,%eax
  101f38:	c1 f8 09             	sar    $0x9,%eax
  101f3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101f3e:	8b 45 14             	mov    0x14(%ebp),%eax
  101f41:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101f46:	85 c0                	test   %eax,%eax
  101f48:	79 07                	jns    101f51 <diskWrite+0x46>
  101f4a:	48                   	dec    %eax
  101f4b:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101f50:	40                   	inc    %eax
  101f51:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101f54:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101f57:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101f5d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101f60:	01 d0                	add    %edx,%eax
  101f62:	50                   	push   %eax
  101f63:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101f69:	50                   	push   %eax
  101f6a:	e8 2f fd ff ff       	call   101c9e <readSect>
  101f6f:	83 c4 08             	add    $0x8,%esp
  101f72:	eb 7f                	jmp    101ff3 <diskWrite+0xe8>
  101f74:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101f77:	8b 45 08             	mov    0x8(%ebp),%eax
  101f7a:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  101f7d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101f80:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101f83:	01 d0                	add    %edx,%eax
  101f85:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101f8a:	85 c0                	test   %eax,%eax
  101f8c:	79 07                	jns    101f95 <diskWrite+0x8a>
  101f8e:	48                   	dec    %eax
  101f8f:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101f94:	40                   	inc    %eax
  101f95:	89 c2                	mov    %eax,%edx
  101f97:	8a 01                	mov    (%ecx),%al
  101f99:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  101fa0:	ff 45 fc             	incl   -0x4(%ebp)
  101fa3:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101fa6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101fa9:	01 d0                	add    %edx,%eax
  101fab:	25 ff 01 00 00       	and    $0x1ff,%eax
  101fb0:	85 c0                	test   %eax,%eax
  101fb2:	75 3f                	jne    101ff3 <diskWrite+0xe8>
  101fb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101fb7:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101fbd:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101fc0:	01 d0                	add    %edx,%eax
  101fc2:	50                   	push   %eax
  101fc3:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101fc9:	50                   	push   %eax
  101fca:	e8 9b fd ff ff       	call   101d6a <writeSect>
  101fcf:	83 c4 08             	add    $0x8,%esp
  101fd2:	ff 45 f8             	incl   -0x8(%ebp)
  101fd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101fd8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101fde:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101fe1:	01 d0                	add    %edx,%eax
  101fe3:	50                   	push   %eax
  101fe4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101fea:	50                   	push   %eax
  101feb:	e8 ae fc ff ff       	call   101c9e <readSect>
  101ff0:	83 c4 08             	add    $0x8,%esp
  101ff3:	8b 45 0c             	mov    0xc(%ebp),%eax
  101ff6:	0f af 45 10          	imul   0x10(%ebp),%eax
  101ffa:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101ffd:	0f 8c 71 ff ff ff    	jl     101f74 <diskWrite+0x69>
  102003:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102006:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10200c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10200f:	01 d0                	add    %edx,%eax
  102011:	50                   	push   %eax
  102012:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102018:	50                   	push   %eax
  102019:	e8 4c fd ff ff       	call   101d6a <writeSect>
  10201e:	83 c4 08             	add    $0x8,%esp
  102021:	90                   	nop
  102022:	c9                   	leave  
  102023:	c3                   	ret    

00102024 <saveIdt>:
  102024:	55                   	push   %ebp
  102025:	89 e5                	mov    %esp,%ebp
  102027:	e8 93 e1 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10202c:	05 d4 2f 00 00       	add    $0x2fd4,%eax
  102031:	8b 55 0c             	mov    0xc(%ebp),%edx
  102034:	4a                   	dec    %edx
  102035:	66 89 90 30 02 00 00 	mov    %dx,0x230(%eax)
  10203c:	8b 55 08             	mov    0x8(%ebp),%edx
  10203f:	66 89 90 32 02 00 00 	mov    %dx,0x232(%eax)
  102046:	8b 55 08             	mov    0x8(%ebp),%edx
  102049:	c1 ea 10             	shr    $0x10,%edx
  10204c:	66 89 90 34 02 00 00 	mov    %dx,0x234(%eax)
  102053:	8d 80 30 02 00 00    	lea    0x230(%eax),%eax
  102059:	0f 01 18             	lidtl  (%eax)
  10205c:	90                   	nop
  10205d:	5d                   	pop    %ebp
  10205e:	c3                   	ret    

0010205f <setIntr>:
  10205f:	55                   	push   %ebp
  102060:	89 e5                	mov    %esp,%ebp
  102062:	e8 58 e1 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102067:	05 99 2f 00 00       	add    $0x2f99,%eax
  10206c:	8b 45 10             	mov    0x10(%ebp),%eax
  10206f:	8b 55 08             	mov    0x8(%ebp),%edx
  102072:	66 89 02             	mov    %ax,(%edx)
  102075:	8b 45 0c             	mov    0xc(%ebp),%eax
  102078:	c1 e0 03             	shl    $0x3,%eax
  10207b:	8b 55 08             	mov    0x8(%ebp),%edx
  10207e:	66 89 42 02          	mov    %ax,0x2(%edx)
  102082:	8b 45 08             	mov    0x8(%ebp),%eax
  102085:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  102089:	8b 45 08             	mov    0x8(%ebp),%eax
  10208c:	8a 50 05             	mov    0x5(%eax),%dl
  10208f:	83 e2 f0             	and    $0xfffffff0,%edx
  102092:	83 ca 0e             	or     $0xe,%edx
  102095:	88 50 05             	mov    %dl,0x5(%eax)
  102098:	8b 45 08             	mov    0x8(%ebp),%eax
  10209b:	8a 50 05             	mov    0x5(%eax),%dl
  10209e:	83 e2 ef             	and    $0xffffffef,%edx
  1020a1:	88 50 05             	mov    %dl,0x5(%eax)
  1020a4:	8b 45 14             	mov    0x14(%ebp),%eax
  1020a7:	88 c2                	mov    %al,%dl
  1020a9:	83 e2 03             	and    $0x3,%edx
  1020ac:	8b 45 08             	mov    0x8(%ebp),%eax
  1020af:	83 e2 03             	and    $0x3,%edx
  1020b2:	88 d1                	mov    %dl,%cl
  1020b4:	c1 e1 05             	shl    $0x5,%ecx
  1020b7:	8a 50 05             	mov    0x5(%eax),%dl
  1020ba:	83 e2 9f             	and    $0xffffff9f,%edx
  1020bd:	09 ca                	or     %ecx,%edx
  1020bf:	88 50 05             	mov    %dl,0x5(%eax)
  1020c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1020c5:	8a 50 05             	mov    0x5(%eax),%dl
  1020c8:	83 ca 80             	or     $0xffffff80,%edx
  1020cb:	88 50 05             	mov    %dl,0x5(%eax)
  1020ce:	8b 45 10             	mov    0x10(%ebp),%eax
  1020d1:	c1 e8 10             	shr    $0x10,%eax
  1020d4:	8b 55 08             	mov    0x8(%ebp),%edx
  1020d7:	66 89 42 06          	mov    %ax,0x6(%edx)
  1020db:	90                   	nop
  1020dc:	5d                   	pop    %ebp
  1020dd:	c3                   	ret    

001020de <setTrap>:
  1020de:	55                   	push   %ebp
  1020df:	89 e5                	mov    %esp,%ebp
  1020e1:	e8 d9 e0 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1020e6:	05 1a 2f 00 00       	add    $0x2f1a,%eax
  1020eb:	8b 45 10             	mov    0x10(%ebp),%eax
  1020ee:	8b 55 08             	mov    0x8(%ebp),%edx
  1020f1:	66 89 02             	mov    %ax,(%edx)
  1020f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1020f7:	c1 e0 03             	shl    $0x3,%eax
  1020fa:	8b 55 08             	mov    0x8(%ebp),%edx
  1020fd:	66 89 42 02          	mov    %ax,0x2(%edx)
  102101:	8b 45 08             	mov    0x8(%ebp),%eax
  102104:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  102108:	8b 45 08             	mov    0x8(%ebp),%eax
  10210b:	8a 50 05             	mov    0x5(%eax),%dl
  10210e:	83 ca 0f             	or     $0xf,%edx
  102111:	88 50 05             	mov    %dl,0x5(%eax)
  102114:	8b 45 08             	mov    0x8(%ebp),%eax
  102117:	8a 50 05             	mov    0x5(%eax),%dl
  10211a:	83 e2 ef             	and    $0xffffffef,%edx
  10211d:	88 50 05             	mov    %dl,0x5(%eax)
  102120:	8b 45 14             	mov    0x14(%ebp),%eax
  102123:	88 c2                	mov    %al,%dl
  102125:	83 e2 03             	and    $0x3,%edx
  102128:	8b 45 08             	mov    0x8(%ebp),%eax
  10212b:	83 e2 03             	and    $0x3,%edx
  10212e:	88 d1                	mov    %dl,%cl
  102130:	c1 e1 05             	shl    $0x5,%ecx
  102133:	8a 50 05             	mov    0x5(%eax),%dl
  102136:	83 e2 9f             	and    $0xffffff9f,%edx
  102139:	09 ca                	or     %ecx,%edx
  10213b:	88 50 05             	mov    %dl,0x5(%eax)
  10213e:	8b 45 08             	mov    0x8(%ebp),%eax
  102141:	8a 50 05             	mov    0x5(%eax),%dl
  102144:	83 ca 80             	or     $0xffffff80,%edx
  102147:	88 50 05             	mov    %dl,0x5(%eax)
  10214a:	8b 45 10             	mov    0x10(%ebp),%eax
  10214d:	c1 e8 10             	shr    $0x10,%eax
  102150:	8b 55 08             	mov    0x8(%ebp),%edx
  102153:	66 89 42 06          	mov    %ax,0x6(%edx)
  102157:	90                   	nop
  102158:	5d                   	pop    %ebp
  102159:	c3                   	ret    

0010215a <initIdt>:
  10215a:	55                   	push   %ebp
  10215b:	89 e5                	mov    %esp,%ebp
  10215d:	53                   	push   %ebx
  10215e:	83 ec 10             	sub    $0x10,%esp
  102161:	e8 db de ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  102166:	81 c3 9a 2e 00 00    	add    $0x2e9a,%ebx
  10216c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  102173:	eb 2b                	jmp    1021a0 <initIdt+0x46>
  102175:	c7 c0 5c 2f 10 00    	mov    $0x102f5c,%eax
  10217b:	89 c2                	mov    %eax,%edx
  10217d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102180:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  102187:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  10218d:	01 c8                	add    %ecx,%eax
  10218f:	6a 00                	push   $0x0
  102191:	52                   	push   %edx
  102192:	6a 01                	push   $0x1
  102194:	50                   	push   %eax
  102195:	e8 44 ff ff ff       	call   1020de <setTrap>
  10219a:	83 c4 10             	add    $0x10,%esp
  10219d:	ff 45 f8             	incl   -0x8(%ebp)
  1021a0:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  1021a7:	7e cc                	jle    102175 <initIdt+0x1b>
  1021a9:	c7 c0 66 2f 10 00    	mov    $0x102f66,%eax
  1021af:	89 c2                	mov    %eax,%edx
  1021b1:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1021b7:	8d 40 40             	lea    0x40(%eax),%eax
  1021ba:	6a 00                	push   $0x0
  1021bc:	52                   	push   %edx
  1021bd:	6a 01                	push   $0x1
  1021bf:	50                   	push   %eax
  1021c0:	e8 19 ff ff ff       	call   1020de <setTrap>
  1021c5:	83 c4 10             	add    $0x10,%esp
  1021c8:	c7 c0 6a 2f 10 00    	mov    $0x102f6a,%eax
  1021ce:	89 c2                	mov    %eax,%edx
  1021d0:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1021d6:	8d 40 50             	lea    0x50(%eax),%eax
  1021d9:	6a 00                	push   $0x0
  1021db:	52                   	push   %edx
  1021dc:	6a 01                	push   $0x1
  1021de:	50                   	push   %eax
  1021df:	e8 fa fe ff ff       	call   1020de <setTrap>
  1021e4:	83 c4 10             	add    $0x10,%esp
  1021e7:	c7 c0 6e 2f 10 00    	mov    $0x102f6e,%eax
  1021ed:	89 c2                	mov    %eax,%edx
  1021ef:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1021f5:	8d 40 58             	lea    0x58(%eax),%eax
  1021f8:	6a 00                	push   $0x0
  1021fa:	52                   	push   %edx
  1021fb:	6a 01                	push   $0x1
  1021fd:	50                   	push   %eax
  1021fe:	e8 db fe ff ff       	call   1020de <setTrap>
  102203:	83 c4 10             	add    $0x10,%esp
  102206:	c7 c0 72 2f 10 00    	mov    $0x102f72,%eax
  10220c:	89 c2                	mov    %eax,%edx
  10220e:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102214:	8d 40 60             	lea    0x60(%eax),%eax
  102217:	6a 00                	push   $0x0
  102219:	52                   	push   %edx
  10221a:	6a 01                	push   $0x1
  10221c:	50                   	push   %eax
  10221d:	e8 bc fe ff ff       	call   1020de <setTrap>
  102222:	83 c4 10             	add    $0x10,%esp
  102225:	c7 c0 76 2f 10 00    	mov    $0x102f76,%eax
  10222b:	89 c2                	mov    %eax,%edx
  10222d:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102233:	8d 40 68             	lea    0x68(%eax),%eax
  102236:	6a 00                	push   $0x0
  102238:	52                   	push   %edx
  102239:	6a 01                	push   $0x1
  10223b:	50                   	push   %eax
  10223c:	e8 9d fe ff ff       	call   1020de <setTrap>
  102241:	83 c4 10             	add    $0x10,%esp
  102244:	c7 c0 7a 2f 10 00    	mov    $0x102f7a,%eax
  10224a:	89 c2                	mov    %eax,%edx
  10224c:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102252:	8d 40 70             	lea    0x70(%eax),%eax
  102255:	6a 00                	push   $0x0
  102257:	52                   	push   %edx
  102258:	6a 01                	push   $0x1
  10225a:	50                   	push   %eax
  10225b:	e8 7e fe ff ff       	call   1020de <setTrap>
  102260:	83 c4 10             	add    $0x10,%esp
  102263:	c7 c0 7e 2f 10 00    	mov    $0x102f7e,%eax
  102269:	89 c2                	mov    %eax,%edx
  10226b:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102271:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  102277:	6a 00                	push   $0x0
  102279:	52                   	push   %edx
  10227a:	6a 01                	push   $0x1
  10227c:	50                   	push   %eax
  10227d:	e8 5c fe ff ff       	call   1020de <setTrap>
  102282:	83 c4 10             	add    $0x10,%esp
  102285:	c7 c0 82 2f 10 00    	mov    $0x102f82,%eax
  10228b:	89 c2                	mov    %eax,%edx
  10228d:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102293:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  102299:	6a 00                	push   $0x0
  10229b:	52                   	push   %edx
  10229c:	6a 01                	push   $0x1
  10229e:	50                   	push   %eax
  10229f:	e8 3a fe ff ff       	call   1020de <setTrap>
  1022a4:	83 c4 10             	add    $0x10,%esp
  1022a7:	c7 c0 86 2f 10 00    	mov    $0x102f86,%eax
  1022ad:	89 c2                	mov    %eax,%edx
  1022af:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1022b5:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  1022bb:	6a 00                	push   $0x0
  1022bd:	52                   	push   %edx
  1022be:	6a 01                	push   $0x1
  1022c0:	50                   	push   %eax
  1022c1:	e8 99 fd ff ff       	call   10205f <setIntr>
  1022c6:	83 c4 10             	add    $0x10,%esp
  1022c9:	c7 c0 8c 2f 10 00    	mov    $0x102f8c,%eax
  1022cf:	89 c2                	mov    %eax,%edx
  1022d1:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1022d7:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  1022dd:	6a 00                	push   $0x0
  1022df:	52                   	push   %edx
  1022e0:	6a 01                	push   $0x1
  1022e2:	50                   	push   %eax
  1022e3:	e8 77 fd ff ff       	call   10205f <setIntr>
  1022e8:	83 c4 10             	add    $0x10,%esp
  1022eb:	c7 c0 92 2f 10 00    	mov    $0x102f92,%eax
  1022f1:	89 c2                	mov    %eax,%edx
  1022f3:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1022f9:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  1022ff:	6a 03                	push   $0x3
  102301:	52                   	push   %edx
  102302:	6a 01                	push   $0x1
  102304:	50                   	push   %eax
  102305:	e8 55 fd ff ff       	call   10205f <setIntr>
  10230a:	83 c4 10             	add    $0x10,%esp
  10230d:	68 00 08 00 00       	push   $0x800
  102312:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102318:	50                   	push   %eax
  102319:	e8 06 fd ff ff       	call   102024 <saveIdt>
  10231e:	83 c4 08             	add    $0x8,%esp
  102321:	90                   	nop
  102322:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102325:	c9                   	leave  
  102326:	c3                   	ret    

00102327 <irqHandle>:
  102327:	55                   	push   %ebp
  102328:	89 e5                	mov    %esp,%ebp
  10232a:	56                   	push   %esi
  10232b:	53                   	push   %ebx
  10232c:	83 ec 10             	sub    $0x10,%esp
  10232f:	e8 0d dd ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  102334:	81 c3 cc 2c 00 00    	add    $0x2ccc,%ebx
  10233a:	b8 10 00 00 00       	mov    $0x10,%eax
  10233f:	8e d8                	mov    %eax,%ds
  102341:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102347:	8b 10                	mov    (%eax),%edx
  102349:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10234f:	89 d0                	mov    %edx,%eax
  102351:	c1 e0 07             	shl    $0x7,%eax
  102354:	01 d0                	add    %edx,%eax
  102356:	c1 e0 05             	shl    $0x5,%eax
  102359:	01 d0                	add    %edx,%eax
  10235b:	c1 e0 02             	shl    $0x2,%eax
  10235e:	01 c8                	add    %ecx,%eax
  102360:	05 4c 40 00 00       	add    $0x404c,%eax
  102365:	8b 00                	mov    (%eax),%eax
  102367:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10236a:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102370:	8b 08                	mov    (%eax),%ecx
  102372:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102378:	8b 10                	mov    (%eax),%edx
  10237a:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102380:	89 c8                	mov    %ecx,%eax
  102382:	c1 e0 07             	shl    $0x7,%eax
  102385:	01 c8                	add    %ecx,%eax
  102387:	c1 e0 05             	shl    $0x5,%eax
  10238a:	01 c8                	add    %ecx,%eax
  10238c:	c1 e0 02             	shl    $0x2,%eax
  10238f:	01 f0                	add    %esi,%eax
  102391:	05 4c 40 00 00       	add    $0x404c,%eax
  102396:	8b 08                	mov    (%eax),%ecx
  102398:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  10239e:	89 d0                	mov    %edx,%eax
  1023a0:	c1 e0 07             	shl    $0x7,%eax
  1023a3:	01 d0                	add    %edx,%eax
  1023a5:	c1 e0 05             	shl    $0x5,%eax
  1023a8:	01 d0                	add    %edx,%eax
  1023aa:	c1 e0 02             	shl    $0x2,%eax
  1023ad:	01 f0                	add    %esi,%eax
  1023af:	05 50 40 00 00       	add    $0x4050,%eax
  1023b4:	89 08                	mov    %ecx,(%eax)
  1023b6:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1023bc:	8b 10                	mov    (%eax),%edx
  1023be:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1023c1:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1023c7:	89 d0                	mov    %edx,%eax
  1023c9:	c1 e0 07             	shl    $0x7,%eax
  1023cc:	01 d0                	add    %edx,%eax
  1023ce:	c1 e0 05             	shl    $0x5,%eax
  1023d1:	01 d0                	add    %edx,%eax
  1023d3:	c1 e0 02             	shl    $0x2,%eax
  1023d6:	01 f0                	add    %esi,%eax
  1023d8:	05 4c 40 00 00       	add    $0x404c,%eax
  1023dd:	89 08                	mov    %ecx,(%eax)
  1023df:	8b 45 08             	mov    0x8(%ebp),%eax
  1023e2:	8b 40 30             	mov    0x30(%eax),%eax
  1023e5:	83 f8 21             	cmp    $0x21,%eax
  1023e8:	74 3f                	je     102429 <irqHandle+0x102>
  1023ea:	83 f8 21             	cmp    $0x21,%eax
  1023ed:	77 0c                	ja     1023fb <irqHandle+0xd4>
  1023ef:	83 f8 0d             	cmp    $0xd,%eax
  1023f2:	74 15                	je     102409 <irqHandle+0xe2>
  1023f4:	83 f8 20             	cmp    $0x20,%eax
  1023f7:	74 20                	je     102419 <irqHandle+0xf2>
  1023f9:	eb 4e                	jmp    102449 <irqHandle+0x122>
  1023fb:	3d 80 00 00 00       	cmp    $0x80,%eax
  102400:	74 37                	je     102439 <irqHandle+0x112>
  102402:	83 f8 ff             	cmp    $0xffffffff,%eax
  102405:	74 58                	je     10245f <irqHandle+0x138>
  102407:	eb 40                	jmp    102449 <irqHandle+0x122>
  102409:	83 ec 0c             	sub    $0xc,%esp
  10240c:	ff 75 08             	pushl  0x8(%ebp)
  10240f:	e8 18 0b 00 00       	call   102f2c <GProtectFaultHandle>
  102414:	83 c4 10             	add    $0x10,%esp
  102417:	eb 47                	jmp    102460 <irqHandle+0x139>
  102419:	83 ec 0c             	sub    $0xc,%esp
  10241c:	ff 75 08             	pushl  0x8(%ebp)
  10241f:	e8 bc 01 00 00       	call   1025e0 <timerHandle>
  102424:	83 c4 10             	add    $0x10,%esp
  102427:	eb 37                	jmp    102460 <irqHandle+0x139>
  102429:	83 ec 0c             	sub    $0xc,%esp
  10242c:	ff 75 08             	pushl  0x8(%ebp)
  10242f:	e8 db 03 00 00       	call   10280f <keyboardHandle>
  102434:	83 c4 10             	add    $0x10,%esp
  102437:	eb 27                	jmp    102460 <irqHandle+0x139>
  102439:	83 ec 0c             	sub    $0xc,%esp
  10243c:	ff 75 08             	pushl  0x8(%ebp)
  10243f:	e8 4e 00 00 00       	call   102492 <syscallHandle>
  102444:	83 c4 10             	add    $0x10,%esp
  102447:	eb 17                	jmp    102460 <irqHandle+0x139>
  102449:	83 ec 08             	sub    $0x8,%esp
  10244c:	6a 3b                	push   $0x3b
  10244e:	8d 83 d0 df ff ff    	lea    -0x2030(%ebx),%eax
  102454:	50                   	push   %eax
  102455:	e8 38 dd ff ff       	call   100192 <abort>
  10245a:	83 c4 10             	add    $0x10,%esp
  10245d:	eb 01                	jmp    102460 <irqHandle+0x139>
  10245f:	90                   	nop
  102460:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102466:	8b 10                	mov    (%eax),%edx
  102468:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10246e:	89 d0                	mov    %edx,%eax
  102470:	c1 e0 07             	shl    $0x7,%eax
  102473:	01 d0                	add    %edx,%eax
  102475:	c1 e0 05             	shl    $0x5,%eax
  102478:	01 d0                	add    %edx,%eax
  10247a:	c1 e0 02             	shl    $0x2,%eax
  10247d:	01 c8                	add    %ecx,%eax
  10247f:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  102485:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102488:	89 02                	mov    %eax,(%edx)
  10248a:	90                   	nop
  10248b:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10248e:	5b                   	pop    %ebx
  10248f:	5e                   	pop    %esi
  102490:	5d                   	pop    %ebp
  102491:	c3                   	ret    

00102492 <syscallHandle>:
  102492:	55                   	push   %ebp
  102493:	89 e5                	mov    %esp,%ebp
  102495:	83 ec 08             	sub    $0x8,%esp
  102498:	e8 22 dd ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10249d:	05 63 2b 00 00       	add    $0x2b63,%eax
  1024a2:	8b 55 08             	mov    0x8(%ebp),%edx
  1024a5:	8b 52 2c             	mov    0x2c(%edx),%edx
  1024a8:	83 fa 04             	cmp    $0x4,%edx
  1024ab:	77 5e                	ja     10250b <.L18+0x10>
  1024ad:	c1 e2 02             	shl    $0x2,%edx
  1024b0:	8b 94 02 e4 df ff ff 	mov    -0x201c(%edx,%eax,1),%edx
  1024b7:	01 d0                	add    %edx,%eax
  1024b9:	ff e0                	jmp    *%eax

001024bb <.L13>:
  1024bb:	83 ec 0c             	sub    $0xc,%esp
  1024be:	ff 75 08             	pushl  0x8(%ebp)
  1024c1:	e8 c6 03 00 00       	call   10288c <syscallWrite>
  1024c6:	83 c4 10             	add    $0x10,%esp
  1024c9:	eb 41                	jmp    10250c <.L18+0x11>

001024cb <.L15>:
  1024cb:	83 ec 0c             	sub    $0xc,%esp
  1024ce:	ff 75 08             	pushl  0x8(%ebp)
  1024d1:	e8 77 05 00 00       	call   102a4d <syscallFork>
  1024d6:	83 c4 10             	add    $0x10,%esp
  1024d9:	eb 31                	jmp    10250c <.L18+0x11>

001024db <.L16>:
  1024db:	83 ec 0c             	sub    $0xc,%esp
  1024de:	ff 75 08             	pushl  0x8(%ebp)
  1024e1:	e8 ef 08 00 00       	call   102dd5 <syscallExec>
  1024e6:	83 c4 10             	add    $0x10,%esp
  1024e9:	eb 21                	jmp    10250c <.L18+0x11>

001024eb <.L17>:
  1024eb:	83 ec 0c             	sub    $0xc,%esp
  1024ee:	ff 75 08             	pushl  0x8(%ebp)
  1024f1:	e8 78 09 00 00       	call   102e6e <syscallSleep>
  1024f6:	83 c4 10             	add    $0x10,%esp
  1024f9:	eb 11                	jmp    10250c <.L18+0x11>

001024fb <.L18>:
  1024fb:	83 ec 0c             	sub    $0xc,%esp
  1024fe:	ff 75 08             	pushl  0x8(%ebp)
  102501:	e8 ea 09 00 00       	call   102ef0 <syscallExit>
  102506:	83 c4 10             	add    $0x10,%esp
  102509:	eb 01                	jmp    10250c <.L18+0x11>
  10250b:	90                   	nop
  10250c:	90                   	nop
  10250d:	c9                   	leave  
  10250e:	c3                   	ret    

0010250f <__switch__>:
  10250f:	55                   	push   %ebp
  102510:	89 e5                	mov    %esp,%ebp
  102512:	56                   	push   %esi
  102513:	53                   	push   %ebx
  102514:	83 ec 10             	sub    $0x10,%esp
  102517:	e8 a3 dc ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10251c:	05 e4 2a 00 00       	add    $0x2ae4,%eax
  102521:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102527:	8b 0a                	mov    (%edx),%ecx
  102529:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  10252f:	89 ca                	mov    %ecx,%edx
  102531:	c1 e2 07             	shl    $0x7,%edx
  102534:	01 ca                	add    %ecx,%edx
  102536:	c1 e2 05             	shl    $0x5,%edx
  102539:	01 ca                	add    %ecx,%edx
  10253b:	c1 e2 02             	shl    $0x2,%edx
  10253e:	01 da                	add    %ebx,%edx
  102540:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  102546:	8b 12                	mov    (%edx),%edx
  102548:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10254b:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102551:	8b 1a                	mov    (%edx),%ebx
  102553:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102559:	8b 0a                	mov    (%edx),%ecx
  10255b:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102561:	89 da                	mov    %ebx,%edx
  102563:	c1 e2 07             	shl    $0x7,%edx
  102566:	01 da                	add    %ebx,%edx
  102568:	c1 e2 05             	shl    $0x5,%edx
  10256b:	01 da                	add    %ebx,%edx
  10256d:	c1 e2 02             	shl    $0x2,%edx
  102570:	01 f2                	add    %esi,%edx
  102572:	81 c2 50 40 00 00    	add    $0x4050,%edx
  102578:	8b 1a                	mov    (%edx),%ebx
  10257a:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102580:	89 ca                	mov    %ecx,%edx
  102582:	c1 e2 07             	shl    $0x7,%edx
  102585:	01 ca                	add    %ecx,%edx
  102587:	c1 e2 05             	shl    $0x5,%edx
  10258a:	01 ca                	add    %ecx,%edx
  10258c:	c1 e2 02             	shl    $0x2,%edx
  10258f:	01 f2                	add    %esi,%edx
  102591:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  102597:	89 1a                	mov    %ebx,(%edx)
  102599:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  10259f:	8b 0a                	mov    (%edx),%ecx
  1025a1:	89 ca                	mov    %ecx,%edx
  1025a3:	c1 e2 07             	shl    $0x7,%edx
  1025a6:	01 ca                	add    %ecx,%edx
  1025a8:	c1 e2 05             	shl    $0x5,%edx
  1025ab:	01 ca                	add    %ecx,%edx
  1025ad:	c1 e2 02             	shl    $0x2,%edx
  1025b0:	8d 8a 40 40 00 00    	lea    0x4040(%edx),%ecx
  1025b6:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  1025bc:	01 ca                	add    %ecx,%edx
  1025be:	83 c2 0c             	add    $0xc,%edx
  1025c1:	c7 c0 e0 52 10 00    	mov    $0x1052e0,%eax
  1025c7:	89 50 04             	mov    %edx,0x4(%eax)
  1025ca:	8b 65 f4             	mov    -0xc(%ebp),%esp
  1025cd:	0f a9                	pop    %gs
  1025cf:	0f a1                	pop    %fs
  1025d1:	07                   	pop    %es
  1025d2:	1f                   	pop    %ds
  1025d3:	61                   	popa   
  1025d4:	83 c4 08             	add    $0x8,%esp
  1025d7:	cf                   	iret   
  1025d8:	90                   	nop
  1025d9:	83 c4 10             	add    $0x10,%esp
  1025dc:	5b                   	pop    %ebx
  1025dd:	5e                   	pop    %esi
  1025de:	5d                   	pop    %ebp
  1025df:	c3                   	ret    

001025e0 <timerHandle>:
  1025e0:	55                   	push   %ebp
  1025e1:	89 e5                	mov    %esp,%ebp
  1025e3:	56                   	push   %esi
  1025e4:	53                   	push   %ebx
  1025e5:	83 ec 10             	sub    $0x10,%esp
  1025e8:	e8 54 da ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1025ed:	81 c3 13 2a 00 00    	add    $0x2a13,%ebx
  1025f3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1025fa:	e9 be 00 00 00       	jmp    1026bd <timerHandle+0xdd>
  1025ff:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102605:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102608:	89 d0                	mov    %edx,%eax
  10260a:	c1 e0 07             	shl    $0x7,%eax
  10260d:	01 d0                	add    %edx,%eax
  10260f:	c1 e0 05             	shl    $0x5,%eax
  102612:	01 d0                	add    %edx,%eax
  102614:	c1 e0 02             	shl    $0x2,%eax
  102617:	01 c8                	add    %ecx,%eax
  102619:	05 54 40 00 00       	add    $0x4054,%eax
  10261e:	8b 00                	mov    (%eax),%eax
  102620:	83 f8 02             	cmp    $0x2,%eax
  102623:	0f 85 91 00 00 00    	jne    1026ba <timerHandle+0xda>
  102629:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10262f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102632:	89 d0                	mov    %edx,%eax
  102634:	c1 e0 07             	shl    $0x7,%eax
  102637:	01 d0                	add    %edx,%eax
  102639:	c1 e0 05             	shl    $0x5,%eax
  10263c:	01 d0                	add    %edx,%eax
  10263e:	c1 e0 02             	shl    $0x2,%eax
  102641:	01 c8                	add    %ecx,%eax
  102643:	05 5c 40 00 00       	add    $0x405c,%eax
  102648:	8b 00                	mov    (%eax),%eax
  10264a:	85 c0                	test   %eax,%eax
  10264c:	75 27                	jne    102675 <timerHandle+0x95>
  10264e:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102654:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102657:	89 d0                	mov    %edx,%eax
  102659:	c1 e0 07             	shl    $0x7,%eax
  10265c:	01 d0                	add    %edx,%eax
  10265e:	c1 e0 05             	shl    $0x5,%eax
  102661:	01 d0                	add    %edx,%eax
  102663:	c1 e0 02             	shl    $0x2,%eax
  102666:	01 c8                	add    %ecx,%eax
  102668:	05 54 40 00 00       	add    $0x4054,%eax
  10266d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102673:	eb 45                	jmp    1026ba <timerHandle+0xda>
  102675:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10267b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10267e:	89 d0                	mov    %edx,%eax
  102680:	c1 e0 07             	shl    $0x7,%eax
  102683:	01 d0                	add    %edx,%eax
  102685:	c1 e0 05             	shl    $0x5,%eax
  102688:	01 d0                	add    %edx,%eax
  10268a:	c1 e0 02             	shl    $0x2,%eax
  10268d:	01 c8                	add    %ecx,%eax
  10268f:	05 5c 40 00 00       	add    $0x405c,%eax
  102694:	8b 00                	mov    (%eax),%eax
  102696:	8d 48 ff             	lea    -0x1(%eax),%ecx
  102699:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  10269f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1026a2:	89 d0                	mov    %edx,%eax
  1026a4:	c1 e0 07             	shl    $0x7,%eax
  1026a7:	01 d0                	add    %edx,%eax
  1026a9:	c1 e0 05             	shl    $0x5,%eax
  1026ac:	01 d0                	add    %edx,%eax
  1026ae:	c1 e0 02             	shl    $0x2,%eax
  1026b1:	01 f0                	add    %esi,%eax
  1026b3:	05 5c 40 00 00       	add    $0x405c,%eax
  1026b8:	89 08                	mov    %ecx,(%eax)
  1026ba:	ff 45 f4             	incl   -0xc(%ebp)
  1026bd:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  1026c1:	0f 8e 38 ff ff ff    	jle    1025ff <timerHandle+0x1f>
  1026c7:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1026cd:	8b 10                	mov    (%eax),%edx
  1026cf:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1026d5:	89 d0                	mov    %edx,%eax
  1026d7:	c1 e0 07             	shl    $0x7,%eax
  1026da:	01 d0                	add    %edx,%eax
  1026dc:	c1 e0 05             	shl    $0x5,%eax
  1026df:	01 d0                	add    %edx,%eax
  1026e1:	c1 e0 02             	shl    $0x2,%eax
  1026e4:	01 c8                	add    %ecx,%eax
  1026e6:	05 58 40 00 00       	add    $0x4058,%eax
  1026eb:	8b 00                	mov    (%eax),%eax
  1026ed:	83 f8 0f             	cmp    $0xf,%eax
  1026f0:	0f 8e ca 00 00 00    	jle    1027c0 <timerHandle+0x1e0>
  1026f6:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1026fc:	8b 00                	mov    (%eax),%eax
  1026fe:	40                   	inc    %eax
  1026ff:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102702:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
  102706:	75 07                	jne    10270f <timerHandle+0x12f>
  102708:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  10270f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102712:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102715:	e9 95 00 00 00       	jmp    1027af <timerHandle+0x1cf>
  10271a:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102720:	8b 55 ec             	mov    -0x14(%ebp),%edx
  102723:	89 d0                	mov    %edx,%eax
  102725:	c1 e0 07             	shl    $0x7,%eax
  102728:	01 d0                	add    %edx,%eax
  10272a:	c1 e0 05             	shl    $0x5,%eax
  10272d:	01 d0                	add    %edx,%eax
  10272f:	c1 e0 02             	shl    $0x2,%eax
  102732:	01 c8                	add    %ecx,%eax
  102734:	05 54 40 00 00       	add    $0x4054,%eax
  102739:	8b 00                	mov    (%eax),%eax
  10273b:	85 c0                	test   %eax,%eax
  10273d:	75 61                	jne    1027a0 <timerHandle+0x1c0>
  10273f:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102745:	8b 10                	mov    (%eax),%edx
  102747:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10274d:	89 d0                	mov    %edx,%eax
  10274f:	c1 e0 07             	shl    $0x7,%eax
  102752:	01 d0                	add    %edx,%eax
  102754:	c1 e0 05             	shl    $0x5,%eax
  102757:	01 d0                	add    %edx,%eax
  102759:	c1 e0 02             	shl    $0x2,%eax
  10275c:	01 c8                	add    %ecx,%eax
  10275e:	05 54 40 00 00       	add    $0x4054,%eax
  102763:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102769:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10276f:	8b 55 ec             	mov    -0x14(%ebp),%edx
  102772:	89 d0                	mov    %edx,%eax
  102774:	c1 e0 07             	shl    $0x7,%eax
  102777:	01 d0                	add    %edx,%eax
  102779:	c1 e0 05             	shl    $0x5,%eax
  10277c:	01 d0                	add    %edx,%eax
  10277e:	c1 e0 02             	shl    $0x2,%eax
  102781:	01 c8                	add    %ecx,%eax
  102783:	05 54 40 00 00       	add    $0x4054,%eax
  102788:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  10278e:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102794:	8b 55 ec             	mov    -0x14(%ebp),%edx
  102797:	89 10                	mov    %edx,(%eax)
  102799:	e8 71 fd ff ff       	call   10250f <__switch__>
  10279e:	eb 20                	jmp    1027c0 <timerHandle+0x1e0>
  1027a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1027a3:	40                   	inc    %eax
  1027a4:	b9 09 00 00 00       	mov    $0x9,%ecx
  1027a9:	99                   	cltd   
  1027aa:	f7 f9                	idiv   %ecx
  1027ac:	89 55 ec             	mov    %edx,-0x14(%ebp)
  1027af:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1027b5:	8b 00                	mov    (%eax),%eax
  1027b7:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  1027ba:	0f 85 5a ff ff ff    	jne    10271a <timerHandle+0x13a>
  1027c0:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1027c6:	8b 10                	mov    (%eax),%edx
  1027c8:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1027ce:	89 d0                	mov    %edx,%eax
  1027d0:	c1 e0 07             	shl    $0x7,%eax
  1027d3:	01 d0                	add    %edx,%eax
  1027d5:	c1 e0 05             	shl    $0x5,%eax
  1027d8:	01 d0                	add    %edx,%eax
  1027da:	c1 e0 02             	shl    $0x2,%eax
  1027dd:	01 c8                	add    %ecx,%eax
  1027df:	05 58 40 00 00       	add    $0x4058,%eax
  1027e4:	8b 00                	mov    (%eax),%eax
  1027e6:	8d 48 01             	lea    0x1(%eax),%ecx
  1027e9:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  1027ef:	89 d0                	mov    %edx,%eax
  1027f1:	c1 e0 07             	shl    $0x7,%eax
  1027f4:	01 d0                	add    %edx,%eax
  1027f6:	c1 e0 05             	shl    $0x5,%eax
  1027f9:	01 d0                	add    %edx,%eax
  1027fb:	c1 e0 02             	shl    $0x2,%eax
  1027fe:	01 d8                	add    %ebx,%eax
  102800:	05 58 40 00 00       	add    $0x4058,%eax
  102805:	89 08                	mov    %ecx,(%eax)
  102807:	90                   	nop
  102808:	83 c4 10             	add    $0x10,%esp
  10280b:	5b                   	pop    %ebx
  10280c:	5e                   	pop    %esi
  10280d:	5d                   	pop    %ebp
  10280e:	c3                   	ret    

0010280f <keyboardHandle>:
  10280f:	55                   	push   %ebp
  102810:	89 e5                	mov    %esp,%ebp
  102812:	53                   	push   %ebx
  102813:	83 ec 14             	sub    $0x14,%esp
  102816:	e8 26 d8 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  10281b:	81 c3 e5 27 00 00    	add    $0x27e5,%ebx
  102821:	e8 00 ef ff ff       	call   101726 <getKeyCode>
  102826:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102829:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  10282d:	74 57                	je     102886 <keyboardHandle+0x77>
  10282f:	83 ec 0c             	sub    $0xc,%esp
  102832:	ff 75 f4             	pushl  -0xc(%ebp)
  102835:	e8 90 ef ff ff       	call   1017ca <getChar>
  10283a:	83 c4 10             	add    $0x10,%esp
  10283d:	0f be c0             	movsbl %al,%eax
  102840:	83 ec 0c             	sub    $0xc,%esp
  102843:	50                   	push   %eax
  102844:	e8 ac e0 ff ff       	call   1008f5 <putChar>
  102849:	83 c4 10             	add    $0x10,%esp
  10284c:	c7 c0 20 9c 12 00    	mov    $0x129c20,%eax
  102852:	8b 10                	mov    (%eax),%edx
  102854:	c7 c0 40 9c 12 00    	mov    $0x129c40,%eax
  10285a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10285d:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  102860:	c7 c0 20 9c 12 00    	mov    $0x129c20,%eax
  102866:	8b 00                	mov    (%eax),%eax
  102868:	40                   	inc    %eax
  102869:	25 ff 00 00 80       	and    $0x800000ff,%eax
  10286e:	85 c0                	test   %eax,%eax
  102870:	79 07                	jns    102879 <keyboardHandle+0x6a>
  102872:	48                   	dec    %eax
  102873:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  102878:	40                   	inc    %eax
  102879:	89 c2                	mov    %eax,%edx
  10287b:	c7 c0 20 9c 12 00    	mov    $0x129c20,%eax
  102881:	89 10                	mov    %edx,(%eax)
  102883:	90                   	nop
  102884:	eb 01                	jmp    102887 <keyboardHandle+0x78>
  102886:	90                   	nop
  102887:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10288a:	c9                   	leave  
  10288b:	c3                   	ret    

0010288c <syscallWrite>:
  10288c:	55                   	push   %ebp
  10288d:	89 e5                	mov    %esp,%ebp
  10288f:	83 ec 08             	sub    $0x8,%esp
  102892:	e8 28 d9 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102897:	05 69 27 00 00       	add    $0x2769,%eax
  10289c:	8b 45 08             	mov    0x8(%ebp),%eax
  10289f:	8b 40 28             	mov    0x28(%eax),%eax
  1028a2:	85 c0                	test   %eax,%eax
  1028a4:	74 02                	je     1028a8 <syscallWrite+0x1c>
  1028a6:	eb 0f                	jmp    1028b7 <syscallWrite+0x2b>
  1028a8:	83 ec 0c             	sub    $0xc,%esp
  1028ab:	ff 75 08             	pushl  0x8(%ebp)
  1028ae:	e8 07 00 00 00       	call   1028ba <syscallPrint>
  1028b3:	83 c4 10             	add    $0x10,%esp
  1028b6:	90                   	nop
  1028b7:	90                   	nop
  1028b8:	c9                   	leave  
  1028b9:	c3                   	ret    

001028ba <syscallPrint>:
  1028ba:	55                   	push   %ebp
  1028bb:	89 e5                	mov    %esp,%ebp
  1028bd:	53                   	push   %ebx
  1028be:	83 ec 24             	sub    $0x24,%esp
  1028c1:	e8 7b d7 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1028c6:	81 c3 3a 27 00 00    	add    $0x273a,%ebx
  1028cc:	8b 45 08             	mov    0x8(%ebp),%eax
  1028cf:	8b 40 0c             	mov    0xc(%eax),%eax
  1028d2:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1028d5:	8b 45 08             	mov    0x8(%ebp),%eax
  1028d8:	8b 40 24             	mov    0x24(%eax),%eax
  1028db:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1028de:	8b 45 08             	mov    0x8(%ebp),%eax
  1028e1:	8b 40 20             	mov    0x20(%eax),%eax
  1028e4:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1028e7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1028ee:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1028f5:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  1028f9:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  1028ff:	8e 45 e0             	mov    -0x20(%ebp),%es
  102902:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102909:	e9 10 01 00 00       	jmp    102a1e <syscallPrint+0x164>
  10290e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102911:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102914:	01 d0                	add    %edx,%eax
  102916:	26 8a 00             	mov    %es:(%eax),%al
  102919:	88 45 e7             	mov    %al,-0x19(%ebp)
  10291c:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  102920:	75 52                	jne    102974 <syscallPrint+0xba>
  102922:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102928:	8b 00                	mov    (%eax),%eax
  10292a:	8d 50 01             	lea    0x1(%eax),%edx
  10292d:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102933:	89 10                	mov    %edx,(%eax)
  102935:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  10293b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102941:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102947:	8b 00                	mov    (%eax),%eax
  102949:	83 f8 19             	cmp    $0x19,%eax
  10294c:	0f 85 c9 00 00 00    	jne    102a1b <syscallPrint+0x161>
  102952:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102958:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  10295e:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102964:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10296a:	e8 e9 f0 ff ff       	call   101a58 <scrollScreen>
  10296f:	e9 a7 00 00 00       	jmp    102a1b <syscallPrint+0x161>
  102974:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  102979:	80 cc 0c             	or     $0xc,%ah
  10297c:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  102980:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102986:	8b 10                	mov    (%eax),%edx
  102988:	89 d0                	mov    %edx,%eax
  10298a:	c1 e0 02             	shl    $0x2,%eax
  10298d:	01 d0                	add    %edx,%eax
  10298f:	c1 e0 04             	shl    $0x4,%eax
  102992:	89 c2                	mov    %eax,%edx
  102994:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  10299a:	8b 00                	mov    (%eax),%eax
  10299c:	01 d0                	add    %edx,%eax
  10299e:	01 c0                	add    %eax,%eax
  1029a0:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1029a3:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1029a6:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1029ac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1029af:	66 89 02             	mov    %ax,(%edx)
  1029b2:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  1029b8:	8b 00                	mov    (%eax),%eax
  1029ba:	8d 50 01             	lea    0x1(%eax),%edx
  1029bd:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  1029c3:	89 10                	mov    %edx,(%eax)
  1029c5:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  1029cb:	8b 00                	mov    (%eax),%eax
  1029cd:	83 f8 50             	cmp    $0x50,%eax
  1029d0:	75 49                	jne    102a1b <syscallPrint+0x161>
  1029d2:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029d8:	8b 00                	mov    (%eax),%eax
  1029da:	8d 50 01             	lea    0x1(%eax),%edx
  1029dd:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029e3:	89 10                	mov    %edx,(%eax)
  1029e5:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  1029eb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1029f1:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029f7:	8b 00                	mov    (%eax),%eax
  1029f9:	83 f8 19             	cmp    $0x19,%eax
  1029fc:	75 1d                	jne    102a1b <syscallPrint+0x161>
  1029fe:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a04:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  102a0a:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a10:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102a16:	e8 3d f0 ff ff       	call   101a58 <scrollScreen>
  102a1b:	ff 45 f4             	incl   -0xc(%ebp)
  102a1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a21:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  102a24:	0f 8c e4 fe ff ff    	jl     10290e <syscallPrint+0x54>
  102a2a:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a30:	8b 10                	mov    (%eax),%edx
  102a32:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a38:	8b 00                	mov    (%eax),%eax
  102a3a:	83 ec 08             	sub    $0x8,%esp
  102a3d:	52                   	push   %edx
  102a3e:	50                   	push   %eax
  102a3f:	e8 a1 ef ff ff       	call   1019e5 <updateCursor>
  102a44:	83 c4 10             	add    $0x10,%esp
  102a47:	90                   	nop
  102a48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102a4b:	c9                   	leave  
  102a4c:	c3                   	ret    

00102a4d <syscallFork>:
  102a4d:	55                   	push   %ebp
  102a4e:	89 e5                	mov    %esp,%ebp
  102a50:	57                   	push   %edi
  102a51:	56                   	push   %esi
  102a52:	53                   	push   %ebx
  102a53:	83 ec 10             	sub    $0x10,%esp
  102a56:	e8 64 d7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102a5b:	05 a5 25 00 00       	add    $0x25a5,%eax
  102a60:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  102a67:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  102a6e:	e9 23 03 00 00       	jmp    102d96 <syscallFork+0x349>
  102a73:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102a79:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  102a7c:	89 ca                	mov    %ecx,%edx
  102a7e:	c1 e2 07             	shl    $0x7,%edx
  102a81:	01 ca                	add    %ecx,%edx
  102a83:	c1 e2 05             	shl    $0x5,%edx
  102a86:	01 ca                	add    %ecx,%edx
  102a88:	c1 e2 02             	shl    $0x2,%edx
  102a8b:	01 da                	add    %ebx,%edx
  102a8d:	81 c2 54 40 00 00    	add    $0x4054,%edx
  102a93:	8b 12                	mov    (%edx),%edx
  102a95:	83 fa 03             	cmp    $0x3,%edx
  102a98:	0f 85 f5 02 00 00    	jne    102d93 <syscallFork+0x346>
  102a9e:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  102aa1:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102aa7:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  102aaa:	89 ca                	mov    %ecx,%edx
  102aac:	c1 e2 07             	shl    $0x7,%edx
  102aaf:	01 ca                	add    %ecx,%edx
  102ab1:	c1 e2 05             	shl    $0x5,%edx
  102ab4:	01 ca                	add    %ecx,%edx
  102ab6:	c1 e2 02             	shl    $0x2,%edx
  102ab9:	01 f2                	add    %esi,%edx
  102abb:	81 c2 60 40 00 00    	add    $0x4060,%edx
  102ac1:	89 1a                	mov    %ebx,(%edx)
  102ac3:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102ac9:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  102acc:	89 ca                	mov    %ecx,%edx
  102ace:	c1 e2 07             	shl    $0x7,%edx
  102ad1:	01 ca                	add    %ecx,%edx
  102ad3:	c1 e2 05             	shl    $0x5,%edx
  102ad6:	01 ca                	add    %ecx,%edx
  102ad8:	c1 e2 02             	shl    $0x2,%edx
  102adb:	01 da                	add    %ebx,%edx
  102add:	81 c2 60 40 00 00    	add    $0x4060,%edx
  102ae3:	8b 12                	mov    (%edx),%edx
  102ae5:	89 55 e8             	mov    %edx,-0x18(%ebp)
  102ae8:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102aeb:	89 ca                	mov    %ecx,%edx
  102aed:	c1 e2 07             	shl    $0x7,%edx
  102af0:	01 ca                	add    %ecx,%edx
  102af2:	c1 e2 05             	shl    $0x5,%edx
  102af5:	01 ca                	add    %ecx,%edx
  102af7:	c1 e2 02             	shl    $0x2,%edx
  102afa:	8d 8a 00 40 00 00    	lea    0x4000(%edx),%ecx
  102b00:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  102b06:	01 ca                	add    %ecx,%edx
  102b08:	89 d3                	mov    %edx,%ebx
  102b0a:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102b10:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102b13:	89 ca                	mov    %ecx,%edx
  102b15:	c1 e2 07             	shl    $0x7,%edx
  102b18:	01 ca                	add    %ecx,%edx
  102b1a:	c1 e2 05             	shl    $0x5,%edx
  102b1d:	01 ca                	add    %ecx,%edx
  102b1f:	c1 e2 02             	shl    $0x2,%edx
  102b22:	01 f2                	add    %esi,%edx
  102b24:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  102b2a:	89 1a                	mov    %ebx,(%edx)
  102b2c:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102b2f:	89 ca                	mov    %ecx,%edx
  102b31:	c1 e2 07             	shl    $0x7,%edx
  102b34:	01 ca                	add    %ecx,%edx
  102b36:	c1 e2 05             	shl    $0x5,%edx
  102b39:	01 ca                	add    %ecx,%edx
  102b3b:	c1 e2 02             	shl    $0x2,%edx
  102b3e:	8d 8a 40 40 00 00    	lea    0x4040(%edx),%ecx
  102b44:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  102b4a:	01 ca                	add    %ecx,%edx
  102b4c:	83 c2 0c             	add    $0xc,%edx
  102b4f:	89 d3                	mov    %edx,%ebx
  102b51:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102b57:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102b5a:	89 ca                	mov    %ecx,%edx
  102b5c:	c1 e2 07             	shl    $0x7,%edx
  102b5f:	01 ca                	add    %ecx,%edx
  102b61:	c1 e2 05             	shl    $0x5,%edx
  102b64:	01 ca                	add    %ecx,%edx
  102b66:	c1 e2 02             	shl    $0x2,%edx
  102b69:	01 f2                	add    %esi,%edx
  102b6b:	81 c2 50 40 00 00    	add    $0x4050,%edx
  102b71:	89 1a                	mov    %ebx,(%edx)
  102b73:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102b79:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102b7c:	89 ca                	mov    %ecx,%edx
  102b7e:	c1 e2 07             	shl    $0x7,%edx
  102b81:	01 ca                	add    %ecx,%edx
  102b83:	c1 e2 05             	shl    $0x5,%edx
  102b86:	01 ca                	add    %ecx,%edx
  102b88:	c1 e2 02             	shl    $0x2,%edx
  102b8b:	01 da                	add    %ebx,%edx
  102b8d:	81 c2 54 40 00 00    	add    $0x4054,%edx
  102b93:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102b99:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102b9f:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102ba2:	89 ca                	mov    %ecx,%edx
  102ba4:	c1 e2 07             	shl    $0x7,%edx
  102ba7:	01 ca                	add    %ecx,%edx
  102ba9:	c1 e2 05             	shl    $0x5,%edx
  102bac:	01 ca                	add    %ecx,%edx
  102bae:	c1 e2 02             	shl    $0x2,%edx
  102bb1:	01 da                	add    %ebx,%edx
  102bb3:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  102bb9:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102bbf:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102bc5:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102bc8:	89 ca                	mov    %ecx,%edx
  102bca:	c1 e2 07             	shl    $0x7,%edx
  102bcd:	01 ca                	add    %ecx,%edx
  102bcf:	c1 e2 05             	shl    $0x5,%edx
  102bd2:	01 ca                	add    %ecx,%edx
  102bd4:	c1 e2 02             	shl    $0x2,%edx
  102bd7:	01 da                	add    %ebx,%edx
  102bd9:	81 c2 58 40 00 00    	add    $0x4058,%edx
  102bdf:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102be5:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102beb:	8b 0a                	mov    (%edx),%ecx
  102bed:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102bf3:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  102bf6:	89 da                	mov    %ebx,%edx
  102bf8:	c1 e2 07             	shl    $0x7,%edx
  102bfb:	01 da                	add    %ebx,%edx
  102bfd:	c1 e2 05             	shl    $0x5,%edx
  102c00:	01 da                	add    %ebx,%edx
  102c02:	c1 e2 02             	shl    $0x2,%edx
  102c05:	01 f2                	add    %esi,%edx
  102c07:	8d b2 00 40 00 00    	lea    0x4000(%edx),%esi
  102c0d:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102c13:	89 ca                	mov    %ecx,%edx
  102c15:	c1 e2 07             	shl    $0x7,%edx
  102c18:	01 ca                	add    %ecx,%edx
  102c1a:	c1 e2 05             	shl    $0x5,%edx
  102c1d:	01 ca                	add    %ecx,%edx
  102c1f:	c1 e2 02             	shl    $0x2,%edx
  102c22:	01 da                	add    %ebx,%edx
  102c24:	81 c2 00 40 00 00    	add    $0x4000,%edx
  102c2a:	89 f3                	mov    %esi,%ebx
  102c2c:	89 d6                	mov    %edx,%esi
  102c2e:	ba 13 00 00 00       	mov    $0x13,%edx
  102c33:	89 df                	mov    %ebx,%edi
  102c35:	89 d1                	mov    %edx,%ecx
  102c37:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  102c39:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102c3f:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102c42:	89 ca                	mov    %ecx,%edx
  102c44:	c1 e2 07             	shl    $0x7,%edx
  102c47:	01 ca                	add    %ecx,%edx
  102c49:	c1 e2 05             	shl    $0x5,%edx
  102c4c:	01 ca                	add    %ecx,%edx
  102c4e:	c1 e2 02             	shl    $0x2,%edx
  102c51:	01 da                	add    %ebx,%edx
  102c53:	81 c2 44 40 00 00    	add    $0x4044,%edx
  102c59:	8b 0a                	mov    (%edx),%ecx
  102c5b:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102c61:	8b 12                	mov    (%edx),%edx
  102c63:	89 d3                	mov    %edx,%ebx
  102c65:	8b 55 e8             	mov    -0x18(%ebp),%edx
  102c68:	29 da                	sub    %ebx,%edx
  102c6a:	c1 e2 14             	shl    $0x14,%edx
  102c6d:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  102c70:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102c76:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102c79:	89 ca                	mov    %ecx,%edx
  102c7b:	c1 e2 07             	shl    $0x7,%edx
  102c7e:	01 ca                	add    %ecx,%edx
  102c80:	c1 e2 05             	shl    $0x5,%edx
  102c83:	01 ca                	add    %ecx,%edx
  102c85:	c1 e2 02             	shl    $0x2,%edx
  102c88:	01 f2                	add    %esi,%edx
  102c8a:	81 c2 44 40 00 00    	add    $0x4044,%edx
  102c90:	89 1a                	mov    %ebx,(%edx)
  102c92:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102c98:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102c9b:	89 ca                	mov    %ecx,%edx
  102c9d:	c1 e2 07             	shl    $0x7,%edx
  102ca0:	01 ca                	add    %ecx,%edx
  102ca2:	c1 e2 05             	shl    $0x5,%edx
  102ca5:	01 ca                	add    %ecx,%edx
  102ca7:	c1 e2 02             	shl    $0x2,%edx
  102caa:	01 da                	add    %ebx,%edx
  102cac:	81 c2 38 40 00 00    	add    $0x4038,%edx
  102cb2:	8b 0a                	mov    (%edx),%ecx
  102cb4:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102cba:	8b 12                	mov    (%edx),%edx
  102cbc:	89 d3                	mov    %edx,%ebx
  102cbe:	8b 55 e8             	mov    -0x18(%ebp),%edx
  102cc1:	29 da                	sub    %ebx,%edx
  102cc3:	c1 e2 14             	shl    $0x14,%edx
  102cc6:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  102cc9:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102ccf:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102cd2:	89 ca                	mov    %ecx,%edx
  102cd4:	c1 e2 07             	shl    $0x7,%edx
  102cd7:	01 ca                	add    %ecx,%edx
  102cd9:	c1 e2 05             	shl    $0x5,%edx
  102cdc:	01 ca                	add    %ecx,%edx
  102cde:	c1 e2 02             	shl    $0x2,%edx
  102ce1:	01 f2                	add    %esi,%edx
  102ce3:	81 c2 38 40 00 00    	add    $0x4038,%edx
  102ce9:	89 1a                	mov    %ebx,(%edx)
  102ceb:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  102cf2:	eb 42                	jmp    102d36 <syscallFork+0x2e9>
  102cf4:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102cfa:	8b 0a                	mov    (%edx),%ecx
  102cfc:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102d02:	89 ca                	mov    %ecx,%edx
  102d04:	c1 e2 07             	shl    $0x7,%edx
  102d07:	01 ca                	add    %ecx,%edx
  102d09:	c1 e2 05             	shl    $0x5,%edx
  102d0c:	01 ca                	add    %ecx,%edx
  102d0e:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  102d11:	01 ca                	add    %ecx,%edx
  102d13:	8b 34 93             	mov    (%ebx,%edx,4),%esi
  102d16:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102d1c:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102d1f:	89 ca                	mov    %ecx,%edx
  102d21:	c1 e2 07             	shl    $0x7,%edx
  102d24:	01 ca                	add    %ecx,%edx
  102d26:	c1 e2 05             	shl    $0x5,%edx
  102d29:	01 ca                	add    %ecx,%edx
  102d2b:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  102d2e:	01 ca                	add    %ecx,%edx
  102d30:	89 34 93             	mov    %esi,(%ebx,%edx,4)
  102d33:	ff 45 ec             	incl   -0x14(%ebp)
  102d36:	81 7d ec ff 0f 00 00 	cmpl   $0xfff,-0x14(%ebp)
  102d3d:	7e b5                	jle    102cf4 <syscallFork+0x2a7>
  102d3f:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102d45:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102d48:	89 ca                	mov    %ecx,%edx
  102d4a:	c1 e2 07             	shl    $0x7,%edx
  102d4d:	01 ca                	add    %ecx,%edx
  102d4f:	c1 e2 05             	shl    $0x5,%edx
  102d52:	01 ca                	add    %ecx,%edx
  102d54:	c1 e2 02             	shl    $0x2,%edx
  102d57:	01 da                	add    %ebx,%edx
  102d59:	81 c2 2c 40 00 00    	add    $0x402c,%edx
  102d5f:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102d65:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102d6b:	8b 12                	mov    (%edx),%edx
  102d6d:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102d73:	89 d0                	mov    %edx,%eax
  102d75:	c1 e0 07             	shl    $0x7,%eax
  102d78:	01 d0                	add    %edx,%eax
  102d7a:	c1 e0 05             	shl    $0x5,%eax
  102d7d:	01 d0                	add    %edx,%eax
  102d7f:	c1 e0 02             	shl    $0x2,%eax
  102d82:	01 c8                	add    %ecx,%eax
  102d84:	8d 90 2c 40 00 00    	lea    0x402c(%eax),%edx
  102d8a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102d8d:	89 02                	mov    %eax,(%edx)
  102d8f:	cd 20                	int    $0x20
  102d91:	eb 3a                	jmp    102dcd <syscallFork+0x380>
  102d93:	ff 45 f0             	incl   -0x10(%ebp)
  102d96:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
  102d9a:	0f 8e d3 fc ff ff    	jle    102a73 <syscallFork+0x26>
  102da0:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102da6:	8b 12                	mov    (%edx),%edx
  102da8:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102dae:	89 d0                	mov    %edx,%eax
  102db0:	c1 e0 07             	shl    $0x7,%eax
  102db3:	01 d0                	add    %edx,%eax
  102db5:	c1 e0 05             	shl    $0x5,%eax
  102db8:	01 d0                	add    %edx,%eax
  102dba:	c1 e0 02             	shl    $0x2,%eax
  102dbd:	01 c8                	add    %ecx,%eax
  102dbf:	05 2c 40 00 00       	add    $0x402c,%eax
  102dc4:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  102dca:	cd 20                	int    $0x20
  102dcc:	90                   	nop
  102dcd:	83 c4 10             	add    $0x10,%esp
  102dd0:	5b                   	pop    %ebx
  102dd1:	5e                   	pop    %esi
  102dd2:	5f                   	pop    %edi
  102dd3:	5d                   	pop    %ebp
  102dd4:	c3                   	ret    

00102dd5 <syscallExec>:
  102dd5:	55                   	push   %ebp
  102dd6:	89 e5                	mov    %esp,%ebp
  102dd8:	53                   	push   %ebx
  102dd9:	83 ec 24             	sub    $0x24,%esp
  102ddc:	e8 55 ed ff ff       	call   101b36 <__x86.get_pc_thunk.dx>
  102de1:	81 c2 1f 22 00 00    	add    $0x221f,%edx
  102de7:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  102dee:	8b 45 08             	mov    0x8(%ebp),%eax
  102df1:	8b 40 28             	mov    0x28(%eax),%eax
  102df4:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102df7:	8b 45 08             	mov    0x8(%ebp),%eax
  102dfa:	8b 40 20             	mov    0x20(%eax),%eax
  102dfd:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102e00:	8b 45 08             	mov    0x8(%ebp),%eax
  102e03:	8b 40 0c             	mov    0xc(%eax),%eax
  102e06:	89 45 d8             	mov    %eax,-0x28(%ebp)
  102e09:	8e 45 d8             	mov    -0x28(%ebp),%es
  102e0c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102e13:	eb 11                	jmp    102e26 <syscallExec+0x51>
  102e15:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102e18:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102e1b:	01 c8                	add    %ecx,%eax
  102e1d:	26 8a 00             	mov    %es:(%eax),%al
  102e20:	88 45 e3             	mov    %al,-0x1d(%ebp)
  102e23:	ff 45 f4             	incl   -0xc(%ebp)
  102e26:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102e29:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  102e2c:	7c e7                	jl     102e15 <syscallExec+0x40>
  102e2e:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102e34:	8b 00                	mov    (%eax),%eax
  102e36:	40                   	inc    %eax
  102e37:	c1 e0 14             	shl    $0x14,%eax
  102e3a:	89 c1                	mov    %eax,%ecx
  102e3c:	83 ec 04             	sub    $0x4,%esp
  102e3f:	8d 45 dc             	lea    -0x24(%ebp),%eax
  102e42:	50                   	push   %eax
  102e43:	51                   	push   %ecx
  102e44:	ff 75 f0             	pushl  -0x10(%ebp)
  102e47:	89 d3                	mov    %edx,%ebx
  102e49:	e8 2f e1 ff ff       	call   100f7d <loadElf>
  102e4e:	83 c4 10             	add    $0x10,%esp
  102e51:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102e54:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  102e58:	74 0e                	je     102e68 <syscallExec+0x93>
  102e5a:	8b 45 dc             	mov    -0x24(%ebp),%eax
  102e5d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102e60:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102e63:	ff d0                	call   *%eax
  102e65:	90                   	nop
  102e66:	eb 01                	jmp    102e69 <syscallExec+0x94>
  102e68:	90                   	nop
  102e69:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102e6c:	c9                   	leave  
  102e6d:	c3                   	ret    

00102e6e <syscallSleep>:
  102e6e:	55                   	push   %ebp
  102e6f:	89 e5                	mov    %esp,%ebp
  102e71:	56                   	push   %esi
  102e72:	53                   	push   %ebx
  102e73:	83 ec 10             	sub    $0x10,%esp
  102e76:	e8 bb ec ff ff       	call   101b36 <__x86.get_pc_thunk.dx>
  102e7b:	81 c2 85 21 00 00    	add    $0x2185,%edx
  102e81:	8b 45 08             	mov    0x8(%ebp),%eax
  102e84:	8b 40 28             	mov    0x28(%eax),%eax
  102e87:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102e8a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  102e8e:	74 58                	je     102ee8 <syscallSleep+0x7a>
  102e90:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102e96:	8b 08                	mov    (%eax),%ecx
  102e98:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  102e9b:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102ea1:	89 c8                	mov    %ecx,%eax
  102ea3:	c1 e0 07             	shl    $0x7,%eax
  102ea6:	01 c8                	add    %ecx,%eax
  102ea8:	c1 e0 05             	shl    $0x5,%eax
  102eab:	01 c8                	add    %ecx,%eax
  102ead:	c1 e0 02             	shl    $0x2,%eax
  102eb0:	01 f0                	add    %esi,%eax
  102eb2:	05 5c 40 00 00       	add    $0x405c,%eax
  102eb7:	89 18                	mov    %ebx,(%eax)
  102eb9:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102ebf:	8b 08                	mov    (%eax),%ecx
  102ec1:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  102ec7:	89 c8                	mov    %ecx,%eax
  102ec9:	c1 e0 07             	shl    $0x7,%eax
  102ecc:	01 c8                	add    %ecx,%eax
  102ece:	c1 e0 05             	shl    $0x5,%eax
  102ed1:	01 c8                	add    %ecx,%eax
  102ed3:	c1 e0 02             	shl    $0x2,%eax
  102ed6:	01 d0                	add    %edx,%eax
  102ed8:	05 54 40 00 00       	add    $0x4054,%eax
  102edd:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  102ee3:	cd 20                	int    $0x20
  102ee5:	90                   	nop
  102ee6:	eb 01                	jmp    102ee9 <syscallSleep+0x7b>
  102ee8:	90                   	nop
  102ee9:	83 c4 10             	add    $0x10,%esp
  102eec:	5b                   	pop    %ebx
  102eed:	5e                   	pop    %esi
  102eee:	5d                   	pop    %ebp
  102eef:	c3                   	ret    

00102ef0 <syscallExit>:
  102ef0:	55                   	push   %ebp
  102ef1:	89 e5                	mov    %esp,%ebp
  102ef3:	e8 c7 d2 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102ef8:	05 08 21 00 00       	add    $0x2108,%eax
  102efd:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102f03:	8b 12                	mov    (%edx),%edx
  102f05:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102f0b:	89 d0                	mov    %edx,%eax
  102f0d:	c1 e0 07             	shl    $0x7,%eax
  102f10:	01 d0                	add    %edx,%eax
  102f12:	c1 e0 05             	shl    $0x5,%eax
  102f15:	01 d0                	add    %edx,%eax
  102f17:	c1 e0 02             	shl    $0x2,%eax
  102f1a:	01 c8                	add    %ecx,%eax
  102f1c:	05 54 40 00 00       	add    $0x4054,%eax
  102f21:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  102f27:	cd 20                	int    $0x20
  102f29:	90                   	nop
  102f2a:	5d                   	pop    %ebp
  102f2b:	c3                   	ret    

00102f2c <GProtectFaultHandle>:
  102f2c:	55                   	push   %ebp
  102f2d:	89 e5                	mov    %esp,%ebp
  102f2f:	53                   	push   %ebx
  102f30:	83 ec 04             	sub    $0x4,%esp
  102f33:	e8 87 d2 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102f38:	05 c8 20 00 00       	add    $0x20c8,%eax
  102f3d:	83 ec 08             	sub    $0x8,%esp
  102f40:	68 1b 01 00 00       	push   $0x11b
  102f45:	8d 90 d0 df ff ff    	lea    -0x2030(%eax),%edx
  102f4b:	52                   	push   %edx
  102f4c:	89 c3                	mov    %eax,%ebx
  102f4e:	e8 3f d2 ff ff       	call   100192 <abort>
  102f53:	83 c4 10             	add    $0x10,%esp
  102f56:	90                   	nop
  102f57:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102f5a:	c9                   	leave  
  102f5b:	c3                   	ret    

00102f5c <irqEmpty>:
  102f5c:	6a 00                	push   $0x0
  102f5e:	6a ff                	push   $0xffffffff
  102f60:	eb 39                	jmp    102f9b <asmDoIrq>

00102f62 <irqErrorCode>:
  102f62:	6a ff                	push   $0xffffffff
  102f64:	eb 35                	jmp    102f9b <asmDoIrq>

00102f66 <irqDoubleFault>:
  102f66:	6a ff                	push   $0xffffffff
  102f68:	eb 31                	jmp    102f9b <asmDoIrq>

00102f6a <irqInvalidTSS>:
  102f6a:	6a ff                	push   $0xffffffff
  102f6c:	eb 2d                	jmp    102f9b <asmDoIrq>

00102f6e <irqSegNotPresent>:
  102f6e:	6a ff                	push   $0xffffffff
  102f70:	eb 29                	jmp    102f9b <asmDoIrq>

00102f72 <irqStackSegFault>:
  102f72:	6a ff                	push   $0xffffffff
  102f74:	eb 25                	jmp    102f9b <asmDoIrq>

00102f76 <irqGProtectFault>:
  102f76:	6a 0d                	push   $0xd
  102f78:	eb 21                	jmp    102f9b <asmDoIrq>

00102f7a <irqPageFault>:
  102f7a:	6a ff                	push   $0xffffffff
  102f7c:	eb 1d                	jmp    102f9b <asmDoIrq>

00102f7e <irqAlignCheck>:
  102f7e:	6a ff                	push   $0xffffffff
  102f80:	eb 19                	jmp    102f9b <asmDoIrq>

00102f82 <irqSecException>:
  102f82:	6a ff                	push   $0xffffffff
  102f84:	eb 15                	jmp    102f9b <asmDoIrq>

00102f86 <irqTimer>:
  102f86:	6a 00                	push   $0x0
  102f88:	6a 20                	push   $0x20
  102f8a:	eb 0f                	jmp    102f9b <asmDoIrq>

00102f8c <irqKeyboard>:
  102f8c:	6a 00                	push   $0x0
  102f8e:	6a 21                	push   $0x21
  102f90:	eb 09                	jmp    102f9b <asmDoIrq>

00102f92 <irqSyscall>:
  102f92:	6a 00                	push   $0x0
  102f94:	68 80 00 00 00       	push   $0x80
  102f99:	eb 00                	jmp    102f9b <asmDoIrq>

00102f9b <asmDoIrq>:
  102f9b:	60                   	pusha  
  102f9c:	1e                   	push   %ds
  102f9d:	06                   	push   %es
  102f9e:	0f a0                	push   %fs
  102fa0:	0f a8                	push   %gs
  102fa2:	54                   	push   %esp
  102fa3:	e8 7f f3 ff ff       	call   102327 <irqHandle>
  102fa8:	83 c4 04             	add    $0x4,%esp
  102fab:	0f a9                	pop    %gs
  102fad:	0f a1                	pop    %fs
  102faf:	07                   	pop    %es
  102fb0:	1f                   	pop    %ds
  102fb1:	61                   	popa   
  102fb2:	83 c4 04             	add    $0x4,%esp
  102fb5:	83 c4 04             	add    $0x4,%esp
  102fb8:	cf                   	iret   
