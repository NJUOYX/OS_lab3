
kernel/kMain.o:     file format elf32-i386


Disassembly of section .text:

00100000 <inLong>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 14             	sub    $0x14,%esp
  100006:	e8 3a 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10000b:	05 f5 4f 00 00       	add    $0x4ff5,%eax
  100010:	8b 45 08             	mov    0x8(%ebp),%eax
  100013:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  100017:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10001a:	89 c2                	mov    %eax,%edx
  10001c:	ed                   	in     (%dx),%eax
  10001d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100020:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100023:	c9                   	leave  
  100024:	c3                   	ret    

00100025 <outLong>:
  100025:	55                   	push   %ebp
  100026:	89 e5                	mov    %esp,%ebp
  100028:	83 ec 04             	sub    $0x4,%esp
  10002b:	e8 15 04 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100030:	05 d0 4f 00 00       	add    $0x4fd0,%eax
  100035:	8b 45 08             	mov    0x8(%ebp),%eax
  100038:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10003c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10003f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100042:	ef                   	out    %eax,(%dx)
  100043:	90                   	nop
  100044:	c9                   	leave  
  100045:	c3                   	ret    

00100046 <inByte>:
  100046:	55                   	push   %ebp
  100047:	89 e5                	mov    %esp,%ebp
  100049:	83 ec 14             	sub    $0x14,%esp
  10004c:	e8 f4 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100051:	05 af 4f 00 00       	add    $0x4faf,%eax
  100056:	8b 45 08             	mov    0x8(%ebp),%eax
  100059:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  10005d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100060:	89 c2                	mov    %eax,%edx
  100062:	ec                   	in     (%dx),%al
  100063:	88 45 ff             	mov    %al,-0x1(%ebp)
  100066:	8a 45 ff             	mov    -0x1(%ebp),%al
  100069:	c9                   	leave  
  10006a:	c3                   	ret    

0010006b <outByte>:
  10006b:	55                   	push   %ebp
  10006c:	89 e5                	mov    %esp,%ebp
  10006e:	83 ec 08             	sub    $0x8,%esp
  100071:	e8 cf 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100076:	05 8a 4f 00 00       	add    $0x4f8a,%eax
  10007b:	8b 45 08             	mov    0x8(%ebp),%eax
  10007e:	8b 55 0c             	mov    0xc(%ebp),%edx
  100081:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100085:	88 d0                	mov    %dl,%al
  100087:	88 45 f8             	mov    %al,-0x8(%ebp)
  10008a:	8a 45 f8             	mov    -0x8(%ebp),%al
  10008d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100090:	ee                   	out    %al,(%dx)
  100091:	90                   	nop
  100092:	c9                   	leave  
  100093:	c3                   	ret    

00100094 <waitDisk>:
  100094:	55                   	push   %ebp
  100095:	89 e5                	mov    %esp,%ebp
  100097:	e8 a9 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10009c:	05 64 4f 00 00       	add    $0x4f64,%eax
  1000a1:	90                   	nop
  1000a2:	68 f7 01 00 00       	push   $0x1f7
  1000a7:	e8 9a ff ff ff       	call   100046 <inByte>
  1000ac:	83 c4 04             	add    $0x4,%esp
  1000af:	0f b6 c0             	movzbl %al,%eax
  1000b2:	25 c0 00 00 00       	and    $0xc0,%eax
  1000b7:	83 f8 40             	cmp    $0x40,%eax
  1000ba:	75 e6                	jne    1000a2 <waitDisk+0xe>
  1000bc:	90                   	nop
  1000bd:	c9                   	leave  
  1000be:	c3                   	ret    

001000bf <readSect>:
  1000bf:	55                   	push   %ebp
  1000c0:	89 e5                	mov    %esp,%ebp
  1000c2:	53                   	push   %ebx
  1000c3:	83 ec 10             	sub    $0x10,%esp
  1000c6:	e8 7a 03 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  1000cb:	05 35 4f 00 00       	add    $0x4f35,%eax
  1000d0:	e8 bf ff ff ff       	call   100094 <waitDisk>
  1000d5:	6a 01                	push   $0x1
  1000d7:	68 f2 01 00 00       	push   $0x1f2
  1000dc:	e8 8a ff ff ff       	call   10006b <outByte>
  1000e1:	83 c4 08             	add    $0x8,%esp
  1000e4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000e7:	0f be c0             	movsbl %al,%eax
  1000ea:	50                   	push   %eax
  1000eb:	68 f3 01 00 00       	push   $0x1f3
  1000f0:	e8 76 ff ff ff       	call   10006b <outByte>
  1000f5:	83 c4 08             	add    $0x8,%esp
  1000f8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1000fb:	c1 f8 08             	sar    $0x8,%eax
  1000fe:	0f be c0             	movsbl %al,%eax
  100101:	50                   	push   %eax
  100102:	68 f4 01 00 00       	push   $0x1f4
  100107:	e8 5f ff ff ff       	call   10006b <outByte>
  10010c:	83 c4 08             	add    $0x8,%esp
  10010f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100112:	c1 f8 10             	sar    $0x10,%eax
  100115:	0f be c0             	movsbl %al,%eax
  100118:	50                   	push   %eax
  100119:	68 f5 01 00 00       	push   $0x1f5
  10011e:	e8 48 ff ff ff       	call   10006b <outByte>
  100123:	83 c4 08             	add    $0x8,%esp
  100126:	8b 45 0c             	mov    0xc(%ebp),%eax
  100129:	c1 f8 18             	sar    $0x18,%eax
  10012c:	83 c8 e0             	or     $0xffffffe0,%eax
  10012f:	0f be c0             	movsbl %al,%eax
  100132:	50                   	push   %eax
  100133:	68 f6 01 00 00       	push   $0x1f6
  100138:	e8 2e ff ff ff       	call   10006b <outByte>
  10013d:	83 c4 08             	add    $0x8,%esp
  100140:	6a 20                	push   $0x20
  100142:	68 f7 01 00 00       	push   $0x1f7
  100147:	e8 1f ff ff ff       	call   10006b <outByte>
  10014c:	83 c4 08             	add    $0x8,%esp
  10014f:	e8 40 ff ff ff       	call   100094 <waitDisk>
  100154:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10015b:	eb 22                	jmp    10017f <readSect+0xc0>
  10015d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100160:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100167:	8b 45 08             	mov    0x8(%ebp),%eax
  10016a:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
  10016d:	68 f0 01 00 00       	push   $0x1f0
  100172:	e8 89 fe ff ff       	call   100000 <inLong>
  100177:	83 c4 04             	add    $0x4,%esp
  10017a:	89 03                	mov    %eax,(%ebx)
  10017c:	ff 45 f8             	incl   -0x8(%ebp)
  10017f:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
  100183:	7e d8                	jle    10015d <readSect+0x9e>
  100185:	90                   	nop
  100186:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100189:	c9                   	leave  
  10018a:	c3                   	ret    

0010018b <writeSect>:
  10018b:	55                   	push   %ebp
  10018c:	89 e5                	mov    %esp,%ebp
  10018e:	83 ec 10             	sub    $0x10,%esp
  100191:	e8 af 02 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100196:	05 6a 4e 00 00       	add    $0x4e6a,%eax
  10019b:	e8 f4 fe ff ff       	call   100094 <waitDisk>
  1001a0:	6a 01                	push   $0x1
  1001a2:	68 f2 01 00 00       	push   $0x1f2
  1001a7:	e8 bf fe ff ff       	call   10006b <outByte>
  1001ac:	83 c4 08             	add    $0x8,%esp
  1001af:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001b2:	0f be c0             	movsbl %al,%eax
  1001b5:	50                   	push   %eax
  1001b6:	68 f3 01 00 00       	push   $0x1f3
  1001bb:	e8 ab fe ff ff       	call   10006b <outByte>
  1001c0:	83 c4 08             	add    $0x8,%esp
  1001c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001c6:	c1 f8 08             	sar    $0x8,%eax
  1001c9:	0f be c0             	movsbl %al,%eax
  1001cc:	50                   	push   %eax
  1001cd:	68 f4 01 00 00       	push   $0x1f4
  1001d2:	e8 94 fe ff ff       	call   10006b <outByte>
  1001d7:	83 c4 08             	add    $0x8,%esp
  1001da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001dd:	c1 f8 10             	sar    $0x10,%eax
  1001e0:	0f be c0             	movsbl %al,%eax
  1001e3:	50                   	push   %eax
  1001e4:	68 f5 01 00 00       	push   $0x1f5
  1001e9:	e8 7d fe ff ff       	call   10006b <outByte>
  1001ee:	83 c4 08             	add    $0x8,%esp
  1001f1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1001f4:	c1 f8 18             	sar    $0x18,%eax
  1001f7:	83 c8 e0             	or     $0xffffffe0,%eax
  1001fa:	0f be c0             	movsbl %al,%eax
  1001fd:	50                   	push   %eax
  1001fe:	68 f6 01 00 00       	push   $0x1f6
  100203:	e8 63 fe ff ff       	call   10006b <outByte>
  100208:	83 c4 08             	add    $0x8,%esp
  10020b:	6a 30                	push   $0x30
  10020d:	68 f7 01 00 00       	push   $0x1f7
  100212:	e8 54 fe ff ff       	call   10006b <outByte>
  100217:	83 c4 08             	add    $0x8,%esp
  10021a:	e8 75 fe ff ff       	call   100094 <waitDisk>
  10021f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100226:	eb 22                	jmp    10024a <writeSect+0xbf>
  100228:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10022b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100232:	8b 45 08             	mov    0x8(%ebp),%eax
  100235:	01 d0                	add    %edx,%eax
  100237:	8b 00                	mov    (%eax),%eax
  100239:	50                   	push   %eax
  10023a:	68 f0 01 00 00       	push   $0x1f0
  10023f:	e8 e1 fd ff ff       	call   100025 <outLong>
  100244:	83 c4 08             	add    $0x8,%esp
  100247:	ff 45 fc             	incl   -0x4(%ebp)
  10024a:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  10024e:	7e d8                	jle    100228 <writeSect+0x9d>
  100250:	90                   	nop
  100251:	c9                   	leave  
  100252:	c3                   	ret    

00100253 <diskRead>:
  100253:	55                   	push   %ebp
  100254:	89 e5                	mov    %esp,%ebp
  100256:	81 ec 10 02 00 00    	sub    $0x210,%esp
  10025c:	e8 e4 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  100261:	05 9f 4d 00 00       	add    $0x4d9f,%eax
  100266:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10026d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100274:	8b 45 14             	mov    0x14(%ebp),%eax
  100277:	85 c0                	test   %eax,%eax
  100279:	79 05                	jns    100280 <diskRead+0x2d>
  10027b:	05 ff 01 00 00       	add    $0x1ff,%eax
  100280:	c1 f8 09             	sar    $0x9,%eax
  100283:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100286:	8b 45 14             	mov    0x14(%ebp),%eax
  100289:	25 ff 01 00 80       	and    $0x800001ff,%eax
  10028e:	85 c0                	test   %eax,%eax
  100290:	79 07                	jns    100299 <diskRead+0x46>
  100292:	48                   	dec    %eax
  100293:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100298:	40                   	inc    %eax
  100299:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10029c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10029f:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1002a5:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1002a8:	01 d0                	add    %edx,%eax
  1002aa:	50                   	push   %eax
  1002ab:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1002b1:	50                   	push   %eax
  1002b2:	e8 08 fe ff ff       	call   1000bf <readSect>
  1002b7:	83 c4 08             	add    $0x8,%esp
  1002ba:	ff 45 f8             	incl   -0x8(%ebp)
  1002bd:	eb 5e                	jmp    10031d <diskRead+0xca>
  1002bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002c5:	01 d0                	add    %edx,%eax
  1002c7:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1002cc:	85 c0                	test   %eax,%eax
  1002ce:	79 07                	jns    1002d7 <diskRead+0x84>
  1002d0:	48                   	dec    %eax
  1002d1:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1002d6:	40                   	inc    %eax
  1002d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  1002da:	8b 55 08             	mov    0x8(%ebp),%edx
  1002dd:	01 ca                	add    %ecx,%edx
  1002df:	8a 84 05 f0 fd ff ff 	mov    -0x210(%ebp,%eax,1),%al
  1002e6:	88 02                	mov    %al,(%edx)
  1002e8:	ff 45 fc             	incl   -0x4(%ebp)
  1002eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1002ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1002f1:	01 d0                	add    %edx,%eax
  1002f3:	25 ff 01 00 00       	and    $0x1ff,%eax
  1002f8:	85 c0                	test   %eax,%eax
  1002fa:	75 21                	jne    10031d <diskRead+0xca>
  1002fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1002ff:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  100305:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100308:	01 d0                	add    %edx,%eax
  10030a:	50                   	push   %eax
  10030b:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100311:	50                   	push   %eax
  100312:	e8 a8 fd ff ff       	call   1000bf <readSect>
  100317:	83 c4 08             	add    $0x8,%esp
  10031a:	ff 45 f8             	incl   -0x8(%ebp)
  10031d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100320:	0f af 45 10          	imul   0x10(%ebp),%eax
  100324:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  100327:	7c 96                	jl     1002bf <diskRead+0x6c>
  100329:	90                   	nop
  10032a:	c9                   	leave  
  10032b:	c3                   	ret    

0010032c <diskWrite>:
  10032c:	55                   	push   %ebp
  10032d:	89 e5                	mov    %esp,%ebp
  10032f:	81 ec 10 02 00 00    	sub    $0x210,%esp
  100335:	e8 0b 01 00 00       	call   100445 <__x86.get_pc_thunk.ax>
  10033a:	05 c6 4c 00 00       	add    $0x4cc6,%eax
  10033f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100346:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10034d:	8b 45 14             	mov    0x14(%ebp),%eax
  100350:	85 c0                	test   %eax,%eax
  100352:	79 05                	jns    100359 <diskWrite+0x2d>
  100354:	05 ff 01 00 00       	add    $0x1ff,%eax
  100359:	c1 f8 09             	sar    $0x9,%eax
  10035c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10035f:	8b 45 14             	mov    0x14(%ebp),%eax
  100362:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100367:	85 c0                	test   %eax,%eax
  100369:	79 07                	jns    100372 <diskWrite+0x46>
  10036b:	48                   	dec    %eax
  10036c:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100371:	40                   	inc    %eax
  100372:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100375:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100378:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10037e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100381:	01 d0                	add    %edx,%eax
  100383:	50                   	push   %eax
  100384:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10038a:	50                   	push   %eax
  10038b:	e8 2f fd ff ff       	call   1000bf <readSect>
  100390:	83 c4 08             	add    $0x8,%esp
  100393:	eb 7f                	jmp    100414 <diskWrite+0xe8>
  100395:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100398:	8b 45 08             	mov    0x8(%ebp),%eax
  10039b:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  10039e:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003a4:	01 d0                	add    %edx,%eax
  1003a6:	25 ff 01 00 80       	and    $0x800001ff,%eax
  1003ab:	85 c0                	test   %eax,%eax
  1003ad:	79 07                	jns    1003b6 <diskWrite+0x8a>
  1003af:	48                   	dec    %eax
  1003b0:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  1003b5:	40                   	inc    %eax
  1003b6:	89 c2                	mov    %eax,%edx
  1003b8:	8a 01                	mov    (%ecx),%al
  1003ba:	88 84 15 f0 fd ff ff 	mov    %al,-0x210(%ebp,%edx,1)
  1003c1:	ff 45 fc             	incl   -0x4(%ebp)
  1003c4:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1003c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003ca:	01 d0                	add    %edx,%eax
  1003cc:	25 ff 01 00 00       	and    $0x1ff,%eax
  1003d1:	85 c0                	test   %eax,%eax
  1003d3:	75 3f                	jne    100414 <diskWrite+0xe8>
  1003d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003d8:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003de:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1003e1:	01 d0                	add    %edx,%eax
  1003e3:	50                   	push   %eax
  1003e4:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  1003ea:	50                   	push   %eax
  1003eb:	e8 9b fd ff ff       	call   10018b <writeSect>
  1003f0:	83 c4 08             	add    $0x8,%esp
  1003f3:	ff 45 f8             	incl   -0x8(%ebp)
  1003f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1003f9:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  1003ff:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100402:	01 d0                	add    %edx,%eax
  100404:	50                   	push   %eax
  100405:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  10040b:	50                   	push   %eax
  10040c:	e8 ae fc ff ff       	call   1000bf <readSect>
  100411:	83 c4 08             	add    $0x8,%esp
  100414:	8b 45 0c             	mov    0xc(%ebp),%eax
  100417:	0f af 45 10          	imul   0x10(%ebp),%eax
  10041b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  10041e:	0f 8c 71 ff ff ff    	jl     100395 <diskWrite+0x69>
  100424:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100427:	8d 90 c9 00 00 00    	lea    0xc9(%eax),%edx
  10042d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100430:	01 d0                	add    %edx,%eax
  100432:	50                   	push   %eax
  100433:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  100439:	50                   	push   %eax
  10043a:	e8 4c fd ff ff       	call   10018b <writeSect>
  10043f:	83 c4 08             	add    $0x8,%esp
  100442:	90                   	nop
  100443:	c9                   	leave  
  100444:	c3                   	ret    

00100445 <__x86.get_pc_thunk.ax>:
  100445:	8b 04 24             	mov    (%esp),%eax
  100448:	c3                   	ret    

00100449 <readSuperBlock>:
  100449:	55                   	push   %ebp
  10044a:	89 e5                	mov    %esp,%ebp
  10044c:	53                   	push   %ebx
  10044d:	83 ec 04             	sub    $0x4,%esp
  100450:	e8 f0 ff ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100455:	05 ab 4b 00 00       	add    $0x4bab,%eax
  10045a:	6a 00                	push   $0x0
  10045c:	6a 01                	push   $0x1
  10045e:	68 00 04 00 00       	push   $0x400
  100463:	ff 75 08             	pushl  0x8(%ebp)
  100466:	89 c3                	mov    %eax,%ebx
  100468:	e8 e6 fd ff ff       	call   100253 <diskRead>
  10046d:	83 c4 10             	add    $0x10,%esp
  100470:	b8 00 00 00 00       	mov    $0x0,%eax
  100475:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100478:	c9                   	leave  
  100479:	c3                   	ret    

0010047a <readBlock>:
  10047a:	55                   	push   %ebp
  10047b:	89 e5                	mov    %esp,%ebp
  10047d:	56                   	push   %esi
  10047e:	53                   	push   %ebx
  10047f:	83 ec 20             	sub    $0x20,%esp
  100482:	e8 ae 03 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100487:	81 c3 79 4b 00 00    	add    $0x4b79,%ebx
  10048d:	89 e0                	mov    %esp,%eax
  10048f:	89 c6                	mov    %eax,%esi
  100491:	8b 45 08             	mov    0x8(%ebp),%eax
  100494:	8b 40 14             	mov    0x14(%eax),%eax
  100497:	85 c0                	test   %eax,%eax
  100499:	79 03                	jns    10049e <readBlock+0x24>
  10049b:	83 c0 03             	add    $0x3,%eax
  10049e:	c1 f8 02             	sar    $0x2,%eax
  1004a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004a4:	c7 45 f0 0e 00 00 00 	movl   $0xe,-0x10(%ebp)
  1004ab:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1004ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b1:	01 d0                	add    %edx,%eax
  1004b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1004b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004b9:	8d 50 ff             	lea    -0x1(%eax),%edx
  1004bc:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1004bf:	c1 e0 02             	shl    $0x2,%eax
  1004c2:	8d 50 03             	lea    0x3(%eax),%edx
  1004c5:	b8 10 00 00 00       	mov    $0x10,%eax
  1004ca:	48                   	dec    %eax
  1004cb:	01 d0                	add    %edx,%eax
  1004cd:	b9 10 00 00 00       	mov    $0x10,%ecx
  1004d2:	ba 00 00 00 00       	mov    $0x0,%edx
  1004d7:	f7 f1                	div    %ecx
  1004d9:	6b c0 10             	imul   $0x10,%eax,%eax
  1004dc:	29 c4                	sub    %eax,%esp
  1004de:	89 e0                	mov    %esp,%eax
  1004e0:	83 c0 03             	add    $0x3,%eax
  1004e3:	c1 e8 02             	shr    $0x2,%eax
  1004e6:	c1 e0 02             	shl    $0x2,%eax
  1004e9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1004ec:	8b 45 10             	mov    0x10(%ebp),%eax
  1004ef:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  1004f2:	7d 2b                	jge    10051f <readBlock+0xa5>
  1004f4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004f7:	8b 55 10             	mov    0x10(%ebp),%edx
  1004fa:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
  1004fe:	c1 e0 09             	shl    $0x9,%eax
  100501:	89 c2                	mov    %eax,%edx
  100503:	8b 45 08             	mov    0x8(%ebp),%eax
  100506:	8b 40 14             	mov    0x14(%eax),%eax
  100509:	52                   	push   %edx
  10050a:	50                   	push   %eax
  10050b:	6a 01                	push   $0x1
  10050d:	ff 75 14             	pushl  0x14(%ebp)
  100510:	e8 3e fd ff ff       	call   100253 <diskRead>
  100515:	83 c4 10             	add    $0x10,%esp
  100518:	b8 00 00 00 00       	mov    $0x0,%eax
  10051d:	eb 5d                	jmp    10057c <readBlock+0x102>
  10051f:	8b 45 10             	mov    0x10(%ebp),%eax
  100522:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  100525:	7d 50                	jge    100577 <readBlock+0xfd>
  100527:	8b 45 0c             	mov    0xc(%ebp),%eax
  10052a:	8b 40 44             	mov    0x44(%eax),%eax
  10052d:	c1 e0 09             	shl    $0x9,%eax
  100530:	89 c1                	mov    %eax,%ecx
  100532:	8b 45 08             	mov    0x8(%ebp),%eax
  100535:	8b 50 14             	mov    0x14(%eax),%edx
  100538:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10053b:	51                   	push   %ecx
  10053c:	52                   	push   %edx
  10053d:	6a 01                	push   $0x1
  10053f:	50                   	push   %eax
  100540:	e8 0e fd ff ff       	call   100253 <diskRead>
  100545:	83 c4 10             	add    $0x10,%esp
  100548:	8b 45 10             	mov    0x10(%ebp),%eax
  10054b:	2b 45 f0             	sub    -0x10(%ebp),%eax
  10054e:	89 c2                	mov    %eax,%edx
  100550:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100553:	8b 04 90             	mov    (%eax,%edx,4),%eax
  100556:	c1 e0 09             	shl    $0x9,%eax
  100559:	89 c2                	mov    %eax,%edx
  10055b:	8b 45 08             	mov    0x8(%ebp),%eax
  10055e:	8b 40 14             	mov    0x14(%eax),%eax
  100561:	52                   	push   %edx
  100562:	50                   	push   %eax
  100563:	6a 01                	push   $0x1
  100565:	ff 75 14             	pushl  0x14(%ebp)
  100568:	e8 e6 fc ff ff       	call   100253 <diskRead>
  10056d:	83 c4 10             	add    $0x10,%esp
  100570:	b8 00 00 00 00       	mov    $0x0,%eax
  100575:	eb 05                	jmp    10057c <readBlock+0x102>
  100577:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10057c:	89 f4                	mov    %esi,%esp
  10057e:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100581:	5b                   	pop    %ebx
  100582:	5e                   	pop    %esi
  100583:	5d                   	pop    %ebp
  100584:	c3                   	ret    

