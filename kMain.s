
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
  100017:	e8 68 21 00 00       	call   102184 <initIdt>
  10001c:	e8 6c 1b 00 00       	call   101b8d <initIntr>
  100021:	e8 41 0a 00 00       	call   100a67 <initSeg>
  100026:	e8 4b 19 00 00       	call   101976 <initVga>
  10002b:	e8 b9 18 00 00       	call   1018e9 <initTimer>
  100030:	e8 fe 13 00 00       	call   101433 <initKeyTable>
  100035:	e8 18 0f 00 00       	call   100f52 <initFS>
  10003a:	e8 a2 11 00 00       	call   1011e1 <initProc>
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
  10011f:	8d 83 5c e4 ff ff    	lea    -0x1ba4(%ebx),%eax
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
  10014a:	8d 83 5e e4 ff ff    	lea    -0x1ba2(%ebx),%eax
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
  100437:	e8 20 1a 00 00       	call   101e5c <diskRead>
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
  1004df:	e8 78 19 00 00       	call   101e5c <diskRead>
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
  10050f:	e8 48 19 00 00       	call   101e5c <diskRead>
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
  100537:	e8 20 19 00 00       	call   101e5c <diskRead>
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
  10064b:	e8 0c 18 00 00       	call   101e5c <diskRead>
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
  100776:	e8 e1 16 00 00       	call   101e5c <diskRead>
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
  100fa0:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  100fa6:	8b 00                	mov    (%eax),%eax
  100fa8:	40                   	inc    %eax
  100fa9:	c1 e0 14             	shl    $0x14,%eax
  100fac:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100faf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
  100fb6:	00 00 00 
  100fb9:	ff 75 08             	pushl  0x8(%ebp)
  100fbc:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  100fc2:	50                   	push   %eax
  100fc3:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  100fc9:	50                   	push   %eax
  100fca:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  100fd0:	50                   	push   %eax
  100fd1:	e8 7e f5 ff ff       	call   100554 <readInode>
  100fd6:	83 c4 10             	add    $0x10,%esp
  100fd9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100fdc:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
  100fe0:	75 0a                	jne    100fec <loadElf+0x6f>
  100fe2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100fe7:	e9 d9 00 00 00       	jmp    1010c5 <loadElf+0x148>
  100fec:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100ff3:	eb 31                	jmp    101026 <loadElf+0xa9>
  100ff5:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  100ffb:	8b 40 14             	mov    0x14(%eax),%eax
  100ffe:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  101002:	89 c2                	mov    %eax,%edx
  101004:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101007:	01 d0                	add    %edx,%eax
  101009:	50                   	push   %eax
  10100a:	ff 75 f4             	pushl  -0xc(%ebp)
  10100d:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  101013:	50                   	push   %eax
  101014:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  10101a:	50                   	push   %eax
  10101b:	e8 29 f4 ff ff       	call   100449 <readBlock>
  101020:	83 c4 10             	add    $0x10,%esp
  101023:	ff 45 f4             	incl   -0xc(%ebp)
  101026:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
  10102c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10102f:	7c c4                	jl     100ff5 <loadElf+0x78>
  101031:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101034:	8b 40 18             	mov    0x18(%eax),%eax
  101037:	89 45 10             	mov    %eax,0x10(%ebp)
  10103a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10103d:	8b 40 1c             	mov    0x1c(%eax),%eax
  101040:	89 45 e0             	mov    %eax,-0x20(%ebp)
  101043:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101046:	c1 e0 05             	shl    $0x5,%eax
  101049:	89 c2                	mov    %eax,%edx
  10104b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10104e:	01 d0                	add    %edx,%eax
  101050:	8b 40 04             	mov    0x4(%eax),%eax
  101053:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101056:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10105d:	eb 28                	jmp    101087 <loadElf+0x10a>
  10105f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101062:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101065:	01 c2                	add    %eax,%edx
  101067:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10106a:	01 d0                	add    %edx,%eax
  10106c:	89 c1                	mov    %eax,%ecx
  10106e:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101071:	8b 50 08             	mov    0x8(%eax),%edx
  101074:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101077:	01 c2                	add    %eax,%edx
  101079:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10107c:	01 d0                	add    %edx,%eax
  10107e:	89 c2                	mov    %eax,%edx
  101080:	8a 01                	mov    (%ecx),%al
  101082:	88 02                	mov    %al,(%edx)
  101084:	ff 45 f4             	incl   -0xc(%ebp)
  101087:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10108a:	8b 50 14             	mov    0x14(%eax),%edx
  10108d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101090:	39 c2                	cmp    %eax,%edx
  101092:	77 cb                	ja     10105f <loadElf+0xe2>
  101094:	8b 45 e0             	mov    -0x20(%ebp),%eax
  101097:	8b 40 14             	mov    0x14(%eax),%eax
  10109a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10109d:	eb 16                	jmp    1010b5 <loadElf+0x138>
  10109f:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1010a2:	8b 50 08             	mov    0x8(%eax),%edx
  1010a5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1010a8:	01 c2                	add    %eax,%edx
  1010aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1010ad:	01 d0                	add    %edx,%eax
  1010af:	c6 00 00             	movb   $0x0,(%eax)
  1010b2:	ff 45 f0             	incl   -0x10(%ebp)
  1010b5:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1010b8:	8b 50 10             	mov    0x10(%eax),%edx
  1010bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1010be:	39 c2                	cmp    %eax,%edx
  1010c0:	77 dd                	ja     10109f <loadElf+0x122>
  1010c2:	8b 45 10             	mov    0x10(%ebp),%eax
  1010c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010c8:	c9                   	leave  
  1010c9:	c3                   	ret    

001010ca <loadUMain>:
  1010ca:	55                   	push   %ebp
  1010cb:	89 e5                	mov    %esp,%ebp
  1010cd:	53                   	push   %ebx
  1010ce:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1010d4:	e8 68 ef ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1010d9:	81 c3 27 3f 00 00    	add    $0x3f27,%ebx
  1010df:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1010e6:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  1010ed:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  1010f4:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  1010fb:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  101102:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  101109:	00 00 00 
  10110c:	8d 83 60 e4 ff ff    	lea    -0x1ba0(%ebx),%eax
  101112:	50                   	push   %eax
  101113:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  101119:	50                   	push   %eax
  10111a:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  101120:	50                   	push   %eax
  101121:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  101127:	50                   	push   %eax
  101128:	e8 27 f4 ff ff       	call   100554 <readInode>
  10112d:	83 c4 10             	add    $0x10,%esp
  101130:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101137:	eb 31                	jmp    10116a <loadUMain+0xa0>
  101139:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  10113f:	8b 40 14             	mov    0x14(%eax),%eax
  101142:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  101146:	89 c2                	mov    %eax,%edx
  101148:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10114b:	01 d0                	add    %edx,%eax
  10114d:	50                   	push   %eax
  10114e:	ff 75 f4             	pushl  -0xc(%ebp)
  101151:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  101157:	50                   	push   %eax
  101158:	c7 c0 60 53 10 00    	mov    $0x105360,%eax
  10115e:	50                   	push   %eax
  10115f:	e8 e5 f2 ff ff       	call   100449 <readBlock>
  101164:	83 c4 10             	add    $0x10,%esp
  101167:	ff 45 f4             	incl   -0xc(%ebp)
  10116a:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  101170:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  101173:	7c c4                	jl     101139 <loadUMain+0x6f>
  101175:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101178:	8b 40 18             	mov    0x18(%eax),%eax
  10117b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10117e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101181:	8b 40 1c             	mov    0x1c(%eax),%eax
  101184:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101187:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10118a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10118d:	01 d0                	add    %edx,%eax
  10118f:	8b 40 04             	mov    0x4(%eax),%eax
  101192:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101195:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10119c:	eb 32                	jmp    1011d0 <loadUMain+0x106>
  10119e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011a1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1011a4:	01 c2                	add    %eax,%edx
  1011a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1011a9:	01 d0                	add    %edx,%eax
  1011ab:	89 c2                	mov    %eax,%edx
  1011ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1011b0:	8a 12                	mov    (%edx),%dl
  1011b2:	88 10                	mov    %dl,(%eax)
  1011b4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011b7:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1011ba:	01 c2                	add    %eax,%edx
  1011bc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1011bf:	01 d0                	add    %edx,%eax
  1011c1:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1011c4:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1011c7:	01 ca                	add    %ecx,%edx
  1011c9:	8a 00                	mov    (%eax),%al
  1011cb:	88 02                	mov    %al,(%edx)
  1011cd:	ff 45 f4             	incl   -0xc(%ebp)
  1011d0:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  1011d7:	7e c5                	jle    10119e <loadUMain+0xd4>
  1011d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1011dc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1011df:	c9                   	leave  
  1011e0:	c3                   	ret    

001011e1 <initProc>:
  1011e1:	55                   	push   %ebp
  1011e2:	89 e5                	mov    %esp,%ebp
  1011e4:	53                   	push   %ebx
  1011e5:	83 ec 14             	sub    $0x14,%esp
  1011e8:	e8 54 ee ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1011ed:	81 c3 13 3e 00 00    	add    $0x3e13,%ebx
  1011f3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1011fa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101201:	eb 28                	jmp    10122b <initProc+0x4a>
  101203:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  101209:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10120c:	89 d0                	mov    %edx,%eax
  10120e:	c1 e0 07             	shl    $0x7,%eax
  101211:	01 d0                	add    %edx,%eax
  101213:	c1 e0 05             	shl    $0x5,%eax
  101216:	01 d0                	add    %edx,%eax
  101218:	c1 e0 02             	shl    $0x2,%eax
  10121b:	01 c8                	add    %ecx,%eax
  10121d:	05 54 40 00 00       	add    $0x4054,%eax
  101222:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  101228:	ff 45 f4             	incl   -0xc(%ebp)
  10122b:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  10122f:	7e d2                	jle    101203 <initProc+0x22>
  101231:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101237:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  10123d:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101243:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  101249:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10124f:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  101255:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  10125b:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  101261:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101267:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  10126e:	00 00 00 
  101271:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101277:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  10127e:	00 00 00 
  101281:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101287:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  10128e:	00 00 00 
  101291:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101297:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  10129e:	00 00 00 
  1012a1:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012a7:	8d 90 84 80 00 00    	lea    0x8084(%eax),%edx
  1012ad:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012b3:	89 90 d0 80 00 00    	mov    %edx,0x80d0(%eax)
  1012b9:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012bf:	8d 90 d0 80 00 00    	lea    0x80d0(%eax),%edx
  1012c5:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012cb:	89 90 d4 80 00 00    	mov    %edx,0x80d4(%eax)
  1012d1:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012d7:	c7 80 d8 80 00 00 00 	movl   $0x0,0x80d8(%eax)
  1012de:	00 00 00 
  1012e1:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012e7:	c7 80 dc 80 00 00 00 	movl   $0x0,0x80dc(%eax)
  1012ee:	00 00 00 
  1012f1:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1012f7:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  1012fe:	00 00 00 
  101301:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101307:	c7 80 e4 80 00 00 01 	movl   $0x1,0x80e4(%eax)
  10130e:	00 00 00 
  101311:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101317:	c7 80 cc 80 00 00 23 	movl   $0x23,0x80cc(%eax)
  10131e:	00 00 00 
  101321:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101327:	c7 80 c8 80 00 00 00 	movl   $0x100000,0x80c8(%eax)
  10132e:	00 10 00 
  101331:	9c                   	pushf  
  101332:	5a                   	pop    %edx
  101333:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101339:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  10133f:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101345:	8b 80 c4 80 00 00    	mov    0x80c4(%eax),%eax
  10134b:	80 cc 02             	or     $0x2,%ah
  10134e:	89 c2                	mov    %eax,%edx
  101350:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101356:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  10135c:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101362:	c7 80 c0 80 00 00 1b 	movl   $0x1b,0x80c0(%eax)
  101369:	00 00 00 
  10136c:	e8 59 fd ff ff       	call   1010ca <loadUMain>
  101371:	89 c2                	mov    %eax,%edx
  101373:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101379:	89 90 bc 80 00 00    	mov    %edx,0x80bc(%eax)
  10137f:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101385:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  10138c:	00 00 00 
  10138f:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  101395:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  10139c:	00 00 00 
  10139f:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1013a5:	c7 80 88 80 00 00 23 	movl   $0x23,0x8088(%eax)
  1013ac:	00 00 00 
  1013af:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1013b5:	c7 80 84 80 00 00 23 	movl   $0x23,0x8084(%eax)
  1013bc:	00 00 00 
  1013bf:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1013c5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1013cb:	c7 c0 60 57 10 00    	mov    $0x105760,%eax
  1013d1:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  1013d7:	e8 1f f6 ff ff       	call   1009fb <enableInterrupt>
  1013dc:	cd 20                	int    $0x20
  1013de:	e8 07 f6 ff ff       	call   1009ea <waitForInterrupt>
  1013e3:	eb f9                	jmp    1013de <initProc+0x1fd>

001013e5 <inByte>:
  1013e5:	55                   	push   %ebp
  1013e6:	89 e5                	mov    %esp,%ebp
  1013e8:	83 ec 14             	sub    $0x14,%esp
  1013eb:	e8 cf ed ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1013f0:	05 10 3c 00 00       	add    $0x3c10,%eax
  1013f5:	8b 45 08             	mov    0x8(%ebp),%eax
  1013f8:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1013fc:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1013ff:	89 c2                	mov    %eax,%edx
  101401:	ec                   	in     (%dx),%al
  101402:	88 45 ff             	mov    %al,-0x1(%ebp)
  101405:	8a 45 ff             	mov    -0x1(%ebp),%al
  101408:	c9                   	leave  
  101409:	c3                   	ret    

0010140a <outByte>:
  10140a:	55                   	push   %ebp
  10140b:	89 e5                	mov    %esp,%ebp
  10140d:	83 ec 08             	sub    $0x8,%esp
  101410:	e8 aa ed ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101415:	05 eb 3b 00 00       	add    $0x3beb,%eax
  10141a:	8b 45 08             	mov    0x8(%ebp),%eax
  10141d:	8b 55 0c             	mov    0xc(%ebp),%edx
  101420:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101424:	88 d0                	mov    %dl,%al
  101426:	88 45 f8             	mov    %al,-0x8(%ebp)
  101429:	8a 45 f8             	mov    -0x8(%ebp),%al
  10142c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10142f:	ee                   	out    %al,(%dx)
  101430:	90                   	nop
  101431:	c9                   	leave  
  101432:	c3                   	ret    

00101433 <initKeyTable>:
  101433:	55                   	push   %ebp
  101434:	89 e5                	mov    %esp,%ebp
  101436:	83 ec 10             	sub    $0x10,%esp
  101439:	e8 81 ed ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10143e:	05 c2 3b 00 00       	add    $0x3bc2,%eax
  101443:	c7 c2 40 a0 12 00    	mov    $0x12a040,%edx
  101449:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10144f:	c7 c2 20 9c 12 00    	mov    $0x129c20,%edx
  101455:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10145b:	c7 80 20 02 00 00 00 	movl   $0x0,0x220(%eax)
  101462:	00 00 00 
  101465:	8d 90 60 01 00 00    	lea    0x160(%eax),%edx
  10146b:	89 90 1c 02 00 00    	mov    %edx,0x21c(%eax)
  101471:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101478:	eb 1f                	jmp    101499 <initKeyTable+0x66>
  10147a:	8d 88 60 01 00 00    	lea    0x160(%eax),%ecx
  101480:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101483:	01 ca                	add    %ecx,%edx
  101485:	c6 02 00             	movb   $0x0,(%edx)
  101488:	8d 88 c0 01 00 00    	lea    0x1c0(%eax),%ecx
  10148e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101491:	01 ca                	add    %ecx,%edx
  101493:	c6 02 00             	movb   $0x0,(%edx)
  101496:	ff 45 fc             	incl   -0x4(%ebp)
  101499:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  10149d:	7e db                	jle    10147a <initKeyTable+0x47>
  10149f:	c6 80 62 01 00 00 31 	movb   $0x31,0x162(%eax)
  1014a6:	c6 80 c2 01 00 00 21 	movb   $0x21,0x1c2(%eax)
  1014ad:	c6 80 63 01 00 00 32 	movb   $0x32,0x163(%eax)
  1014b4:	c6 80 c3 01 00 00 40 	movb   $0x40,0x1c3(%eax)
  1014bb:	c6 80 64 01 00 00 33 	movb   $0x33,0x164(%eax)
  1014c2:	c6 80 c4 01 00 00 23 	movb   $0x23,0x1c4(%eax)
  1014c9:	c6 80 65 01 00 00 34 	movb   $0x34,0x165(%eax)
  1014d0:	c6 80 c5 01 00 00 24 	movb   $0x24,0x1c5(%eax)
  1014d7:	c6 80 66 01 00 00 35 	movb   $0x35,0x166(%eax)
  1014de:	c6 80 c6 01 00 00 25 	movb   $0x25,0x1c6(%eax)
  1014e5:	c6 80 67 01 00 00 36 	movb   $0x36,0x167(%eax)
  1014ec:	c6 80 c7 01 00 00 5e 	movb   $0x5e,0x1c7(%eax)
  1014f3:	c6 80 68 01 00 00 37 	movb   $0x37,0x168(%eax)
  1014fa:	c6 80 c8 01 00 00 26 	movb   $0x26,0x1c8(%eax)
  101501:	c6 80 69 01 00 00 38 	movb   $0x38,0x169(%eax)
  101508:	c6 80 c9 01 00 00 2a 	movb   $0x2a,0x1c9(%eax)
  10150f:	c6 80 6a 01 00 00 39 	movb   $0x39,0x16a(%eax)
  101516:	c6 80 ca 01 00 00 28 	movb   $0x28,0x1ca(%eax)
  10151d:	c6 80 6b 01 00 00 30 	movb   $0x30,0x16b(%eax)
  101524:	c6 80 cb 01 00 00 29 	movb   $0x29,0x1cb(%eax)
  10152b:	c6 80 7e 01 00 00 61 	movb   $0x61,0x17e(%eax)
  101532:	c6 80 de 01 00 00 41 	movb   $0x41,0x1de(%eax)
  101539:	c6 80 90 01 00 00 62 	movb   $0x62,0x190(%eax)
  101540:	c6 80 f0 01 00 00 42 	movb   $0x42,0x1f0(%eax)
  101547:	c6 80 8e 01 00 00 63 	movb   $0x63,0x18e(%eax)
  10154e:	c6 80 ee 01 00 00 43 	movb   $0x43,0x1ee(%eax)
  101555:	c6 80 80 01 00 00 64 	movb   $0x64,0x180(%eax)
  10155c:	c6 80 e0 01 00 00 44 	movb   $0x44,0x1e0(%eax)
  101563:	c6 80 72 01 00 00 65 	movb   $0x65,0x172(%eax)
  10156a:	c6 80 d2 01 00 00 45 	movb   $0x45,0x1d2(%eax)
  101571:	c6 80 81 01 00 00 66 	movb   $0x66,0x181(%eax)
  101578:	c6 80 e1 01 00 00 46 	movb   $0x46,0x1e1(%eax)
  10157f:	c6 80 82 01 00 00 67 	movb   $0x67,0x182(%eax)
  101586:	c6 80 e2 01 00 00 47 	movb   $0x47,0x1e2(%eax)
  10158d:	c6 80 83 01 00 00 68 	movb   $0x68,0x183(%eax)
  101594:	c6 80 e3 01 00 00 48 	movb   $0x48,0x1e3(%eax)
  10159b:	c6 80 77 01 00 00 69 	movb   $0x69,0x177(%eax)
  1015a2:	c6 80 d7 01 00 00 49 	movb   $0x49,0x1d7(%eax)
  1015a9:	c6 80 84 01 00 00 6a 	movb   $0x6a,0x184(%eax)
  1015b0:	c6 80 e4 01 00 00 4a 	movb   $0x4a,0x1e4(%eax)
  1015b7:	c6 80 85 01 00 00 6b 	movb   $0x6b,0x185(%eax)
  1015be:	c6 80 e5 01 00 00 4b 	movb   $0x4b,0x1e5(%eax)
  1015c5:	c6 80 86 01 00 00 6c 	movb   $0x6c,0x186(%eax)
  1015cc:	c6 80 e6 01 00 00 4c 	movb   $0x4c,0x1e6(%eax)
  1015d3:	c6 80 92 01 00 00 6d 	movb   $0x6d,0x192(%eax)
  1015da:	c6 80 f2 01 00 00 4d 	movb   $0x4d,0x1f2(%eax)
  1015e1:	c6 80 91 01 00 00 6e 	movb   $0x6e,0x191(%eax)
  1015e8:	c6 80 f1 01 00 00 4e 	movb   $0x4e,0x1f1(%eax)
  1015ef:	c6 80 78 01 00 00 6f 	movb   $0x6f,0x178(%eax)
  1015f6:	c6 80 d8 01 00 00 4f 	movb   $0x4f,0x1d8(%eax)
  1015fd:	c6 80 79 01 00 00 70 	movb   $0x70,0x179(%eax)
  101604:	c6 80 d9 01 00 00 50 	movb   $0x50,0x1d9(%eax)
  10160b:	c6 80 70 01 00 00 71 	movb   $0x71,0x170(%eax)
  101612:	c6 80 d0 01 00 00 51 	movb   $0x51,0x1d0(%eax)
  101619:	c6 80 73 01 00 00 72 	movb   $0x72,0x173(%eax)
  101620:	c6 80 d3 01 00 00 52 	movb   $0x52,0x1d3(%eax)
  101627:	c6 80 7f 01 00 00 73 	movb   $0x73,0x17f(%eax)
  10162e:	c6 80 df 01 00 00 53 	movb   $0x53,0x1df(%eax)
  101635:	c6 80 74 01 00 00 74 	movb   $0x74,0x174(%eax)
  10163c:	c6 80 d4 01 00 00 54 	movb   $0x54,0x1d4(%eax)
  101643:	c6 80 76 01 00 00 75 	movb   $0x75,0x176(%eax)
  10164a:	c6 80 d6 01 00 00 55 	movb   $0x55,0x1d6(%eax)
  101651:	c6 80 8f 01 00 00 76 	movb   $0x76,0x18f(%eax)
  101658:	c6 80 ef 01 00 00 56 	movb   $0x56,0x1ef(%eax)
  10165f:	c6 80 71 01 00 00 77 	movb   $0x77,0x171(%eax)
  101666:	c6 80 d1 01 00 00 57 	movb   $0x57,0x1d1(%eax)
  10166d:	c6 80 8d 01 00 00 78 	movb   $0x78,0x18d(%eax)
  101674:	c6 80 ed 01 00 00 58 	movb   $0x58,0x1ed(%eax)
  10167b:	c6 80 75 01 00 00 79 	movb   $0x79,0x175(%eax)
  101682:	c6 80 d5 01 00 00 59 	movb   $0x59,0x1d5(%eax)
  101689:	c6 80 8c 01 00 00 7a 	movb   $0x7a,0x18c(%eax)
  101690:	c6 80 ec 01 00 00 5a 	movb   $0x5a,0x1ec(%eax)
  101697:	c6 80 6c 01 00 00 2d 	movb   $0x2d,0x16c(%eax)
  10169e:	c6 80 cc 01 00 00 5f 	movb   $0x5f,0x1cc(%eax)
  1016a5:	c6 80 6d 01 00 00 3d 	movb   $0x3d,0x16d(%eax)
  1016ac:	c6 80 cd 01 00 00 2b 	movb   $0x2b,0x1cd(%eax)
  1016b3:	c6 80 7a 01 00 00 5b 	movb   $0x5b,0x17a(%eax)
  1016ba:	c6 80 da 01 00 00 7b 	movb   $0x7b,0x1da(%eax)
  1016c1:	c6 80 7b 01 00 00 5d 	movb   $0x5d,0x17b(%eax)
  1016c8:	c6 80 db 01 00 00 7d 	movb   $0x7d,0x1db(%eax)
  1016cf:	c6 80 7c 01 00 00 0a 	movb   $0xa,0x17c(%eax)
  1016d6:	c6 80 dc 01 00 00 0a 	movb   $0xa,0x1dc(%eax)
  1016dd:	c6 80 87 01 00 00 3b 	movb   $0x3b,0x187(%eax)
  1016e4:	c6 80 e7 01 00 00 3a 	movb   $0x3a,0x1e7(%eax)
  1016eb:	c6 80 88 01 00 00 27 	movb   $0x27,0x188(%eax)
  1016f2:	c6 80 e8 01 00 00 22 	movb   $0x22,0x1e8(%eax)
  1016f9:	c6 80 89 01 00 00 60 	movb   $0x60,0x189(%eax)
  101700:	c6 80 e9 01 00 00 7e 	movb   $0x7e,0x1e9(%eax)
  101707:	c6 80 8b 01 00 00 5c 	movb   $0x5c,0x18b(%eax)
  10170e:	c6 80 eb 01 00 00 7c 	movb   $0x7c,0x1eb(%eax)
  101715:	c6 80 93 01 00 00 2c 	movb   $0x2c,0x193(%eax)
  10171c:	c6 80 f3 01 00 00 3c 	movb   $0x3c,0x1f3(%eax)
  101723:	c6 80 94 01 00 00 2e 	movb   $0x2e,0x194(%eax)
  10172a:	c6 80 f4 01 00 00 3e 	movb   $0x3e,0x1f4(%eax)
  101731:	c6 80 95 01 00 00 2f 	movb   $0x2f,0x195(%eax)
  101738:	c6 80 f5 01 00 00 3f 	movb   $0x3f,0x1f5(%eax)
  10173f:	c6 80 99 01 00 00 20 	movb   $0x20,0x199(%eax)
  101746:	c6 80 f9 01 00 00 20 	movb   $0x20,0x1f9(%eax)
  10174d:	90                   	nop
  10174e:	c9                   	leave  
  10174f:	c3                   	ret    

00101750 <getKeyCode>:
  101750:	55                   	push   %ebp
  101751:	89 e5                	mov    %esp,%ebp
  101753:	83 ec 10             	sub    $0x10,%esp
  101756:	e8 64 ea ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10175b:	05 a5 38 00 00       	add    $0x38a5,%eax
  101760:	6a 60                	push   $0x60
  101762:	e8 7e fc ff ff       	call   1013e5 <inByte>
  101767:	83 c4 04             	add    $0x4,%esp
  10176a:	0f b6 c0             	movzbl %al,%eax
  10176d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101770:	6a 61                	push   $0x61
  101772:	e8 6e fc ff ff       	call   1013e5 <inByte>
  101777:	83 c4 04             	add    $0x4,%esp
  10177a:	0f b6 c0             	movzbl %al,%eax
  10177d:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101780:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101783:	83 c8 80             	or     $0xffffff80,%eax
  101786:	0f be c0             	movsbl %al,%eax
  101789:	50                   	push   %eax
  10178a:	6a 61                	push   $0x61
  10178c:	e8 79 fc ff ff       	call   10140a <outByte>
  101791:	83 c4 08             	add    $0x8,%esp
  101794:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101797:	0f be c0             	movsbl %al,%eax
  10179a:	50                   	push   %eax
  10179b:	6a 61                	push   $0x61
  10179d:	e8 68 fc ff ff       	call   10140a <outByte>
  1017a2:	83 c4 08             	add    $0x8,%esp
  1017a5:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  1017ac:	77 05                	ja     1017b3 <getKeyCode+0x63>
  1017ae:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1017b1:	eb 05                	jmp    1017b8 <getKeyCode+0x68>
  1017b3:	b8 00 00 00 00       	mov    $0x0,%eax
  1017b8:	c9                   	leave  
  1017b9:	c3                   	ret    

001017ba <switchKeyboard>:
  1017ba:	55                   	push   %ebp
  1017bb:	89 e5                	mov    %esp,%ebp
  1017bd:	e8 fd e9 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1017c2:	05 3e 38 00 00       	add    $0x383e,%eax
  1017c7:	8b 88 1c 02 00 00    	mov    0x21c(%eax),%ecx
  1017cd:	8d 90 60 01 00 00    	lea    0x160(%eax),%edx
  1017d3:	39 d1                	cmp    %edx,%ecx
  1017d5:	75 0e                	jne    1017e5 <switchKeyboard+0x2b>
  1017d7:	8d 90 c0 01 00 00    	lea    0x1c0(%eax),%edx
  1017dd:	89 90 1c 02 00 00    	mov    %edx,0x21c(%eax)
  1017e3:	eb 0c                	jmp    1017f1 <switchKeyboard+0x37>
  1017e5:	8d 90 60 01 00 00    	lea    0x160(%eax),%edx
  1017eb:	89 90 1c 02 00 00    	mov    %edx,0x21c(%eax)
  1017f1:	90                   	nop
  1017f2:	5d                   	pop    %ebp
  1017f3:	c3                   	ret    

001017f4 <getChar>:
  1017f4:	55                   	push   %ebp
  1017f5:	89 e5                	mov    %esp,%ebp
  1017f7:	53                   	push   %ebx
  1017f8:	e8 44 e8 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  1017fd:	81 c3 03 38 00 00    	add    $0x3803,%ebx
  101803:	8b 45 08             	mov    0x8(%ebp),%eax
  101806:	83 f8 3a             	cmp    $0x3a,%eax
  101809:	74 32                	je     10183d <getChar+0x49>
  10180b:	83 f8 3a             	cmp    $0x3a,%eax
  10180e:	77 0f                	ja     10181f <getChar+0x2b>
  101810:	83 f8 2a             	cmp    $0x2a,%eax
  101813:	74 21                	je     101836 <getChar+0x42>
  101815:	83 f8 36             	cmp    $0x36,%eax
  101818:	74 1c                	je     101836 <getChar+0x42>
  10181a:	e9 87 00 00 00       	jmp    1018a6 <getChar+0xb2>
  10181f:	3d b6 00 00 00       	cmp    $0xb6,%eax
  101824:	74 10                	je     101836 <getChar+0x42>
  101826:	3d ba 00 00 00       	cmp    $0xba,%eax
  10182b:	74 42                	je     10186f <getChar+0x7b>
  10182d:	3d aa 00 00 00       	cmp    $0xaa,%eax
  101832:	74 02                	je     101836 <getChar+0x42>
  101834:	eb 70                	jmp    1018a6 <getChar+0xb2>
  101836:	e8 7f ff ff ff       	call   1017ba <switchKeyboard>
  10183b:	eb 69                	jmp    1018a6 <getChar+0xb2>
  10183d:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  101843:	85 c0                	test   %eax,%eax
  101845:	75 11                	jne    101858 <getChar+0x64>
  101847:	c7 83 20 02 00 00 01 	movl   $0x1,0x220(%ebx)
  10184e:	00 00 00 
  101851:	e8 64 ff ff ff       	call   1017ba <switchKeyboard>
  101856:	eb 4a                	jmp    1018a2 <getChar+0xae>
  101858:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  10185e:	83 f8 01             	cmp    $0x1,%eax
  101861:	75 3f                	jne    1018a2 <getChar+0xae>
  101863:	c7 83 20 02 00 00 02 	movl   $0x2,0x220(%ebx)
  10186a:	00 00 00 
  10186d:	eb 33                	jmp    1018a2 <getChar+0xae>
  10186f:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  101875:	83 f8 01             	cmp    $0x1,%eax
  101878:	75 0c                	jne    101886 <getChar+0x92>
  10187a:	c7 83 20 02 00 00 01 	movl   $0x1,0x220(%ebx)
  101881:	00 00 00 
  101884:	eb 1f                	jmp    1018a5 <getChar+0xb1>
  101886:	8b 83 20 02 00 00    	mov    0x220(%ebx),%eax
  10188c:	83 f8 02             	cmp    $0x2,%eax
  10188f:	75 14                	jne    1018a5 <getChar+0xb1>
  101891:	c7 83 20 02 00 00 00 	movl   $0x0,0x220(%ebx)
  101898:	00 00 00 
  10189b:	e8 1a ff ff ff       	call   1017ba <switchKeyboard>
  1018a0:	eb 03                	jmp    1018a5 <getChar+0xb1>
  1018a2:	90                   	nop
  1018a3:	eb 01                	jmp    1018a6 <getChar+0xb2>
  1018a5:	90                   	nop
  1018a6:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  1018aa:	76 04                	jbe    1018b0 <getChar+0xbc>
  1018ac:	b0 00                	mov    $0x0,%al
  1018ae:	eb 0d                	jmp    1018bd <getChar+0xc9>
  1018b0:	8b 93 1c 02 00 00    	mov    0x21c(%ebx),%edx
  1018b6:	8b 45 08             	mov    0x8(%ebp),%eax
  1018b9:	01 d0                	add    %edx,%eax
  1018bb:	8a 00                	mov    (%eax),%al
  1018bd:	5b                   	pop    %ebx
  1018be:	5d                   	pop    %ebp
  1018bf:	c3                   	ret    

001018c0 <outByte>:
  1018c0:	55                   	push   %ebp
  1018c1:	89 e5                	mov    %esp,%ebp
  1018c3:	83 ec 08             	sub    $0x8,%esp
  1018c6:	e8 f4 e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1018cb:	05 35 37 00 00       	add    $0x3735,%eax
  1018d0:	8b 45 08             	mov    0x8(%ebp),%eax
  1018d3:	8b 55 0c             	mov    0xc(%ebp),%edx
  1018d6:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1018da:	88 d0                	mov    %dl,%al
  1018dc:	88 45 f8             	mov    %al,-0x8(%ebp)
  1018df:	8a 45 f8             	mov    -0x8(%ebp),%al
  1018e2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1018e5:	ee                   	out    %al,(%dx)
  1018e6:	90                   	nop
  1018e7:	c9                   	leave  
  1018e8:	c3                   	ret    

001018e9 <initTimer>:
  1018e9:	55                   	push   %ebp
  1018ea:	89 e5                	mov    %esp,%ebp
  1018ec:	83 ec 10             	sub    $0x10,%esp
  1018ef:	e8 cb e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1018f4:	05 0c 37 00 00       	add    $0x370c,%eax
  1018f9:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  101900:	6a 34                	push   $0x34
  101902:	6a 43                	push   $0x43
  101904:	e8 b7 ff ff ff       	call   1018c0 <outByte>
  101909:	83 c4 08             	add    $0x8,%esp
  10190c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10190f:	25 ff 00 00 80       	and    $0x800000ff,%eax
  101914:	85 c0                	test   %eax,%eax
  101916:	79 07                	jns    10191f <initTimer+0x36>
  101918:	48                   	dec    %eax
  101919:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  10191e:	40                   	inc    %eax
  10191f:	0f be c0             	movsbl %al,%eax
  101922:	50                   	push   %eax
  101923:	6a 40                	push   $0x40
  101925:	e8 96 ff ff ff       	call   1018c0 <outByte>
  10192a:	83 c4 08             	add    $0x8,%esp
  10192d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101930:	85 c0                	test   %eax,%eax
  101932:	79 05                	jns    101939 <initTimer+0x50>
  101934:	05 ff 00 00 00       	add    $0xff,%eax
  101939:	c1 f8 08             	sar    $0x8,%eax
  10193c:	0f be c0             	movsbl %al,%eax
  10193f:	50                   	push   %eax
  101940:	6a 40                	push   $0x40
  101942:	e8 79 ff ff ff       	call   1018c0 <outByte>
  101947:	83 c4 08             	add    $0x8,%esp
  10194a:	90                   	nop
  10194b:	c9                   	leave  
  10194c:	c3                   	ret    

0010194d <outByte>:
  10194d:	55                   	push   %ebp
  10194e:	89 e5                	mov    %esp,%ebp
  101950:	83 ec 08             	sub    $0x8,%esp
  101953:	e8 67 e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101958:	05 a8 36 00 00       	add    $0x36a8,%eax
  10195d:	8b 45 08             	mov    0x8(%ebp),%eax
  101960:	8b 55 0c             	mov    0xc(%ebp),%edx
  101963:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101967:	88 d0                	mov    %dl,%al
  101969:	88 45 f8             	mov    %al,-0x8(%ebp)
  10196c:	8a 45 f8             	mov    -0x8(%ebp),%al
  10196f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101972:	ee                   	out    %al,(%dx)
  101973:	90                   	nop
  101974:	c9                   	leave  
  101975:	c3                   	ret    

00101976 <initVga>:
  101976:	55                   	push   %ebp
  101977:	89 e5                	mov    %esp,%ebp
  101979:	83 ec 08             	sub    $0x8,%esp
  10197c:	e8 3e e8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101981:	05 7f 36 00 00       	add    $0x367f,%eax
  101986:	c7 80 24 02 00 00 00 	movl   $0x0,0x224(%eax)
  10198d:	00 00 00 
  101990:	c7 80 28 02 00 00 00 	movl   $0x0,0x228(%eax)
  101997:	00 00 00 
  10199a:	c7 80 2c 02 00 00 00 	movl   $0x0,0x22c(%eax)
  1019a1:	00 00 00 
  1019a4:	e8 12 00 00 00       	call   1019bb <clearScreen>
  1019a9:	83 ec 08             	sub    $0x8,%esp
  1019ac:	6a 00                	push   $0x0
  1019ae:	6a 00                	push   $0x0
  1019b0:	e8 5a 00 00 00       	call   101a0f <updateCursor>
  1019b5:	83 c4 10             	add    $0x10,%esp
  1019b8:	90                   	nop
  1019b9:	c9                   	leave  
  1019ba:	c3                   	ret    

001019bb <clearScreen>:
  1019bb:	55                   	push   %ebp
  1019bc:	89 e5                	mov    %esp,%ebp
  1019be:	83 ec 10             	sub    $0x10,%esp
  1019c1:	e8 f9 e7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1019c6:	05 3a 36 00 00       	add    $0x363a,%eax
  1019cb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1019d2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1019d9:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  1019df:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1019e6:	eb 1b                	jmp    101a03 <clearScreen+0x48>
  1019e8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1019eb:	01 c0                	add    %eax,%eax
  1019ed:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1019f0:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1019f3:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1019f9:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  1019fd:	66 89 02             	mov    %ax,(%edx)
  101a00:	ff 45 fc             	incl   -0x4(%ebp)
  101a03:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  101a0a:	7e dc                	jle    1019e8 <clearScreen+0x2d>
  101a0c:	90                   	nop
  101a0d:	c9                   	leave  
  101a0e:	c3                   	ret    