00100585 <readInode>:
  100585:	55                   	push   %ebp
  100586:	89 e5                	mov    %esp,%ebp
  100588:	57                   	push   %edi
  100589:	56                   	push   %esi
  10058a:	53                   	push   %ebx
  10058b:	83 ec 3c             	sub    $0x3c,%esp
  10058e:	e8 a2 02 00 00       	call   100835 <__x86.get_pc_thunk.bx>
  100593:	81 c3 6d 4a 00 00    	add    $0x4a6d,%ebx
  100599:	89 e0                	mov    %esp,%eax
  10059b:	89 c6                	mov    %eax,%esi
  10059d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1005a4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  1005ab:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  1005b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  1005b9:	8b 45 10             	mov    0x10(%ebp),%eax
  1005bc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1005c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1005c5:	8b 40 14             	mov    0x14(%eax),%eax
  1005c8:	8d 50 ff             	lea    -0x1(%eax),%edx
  1005cb:	89 55 d0             	mov    %edx,-0x30(%ebp)
  1005ce:	89 c2                	mov    %eax,%edx
  1005d0:	b8 10 00 00 00       	mov    $0x10,%eax
  1005d5:	48                   	dec    %eax
  1005d6:	01 d0                	add    %edx,%eax
  1005d8:	bf 10 00 00 00       	mov    $0x10,%edi
  1005dd:	ba 00 00 00 00       	mov    $0x0,%edx
  1005e2:	f7 f7                	div    %edi
  1005e4:	6b c0 10             	imul   $0x10,%eax,%eax
  1005e7:	29 c4                	sub    %eax,%esp
  1005e9:	89 e0                	mov    %esp,%eax
  1005eb:	83 c0 00             	add    $0x0,%eax
  1005ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
  1005f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
  1005f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1005ff:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
  100606:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
  10060d:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  100611:	74 0e                	je     100621 <readInode+0x9c>
  100613:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100616:	8b 45 14             	mov    0x14(%ebp),%eax
  100619:	01 d0                	add    %edx,%eax
  10061b:	8a 00                	mov    (%eax),%al
  10061d:	84 c0                	test   %al,%al
  10061f:	75 0a                	jne    10062b <readInode+0xa6>
  100621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100626:	e9 00 02 00 00       	jmp    10082b <readInode+0x2a6>
  10062b:	83 ec 04             	sub    $0x4,%esp
  10062e:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100631:	50                   	push   %eax
  100632:	6a 2f                	push   $0x2f
  100634:	ff 75 14             	pushl  0x14(%ebp)
  100637:	e8 3f 26 00 00       	call   102c7b <stringChr>
  10063c:	83 c4 10             	add    $0x10,%esp
  10063f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100642:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100646:	74 07                	je     10064f <readInode+0xca>
  100648:	8b 45 c0             	mov    -0x40(%ebp),%eax
  10064b:	85 c0                	test   %eax,%eax
  10064d:	74 0a                	je     100659 <readInode+0xd4>
  10064f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100654:	e9 d2 01 00 00       	jmp    10082b <readInode+0x2a6>
  100659:	ff 45 e4             	incl   -0x1c(%ebp)
  10065c:	8b 45 08             	mov    0x8(%ebp),%eax
  10065f:	8b 40 20             	mov    0x20(%eax),%eax
  100662:	c1 e0 09             	shl    $0x9,%eax
  100665:	89 c2                	mov    %eax,%edx
  100667:	8b 45 10             	mov    0x10(%ebp),%eax
  10066a:	89 10                	mov    %edx,(%eax)
  10066c:	8b 45 10             	mov    0x10(%ebp),%eax
  10066f:	8b 00                	mov    (%eax),%eax
  100671:	50                   	push   %eax
  100672:	6a 01                	push   $0x1
  100674:	68 80 00 00 00       	push   $0x80
  100679:	ff 75 0c             	pushl  0xc(%ebp)
  10067c:	e8 d2 fb ff ff       	call   100253 <diskRead>
  100681:	83 c4 10             	add    $0x10,%esp
  100684:	e9 8b 01 00 00       	jmp    100814 <readInode+0x28f>
  100689:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10068c:	8b 45 14             	mov    0x14(%ebp),%eax
  10068f:	01 c2                	add    %eax,%edx
  100691:	83 ec 04             	sub    $0x4,%esp
  100694:	8d 45 c0             	lea    -0x40(%ebp),%eax
  100697:	50                   	push   %eax
  100698:	6a 2f                	push   $0x2f
  10069a:	52                   	push   %edx
  10069b:	e8 db 25 00 00       	call   102c7b <stringChr>
  1006a0:	83 c4 10             	add    $0x10,%esp
  1006a3:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  1006a6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1006aa:	75 11                	jne    1006bd <readInode+0x138>
  1006ac:	8b 45 c0             	mov    -0x40(%ebp),%eax
  1006af:	85 c0                	test   %eax,%eax
  1006b1:	75 0a                	jne    1006bd <readInode+0x138>
  1006b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006b8:	e9 6e 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006bd:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  1006c1:	75 09                	jne    1006cc <readInode+0x147>
  1006c3:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  1006ca:	eb 15                	jmp    1006e1 <readInode+0x15c>
  1006cc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006cf:	8b 00                	mov    (%eax),%eax
  1006d1:	66 83 f8 01          	cmp    $0x1,%ax
  1006d5:	75 0a                	jne    1006e1 <readInode+0x15c>
  1006d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006dc:	e9 4a 01 00 00       	jmp    10082b <readInode+0x2a6>
  1006e1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1006e4:	8b 40 04             	mov    0x4(%eax),%eax
  1006e7:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  1006ea:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  1006f1:	e9 ea 00 00 00       	jmp    1007e0 <readInode+0x25b>
  1006f6:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1006f9:	50                   	push   %eax
  1006fa:	ff 75 d8             	pushl  -0x28(%ebp)
  1006fd:	ff 75 0c             	pushl  0xc(%ebp)
  100700:	ff 75 08             	pushl  0x8(%ebp)
  100703:	e8 72 fd ff ff       	call   10047a <readBlock>
  100708:	83 c4 10             	add    $0x10,%esp
  10070b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  10070e:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
  100712:	75 0a                	jne    10071e <readInode+0x199>
  100714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100719:	e9 0d 01 00 00       	jmp    10082b <readInode+0x2a6>
  10071e:	8b 45 cc             	mov    -0x34(%ebp),%eax
  100721:	89 45 c8             	mov    %eax,-0x38(%ebp)
  100724:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10072b:	e9 85 00 00 00       	jmp    1007b5 <readInode+0x230>
  100730:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100733:	c1 e0 07             	shl    $0x7,%eax
  100736:	89 c2                	mov    %eax,%edx
  100738:	8b 45 c8             	mov    -0x38(%ebp),%eax
  10073b:	01 d0                	add    %edx,%eax
  10073d:	8b 00                	mov    (%eax),%eax
  10073f:	85 c0                	test   %eax,%eax
  100741:	74 6e                	je     1007b1 <readInode+0x22c>
  100743:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100746:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  100749:	8b 55 14             	mov    0x14(%ebp),%edx
  10074c:	01 d1                	add    %edx,%ecx
  10074e:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100751:	89 d7                	mov    %edx,%edi
  100753:	c1 e7 07             	shl    $0x7,%edi
  100756:	8b 55 c8             	mov    -0x38(%ebp),%edx
  100759:	01 fa                	add    %edi,%edx
  10075b:	83 c2 04             	add    $0x4,%edx
  10075e:	83 ec 04             	sub    $0x4,%esp
  100761:	50                   	push   %eax
  100762:	51                   	push   %ecx
  100763:	52                   	push   %edx
  100764:	e8 39 26 00 00       	call   102da2 <stringCmp>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	85 c0                	test   %eax,%eax
  10076e:	75 42                	jne    1007b2 <readInode+0x22d>
  100770:	8b 45 08             	mov    0x8(%ebp),%eax
  100773:	8b 40 20             	mov    0x20(%eax),%eax
  100776:	c1 e0 09             	shl    $0x9,%eax
  100779:	89 c2                	mov    %eax,%edx
  10077b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10077e:	c1 e0 07             	shl    $0x7,%eax
  100781:	89 c1                	mov    %eax,%ecx
  100783:	8b 45 c8             	mov    -0x38(%ebp),%eax
  100786:	01 c8                	add    %ecx,%eax
  100788:	8b 00                	mov    (%eax),%eax
  10078a:	48                   	dec    %eax
  10078b:	c1 e0 07             	shl    $0x7,%eax
  10078e:	01 d0                	add    %edx,%eax
  100790:	89 c2                	mov    %eax,%edx
  100792:	8b 45 10             	mov    0x10(%ebp),%eax
  100795:	89 10                	mov    %edx,(%eax)
  100797:	8b 45 10             	mov    0x10(%ebp),%eax
  10079a:	8b 00                	mov    (%eax),%eax
  10079c:	50                   	push   %eax
  10079d:	6a 01                	push   $0x1
  10079f:	68 80 00 00 00       	push   $0x80
  1007a4:	ff 75 0c             	pushl  0xc(%ebp)
  1007a7:	e8 a7 fa ff ff       	call   100253 <diskRead>
  1007ac:	83 c4 10             	add    $0x10,%esp
  1007af:	eb 1a                	jmp    1007cb <readInode+0x246>
  1007b1:	90                   	nop
  1007b2:	ff 45 dc             	incl   -0x24(%ebp)
  1007b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1007b8:	8b 40 14             	mov    0x14(%eax),%eax
  1007bb:	c1 e8 07             	shr    $0x7,%eax
  1007be:	89 c2                	mov    %eax,%edx
  1007c0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007c3:	39 c2                	cmp    %eax,%edx
  1007c5:	0f 87 65 ff ff ff    	ja     100730 <readInode+0x1ab>
  1007cb:	8b 45 08             	mov    0x8(%ebp),%eax
  1007ce:	8b 40 14             	mov    0x14(%eax),%eax
  1007d1:	c1 e8 07             	shr    $0x7,%eax
  1007d4:	89 c2                	mov    %eax,%edx
  1007d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1007d9:	39 c2                	cmp    %eax,%edx
  1007db:	77 11                	ja     1007ee <readInode+0x269>
  1007dd:	ff 45 d8             	incl   -0x28(%ebp)
  1007e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007e3:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007e6:	0f 8c 0a ff ff ff    	jl     1006f6 <readInode+0x171>
  1007ec:	eb 01                	jmp    1007ef <readInode+0x26a>
  1007ee:	90                   	nop
  1007ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1007f2:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
  1007f5:	7d 16                	jge    10080d <readInode+0x288>
  1007f7:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1007fb:	75 09                	jne    100806 <readInode+0x281>
  1007fd:	8b 45 c0             	mov    -0x40(%ebp),%eax
  100800:	40                   	inc    %eax
  100801:	01 45 e4             	add    %eax,-0x1c(%ebp)
  100804:	eb 0e                	jmp    100814 <readInode+0x28f>
  100806:	b8 00 00 00 00       	mov    $0x0,%eax
  10080b:	eb 1e                	jmp    10082b <readInode+0x2a6>
  10080d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100812:	eb 17                	jmp    10082b <readInode+0x2a6>
  100814:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100817:	8b 45 14             	mov    0x14(%ebp),%eax
  10081a:	01 d0                	add    %edx,%eax
  10081c:	8a 00                	mov    (%eax),%al
  10081e:	84 c0                	test   %al,%al
  100820:	0f 85 63 fe ff ff    	jne    100689 <readInode+0x104>
  100826:	b8 00 00 00 00       	mov    $0x0,%eax
  10082b:	89 f4                	mov    %esi,%esp
  10082d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100830:	5b                   	pop    %ebx
  100831:	5e                   	pop    %esi
  100832:	5f                   	pop    %edi
  100833:	5d                   	pop    %ebp
  100834:	c3                   	ret    

00100835 <__x86.get_pc_thunk.bx>:
  100835:	8b 1c 24             	mov    (%esp),%ebx
  100838:	c3                   	ret    

00100839 <outByte>:
  100839:	55                   	push   %ebp
  10083a:	89 e5                	mov    %esp,%ebp
  10083c:	83 ec 08             	sub    $0x8,%esp
  10083f:	e8 01 fc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100844:	05 bc 47 00 00       	add    $0x47bc,%eax
  100849:	8b 45 08             	mov    0x8(%ebp),%eax
  10084c:	8b 55 0c             	mov    0xc(%ebp),%edx
  10084f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  100853:	88 d0                	mov    %dl,%al
  100855:	88 45 f8             	mov    %al,-0x8(%ebp)
  100858:	8a 45 f8             	mov    -0x8(%ebp),%al
  10085b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10085e:	ee                   	out    %al,(%dx)
  10085f:	90                   	nop
  100860:	c9                   	leave  
  100861:	c3                   	ret    

00100862 <initIntr>:
  100862:	55                   	push   %ebp
  100863:	89 e5                	mov    %esp,%ebp
  100865:	e8 db fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10086a:	05 96 47 00 00       	add    $0x4796,%eax
  10086f:	6a 11                	push   $0x11
  100871:	6a 20                	push   $0x20
  100873:	e8 c1 ff ff ff       	call   100839 <outByte>
  100878:	83 c4 08             	add    $0x8,%esp
  10087b:	6a 11                	push   $0x11
  10087d:	68 a0 00 00 00       	push   $0xa0
  100882:	e8 b2 ff ff ff       	call   100839 <outByte>
  100887:	83 c4 08             	add    $0x8,%esp
  10088a:	6a 20                	push   $0x20
  10088c:	6a 21                	push   $0x21
  10088e:	e8 a6 ff ff ff       	call   100839 <outByte>
  100893:	83 c4 08             	add    $0x8,%esp
  100896:	6a 28                	push   $0x28
  100898:	68 a1 00 00 00       	push   $0xa1
  10089d:	e8 97 ff ff ff       	call   100839 <outByte>
  1008a2:	83 c4 08             	add    $0x8,%esp
  1008a5:	6a 04                	push   $0x4
  1008a7:	6a 21                	push   $0x21
  1008a9:	e8 8b ff ff ff       	call   100839 <outByte>
  1008ae:	83 c4 08             	add    $0x8,%esp
  1008b1:	6a 02                	push   $0x2
  1008b3:	68 a1 00 00 00       	push   $0xa1
  1008b8:	e8 7c ff ff ff       	call   100839 <outByte>
  1008bd:	83 c4 08             	add    $0x8,%esp
  1008c0:	6a 03                	push   $0x3
  1008c2:	6a 21                	push   $0x21
  1008c4:	e8 70 ff ff ff       	call   100839 <outByte>
  1008c9:	83 c4 08             	add    $0x8,%esp
  1008cc:	6a 03                	push   $0x3
  1008ce:	68 a1 00 00 00       	push   $0xa1
  1008d3:	e8 61 ff ff ff       	call   100839 <outByte>
  1008d8:	83 c4 08             	add    $0x8,%esp
  1008db:	90                   	nop
  1008dc:	c9                   	leave  
  1008dd:	c3                   	ret    

001008de <saveIdt>:
  1008de:	55                   	push   %ebp
  1008df:	89 e5                	mov    %esp,%ebp
  1008e1:	e8 5f fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1008e6:	05 1a 47 00 00       	add    $0x471a,%eax
  1008eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  1008ee:	4a                   	dec    %edx
  1008ef:	66 89 90 20 01 00 00 	mov    %dx,0x120(%eax)
  1008f6:	8b 55 08             	mov    0x8(%ebp),%edx
  1008f9:	66 89 90 22 01 00 00 	mov    %dx,0x122(%eax)
  100900:	8b 55 08             	mov    0x8(%ebp),%edx
  100903:	c1 ea 10             	shr    $0x10,%edx
  100906:	66 89 90 24 01 00 00 	mov    %dx,0x124(%eax)
  10090d:	8d 80 20 01 00 00    	lea    0x120(%eax),%eax
  100913:	0f 01 18             	lidtl  (%eax)
  100916:	90                   	nop
  100917:	5d                   	pop    %ebp
  100918:	c3                   	ret    

00100919 <setIntr>:
  100919:	55                   	push   %ebp
  10091a:	89 e5                	mov    %esp,%ebp
  10091c:	e8 24 fb ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100921:	05 df 46 00 00       	add    $0x46df,%eax
  100926:	8b 45 10             	mov    0x10(%ebp),%eax
  100929:	8b 55 08             	mov    0x8(%ebp),%edx
  10092c:	66 89 02             	mov    %ax,(%edx)
  10092f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100932:	c1 e0 03             	shl    $0x3,%eax
  100935:	8b 55 08             	mov    0x8(%ebp),%edx
  100938:	66 89 42 02          	mov    %ax,0x2(%edx)
  10093c:	8b 45 08             	mov    0x8(%ebp),%eax
  10093f:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100943:	8b 45 08             	mov    0x8(%ebp),%eax
  100946:	8a 50 05             	mov    0x5(%eax),%dl
  100949:	83 e2 f0             	and    $0xfffffff0,%edx
  10094c:	83 ca 0e             	or     $0xe,%edx
  10094f:	88 50 05             	mov    %dl,0x5(%eax)
  100952:	8b 45 08             	mov    0x8(%ebp),%eax
  100955:	8a 50 05             	mov    0x5(%eax),%dl
  100958:	83 e2 ef             	and    $0xffffffef,%edx
  10095b:	88 50 05             	mov    %dl,0x5(%eax)
  10095e:	8b 45 14             	mov    0x14(%ebp),%eax
  100961:	88 c2                	mov    %al,%dl
  100963:	83 e2 03             	and    $0x3,%edx
  100966:	8b 45 08             	mov    0x8(%ebp),%eax
  100969:	83 e2 03             	and    $0x3,%edx
  10096c:	88 d1                	mov    %dl,%cl
  10096e:	c1 e1 05             	shl    $0x5,%ecx
  100971:	8a 50 05             	mov    0x5(%eax),%dl
  100974:	83 e2 9f             	and    $0xffffff9f,%edx
  100977:	09 ca                	or     %ecx,%edx
  100979:	88 50 05             	mov    %dl,0x5(%eax)
  10097c:	8b 45 08             	mov    0x8(%ebp),%eax
  10097f:	8a 50 05             	mov    0x5(%eax),%dl
  100982:	83 ca 80             	or     $0xffffff80,%edx
  100985:	88 50 05             	mov    %dl,0x5(%eax)
  100988:	8b 45 10             	mov    0x10(%ebp),%eax
  10098b:	c1 e8 10             	shr    $0x10,%eax
  10098e:	8b 55 08             	mov    0x8(%ebp),%edx
  100991:	66 89 42 06          	mov    %ax,0x6(%edx)
  100995:	90                   	nop
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <setTrap>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	e8 a5 fa ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1009a0:	05 60 46 00 00       	add    $0x4660,%eax
  1009a5:	8b 45 10             	mov    0x10(%ebp),%eax
  1009a8:	8b 55 08             	mov    0x8(%ebp),%edx
  1009ab:	66 89 02             	mov    %ax,(%edx)
  1009ae:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009b1:	c1 e0 03             	shl    $0x3,%eax
  1009b4:	8b 55 08             	mov    0x8(%ebp),%edx
  1009b7:	66 89 42 02          	mov    %ax,0x2(%edx)
  1009bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1009be:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1009c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009c5:	8a 50 05             	mov    0x5(%eax),%dl
  1009c8:	83 ca 0f             	or     $0xf,%edx
  1009cb:	88 50 05             	mov    %dl,0x5(%eax)
  1009ce:	8b 45 08             	mov    0x8(%ebp),%eax
  1009d1:	8a 50 05             	mov    0x5(%eax),%dl
  1009d4:	83 e2 ef             	and    $0xffffffef,%edx
  1009d7:	88 50 05             	mov    %dl,0x5(%eax)
  1009da:	8b 45 14             	mov    0x14(%ebp),%eax
  1009dd:	88 c2                	mov    %al,%dl
  1009df:	83 e2 03             	and    $0x3,%edx
  1009e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1009e5:	83 e2 03             	and    $0x3,%edx
  1009e8:	88 d1                	mov    %dl,%cl
  1009ea:	c1 e1 05             	shl    $0x5,%ecx
  1009ed:	8a 50 05             	mov    0x5(%eax),%dl
  1009f0:	83 e2 9f             	and    $0xffffff9f,%edx
  1009f3:	09 ca                	or     %ecx,%edx
  1009f5:	88 50 05             	mov    %dl,0x5(%eax)
  1009f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1009fb:	8a 50 05             	mov    0x5(%eax),%dl
  1009fe:	83 ca 80             	or     $0xffffff80,%edx
  100a01:	88 50 05             	mov    %dl,0x5(%eax)
  100a04:	8b 45 10             	mov    0x10(%ebp),%eax
  100a07:	c1 e8 10             	shr    $0x10,%eax
  100a0a:	8b 55 08             	mov    0x8(%ebp),%edx
  100a0d:	66 89 42 06          	mov    %ax,0x6(%edx)
  100a11:	90                   	nop
  100a12:	5d                   	pop    %ebp
  100a13:	c3                   	ret    