00101a0f <updateCursor>:
  101a0f:	55                   	push   %ebp
  101a10:	89 e5                	mov    %esp,%ebp
  101a12:	83 ec 10             	sub    $0x10,%esp
  101a15:	e8 a5 e7 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101a1a:	05 e6 35 00 00       	add    $0x35e6,%eax
  101a1f:	8b 55 08             	mov    0x8(%ebp),%edx
  101a22:	89 d0                	mov    %edx,%eax
  101a24:	c1 e0 02             	shl    $0x2,%eax
  101a27:	01 d0                	add    %edx,%eax
  101a29:	c1 e0 04             	shl    $0x4,%eax
  101a2c:	89 c2                	mov    %eax,%edx
  101a2e:	8b 45 0c             	mov    0xc(%ebp),%eax
  101a31:	01 d0                	add    %edx,%eax
  101a33:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101a36:	6a 0f                	push   $0xf
  101a38:	68 d4 03 00 00       	push   $0x3d4
  101a3d:	e8 0b ff ff ff       	call   10194d <outByte>
  101a42:	83 c4 08             	add    $0x8,%esp
  101a45:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101a48:	0f be c0             	movsbl %al,%eax
  101a4b:	50                   	push   %eax
  101a4c:	68 d5 03 00 00       	push   $0x3d5
  101a51:	e8 f7 fe ff ff       	call   10194d <outByte>
  101a56:	83 c4 08             	add    $0x8,%esp
  101a59:	6a 0e                	push   $0xe
  101a5b:	68 d4 03 00 00       	push   $0x3d4
  101a60:	e8 e8 fe ff ff       	call   10194d <outByte>
  101a65:	83 c4 08             	add    $0x8,%esp
  101a68:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101a6b:	c1 f8 08             	sar    $0x8,%eax
  101a6e:	0f be c0             	movsbl %al,%eax
  101a71:	50                   	push   %eax
  101a72:	68 d5 03 00 00       	push   $0x3d5
  101a77:	e8 d1 fe ff ff       	call   10194d <outByte>
  101a7c:	83 c4 08             	add    $0x8,%esp
  101a7f:	90                   	nop
  101a80:	c9                   	leave  
  101a81:	c3                   	ret    

00101a82 <scrollScreen>:
  101a82:	55                   	push   %ebp
  101a83:	89 e5                	mov    %esp,%ebp
  101a85:	53                   	push   %ebx
  101a86:	83 ec 10             	sub    $0x10,%esp
  101a89:	e8 d2 00 00 00       	call   101b60 <__x86.get_pc_thunk.dx>
  101a8e:	81 c2 72 35 00 00    	add    $0x3572,%edx
  101a94:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101a9b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101aa2:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  101aa8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101aaf:	eb 2b                	jmp    101adc <scrollScreen+0x5a>
  101ab1:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101ab4:	01 c0                	add    %eax,%eax
  101ab6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101ab9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101abc:	05 00 80 0b 00       	add    $0xb8000,%eax
  101ac1:	66 8b 00             	mov    (%eax),%ax
  101ac4:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  101ac8:	c7 c1 60 a0 12 00    	mov    $0x12a060,%ecx
  101ace:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  101ad1:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  101ad5:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  101ad9:	ff 45 f8             	incl   -0x8(%ebp)
  101adc:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  101ae3:	7e cc                	jle    101ab1 <scrollScreen+0x2f>
  101ae5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101aec:	eb 2f                	jmp    101b1d <scrollScreen+0x9b>
  101aee:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101af1:	01 c0                	add    %eax,%eax
  101af3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101af6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101af9:	8d 48 50             	lea    0x50(%eax),%ecx
  101afc:	c7 c0 60 a0 12 00    	mov    $0x12a060,%eax
  101b02:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  101b06:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  101b0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101b0d:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  101b13:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  101b17:	66 89 01             	mov    %ax,(%ecx)
  101b1a:	ff 45 f8             	incl   -0x8(%ebp)
  101b1d:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  101b24:	7e c8                	jle    101aee <scrollScreen+0x6c>
  101b26:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  101b2c:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  101b33:	eb 1b                	jmp    101b50 <scrollScreen+0xce>
  101b35:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101b38:	01 c0                	add    %eax,%eax
  101b3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101b3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101b40:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  101b46:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  101b4a:	66 89 02             	mov    %ax,(%edx)
  101b4d:	ff 45 f8             	incl   -0x8(%ebp)
  101b50:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  101b57:	7e dc                	jle    101b35 <scrollScreen+0xb3>
  101b59:	90                   	nop
  101b5a:	83 c4 10             	add    $0x10,%esp
  101b5d:	5b                   	pop    %ebx
  101b5e:	5d                   	pop    %ebp
  101b5f:	c3                   	ret    

00101b60 <__x86.get_pc_thunk.dx>:
  101b60:	8b 14 24             	mov    (%esp),%edx
  101b63:	c3                   	ret    

00101b64 <outByte>:
  101b64:	55                   	push   %ebp
  101b65:	89 e5                	mov    %esp,%ebp
  101b67:	83 ec 08             	sub    $0x8,%esp
  101b6a:	e8 50 e6 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101b6f:	05 91 34 00 00       	add    $0x3491,%eax
  101b74:	8b 45 08             	mov    0x8(%ebp),%eax
  101b77:	8b 55 0c             	mov    0xc(%ebp),%edx
  101b7a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101b7e:	88 d0                	mov    %dl,%al
  101b80:	88 45 f8             	mov    %al,-0x8(%ebp)
  101b83:	8a 45 f8             	mov    -0x8(%ebp),%al
  101b86:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101b89:	ee                   	out    %al,(%dx)
  101b8a:	90                   	nop
  101b8b:	c9                   	leave  
  101b8c:	c3                   	ret    

00101b8d <initIntr>:
  101b8d:	55                   	push   %ebp
  101b8e:	89 e5                	mov    %esp,%ebp
  101b90:	e8 2a e6 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101b95:	05 6b 34 00 00       	add    $0x346b,%eax
  101b9a:	6a 11                	push   $0x11
  101b9c:	6a 20                	push   $0x20
  101b9e:	e8 c1 ff ff ff       	call   101b64 <outByte>
  101ba3:	83 c4 08             	add    $0x8,%esp
  101ba6:	6a 11                	push   $0x11
  101ba8:	68 a0 00 00 00       	push   $0xa0
  101bad:	e8 b2 ff ff ff       	call   101b64 <outByte>
  101bb2:	83 c4 08             	add    $0x8,%esp
  101bb5:	6a 20                	push   $0x20
  101bb7:	6a 21                	push   $0x21
  101bb9:	e8 a6 ff ff ff       	call   101b64 <outByte>
  101bbe:	83 c4 08             	add    $0x8,%esp
  101bc1:	6a 28                	push   $0x28
  101bc3:	68 a1 00 00 00       	push   $0xa1
  101bc8:	e8 97 ff ff ff       	call   101b64 <outByte>
  101bcd:	83 c4 08             	add    $0x8,%esp
  101bd0:	6a 04                	push   $0x4
  101bd2:	6a 21                	push   $0x21
  101bd4:	e8 8b ff ff ff       	call   101b64 <outByte>
  101bd9:	83 c4 08             	add    $0x8,%esp
  101bdc:	6a 02                	push   $0x2
  101bde:	68 a1 00 00 00       	push   $0xa1
  101be3:	e8 7c ff ff ff       	call   101b64 <outByte>
  101be8:	83 c4 08             	add    $0x8,%esp
  101beb:	6a 03                	push   $0x3
  101bed:	6a 21                	push   $0x21
  101bef:	e8 70 ff ff ff       	call   101b64 <outByte>
  101bf4:	83 c4 08             	add    $0x8,%esp
  101bf7:	6a 03                	push   $0x3
  101bf9:	68 a1 00 00 00       	push   $0xa1
  101bfe:	e8 61 ff ff ff       	call   101b64 <outByte>
  101c03:	83 c4 08             	add    $0x8,%esp
  101c06:	90                   	nop
  101c07:	c9                   	leave  
  101c08:	c3                   	ret    

00101c09 <inLong>:
  101c09:	55                   	push   %ebp
  101c0a:	89 e5                	mov    %esp,%ebp
  101c0c:	83 ec 14             	sub    $0x14,%esp
  101c0f:	e8 ab e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c14:	05 ec 33 00 00       	add    $0x33ec,%eax
  101c19:	8b 45 08             	mov    0x8(%ebp),%eax
  101c1c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  101c20:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101c23:	89 c2                	mov    %eax,%edx
  101c25:	ed                   	in     (%dx),%eax
  101c26:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101c29:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101c2c:	c9                   	leave  
  101c2d:	c3                   	ret    

00101c2e <outLong>:
  101c2e:	55                   	push   %ebp
  101c2f:	89 e5                	mov    %esp,%ebp
  101c31:	83 ec 04             	sub    $0x4,%esp
  101c34:	e8 86 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c39:	05 c7 33 00 00       	add    $0x33c7,%eax
  101c3e:	8b 45 08             	mov    0x8(%ebp),%eax
  101c41:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101c45:	8b 45 0c             	mov    0xc(%ebp),%eax
  101c48:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101c4b:	ef                   	out    %eax,(%dx)
  101c4c:	90                   	nop
  101c4d:	c9                   	leave  
  101c4e:	c3                   	ret    

00101c4f <inByte>:
  101c4f:	55                   	push   %ebp
  101c50:	89 e5                	mov    %esp,%ebp
  101c52:	83 ec 14             	sub    $0x14,%esp
  101c55:	e8 65 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c5a:	05 a6 33 00 00       	add    $0x33a6,%eax
  101c5f:	8b 45 08             	mov    0x8(%ebp),%eax
  101c62:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  101c66:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101c69:	89 c2                	mov    %eax,%edx
  101c6b:	ec                   	in     (%dx),%al
  101c6c:	88 45 ff             	mov    %al,-0x1(%ebp)
  101c6f:	8a 45 ff             	mov    -0x1(%ebp),%al
  101c72:	c9                   	leave  
  101c73:	c3                   	ret    

00101c74 <outByte>:
  101c74:	55                   	push   %ebp
  101c75:	89 e5                	mov    %esp,%ebp
  101c77:	83 ec 08             	sub    $0x8,%esp
  101c7a:	e8 40 e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101c7f:	05 81 33 00 00       	add    $0x3381,%eax
  101c84:	8b 45 08             	mov    0x8(%ebp),%eax
  101c87:	8b 55 0c             	mov    0xc(%ebp),%edx
  101c8a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101c8e:	88 d0                	mov    %dl,%al
  101c90:	88 45 f8             	mov    %al,-0x8(%ebp)
  101c93:	8a 45 f8             	mov    -0x8(%ebp),%al
  101c96:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101c99:	ee                   	out    %al,(%dx)
  101c9a:	90                   	nop
  101c9b:	c9                   	leave  
  101c9c:	c3                   	ret    

00101c9d <waitDisk>:
  101c9d:	55                   	push   %ebp
  101c9e:	89 e5                	mov    %esp,%ebp
  101ca0:	e8 1a e5 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101ca5:	05 5b 33 00 00       	add    $0x335b,%eax
  101caa:	90                   	nop
  101cab:	68 f7 01 00 00       	push   $0x1f7
  101cb0:	e8 9a ff ff ff       	call   101c4f <inByte>
  101cb5:	83 c4 04             	add    $0x4,%esp
  101cb8:	0f b6 c0             	movzbl %al,%eax
  101cbb:	25 c0 00 00 00       	and    $0xc0,%eax
  101cc0:	83 f8 40             	cmp    $0x40,%eax
  101cc3:	75 e6                	jne    101cab <waitDisk+0xe>
  101cc5:	90                   	nop
  101cc6:	c9                   	leave  
  101cc7:	c3                   	ret    

00101cc8 <readSect>:
  101cc8:	55                   	push   %ebp
  101cc9:	89 e5                	mov    %esp,%ebp
  101ccb:	53                   	push   %ebx
  101ccc:	83 ec 10             	sub    $0x10,%esp
  101ccf:	e8 eb e4 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101cd4:	05 2c 33 00 00       	add    $0x332c,%eax
  101cd9:	e8 bf ff ff ff       	call   101c9d <waitDisk>
  101cde:	6a 01                	push   $0x1
  101ce0:	68 f2 01 00 00       	push   $0x1f2
  101ce5:	e8 8a ff ff ff       	call   101c74 <outByte>
  101cea:	83 c4 08             	add    $0x8,%esp
  101ced:	8b 45 0c             	mov    0xc(%ebp),%eax
  101cf0:	0f be c0             	movsbl %al,%eax
  101cf3:	50                   	push   %eax
  101cf4:	68 f3 01 00 00       	push   $0x1f3
  101cf9:	e8 76 ff ff ff       	call   101c74 <outByte>
  101cfe:	83 c4 08             	add    $0x8,%esp
  101d01:	8b 45 0c             	mov    0xc(%ebp),%eax
  101d04:	c1 f8 08             	sar    $0x8,%eax
  101d07:	0f be c0             	movsbl %al,%eax
  101d0a:	50                   	push   %eax
  101d0b:	68 f4 01 00 00       	push   $0x1f4
  101d10:	e8 5f ff ff ff       	call   101c74 <outByte>
  101d15:	83 c4 08             	add    $0x8,%esp
  101d18:	8b 45 0c             	mov    0xc(%ebp),%eax
  101d1b:	c1 f8 10             	sar    $0x10,%eax
  101d1e:	0f be c0             	movsbl %al,%eax
  101d21:	50                   	push   %eax
  101d22:	68 f5 01 00 00       	push   $0x1f5
  101d27:	e8 48 ff ff ff       	call   101c74 <outByte>
  101d2c:	83 c4 08             	add    $0x8,%esp
  101d2f:	8b 45 0c             	mov    0xc(%ebp),%eax
  101d32:	c1 f8 18             	sar    $0x18,%eax
  101d35:	83 c8 e0             	or     $0xffffffe0,%eax
  101d38:	0f be c0             	movsbl %al,%eax
  101d3b:	50                   	push   %eax
  101d3c:	68 f6 01 00 00       	push   $0x1f6
  101d41:	e8 2e ff ff ff       	call   101c74 <outByte>
  101d46:	83 c4 08             	add    $0x8,%esp
  101d49:	6a 20                	push   $0x20
  101d4b:	68 f7 01 00 00       	push   $0x1f7
  101d50:	e8 1f ff ff ff       	call   101c74 <outByte>
  101d55:	83 c4 08             	add    $0x8,%esp
  101d58:	e8 40 ff ff ff       	call   101c9d <waitDisk>
  101d5d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101d64:	eb 22                	jmp    101d88 <readSect+0xc0>
  101d66:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101d69:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101d70:	8b 45 08             	mov    0x8(%ebp),%eax
  101d73:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  101d76:	68 f0 01 00 00       	push   $0x1f0
  101d7b:	e8 89 fe ff ff       	call   101c09 <inLong>
  101d80:	83 c4 04             	add    $0x4,%esp
  101d83:	89 03                	mov    %eax,(%ebx)
  101d85:	ff 45 f8             	incl   -0x8(%ebp)
  101d88:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  101d8c:	7e d8                	jle    101d66 <readSect+0x9e>
  101d8e:	90                   	nop
  101d8f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101d92:	c9                   	leave  
  101d93:	c3                   	ret    

00101d94 <writeSect>:
  101d94:	55                   	push   %ebp
  101d95:	89 e5                	mov    %esp,%ebp
  101d97:	83 ec 10             	sub    $0x10,%esp
  101d9a:	e8 20 e4 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101d9f:	05 61 32 00 00       	add    $0x3261,%eax
  101da4:	e8 f4 fe ff ff       	call   101c9d <waitDisk>
  101da9:	6a 01                	push   $0x1
  101dab:	68 f2 01 00 00       	push   $0x1f2
  101db0:	e8 bf fe ff ff       	call   101c74 <outByte>
  101db5:	83 c4 08             	add    $0x8,%esp
  101db8:	8b 45 0c             	mov    0xc(%ebp),%eax
  101dbb:	0f be c0             	movsbl %al,%eax
  101dbe:	50                   	push   %eax
  101dbf:	68 f3 01 00 00       	push   $0x1f3
  101dc4:	e8 ab fe ff ff       	call   101c74 <outByte>
  101dc9:	83 c4 08             	add    $0x8,%esp
  101dcc:	8b 45 0c             	mov    0xc(%ebp),%eax
  101dcf:	c1 f8 08             	sar    $0x8,%eax
  101dd2:	0f be c0             	movsbl %al,%eax
  101dd5:	50                   	push   %eax
  101dd6:	68 f4 01 00 00       	push   $0x1f4
  101ddb:	e8 94 fe ff ff       	call   101c74 <outByte>
  101de0:	83 c4 08             	add    $0x8,%esp
  101de3:	8b 45 0c             	mov    0xc(%ebp),%eax
  101de6:	c1 f8 10             	sar    $0x10,%eax
  101de9:	0f be c0             	movsbl %al,%eax
  101dec:	50                   	push   %eax
  101ded:	68 f5 01 00 00       	push   $0x1f5
  101df2:	e8 7d fe ff ff       	call   101c74 <outByte>
  101df7:	83 c4 08             	add    $0x8,%esp
  101dfa:	8b 45 0c             	mov    0xc(%ebp),%eax
  101dfd:	c1 f8 18             	sar    $0x18,%eax
  101e00:	83 c8 e0             	or     $0xffffffe0,%eax
  101e03:	0f be c0             	movsbl %al,%eax
  101e06:	50                   	push   %eax
  101e07:	68 f6 01 00 00       	push   $0x1f6
  101e0c:	e8 63 fe ff ff       	call   101c74 <outByte>
  101e11:	83 c4 08             	add    $0x8,%esp
  101e14:	6a 30                	push   $0x30
  101e16:	68 f7 01 00 00       	push   $0x1f7
  101e1b:	e8 54 fe ff ff       	call   101c74 <outByte>
  101e20:	83 c4 08             	add    $0x8,%esp
  101e23:	e8 75 fe ff ff       	call   101c9d <waitDisk>
  101e28:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101e2f:	eb 22                	jmp    101e53 <writeSect+0xbf>
  101e31:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101e34:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101e3b:	8b 45 08             	mov    0x8(%ebp),%eax
  101e3e:	01 d0                	add    %edx,%eax
  101e40:	8b 00                	mov    (%eax),%eax
  101e42:	50                   	push   %eax
  101e43:	68 f0 01 00 00       	push   $0x1f0
  101e48:	e8 e1 fd ff ff       	call   101c2e <outLong>
  101e4d:	83 c4 08             	add    $0x8,%esp
  101e50:	ff 45 fc             	incl   -0x4(%ebp)
  101e53:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  101e57:	7e d8                	jle    101e31 <writeSect+0x9d>
  101e59:	90                   	nop
  101e5a:	c9                   	leave  
  101e5b:	c3                   	ret    

00101e5c <diskRead>:
  101e5c:	55                   	push   %ebp
  101e5d:	89 e5                	mov    %esp,%ebp
  101e5f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  101e65:	e8 55 e3 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101e6a:	05 96 31 00 00       	add    $0x3196,%eax
  101e6f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101e76:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101e7d:	8b 45 14             	mov    0x14(%ebp),%eax
  101e80:	85 c0                	test   %eax,%eax
  101e82:	79 05                	jns    101e89 <diskRead+0x2d>
  101e84:	05 ff 01 00 00       	add    $0x1ff,%eax
  101e89:	c1 f8 09             	sar    $0x9,%eax
  101e8c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101e8f:	8b 45 14             	mov    0x14(%ebp),%eax
  101e92:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101e97:	85 c0                	test   %eax,%eax
  101e99:	79 07                	jns    101ea2 <diskRead+0x46>
  101e9b:	48                   	dec    %eax
  101e9c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101ea1:	40                   	inc    %eax
  101ea2:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101ea5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101ea8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101eae:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101eb1:	01 d0                	add    %edx,%eax
  101eb3:	50                   	push   %eax
  101eb4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101eba:	50                   	push   %eax
  101ebb:	e8 08 fe ff ff       	call   101cc8 <readSect>
  101ec0:	83 c4 08             	add    $0x8,%esp
  101ec3:	ff 45 f8             	incl   -0x8(%ebp)
  101ec6:	eb 5e                	jmp    101f26 <diskRead+0xca>
  101ec8:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101ecb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101ece:	01 d0                	add    %edx,%eax
  101ed0:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101ed5:	85 c0                	test   %eax,%eax
  101ed7:	79 07                	jns    101ee0 <diskRead+0x84>
  101ed9:	48                   	dec    %eax
  101eda:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101edf:	40                   	inc    %eax
  101ee0:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  101ee3:	8b 55 08             	mov    0x8(%ebp),%edx
  101ee6:	01 ca                	add    %ecx,%edx
  101ee8:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  101eef:	88 02                	mov    %al,(%edx)
  101ef1:	ff 45 fc             	incl   -0x4(%ebp)
  101ef4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101ef7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101efa:	01 d0                	add    %edx,%eax
  101efc:	25 ff 01 00 00       	and    $0x1ff,%eax
  101f01:	85 c0                	test   %eax,%eax
  101f03:	75 21                	jne    101f26 <diskRead+0xca>
  101f05:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101f08:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101f0e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101f11:	01 d0                	add    %edx,%eax
  101f13:	50                   	push   %eax
  101f14:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101f1a:	50                   	push   %eax
  101f1b:	e8 a8 fd ff ff       	call   101cc8 <readSect>
  101f20:	83 c4 08             	add    $0x8,%esp
  101f23:	ff 45 f8             	incl   -0x8(%ebp)
  101f26:	8b 45 0c             	mov    0xc(%ebp),%eax
  101f29:	0f af 45 10          	imul   0x10(%ebp),%eax
  101f2d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101f30:	7c 96                	jl     101ec8 <diskRead+0x6c>
  101f32:	90                   	nop
  101f33:	c9                   	leave  
  101f34:	c3                   	ret    

00101f35 <diskWrite>:
  101f35:	55                   	push   %ebp
  101f36:	89 e5                	mov    %esp,%ebp
  101f38:	81 ec 10 02 00 00    	sub    $0x210,%esp
  101f3e:	e8 7c e2 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  101f43:	05 bd 30 00 00       	add    $0x30bd,%eax
  101f48:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101f4f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101f56:	8b 45 14             	mov    0x14(%ebp),%eax
  101f59:	85 c0                	test   %eax,%eax
  101f5b:	79 05                	jns    101f62 <diskWrite+0x2d>
  101f5d:	05 ff 01 00 00       	add    $0x1ff,%eax
  101f62:	c1 f8 09             	sar    $0x9,%eax
  101f65:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101f68:	8b 45 14             	mov    0x14(%ebp),%eax
  101f6b:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101f70:	85 c0                	test   %eax,%eax
  101f72:	79 07                	jns    101f7b <diskWrite+0x46>
  101f74:	48                   	dec    %eax
  101f75:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101f7a:	40                   	inc    %eax
  101f7b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101f7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101f81:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101f87:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101f8a:	01 d0                	add    %edx,%eax
  101f8c:	50                   	push   %eax
  101f8d:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101f93:	50                   	push   %eax
  101f94:	e8 2f fd ff ff       	call   101cc8 <readSect>
  101f99:	83 c4 08             	add    $0x8,%esp
  101f9c:	eb 7f                	jmp    10201d <diskWrite+0xe8>
  101f9e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101fa1:	8b 45 08             	mov    0x8(%ebp),%eax
  101fa4:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  101fa7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101faa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101fad:	01 d0                	add    %edx,%eax
  101faf:	25 ff 01 00 80       	and    $0x800001ff,%eax
  101fb4:	85 c0                	test   %eax,%eax
  101fb6:	79 07                	jns    101fbf <diskWrite+0x8a>
  101fb8:	48                   	dec    %eax
  101fb9:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  101fbe:	40                   	inc    %eax
  101fbf:	89 c2                	mov    %eax,%edx
  101fc1:	8a 01                	mov    (%ecx),%al
  101fc3:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  101fca:	ff 45 fc             	incl   -0x4(%ebp)
  101fcd:	8b 55 f0             	mov    -0x10(%ebp),%edx
  101fd0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101fd3:	01 d0                	add    %edx,%eax
  101fd5:	25 ff 01 00 00       	and    $0x1ff,%eax
  101fda:	85 c0                	test   %eax,%eax
  101fdc:	75 3f                	jne    10201d <diskWrite+0xe8>
  101fde:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101fe1:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  101fe7:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101fea:	01 d0                	add    %edx,%eax
  101fec:	50                   	push   %eax
  101fed:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  101ff3:	50                   	push   %eax
  101ff4:	e8 9b fd ff ff       	call   101d94 <writeSect>
  101ff9:	83 c4 08             	add    $0x8,%esp
  101ffc:	ff 45 f8             	incl   -0x8(%ebp)
  101fff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102002:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  102008:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10200b:	01 d0                	add    %edx,%eax
  10200d:	50                   	push   %eax
  10200e:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102014:	50                   	push   %eax
  102015:	e8 ae fc ff ff       	call   101cc8 <readSect>
  10201a:	83 c4 08             	add    $0x8,%esp
  10201d:	8b 45 0c             	mov    0xc(%ebp),%eax
  102020:	0f af 45 10          	imul   0x10(%ebp),%eax
  102024:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  102027:	0f 8c 71 ff ff ff    	jl     101f9e <diskWrite+0x69>
  10202d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102030:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  102036:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102039:	01 d0                	add    %edx,%eax
  10203b:	50                   	push   %eax
  10203c:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102042:	50                   	push   %eax
  102043:	e8 4c fd ff ff       	call   101d94 <writeSect>
  102048:	83 c4 08             	add    $0x8,%esp
  10204b:	90                   	nop
  10204c:	c9                   	leave  
  10204d:	c3                   	ret    

0010204e <saveIdt>:
  10204e:	55                   	push   %ebp
  10204f:	89 e5                	mov    %esp,%ebp
  102051:	e8 69 e1 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102056:	05 aa 2f 00 00       	add    $0x2faa,%eax
  10205b:	8b 55 0c             	mov    0xc(%ebp),%edx
  10205e:	4a                   	dec    %edx
  10205f:	66 89 90 30 02 00 00 	mov    %dx,0x230(%eax)
  102066:	8b 55 08             	mov    0x8(%ebp),%edx
  102069:	66 89 90 32 02 00 00 	mov    %dx,0x232(%eax)
  102070:	8b 55 08             	mov    0x8(%ebp),%edx
  102073:	c1 ea 10             	shr    $0x10,%edx
  102076:	66 89 90 34 02 00 00 	mov    %dx,0x234(%eax)
  10207d:	8d 80 30 02 00 00    	lea    0x230(%eax),%eax
  102083:	0f 01 18             	lidtl  (%eax)
  102086:	90                   	nop
  102087:	5d                   	pop    %ebp
  102088:	c3                   	ret    

00102089 <setIntr>:
  102089:	55                   	push   %ebp
  10208a:	89 e5                	mov    %esp,%ebp
  10208c:	e8 2e e1 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102091:	05 6f 2f 00 00       	add    $0x2f6f,%eax
  102096:	8b 45 10             	mov    0x10(%ebp),%eax
  102099:	8b 55 08             	mov    0x8(%ebp),%edx
  10209c:	66 89 02             	mov    %ax,(%edx)
  10209f:	8b 45 0c             	mov    0xc(%ebp),%eax
  1020a2:	c1 e0 03             	shl    $0x3,%eax
  1020a5:	8b 55 08             	mov    0x8(%ebp),%edx
  1020a8:	66 89 42 02          	mov    %ax,0x2(%edx)
  1020ac:	8b 45 08             	mov    0x8(%ebp),%eax
  1020af:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1020b3:	8b 45 08             	mov    0x8(%ebp),%eax
  1020b6:	8a 50 05             	mov    0x5(%eax),%dl
  1020b9:	83 e2 f0             	and    $0xfffffff0,%edx
  1020bc:	83 ca 0e             	or     $0xe,%edx
  1020bf:	88 50 05             	mov    %dl,0x5(%eax)
  1020c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1020c5:	8a 50 05             	mov    0x5(%eax),%dl
  1020c8:	83 e2 ef             	and    $0xffffffef,%edx
  1020cb:	88 50 05             	mov    %dl,0x5(%eax)
  1020ce:	8b 45 14             	mov    0x14(%ebp),%eax
  1020d1:	88 c2                	mov    %al,%dl
  1020d3:	83 e2 03             	and    $0x3,%edx
  1020d6:	8b 45 08             	mov    0x8(%ebp),%eax
  1020d9:	83 e2 03             	and    $0x3,%edx
  1020dc:	88 d1                	mov    %dl,%cl
  1020de:	c1 e1 05             	shl    $0x5,%ecx
  1020e1:	8a 50 05             	mov    0x5(%eax),%dl
  1020e4:	83 e2 9f             	and    $0xffffff9f,%edx
  1020e7:	09 ca                	or     %ecx,%edx
  1020e9:	88 50 05             	mov    %dl,0x5(%eax)
  1020ec:	8b 45 08             	mov    0x8(%ebp),%eax
  1020ef:	8a 50 05             	mov    0x5(%eax),%dl
  1020f2:	83 ca 80             	or     $0xffffff80,%edx
  1020f5:	88 50 05             	mov    %dl,0x5(%eax)
  1020f8:	8b 45 10             	mov    0x10(%ebp),%eax
  1020fb:	c1 e8 10             	shr    $0x10,%eax
  1020fe:	8b 55 08             	mov    0x8(%ebp),%edx
  102101:	66 89 42 06          	mov    %ax,0x6(%edx)
  102105:	90                   	nop
  102106:	5d                   	pop    %ebp
  102107:	c3                   	ret    

00102108 <setTrap>:
  102108:	55                   	push   %ebp
  102109:	89 e5                	mov    %esp,%ebp
  10210b:	e8 af e0 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102110:	05 f0 2e 00 00       	add    $0x2ef0,%eax
  102115:	8b 45 10             	mov    0x10(%ebp),%eax
  102118:	8b 55 08             	mov    0x8(%ebp),%edx
  10211b:	66 89 02             	mov    %ax,(%edx)
  10211e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102121:	c1 e0 03             	shl    $0x3,%eax
  102124:	8b 55 08             	mov    0x8(%ebp),%edx
  102127:	66 89 42 02          	mov    %ax,0x2(%edx)
  10212b:	8b 45 08             	mov    0x8(%ebp),%eax
  10212e:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  102132:	8b 45 08             	mov    0x8(%ebp),%eax
  102135:	8a 50 05             	mov    0x5(%eax),%dl
  102138:	83 ca 0f             	or     $0xf,%edx
  10213b:	88 50 05             	mov    %dl,0x5(%eax)
  10213e:	8b 45 08             	mov    0x8(%ebp),%eax
  102141:	8a 50 05             	mov    0x5(%eax),%dl
  102144:	83 e2 ef             	and    $0xffffffef,%edx
  102147:	88 50 05             	mov    %dl,0x5(%eax)
  10214a:	8b 45 14             	mov    0x14(%ebp),%eax
  10214d:	88 c2                	mov    %al,%dl
  10214f:	83 e2 03             	and    $0x3,%edx
  102152:	8b 45 08             	mov    0x8(%ebp),%eax
  102155:	83 e2 03             	and    $0x3,%edx
  102158:	88 d1                	mov    %dl,%cl
  10215a:	c1 e1 05             	shl    $0x5,%ecx
  10215d:	8a 50 05             	mov    0x5(%eax),%dl
  102160:	83 e2 9f             	and    $0xffffff9f,%edx
  102163:	09 ca                	or     %ecx,%edx
  102165:	88 50 05             	mov    %dl,0x5(%eax)
  102168:	8b 45 08             	mov    0x8(%ebp),%eax
  10216b:	8a 50 05             	mov    0x5(%eax),%dl
  10216e:	83 ca 80             	or     $0xffffff80,%edx
  102171:	88 50 05             	mov    %dl,0x5(%eax)
  102174:	8b 45 10             	mov    0x10(%ebp),%eax
  102177:	c1 e8 10             	shr    $0x10,%eax
  10217a:	8b 55 08             	mov    0x8(%ebp),%edx
  10217d:	66 89 42 06          	mov    %ax,0x6(%edx)
  102181:	90                   	nop
  102182:	5d                   	pop    %ebp
  102183:	c3                   	ret    

00102184 <initIdt>:
  102184:	55                   	push   %ebp
  102185:	89 e5                	mov    %esp,%ebp
  102187:	53                   	push   %ebx
  102188:	83 ec 10             	sub    $0x10,%esp
  10218b:	e8 b1 de ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  102190:	81 c3 70 2e 00 00    	add    $0x2e70,%ebx
  102196:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10219d:	eb 2b                	jmp    1021ca <initIdt+0x46>
  10219f:	c7 c0 fe 33 10 00    	mov    $0x1033fe,%eax
  1021a5:	89 c2                	mov    %eax,%edx
  1021a7:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1021aa:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  1021b1:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1021b7:	01 c8                	add    %ecx,%eax
  1021b9:	6a 00                	push   $0x0
  1021bb:	52                   	push   %edx
  1021bc:	6a 01                	push   $0x1
  1021be:	50                   	push   %eax
  1021bf:	e8 44 ff ff ff       	call   102108 <setTrap>
  1021c4:	83 c4 10             	add    $0x10,%esp
  1021c7:	ff 45 f8             	incl   -0x8(%ebp)
  1021ca:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  1021d1:	7e cc                	jle    10219f <initIdt+0x1b>
  1021d3:	c7 c0 08 34 10 00    	mov    $0x103408,%eax
  1021d9:	89 c2                	mov    %eax,%edx
  1021db:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1021e1:	8d 40 40             	lea    0x40(%eax),%eax
  1021e4:	6a 00                	push   $0x0
  1021e6:	52                   	push   %edx
  1021e7:	6a 01                	push   $0x1
  1021e9:	50                   	push   %eax
  1021ea:	e8 19 ff ff ff       	call   102108 <setTrap>
  1021ef:	83 c4 10             	add    $0x10,%esp
  1021f2:	c7 c0 0c 34 10 00    	mov    $0x10340c,%eax
  1021f8:	89 c2                	mov    %eax,%edx
  1021fa:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102200:	8d 40 50             	lea    0x50(%eax),%eax
  102203:	6a 00                	push   $0x0
  102205:	52                   	push   %edx
  102206:	6a 01                	push   $0x1
  102208:	50                   	push   %eax
  102209:	e8 fa fe ff ff       	call   102108 <setTrap>
  10220e:	83 c4 10             	add    $0x10,%esp
  102211:	c7 c0 10 34 10 00    	mov    $0x103410,%eax
  102217:	89 c2                	mov    %eax,%edx
  102219:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  10221f:	8d 40 58             	lea    0x58(%eax),%eax
  102222:	6a 00                	push   $0x0
  102224:	52                   	push   %edx
  102225:	6a 01                	push   $0x1
  102227:	50                   	push   %eax
  102228:	e8 db fe ff ff       	call   102108 <setTrap>
  10222d:	83 c4 10             	add    $0x10,%esp
  102230:	c7 c0 14 34 10 00    	mov    $0x103414,%eax
  102236:	89 c2                	mov    %eax,%edx
  102238:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  10223e:	8d 40 60             	lea    0x60(%eax),%eax
  102241:	6a 00                	push   $0x0
  102243:	52                   	push   %edx
  102244:	6a 01                	push   $0x1
  102246:	50                   	push   %eax
  102247:	e8 bc fe ff ff       	call   102108 <setTrap>
  10224c:	83 c4 10             	add    $0x10,%esp
  10224f:	c7 c0 18 34 10 00    	mov    $0x103418,%eax
  102255:	89 c2                	mov    %eax,%edx
  102257:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  10225d:	8d 40 68             	lea    0x68(%eax),%eax
  102260:	6a 00                	push   $0x0
  102262:	52                   	push   %edx
  102263:	6a 01                	push   $0x1
  102265:	50                   	push   %eax
  102266:	e8 9d fe ff ff       	call   102108 <setTrap>
  10226b:	83 c4 10             	add    $0x10,%esp
  10226e:	c7 c0 1c 34 10 00    	mov    $0x10341c,%eax
  102274:	89 c2                	mov    %eax,%edx
  102276:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  10227c:	8d 40 70             	lea    0x70(%eax),%eax
  10227f:	6a 00                	push   $0x0
  102281:	52                   	push   %edx
  102282:	6a 01                	push   $0x1
  102284:	50                   	push   %eax
  102285:	e8 7e fe ff ff       	call   102108 <setTrap>
  10228a:	83 c4 10             	add    $0x10,%esp
  10228d:	c7 c0 20 34 10 00    	mov    $0x103420,%eax
  102293:	89 c2                	mov    %eax,%edx
  102295:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  10229b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  1022a1:	6a 00                	push   $0x0
  1022a3:	52                   	push   %edx
  1022a4:	6a 01                	push   $0x1
  1022a6:	50                   	push   %eax
  1022a7:	e8 5c fe ff ff       	call   102108 <setTrap>
  1022ac:	83 c4 10             	add    $0x10,%esp
  1022af:	c7 c0 24 34 10 00    	mov    $0x103424,%eax
  1022b5:	89 c2                	mov    %eax,%edx
  1022b7:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1022bd:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  1022c3:	6a 00                	push   $0x0
  1022c5:	52                   	push   %edx
  1022c6:	6a 01                	push   $0x1
  1022c8:	50                   	push   %eax
  1022c9:	e8 3a fe ff ff       	call   102108 <setTrap>
  1022ce:	83 c4 10             	add    $0x10,%esp
  1022d1:	c7 c0 28 34 10 00    	mov    $0x103428,%eax
  1022d7:	89 c2                	mov    %eax,%edx
  1022d9:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  1022df:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  1022e5:	6a 00                	push   $0x0
  1022e7:	52                   	push   %edx
  1022e8:	6a 01                	push   $0x1
  1022ea:	50                   	push   %eax
  1022eb:	e8 99 fd ff ff       	call   102089 <setIntr>
  1022f0:	83 c4 10             	add    $0x10,%esp
  1022f3:	c7 c0 2e 34 10 00    	mov    $0x10342e,%eax
  1022f9:	89 c2                	mov    %eax,%edx
  1022fb:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102301:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  102307:	6a 00                	push   $0x0
  102309:	52                   	push   %edx
  10230a:	6a 01                	push   $0x1
  10230c:	50                   	push   %eax
  10230d:	e8 77 fd ff ff       	call   102089 <setIntr>
  102312:	83 c4 10             	add    $0x10,%esp
  102315:	c7 c0 34 34 10 00    	mov    $0x103434,%eax
  10231b:	89 c2                	mov    %eax,%edx
  10231d:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102323:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  102329:	6a 03                	push   $0x3
  10232b:	52                   	push   %edx
  10232c:	6a 01                	push   $0x1
  10232e:	50                   	push   %eax
  10232f:	e8 55 fd ff ff       	call   102089 <setIntr>
  102334:	83 c4 10             	add    $0x10,%esp
  102337:	68 00 08 00 00       	push   $0x800
  10233c:	c7 c0 00 b0 12 00    	mov    $0x12b000,%eax
  102342:	50                   	push   %eax
  102343:	e8 06 fd ff ff       	call   10204e <saveIdt>
  102348:	83 c4 08             	add    $0x8,%esp
  10234b:	90                   	nop
  10234c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10234f:	c9                   	leave  
  102350:	c3                   	ret    