00100a14 <initIdt>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	53                   	push   %ebx
  100a18:	83 ec 10             	sub    $0x10,%esp
  100a1b:	e8 15 fe ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100a20:	81 c3 e0 45 00 00    	add    $0x45e0,%ebx
  100a26:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100a2d:	eb 2b                	jmp    100a5a <initIdt+0x46>
  100a2f:	c7 c0 11 2f 10 00    	mov    $0x102f11,%eax
  100a35:	89 c2                	mov    %eax,%edx
  100a37:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100a3a:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
  100a41:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a47:	01 c8                	add    %ecx,%eax
  100a49:	6a 00                	push   $0x0
  100a4b:	52                   	push   %edx
  100a4c:	6a 01                	push   $0x1
  100a4e:	50                   	push   %eax
  100a4f:	e8 44 ff ff ff       	call   100998 <setTrap>
  100a54:	83 c4 10             	add    $0x10,%esp
  100a57:	ff 45 f8             	incl   -0x8(%ebp)
  100a5a:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
  100a61:	7e cc                	jle    100a2f <initIdt+0x1b>
  100a63:	c7 c0 1b 2f 10 00    	mov    $0x102f1b,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 1f 2f 10 00    	mov    $0x102f1f,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 23 2f 10 00    	mov    $0x102f23,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 27 2f 10 00    	mov    $0x102f27,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 2b 2f 10 00    	mov    $0x102f2b,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 2f 2f 10 00    	mov    $0x102f2f,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 33 2f 10 00    	mov    $0x102f33,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 37 2f 10 00    	mov    $0x102f37,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 3b 2f 10 00    	mov    $0x102f3b,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 41 2f 10 00    	mov    $0x102f41,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 47 2f 10 00    	mov    $0x102f47,%eax
  100bab:	89 c2                	mov    %eax,%edx
  100bad:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100bb3:	8d 80 00 04 00 00    	lea    0x400(%eax),%eax
  100bb9:	6a 03                	push   $0x3
  100bbb:	52                   	push   %edx
  100bbc:	6a 01                	push   $0x1
  100bbe:	50                   	push   %eax
  100bbf:	e8 55 fd ff ff       	call   100919 <setIntr>
  100bc4:	83 c4 10             	add    $0x10,%esp
  100bc7:	68 00 08 00 00       	push   $0x800
  100bcc:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100bd2:	50                   	push   %eax
  100bd3:	e8 06 fd ff ff       	call   1008de <saveIdt>
  100bd8:	83 c4 08             	add    $0x8,%esp
  100bdb:	90                   	nop
  100bdc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bdf:	c9                   	leave  
  100be0:	c3                   	ret    

00100be1 <irqHandle>:
  100be1:	55                   	push   %ebp
  100be2:	89 e5                	mov    %esp,%ebp
  100be4:	56                   	push   %esi
  100be5:	53                   	push   %ebx
  100be6:	83 ec 10             	sub    $0x10,%esp
  100be9:	e8 47 fc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100bee:	81 c3 12 44 00 00    	add    $0x4412,%ebx
  100bf4:	b8 10 00 00 00       	mov    $0x10,%eax
  100bf9:	8e d8                	mov    %eax,%ds
  100bfb:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100c01:	8b 10                	mov    (%eax),%edx
  100c03:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100c09:	89 d0                	mov    %edx,%eax
  100c0b:	c1 e0 07             	shl    $0x7,%eax
  100c0e:	01 d0                	add    %edx,%eax
  100c10:	c1 e0 05             	shl    $0x5,%eax
  100c13:	01 d0                	add    %edx,%eax
  100c15:	c1 e0 02             	shl    $0x2,%eax
  100c18:	01 c8                	add    %ecx,%eax
  100c1a:	05 4c 40 00 00       	add    $0x404c,%eax
  100c1f:	8b 00                	mov    (%eax),%eax
  100c21:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c24:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100c2a:	8b 08                	mov    (%eax),%ecx
  100c2c:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100c32:	8b 10                	mov    (%eax),%edx
  100c34:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100c3a:	89 c8                	mov    %ecx,%eax
  100c3c:	c1 e0 07             	shl    $0x7,%eax
  100c3f:	01 c8                	add    %ecx,%eax
  100c41:	c1 e0 05             	shl    $0x5,%eax
  100c44:	01 c8                	add    %ecx,%eax
  100c46:	c1 e0 02             	shl    $0x2,%eax
  100c49:	01 f0                	add    %esi,%eax
  100c4b:	05 4c 40 00 00       	add    $0x404c,%eax
  100c50:	8b 08                	mov    (%eax),%ecx
  100c52:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100c58:	89 d0                	mov    %edx,%eax
  100c5a:	c1 e0 07             	shl    $0x7,%eax
  100c5d:	01 d0                	add    %edx,%eax
  100c5f:	c1 e0 05             	shl    $0x5,%eax
  100c62:	01 d0                	add    %edx,%eax
  100c64:	c1 e0 02             	shl    $0x2,%eax
  100c67:	01 f0                	add    %esi,%eax
  100c69:	05 50 40 00 00       	add    $0x4050,%eax
  100c6e:	89 08                	mov    %ecx,(%eax)
  100c70:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100c76:	8b 10                	mov    (%eax),%edx
  100c78:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100c7b:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100c81:	89 d0                	mov    %edx,%eax
  100c83:	c1 e0 07             	shl    $0x7,%eax
  100c86:	01 d0                	add    %edx,%eax
  100c88:	c1 e0 05             	shl    $0x5,%eax
  100c8b:	01 d0                	add    %edx,%eax
  100c8d:	c1 e0 02             	shl    $0x2,%eax
  100c90:	01 f0                	add    %esi,%eax
  100c92:	05 4c 40 00 00       	add    $0x404c,%eax
  100c97:	89 08                	mov    %ecx,(%eax)
  100c99:	8b 45 08             	mov    0x8(%ebp),%eax
  100c9c:	8b 40 30             	mov    0x30(%eax),%eax
  100c9f:	83 f8 21             	cmp    $0x21,%eax
  100ca2:	74 3f                	je     100ce3 <irqHandle+0x102>
  100ca4:	83 f8 21             	cmp    $0x21,%eax
  100ca7:	77 0c                	ja     100cb5 <irqHandle+0xd4>
  100ca9:	83 f8 0d             	cmp    $0xd,%eax
  100cac:	74 15                	je     100cc3 <irqHandle+0xe2>
  100cae:	83 f8 20             	cmp    $0x20,%eax
  100cb1:	74 20                	je     100cd3 <irqHandle+0xf2>
  100cb3:	eb 4e                	jmp    100d03 <irqHandle+0x122>
  100cb5:	3d 80 00 00 00       	cmp    $0x80,%eax
  100cba:	74 37                	je     100cf3 <irqHandle+0x112>
  100cbc:	83 f8 ff             	cmp    $0xffffffff,%eax
  100cbf:	74 58                	je     100d19 <irqHandle+0x138>
  100cc1:	eb 40                	jmp    100d03 <irqHandle+0x122>
  100cc3:	83 ec 0c             	sub    $0xc,%esp
  100cc6:	ff 75 08             	pushl  0x8(%ebp)
  100cc9:	e8 cd 0a 00 00       	call   10179b <GProtectFaultHandle>
  100cce:	83 c4 10             	add    $0x10,%esp
  100cd1:	eb 47                	jmp    100d1a <irqHandle+0x139>
  100cd3:	83 ec 0c             	sub    $0xc,%esp
  100cd6:	ff 75 08             	pushl  0x8(%ebp)
  100cd9:	e8 bc 01 00 00       	call   100e9a <timerHandle>
  100cde:	83 c4 10             	add    $0x10,%esp
  100ce1:	eb 37                	jmp    100d1a <irqHandle+0x139>
  100ce3:	83 ec 0c             	sub    $0xc,%esp
  100ce6:	ff 75 08             	pushl  0x8(%ebp)
  100ce9:	e8 db 03 00 00       	call   1010c9 <keyboardHandle>
  100cee:	83 c4 10             	add    $0x10,%esp
  100cf1:	eb 27                	jmp    100d1a <irqHandle+0x139>
  100cf3:	83 ec 0c             	sub    $0xc,%esp
  100cf6:	ff 75 08             	pushl  0x8(%ebp)
  100cf9:	e8 4e 00 00 00       	call   100d4c <syscallHandle>
  100cfe:	83 c4 10             	add    $0x10,%esp
  100d01:	eb 17                	jmp    100d1a <irqHandle+0x139>
  100d03:	83 ec 08             	sub    $0x8,%esp
  100d06:	6a 3b                	push   $0x3b
  100d08:	8d 83 70 df ff ff    	lea    -0x2090(%ebx),%eax
  100d0e:	50                   	push   %eax
  100d0f:	e8 3a 1f 00 00       	call   102c4e <abort>
  100d14:	83 c4 10             	add    $0x10,%esp
  100d17:	eb 01                	jmp    100d1a <irqHandle+0x139>
  100d19:	90                   	nop
  100d1a:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100d20:	8b 10                	mov    (%eax),%edx
  100d22:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100d28:	89 d0                	mov    %edx,%eax
  100d2a:	c1 e0 07             	shl    $0x7,%eax
  100d2d:	01 d0                	add    %edx,%eax
  100d2f:	c1 e0 05             	shl    $0x5,%eax
  100d32:	01 d0                	add    %edx,%eax
  100d34:	c1 e0 02             	shl    $0x2,%eax
  100d37:	01 c8                	add    %ecx,%eax
  100d39:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  100d3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d42:	89 02                	mov    %eax,(%edx)
  100d44:	90                   	nop
  100d45:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d48:	5b                   	pop    %ebx
  100d49:	5e                   	pop    %esi
  100d4a:	5d                   	pop    %ebp
  100d4b:	c3                   	ret    

00100d4c <syscallHandle>:
  100d4c:	55                   	push   %ebp
  100d4d:	89 e5                	mov    %esp,%ebp
  100d4f:	83 ec 08             	sub    $0x8,%esp
  100d52:	e8 ee f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100d57:	05 a9 42 00 00       	add    $0x42a9,%eax
  100d5c:	8b 55 08             	mov    0x8(%ebp),%edx
  100d5f:	8b 52 2c             	mov    0x2c(%edx),%edx
  100d62:	83 fa 04             	cmp    $0x4,%edx
  100d65:	77 5e                	ja     100dc5 <.L18+0x10>
  100d67:	c1 e2 02             	shl    $0x2,%edx
  100d6a:	8b 94 02 84 df ff ff 	mov    -0x207c(%edx,%eax,1),%edx
  100d71:	01 d0                	add    %edx,%eax
  100d73:	ff e0                	jmp    *%eax

00100d75 <.L13>:
  100d75:	83 ec 0c             	sub    $0xc,%esp
  100d78:	ff 75 08             	pushl  0x8(%ebp)
  100d7b:	e8 c6 03 00 00       	call   101146 <syscallWrite>
  100d80:	83 c4 10             	add    $0x10,%esp
  100d83:	eb 41                	jmp    100dc6 <.L18+0x11>

00100d85 <.L15>:
  100d85:	83 ec 0c             	sub    $0xc,%esp
  100d88:	ff 75 08             	pushl  0x8(%ebp)
  100d8b:	e8 77 05 00 00       	call   101307 <syscallFork>
  100d90:	83 c4 10             	add    $0x10,%esp
  100d93:	eb 31                	jmp    100dc6 <.L18+0x11>

00100d95 <.L16>:
  100d95:	83 ec 0c             	sub    $0xc,%esp
  100d98:	ff 75 08             	pushl  0x8(%ebp)
  100d9b:	e8 a4 08 00 00       	call   101644 <syscallExec>
  100da0:	83 c4 10             	add    $0x10,%esp
  100da3:	eb 21                	jmp    100dc6 <.L18+0x11>

00100da5 <.L17>:
  100da5:	83 ec 0c             	sub    $0xc,%esp
  100da8:	ff 75 08             	pushl  0x8(%ebp)
  100dab:	e8 2d 09 00 00       	call   1016dd <syscallSleep>
  100db0:	83 c4 10             	add    $0x10,%esp
  100db3:	eb 11                	jmp    100dc6 <.L18+0x11>

00100db5 <.L18>:
  100db5:	83 ec 0c             	sub    $0xc,%esp
  100db8:	ff 75 08             	pushl  0x8(%ebp)
  100dbb:	e8 9f 09 00 00       	call   10175f <syscallExit>
  100dc0:	83 c4 10             	add    $0x10,%esp
  100dc3:	eb 01                	jmp    100dc6 <.L18+0x11>
  100dc5:	90                   	nop
  100dc6:	90                   	nop
  100dc7:	c9                   	leave  
  100dc8:	c3                   	ret    

00100dc9 <__switch__>:
  100dc9:	55                   	push   %ebp
  100dca:	89 e5                	mov    %esp,%ebp
  100dcc:	56                   	push   %esi
  100dcd:	53                   	push   %ebx
  100dce:	83 ec 10             	sub    $0x10,%esp
  100dd1:	e8 6f f6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100dd6:	05 2a 42 00 00       	add    $0x422a,%eax
  100ddb:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100de1:	8b 0a                	mov    (%edx),%ecx
  100de3:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100de9:	89 ca                	mov    %ecx,%edx
  100deb:	c1 e2 07             	shl    $0x7,%edx
  100dee:	01 ca                	add    %ecx,%edx
  100df0:	c1 e2 05             	shl    $0x5,%edx
  100df3:	01 ca                	add    %ecx,%edx
  100df5:	c1 e2 02             	shl    $0x2,%edx
  100df8:	01 da                	add    %ebx,%edx
  100dfa:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  100e00:	8b 12                	mov    (%edx),%edx
  100e02:	89 55 f4             	mov    %edx,-0xc(%ebp)
  100e05:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100e0b:	8b 1a                	mov    (%edx),%ebx
  100e0d:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100e13:	8b 0a                	mov    (%edx),%ecx
  100e15:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100e1b:	89 da                	mov    %ebx,%edx
  100e1d:	c1 e2 07             	shl    $0x7,%edx
  100e20:	01 da                	add    %ebx,%edx
  100e22:	c1 e2 05             	shl    $0x5,%edx
  100e25:	01 da                	add    %ebx,%edx
  100e27:	c1 e2 02             	shl    $0x2,%edx
  100e2a:	01 f2                	add    %esi,%edx
  100e2c:	81 c2 50 40 00 00    	add    $0x4050,%edx
  100e32:	8b 1a                	mov    (%edx),%ebx
  100e34:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100e3a:	89 ca                	mov    %ecx,%edx
  100e3c:	c1 e2 07             	shl    $0x7,%edx
  100e3f:	01 ca                	add    %ecx,%edx
  100e41:	c1 e2 05             	shl    $0x5,%edx
  100e44:	01 ca                	add    %ecx,%edx
  100e46:	c1 e2 02             	shl    $0x2,%edx
  100e49:	01 f2                	add    %esi,%edx
  100e4b:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  100e51:	89 1a                	mov    %ebx,(%edx)
  100e53:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100e59:	8b 0a                	mov    (%edx),%ecx
  100e5b:	89 ca                	mov    %ecx,%edx
  100e5d:	c1 e2 07             	shl    $0x7,%edx
  100e60:	01 ca                	add    %ecx,%edx
  100e62:	c1 e2 05             	shl    $0x5,%edx
  100e65:	01 ca                	add    %ecx,%edx
  100e67:	c1 e2 02             	shl    $0x2,%edx
  100e6a:	8d 8a 40 40 00 00    	lea    0x4040(%edx),%ecx
  100e70:	c7 c2 a0 63 10 00    	mov    $0x1063a0,%edx
  100e76:	01 ca                	add    %ecx,%edx
  100e78:	83 c2 0c             	add    $0xc,%edx
  100e7b:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  100e81:	89 50 04             	mov    %edx,0x4(%eax)
  100e84:	8b 65 f4             	mov    -0xc(%ebp),%esp
  100e87:	0f a9                	pop    %gs
  100e89:	0f a1                	pop    %fs
  100e8b:	07                   	pop    %es
  100e8c:	1f                   	pop    %ds
  100e8d:	61                   	popa   
  100e8e:	83 c4 08             	add    $0x8,%esp
  100e91:	cf                   	iret   
  100e92:	90                   	nop
  100e93:	83 c4 10             	add    $0x10,%esp
  100e96:	5b                   	pop    %ebx
  100e97:	5e                   	pop    %esi
  100e98:	5d                   	pop    %ebp
  100e99:	c3                   	ret    

00100e9a <timerHandle>:
  100e9a:	55                   	push   %ebp
  100e9b:	89 e5                	mov    %esp,%ebp
  100e9d:	56                   	push   %esi
  100e9e:	53                   	push   %ebx
  100e9f:	83 ec 10             	sub    $0x10,%esp
  100ea2:	e8 8e f9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  100ea7:	81 c3 59 41 00 00    	add    $0x4159,%ebx
  100ead:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100eb4:	e9 be 00 00 00       	jmp    100f77 <timerHandle+0xdd>
  100eb9:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100ebf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ec2:	89 d0                	mov    %edx,%eax
  100ec4:	c1 e0 07             	shl    $0x7,%eax
  100ec7:	01 d0                	add    %edx,%eax
  100ec9:	c1 e0 05             	shl    $0x5,%eax
  100ecc:	01 d0                	add    %edx,%eax
  100ece:	c1 e0 02             	shl    $0x2,%eax
  100ed1:	01 c8                	add    %ecx,%eax
  100ed3:	05 54 40 00 00       	add    $0x4054,%eax
  100ed8:	8b 00                	mov    (%eax),%eax
  100eda:	83 f8 02             	cmp    $0x2,%eax
  100edd:	0f 85 91 00 00 00    	jne    100f74 <timerHandle+0xda>
  100ee3:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100ee9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eec:	89 d0                	mov    %edx,%eax
  100eee:	c1 e0 07             	shl    $0x7,%eax
  100ef1:	01 d0                	add    %edx,%eax
  100ef3:	c1 e0 05             	shl    $0x5,%eax
  100ef6:	01 d0                	add    %edx,%eax
  100ef8:	c1 e0 02             	shl    $0x2,%eax
  100efb:	01 c8                	add    %ecx,%eax
  100efd:	05 5c 40 00 00       	add    $0x405c,%eax
  100f02:	8b 00                	mov    (%eax),%eax
  100f04:	85 c0                	test   %eax,%eax
  100f06:	75 27                	jne    100f2f <timerHandle+0x95>
  100f08:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100f0e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f11:	89 d0                	mov    %edx,%eax
  100f13:	c1 e0 07             	shl    $0x7,%eax
  100f16:	01 d0                	add    %edx,%eax
  100f18:	c1 e0 05             	shl    $0x5,%eax
  100f1b:	01 d0                	add    %edx,%eax
  100f1d:	c1 e0 02             	shl    $0x2,%eax
  100f20:	01 c8                	add    %ecx,%eax
  100f22:	05 54 40 00 00       	add    $0x4054,%eax
  100f27:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  100f2d:	eb 45                	jmp    100f74 <timerHandle+0xda>
  100f2f:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100f35:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f38:	89 d0                	mov    %edx,%eax
  100f3a:	c1 e0 07             	shl    $0x7,%eax
  100f3d:	01 d0                	add    %edx,%eax
  100f3f:	c1 e0 05             	shl    $0x5,%eax
  100f42:	01 d0                	add    %edx,%eax
  100f44:	c1 e0 02             	shl    $0x2,%eax
  100f47:	01 c8                	add    %ecx,%eax
  100f49:	05 5c 40 00 00       	add    $0x405c,%eax
  100f4e:	8b 00                	mov    (%eax),%eax
  100f50:	8d 48 ff             	lea    -0x1(%eax),%ecx
  100f53:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100f59:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100f5c:	89 d0                	mov    %edx,%eax
  100f5e:	c1 e0 07             	shl    $0x7,%eax
  100f61:	01 d0                	add    %edx,%eax
  100f63:	c1 e0 05             	shl    $0x5,%eax
  100f66:	01 d0                	add    %edx,%eax
  100f68:	c1 e0 02             	shl    $0x2,%eax
  100f6b:	01 f0                	add    %esi,%eax
  100f6d:	05 5c 40 00 00       	add    $0x405c,%eax
  100f72:	89 08                	mov    %ecx,(%eax)
  100f74:	ff 45 f4             	incl   -0xc(%ebp)
  100f77:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  100f7b:	0f 8e 38 ff ff ff    	jle    100eb9 <timerHandle+0x1f>
  100f81:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100f87:	8b 10                	mov    (%eax),%edx
  100f89:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100f8f:	89 d0                	mov    %edx,%eax
  100f91:	c1 e0 07             	shl    $0x7,%eax
  100f94:	01 d0                	add    %edx,%eax
  100f96:	c1 e0 05             	shl    $0x5,%eax
  100f99:	01 d0                	add    %edx,%eax
  100f9b:	c1 e0 02             	shl    $0x2,%eax
  100f9e:	01 c8                	add    %ecx,%eax
  100fa0:	05 58 40 00 00       	add    $0x4058,%eax
  100fa5:	8b 00                	mov    (%eax),%eax
  100fa7:	83 f8 0f             	cmp    $0xf,%eax
  100faa:	0f 8e ca 00 00 00    	jle    10107a <timerHandle+0x1e0>
  100fb0:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100fb6:	8b 00                	mov    (%eax),%eax
  100fb8:	40                   	inc    %eax
  100fb9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100fbc:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
  100fc0:	75 07                	jne    100fc9 <timerHandle+0x12f>
  100fc2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100fc9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100fcc:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100fcf:	e9 95 00 00 00       	jmp    101069 <timerHandle+0x1cf>
  100fd4:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  100fda:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100fdd:	89 d0                	mov    %edx,%eax
  100fdf:	c1 e0 07             	shl    $0x7,%eax
  100fe2:	01 d0                	add    %edx,%eax
  100fe4:	c1 e0 05             	shl    $0x5,%eax
  100fe7:	01 d0                	add    %edx,%eax
  100fe9:	c1 e0 02             	shl    $0x2,%eax
  100fec:	01 c8                	add    %ecx,%eax
  100fee:	05 54 40 00 00       	add    $0x4054,%eax
  100ff3:	8b 00                	mov    (%eax),%eax
  100ff5:	85 c0                	test   %eax,%eax
  100ff7:	75 61                	jne    10105a <timerHandle+0x1c0>
  100ff9:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  100fff:	8b 10                	mov    (%eax),%edx
  101001:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  101007:	89 d0                	mov    %edx,%eax
  101009:	c1 e0 07             	shl    $0x7,%eax
  10100c:	01 d0                	add    %edx,%eax
  10100e:	c1 e0 05             	shl    $0x5,%eax
  101011:	01 d0                	add    %edx,%eax
  101013:	c1 e0 02             	shl    $0x2,%eax
  101016:	01 c8                	add    %ecx,%eax
  101018:	05 54 40 00 00       	add    $0x4054,%eax
  10101d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101023:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  101029:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10102c:	89 d0                	mov    %edx,%eax
  10102e:	c1 e0 07             	shl    $0x7,%eax
  101031:	01 d0                	add    %edx,%eax
  101033:	c1 e0 05             	shl    $0x5,%eax
  101036:	01 d0                	add    %edx,%eax
  101038:	c1 e0 02             	shl    $0x2,%eax
  10103b:	01 c8                	add    %ecx,%eax
  10103d:	05 54 40 00 00       	add    $0x4054,%eax
  101042:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  101048:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  10104e:	8b 55 ec             	mov    -0x14(%ebp),%edx
  101051:	89 10                	mov    %edx,(%eax)
  101053:	e8 71 fd ff ff       	call   100dc9 <__switch__>
  101058:	eb 20                	jmp    10107a <timerHandle+0x1e0>
  10105a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10105d:	40                   	inc    %eax
  10105e:	b9 09 00 00 00       	mov    $0x9,%ecx
  101063:	99                   	cltd   
  101064:	f7 f9                	idiv   %ecx
  101066:	89 55 ec             	mov    %edx,-0x14(%ebp)
  101069:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  10106f:	8b 00                	mov    (%eax),%eax
  101071:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  101074:	0f 85 5a ff ff ff    	jne    100fd4 <timerHandle+0x13a>
  10107a:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  101080:	8b 10                	mov    (%eax),%edx
  101082:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  101088:	89 d0                	mov    %edx,%eax
  10108a:	c1 e0 07             	shl    $0x7,%eax
  10108d:	01 d0                	add    %edx,%eax
  10108f:	c1 e0 05             	shl    $0x5,%eax
  101092:	01 d0                	add    %edx,%eax
  101094:	c1 e0 02             	shl    $0x2,%eax
  101097:	01 c8                	add    %ecx,%eax
  101099:	05 58 40 00 00       	add    $0x4058,%eax
  10109e:	8b 00                	mov    (%eax),%eax
  1010a0:	8d 48 01             	lea    0x1(%eax),%ecx
  1010a3:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1010a9:	89 d0                	mov    %edx,%eax
  1010ab:	c1 e0 07             	shl    $0x7,%eax
  1010ae:	01 d0                	add    %edx,%eax
  1010b0:	c1 e0 05             	shl    $0x5,%eax
  1010b3:	01 d0                	add    %edx,%eax
  1010b5:	c1 e0 02             	shl    $0x2,%eax
  1010b8:	01 d8                	add    %ebx,%eax
  1010ba:	05 58 40 00 00       	add    $0x4058,%eax
  1010bf:	89 08                	mov    %ecx,(%eax)
  1010c1:	90                   	nop
  1010c2:	83 c4 10             	add    $0x10,%esp
  1010c5:	5b                   	pop    %ebx
  1010c6:	5e                   	pop    %esi
  1010c7:	5d                   	pop    %ebp
  1010c8:	c3                   	ret    