00102351 <irqHandle>:
  102351:	55                   	push   %ebp
  102352:	89 e5                	mov    %esp,%ebp
  102354:	56                   	push   %esi
  102355:	53                   	push   %ebx
  102356:	83 ec 10             	sub    $0x10,%esp
  102359:	e8 e3 dc ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  10235e:	81 c3 a2 2c 00 00    	add    $0x2ca2,%ebx
  102364:	b8 10 00 00 00       	mov    $0x10,%eax
  102369:	8e d8                	mov    %eax,%ds
  10236b:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102371:	8b 10                	mov    (%eax),%edx
  102373:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102379:	89 d0                	mov    %edx,%eax
  10237b:	c1 e0 07             	shl    $0x7,%eax
  10237e:	01 d0                	add    %edx,%eax
  102380:	c1 e0 05             	shl    $0x5,%eax
  102383:	01 d0                	add    %edx,%eax
  102385:	c1 e0 02             	shl    $0x2,%eax
  102388:	01 c8                	add    %ecx,%eax
  10238a:	05 4c 40 00 00       	add    $0x404c,%eax
  10238f:	8b 00                	mov    (%eax),%eax
  102391:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102394:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  10239a:	8b 08                	mov    (%eax),%ecx
  10239c:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1023a2:	8b 10                	mov    (%eax),%edx
  1023a4:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1023aa:	89 c8                	mov    %ecx,%eax
  1023ac:	c1 e0 07             	shl    $0x7,%eax
  1023af:	01 c8                	add    %ecx,%eax
  1023b1:	c1 e0 05             	shl    $0x5,%eax
  1023b4:	01 c8                	add    %ecx,%eax
  1023b6:	c1 e0 02             	shl    $0x2,%eax
  1023b9:	01 f0                	add    %esi,%eax
  1023bb:	05 4c 40 00 00       	add    $0x404c,%eax
  1023c0:	8b 08                	mov    (%eax),%ecx
  1023c2:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1023c8:	89 d0                	mov    %edx,%eax
  1023ca:	c1 e0 07             	shl    $0x7,%eax
  1023cd:	01 d0                	add    %edx,%eax
  1023cf:	c1 e0 05             	shl    $0x5,%eax
  1023d2:	01 d0                	add    %edx,%eax
  1023d4:	c1 e0 02             	shl    $0x2,%eax
  1023d7:	01 f0                	add    %esi,%eax
  1023d9:	05 50 40 00 00       	add    $0x4050,%eax
  1023de:	89 08                	mov    %ecx,(%eax)
  1023e0:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1023e6:	8b 10                	mov    (%eax),%edx
  1023e8:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1023eb:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1023f1:	89 d0                	mov    %edx,%eax
  1023f3:	c1 e0 07             	shl    $0x7,%eax
  1023f6:	01 d0                	add    %edx,%eax
  1023f8:	c1 e0 05             	shl    $0x5,%eax
  1023fb:	01 d0                	add    %edx,%eax
  1023fd:	c1 e0 02             	shl    $0x2,%eax
  102400:	01 f0                	add    %esi,%eax
  102402:	05 4c 40 00 00       	add    $0x404c,%eax
  102407:	89 08                	mov    %ecx,(%eax)
  102409:	8b 45 08             	mov    0x8(%ebp),%eax
  10240c:	8b 40 30             	mov    0x30(%eax),%eax
  10240f:	83 f8 21             	cmp    $0x21,%eax
  102412:	74 3f                	je     102453 <irqHandle+0x102>
  102414:	83 f8 21             	cmp    $0x21,%eax
  102417:	77 0c                	ja     102425 <irqHandle+0xd4>
  102419:	83 f8 0d             	cmp    $0xd,%eax
  10241c:	74 15                	je     102433 <irqHandle+0xe2>
  10241e:	83 f8 20             	cmp    $0x20,%eax
  102421:	74 20                	je     102443 <irqHandle+0xf2>
  102423:	eb 4e                	jmp    102473 <irqHandle+0x122>
  102425:	3d 80 00 00 00       	cmp    $0x80,%eax
  10242a:	74 37                	je     102463 <irqHandle+0x112>
  10242c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10242f:	74 58                	je     102489 <irqHandle+0x138>
  102431:	eb 40                	jmp    102473 <irqHandle+0x122>
  102433:	83 ec 0c             	sub    $0xc,%esp
  102436:	ff 75 08             	pushl  0x8(%ebp)
  102439:	e8 90 0f 00 00       	call   1033ce <GProtectFaultHandle>
  10243e:	83 c4 10             	add    $0x10,%esp
  102441:	eb 47                	jmp    10248a <irqHandle+0x139>
  102443:	83 ec 0c             	sub    $0xc,%esp
  102446:	ff 75 08             	pushl  0x8(%ebp)
  102449:	e8 bc 01 00 00       	call   10260a <timerHandle>
  10244e:	83 c4 10             	add    $0x10,%esp
  102451:	eb 37                	jmp    10248a <irqHandle+0x139>
  102453:	83 ec 0c             	sub    $0xc,%esp
  102456:	ff 75 08             	pushl  0x8(%ebp)
  102459:	e8 34 04 00 00       	call   102892 <keyboardHandle>
  10245e:	83 c4 10             	add    $0x10,%esp
  102461:	eb 27                	jmp    10248a <irqHandle+0x139>
  102463:	83 ec 0c             	sub    $0xc,%esp
  102466:	ff 75 08             	pushl  0x8(%ebp)
  102469:	e8 4e 00 00 00       	call   1024bc <syscallHandle>
  10246e:	83 c4 10             	add    $0x10,%esp
  102471:	eb 17                	jmp    10248a <irqHandle+0x139>
  102473:	83 ec 08             	sub    $0x8,%esp
  102476:	6a 3b                	push   $0x3b
  102478:	8d 83 70 e4 ff ff    	lea    -0x1b90(%ebx),%eax
  10247e:	50                   	push   %eax
  10247f:	e8 0e dd ff ff       	call   100192 <abort>
  102484:	83 c4 10             	add    $0x10,%esp
  102487:	eb 01                	jmp    10248a <irqHandle+0x139>
  102489:	90                   	nop
  10248a:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102490:	8b 10                	mov    (%eax),%edx
  102492:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102498:	89 d0                	mov    %edx,%eax
  10249a:	c1 e0 07             	shl    $0x7,%eax
  10249d:	01 d0                	add    %edx,%eax
  10249f:	c1 e0 05             	shl    $0x5,%eax
  1024a2:	01 d0                	add    %edx,%eax
  1024a4:	c1 e0 02             	shl    $0x2,%eax
  1024a7:	01 c8                	add    %ecx,%eax
  1024a9:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  1024af:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1024b2:	89 02                	mov    %eax,(%edx)
  1024b4:	90                   	nop
  1024b5:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1024b8:	5b                   	pop    %ebx
  1024b9:	5e                   	pop    %esi
  1024ba:	5d                   	pop    %ebp
  1024bb:	c3                   	ret    

001024bc <syscallHandle>:
  1024bc:	55                   	push   %ebp
  1024bd:	89 e5                	mov    %esp,%ebp
  1024bf:	83 ec 08             	sub    $0x8,%esp
  1024c2:	e8 f8 dc ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1024c7:	05 39 2b 00 00       	add    $0x2b39,%eax
  1024cc:	8b 55 08             	mov    0x8(%ebp),%edx
  1024cf:	8b 52 2c             	mov    0x2c(%edx),%edx
  1024d2:	83 fa 04             	cmp    $0x4,%edx
  1024d5:	77 5e                	ja     102535 <.L18+0x10>
  1024d7:	c1 e2 02             	shl    $0x2,%edx
  1024da:	8b 94 02 84 e4 ff ff 	mov    -0x1b7c(%edx,%eax,1),%edx
  1024e1:	01 d0                	add    %edx,%eax
  1024e3:	ff e0                	jmp    *%eax

001024e5 <.L13>:
  1024e5:	83 ec 0c             	sub    $0xc,%esp
  1024e8:	ff 75 08             	pushl  0x8(%ebp)
  1024eb:	e8 1f 04 00 00       	call   10290f <syscallWrite>
  1024f0:	83 c4 10             	add    $0x10,%esp
  1024f3:	eb 41                	jmp    102536 <.L18+0x11>

001024f5 <.L15>:
  1024f5:	83 ec 0c             	sub    $0xc,%esp
  1024f8:	ff 75 08             	pushl  0x8(%ebp)
  1024fb:	e8 d0 05 00 00       	call   102ad0 <syscallFork>
  102500:	83 c4 10             	add    $0x10,%esp
  102503:	eb 31                	jmp    102536 <.L18+0x11>

00102505 <.L16>:
  102505:	83 ec 0c             	sub    $0xc,%esp
  102508:	ff 75 08             	pushl  0x8(%ebp)
  10250b:	e8 56 0d 00 00       	call   103266 <syscallExec>
  102510:	83 c4 10             	add    $0x10,%esp
  102513:	eb 21                	jmp    102536 <.L18+0x11>

00102515 <.L17>:
  102515:	83 ec 0c             	sub    $0xc,%esp
  102518:	ff 75 08             	pushl  0x8(%ebp)
  10251b:	e8 f0 0d 00 00       	call   103310 <syscallSleep>
  102520:	83 c4 10             	add    $0x10,%esp
  102523:	eb 11                	jmp    102536 <.L18+0x11>

00102525 <.L18>:
  102525:	83 ec 0c             	sub    $0xc,%esp
  102528:	ff 75 08             	pushl  0x8(%ebp)
  10252b:	e8 62 0e 00 00       	call   103392 <syscallExit>
  102530:	83 c4 10             	add    $0x10,%esp
  102533:	eb 01                	jmp    102536 <.L18+0x11>
  102535:	90                   	nop
  102536:	90                   	nop
  102537:	c9                   	leave  
  102538:	c3                   	ret    

00102539 <__switch__>:
  102539:	55                   	push   %ebp
  10253a:	89 e5                	mov    %esp,%ebp
  10253c:	56                   	push   %esi
  10253d:	53                   	push   %ebx
  10253e:	83 ec 10             	sub    $0x10,%esp
  102541:	e8 79 dc ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102546:	05 ba 2a 00 00       	add    $0x2aba,%eax
  10254b:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102551:	8b 0a                	mov    (%edx),%ecx
  102553:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102559:	89 ca                	mov    %ecx,%edx
  10255b:	c1 e2 07             	shl    $0x7,%edx
  10255e:	01 ca                	add    %ecx,%edx
  102560:	c1 e2 05             	shl    $0x5,%edx
  102563:	01 ca                	add    %ecx,%edx
  102565:	c1 e2 02             	shl    $0x2,%edx
  102568:	01 da                	add    %ebx,%edx
  10256a:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  102570:	8b 12                	mov    (%edx),%edx
  102572:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102575:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  10257b:	8b 1a                	mov    (%edx),%ebx
  10257d:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102583:	8b 0a                	mov    (%edx),%ecx
  102585:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  10258b:	89 da                	mov    %ebx,%edx
  10258d:	c1 e2 07             	shl    $0x7,%edx
  102590:	01 da                	add    %ebx,%edx
  102592:	c1 e2 05             	shl    $0x5,%edx
  102595:	01 da                	add    %ebx,%edx
  102597:	c1 e2 02             	shl    $0x2,%edx
  10259a:	01 f2                	add    %esi,%edx
  10259c:	81 c2 50 40 00 00    	add    $0x4050,%edx
  1025a2:	8b 1a                	mov    (%edx),%ebx
  1025a4:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1025aa:	89 ca                	mov    %ecx,%edx
  1025ac:	c1 e2 07             	shl    $0x7,%edx
  1025af:	01 ca                	add    %ecx,%edx
  1025b1:	c1 e2 05             	shl    $0x5,%edx
  1025b4:	01 ca                	add    %ecx,%edx
  1025b6:	c1 e2 02             	shl    $0x2,%edx
  1025b9:	01 f2                	add    %esi,%edx
  1025bb:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  1025c1:	89 1a                	mov    %ebx,(%edx)
  1025c3:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  1025c9:	8b 0a                	mov    (%edx),%ecx
  1025cb:	89 ca                	mov    %ecx,%edx
  1025cd:	c1 e2 07             	shl    $0x7,%edx
  1025d0:	01 ca                	add    %ecx,%edx
  1025d2:	c1 e2 05             	shl    $0x5,%edx
  1025d5:	01 ca                	add    %ecx,%edx
  1025d7:	c1 e2 02             	shl    $0x2,%edx
  1025da:	8d 8a 40 40 00 00    	lea    0x4040(%edx),%ecx
  1025e0:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  1025e6:	01 ca                	add    %ecx,%edx
  1025e8:	83 c2 0c             	add    $0xc,%edx
  1025eb:	c7 c0 e0 52 10 00    	mov    $0x1052e0,%eax
  1025f1:	89 50 04             	mov    %edx,0x4(%eax)
  1025f4:	8b 65 f4             	mov    -0xc(%ebp),%esp
  1025f7:	0f a9                	pop    %gs
  1025f9:	0f a1                	pop    %fs
  1025fb:	07                   	pop    %es
  1025fc:	1f                   	pop    %ds
  1025fd:	61                   	popa   
  1025fe:	83 c4 08             	add    $0x8,%esp
  102601:	cf                   	iret   
  102602:	90                   	nop
  102603:	83 c4 10             	add    $0x10,%esp
  102606:	5b                   	pop    %ebx
  102607:	5e                   	pop    %esi
  102608:	5d                   	pop    %ebp
  102609:	c3                   	ret    