001010c9 <keyboardHandle>:
  1010c9:	55                   	push   %ebp
  1010ca:	89 e5                	mov    %esp,%ebp
  1010cc:	53                   	push   %ebx
  1010cd:	83 ec 14             	sub    $0x14,%esp
  1010d0:	e8 60 f7 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1010d5:	81 c3 2b 3f 00 00    	add    $0x3f2b,%ebx
  1010db:	e8 5a 0a 00 00       	call   101b3a <getKeyCode>
  1010e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1010e3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1010e7:	74 57                	je     101140 <keyboardHandle+0x77>
  1010e9:	83 ec 0c             	sub    $0xc,%esp
  1010ec:	ff 75 f4             	pushl  -0xc(%ebp)
  1010ef:	e8 ea 0a 00 00       	call   101bde <getChar>
  1010f4:	83 c4 10             	add    $0x10,%esp
  1010f7:	0f be c0             	movsbl %al,%eax
  1010fa:	83 ec 0c             	sub    $0xc,%esp
  1010fd:	50                   	push   %eax
  1010fe:	e8 69 16 00 00       	call   10276c <putChar>
  101103:	83 c4 10             	add    $0x10,%esp
  101106:	c7 c0 40 5a 10 00    	mov    $0x105a40,%eax
  10110c:	8b 10                	mov    (%eax),%edx
  10110e:	c7 c0 60 5a 10 00    	mov    $0x105a60,%eax
  101114:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101117:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10111a:	c7 c0 40 5a 10 00    	mov    $0x105a40,%eax
  101120:	8b 00                	mov    (%eax),%eax
  101122:	40                   	inc    %eax
  101123:	25 ff 00 00 80       	and    $0x800000ff,%eax
  101128:	85 c0                	test   %eax,%eax
  10112a:	79 07                	jns    101133 <keyboardHandle+0x6a>
  10112c:	48                   	dec    %eax
  10112d:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  101132:	40                   	inc    %eax
  101133:	89 c2                	mov    %eax,%edx
  101135:	c7 c0 40 5a 10 00    	mov    $0x105a40,%eax
  10113b:	89 10                	mov    %edx,(%eax)
  10113d:	90                   	nop
  10113e:	eb 01                	jmp    101141 <keyboardHandle+0x78>
  101140:	90                   	nop
  101141:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101144:	c9                   	leave  
  101145:	c3                   	ret    

00101146 <syscallWrite>:
  101146:	55                   	push   %ebp
  101147:	89 e5                	mov    %esp,%ebp
  101149:	83 ec 08             	sub    $0x8,%esp
  10114c:	e8 f4 f2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101151:	05 af 3e 00 00       	add    $0x3eaf,%eax
  101156:	8b 45 08             	mov    0x8(%ebp),%eax
  101159:	8b 40 28             	mov    0x28(%eax),%eax
  10115c:	85 c0                	test   %eax,%eax
  10115e:	74 02                	je     101162 <syscallWrite+0x1c>
  101160:	eb 0f                	jmp    101171 <syscallWrite+0x2b>
  101162:	83 ec 0c             	sub    $0xc,%esp
  101165:	ff 75 08             	pushl  0x8(%ebp)
  101168:	e8 07 00 00 00       	call   101174 <syscallPrint>
  10116d:	83 c4 10             	add    $0x10,%esp
  101170:	90                   	nop
  101171:	90                   	nop
  101172:	c9                   	leave  
  101173:	c3                   	ret    

00101174 <syscallPrint>:
  101174:	55                   	push   %ebp
  101175:	89 e5                	mov    %esp,%ebp
  101177:	53                   	push   %ebx
  101178:	83 ec 24             	sub    $0x24,%esp
  10117b:	e8 b5 f6 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101180:	81 c3 80 3e 00 00    	add    $0x3e80,%ebx
  101186:	8b 45 08             	mov    0x8(%ebp),%eax
  101189:	8b 40 0c             	mov    0xc(%eax),%eax
  10118c:	89 45 e0             	mov    %eax,-0x20(%ebp)
  10118f:	8b 45 08             	mov    0x8(%ebp),%eax
  101192:	8b 40 24             	mov    0x24(%eax),%eax
  101195:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101198:	8b 45 08             	mov    0x8(%ebp),%eax
  10119b:	8b 40 20             	mov    0x20(%eax),%eax
  10119e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1011a1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1011a8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1011af:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  1011b3:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  1011b9:	8e 45 e0             	mov    -0x20(%ebp),%es
  1011bc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1011c3:	e9 10 01 00 00       	jmp    1012d8 <syscallPrint+0x164>
  1011c8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1011cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1011ce:	01 d0                	add    %edx,%eax
  1011d0:	26 8a 00             	mov    %es:(%eax),%al
  1011d3:	88 45 e7             	mov    %al,-0x19(%ebp)
  1011d6:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  1011da:	75 52                	jne    10122e <syscallPrint+0xba>
  1011dc:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1011e2:	8b 00                	mov    (%eax),%eax
  1011e4:	8d 50 01             	lea    0x1(%eax),%edx
  1011e7:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1011ed:	89 10                	mov    %edx,(%eax)
  1011ef:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1011f5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1011fb:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101201:	8b 00                	mov    (%eax),%eax
  101203:	83 f8 19             	cmp    $0x19,%eax
  101206:	0f 85 c9 00 00 00    	jne    1012d5 <syscallPrint+0x161>
  10120c:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101212:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101218:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  10121e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101224:	e8 fa 17 00 00       	call   102a23 <scrollScreen>
  101229:	e9 a7 00 00 00       	jmp    1012d5 <syscallPrint+0x161>
  10122e:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  101233:	80 cc 0c             	or     $0xc,%ah
  101236:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  10123a:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101240:	8b 10                	mov    (%eax),%edx
  101242:	89 d0                	mov    %edx,%eax
  101244:	c1 e0 02             	shl    $0x2,%eax
  101247:	01 d0                	add    %edx,%eax
  101249:	c1 e0 04             	shl    $0x4,%eax
  10124c:	89 c2                	mov    %eax,%edx
  10124e:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  101254:	8b 00                	mov    (%eax),%eax
  101256:	01 d0                	add    %edx,%eax
  101258:	01 c0                	add    %eax,%eax
  10125a:	89 45 e8             	mov    %eax,-0x18(%ebp)
  10125d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101260:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  101266:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101269:	66 89 02             	mov    %ax,(%edx)
  10126c:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  101272:	8b 00                	mov    (%eax),%eax
  101274:	8d 50 01             	lea    0x1(%eax),%edx
  101277:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  10127d:	89 10                	mov    %edx,(%eax)
  10127f:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  101285:	8b 00                	mov    (%eax),%eax
  101287:	83 f8 50             	cmp    $0x50,%eax
  10128a:	75 49                	jne    1012d5 <syscallPrint+0x161>
  10128c:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101292:	8b 00                	mov    (%eax),%eax
  101294:	8d 50 01             	lea    0x1(%eax),%edx
  101297:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  10129d:	89 10                	mov    %edx,(%eax)
  10129f:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1012a5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1012ab:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1012b1:	8b 00                	mov    (%eax),%eax
  1012b3:	83 f8 19             	cmp    $0x19,%eax
  1012b6:	75 1d                	jne    1012d5 <syscallPrint+0x161>
  1012b8:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1012be:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  1012c4:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1012ca:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  1012d0:	e8 4e 17 00 00       	call   102a23 <scrollScreen>
  1012d5:	ff 45 f4             	incl   -0xc(%ebp)
  1012d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1012db:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  1012de:	0f 8c e4 fe ff ff    	jl     1011c8 <syscallPrint+0x54>
  1012e4:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1012ea:	8b 10                	mov    (%eax),%edx
  1012ec:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1012f2:	8b 00                	mov    (%eax),%eax
  1012f4:	83 ec 08             	sub    $0x8,%esp
  1012f7:	52                   	push   %edx
  1012f8:	50                   	push   %eax
  1012f9:	e8 b2 16 00 00       	call   1029b0 <updateCursor>
  1012fe:	83 c4 10             	add    $0x10,%esp
  101301:	90                   	nop
  101302:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101305:	c9                   	leave  
  101306:	c3                   	ret    

00101307 <syscallFork>:
  101307:	55                   	push   %ebp
  101308:	89 e5                	mov    %esp,%ebp
  10130a:	57                   	push   %edi
  10130b:	56                   	push   %esi
  10130c:	53                   	push   %ebx
  10130d:	83 ec 10             	sub    $0x10,%esp
  101310:	e8 30 f1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101315:	05 eb 3c 00 00       	add    $0x3ceb,%eax
  10131a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  101321:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  101328:	e9 d8 02 00 00       	jmp    101605 <syscallFork+0x2fe>
  10132d:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101333:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  101336:	89 ca                	mov    %ecx,%edx
  101338:	c1 e2 07             	shl    $0x7,%edx
  10133b:	01 ca                	add    %ecx,%edx
  10133d:	c1 e2 05             	shl    $0x5,%edx
  101340:	01 ca                	add    %ecx,%edx
  101342:	c1 e2 02             	shl    $0x2,%edx
  101345:	01 da                	add    %ebx,%edx
  101347:	81 c2 54 40 00 00    	add    $0x4054,%edx
  10134d:	8b 12                	mov    (%edx),%edx
  10134f:	83 fa 03             	cmp    $0x3,%edx
  101352:	0f 85 aa 02 00 00    	jne    101602 <syscallFork+0x2fb>
  101358:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  10135b:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  101361:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  101364:	89 ca                	mov    %ecx,%edx
  101366:	c1 e2 07             	shl    $0x7,%edx
  101369:	01 ca                	add    %ecx,%edx
  10136b:	c1 e2 05             	shl    $0x5,%edx
  10136e:	01 ca                	add    %ecx,%edx
  101370:	c1 e2 02             	shl    $0x2,%edx
  101373:	01 f2                	add    %esi,%edx
  101375:	81 c2 60 40 00 00    	add    $0x4060,%edx
  10137b:	89 1a                	mov    %ebx,(%edx)
  10137d:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101383:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  101386:	89 ca                	mov    %ecx,%edx
  101388:	c1 e2 07             	shl    $0x7,%edx
  10138b:	01 ca                	add    %ecx,%edx
  10138d:	c1 e2 05             	shl    $0x5,%edx
  101390:	01 ca                	add    %ecx,%edx
  101392:	c1 e2 02             	shl    $0x2,%edx
  101395:	01 da                	add    %ebx,%edx
  101397:	81 c2 60 40 00 00    	add    $0x4060,%edx
  10139d:	8b 12                	mov    (%edx),%edx
  10139f:	89 55 e8             	mov    %edx,-0x18(%ebp)
  1013a2:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  1013a8:	8b 0a                	mov    (%edx),%ecx
  1013aa:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1013b0:	89 ca                	mov    %ecx,%edx
  1013b2:	c1 e2 07             	shl    $0x7,%edx
  1013b5:	01 ca                	add    %ecx,%edx
  1013b7:	c1 e2 05             	shl    $0x5,%edx
  1013ba:	01 ca                	add    %ecx,%edx
  1013bc:	c1 e2 02             	shl    $0x2,%edx
  1013bf:	01 da                	add    %ebx,%edx
  1013c1:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  1013c7:	8b 1a                	mov    (%edx),%ebx
  1013c9:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  1013cf:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1013d2:	89 ca                	mov    %ecx,%edx
  1013d4:	c1 e2 07             	shl    $0x7,%edx
  1013d7:	01 ca                	add    %ecx,%edx
  1013d9:	c1 e2 05             	shl    $0x5,%edx
  1013dc:	01 ca                	add    %ecx,%edx
  1013de:	c1 e2 02             	shl    $0x2,%edx
  1013e1:	01 f2                	add    %esi,%edx
  1013e3:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  1013e9:	89 1a                	mov    %ebx,(%edx)
  1013eb:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  1013f1:	8b 0a                	mov    (%edx),%ecx
  1013f3:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1013f9:	89 ca                	mov    %ecx,%edx
  1013fb:	c1 e2 07             	shl    $0x7,%edx
  1013fe:	01 ca                	add    %ecx,%edx
  101400:	c1 e2 05             	shl    $0x5,%edx
  101403:	01 ca                	add    %ecx,%edx
  101405:	c1 e2 02             	shl    $0x2,%edx
  101408:	01 da                	add    %ebx,%edx
  10140a:	81 c2 50 40 00 00    	add    $0x4050,%edx
  101410:	8b 1a                	mov    (%edx),%ebx
  101412:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  101418:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10141b:	89 ca                	mov    %ecx,%edx
  10141d:	c1 e2 07             	shl    $0x7,%edx
  101420:	01 ca                	add    %ecx,%edx
  101422:	c1 e2 05             	shl    $0x5,%edx
  101425:	01 ca                	add    %ecx,%edx
  101427:	c1 e2 02             	shl    $0x2,%edx
  10142a:	01 f2                	add    %esi,%edx
  10142c:	81 c2 50 40 00 00    	add    $0x4050,%edx
  101432:	89 1a                	mov    %ebx,(%edx)
  101434:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  10143a:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10143d:	89 ca                	mov    %ecx,%edx
  10143f:	c1 e2 07             	shl    $0x7,%edx
  101442:	01 ca                	add    %ecx,%edx
  101444:	c1 e2 05             	shl    $0x5,%edx
  101447:	01 ca                	add    %ecx,%edx
  101449:	c1 e2 02             	shl    $0x2,%edx
  10144c:	01 da                	add    %ebx,%edx
  10144e:	81 c2 54 40 00 00    	add    $0x4054,%edx
  101454:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  10145a:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101460:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101463:	89 ca                	mov    %ecx,%edx
  101465:	c1 e2 07             	shl    $0x7,%edx
  101468:	01 ca                	add    %ecx,%edx
  10146a:	c1 e2 05             	shl    $0x5,%edx
  10146d:	01 ca                	add    %ecx,%edx
  10146f:	c1 e2 02             	shl    $0x2,%edx
  101472:	01 da                	add    %ebx,%edx
  101474:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  10147a:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101480:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101486:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101489:	89 ca                	mov    %ecx,%edx
  10148b:	c1 e2 07             	shl    $0x7,%edx
  10148e:	01 ca                	add    %ecx,%edx
  101490:	c1 e2 05             	shl    $0x5,%edx
  101493:	01 ca                	add    %ecx,%edx
  101495:	c1 e2 02             	shl    $0x2,%edx
  101498:	01 da                	add    %ebx,%edx
  10149a:	81 c2 58 40 00 00    	add    $0x4058,%edx
  1014a0:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1014a6:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  1014ac:	8b 0a                	mov    (%edx),%ecx
  1014ae:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  1014b4:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  1014b7:	89 da                	mov    %ebx,%edx
  1014b9:	c1 e2 07             	shl    $0x7,%edx
  1014bc:	01 da                	add    %ebx,%edx
  1014be:	c1 e2 05             	shl    $0x5,%edx
  1014c1:	01 da                	add    %ebx,%edx
  1014c3:	c1 e2 02             	shl    $0x2,%edx
  1014c6:	01 f2                	add    %esi,%edx
  1014c8:	8d b2 00 40 00 00    	lea    0x4000(%edx),%esi
  1014ce:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1014d4:	89 ca                	mov    %ecx,%edx
  1014d6:	c1 e2 07             	shl    $0x7,%edx
  1014d9:	01 ca                	add    %ecx,%edx
  1014db:	c1 e2 05             	shl    $0x5,%edx
  1014de:	01 ca                	add    %ecx,%edx
  1014e0:	c1 e2 02             	shl    $0x2,%edx
  1014e3:	01 da                	add    %ebx,%edx
  1014e5:	81 c2 00 40 00 00    	add    $0x4000,%edx
  1014eb:	89 f3                	mov    %esi,%ebx
  1014ed:	89 d6                	mov    %edx,%esi
  1014ef:	ba 13 00 00 00       	mov    $0x13,%edx
  1014f4:	89 df                	mov    %ebx,%edi
  1014f6:	89 d1                	mov    %edx,%ecx
  1014f8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1014fa:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1014fd:	01 d2                	add    %edx,%edx
  1014ff:	42                   	inc    %edx
  101500:	c1 e2 03             	shl    $0x3,%edx
  101503:	83 ca 03             	or     $0x3,%edx
  101506:	89 d3                	mov    %edx,%ebx
  101508:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  10150e:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101511:	89 ca                	mov    %ecx,%edx
  101513:	c1 e2 07             	shl    $0x7,%edx
  101516:	01 ca                	add    %ecx,%edx
  101518:	c1 e2 05             	shl    $0x5,%edx
  10151b:	01 ca                	add    %ecx,%edx
  10151d:	c1 e2 02             	shl    $0x2,%edx
  101520:	01 f2                	add    %esi,%edx
  101522:	81 c2 3c 40 00 00    	add    $0x403c,%edx
  101528:	89 1a                	mov    %ebx,(%edx)
  10152a:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10152d:	42                   	inc    %edx
  10152e:	01 d2                	add    %edx,%edx
  101530:	c1 e2 03             	shl    $0x3,%edx
  101533:	83 ca 03             	or     $0x3,%edx
  101536:	89 d3                	mov    %edx,%ebx
  101538:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  10153e:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101541:	89 ca                	mov    %ecx,%edx
  101543:	c1 e2 07             	shl    $0x7,%edx
  101546:	01 ca                	add    %ecx,%edx
  101548:	c1 e2 05             	shl    $0x5,%edx
  10154b:	01 ca                	add    %ecx,%edx
  10154d:	c1 e2 02             	shl    $0x2,%edx
  101550:	01 f2                	add    %esi,%edx
  101552:	81 c2 48 40 00 00    	add    $0x4048,%edx
  101558:	89 1a                	mov    %ebx,(%edx)
  10155a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  101561:	eb 42                	jmp    1015a5 <syscallFork+0x29e>
  101563:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101569:	8b 0a                	mov    (%edx),%ecx
  10156b:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101571:	89 ca                	mov    %ecx,%edx
  101573:	c1 e2 07             	shl    $0x7,%edx
  101576:	01 ca                	add    %ecx,%edx
  101578:	c1 e2 05             	shl    $0x5,%edx
  10157b:	01 ca                	add    %ecx,%edx
  10157d:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  101580:	01 ca                	add    %ecx,%edx
  101582:	8b 34 93             	mov    (%ebx,%edx,4),%esi
  101585:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  10158b:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10158e:	89 ca                	mov    %ecx,%edx
  101590:	c1 e2 07             	shl    $0x7,%edx
  101593:	01 ca                	add    %ecx,%edx
  101595:	c1 e2 05             	shl    $0x5,%edx
  101598:	01 ca                	add    %ecx,%edx
  10159a:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10159d:	01 ca                	add    %ecx,%edx
  10159f:	89 34 93             	mov    %esi,(%ebx,%edx,4)
  1015a2:	ff 45 ec             	incl   -0x14(%ebp)
  1015a5:	81 7d ec ff 0f 00 00 	cmpl   $0xfff,-0x14(%ebp)
  1015ac:	7e b5                	jle    101563 <syscallFork+0x25c>
  1015ae:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1015b4:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1015b7:	89 ca                	mov    %ecx,%edx
  1015b9:	c1 e2 07             	shl    $0x7,%edx
  1015bc:	01 ca                	add    %ecx,%edx
  1015be:	c1 e2 05             	shl    $0x5,%edx
  1015c1:	01 ca                	add    %ecx,%edx
  1015c3:	c1 e2 02             	shl    $0x2,%edx
  1015c6:	01 da                	add    %ebx,%edx
  1015c8:	81 c2 2c 40 00 00    	add    $0x402c,%edx
  1015ce:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1015d4:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  1015da:	8b 12                	mov    (%edx),%edx
  1015dc:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  1015e2:	89 d0                	mov    %edx,%eax
  1015e4:	c1 e0 07             	shl    $0x7,%eax
  1015e7:	01 d0                	add    %edx,%eax
  1015e9:	c1 e0 05             	shl    $0x5,%eax
  1015ec:	01 d0                	add    %edx,%eax
  1015ee:	c1 e0 02             	shl    $0x2,%eax
  1015f1:	01 c8                	add    %ecx,%eax
  1015f3:	8d 90 2c 40 00 00    	lea    0x402c(%eax),%edx
  1015f9:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1015fc:	89 02                	mov    %eax,(%edx)
  1015fe:	cd 20                	int    $0x20
  101600:	eb 3a                	jmp    10163c <syscallFork+0x335>
  101602:	ff 45 f0             	incl   -0x10(%ebp)
  101605:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
  101609:	0f 8e 1e fd ff ff    	jle    10132d <syscallFork+0x26>
  10160f:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101615:	8b 12                	mov    (%edx),%edx
  101617:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  10161d:	89 d0                	mov    %edx,%eax
  10161f:	c1 e0 07             	shl    $0x7,%eax
  101622:	01 d0                	add    %edx,%eax
  101624:	c1 e0 05             	shl    $0x5,%eax
  101627:	01 d0                	add    %edx,%eax
  101629:	c1 e0 02             	shl    $0x2,%eax
  10162c:	01 c8                	add    %ecx,%eax
  10162e:	05 2c 40 00 00       	add    $0x402c,%eax
  101633:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  101639:	cd 20                	int    $0x20
  10163b:	90                   	nop
  10163c:	83 c4 10             	add    $0x10,%esp
  10163f:	5b                   	pop    %ebx
  101640:	5e                   	pop    %esi
  101641:	5f                   	pop    %edi
  101642:	5d                   	pop    %ebp
  101643:	c3                   	ret    