0010260a <timerHandle>:
  10260a:	55                   	push   %ebp
  10260b:	89 e5                	mov    %esp,%ebp
  10260d:	56                   	push   %esi
  10260e:	53                   	push   %ebx
  10260f:	83 ec 10             	sub    $0x10,%esp
  102612:	e8 2a da ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  102617:	81 c3 e9 29 00 00    	add    $0x29e9,%ebx
  10261d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102624:	e9 be 00 00 00       	jmp    1026e7 <timerHandle+0xdd>
  102629:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10262f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102632:	89 d0                	mov    %edx,%eax
  102634:	c1 e0 07             	shl    $0x7,%eax
  102637:	01 d0                	add    %edx,%eax
  102639:	c1 e0 05             	shl    $0x5,%eax
  10263c:	01 d0                	add    %edx,%eax
  10263e:	c1 e0 02             	shl    $0x2,%eax
  102641:	01 c8                	add    %ecx,%eax
  102643:	05 54 40 00 00       	add    $0x4054,%eax
  102648:	8b 00                	mov    (%eax),%eax
  10264a:	83 f8 02             	cmp    $0x2,%eax
  10264d:	0f 85 91 00 00 00    	jne    1026e4 <timerHandle+0xda>
  102653:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102659:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10265c:	89 d0                	mov    %edx,%eax
  10265e:	c1 e0 07             	shl    $0x7,%eax
  102661:	01 d0                	add    %edx,%eax
  102663:	c1 e0 05             	shl    $0x5,%eax
  102666:	01 d0                	add    %edx,%eax
  102668:	c1 e0 02             	shl    $0x2,%eax
  10266b:	01 c8                	add    %ecx,%eax
  10266d:	05 5c 40 00 00       	add    $0x405c,%eax
  102672:	8b 00                	mov    (%eax),%eax
  102674:	85 c0                	test   %eax,%eax
  102676:	75 27                	jne    10269f <timerHandle+0x95>
  102678:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10267e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102681:	89 d0                	mov    %edx,%eax
  102683:	c1 e0 07             	shl    $0x7,%eax
  102686:	01 d0                	add    %edx,%eax
  102688:	c1 e0 05             	shl    $0x5,%eax
  10268b:	01 d0                	add    %edx,%eax
  10268d:	c1 e0 02             	shl    $0x2,%eax
  102690:	01 c8                	add    %ecx,%eax
  102692:	05 54 40 00 00       	add    $0x4054,%eax
  102697:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10269d:	eb 45                	jmp    1026e4 <timerHandle+0xda>
  10269f:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1026a5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1026a8:	89 d0                	mov    %edx,%eax
  1026aa:	c1 e0 07             	shl    $0x7,%eax
  1026ad:	01 d0                	add    %edx,%eax
  1026af:	c1 e0 05             	shl    $0x5,%eax
  1026b2:	01 d0                	add    %edx,%eax
  1026b4:	c1 e0 02             	shl    $0x2,%eax
  1026b7:	01 c8                	add    %ecx,%eax
  1026b9:	05 5c 40 00 00       	add    $0x405c,%eax
  1026be:	8b 00                	mov    (%eax),%eax
  1026c0:	8d 48 ff             	lea    -0x1(%eax),%ecx
  1026c3:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1026c9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1026cc:	89 d0                	mov    %edx,%eax
  1026ce:	c1 e0 07             	shl    $0x7,%eax
  1026d1:	01 d0                	add    %edx,%eax
  1026d3:	c1 e0 05             	shl    $0x5,%eax
  1026d6:	01 d0                	add    %edx,%eax
  1026d8:	c1 e0 02             	shl    $0x2,%eax
  1026db:	01 f0                	add    %esi,%eax
  1026dd:	05 5c 40 00 00       	add    $0x405c,%eax
  1026e2:	89 08                	mov    %ecx,(%eax)
  1026e4:	ff 45 f4             	incl   -0xc(%ebp)
  1026e7:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  1026eb:	0f 8e 38 ff ff ff    	jle    102629 <timerHandle+0x1f>
  1026f1:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1026f7:	8b 10                	mov    (%eax),%edx
  1026f9:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1026ff:	89 d0                	mov    %edx,%eax
  102701:	c1 e0 07             	shl    $0x7,%eax
  102704:	01 d0                	add    %edx,%eax
  102706:	c1 e0 05             	shl    $0x5,%eax
  102709:	01 d0                	add    %edx,%eax
  10270b:	c1 e0 02             	shl    $0x2,%eax
  10270e:	01 c8                	add    %ecx,%eax
  102710:	05 58 40 00 00       	add    $0x4058,%eax
  102715:	8b 00                	mov    (%eax),%eax
  102717:	83 f8 0f             	cmp    $0xf,%eax
  10271a:	7f 2f                	jg     10274b <timerHandle+0x141>
  10271c:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102722:	8b 10                	mov    (%eax),%edx
  102724:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  10272a:	89 d0                	mov    %edx,%eax
  10272c:	c1 e0 07             	shl    $0x7,%eax
  10272f:	01 d0                	add    %edx,%eax
  102731:	c1 e0 05             	shl    $0x5,%eax
  102734:	01 d0                	add    %edx,%eax
  102736:	c1 e0 02             	shl    $0x2,%eax
  102739:	01 c8                	add    %ecx,%eax
  10273b:	05 54 40 00 00       	add    $0x4054,%eax
  102740:	8b 00                	mov    (%eax),%eax
  102742:	83 f8 02             	cmp    $0x2,%eax
  102745:	0f 85 f8 00 00 00    	jne    102843 <timerHandle+0x239>
  10274b:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102751:	8b 00                	mov    (%eax),%eax
  102753:	40                   	inc    %eax
  102754:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102757:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
  10275b:	75 07                	jne    102764 <timerHandle+0x15a>
  10275d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  102764:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102767:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10276a:	e9 c3 00 00 00       	jmp    102832 <timerHandle+0x228>
  10276f:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102775:	8b 55 ec             	mov    -0x14(%ebp),%edx
  102778:	89 d0                	mov    %edx,%eax
  10277a:	c1 e0 07             	shl    $0x7,%eax
  10277d:	01 d0                	add    %edx,%eax
  10277f:	c1 e0 05             	shl    $0x5,%eax
  102782:	01 d0                	add    %edx,%eax
  102784:	c1 e0 02             	shl    $0x2,%eax
  102787:	01 c8                	add    %ecx,%eax
  102789:	05 54 40 00 00       	add    $0x4054,%eax
  10278e:	8b 00                	mov    (%eax),%eax
  102790:	85 c0                	test   %eax,%eax
  102792:	0f 85 8b 00 00 00    	jne    102823 <timerHandle+0x219>
  102798:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  10279e:	8b 10                	mov    (%eax),%edx
  1027a0:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1027a6:	89 d0                	mov    %edx,%eax
  1027a8:	c1 e0 07             	shl    $0x7,%eax
  1027ab:	01 d0                	add    %edx,%eax
  1027ad:	c1 e0 05             	shl    $0x5,%eax
  1027b0:	01 d0                	add    %edx,%eax
  1027b2:	c1 e0 02             	shl    $0x2,%eax
  1027b5:	01 c8                	add    %ecx,%eax
  1027b7:	05 54 40 00 00       	add    $0x4054,%eax
  1027bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1027c2:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1027c8:	8b 10                	mov    (%eax),%edx
  1027ca:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1027d0:	89 d0                	mov    %edx,%eax
  1027d2:	c1 e0 07             	shl    $0x7,%eax
  1027d5:	01 d0                	add    %edx,%eax
  1027d7:	c1 e0 05             	shl    $0x5,%eax
  1027da:	01 d0                	add    %edx,%eax
  1027dc:	c1 e0 02             	shl    $0x2,%eax
  1027df:	01 c8                	add    %ecx,%eax
  1027e1:	05 58 40 00 00       	add    $0x4058,%eax
  1027e6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1027ec:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1027f2:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1027f5:	89 d0                	mov    %edx,%eax
  1027f7:	c1 e0 07             	shl    $0x7,%eax
  1027fa:	01 d0                	add    %edx,%eax
  1027fc:	c1 e0 05             	shl    $0x5,%eax
  1027ff:	01 d0                	add    %edx,%eax
  102801:	c1 e0 02             	shl    $0x2,%eax
  102804:	01 c8                	add    %ecx,%eax
  102806:	05 54 40 00 00       	add    $0x4054,%eax
  10280b:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  102811:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102817:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10281a:	89 10                	mov    %edx,(%eax)
  10281c:	e8 18 fd ff ff       	call   102539 <__switch__>
  102821:	eb 20                	jmp    102843 <timerHandle+0x239>
  102823:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102826:	40                   	inc    %eax
  102827:	b9 09 00 00 00       	mov    $0x9,%ecx
  10282c:	99                   	cltd   
  10282d:	f7 f9                	idiv   %ecx
  10282f:	89 55 ec             	mov    %edx,-0x14(%ebp)
  102832:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102838:	8b 00                	mov    (%eax),%eax
  10283a:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  10283d:	0f 85 2c ff ff ff    	jne    10276f <timerHandle+0x165>
  102843:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  102849:	8b 10                	mov    (%eax),%edx
  10284b:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  102851:	89 d0                	mov    %edx,%eax
  102853:	c1 e0 07             	shl    $0x7,%eax
  102856:	01 d0                	add    %edx,%eax
  102858:	c1 e0 05             	shl    $0x5,%eax
  10285b:	01 d0                	add    %edx,%eax
  10285d:	c1 e0 02             	shl    $0x2,%eax
  102860:	01 c8                	add    %ecx,%eax
  102862:	05 58 40 00 00       	add    $0x4058,%eax
  102867:	8b 00                	mov    (%eax),%eax
  102869:	8d 48 01             	lea    0x1(%eax),%ecx
  10286c:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102872:	89 d0                	mov    %edx,%eax
  102874:	c1 e0 07             	shl    $0x7,%eax
  102877:	01 d0                	add    %edx,%eax
  102879:	c1 e0 05             	shl    $0x5,%eax
  10287c:	01 d0                	add    %edx,%eax
  10287e:	c1 e0 02             	shl    $0x2,%eax
  102881:	01 d8                	add    %ebx,%eax
  102883:	05 58 40 00 00       	add    $0x4058,%eax
  102888:	89 08                	mov    %ecx,(%eax)
  10288a:	90                   	nop
  10288b:	83 c4 10             	add    $0x10,%esp
  10288e:	5b                   	pop    %ebx
  10288f:	5e                   	pop    %esi
  102890:	5d                   	pop    %ebp
  102891:	c3                   	ret    

00102892 <keyboardHandle>:
  102892:	55                   	push   %ebp
  102893:	89 e5                	mov    %esp,%ebp
  102895:	53                   	push   %ebx
  102896:	83 ec 14             	sub    $0x14,%esp
  102899:	e8 a3 d7 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  10289e:	81 c3 62 27 00 00    	add    $0x2762,%ebx
  1028a4:	e8 a7 ee ff ff       	call   101750 <getKeyCode>
  1028a9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1028ac:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1028b0:	74 57                	je     102909 <keyboardHandle+0x77>
  1028b2:	83 ec 0c             	sub    $0xc,%esp
  1028b5:	ff 75 f4             	pushl  -0xc(%ebp)
  1028b8:	e8 37 ef ff ff       	call   1017f4 <getChar>
  1028bd:	83 c4 10             	add    $0x10,%esp
  1028c0:	0f be c0             	movsbl %al,%eax
  1028c3:	83 ec 0c             	sub    $0xc,%esp
  1028c6:	50                   	push   %eax
  1028c7:	e8 29 e0 ff ff       	call   1008f5 <putChar>
  1028cc:	83 c4 10             	add    $0x10,%esp
  1028cf:	c7 c0 20 9c 12 00    	mov    $0x129c20,%eax
  1028d5:	8b 10                	mov    (%eax),%edx
  1028d7:	c7 c0 40 9c 12 00    	mov    $0x129c40,%eax
  1028dd:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1028e0:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  1028e3:	c7 c0 20 9c 12 00    	mov    $0x129c20,%eax
  1028e9:	8b 00                	mov    (%eax),%eax
  1028eb:	40                   	inc    %eax
  1028ec:	25 ff 00 00 80       	and    $0x800000ff,%eax
  1028f1:	85 c0                	test   %eax,%eax
  1028f3:	79 07                	jns    1028fc <keyboardHandle+0x6a>
  1028f5:	48                   	dec    %eax
  1028f6:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  1028fb:	40                   	inc    %eax
  1028fc:	89 c2                	mov    %eax,%edx
  1028fe:	c7 c0 20 9c 12 00    	mov    $0x129c20,%eax
  102904:	89 10                	mov    %edx,(%eax)
  102906:	90                   	nop
  102907:	eb 01                	jmp    10290a <keyboardHandle+0x78>
  102909:	90                   	nop
  10290a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10290d:	c9                   	leave  
  10290e:	c3                   	ret    

0010290f <syscallWrite>:
  10290f:	55                   	push   %ebp
  102910:	89 e5                	mov    %esp,%ebp
  102912:	83 ec 08             	sub    $0x8,%esp
  102915:	e8 a5 d8 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10291a:	05 e6 26 00 00       	add    $0x26e6,%eax
  10291f:	8b 45 08             	mov    0x8(%ebp),%eax
  102922:	8b 40 28             	mov    0x28(%eax),%eax
  102925:	85 c0                	test   %eax,%eax
  102927:	74 02                	je     10292b <syscallWrite+0x1c>
  102929:	eb 0f                	jmp    10293a <syscallWrite+0x2b>
  10292b:	83 ec 0c             	sub    $0xc,%esp
  10292e:	ff 75 08             	pushl  0x8(%ebp)
  102931:	e8 07 00 00 00       	call   10293d <syscallPrint>
  102936:	83 c4 10             	add    $0x10,%esp
  102939:	90                   	nop
  10293a:	90                   	nop
  10293b:	c9                   	leave  
  10293c:	c3                   	ret    

0010293d <syscallPrint>:
  10293d:	55                   	push   %ebp
  10293e:	89 e5                	mov    %esp,%ebp
  102940:	53                   	push   %ebx
  102941:	83 ec 24             	sub    $0x24,%esp
  102944:	e8 f8 d6 ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  102949:	81 c3 b7 26 00 00    	add    $0x26b7,%ebx
  10294f:	8b 45 08             	mov    0x8(%ebp),%eax
  102952:	8b 40 0c             	mov    0xc(%eax),%eax
  102955:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102958:	8b 45 08             	mov    0x8(%ebp),%eax
  10295b:	8b 40 24             	mov    0x24(%eax),%eax
  10295e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102961:	8b 45 08             	mov    0x8(%ebp),%eax
  102964:	8b 40 20             	mov    0x20(%eax),%eax
  102967:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10296a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102971:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  102978:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  10297c:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  102982:	8e 45 e0             	mov    -0x20(%ebp),%es
  102985:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10298c:	e9 10 01 00 00       	jmp    102aa1 <syscallPrint+0x164>
  102991:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102994:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102997:	01 d0                	add    %edx,%eax
  102999:	26 8a 00             	mov    %es:(%eax),%al
  10299c:	88 45 e7             	mov    %al,-0x19(%ebp)
  10299f:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  1029a3:	75 52                	jne    1029f7 <syscallPrint+0xba>
  1029a5:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029ab:	8b 00                	mov    (%eax),%eax
  1029ad:	8d 50 01             	lea    0x1(%eax),%edx
  1029b0:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029b6:	89 10                	mov    %edx,(%eax)
  1029b8:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  1029be:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1029c4:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029ca:	8b 00                	mov    (%eax),%eax
  1029cc:	83 f8 19             	cmp    $0x19,%eax
  1029cf:	0f 85 c9 00 00 00    	jne    102a9e <syscallPrint+0x161>
  1029d5:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  1029db:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1029e1:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  1029e7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1029ed:	e8 90 f0 ff ff       	call   101a82 <scrollScreen>
  1029f2:	e9 a7 00 00 00       	jmp    102a9e <syscallPrint+0x161>
  1029f7:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  1029fc:	80 cc 0c             	or     $0xc,%ah
  1029ff:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  102a03:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a09:	8b 10                	mov    (%eax),%edx
  102a0b:	89 d0                	mov    %edx,%eax
  102a0d:	c1 e0 02             	shl    $0x2,%eax
  102a10:	01 d0                	add    %edx,%eax
  102a12:	c1 e0 04             	shl    $0x4,%eax
  102a15:	89 c2                	mov    %eax,%edx
  102a17:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a1d:	8b 00                	mov    (%eax),%eax
  102a1f:	01 d0                	add    %edx,%eax
  102a21:	01 c0                	add    %eax,%eax
  102a23:	89 45 e8             	mov    %eax,-0x18(%ebp)
  102a26:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102a29:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  102a2f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102a32:	66 89 02             	mov    %ax,(%edx)
  102a35:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a3b:	8b 00                	mov    (%eax),%eax
  102a3d:	8d 50 01             	lea    0x1(%eax),%edx
  102a40:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a46:	89 10                	mov    %edx,(%eax)
  102a48:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a4e:	8b 00                	mov    (%eax),%eax
  102a50:	83 f8 50             	cmp    $0x50,%eax
  102a53:	75 49                	jne    102a9e <syscallPrint+0x161>
  102a55:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a5b:	8b 00                	mov    (%eax),%eax
  102a5d:	8d 50 01             	lea    0x1(%eax),%edx
  102a60:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a66:	89 10                	mov    %edx,(%eax)
  102a68:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a6e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102a74:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a7a:	8b 00                	mov    (%eax),%eax
  102a7c:	83 f8 19             	cmp    $0x19,%eax
  102a7f:	75 1d                	jne    102a9e <syscallPrint+0x161>
  102a81:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102a87:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  102a8d:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102a93:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102a99:	e8 e4 ef ff ff       	call   101a82 <scrollScreen>
  102a9e:	ff 45 f4             	incl   -0xc(%ebp)
  102aa1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102aa4:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  102aa7:	0f 8c e4 fe ff ff    	jl     102991 <syscallPrint+0x54>
  102aad:	c7 c0 28 52 10 00    	mov    $0x105228,%eax
  102ab3:	8b 10                	mov    (%eax),%edx
  102ab5:	c7 c0 24 52 10 00    	mov    $0x105224,%eax
  102abb:	8b 00                	mov    (%eax),%eax
  102abd:	83 ec 08             	sub    $0x8,%esp
  102ac0:	52                   	push   %edx
  102ac1:	50                   	push   %eax
  102ac2:	e8 48 ef ff ff       	call   101a0f <updateCursor>
  102ac7:	83 c4 10             	add    $0x10,%esp
  102aca:	90                   	nop
  102acb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102ace:	c9                   	leave  
  102acf:	c3                   	ret    

00102ad0 <syscallFork>:
  102ad0:	55                   	push   %ebp
  102ad1:	89 e5                	mov    %esp,%ebp
  102ad3:	56                   	push   %esi
  102ad4:	53                   	push   %ebx
  102ad5:	83 ec 10             	sub    $0x10,%esp
  102ad8:	e8 e2 d6 ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  102add:	05 23 25 00 00       	add    $0x2523,%eax
  102ae2:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  102ae9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102af0:	e9 33 07 00 00       	jmp    103228 <syscallFork+0x758>
  102af5:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102afb:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102afe:	89 ca                	mov    %ecx,%edx
  102b00:	c1 e2 07             	shl    $0x7,%edx
  102b03:	01 ca                	add    %ecx,%edx
  102b05:	c1 e2 05             	shl    $0x5,%edx
  102b08:	01 ca                	add    %ecx,%edx
  102b0a:	c1 e2 02             	shl    $0x2,%edx
  102b0d:	01 da                	add    %ebx,%edx
  102b0f:	81 c2 54 40 00 00    	add    $0x4054,%edx
  102b15:	8b 12                	mov    (%edx),%edx
  102b17:	83 fa 03             	cmp    $0x3,%edx
  102b1a:	0f 85 05 07 00 00    	jne    103225 <syscallFork+0x755>
  102b20:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  102b23:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102b29:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102b2c:	89 ca                	mov    %ecx,%edx
  102b2e:	c1 e2 07             	shl    $0x7,%edx
  102b31:	01 ca                	add    %ecx,%edx
  102b33:	c1 e2 05             	shl    $0x5,%edx
  102b36:	01 ca                	add    %ecx,%edx
  102b38:	c1 e2 02             	shl    $0x2,%edx
  102b3b:	01 f2                	add    %esi,%edx
  102b3d:	81 c2 60 40 00 00    	add    $0x4060,%edx
  102b43:	89 1a                	mov    %ebx,(%edx)
  102b45:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102b4b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102b4e:	89 ca                	mov    %ecx,%edx
  102b50:	c1 e2 07             	shl    $0x7,%edx
  102b53:	01 ca                	add    %ecx,%edx
  102b55:	c1 e2 05             	shl    $0x5,%edx
  102b58:	01 ca                	add    %ecx,%edx
  102b5a:	c1 e2 02             	shl    $0x2,%edx
  102b5d:	01 da                	add    %ebx,%edx
  102b5f:	81 c2 60 40 00 00    	add    $0x4060,%edx
  102b65:	8b 12                	mov    (%edx),%edx
  102b67:	89 55 e8             	mov    %edx,-0x18(%ebp)
  102b6a:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102b6d:	89 ca                	mov    %ecx,%edx
  102b6f:	c1 e2 07             	shl    $0x7,%edx
  102b72:	01 ca                	add    %ecx,%edx
  102b74:	c1 e2 05             	shl    $0x5,%edx
  102b77:	01 ca                	add    %ecx,%edx
  102b79:	c1 e2 02             	shl    $0x2,%edx
  102b7c:	8d 8a 00 40 00 00    	lea    0x4000(%edx),%ecx
  102b82:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  102b88:	01 ca                	add    %ecx,%edx
  102b8a:	89 d3                	mov    %edx,%ebx
  102b8c:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102b92:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102b95:	89 ca                	mov    %ecx,%edx
  102b97:	c1 e2 07             	shl    $0x7,%edx
  102b9a:	01 ca                	add    %ecx,%edx
  102b9c:	c1 e2 05             	shl    $0x5,%edx
  102b9f:	01 ca                	add    %ecx,%edx
  102ba1:	c1 e2 02             	shl    $0x2,%edx
  102ba4:	01 f2                	add    %esi,%edx
  102ba6:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  102bac:	89 1a                	mov    %ebx,(%edx)
  102bae:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102bb1:	89 ca                	mov    %ecx,%edx
  102bb3:	c1 e2 07             	shl    $0x7,%edx
  102bb6:	01 ca                	add    %ecx,%edx
  102bb8:	c1 e2 05             	shl    $0x5,%edx
  102bbb:	01 ca                	add    %ecx,%edx
  102bbd:	c1 e2 02             	shl    $0x2,%edx
  102bc0:	8d 8a 40 40 00 00    	lea    0x4040(%edx),%ecx
  102bc6:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  102bcc:	01 ca                	add    %ecx,%edx
  102bce:	83 c2 0c             	add    $0xc,%edx
  102bd1:	89 d3                	mov    %edx,%ebx
  102bd3:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102bd9:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102bdc:	89 ca                	mov    %ecx,%edx
  102bde:	c1 e2 07             	shl    $0x7,%edx
  102be1:	01 ca                	add    %ecx,%edx
  102be3:	c1 e2 05             	shl    $0x5,%edx
  102be6:	01 ca                	add    %ecx,%edx
  102be8:	c1 e2 02             	shl    $0x2,%edx
  102beb:	01 f2                	add    %esi,%edx
  102bed:	81 c2 50 40 00 00    	add    $0x4050,%edx
  102bf3:	89 1a                	mov    %ebx,(%edx)
  102bf5:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102bfb:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102bfe:	89 ca                	mov    %ecx,%edx
  102c00:	c1 e2 07             	shl    $0x7,%edx
  102c03:	01 ca                	add    %ecx,%edx
  102c05:	c1 e2 05             	shl    $0x5,%edx
  102c08:	01 ca                	add    %ecx,%edx
  102c0a:	c1 e2 02             	shl    $0x2,%edx
  102c0d:	01 da                	add    %ebx,%edx
  102c0f:	81 c2 54 40 00 00    	add    $0x4054,%edx
  102c15:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102c1b:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102c21:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102c24:	89 ca                	mov    %ecx,%edx
  102c26:	c1 e2 07             	shl    $0x7,%edx
  102c29:	01 ca                	add    %ecx,%edx
  102c2b:	c1 e2 05             	shl    $0x5,%edx
  102c2e:	01 ca                	add    %ecx,%edx
  102c30:	c1 e2 02             	shl    $0x2,%edx
  102c33:	01 da                	add    %ebx,%edx
  102c35:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  102c3b:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102c41:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102c47:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102c4a:	89 ca                	mov    %ecx,%edx
  102c4c:	c1 e2 07             	shl    $0x7,%edx
  102c4f:	01 ca                	add    %ecx,%edx
  102c51:	c1 e2 05             	shl    $0x5,%edx
  102c54:	01 ca                	add    %ecx,%edx
  102c56:	c1 e2 02             	shl    $0x2,%edx
  102c59:	01 da                	add    %ebx,%edx
  102c5b:	81 c2 58 40 00 00    	add    $0x4058,%edx
  102c61:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  102c67:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102c6d:	8b 0a                	mov    (%edx),%ecx
  102c6f:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102c75:	89 ca                	mov    %ecx,%edx
  102c77:	c1 e2 07             	shl    $0x7,%edx
  102c7a:	01 ca                	add    %ecx,%edx
  102c7c:	c1 e2 05             	shl    $0x5,%edx
  102c7f:	01 ca                	add    %ecx,%edx
  102c81:	c1 e2 02             	shl    $0x2,%edx
  102c84:	01 da                	add    %ebx,%edx
  102c86:	81 c2 18 40 00 00    	add    $0x4018,%edx
  102c8c:	8b 1a                	mov    (%edx),%ebx
  102c8e:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102c94:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102c97:	89 ca                	mov    %ecx,%edx
  102c99:	c1 e2 07             	shl    $0x7,%edx
  102c9c:	01 ca                	add    %ecx,%edx
  102c9e:	c1 e2 05             	shl    $0x5,%edx
  102ca1:	01 ca                	add    %ecx,%edx
  102ca3:	c1 e2 02             	shl    $0x2,%edx
  102ca6:	01 f2                	add    %esi,%edx
  102ca8:	81 c2 18 40 00 00    	add    $0x4018,%edx
  102cae:	89 1a                	mov    %ebx,(%edx)
  102cb0:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102cb6:	8b 0a                	mov    (%edx),%ecx
  102cb8:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102cbe:	89 ca                	mov    %ecx,%edx
  102cc0:	c1 e2 07             	shl    $0x7,%edx
  102cc3:	01 ca                	add    %ecx,%edx
  102cc5:	c1 e2 05             	shl    $0x5,%edx
  102cc8:	01 ca                	add    %ecx,%edx
  102cca:	c1 e2 02             	shl    $0x2,%edx
  102ccd:	01 da                	add    %ebx,%edx
  102ccf:	81 c2 20 40 00 00    	add    $0x4020,%edx
  102cd5:	8b 1a                	mov    (%edx),%ebx
  102cd7:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102cdd:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102ce0:	89 ca                	mov    %ecx,%edx
  102ce2:	c1 e2 07             	shl    $0x7,%edx
  102ce5:	01 ca                	add    %ecx,%edx
  102ce7:	c1 e2 05             	shl    $0x5,%edx
  102cea:	01 ca                	add    %ecx,%edx
  102cec:	c1 e2 02             	shl    $0x2,%edx
  102cef:	01 f2                	add    %esi,%edx
  102cf1:	81 c2 20 40 00 00    	add    $0x4020,%edx
  102cf7:	89 1a                	mov    %ebx,(%edx)
  102cf9:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102cff:	8b 0a                	mov    (%edx),%ecx
  102d01:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102d07:	89 ca                	mov    %ecx,%edx
  102d09:	c1 e2 07             	shl    $0x7,%edx
  102d0c:	01 ca                	add    %ecx,%edx
  102d0e:	c1 e2 05             	shl    $0x5,%edx
  102d11:	01 ca                	add    %ecx,%edx
  102d13:	c1 e2 02             	shl    $0x2,%edx
  102d16:	01 da                	add    %ebx,%edx
  102d18:	81 c2 28 40 00 00    	add    $0x4028,%edx
  102d1e:	8b 1a                	mov    (%edx),%ebx
  102d20:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102d26:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102d29:	89 ca                	mov    %ecx,%edx
  102d2b:	c1 e2 07             	shl    $0x7,%edx
  102d2e:	01 ca                	add    %ecx,%edx
  102d30:	c1 e2 05             	shl    $0x5,%edx
  102d33:	01 ca                	add    %ecx,%edx
  102d35:	c1 e2 02             	shl    $0x2,%edx
  102d38:	01 f2                	add    %esi,%edx
  102d3a:	81 c2 28 40 00 00    	add    $0x4028,%edx
  102d40:	89 1a                	mov    %ebx,(%edx)
  102d42:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102d48:	8b 0a                	mov    (%edx),%ecx
  102d4a:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102d50:	89 ca                	mov    %ecx,%edx
  102d52:	c1 e2 07             	shl    $0x7,%edx
  102d55:	01 ca                	add    %ecx,%edx
  102d57:	c1 e2 05             	shl    $0x5,%edx
  102d5a:	01 ca                	add    %ecx,%edx
  102d5c:	c1 e2 02             	shl    $0x2,%edx
  102d5f:	01 da                	add    %ebx,%edx
  102d61:	81 c2 10 40 00 00    	add    $0x4010,%edx
  102d67:	8b 1a                	mov    (%edx),%ebx
  102d69:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102d6f:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102d72:	89 ca                	mov    %ecx,%edx
  102d74:	c1 e2 07             	shl    $0x7,%edx
  102d77:	01 ca                	add    %ecx,%edx
  102d79:	c1 e2 05             	shl    $0x5,%edx
  102d7c:	01 ca                	add    %ecx,%edx
  102d7e:	c1 e2 02             	shl    $0x2,%edx
  102d81:	01 f2                	add    %esi,%edx
  102d83:	81 c2 10 40 00 00    	add    $0x4010,%edx
  102d89:	89 1a                	mov    %ebx,(%edx)
  102d8b:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102d91:	8b 0a                	mov    (%edx),%ecx
  102d93:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102d99:	89 ca                	mov    %ecx,%edx
  102d9b:	c1 e2 07             	shl    $0x7,%edx
  102d9e:	01 ca                	add    %ecx,%edx
  102da0:	c1 e2 05             	shl    $0x5,%edx
  102da3:	01 ca                	add    %ecx,%edx
  102da5:	c1 e2 02             	shl    $0x2,%edx
  102da8:	01 da                	add    %ebx,%edx
  102daa:	81 c2 24 40 00 00    	add    $0x4024,%edx
  102db0:	8b 1a                	mov    (%edx),%ebx
  102db2:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102db8:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102dbb:	89 ca                	mov    %ecx,%edx
  102dbd:	c1 e2 07             	shl    $0x7,%edx
  102dc0:	01 ca                	add    %ecx,%edx
  102dc2:	c1 e2 05             	shl    $0x5,%edx
  102dc5:	01 ca                	add    %ecx,%edx
  102dc7:	c1 e2 02             	shl    $0x2,%edx
  102dca:	01 f2                	add    %esi,%edx
  102dcc:	81 c2 24 40 00 00    	add    $0x4024,%edx
  102dd2:	89 1a                	mov    %ebx,(%edx)
  102dd4:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102dda:	8b 0a                	mov    (%edx),%ecx
  102ddc:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102de2:	89 ca                	mov    %ecx,%edx
  102de4:	c1 e2 07             	shl    $0x7,%edx
  102de7:	01 ca                	add    %ecx,%edx
  102de9:	c1 e2 05             	shl    $0x5,%edx
  102dec:	01 ca                	add    %ecx,%edx
  102dee:	c1 e2 02             	shl    $0x2,%edx
  102df1:	01 da                	add    %ebx,%edx
  102df3:	81 c2 40 40 00 00    	add    $0x4040,%edx
  102df9:	8b 1a                	mov    (%edx),%ebx
  102dfb:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102e01:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102e04:	89 ca                	mov    %ecx,%edx
  102e06:	c1 e2 07             	shl    $0x7,%edx
  102e09:	01 ca                	add    %ecx,%edx
  102e0b:	c1 e2 05             	shl    $0x5,%edx
  102e0e:	01 ca                	add    %ecx,%edx
  102e10:	c1 e2 02             	shl    $0x2,%edx
  102e13:	01 f2                	add    %esi,%edx
  102e15:	81 c2 40 40 00 00    	add    $0x4040,%edx
  102e1b:	89 1a                	mov    %ebx,(%edx)
  102e1d:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102e23:	8b 0a                	mov    (%edx),%ecx
  102e25:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102e2b:	89 ca                	mov    %ecx,%edx
  102e2d:	c1 e2 07             	shl    $0x7,%edx
  102e30:	01 ca                	add    %ecx,%edx
  102e32:	c1 e2 05             	shl    $0x5,%edx
  102e35:	01 ca                	add    %ecx,%edx
  102e37:	c1 e2 02             	shl    $0x2,%edx
  102e3a:	01 da                	add    %ebx,%edx
  102e3c:	81 c2 38 40 00 00    	add    $0x4038,%edx
  102e42:	8b 1a                	mov    (%edx),%ebx
  102e44:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102e4a:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102e4d:	89 ca                	mov    %ecx,%edx
  102e4f:	c1 e2 07             	shl    $0x7,%edx
  102e52:	01 ca                	add    %ecx,%edx
  102e54:	c1 e2 05             	shl    $0x5,%edx
  102e57:	01 ca                	add    %ecx,%edx
  102e59:	c1 e2 02             	shl    $0x2,%edx
  102e5c:	01 f2                	add    %esi,%edx
  102e5e:	81 c2 38 40 00 00    	add    $0x4038,%edx
  102e64:	89 1a                	mov    %ebx,(%edx)
  102e66:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102e6c:	8b 0a                	mov    (%edx),%ecx
  102e6e:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102e74:	89 ca                	mov    %ecx,%edx
  102e76:	c1 e2 07             	shl    $0x7,%edx
  102e79:	01 ca                	add    %ecx,%edx
  102e7b:	c1 e2 05             	shl    $0x5,%edx
  102e7e:	01 ca                	add    %ecx,%edx
  102e80:	c1 e2 02             	shl    $0x2,%edx
  102e83:	01 da                	add    %ebx,%edx
  102e85:	81 c2 34 40 00 00    	add    $0x4034,%edx
  102e8b:	8b 1a                	mov    (%edx),%ebx
  102e8d:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102e93:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102e96:	89 ca                	mov    %ecx,%edx
  102e98:	c1 e2 07             	shl    $0x7,%edx
  102e9b:	01 ca                	add    %ecx,%edx
  102e9d:	c1 e2 05             	shl    $0x5,%edx
  102ea0:	01 ca                	add    %ecx,%edx
  102ea2:	c1 e2 02             	shl    $0x2,%edx
  102ea5:	01 f2                	add    %esi,%edx
  102ea7:	81 c2 34 40 00 00    	add    $0x4034,%edx
  102ead:	89 1a                	mov    %ebx,(%edx)
  102eaf:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102eb5:	8b 0a                	mov    (%edx),%ecx
  102eb7:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102ebd:	89 ca                	mov    %ecx,%edx
  102ebf:	c1 e2 07             	shl    $0x7,%edx
  102ec2:	01 ca                	add    %ecx,%edx
  102ec4:	c1 e2 05             	shl    $0x5,%edx
  102ec7:	01 ca                	add    %ecx,%edx
  102ec9:	c1 e2 02             	shl    $0x2,%edx
  102ecc:	01 da                	add    %ebx,%edx
  102ece:	81 c2 14 40 00 00    	add    $0x4014,%edx
  102ed4:	8b 1a                	mov    (%edx),%ebx
  102ed6:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102edc:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102edf:	89 ca                	mov    %ecx,%edx
  102ee1:	c1 e2 07             	shl    $0x7,%edx
  102ee4:	01 ca                	add    %ecx,%edx
  102ee6:	c1 e2 05             	shl    $0x5,%edx
  102ee9:	01 ca                	add    %ecx,%edx
  102eeb:	c1 e2 02             	shl    $0x2,%edx
  102eee:	01 f2                	add    %esi,%edx
  102ef0:	81 c2 14 40 00 00    	add    $0x4014,%edx
  102ef6:	89 1a                	mov    %ebx,(%edx)
  102ef8:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102efe:	8b 0a                	mov    (%edx),%ecx
  102f00:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102f06:	89 ca                	mov    %ecx,%edx
  102f08:	c1 e2 07             	shl    $0x7,%edx
  102f0b:	01 ca                	add    %ecx,%edx
  102f0d:	c1 e2 05             	shl    $0x5,%edx
  102f10:	01 ca                	add    %ecx,%edx
  102f12:	c1 e2 02             	shl    $0x2,%edx
  102f15:	01 da                	add    %ebx,%edx
  102f17:	81 c2 44 40 00 00    	add    $0x4044,%edx
  102f1d:	8b 1a                	mov    (%edx),%ebx
  102f1f:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102f25:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102f28:	89 ca                	mov    %ecx,%edx
  102f2a:	c1 e2 07             	shl    $0x7,%edx
  102f2d:	01 ca                	add    %ecx,%edx
  102f2f:	c1 e2 05             	shl    $0x5,%edx
  102f32:	01 ca                	add    %ecx,%edx
  102f34:	c1 e2 02             	shl    $0x2,%edx
  102f37:	01 f2                	add    %esi,%edx
  102f39:	81 c2 44 40 00 00    	add    $0x4044,%edx
  102f3f:	89 1a                	mov    %ebx,(%edx)
  102f41:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102f47:	8b 0a                	mov    (%edx),%ecx
  102f49:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102f4f:	89 ca                	mov    %ecx,%edx
  102f51:	c1 e2 07             	shl    $0x7,%edx
  102f54:	01 ca                	add    %ecx,%edx
  102f56:	c1 e2 05             	shl    $0x5,%edx
  102f59:	01 ca                	add    %ecx,%edx
  102f5b:	c1 e2 02             	shl    $0x2,%edx
  102f5e:	01 da                	add    %ebx,%edx
  102f60:	81 c2 30 40 00 00    	add    $0x4030,%edx
  102f66:	8b 1a                	mov    (%edx),%ebx
  102f68:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102f6e:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102f71:	89 ca                	mov    %ecx,%edx
  102f73:	c1 e2 07             	shl    $0x7,%edx
  102f76:	01 ca                	add    %ecx,%edx
  102f78:	c1 e2 05             	shl    $0x5,%edx
  102f7b:	01 ca                	add    %ecx,%edx
  102f7d:	c1 e2 02             	shl    $0x2,%edx
  102f80:	01 f2                	add    %esi,%edx
  102f82:	81 c2 30 40 00 00    	add    $0x4030,%edx
  102f88:	89 1a                	mov    %ebx,(%edx)
  102f8a:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  102f90:	8b 0a                	mov    (%edx),%ecx
  102f92:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  102f98:	89 ca                	mov    %ecx,%edx
  102f9a:	c1 e2 07             	shl    $0x7,%edx
  102f9d:	01 ca                	add    %ecx,%edx
  102f9f:	c1 e2 05             	shl    $0x5,%edx
  102fa2:	01 ca                	add    %ecx,%edx
  102fa4:	c1 e2 02             	shl    $0x2,%edx
  102fa7:	01 da                	add    %ebx,%edx
  102fa9:	81 c2 1c 40 00 00    	add    $0x401c,%edx
  102faf:	8b 1a                	mov    (%edx),%ebx
  102fb1:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102fb7:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102fba:	89 ca                	mov    %ecx,%edx
  102fbc:	c1 e2 07             	shl    $0x7,%edx
  102fbf:	01 ca                	add    %ecx,%edx
  102fc1:	c1 e2 05             	shl    $0x5,%edx
  102fc4:	01 ca                	add    %ecx,%edx
  102fc6:	c1 e2 02             	shl    $0x2,%edx
  102fc9:	01 f2                	add    %esi,%edx
  102fcb:	81 c2 1c 40 00 00    	add    $0x401c,%edx
  102fd1:	89 1a                	mov    %ebx,(%edx)
  102fd3:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102fd6:	01 d2                	add    %edx,%edx
  102fd8:	42                   	inc    %edx
  102fd9:	c1 e2 03             	shl    $0x3,%edx
  102fdc:	83 ca 03             	or     $0x3,%edx
  102fdf:	89 d3                	mov    %edx,%ebx
  102fe1:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  102fe7:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  102fea:	89 ca                	mov    %ecx,%edx
  102fec:	c1 e2 07             	shl    $0x7,%edx
  102fef:	01 ca                	add    %ecx,%edx
  102ff1:	c1 e2 05             	shl    $0x5,%edx
  102ff4:	01 ca                	add    %ecx,%edx
  102ff6:	c1 e2 02             	shl    $0x2,%edx
  102ff9:	01 f2                	add    %esi,%edx
  102ffb:	81 c2 3c 40 00 00    	add    $0x403c,%edx
  103001:	89 1a                	mov    %ebx,(%edx)
  103003:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103006:	42                   	inc    %edx
  103007:	01 d2                	add    %edx,%edx
  103009:	c1 e2 03             	shl    $0x3,%edx
  10300c:	83 ca 03             	or     $0x3,%edx
  10300f:	89 d3                	mov    %edx,%ebx
  103011:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  103017:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10301a:	89 ca                	mov    %ecx,%edx
  10301c:	c1 e2 07             	shl    $0x7,%edx
  10301f:	01 ca                	add    %ecx,%edx
  103021:	c1 e2 05             	shl    $0x5,%edx
  103024:	01 ca                	add    %ecx,%edx
  103026:	c1 e2 02             	shl    $0x2,%edx
  103029:	01 f2                	add    %esi,%edx
  10302b:	81 c2 0c 40 00 00    	add    $0x400c,%edx
  103031:	89 1a                	mov    %ebx,(%edx)
  103033:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  103039:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10303c:	89 ca                	mov    %ecx,%edx
  10303e:	c1 e2 07             	shl    $0x7,%edx
  103041:	01 ca                	add    %ecx,%edx
  103043:	c1 e2 05             	shl    $0x5,%edx
  103046:	01 ca                	add    %ecx,%edx
  103048:	c1 e2 02             	shl    $0x2,%edx
  10304b:	01 da                	add    %ebx,%edx
  10304d:	81 c2 0c 40 00 00    	add    $0x400c,%edx
  103053:	8b 1a                	mov    (%edx),%ebx
  103055:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  10305b:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10305e:	89 ca                	mov    %ecx,%edx
  103060:	c1 e2 07             	shl    $0x7,%edx
  103063:	01 ca                	add    %ecx,%edx
  103065:	c1 e2 05             	shl    $0x5,%edx
  103068:	01 ca                	add    %ecx,%edx
  10306a:	c1 e2 02             	shl    $0x2,%edx
  10306d:	01 f2                	add    %esi,%edx
  10306f:	81 c2 08 40 00 00    	add    $0x4008,%edx
  103075:	89 1a                	mov    %ebx,(%edx)
  103077:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  10307d:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  103080:	89 ca                	mov    %ecx,%edx
  103082:	c1 e2 07             	shl    $0x7,%edx
  103085:	01 ca                	add    %ecx,%edx
  103087:	c1 e2 05             	shl    $0x5,%edx
  10308a:	01 ca                	add    %ecx,%edx
  10308c:	c1 e2 02             	shl    $0x2,%edx
  10308f:	01 da                	add    %ebx,%edx
  103091:	81 c2 08 40 00 00    	add    $0x4008,%edx
  103097:	8b 1a                	mov    (%edx),%ebx
  103099:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  10309f:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1030a2:	89 ca                	mov    %ecx,%edx
  1030a4:	c1 e2 07             	shl    $0x7,%edx
  1030a7:	01 ca                	add    %ecx,%edx
  1030a9:	c1 e2 05             	shl    $0x5,%edx
  1030ac:	01 ca                	add    %ecx,%edx
  1030ae:	c1 e2 02             	shl    $0x2,%edx
  1030b1:	01 f2                	add    %esi,%edx
  1030b3:	81 c2 04 40 00 00    	add    $0x4004,%edx
  1030b9:	89 1a                	mov    %ebx,(%edx)
  1030bb:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  1030c1:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1030c4:	89 ca                	mov    %ecx,%edx
  1030c6:	c1 e2 07             	shl    $0x7,%edx
  1030c9:	01 ca                	add    %ecx,%edx
  1030cb:	c1 e2 05             	shl    $0x5,%edx
  1030ce:	01 ca                	add    %ecx,%edx
  1030d0:	c1 e2 02             	shl    $0x2,%edx
  1030d3:	01 da                	add    %ebx,%edx
  1030d5:	81 c2 04 40 00 00    	add    $0x4004,%edx
  1030db:	8b 1a                	mov    (%edx),%ebx
  1030dd:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  1030e3:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1030e6:	89 ca                	mov    %ecx,%edx
  1030e8:	c1 e2 07             	shl    $0x7,%edx
  1030eb:	01 ca                	add    %ecx,%edx
  1030ed:	c1 e2 05             	shl    $0x5,%edx
  1030f0:	01 ca                	add    %ecx,%edx
  1030f2:	c1 e2 02             	shl    $0x2,%edx
  1030f5:	01 f2                	add    %esi,%edx
  1030f7:	81 c2 00 40 00 00    	add    $0x4000,%edx
  1030fd:	89 1a                	mov    %ebx,(%edx)
  1030ff:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  103105:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  103108:	89 ca                	mov    %ecx,%edx
  10310a:	c1 e2 07             	shl    $0x7,%edx
  10310d:	01 ca                	add    %ecx,%edx
  10310f:	c1 e2 05             	shl    $0x5,%edx
  103112:	01 ca                	add    %ecx,%edx
  103114:	c1 e2 02             	shl    $0x2,%edx
  103117:	01 da                	add    %ebx,%edx
  103119:	81 c2 00 40 00 00    	add    $0x4000,%edx
  10311f:	8b 1a                	mov    (%edx),%ebx
  103121:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  103127:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10312a:	89 ca                	mov    %ecx,%edx
  10312c:	c1 e2 07             	shl    $0x7,%edx
  10312f:	01 ca                	add    %ecx,%edx
  103131:	c1 e2 05             	shl    $0x5,%edx
  103134:	01 ca                	add    %ecx,%edx
  103136:	c1 e2 02             	shl    $0x2,%edx
  103139:	01 f2                	add    %esi,%edx
  10313b:	81 c2 48 40 00 00    	add    $0x4048,%edx
  103141:	89 1a                	mov    %ebx,(%edx)
  103143:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  10314a:	eb 42                	jmp    10318e <syscallFork+0x6be>
  10314c:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  103152:	8b 0a                	mov    (%edx),%ecx
  103154:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  10315a:	89 ca                	mov    %ecx,%edx
  10315c:	c1 e2 07             	shl    $0x7,%edx
  10315f:	01 ca                	add    %ecx,%edx
  103161:	c1 e2 05             	shl    $0x5,%edx
  103164:	01 ca                	add    %ecx,%edx
  103166:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  103169:	01 ca                	add    %ecx,%edx
  10316b:	8b 34 93             	mov    (%ebx,%edx,4),%esi
  10316e:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  103174:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  103177:	89 ca                	mov    %ecx,%edx
  103179:	c1 e2 07             	shl    $0x7,%edx
  10317c:	01 ca                	add    %ecx,%edx
  10317e:	c1 e2 05             	shl    $0x5,%edx
  103181:	01 ca                	add    %ecx,%edx
  103183:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  103186:	01 ca                	add    %ecx,%edx
  103188:	89 34 93             	mov    %esi,(%ebx,%edx,4)
  10318b:	ff 45 f0             	incl   -0x10(%ebp)
  10318e:	81 7d f0 ff 0f 00 00 	cmpl   $0xfff,-0x10(%ebp)
  103195:	7e b5                	jle    10314c <syscallFork+0x67c>
  103197:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10319e:	eb 28                	jmp    1031c8 <syscallFork+0x6f8>
  1031a0:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  1031a6:	8b 12                	mov    (%edx),%edx
  1031a8:	42                   	inc    %edx
  1031a9:	89 d1                	mov    %edx,%ecx
  1031ab:	c1 e1 14             	shl    $0x14,%ecx
  1031ae:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1031b1:	01 ca                	add    %ecx,%edx
  1031b3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  1031b6:	41                   	inc    %ecx
  1031b7:	89 cb                	mov    %ecx,%ebx
  1031b9:	c1 e3 14             	shl    $0x14,%ebx
  1031bc:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  1031bf:	01 d9                	add    %ebx,%ecx
  1031c1:	8a 12                	mov    (%edx),%dl
  1031c3:	88 11                	mov    %dl,(%ecx)
  1031c5:	ff 45 ec             	incl   -0x14(%ebp)
  1031c8:	81 7d ec ff ff 0f 00 	cmpl   $0xfffff,-0x14(%ebp)
  1031cf:	7e cf                	jle    1031a0 <syscallFork+0x6d0>
  1031d1:	c7 c3 60 57 10 00    	mov    $0x105760,%ebx
  1031d7:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1031da:	89 ca                	mov    %ecx,%edx
  1031dc:	c1 e2 07             	shl    $0x7,%edx
  1031df:	01 ca                	add    %ecx,%edx
  1031e1:	c1 e2 05             	shl    $0x5,%edx
  1031e4:	01 ca                	add    %ecx,%edx
  1031e6:	c1 e2 02             	shl    $0x2,%edx
  1031e9:	01 da                	add    %ebx,%edx
  1031eb:	81 c2 2c 40 00 00    	add    $0x402c,%edx
  1031f1:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1031f7:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  1031fd:	8b 12                	mov    (%edx),%edx
  1031ff:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  103205:	89 d0                	mov    %edx,%eax
  103207:	c1 e0 07             	shl    $0x7,%eax
  10320a:	01 d0                	add    %edx,%eax
  10320c:	c1 e0 05             	shl    $0x5,%eax
  10320f:	01 d0                	add    %edx,%eax
  103211:	c1 e0 02             	shl    $0x2,%eax
  103214:	01 c8                	add    %ecx,%eax
  103216:	8d 90 2c 40 00 00    	lea    0x402c(%eax),%edx
  10321c:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10321f:	89 02                	mov    %eax,(%edx)
  103221:	cd 20                	int    $0x20
  103223:	eb 3a                	jmp    10325f <syscallFork+0x78f>
  103225:	ff 45 f4             	incl   -0xc(%ebp)
  103228:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  10322c:	0f 8e c3 f8 ff ff    	jle    102af5 <syscallFork+0x25>
  103232:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  103238:	8b 12                	mov    (%edx),%edx
  10323a:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  103240:	89 d0                	mov    %edx,%eax
  103242:	c1 e0 07             	shl    $0x7,%eax
  103245:	01 d0                	add    %edx,%eax
  103247:	c1 e0 05             	shl    $0x5,%eax
  10324a:	01 d0                	add    %edx,%eax
  10324c:	c1 e0 02             	shl    $0x2,%eax
  10324f:	01 c8                	add    %ecx,%eax
  103251:	05 2c 40 00 00       	add    $0x402c,%eax
  103256:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  10325c:	cd 20                	int    $0x20
  10325e:	90                   	nop
  10325f:	83 c4 10             	add    $0x10,%esp
  103262:	5b                   	pop    %ebx
  103263:	5e                   	pop    %esi
  103264:	5d                   	pop    %ebp
  103265:	c3                   	ret    