00101644 <syscallExec>:
  101644:	55                   	push   %ebp
  101645:	89 e5                	mov    %esp,%ebp
  101647:	53                   	push   %ebx
  101648:	83 ec 24             	sub    $0x24,%esp
  10164b:	e8 7b 01 00 00       	call   1017cb <__x86.get_pc_thunk.dx>
  101650:	81 c2 b0 39 00 00    	add    $0x39b0,%edx
  101656:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10165d:	8b 45 08             	mov    0x8(%ebp),%eax
  101660:	8b 40 28             	mov    0x28(%eax),%eax
  101663:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101666:	8b 45 08             	mov    0x8(%ebp),%eax
  101669:	8b 40 20             	mov    0x20(%eax),%eax
  10166c:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10166f:	8b 45 08             	mov    0x8(%ebp),%eax
  101672:	8b 40 0c             	mov    0xc(%eax),%eax
  101675:	89 45 d8             	mov    %eax,-0x28(%ebp)
  101678:	8e 45 d8             	mov    -0x28(%ebp),%es
  10167b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101682:	eb 11                	jmp    101695 <syscallExec+0x51>
  101684:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101687:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10168a:	01 c8                	add    %ecx,%eax
  10168c:	26 8a 00             	mov    %es:(%eax),%al
  10168f:	88 45 e3             	mov    %al,-0x1d(%ebp)
  101692:	ff 45 f4             	incl   -0xc(%ebp)
  101695:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101698:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10169b:	7c e7                	jl     101684 <syscallExec+0x40>
  10169d:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  1016a3:	8b 00                	mov    (%eax),%eax
  1016a5:	40                   	inc    %eax
  1016a6:	c1 e0 14             	shl    $0x14,%eax
  1016a9:	89 c1                	mov    %eax,%ecx
  1016ab:	83 ec 04             	sub    $0x4,%esp
  1016ae:	8d 45 dc             	lea    -0x24(%ebp),%eax
  1016b1:	50                   	push   %eax
  1016b2:	51                   	push   %ecx
  1016b3:	ff 75 f0             	pushl  -0x10(%ebp)
  1016b6:	89 d3                	mov    %edx,%ebx
  1016b8:	e8 80 0b 00 00       	call   10223d <loadElf>
  1016bd:	83 c4 10             	add    $0x10,%esp
  1016c0:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1016c3:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  1016c7:	74 0e                	je     1016d7 <syscallExec+0x93>
  1016c9:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1016cc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1016cf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1016d2:	ff d0                	call   *%eax
  1016d4:	90                   	nop
  1016d5:	eb 01                	jmp    1016d8 <syscallExec+0x94>
  1016d7:	90                   	nop
  1016d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1016db:	c9                   	leave  
  1016dc:	c3                   	ret    

001016dd <syscallSleep>:
  1016dd:	55                   	push   %ebp
  1016de:	89 e5                	mov    %esp,%ebp
  1016e0:	56                   	push   %esi
  1016e1:	53                   	push   %ebx
  1016e2:	83 ec 10             	sub    $0x10,%esp
  1016e5:	e8 e1 00 00 00       	call   1017cb <__x86.get_pc_thunk.dx>
  1016ea:	81 c2 16 39 00 00    	add    $0x3916,%edx
  1016f0:	8b 45 08             	mov    0x8(%ebp),%eax
  1016f3:	8b 40 28             	mov    0x28(%eax),%eax
  1016f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1016f9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1016fd:	74 58                	je     101757 <syscallSleep+0x7a>
  1016ff:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  101705:	8b 08                	mov    (%eax),%ecx
  101707:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  10170a:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  101710:	89 c8                	mov    %ecx,%eax
  101712:	c1 e0 07             	shl    $0x7,%eax
  101715:	01 c8                	add    %ecx,%eax
  101717:	c1 e0 05             	shl    $0x5,%eax
  10171a:	01 c8                	add    %ecx,%eax
  10171c:	c1 e0 02             	shl    $0x2,%eax
  10171f:	01 f0                	add    %esi,%eax
  101721:	05 5c 40 00 00       	add    $0x405c,%eax
  101726:	89 18                	mov    %ebx,(%eax)
  101728:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  10172e:	8b 08                	mov    (%eax),%ecx
  101730:	c7 c2 a0 63 10 00    	mov    $0x1063a0,%edx
  101736:	89 c8                	mov    %ecx,%eax
  101738:	c1 e0 07             	shl    $0x7,%eax
  10173b:	01 c8                	add    %ecx,%eax
  10173d:	c1 e0 05             	shl    $0x5,%eax
  101740:	01 c8                	add    %ecx,%eax
  101742:	c1 e0 02             	shl    $0x2,%eax
  101745:	01 d0                	add    %edx,%eax
  101747:	05 54 40 00 00       	add    $0x4054,%eax
  10174c:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  101752:	cd 20                	int    $0x20
  101754:	90                   	nop
  101755:	eb 01                	jmp    101758 <syscallSleep+0x7b>
  101757:	90                   	nop
  101758:	83 c4 10             	add    $0x10,%esp
  10175b:	5b                   	pop    %ebx
  10175c:	5e                   	pop    %esi
  10175d:	5d                   	pop    %ebp
  10175e:	c3                   	ret    

0010175f <syscallExit>:
  10175f:	55                   	push   %ebp
  101760:	89 e5                	mov    %esp,%ebp
  101762:	e8 de ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101767:	05 99 38 00 00       	add    $0x3899,%eax
  10176c:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101772:	8b 12                	mov    (%edx),%edx
  101774:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  10177a:	89 d0                	mov    %edx,%eax
  10177c:	c1 e0 07             	shl    $0x7,%eax
  10177f:	01 d0                	add    %edx,%eax
  101781:	c1 e0 05             	shl    $0x5,%eax
  101784:	01 d0                	add    %edx,%eax
  101786:	c1 e0 02             	shl    $0x2,%eax
  101789:	01 c8                	add    %ecx,%eax
  10178b:	05 54 40 00 00       	add    $0x4054,%eax
  101790:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  101796:	cd 20                	int    $0x20
  101798:	90                   	nop
  101799:	5d                   	pop    %ebp
  10179a:	c3                   	ret    

0010179b <GProtectFaultHandle>:
  10179b:	55                   	push   %ebp
  10179c:	89 e5                	mov    %esp,%ebp
  10179e:	53                   	push   %ebx
  10179f:	83 ec 04             	sub    $0x4,%esp
  1017a2:	e8 9e ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1017a7:	05 59 38 00 00       	add    $0x3859,%eax
  1017ac:	83 ec 08             	sub    $0x8,%esp
  1017af:	68 1b 01 00 00       	push   $0x11b
  1017b4:	8d 90 70 df ff ff    	lea    -0x2090(%eax),%edx
  1017ba:	52                   	push   %edx
  1017bb:	89 c3                	mov    %eax,%ebx
  1017bd:	e8 8c 14 00 00       	call   102c4e <abort>
  1017c2:	83 c4 10             	add    $0x10,%esp
  1017c5:	90                   	nop
  1017c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1017c9:	c9                   	leave  
  1017ca:	c3                   	ret    

001017cb <__x86.get_pc_thunk.dx>:
  1017cb:	8b 14 24             	mov    (%esp),%edx
  1017ce:	c3                   	ret    

001017cf <inByte>:
  1017cf:	55                   	push   %ebp
  1017d0:	89 e5                	mov    %esp,%ebp
  1017d2:	83 ec 14             	sub    $0x14,%esp
  1017d5:	e8 6b ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1017da:	05 26 38 00 00       	add    $0x3826,%eax
  1017df:	8b 45 08             	mov    0x8(%ebp),%eax
  1017e2:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  1017e6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1017e9:	89 c2                	mov    %eax,%edx
  1017eb:	ec                   	in     (%dx),%al
  1017ec:	88 45 ff             	mov    %al,-0x1(%ebp)
  1017ef:	8a 45 ff             	mov    -0x1(%ebp),%al
  1017f2:	c9                   	leave  
  1017f3:	c3                   	ret    

001017f4 <outByte>:
  1017f4:	55                   	push   %ebp
  1017f5:	89 e5                	mov    %esp,%ebp
  1017f7:	83 ec 08             	sub    $0x8,%esp
  1017fa:	e8 46 ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1017ff:	05 01 38 00 00       	add    $0x3801,%eax
  101804:	8b 45 08             	mov    0x8(%ebp),%eax
  101807:	8b 55 0c             	mov    0xc(%ebp),%edx
  10180a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10180e:	88 d0                	mov    %dl,%al
  101810:	88 45 f8             	mov    %al,-0x8(%ebp)
  101813:	8a 45 f8             	mov    -0x8(%ebp),%al
  101816:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101819:	ee                   	out    %al,(%dx)
  10181a:	90                   	nop
  10181b:	c9                   	leave  
  10181c:	c3                   	ret    

0010181d <initKeyTable>:
  10181d:	55                   	push   %ebp
  10181e:	89 e5                	mov    %esp,%ebp
  101820:	83 ec 10             	sub    $0x10,%esp
  101823:	e8 1d ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101828:	05 d8 37 00 00       	add    $0x37d8,%eax
  10182d:	c7 c2 60 5e 10 00    	mov    $0x105e60,%edx
  101833:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101839:	c7 c2 40 5a 10 00    	mov    $0x105a40,%edx
  10183f:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101845:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  10184c:	00 00 00 
  10184f:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  101855:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  10185b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101862:	eb 1f                	jmp    101883 <initKeyTable+0x66>
  101864:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  10186a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10186d:	01 ca                	add    %ecx,%edx
  10186f:	c6 02 00             	movb   $0x0,(%edx)
  101872:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  101878:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10187b:	01 ca                	add    %ecx,%edx
  10187d:	c6 02 00             	movb   $0x0,(%edx)
  101880:	ff 45 fc             	incl   -0x4(%ebp)
  101883:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  101887:	7e db                	jle    101864 <initKeyTable+0x47>
  101889:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  101890:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  101897:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  10189e:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  1018a5:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  1018ac:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  1018b3:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  1018ba:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  1018c1:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  1018c8:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  1018cf:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  1018d6:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  1018dd:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  1018e4:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  1018eb:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  1018f2:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  1018f9:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  101900:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  101907:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  10190e:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  101915:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  10191c:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  101923:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  10192a:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  101931:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  101938:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  10193f:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  101946:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  10194d:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  101954:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  10195b:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  101962:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  101969:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  101970:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  101977:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  10197e:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  101985:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  10198c:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  101993:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  10199a:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  1019a1:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  1019a8:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  1019af:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  1019b6:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  1019bd:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  1019c4:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  1019cb:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  1019d2:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  1019d9:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  1019e0:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  1019e7:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  1019ee:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  1019f5:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  1019fc:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  101a03:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  101a0a:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  101a11:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  101a18:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  101a1f:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  101a26:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  101a2d:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  101a34:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  101a3b:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  101a42:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  101a49:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  101a50:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  101a57:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  101a5e:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  101a65:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  101a6c:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  101a73:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  101a7a:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  101a81:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  101a88:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  101a8f:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  101a96:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  101a9d:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  101aa4:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  101aab:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  101ab2:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  101ab9:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  101ac0:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  101ac7:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  101ace:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  101ad5:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  101adc:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  101ae3:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  101aea:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  101af1:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  101af8:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  101aff:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  101b06:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  101b0d:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  101b14:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  101b1b:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  101b22:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  101b29:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  101b30:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  101b37:	90                   	nop
  101b38:	c9                   	leave  
  101b39:	c3                   	ret    

00101b3a <getKeyCode>:
  101b3a:	55                   	push   %ebp
  101b3b:	89 e5                	mov    %esp,%ebp
  101b3d:	83 ec 10             	sub    $0x10,%esp
  101b40:	e8 00 e9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101b45:	05 bb 34 00 00       	add    $0x34bb,%eax
  101b4a:	6a 60                	push   $0x60
  101b4c:	e8 7e fc ff ff       	call   1017cf <inByte>
  101b51:	83 c4 04             	add    $0x4,%esp
  101b54:	0f b6 c0             	movzbl %al,%eax
  101b57:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101b5a:	6a 61                	push   $0x61
  101b5c:	e8 6e fc ff ff       	call   1017cf <inByte>
  101b61:	83 c4 04             	add    $0x4,%esp
  101b64:	0f b6 c0             	movzbl %al,%eax
  101b67:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101b6a:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101b6d:	83 c8 80             	or     $0xffffff80,%eax
  101b70:	0f be c0             	movsbl %al,%eax
  101b73:	50                   	push   %eax
  101b74:	6a 61                	push   $0x61
  101b76:	e8 79 fc ff ff       	call   1017f4 <outByte>
  101b7b:	83 c4 08             	add    $0x8,%esp
  101b7e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101b81:	0f be c0             	movsbl %al,%eax
  101b84:	50                   	push   %eax
  101b85:	6a 61                	push   $0x61
  101b87:	e8 68 fc ff ff       	call   1017f4 <outByte>
  101b8c:	83 c4 08             	add    $0x8,%esp
  101b8f:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  101b96:	77 05                	ja     101b9d <getKeyCode+0x63>
  101b98:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101b9b:	eb 05                	jmp    101ba2 <getKeyCode+0x68>
  101b9d:	b8 00 00 00 00       	mov    $0x0,%eax
  101ba2:	c9                   	leave  
  101ba3:	c3                   	ret    

00101ba4 <switchKeyboard>:
  101ba4:	55                   	push   %ebp
  101ba5:	89 e5                	mov    %esp,%ebp
  101ba7:	e8 99 e8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101bac:	05 54 34 00 00       	add    $0x3454,%eax
  101bb1:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  101bb7:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  101bbd:	39 d1                	cmp    %edx,%ecx
  101bbf:	75 0e                	jne    101bcf <switchKeyboard+0x2b>
  101bc1:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  101bc7:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  101bcd:	eb 0c                	jmp    101bdb <switchKeyboard+0x37>
  101bcf:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  101bd5:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  101bdb:	90                   	nop
  101bdc:	5d                   	pop    %ebp
  101bdd:	c3                   	ret    

00101bde <getChar>:
  101bde:	55                   	push   %ebp
  101bdf:	89 e5                	mov    %esp,%ebp
  101be1:	53                   	push   %ebx
  101be2:	e8 4e ec ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101be7:	81 c3 19 34 00 00    	add    $0x3419,%ebx
  101bed:	8b 45 08             	mov    0x8(%ebp),%eax
  101bf0:	83 f8 3a             	cmp    $0x3a,%eax
  101bf3:	74 32                	je     101c27 <getChar+0x49>
  101bf5:	83 f8 3a             	cmp    $0x3a,%eax
  101bf8:	77 0f                	ja     101c09 <getChar+0x2b>
  101bfa:	83 f8 2a             	cmp    $0x2a,%eax
  101bfd:	74 21                	je     101c20 <getChar+0x42>
  101bff:	83 f8 36             	cmp    $0x36,%eax
  101c02:	74 1c                	je     101c20 <getChar+0x42>
  101c04:	e9 87 00 00 00       	jmp    101c90 <getChar+0xb2>
  101c09:	3d b6 00 00 00       	cmp    $0xb6,%eax
  101c0e:	74 10                	je     101c20 <getChar+0x42>
  101c10:	3d ba 00 00 00       	cmp    $0xba,%eax
  101c15:	74 42                	je     101c59 <getChar+0x7b>
  101c17:	3d aa 00 00 00       	cmp    $0xaa,%eax
  101c1c:	74 02                	je     101c20 <getChar+0x42>
  101c1e:	eb 70                	jmp    101c90 <getChar+0xb2>
  101c20:	e8 7f ff ff ff       	call   101ba4 <switchKeyboard>
  101c25:	eb 69                	jmp    101c90 <getChar+0xb2>
  101c27:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101c2d:	85 c0                	test   %eax,%eax
  101c2f:	75 11                	jne    101c42 <getChar+0x64>
  101c31:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  101c38:	00 00 00 
  101c3b:	e8 64 ff ff ff       	call   101ba4 <switchKeyboard>
  101c40:	eb 4a                	jmp    101c8c <getChar+0xae>
  101c42:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101c48:	83 f8 01             	cmp    $0x1,%eax
  101c4b:	75 3f                	jne    101c8c <getChar+0xae>
  101c4d:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  101c54:	00 00 00 
  101c57:	eb 33                	jmp    101c8c <getChar+0xae>
  101c59:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101c5f:	83 f8 01             	cmp    $0x1,%eax
  101c62:	75 0c                	jne    101c70 <getChar+0x92>
  101c64:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  101c6b:	00 00 00 
  101c6e:	eb 1f                	jmp    101c8f <getChar+0xb1>
  101c70:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101c76:	83 f8 02             	cmp    $0x2,%eax
  101c79:	75 14                	jne    101c8f <getChar+0xb1>
  101c7b:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  101c82:	00 00 00 
  101c85:	e8 1a ff ff ff       	call   101ba4 <switchKeyboard>
  101c8a:	eb 03                	jmp    101c8f <getChar+0xb1>
  101c8c:	90                   	nop
  101c8d:	eb 01                	jmp    101c90 <getChar+0xb2>
  101c8f:	90                   	nop
  101c90:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  101c94:	76 04                	jbe    101c9a <getChar+0xbc>
  101c96:	b0 00                	mov    $0x0,%al
  101c98:	eb 0d                	jmp    101ca7 <getChar+0xc9>
  101c9a:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  101ca0:	8b 45 08             	mov    0x8(%ebp),%eax
  101ca3:	01 d0                	add    %edx,%eax
  101ca5:	8a 00                	mov    (%eax),%al
  101ca7:	5b                   	pop    %ebx
  101ca8:	5d                   	pop    %ebp
  101ca9:	c3                   	ret    

00101caa <waitForInterrupt>:
  101caa:	55                   	push   %ebp
  101cab:	89 e5                	mov    %esp,%ebp
  101cad:	e8 93 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101cb2:	05 4e 33 00 00       	add    $0x334e,%eax
  101cb7:	f4                   	hlt    
  101cb8:	90                   	nop
  101cb9:	5d                   	pop    %ebp
  101cba:	c3                   	ret    

00101cbb <enableInterrupt>:
  101cbb:	55                   	push   %ebp
  101cbc:	89 e5                	mov    %esp,%ebp
  101cbe:	e8 82 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101cc3:	05 3d 33 00 00       	add    $0x333d,%eax
  101cc8:	fb                   	sti    
  101cc9:	90                   	nop
  101cca:	5d                   	pop    %ebp
  101ccb:	c3                   	ret    

00101ccc <setGdt>:
  101ccc:	55                   	push   %ebp
  101ccd:	89 e5                	mov    %esp,%ebp
  101ccf:	e8 71 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101cd4:	05 2c 33 00 00       	add    $0x332c,%eax
  101cd9:	8b 55 0c             	mov    0xc(%ebp),%edx
  101cdc:	4a                   	dec    %edx
  101cdd:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  101ce4:	8b 55 08             	mov    0x8(%ebp),%edx
  101ce7:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  101cee:	8b 55 08             	mov    0x8(%ebp),%edx
  101cf1:	c1 ea 10             	shr    $0x10,%edx
  101cf4:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  101cfb:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  101d01:	0f 01 10             	lgdtl  (%eax)
  101d04:	90                   	nop
  101d05:	5d                   	pop    %ebp
  101d06:	c3                   	ret    

00101d07 <lLdt>:
  101d07:	55                   	push   %ebp
  101d08:	89 e5                	mov    %esp,%ebp
  101d0a:	83 ec 04             	sub    $0x4,%esp
  101d0d:	e8 33 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101d12:	05 ee 32 00 00       	add    $0x32ee,%eax
  101d17:	8b 45 08             	mov    0x8(%ebp),%eax
  101d1a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101d1e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101d21:	0f 00 d0             	lldt   %ax
  101d24:	90                   	nop
  101d25:	c9                   	leave  
  101d26:	c3                   	ret    

00101d27 <initSeg>:
  101d27:	55                   	push   %ebp
  101d28:	89 e5                	mov    %esp,%ebp
  101d2a:	56                   	push   %esi
  101d2b:	53                   	push   %ebx
  101d2c:	83 ec 14             	sub    $0x14,%esp
  101d2f:	e8 01 eb ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101d34:	81 c3 cc 32 00 00    	add    $0x32cc,%ebx
  101d3a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101d41:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d47:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  101d4d:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d53:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  101d59:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d5f:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  101d63:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d69:	8a 50 0d             	mov    0xd(%eax),%dl
  101d6c:	83 e2 f0             	and    $0xfffffff0,%edx
  101d6f:	83 ca 0a             	or     $0xa,%edx
  101d72:	88 50 0d             	mov    %dl,0xd(%eax)
  101d75:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d7b:	8a 50 0d             	mov    0xd(%eax),%dl
  101d7e:	83 ca 10             	or     $0x10,%edx
  101d81:	88 50 0d             	mov    %dl,0xd(%eax)
  101d84:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d8a:	8a 50 0d             	mov    0xd(%eax),%dl
  101d8d:	83 e2 9f             	and    $0xffffff9f,%edx
  101d90:	88 50 0d             	mov    %dl,0xd(%eax)
  101d93:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d99:	8a 50 0d             	mov    0xd(%eax),%dl
  101d9c:	83 ca 80             	or     $0xffffff80,%edx
  101d9f:	88 50 0d             	mov    %dl,0xd(%eax)
  101da2:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101da8:	8a 50 0e             	mov    0xe(%eax),%dl
  101dab:	83 ca 0f             	or     $0xf,%edx
  101dae:	88 50 0e             	mov    %dl,0xe(%eax)
  101db1:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101db7:	8a 50 0e             	mov    0xe(%eax),%dl
  101dba:	83 e2 ef             	and    $0xffffffef,%edx
  101dbd:	88 50 0e             	mov    %dl,0xe(%eax)
  101dc0:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dc6:	8a 50 0e             	mov    0xe(%eax),%dl
  101dc9:	83 e2 df             	and    $0xffffffdf,%edx
  101dcc:	88 50 0e             	mov    %dl,0xe(%eax)
  101dcf:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dd5:	8a 50 0e             	mov    0xe(%eax),%dl
  101dd8:	83 ca 40             	or     $0x40,%edx
  101ddb:	88 50 0e             	mov    %dl,0xe(%eax)
  101dde:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101de4:	8a 50 0e             	mov    0xe(%eax),%dl
  101de7:	83 ca 80             	or     $0xffffff80,%edx
  101dea:	88 50 0e             	mov    %dl,0xe(%eax)
  101ded:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101df3:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  101df7:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dfd:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  101e03:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e09:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  101e0f:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e15:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  101e19:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e1f:	8a 50 15             	mov    0x15(%eax),%dl
  101e22:	83 e2 f0             	and    $0xfffffff0,%edx
  101e25:	83 ca 02             	or     $0x2,%edx
  101e28:	88 50 15             	mov    %dl,0x15(%eax)
  101e2b:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e31:	8a 50 15             	mov    0x15(%eax),%dl
  101e34:	83 ca 10             	or     $0x10,%edx
  101e37:	88 50 15             	mov    %dl,0x15(%eax)
  101e3a:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e40:	8a 50 15             	mov    0x15(%eax),%dl
  101e43:	83 e2 9f             	and    $0xffffff9f,%edx
  101e46:	88 50 15             	mov    %dl,0x15(%eax)
  101e49:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e4f:	8a 50 15             	mov    0x15(%eax),%dl
  101e52:	83 ca 80             	or     $0xffffff80,%edx
  101e55:	88 50 15             	mov    %dl,0x15(%eax)
  101e58:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e5e:	8a 50 16             	mov    0x16(%eax),%dl
  101e61:	83 ca 0f             	or     $0xf,%edx
  101e64:	88 50 16             	mov    %dl,0x16(%eax)
  101e67:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e6d:	8a 50 16             	mov    0x16(%eax),%dl
  101e70:	83 e2 ef             	and    $0xffffffef,%edx
  101e73:	88 50 16             	mov    %dl,0x16(%eax)
  101e76:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e7c:	8a 50 16             	mov    0x16(%eax),%dl
  101e7f:	83 e2 df             	and    $0xffffffdf,%edx
  101e82:	88 50 16             	mov    %dl,0x16(%eax)
  101e85:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e8b:	8a 50 16             	mov    0x16(%eax),%dl
  101e8e:	83 ca 40             	or     $0x40,%edx
  101e91:	88 50 16             	mov    %dl,0x16(%eax)
  101e94:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e9a:	8a 50 16             	mov    0x16(%eax),%dl
  101e9d:	83 ca 80             	or     $0xffffff80,%edx
  101ea0:	88 50 16             	mov    %dl,0x16(%eax)
  101ea3:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101ea9:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  101ead:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  101eb4:	e9 e1 01 00 00       	jmp    10209a <initSeg+0x373>
  101eb9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101ebc:	01 c0                	add    %eax,%eax
  101ebe:	40                   	inc    %eax
  101ebf:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101ec2:	42                   	inc    %edx
  101ec3:	c1 e2 14             	shl    $0x14,%edx
  101ec6:	c1 ea 10             	shr    $0x10,%edx
  101ec9:	88 d1                	mov    %dl,%cl
  101ecb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101ece:	42                   	inc    %edx
  101ecf:	c1 e2 14             	shl    $0x14,%edx
  101ed2:	c1 ea 18             	shr    $0x18,%edx
  101ed5:	88 55 e7             	mov    %dl,-0x19(%ebp)
  101ed8:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ede:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  101ee4:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101eea:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  101ef1:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ef7:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  101efb:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f01:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101f05:	83 e1 f0             	and    $0xfffffff0,%ecx
  101f08:	89 ce                	mov    %ecx,%esi
  101f0a:	83 ce 0a             	or     $0xa,%esi
  101f0d:	89 f1                	mov    %esi,%ecx
  101f0f:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101f13:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f19:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101f1d:	83 c9 10             	or     $0x10,%ecx
  101f20:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101f24:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f2a:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101f2e:	83 c9 60             	or     $0x60,%ecx
  101f31:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101f35:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f3b:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101f3f:	83 c9 80             	or     $0xffffff80,%ecx
  101f42:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101f46:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f4c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f50:	83 e1 f0             	and    $0xfffffff0,%ecx
  101f53:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f57:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f5d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f61:	83 e1 ef             	and    $0xffffffef,%ecx
  101f64:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f68:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f6e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f72:	83 e1 df             	and    $0xffffffdf,%ecx
  101f75:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f79:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f7f:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f83:	83 c9 40             	or     $0x40,%ecx
  101f86:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f8a:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f90:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f94:	83 c9 80             	or     $0xffffff80,%ecx
  101f97:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f9b:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fa1:	8a 4d e7             	mov    -0x19(%ebp),%cl
  101fa4:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  101fa8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101fab:	40                   	inc    %eax
  101fac:	01 c0                	add    %eax,%eax
  101fae:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101fb1:	42                   	inc    %edx
  101fb2:	c1 e2 14             	shl    $0x14,%edx
  101fb5:	c1 ea 10             	shr    $0x10,%edx
  101fb8:	88 d1                	mov    %dl,%cl
  101fba:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101fbd:	42                   	inc    %edx
  101fbe:	c1 e2 14             	shl    $0x14,%edx
  101fc1:	c1 ea 18             	shr    $0x18,%edx
  101fc4:	88 55 e7             	mov    %dl,-0x19(%ebp)
  101fc7:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fcd:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  101fd3:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fd9:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  101fe0:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fe6:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  101fea:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ff0:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101ff4:	83 e1 f0             	and    $0xfffffff0,%ecx
  101ff7:	89 ce                	mov    %ecx,%esi
  101ff9:	83 ce 02             	or     $0x2,%esi
  101ffc:	89 f1                	mov    %esi,%ecx
  101ffe:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  102002:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  102008:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10200c:	83 c9 10             	or     $0x10,%ecx
  10200f:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  102013:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  102019:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10201d:	83 c9 60             	or     $0x60,%ecx
  102020:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  102024:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10202a:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  10202e:	83 c9 80             	or     $0xffffff80,%ecx
  102031:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  102035:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10203b:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  10203f:	83 e1 f0             	and    $0xfffffff0,%ecx
  102042:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102046:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10204c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102050:	83 e1 ef             	and    $0xffffffef,%ecx
  102053:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102057:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10205d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102061:	83 e1 df             	and    $0xffffffdf,%ecx
  102064:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102068:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10206e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102072:	83 c9 40             	or     $0x40,%ecx
  102075:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102079:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10207f:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102083:	83 c9 80             	or     $0xffffff80,%ecx
  102086:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  10208a:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  102090:	8a 4d e7             	mov    -0x19(%ebp),%cl
  102093:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  102097:	ff 45 f4             	incl   -0xc(%ebp)
  10209a:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  10209e:	0f 8e 15 fe ff ff    	jle    101eb9 <initSeg+0x192>
  1020a4:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020aa:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  1020b1:	63 00 
  1020b3:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  1020b9:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  1020bf:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  1020c6:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  1020cc:	c1 e8 10             	shr    $0x10,%eax
  1020cf:	88 c2                	mov    %al,%dl
  1020d1:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020d7:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  1020dd:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020e3:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1020e9:	83 e2 f0             	and    $0xfffffff0,%edx
  1020ec:	83 ca 09             	or     $0x9,%edx
  1020ef:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1020f5:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020fb:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  102101:	83 e2 ef             	and    $0xffffffef,%edx
  102104:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  10210a:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102110:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  102116:	83 e2 9f             	and    $0xffffff9f,%edx
  102119:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  10211f:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102125:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10212b:	83 ca 80             	or     $0xffffff80,%edx
  10212e:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  102134:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  10213a:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  102140:	83 e2 f0             	and    $0xfffffff0,%edx
  102143:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  102149:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  10214f:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  102155:	83 e2 ef             	and    $0xffffffef,%edx
  102158:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10215e:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102164:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10216a:	83 e2 df             	and    $0xffffffdf,%edx
  10216d:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  102173:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102179:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10217f:	83 ca 40             	or     $0x40,%edx
  102182:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  102188:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  10218e:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  102194:	83 e2 7f             	and    $0x7f,%edx
  102197:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10219d:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  1021a3:	c1 e8 18             	shr    $0x18,%eax
  1021a6:	88 c2                	mov    %al,%dl
  1021a8:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1021ae:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  1021b4:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1021ba:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1021c0:	83 e2 ef             	and    $0xffffffef,%edx
  1021c3:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1021c9:	68 a0 00 00 00       	push   $0xa0
  1021ce:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1021d4:	50                   	push   %eax
  1021d5:	e8 f2 fa ff ff       	call   101ccc <setGdt>
  1021da:	83 c4 08             	add    $0x8,%esp
  1021dd:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  1021e3:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  1021ea:	b8 98 00 00 00       	mov    $0x98,%eax
  1021ef:	0f 00 d8             	ltr    %ax
  1021f2:	b8 10 00 00 00       	mov    $0x10,%eax
  1021f7:	8e d8                	mov    %eax,%ds
  1021f9:	b8 10 00 00 00       	mov    $0x10,%eax
  1021fe:	8e d0                	mov    %eax,%ss
  102200:	6a 00                	push   $0x0
  102202:	e8 00 fb ff ff       	call   101d07 <lLdt>
  102207:	83 c4 04             	add    $0x4,%esp
  10220a:	90                   	nop
  10220b:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10220e:	5b                   	pop    %ebx
  10220f:	5e                   	pop    %esi
  102210:	5d                   	pop    %ebp
  102211:	c3                   	ret    

00102212 <initFS>:
  102212:	55                   	push   %ebp
  102213:	89 e5                	mov    %esp,%ebp
  102215:	53                   	push   %ebx
  102216:	83 ec 04             	sub    $0x4,%esp
  102219:	e8 27 e2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10221e:	05 e2 2d 00 00       	add    $0x2de2,%eax
  102223:	83 ec 0c             	sub    $0xc,%esp
  102226:	c7 c2 a0 5f 10 00    	mov    $0x105fa0,%edx
  10222c:	52                   	push   %edx
  10222d:	89 c3                	mov    %eax,%ebx
  10222f:	e8 15 e2 ff ff       	call   100449 <readSuperBlock>
  102234:	83 c4 10             	add    $0x10,%esp
  102237:	90                   	nop
  102238:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10223b:	c9                   	leave  
  10223c:	c3                   	ret    

0010223d <loadElf>:
  10223d:	55                   	push   %ebp
  10223e:	89 e5                	mov    %esp,%ebp
  102240:	53                   	push   %ebx
  102241:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  102247:	e8 e9 e5 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  10224c:	81 c3 b4 2d 00 00    	add    $0x2db4,%ebx
  102252:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102259:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  102260:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  102267:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
  10226e:	00 00 00 
  102271:	ff 75 08             	pushl  0x8(%ebp)
  102274:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  10227a:	50                   	push   %eax
  10227b:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  102281:	50                   	push   %eax
  102282:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  102288:	50                   	push   %eax
  102289:	e8 f7 e2 ff ff       	call   100585 <readInode>
  10228e:	83 c4 10             	add    $0x10,%esp
  102291:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102294:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
  102298:	75 0a                	jne    1022a4 <loadElf+0x67>
  10229a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10229f:	e9 cd 00 00 00       	jmp    102371 <loadElf+0x134>
  1022a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1022ab:	eb 31                	jmp    1022de <loadElf+0xa1>
  1022ad:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  1022b3:	8b 40 14             	mov    0x14(%eax),%eax
  1022b6:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  1022ba:	89 c2                	mov    %eax,%edx
  1022bc:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022bf:	01 d0                	add    %edx,%eax
  1022c1:	50                   	push   %eax
  1022c2:	ff 75 f4             	pushl  -0xc(%ebp)
  1022c5:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  1022cb:	50                   	push   %eax
  1022cc:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  1022d2:	50                   	push   %eax
  1022d3:	e8 a2 e1 ff ff       	call   10047a <readBlock>
  1022d8:	83 c4 10             	add    $0x10,%esp
  1022db:	ff 45 f4             	incl   -0xc(%ebp)
  1022de:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
  1022e4:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1022e7:	7c c4                	jl     1022ad <loadElf+0x70>
  1022e9:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022ec:	8b 40 18             	mov    0x18(%eax),%eax
  1022ef:	89 45 10             	mov    %eax,0x10(%ebp)
  1022f2:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022f5:	8b 40 1c             	mov    0x1c(%eax),%eax
  1022f8:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1022fb:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022fe:	c1 e0 05             	shl    $0x5,%eax
  102301:	89 c2                	mov    %eax,%edx
  102303:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102306:	01 d0                	add    %edx,%eax
  102308:	8b 40 04             	mov    0x4(%eax),%eax
  10230b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10230e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  102315:	eb 11                	jmp    102328 <loadElf+0xeb>
  102317:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10231a:	8b 50 08             	mov    0x8(%eax),%edx
  10231d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102320:	01 d0                	add    %edx,%eax
  102322:	c6 00 00             	movb   $0x0,(%eax)
  102325:	ff 45 f0             	incl   -0x10(%ebp)
  102328:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10232b:	8b 50 10             	mov    0x10(%eax),%edx
  10232e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102331:	39 c2                	cmp    %eax,%edx
  102333:	77 e2                	ja     102317 <loadElf+0xda>
  102335:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10233c:	eb 23                	jmp    102361 <loadElf+0x124>
  10233e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102341:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102344:	01 c2                	add    %eax,%edx
  102346:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102349:	01 d0                	add    %edx,%eax
  10234b:	89 c1                	mov    %eax,%ecx
  10234d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102350:	8b 50 08             	mov    0x8(%eax),%edx
  102353:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102356:	01 d0                	add    %edx,%eax
  102358:	89 c2                	mov    %eax,%edx
  10235a:	8a 01                	mov    (%ecx),%al
  10235c:	88 02                	mov    %al,(%edx)
  10235e:	ff 45 f4             	incl   -0xc(%ebp)
  102361:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102364:	8b 50 14             	mov    0x14(%eax),%edx
  102367:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10236a:	39 c2                	cmp    %eax,%edx
  10236c:	77 d0                	ja     10233e <loadElf+0x101>
  10236e:	8b 45 10             	mov    0x10(%ebp),%eax
  102371:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102374:	c9                   	leave  
  102375:	c3                   	ret    

00102376 <loadUMain>:
  102376:	55                   	push   %ebp
  102377:	89 e5                	mov    %esp,%ebp
  102379:	53                   	push   %ebx
  10237a:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  102380:	e8 b0 e4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102385:	81 c3 7b 2c 00 00    	add    $0x2c7b,%ebx
  10238b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102392:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  102399:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  1023a0:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  1023a7:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  1023ae:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  1023b5:	00 00 00 
  1023b8:	8d 83 98 df ff ff    	lea    -0x2068(%ebx),%eax
  1023be:	50                   	push   %eax
  1023bf:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  1023c5:	50                   	push   %eax
  1023c6:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  1023cc:	50                   	push   %eax
  1023cd:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  1023d3:	50                   	push   %eax
  1023d4:	e8 ac e1 ff ff       	call   100585 <readInode>
  1023d9:	83 c4 10             	add    $0x10,%esp
  1023dc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1023e3:	eb 31                	jmp    102416 <loadUMain+0xa0>
  1023e5:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  1023eb:	8b 40 14             	mov    0x14(%eax),%eax
  1023ee:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  1023f2:	89 c2                	mov    %eax,%edx
  1023f4:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023f7:	01 d0                	add    %edx,%eax
  1023f9:	50                   	push   %eax
  1023fa:	ff 75 f4             	pushl  -0xc(%ebp)
  1023fd:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  102403:	50                   	push   %eax
  102404:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  10240a:	50                   	push   %eax
  10240b:	e8 6a e0 ff ff       	call   10047a <readBlock>
  102410:	83 c4 10             	add    $0x10,%esp
  102413:	ff 45 f4             	incl   -0xc(%ebp)
  102416:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  10241c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  10241f:	7c c4                	jl     1023e5 <loadUMain+0x6f>
  102421:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102424:	8b 40 18             	mov    0x18(%eax),%eax
  102427:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10242a:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10242d:	8b 40 1c             	mov    0x1c(%eax),%eax
  102430:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102433:	8b 55 f0             	mov    -0x10(%ebp),%edx
  102436:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102439:	01 d0                	add    %edx,%eax
  10243b:	8b 40 04             	mov    0x4(%eax),%eax
  10243e:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102441:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102448:	eb 1c                	jmp    102466 <loadUMain+0xf0>
  10244a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10244d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  102450:	01 c2                	add    %eax,%edx
  102452:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102455:	01 d0                	add    %edx,%eax
  102457:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10245a:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10245d:	01 ca                	add    %ecx,%edx
  10245f:	8a 00                	mov    (%eax),%al
  102461:	88 02                	mov    %al,(%edx)
  102463:	ff 45 f4             	incl   -0xc(%ebp)
  102466:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  10246d:	7e db                	jle    10244a <loadUMain+0xd4>
  10246f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102472:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102475:	c9                   	leave  
  102476:	c3                   	ret    