00103266 <syscallExec>:
  103266:	55                   	push   %ebp
  103267:	89 e5                	mov    %esp,%ebp
  103269:	57                   	push   %edi
  10326a:	53                   	push   %ebx
  10326b:	83 ec 50             	sub    $0x50,%esp
  10326e:	e8 ce cd ff ff       	call   100041 <__x86.get_pc_thunk.bx>
  103273:	81 c3 8d 1d 00 00    	add    $0x1d8d,%ebx
  103279:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  103280:	8b 45 08             	mov    0x8(%ebp),%eax
  103283:	8b 40 28             	mov    0x28(%eax),%eax
  103286:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103289:	8b 45 08             	mov    0x8(%ebp),%eax
  10328c:	8b 40 20             	mov    0x20(%eax),%eax
  10328f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103292:	8b 45 08             	mov    0x8(%ebp),%eax
  103295:	8b 40 0c             	mov    0xc(%eax),%eax
  103298:	89 45 dc             	mov    %eax,-0x24(%ebp)
  10329b:	8d 55 aa             	lea    -0x56(%ebp),%edx
  10329e:	b9 32 00 00 00       	mov    $0x32,%ecx
  1032a3:	b0 00                	mov    $0x0,%al
  1032a5:	89 d7                	mov    %edx,%edi
  1032a7:	f3 aa                	rep stos %al,%es:(%edi)
  1032a9:	8e 45 dc             	mov    -0x24(%ebp),%es
  1032ac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1032b3:	eb 13                	jmp    1032c8 <syscallExec+0x62>
  1032b5:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1032b8:	26 8a 00             	mov    %es:(%eax),%al
  1032bb:	8d 4d aa             	lea    -0x56(%ebp),%ecx
  1032be:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1032c1:	01 ca                	add    %ecx,%edx
  1032c3:	88 02                	mov    %al,(%edx)
  1032c5:	ff 45 f4             	incl   -0xc(%ebp)
  1032c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1032cb:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  1032ce:	7c e5                	jl     1032b5 <syscallExec+0x4f>
  1032d0:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  1032d6:	8b 00                	mov    (%eax),%eax
  1032d8:	40                   	inc    %eax
  1032d9:	c1 e0 14             	shl    $0x14,%eax
  1032dc:	89 c2                	mov    %eax,%edx
  1032de:	83 ec 04             	sub    $0x4,%esp
  1032e1:	8d 45 e0             	lea    -0x20(%ebp),%eax
  1032e4:	50                   	push   %eax
  1032e5:	52                   	push   %edx
  1032e6:	ff 75 f0             	pushl  -0x10(%ebp)
  1032e9:	e8 8f dc ff ff       	call   100f7d <loadElf>
  1032ee:	83 c4 10             	add    $0x10,%esp
  1032f1:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1032f4:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  1032f8:	74 0e                	je     103308 <syscallExec+0xa2>
  1032fa:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1032fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103300:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103303:	ff d0                	call   *%eax
  103305:	90                   	nop
  103306:	eb 01                	jmp    103309 <syscallExec+0xa3>
  103308:	90                   	nop
  103309:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10330c:	5b                   	pop    %ebx
  10330d:	5f                   	pop    %edi
  10330e:	5d                   	pop    %ebp
  10330f:	c3                   	ret    

00103310 <syscallSleep>:
  103310:	55                   	push   %ebp
  103311:	89 e5                	mov    %esp,%ebp
  103313:	56                   	push   %esi
  103314:	53                   	push   %ebx
  103315:	83 ec 10             	sub    $0x10,%esp
  103318:	e8 43 e8 ff ff       	call   101b60 <__x86.get_pc_thunk.dx>
  10331d:	81 c2 e3 1c 00 00    	add    $0x1ce3,%edx
  103323:	8b 45 08             	mov    0x8(%ebp),%eax
  103326:	8b 40 28             	mov    0x28(%eax),%eax
  103329:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10332c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103330:	74 58                	je     10338a <syscallSleep+0x7a>
  103332:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  103338:	8b 08                	mov    (%eax),%ecx
  10333a:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  10333d:	c7 c6 60 57 10 00    	mov    $0x105760,%esi
  103343:	89 c8                	mov    %ecx,%eax
  103345:	c1 e0 07             	shl    $0x7,%eax
  103348:	01 c8                	add    %ecx,%eax
  10334a:	c1 e0 05             	shl    $0x5,%eax
  10334d:	01 c8                	add    %ecx,%eax
  10334f:	c1 e0 02             	shl    $0x2,%eax
  103352:	01 f0                	add    %esi,%eax
  103354:	05 5c 40 00 00       	add    $0x405c,%eax
  103359:	89 18                	mov    %ebx,(%eax)
  10335b:	c7 c0 44 53 10 00    	mov    $0x105344,%eax
  103361:	8b 08                	mov    (%eax),%ecx
  103363:	c7 c2 60 57 10 00    	mov    $0x105760,%edx
  103369:	89 c8                	mov    %ecx,%eax
  10336b:	c1 e0 07             	shl    $0x7,%eax
  10336e:	01 c8                	add    %ecx,%eax
  103370:	c1 e0 05             	shl    $0x5,%eax
  103373:	01 c8                	add    %ecx,%eax
  103375:	c1 e0 02             	shl    $0x2,%eax
  103378:	01 d0                	add    %edx,%eax
  10337a:	05 54 40 00 00       	add    $0x4054,%eax
  10337f:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  103385:	cd 20                	int    $0x20
  103387:	90                   	nop
  103388:	eb 01                	jmp    10338b <syscallSleep+0x7b>
  10338a:	90                   	nop
  10338b:	83 c4 10             	add    $0x10,%esp
  10338e:	5b                   	pop    %ebx
  10338f:	5e                   	pop    %esi
  103390:	5d                   	pop    %ebp
  103391:	c3                   	ret    

00103392 <syscallExit>:
  103392:	55                   	push   %ebp
  103393:	89 e5                	mov    %esp,%ebp
  103395:	e8 25 ce ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  10339a:	05 66 1c 00 00       	add    $0x1c66,%eax
  10339f:	c7 c2 44 53 10 00    	mov    $0x105344,%edx
  1033a5:	8b 12                	mov    (%edx),%edx
  1033a7:	c7 c1 60 57 10 00    	mov    $0x105760,%ecx
  1033ad:	89 d0                	mov    %edx,%eax
  1033af:	c1 e0 07             	shl    $0x7,%eax
  1033b2:	01 d0                	add    %edx,%eax
  1033b4:	c1 e0 05             	shl    $0x5,%eax
  1033b7:	01 d0                	add    %edx,%eax
  1033b9:	c1 e0 02             	shl    $0x2,%eax
  1033bc:	01 c8                	add    %ecx,%eax
  1033be:	05 54 40 00 00       	add    $0x4054,%eax
  1033c3:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  1033c9:	cd 20                	int    $0x20
  1033cb:	90                   	nop
  1033cc:	5d                   	pop    %ebp
  1033cd:	c3                   	ret    

001033ce <GProtectFaultHandle>:
  1033ce:	55                   	push   %ebp
  1033cf:	89 e5                	mov    %esp,%ebp
  1033d1:	53                   	push   %ebx
  1033d2:	83 ec 04             	sub    $0x4,%esp
  1033d5:	e8 e5 cd ff ff       	call   1001bf <__x86.get_pc_thunk.ax>
  1033da:	05 26 1c 00 00       	add    $0x1c26,%eax
  1033df:	83 ec 08             	sub    $0x8,%esp
  1033e2:	68 2e 01 00 00       	push   $0x12e
  1033e7:	8d 90 70 e4 ff ff    	lea    -0x1b90(%eax),%edx
  1033ed:	52                   	push   %edx
  1033ee:	89 c3                	mov    %eax,%ebx
  1033f0:	e8 9d cd ff ff       	call   100192 <abort>
  1033f5:	83 c4 10             	add    $0x10,%esp
  1033f8:	90                   	nop
  1033f9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1033fc:	c9                   	leave  
  1033fd:	c3                   	ret    

001033fe <irqEmpty>:
  1033fe:	6a 00                	push   $0x0
  103400:	6a ff                	push   $0xffffffff
  103402:	eb 39                	jmp    10343d <asmDoIrq>

00103404 <irqErrorCode>:
  103404:	6a ff                	push   $0xffffffff
  103406:	eb 35                	jmp    10343d <asmDoIrq>

00103408 <irqDoubleFault>:
  103408:	6a ff                	push   $0xffffffff
  10340a:	eb 31                	jmp    10343d <asmDoIrq>

0010340c <irqInvalidTSS>:
  10340c:	6a ff                	push   $0xffffffff
  10340e:	eb 2d                	jmp    10343d <asmDoIrq>

00103410 <irqSegNotPresent>:
  103410:	6a ff                	push   $0xffffffff
  103412:	eb 29                	jmp    10343d <asmDoIrq>

00103414 <irqStackSegFault>:
  103414:	6a ff                	push   $0xffffffff
  103416:	eb 25                	jmp    10343d <asmDoIrq>

00103418 <irqGProtectFault>:
  103418:	6a 0d                	push   $0xd
  10341a:	eb 21                	jmp    10343d <asmDoIrq>

0010341c <irqPageFault>:
  10341c:	6a ff                	push   $0xffffffff
  10341e:	eb 1d                	jmp    10343d <asmDoIrq>

00103420 <irqAlignCheck>:
  103420:	6a ff                	push   $0xffffffff
  103422:	eb 19                	jmp    10343d <asmDoIrq>

00103424 <irqSecException>:
  103424:	6a ff                	push   $0xffffffff
  103426:	eb 15                	jmp    10343d <asmDoIrq>

00103428 <irqTimer>:
  103428:	6a 00                	push   $0x0
  10342a:	6a 20                	push   $0x20
  10342c:	eb 0f                	jmp    10343d <asmDoIrq>

0010342e <irqKeyboard>:
  10342e:	6a 00                	push   $0x0
  103430:	6a 21                	push   $0x21
  103432:	eb 09                	jmp    10343d <asmDoIrq>

00103434 <irqSyscall>:
  103434:	6a 00                	push   $0x0
  103436:	68 80 00 00 00       	push   $0x80
  10343b:	eb 00                	jmp    10343d <asmDoIrq>

0010343d <asmDoIrq>:
  10343d:	60                   	pusha  
  10343e:	1e                   	push   %ds
  10343f:	06                   	push   %es
  103440:	0f a0                	push   %fs
  103442:	0f a8                	push   %gs
  103444:	54                   	push   %esp
  103445:	e8 07 ef ff ff       	call   102351 <irqHandle>
  10344a:	83 c4 04             	add    $0x4,%esp
  10344d:	0f a9                	pop    %gs
  10344f:	0f a1                	pop    %fs
  103451:	07                   	pop    %es
  103452:	1f                   	pop    %ds
  103453:	61                   	popa   
  103454:	83 c4 04             	add    $0x4,%esp
  103457:	83 c4 04             	add    $0x4,%esp
  10345a:	cf                   	iret   