00102477 <initProc>:
  102477:	55                   	push   %ebp
  102478:	89 e5                	mov    %esp,%ebp
  10247a:	53                   	push   %ebx
  10247b:	83 ec 14             	sub    $0x14,%esp
  10247e:	e8 b2 e3 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102483:	81 c3 7d 2b 00 00    	add    $0x2b7d,%ebx
  102489:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102490:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102497:	eb 28                	jmp    1024c1 <initProc+0x4a>
  102499:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  10249f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1024a2:	89 d0                	mov    %edx,%eax
  1024a4:	c1 e0 07             	shl    $0x7,%eax
  1024a7:	01 d0                	add    %edx,%eax
  1024a9:	c1 e0 05             	shl    $0x5,%eax
  1024ac:	01 d0                	add    %edx,%eax
  1024ae:	c1 e0 02             	shl    $0x2,%eax
  1024b1:	01 c8                	add    %ecx,%eax
  1024b3:	05 54 40 00 00       	add    $0x4054,%eax
  1024b8:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  1024be:	ff 45 f4             	incl   -0xc(%ebp)
  1024c1:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  1024c5:	7e d2                	jle    102499 <initProc+0x22>
  1024c7:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024cd:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  1024d3:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024d9:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  1024df:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024e5:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  1024eb:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024f1:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  1024f7:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024fd:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  102504:	00 00 00 
  102507:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10250d:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  102514:	00 00 00 
  102517:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10251d:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  102524:	00 00 00 
  102527:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10252d:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  102534:	00 00 00 
  102537:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10253d:	8d 90 84 80 00 00    	lea    0x8084(%eax),%edx
  102543:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102549:	89 90 d0 80 00 00    	mov    %edx,0x80d0(%eax)
  10254f:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102555:	8d 90 d0 80 00 00    	lea    0x80d0(%eax),%edx
  10255b:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102561:	89 90 d4 80 00 00    	mov    %edx,0x80d4(%eax)
  102567:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10256d:	c7 80 d8 80 00 00 00 	movl   $0x0,0x80d8(%eax)
  102574:	00 00 00 
  102577:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10257d:	c7 80 dc 80 00 00 00 	movl   $0x0,0x80dc(%eax)
  102584:	00 00 00 
  102587:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10258d:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  102594:	00 00 00 
  102597:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10259d:	c7 80 e4 80 00 00 01 	movl   $0x1,0x80e4(%eax)
  1025a4:	00 00 00 
  1025a7:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025ad:	c7 80 cc 80 00 00 23 	movl   $0x23,0x80cc(%eax)
  1025b4:	00 00 00 
  1025b7:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025bd:	c7 80 c8 80 00 00 00 	movl   $0x100000,0x80c8(%eax)
  1025c4:	00 10 00 
  1025c7:	9c                   	pushf  
  1025c8:	5a                   	pop    %edx
  1025c9:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025cf:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  1025d5:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025db:	8b 80 c4 80 00 00    	mov    0x80c4(%eax),%eax
  1025e1:	80 cc 02             	or     $0x2,%ah
  1025e4:	89 c2                	mov    %eax,%edx
  1025e6:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025ec:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  1025f2:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025f8:	c7 80 c0 80 00 00 1b 	movl   $0x1b,0x80c0(%eax)
  1025ff:	00 00 00 
  102602:	e8 6f fd ff ff       	call   102376 <loadUMain>
  102607:	89 c2                	mov    %eax,%edx
  102609:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10260f:	89 90 bc 80 00 00    	mov    %edx,0x80bc(%eax)
  102615:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10261b:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  102622:	00 00 00 
  102625:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10262b:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  102632:	00 00 00 
  102635:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10263b:	c7 80 88 80 00 00 23 	movl   $0x23,0x8088(%eax)
  102642:	00 00 00 
  102645:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10264b:	c7 80 84 80 00 00 23 	movl   $0x23,0x8084(%eax)
  102652:	00 00 00 
  102655:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  10265b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102661:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102667:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  10266d:	e8 49 f6 ff ff       	call   101cbb <enableInterrupt>
  102672:	cd 20                	int    $0x20
  102674:	e8 31 f6 ff ff       	call   101caa <waitForInterrupt>
  102679:	eb f9                	jmp    102674 <initProc+0x1fd>

0010267b <inByte>:
  10267b:	55                   	push   %ebp
  10267c:	89 e5                	mov    %esp,%ebp
  10267e:	83 ec 14             	sub    $0x14,%esp
  102681:	e8 bf dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102686:	05 7a 29 00 00       	add    $0x297a,%eax
  10268b:	8b 45 08             	mov    0x8(%ebp),%eax
  10268e:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  102692:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102695:	89 c2                	mov    %eax,%edx
  102697:	ec                   	in     (%dx),%al
  102698:	88 45 ff             	mov    %al,-0x1(%ebp)
  10269b:	8a 45 ff             	mov    -0x1(%ebp),%al
  10269e:	c9                   	leave  
  10269f:	c3                   	ret    

001026a0 <outByte>:
  1026a0:	55                   	push   %ebp
  1026a1:	89 e5                	mov    %esp,%ebp
  1026a3:	83 ec 08             	sub    $0x8,%esp
  1026a6:	e8 9a dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1026ab:	05 55 29 00 00       	add    $0x2955,%eax
  1026b0:	8b 45 08             	mov    0x8(%ebp),%eax
  1026b3:	8b 55 0c             	mov    0xc(%ebp),%edx
  1026b6:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1026ba:	88 d0                	mov    %dl,%al
  1026bc:	88 45 f8             	mov    %al,-0x8(%ebp)
  1026bf:	8a 45 f8             	mov    -0x8(%ebp),%al
  1026c2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1026c5:	ee                   	out    %al,(%dx)
  1026c6:	90                   	nop
  1026c7:	c9                   	leave  
  1026c8:	c3                   	ret    

001026c9 <initSerial>:
  1026c9:	55                   	push   %ebp
  1026ca:	89 e5                	mov    %esp,%ebp
  1026cc:	e8 74 dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1026d1:	05 2f 29 00 00       	add    $0x292f,%eax
  1026d6:	6a 00                	push   $0x0
  1026d8:	68 f9 03 00 00       	push   $0x3f9
  1026dd:	e8 be ff ff ff       	call   1026a0 <outByte>
  1026e2:	83 c4 08             	add    $0x8,%esp
  1026e5:	6a 80                	push   $0xffffff80
  1026e7:	68 fb 03 00 00       	push   $0x3fb
  1026ec:	e8 af ff ff ff       	call   1026a0 <outByte>
  1026f1:	83 c4 08             	add    $0x8,%esp
  1026f4:	6a 01                	push   $0x1
  1026f6:	68 f8 03 00 00       	push   $0x3f8
  1026fb:	e8 a0 ff ff ff       	call   1026a0 <outByte>
  102700:	83 c4 08             	add    $0x8,%esp
  102703:	6a 00                	push   $0x0
  102705:	68 f9 03 00 00       	push   $0x3f9
  10270a:	e8 91 ff ff ff       	call   1026a0 <outByte>
  10270f:	83 c4 08             	add    $0x8,%esp
  102712:	6a 03                	push   $0x3
  102714:	68 fb 03 00 00       	push   $0x3fb
  102719:	e8 82 ff ff ff       	call   1026a0 <outByte>
  10271e:	83 c4 08             	add    $0x8,%esp
  102721:	6a c7                	push   $0xffffffc7
  102723:	68 fa 03 00 00       	push   $0x3fa
  102728:	e8 73 ff ff ff       	call   1026a0 <outByte>
  10272d:	83 c4 08             	add    $0x8,%esp
  102730:	6a 0b                	push   $0xb
  102732:	68 fc 03 00 00       	push   $0x3fc
  102737:	e8 64 ff ff ff       	call   1026a0 <outByte>
  10273c:	83 c4 08             	add    $0x8,%esp
  10273f:	90                   	nop
  102740:	c9                   	leave  
  102741:	c3                   	ret    

00102742 <serialIdle>:
  102742:	55                   	push   %ebp
  102743:	89 e5                	mov    %esp,%ebp
  102745:	e8 fb dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10274a:	05 b6 28 00 00       	add    $0x28b6,%eax
  10274f:	68 fd 03 00 00       	push   $0x3fd
  102754:	e8 22 ff ff ff       	call   10267b <inByte>
  102759:	83 c4 04             	add    $0x4,%esp
  10275c:	0f b6 c0             	movzbl %al,%eax
  10275f:	83 e0 20             	and    $0x20,%eax
  102762:	85 c0                	test   %eax,%eax
  102764:	0f 95 c0             	setne  %al
  102767:	0f b6 c0             	movzbl %al,%eax
  10276a:	c9                   	leave  
  10276b:	c3                   	ret    

0010276c <putChar>:
  10276c:	55                   	push   %ebp
  10276d:	89 e5                	mov    %esp,%ebp
  10276f:	83 ec 04             	sub    $0x4,%esp
  102772:	e8 ce dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102777:	05 89 28 00 00       	add    $0x2889,%eax
  10277c:	8b 45 08             	mov    0x8(%ebp),%eax
  10277f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102782:	90                   	nop
  102783:	e8 ba ff ff ff       	call   102742 <serialIdle>
  102788:	83 f8 01             	cmp    $0x1,%eax
  10278b:	75 f6                	jne    102783 <putChar+0x17>
  10278d:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  102791:	50                   	push   %eax
  102792:	68 f8 03 00 00       	push   $0x3f8
  102797:	e8 04 ff ff ff       	call   1026a0 <outByte>
  10279c:	83 c4 08             	add    $0x8,%esp
  10279f:	90                   	nop
  1027a0:	c9                   	leave  
  1027a1:	c3                   	ret    

001027a2 <putString>:
  1027a2:	55                   	push   %ebp
  1027a3:	89 e5                	mov    %esp,%ebp
  1027a5:	83 ec 10             	sub    $0x10,%esp
  1027a8:	e8 98 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1027ad:	05 53 28 00 00       	add    $0x2853,%eax
  1027b2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1027b9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1027bd:	74 30                	je     1027ef <putString+0x4d>
  1027bf:	eb 1e                	jmp    1027df <putString+0x3d>
  1027c1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1027c4:	8d 50 01             	lea    0x1(%eax),%edx
  1027c7:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1027ca:	89 c2                	mov    %eax,%edx
  1027cc:	8b 45 08             	mov    0x8(%ebp),%eax
  1027cf:	01 d0                	add    %edx,%eax
  1027d1:	8a 00                	mov    (%eax),%al
  1027d3:	0f be c0             	movsbl %al,%eax
  1027d6:	50                   	push   %eax
  1027d7:	e8 90 ff ff ff       	call   10276c <putChar>
  1027dc:	83 c4 04             	add    $0x4,%esp
  1027df:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1027e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1027e5:	01 d0                	add    %edx,%eax
  1027e7:	8a 00                	mov    (%eax),%al
  1027e9:	84 c0                	test   %al,%al
  1027eb:	75 d4                	jne    1027c1 <putString+0x1f>
  1027ed:	eb 01                	jmp    1027f0 <putString+0x4e>
  1027ef:	90                   	nop
  1027f0:	c9                   	leave  
  1027f1:	c3                   	ret    

001027f2 <putInt>:
  1027f2:	55                   	push   %ebp
  1027f3:	89 e5                	mov    %esp,%ebp
  1027f5:	83 ec 30             	sub    $0x30,%esp
  1027f8:	e8 48 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1027fd:	05 03 28 00 00       	add    $0x2803,%eax
  102802:	8d 45 dc             	lea    -0x24(%ebp),%eax
  102805:	83 c0 1f             	add    $0x1f,%eax
  102808:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10280b:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10280e:	c6 00 00             	movb   $0x0,(%eax)
  102811:	ff 4d fc             	decl   -0x4(%ebp)
  102814:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102817:	c6 00 0a             	movb   $0xa,(%eax)
  10281a:	8b 45 08             	mov    0x8(%ebp),%eax
  10281d:	b9 0a 00 00 00       	mov    $0xa,%ecx
  102822:	99                   	cltd   
  102823:	f7 f9                	idiv   %ecx
  102825:	89 d0                	mov    %edx,%eax
  102827:	83 c0 30             	add    $0x30,%eax
  10282a:	ff 4d fc             	decl   -0x4(%ebp)
  10282d:	88 c2                	mov    %al,%dl
  10282f:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102832:	88 10                	mov    %dl,(%eax)
  102834:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102837:	b8 67 66 66 66       	mov    $0x66666667,%eax
  10283c:	f7 e9                	imul   %ecx
  10283e:	c1 fa 02             	sar    $0x2,%edx
  102841:	89 c8                	mov    %ecx,%eax
  102843:	c1 f8 1f             	sar    $0x1f,%eax
  102846:	29 c2                	sub    %eax,%edx
  102848:	89 d0                	mov    %edx,%eax
  10284a:	89 45 08             	mov    %eax,0x8(%ebp)
  10284d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102851:	75 c7                	jne    10281a <putInt+0x28>
  102853:	ff 75 fc             	pushl  -0x4(%ebp)
  102856:	e8 47 ff ff ff       	call   1027a2 <putString>
  10285b:	83 c4 04             	add    $0x4,%esp
  10285e:	90                   	nop
  10285f:	c9                   	leave  
  102860:	c3                   	ret    

00102861 <outByte>:
  102861:	55                   	push   %ebp
  102862:	89 e5                	mov    %esp,%ebp
  102864:	83 ec 08             	sub    $0x8,%esp
  102867:	e8 d9 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10286c:	05 94 27 00 00       	add    $0x2794,%eax
  102871:	8b 45 08             	mov    0x8(%ebp),%eax
  102874:	8b 55 0c             	mov    0xc(%ebp),%edx
  102877:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10287b:	88 d0                	mov    %dl,%al
  10287d:	88 45 f8             	mov    %al,-0x8(%ebp)
  102880:	8a 45 f8             	mov    -0x8(%ebp),%al
  102883:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102886:	ee                   	out    %al,(%dx)
  102887:	90                   	nop
  102888:	c9                   	leave  
  102889:	c3                   	ret    

0010288a <initTimer>:
  10288a:	55                   	push   %ebp
  10288b:	89 e5                	mov    %esp,%ebp
  10288d:	83 ec 10             	sub    $0x10,%esp
  102890:	e8 b0 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102895:	05 6b 27 00 00       	add    $0x276b,%eax
  10289a:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  1028a1:	6a 34                	push   $0x34
  1028a3:	6a 43                	push   $0x43
  1028a5:	e8 b7 ff ff ff       	call   102861 <outByte>
  1028aa:	83 c4 08             	add    $0x8,%esp
  1028ad:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1028b0:	25 ff 00 00 80       	and    $0x800000ff,%eax
  1028b5:	85 c0                	test   %eax,%eax
  1028b7:	79 07                	jns    1028c0 <initTimer+0x36>
  1028b9:	48                   	dec    %eax
  1028ba:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  1028bf:	40                   	inc    %eax
  1028c0:	0f be c0             	movsbl %al,%eax
  1028c3:	50                   	push   %eax
  1028c4:	6a 40                	push   $0x40
  1028c6:	e8 96 ff ff ff       	call   102861 <outByte>
  1028cb:	83 c4 08             	add    $0x8,%esp
  1028ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1028d1:	85 c0                	test   %eax,%eax
  1028d3:	79 05                	jns    1028da <initTimer+0x50>
  1028d5:	05 ff 00 00 00       	add    $0xff,%eax
  1028da:	c1 f8 08             	sar    $0x8,%eax
  1028dd:	0f be c0             	movsbl %al,%eax
  1028e0:	50                   	push   %eax
  1028e1:	6a 40                	push   $0x40
  1028e3:	e8 79 ff ff ff       	call   102861 <outByte>
  1028e8:	83 c4 08             	add    $0x8,%esp
  1028eb:	90                   	nop
  1028ec:	c9                   	leave  
  1028ed:	c3                   	ret    

001028ee <outByte>:
  1028ee:	55                   	push   %ebp
  1028ef:	89 e5                	mov    %esp,%ebp
  1028f1:	83 ec 08             	sub    $0x8,%esp
  1028f4:	e8 4c db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028f9:	05 07 27 00 00       	add    $0x2707,%eax
  1028fe:	8b 45 08             	mov    0x8(%ebp),%eax
  102901:	8b 55 0c             	mov    0xc(%ebp),%edx
  102904:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102908:	88 d0                	mov    %dl,%al
  10290a:	88 45 f8             	mov    %al,-0x8(%ebp)
  10290d:	8a 45 f8             	mov    -0x8(%ebp),%al
  102910:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102913:	ee                   	out    %al,(%dx)
  102914:	90                   	nop
  102915:	c9                   	leave  
  102916:	c3                   	ret    

00102917 <initVga>:
  102917:	55                   	push   %ebp
  102918:	89 e5                	mov    %esp,%ebp
  10291a:	83 ec 08             	sub    $0x8,%esp
  10291d:	e8 23 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102922:	05 de 26 00 00       	add    $0x26de,%eax
  102927:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  10292e:	00 00 00 
  102931:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  102938:	00 00 00 
  10293b:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  102942:	00 00 00 
  102945:	e8 12 00 00 00       	call   10295c <clearScreen>
  10294a:	83 ec 08             	sub    $0x8,%esp
  10294d:	6a 00                	push   $0x0
  10294f:	6a 00                	push   $0x0
  102951:	e8 5a 00 00 00       	call   1029b0 <updateCursor>
  102956:	83 c4 10             	add    $0x10,%esp
  102959:	90                   	nop
  10295a:	c9                   	leave  
  10295b:	c3                   	ret    

0010295c <clearScreen>:
  10295c:	55                   	push   %ebp
  10295d:	89 e5                	mov    %esp,%ebp
  10295f:	83 ec 10             	sub    $0x10,%esp
  102962:	e8 de da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102967:	05 99 26 00 00       	add    $0x2699,%eax
  10296c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102973:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  10297a:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  102980:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102987:	eb 1b                	jmp    1029a4 <clearScreen+0x48>
  102989:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10298c:	01 c0                	add    %eax,%eax
  10298e:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102991:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102994:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  10299a:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  10299e:	66 89 02             	mov    %ax,(%edx)
  1029a1:	ff 45 fc             	incl   -0x4(%ebp)
  1029a4:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1029ab:	7e dc                	jle    102989 <clearScreen+0x2d>
  1029ad:	90                   	nop
  1029ae:	c9                   	leave  
  1029af:	c3                   	ret    

001029b0 <updateCursor>:
  1029b0:	55                   	push   %ebp
  1029b1:	89 e5                	mov    %esp,%ebp
  1029b3:	83 ec 10             	sub    $0x10,%esp
  1029b6:	e8 8a da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1029bb:	05 45 26 00 00       	add    $0x2645,%eax
  1029c0:	8b 55 08             	mov    0x8(%ebp),%edx
  1029c3:	89 d0                	mov    %edx,%eax
  1029c5:	c1 e0 02             	shl    $0x2,%eax
  1029c8:	01 d0                	add    %edx,%eax
  1029ca:	c1 e0 04             	shl    $0x4,%eax
  1029cd:	89 c2                	mov    %eax,%edx
  1029cf:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029d2:	01 d0                	add    %edx,%eax
  1029d4:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1029d7:	6a 0f                	push   $0xf
  1029d9:	68 d4 03 00 00       	push   $0x3d4
  1029de:	e8 0b ff ff ff       	call   1028ee <outByte>
  1029e3:	83 c4 08             	add    $0x8,%esp
  1029e6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1029e9:	0f be c0             	movsbl %al,%eax
  1029ec:	50                   	push   %eax
  1029ed:	68 d5 03 00 00       	push   $0x3d5
  1029f2:	e8 f7 fe ff ff       	call   1028ee <outByte>
  1029f7:	83 c4 08             	add    $0x8,%esp
  1029fa:	6a 0e                	push   $0xe
  1029fc:	68 d4 03 00 00       	push   $0x3d4
  102a01:	e8 e8 fe ff ff       	call   1028ee <outByte>
  102a06:	83 c4 08             	add    $0x8,%esp
  102a09:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102a0c:	c1 f8 08             	sar    $0x8,%eax
  102a0f:	0f be c0             	movsbl %al,%eax
  102a12:	50                   	push   %eax
  102a13:	68 d5 03 00 00       	push   $0x3d5
  102a18:	e8 d1 fe ff ff       	call   1028ee <outByte>
  102a1d:	83 c4 08             	add    $0x8,%esp
  102a20:	90                   	nop
  102a21:	c9                   	leave  
  102a22:	c3                   	ret    

00102a23 <scrollScreen>:
  102a23:	55                   	push   %ebp
  102a24:	89 e5                	mov    %esp,%ebp
  102a26:	53                   	push   %ebx
  102a27:	83 ec 10             	sub    $0x10,%esp
  102a2a:	e8 9c ed ff ff       	call   1017cb <__x86.get_pc_thunk.dx>
  102a2f:	81 c2 d1 25 00 00    	add    $0x25d1,%edx
  102a35:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  102a3c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102a43:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  102a49:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  102a50:	eb 2b                	jmp    102a7d <scrollScreen+0x5a>
  102a52:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a55:	01 c0                	add    %eax,%eax
  102a57:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102a5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a5d:	05 00 80 0b 00       	add    $0xb8000,%eax
  102a62:	66 8b 00             	mov    (%eax),%ax
  102a65:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  102a69:	c7 c1 60 a8 12 00    	mov    $0x12a860,%ecx
  102a6f:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  102a72:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  102a76:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  102a7a:	ff 45 f8             	incl   -0x8(%ebp)
  102a7d:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  102a84:	7e cc                	jle    102a52 <scrollScreen+0x2f>
  102a86:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  102a8d:	eb 2f                	jmp    102abe <scrollScreen+0x9b>
  102a8f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a92:	01 c0                	add    %eax,%eax
  102a94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102a97:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a9a:	8d 48 50             	lea    0x50(%eax),%ecx
  102a9d:	c7 c0 60 a8 12 00    	mov    $0x12a860,%eax
  102aa3:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  102aa7:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  102aab:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102aae:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  102ab4:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  102ab8:	66 89 01             	mov    %ax,(%ecx)
  102abb:	ff 45 f8             	incl   -0x8(%ebp)
  102abe:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  102ac5:	7e c8                	jle    102a8f <scrollScreen+0x6c>
  102ac7:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  102acd:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  102ad4:	eb 1b                	jmp    102af1 <scrollScreen+0xce>
  102ad6:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102ad9:	01 c0                	add    %eax,%eax
  102adb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102ade:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102ae1:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  102ae7:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  102aeb:	66 89 02             	mov    %ax,(%edx)
  102aee:	ff 45 f8             	incl   -0x8(%ebp)
  102af1:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  102af8:	7e dc                	jle    102ad6 <scrollScreen+0xb3>
  102afa:	90                   	nop
  102afb:	83 c4 10             	add    $0x10,%esp
  102afe:	5b                   	pop    %ebx
  102aff:	5d                   	pop    %ebp
  102b00:	c3                   	ret    

00102b01 <waitForInterrupt>:
  102b01:	55                   	push   %ebp
  102b02:	89 e5                	mov    %esp,%ebp
  102b04:	e8 3c d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b09:	05 f7 24 00 00       	add    $0x24f7,%eax
  102b0e:	f4                   	hlt    
  102b0f:	90                   	nop
  102b10:	5d                   	pop    %ebp
  102b11:	c3                   	ret    

00102b12 <disableInterrupt>:
  102b12:	55                   	push   %ebp
  102b13:	89 e5                	mov    %esp,%ebp
  102b15:	e8 2b d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b1a:	05 e6 24 00 00       	add    $0x24e6,%eax
  102b1f:	fa                   	cli    
  102b20:	90                   	nop
  102b21:	5d                   	pop    %ebp
  102b22:	c3                   	ret    

00102b23 <i2A>:
  102b23:	55                   	push   %ebp
  102b24:	89 e5                	mov    %esp,%ebp
  102b26:	83 ec 10             	sub    $0x10,%esp
  102b29:	e8 17 d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b2e:	05 d2 24 00 00       	add    $0x24d2,%eax
  102b33:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  102b39:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102b3c:	8b 45 08             	mov    0x8(%ebp),%eax
  102b3f:	b9 0a 00 00 00       	mov    $0xa,%ecx
  102b44:	99                   	cltd   
  102b45:	f7 f9                	idiv   %ecx
  102b47:	89 d0                	mov    %edx,%eax
  102b49:	83 c0 30             	add    $0x30,%eax
  102b4c:	ff 4d fc             	decl   -0x4(%ebp)
  102b4f:	88 c2                	mov    %al,%dl
  102b51:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b54:	88 10                	mov    %dl,(%eax)
  102b56:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102b59:	b8 67 66 66 66       	mov    $0x66666667,%eax
  102b5e:	f7 e9                	imul   %ecx
  102b60:	c1 fa 02             	sar    $0x2,%edx
  102b63:	89 c8                	mov    %ecx,%eax
  102b65:	c1 f8 1f             	sar    $0x1f,%eax
  102b68:	29 c2                	sub    %eax,%edx
  102b6a:	89 d0                	mov    %edx,%eax
  102b6c:	89 45 08             	mov    %eax,0x8(%ebp)
  102b6f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102b73:	75 c7                	jne    102b3c <i2A+0x19>
  102b75:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b78:	c9                   	leave  
  102b79:	c3                   	ret    

00102b7a <append>:
  102b7a:	55                   	push   %ebp
  102b7b:	89 e5                	mov    %esp,%ebp
  102b7d:	53                   	push   %ebx
  102b7e:	e8 c2 d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b83:	05 7d 24 00 00       	add    $0x247d,%eax
  102b88:	eb 1a                	jmp    102ba4 <append+0x2a>
  102b8a:	8b 55 0c             	mov    0xc(%ebp),%edx
  102b8d:	8d 42 01             	lea    0x1(%edx),%eax
  102b90:	89 45 0c             	mov    %eax,0xc(%ebp)
  102b93:	8b 45 08             	mov    0x8(%ebp),%eax
  102b96:	8b 00                	mov    (%eax),%eax
  102b98:	8d 58 01             	lea    0x1(%eax),%ebx
  102b9b:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102b9e:	89 19                	mov    %ebx,(%ecx)
  102ba0:	8a 12                	mov    (%edx),%dl
  102ba2:	88 10                	mov    %dl,(%eax)
  102ba4:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ba7:	8a 00                	mov    (%eax),%al
  102ba9:	84 c0                	test   %al,%al
  102bab:	75 dd                	jne    102b8a <append+0x10>
  102bad:	90                   	nop
  102bae:	5b                   	pop    %ebx
  102baf:	5d                   	pop    %ebp
  102bb0:	c3                   	ret    

00102bb1 <displayMessage>:
  102bb1:	55                   	push   %ebp
  102bb2:	89 e5                	mov    %esp,%ebp
  102bb4:	53                   	push   %ebx
  102bb5:	83 ec 14             	sub    $0x14,%esp
  102bb8:	e8 78 dc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102bbd:	81 c3 43 24 00 00    	add    $0x2443,%ebx
  102bc3:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  102bc9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102bcc:	ff 75 08             	pushl  0x8(%ebp)
  102bcf:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102bd2:	50                   	push   %eax
  102bd3:	e8 a2 ff ff ff       	call   102b7a <append>
  102bd8:	83 c4 08             	add    $0x8,%esp
  102bdb:	8d 83 a5 df ff ff    	lea    -0x205b(%ebx),%eax
  102be1:	50                   	push   %eax
  102be2:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102be5:	50                   	push   %eax
  102be6:	e8 8f ff ff ff       	call   102b7a <append>
  102beb:	83 c4 08             	add    $0x8,%esp
  102bee:	ff 75 0c             	pushl  0xc(%ebp)
  102bf1:	e8 2d ff ff ff       	call   102b23 <i2A>
  102bf6:	83 c4 04             	add    $0x4,%esp
  102bf9:	50                   	push   %eax
  102bfa:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102bfd:	50                   	push   %eax
  102bfe:	e8 77 ff ff ff       	call   102b7a <append>
  102c03:	83 c4 08             	add    $0x8,%esp
  102c06:	8d 83 a7 df ff ff    	lea    -0x2059(%ebx),%eax
  102c0c:	50                   	push   %eax
  102c0d:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102c10:	50                   	push   %eax
  102c11:	e8 64 ff ff ff       	call   102b7a <append>
  102c16:	83 c4 08             	add    $0x8,%esp
  102c19:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  102c1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c22:	eb 1b                	jmp    102c3f <displayMessage+0x8e>
  102c24:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c27:	8a 00                	mov    (%eax),%al
  102c29:	0f be c0             	movsbl %al,%eax
  102c2c:	83 ec 0c             	sub    $0xc,%esp
  102c2f:	50                   	push   %eax
  102c30:	e8 37 fb ff ff       	call   10276c <putChar>
  102c35:	83 c4 10             	add    $0x10,%esp
  102c38:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c3b:	40                   	inc    %eax
  102c3c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c42:	8a 00                	mov    (%eax),%al
  102c44:	84 c0                	test   %al,%al
  102c46:	75 dc                	jne    102c24 <displayMessage+0x73>
  102c48:	90                   	nop
  102c49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c4c:	c9                   	leave  
  102c4d:	c3                   	ret    

00102c4e <abort>:
  102c4e:	55                   	push   %ebp
  102c4f:	89 e5                	mov    %esp,%ebp
  102c51:	83 ec 08             	sub    $0x8,%esp
  102c54:	e8 ec d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c59:	05 a7 23 00 00       	add    $0x23a7,%eax
  102c5e:	e8 af fe ff ff       	call   102b12 <disableInterrupt>
  102c63:	83 ec 08             	sub    $0x8,%esp
  102c66:	ff 75 0c             	pushl  0xc(%ebp)
  102c69:	ff 75 08             	pushl  0x8(%ebp)
  102c6c:	e8 40 ff ff ff       	call   102bb1 <displayMessage>
  102c71:	83 c4 10             	add    $0x10,%esp
  102c74:	e8 88 fe ff ff       	call   102b01 <waitForInterrupt>
  102c79:	eb f9                	jmp    102c74 <abort+0x26>

00102c7b <stringChr>:
  102c7b:	55                   	push   %ebp
  102c7c:	89 e5                	mov    %esp,%ebp
  102c7e:	83 ec 14             	sub    $0x14,%esp
  102c81:	e8 bf d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c86:	05 7a 23 00 00       	add    $0x237a,%eax
  102c8b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102c8e:	88 45 ec             	mov    %al,-0x14(%ebp)
  102c91:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102c98:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102c9c:	75 31                	jne    102ccf <stringChr+0x54>
  102c9e:	8b 45 10             	mov    0x10(%ebp),%eax
  102ca1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102ca7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102cac:	eb 3c                	jmp    102cea <stringChr+0x6f>
  102cae:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102cb1:	8b 45 08             	mov    0x8(%ebp),%eax
  102cb4:	01 d0                	add    %edx,%eax
  102cb6:	8a 00                	mov    (%eax),%al
  102cb8:	38 45 ec             	cmp    %al,-0x14(%ebp)
  102cbb:	75 0f                	jne    102ccc <stringChr+0x51>
  102cbd:	8b 45 10             	mov    0x10(%ebp),%eax
  102cc0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102cc3:	89 10                	mov    %edx,(%eax)
  102cc5:	b8 00 00 00 00       	mov    $0x0,%eax
  102cca:	eb 1e                	jmp    102cea <stringChr+0x6f>
  102ccc:	ff 45 fc             	incl   -0x4(%ebp)
  102ccf:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102cd2:	8b 45 08             	mov    0x8(%ebp),%eax
  102cd5:	01 d0                	add    %edx,%eax
  102cd7:	8a 00                	mov    (%eax),%al
  102cd9:	84 c0                	test   %al,%al
  102cdb:	75 d1                	jne    102cae <stringChr+0x33>
  102cdd:	8b 45 10             	mov    0x10(%ebp),%eax
  102ce0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102ce3:	89 10                	mov    %edx,(%eax)
  102ce5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102cea:	c9                   	leave  
  102ceb:	c3                   	ret    

00102cec <stringChrR>:
  102cec:	55                   	push   %ebp
  102ced:	89 e5                	mov    %esp,%ebp
  102cef:	83 ec 14             	sub    $0x14,%esp
  102cf2:	e8 4e d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102cf7:	05 09 23 00 00       	add    $0x2309,%eax
  102cfc:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cff:	88 45 ec             	mov    %al,-0x14(%ebp)
  102d02:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102d09:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102d0d:	75 13                	jne    102d22 <stringChrR+0x36>
  102d0f:	8b 45 10             	mov    0x10(%ebp),%eax
  102d12:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102d18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102d1d:	eb 47                	jmp    102d66 <stringChrR+0x7a>
  102d1f:	ff 45 fc             	incl   -0x4(%ebp)
  102d22:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d25:	8b 45 08             	mov    0x8(%ebp),%eax
  102d28:	01 d0                	add    %edx,%eax
  102d2a:	8a 00                	mov    (%eax),%al
  102d2c:	84 c0                	test   %al,%al
  102d2e:	75 ef                	jne    102d1f <stringChrR+0x33>
  102d30:	8b 45 10             	mov    0x10(%ebp),%eax
  102d33:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d36:	89 10                	mov    %edx,(%eax)
  102d38:	eb 21                	jmp    102d5b <stringChrR+0x6f>
  102d3a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d3d:	8b 45 08             	mov    0x8(%ebp),%eax
  102d40:	01 d0                	add    %edx,%eax
  102d42:	8a 00                	mov    (%eax),%al
  102d44:	38 45 ec             	cmp    %al,-0x14(%ebp)
  102d47:	75 0f                	jne    102d58 <stringChrR+0x6c>
  102d49:	8b 45 10             	mov    0x10(%ebp),%eax
  102d4c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d4f:	89 10                	mov    %edx,(%eax)
  102d51:	b8 00 00 00 00       	mov    $0x0,%eax
  102d56:	eb 0e                	jmp    102d66 <stringChrR+0x7a>
  102d58:	ff 4d fc             	decl   -0x4(%ebp)
  102d5b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  102d5f:	79 d9                	jns    102d3a <stringChrR+0x4e>
  102d61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102d66:	c9                   	leave  
  102d67:	c3                   	ret    

00102d68 <stringLen>:
  102d68:	55                   	push   %ebp
  102d69:	89 e5                	mov    %esp,%ebp
  102d6b:	83 ec 10             	sub    $0x10,%esp
  102d6e:	e8 d2 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102d73:	05 8d 22 00 00       	add    $0x228d,%eax
  102d78:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102d7f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102d83:	75 0a                	jne    102d8f <stringLen+0x27>
  102d85:	b8 00 00 00 00       	mov    $0x0,%eax
  102d8a:	eb 14                	jmp    102da0 <stringLen+0x38>
  102d8c:	ff 45 fc             	incl   -0x4(%ebp)
  102d8f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d92:	8b 45 08             	mov    0x8(%ebp),%eax
  102d95:	01 d0                	add    %edx,%eax
  102d97:	8a 00                	mov    (%eax),%al
  102d99:	84 c0                	test   %al,%al
  102d9b:	75 ef                	jne    102d8c <stringLen+0x24>
  102d9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102da0:	c9                   	leave  
  102da1:	c3                   	ret    

00102da2 <stringCmp>:
  102da2:	55                   	push   %ebp
  102da3:	89 e5                	mov    %esp,%ebp
  102da5:	83 ec 10             	sub    $0x10,%esp
  102da8:	e8 98 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dad:	05 53 22 00 00       	add    $0x2253,%eax
  102db2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102db9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102dbd:	74 06                	je     102dc5 <stringCmp+0x23>
  102dbf:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102dc3:	75 3e                	jne    102e03 <stringCmp+0x61>
  102dc5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102dca:	eb 44                	jmp    102e10 <stringCmp+0x6e>
  102dcc:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102dcf:	8b 45 08             	mov    0x8(%ebp),%eax
  102dd2:	01 d0                	add    %edx,%eax
  102dd4:	8a 10                	mov    (%eax),%dl
  102dd6:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102dd9:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ddc:	01 c8                	add    %ecx,%eax
  102dde:	8a 00                	mov    (%eax),%al
  102de0:	38 c2                	cmp    %al,%dl
  102de2:	74 07                	je     102deb <stringCmp+0x49>
  102de4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102de9:	eb 25                	jmp    102e10 <stringCmp+0x6e>
  102deb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102dee:	8b 45 08             	mov    0x8(%ebp),%eax
  102df1:	01 d0                	add    %edx,%eax
  102df3:	8a 00                	mov    (%eax),%al
  102df5:	84 c0                	test   %al,%al
  102df7:	75 07                	jne    102e00 <stringCmp+0x5e>
  102df9:	b8 00 00 00 00       	mov    $0x0,%eax
  102dfe:	eb 10                	jmp    102e10 <stringCmp+0x6e>
  102e00:	ff 45 fc             	incl   -0x4(%ebp)
  102e03:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102e06:	3b 45 10             	cmp    0x10(%ebp),%eax
  102e09:	75 c1                	jne    102dcc <stringCmp+0x2a>
  102e0b:	b8 00 00 00 00       	mov    $0x0,%eax
  102e10:	c9                   	leave  
  102e11:	c3                   	ret    

00102e12 <stringCpy>:
  102e12:	55                   	push   %ebp
  102e13:	89 e5                	mov    %esp,%ebp
  102e15:	83 ec 10             	sub    $0x10,%esp
  102e18:	e8 28 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e1d:	05 e3 21 00 00       	add    $0x21e3,%eax
  102e22:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102e29:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102e2d:	74 06                	je     102e35 <stringCpy+0x23>
  102e2f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102e33:	75 2c                	jne    102e61 <stringCpy+0x4f>
  102e35:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102e3a:	eb 40                	jmp    102e7c <stringCpy+0x6a>
  102e3c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102e3f:	8b 45 08             	mov    0x8(%ebp),%eax
  102e42:	01 d0                	add    %edx,%eax
  102e44:	8a 00                	mov    (%eax),%al
  102e46:	84 c0                	test   %al,%al
  102e48:	74 21                	je     102e6b <stringCpy+0x59>
  102e4a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102e4d:	8b 45 08             	mov    0x8(%ebp),%eax
  102e50:	01 d0                	add    %edx,%eax
  102e52:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102e55:	8b 55 0c             	mov    0xc(%ebp),%edx
  102e58:	01 ca                	add    %ecx,%edx
  102e5a:	8a 00                	mov    (%eax),%al
  102e5c:	88 02                	mov    %al,(%edx)
  102e5e:	ff 45 fc             	incl   -0x4(%ebp)
  102e61:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102e64:	3b 45 10             	cmp    0x10(%ebp),%eax
  102e67:	75 d3                	jne    102e3c <stringCpy+0x2a>
  102e69:	eb 01                	jmp    102e6c <stringCpy+0x5a>
  102e6b:	90                   	nop
  102e6c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102e6f:	8b 45 0c             	mov    0xc(%ebp),%eax
  102e72:	01 d0                	add    %edx,%eax
  102e74:	c6 00 00             	movb   $0x0,(%eax)
  102e77:	b8 00 00 00 00       	mov    $0x0,%eax
  102e7c:	c9                   	leave  
  102e7d:	c3                   	ret    

00102e7e <setBuffer>:
  102e7e:	55                   	push   %ebp
  102e7f:	89 e5                	mov    %esp,%ebp
  102e81:	83 ec 14             	sub    $0x14,%esp
  102e84:	e8 bc d5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e89:	05 77 21 00 00       	add    $0x2177,%eax
  102e8e:	8b 45 10             	mov    0x10(%ebp),%eax
  102e91:	88 45 ec             	mov    %al,-0x14(%ebp)
  102e94:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102e9b:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102e9f:	75 07                	jne    102ea8 <setBuffer+0x2a>
  102ea1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102ea6:	eb 26                	jmp    102ece <setBuffer+0x50>
  102ea8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102eaf:	eb 10                	jmp    102ec1 <setBuffer+0x43>
  102eb1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102eb4:	8b 45 08             	mov    0x8(%ebp),%eax
  102eb7:	01 c2                	add    %eax,%edx
  102eb9:	8a 45 ec             	mov    -0x14(%ebp),%al
  102ebc:	88 02                	mov    %al,(%edx)
  102ebe:	ff 45 fc             	incl   -0x4(%ebp)
  102ec1:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102ec4:	3b 45 0c             	cmp    0xc(%ebp),%eax
  102ec7:	7c e8                	jl     102eb1 <setBuffer+0x33>
  102ec9:	b8 00 00 00 00       	mov    $0x0,%eax
  102ece:	c9                   	leave  
  102ecf:	c3                   	ret    

00102ed0 <kEntry>:
  102ed0:	55                   	push   %ebp
  102ed1:	89 e5                	mov    %esp,%ebp
  102ed3:	53                   	push   %ebx
  102ed4:	83 ec 04             	sub    $0x4,%esp
  102ed7:	e8 59 d9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102edc:	81 c3 24 21 00 00    	add    $0x2124,%ebx
  102ee2:	e8 e2 f7 ff ff       	call   1026c9 <initSerial>
  102ee7:	e8 28 db ff ff       	call   100a14 <initIdt>
  102eec:	e8 71 d9 ff ff       	call   100862 <initIntr>
  102ef1:	e8 31 ee ff ff       	call   101d27 <initSeg>
  102ef6:	e8 1c fa ff ff       	call   102917 <initVga>
  102efb:	e8 8a f9 ff ff       	call   10288a <initTimer>
  102f00:	e8 18 e9 ff ff       	call   10181d <initKeyTable>
  102f05:	e8 08 f3 ff ff       	call   102212 <initFS>
  102f0a:	e8 68 f5 ff ff       	call   102477 <initProc>
  102f0f:	eb fe                	jmp    102f0f <kEntry+0x3f>

00102f11 <irqEmpty>:
  102f11:	6a 00                	push   $0x0
  102f13:	6a ff                	push   $0xffffffff
  102f15:	eb 39                	jmp    102f50 <asmDoIrq>

00102f17 <irqErrorCode>:
  102f17:	6a ff                	push   $0xffffffff
  102f19:	eb 35                	jmp    102f50 <asmDoIrq>

00102f1b <irqDoubleFault>:
  102f1b:	6a ff                	push   $0xffffffff
  102f1d:	eb 31                	jmp    102f50 <asmDoIrq>

00102f1f <irqInvalidTSS>:
  102f1f:	6a ff                	push   $0xffffffff
  102f21:	eb 2d                	jmp    102f50 <asmDoIrq>

00102f23 <irqSegNotPresent>:
  102f23:	6a ff                	push   $0xffffffff
  102f25:	eb 29                	jmp    102f50 <asmDoIrq>

00102f27 <irqStackSegFault>:
  102f27:	6a ff                	push   $0xffffffff
  102f29:	eb 25                	jmp    102f50 <asmDoIrq>

00102f2b <irqGProtectFault>:
  102f2b:	6a 0d                	push   $0xd
  102f2d:	eb 21                	jmp    102f50 <asmDoIrq>

00102f2f <irqPageFault>:
  102f2f:	6a ff                	push   $0xffffffff
  102f31:	eb 1d                	jmp    102f50 <asmDoIrq>

00102f33 <irqAlignCheck>:
  102f33:	6a ff                	push   $0xffffffff
  102f35:	eb 19                	jmp    102f50 <asmDoIrq>

00102f37 <irqSecException>:
  102f37:	6a ff                	push   $0xffffffff
  102f39:	eb 15                	jmp    102f50 <asmDoIrq>

00102f3b <irqTimer>:
  102f3b:	6a 00                	push   $0x0
  102f3d:	6a 20                	push   $0x20
  102f3f:	eb 0f                	jmp    102f50 <asmDoIrq>

00102f41 <irqKeyboard>:
  102f41:	6a 00                	push   $0x0
  102f43:	6a 21                	push   $0x21
  102f45:	eb 09                	jmp    102f50 <asmDoIrq>

00102f47 <irqSyscall>:
  102f47:	6a 00                	push   $0x0
  102f49:	68 80 00 00 00       	push   $0x80
  102f4e:	eb 00                	jmp    102f50 <asmDoIrq>

00102f50 <asmDoIrq>:
  102f50:	60                   	pusha  
  102f51:	1e                   	push   %ds
  102f52:	06                   	push   %es
  102f53:	0f a0                	push   %fs
  102f55:	0f a8                	push   %gs
  102f57:	54                   	push   %esp
  102f58:	e8 84 dc ff ff       	call   100be1 <irqHandle>
  102f5d:	83 c4 04             	add    $0x4,%esp
  102f60:	0f a9                	pop    %gs
  102f62:	0f a1                	pop    %fs
  102f64:	07                   	pop    %es
  102f65:	1f                   	pop    %ds
  102f66:	61                   	popa   
  102f67:	83 c4 04             	add    $0x4,%esp
  102f6a:	83 c4 04             	add    $0x4,%esp
  102f6d:	cf                   	iret   
