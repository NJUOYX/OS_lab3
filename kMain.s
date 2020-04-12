
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
  100637:	e8 ee 25 00 00       	call   102c2a <stringChr>
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
  10069b:	e8 8a 25 00 00       	call   102c2a <stringChr>
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
  100764:	e8 e8 25 00 00       	call   102d51 <stringCmp>
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
  100a2f:	c7 c0 c0 2e 10 00    	mov    $0x102ec0,%eax
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
  100a63:	c7 c0 ca 2e 10 00    	mov    $0x102eca,%eax
  100a69:	89 c2                	mov    %eax,%edx
  100a6b:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a71:	8d 40 40             	lea    0x40(%eax),%eax
  100a74:	6a 00                	push   $0x0
  100a76:	52                   	push   %edx
  100a77:	6a 01                	push   $0x1
  100a79:	50                   	push   %eax
  100a7a:	e8 19 ff ff ff       	call   100998 <setTrap>
  100a7f:	83 c4 10             	add    $0x10,%esp
  100a82:	c7 c0 ce 2e 10 00    	mov    $0x102ece,%eax
  100a88:	89 c2                	mov    %eax,%edx
  100a8a:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100a90:	8d 40 50             	lea    0x50(%eax),%eax
  100a93:	6a 00                	push   $0x0
  100a95:	52                   	push   %edx
  100a96:	6a 01                	push   $0x1
  100a98:	50                   	push   %eax
  100a99:	e8 fa fe ff ff       	call   100998 <setTrap>
  100a9e:	83 c4 10             	add    $0x10,%esp
  100aa1:	c7 c0 d2 2e 10 00    	mov    $0x102ed2,%eax
  100aa7:	89 c2                	mov    %eax,%edx
  100aa9:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100aaf:	8d 40 58             	lea    0x58(%eax),%eax
  100ab2:	6a 00                	push   $0x0
  100ab4:	52                   	push   %edx
  100ab5:	6a 01                	push   $0x1
  100ab7:	50                   	push   %eax
  100ab8:	e8 db fe ff ff       	call   100998 <setTrap>
  100abd:	83 c4 10             	add    $0x10,%esp
  100ac0:	c7 c0 d6 2e 10 00    	mov    $0x102ed6,%eax
  100ac6:	89 c2                	mov    %eax,%edx
  100ac8:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100ace:	8d 40 60             	lea    0x60(%eax),%eax
  100ad1:	6a 00                	push   $0x0
  100ad3:	52                   	push   %edx
  100ad4:	6a 01                	push   $0x1
  100ad6:	50                   	push   %eax
  100ad7:	e8 bc fe ff ff       	call   100998 <setTrap>
  100adc:	83 c4 10             	add    $0x10,%esp
  100adf:	c7 c0 da 2e 10 00    	mov    $0x102eda,%eax
  100ae5:	89 c2                	mov    %eax,%edx
  100ae7:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100aed:	8d 40 68             	lea    0x68(%eax),%eax
  100af0:	6a 00                	push   $0x0
  100af2:	52                   	push   %edx
  100af3:	6a 01                	push   $0x1
  100af5:	50                   	push   %eax
  100af6:	e8 9d fe ff ff       	call   100998 <setTrap>
  100afb:	83 c4 10             	add    $0x10,%esp
  100afe:	c7 c0 de 2e 10 00    	mov    $0x102ede,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b0c:	8d 40 70             	lea    0x70(%eax),%eax
  100b0f:	6a 00                	push   $0x0
  100b11:	52                   	push   %edx
  100b12:	6a 01                	push   $0x1
  100b14:	50                   	push   %eax
  100b15:	e8 7e fe ff ff       	call   100998 <setTrap>
  100b1a:	83 c4 10             	add    $0x10,%esp
  100b1d:	c7 c0 e2 2e 10 00    	mov    $0x102ee2,%eax
  100b23:	89 c2                	mov    %eax,%edx
  100b25:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b2b:	8d 80 88 00 00 00    	lea    0x88(%eax),%eax
  100b31:	6a 00                	push   $0x0
  100b33:	52                   	push   %edx
  100b34:	6a 01                	push   $0x1
  100b36:	50                   	push   %eax
  100b37:	e8 5c fe ff ff       	call   100998 <setTrap>
  100b3c:	83 c4 10             	add    $0x10,%esp
  100b3f:	c7 c0 e6 2e 10 00    	mov    $0x102ee6,%eax
  100b45:	89 c2                	mov    %eax,%edx
  100b47:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b4d:	8d 80 f0 00 00 00    	lea    0xf0(%eax),%eax
  100b53:	6a 00                	push   $0x0
  100b55:	52                   	push   %edx
  100b56:	6a 01                	push   $0x1
  100b58:	50                   	push   %eax
  100b59:	e8 3a fe ff ff       	call   100998 <setTrap>
  100b5e:	83 c4 10             	add    $0x10,%esp
  100b61:	c7 c0 ea 2e 10 00    	mov    $0x102eea,%eax
  100b67:	89 c2                	mov    %eax,%edx
  100b69:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b6f:	8d 80 00 01 00 00    	lea    0x100(%eax),%eax
  100b75:	6a 00                	push   $0x0
  100b77:	52                   	push   %edx
  100b78:	6a 01                	push   $0x1
  100b7a:	50                   	push   %eax
  100b7b:	e8 99 fd ff ff       	call   100919 <setIntr>
  100b80:	83 c4 10             	add    $0x10,%esp
  100b83:	c7 c0 f0 2e 10 00    	mov    $0x102ef0,%eax
  100b89:	89 c2                	mov    %eax,%edx
  100b8b:	c7 c0 40 52 10 00    	mov    $0x105240,%eax
  100b91:	8d 80 08 01 00 00    	lea    0x108(%eax),%eax
  100b97:	6a 00                	push   $0x0
  100b99:	52                   	push   %edx
  100b9a:	6a 01                	push   $0x1
  100b9c:	50                   	push   %eax
  100b9d:	e8 77 fd ff ff       	call   100919 <setIntr>
  100ba2:	83 c4 10             	add    $0x10,%esp
  100ba5:	c7 c0 f6 2e 10 00    	mov    $0x102ef6,%eax
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
  100cc9:	e8 7c 0a 00 00       	call   10174a <GProtectFaultHandle>
  100cce:	83 c4 10             	add    $0x10,%esp
  100cd1:	eb 47                	jmp    100d1a <irqHandle+0x139>
  100cd3:	83 ec 0c             	sub    $0xc,%esp
  100cd6:	ff 75 08             	pushl  0x8(%ebp)
  100cd9:	e8 bc 01 00 00       	call   100e9a <timerHandle>
  100cde:	83 c4 10             	add    $0x10,%esp
  100ce1:	eb 37                	jmp    100d1a <irqHandle+0x139>
  100ce3:	83 ec 0c             	sub    $0xc,%esp
  100ce6:	ff 75 08             	pushl  0x8(%ebp)
  100ce9:	e8 3f 03 00 00       	call   10102d <keyboardHandle>
  100cee:	83 c4 10             	add    $0x10,%esp
  100cf1:	eb 27                	jmp    100d1a <irqHandle+0x139>
  100cf3:	83 ec 0c             	sub    $0xc,%esp
  100cf6:	ff 75 08             	pushl  0x8(%ebp)
  100cf9:	e8 4e 00 00 00       	call   100d4c <syscallHandle>
  100cfe:	83 c4 10             	add    $0x10,%esp
  100d01:	eb 17                	jmp    100d1a <irqHandle+0x139>
  100d03:	83 ec 08             	sub    $0x8,%esp
  100d06:	6a 3b                	push   $0x3b
  100d08:	8d 83 20 df ff ff    	lea    -0x20e0(%ebx),%eax
  100d0e:	50                   	push   %eax
  100d0f:	e8 e9 1e 00 00       	call   102bfd <abort>
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
  100d6a:	8b 94 02 34 df ff ff 	mov    -0x20cc(%edx,%eax,1),%edx
  100d71:	01 d0                	add    %edx,%eax
  100d73:	ff e0                	jmp    *%eax

00100d75 <.L13>:
  100d75:	83 ec 0c             	sub    $0xc,%esp
  100d78:	ff 75 08             	pushl  0x8(%ebp)
  100d7b:	e8 2a 03 00 00       	call   1010aa <syscallWrite>
  100d80:	83 c4 10             	add    $0x10,%esp
  100d83:	eb 41                	jmp    100dc6 <.L18+0x11>

00100d85 <.L15>:
  100d85:	83 ec 0c             	sub    $0xc,%esp
  100d88:	ff 75 08             	pushl  0x8(%ebp)
  100d8b:	e8 db 04 00 00       	call   10126b <syscallFork>
  100d90:	83 c4 10             	add    $0x10,%esp
  100d93:	eb 31                	jmp    100dc6 <.L18+0x11>

00100d95 <.L16>:
  100d95:	83 ec 0c             	sub    $0xc,%esp
  100d98:	ff 75 08             	pushl  0x8(%ebp)
  100d9b:	e8 53 08 00 00       	call   1015f3 <syscallExec>
  100da0:	83 c4 10             	add    $0x10,%esp
  100da3:	eb 21                	jmp    100dc6 <.L18+0x11>

00100da5 <.L17>:
  100da5:	83 ec 0c             	sub    $0xc,%esp
  100da8:	ff 75 08             	pushl  0x8(%ebp)
  100dab:	e8 dc 08 00 00       	call   10168c <syscallSleep>
  100db0:	83 c4 10             	add    $0x10,%esp
  100db3:	eb 11                	jmp    100dc6 <.L18+0x11>

00100db5 <.L18>:
  100db5:	83 ec 0c             	sub    $0xc,%esp
  100db8:	ff 75 08             	pushl  0x8(%ebp)
  100dbb:	e8 4e 09 00 00       	call   10170e <syscallExit>
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
  100ea2:	e8 9e f5 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  100ea7:	05 59 41 00 00       	add    $0x4159,%eax
  100eac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100eb3:	e9 96 00 00 00       	jmp    100f4e <timerHandle+0xb4>
  100eb8:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100ebe:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100ec1:	89 ca                	mov    %ecx,%edx
  100ec3:	c1 e2 07             	shl    $0x7,%edx
  100ec6:	01 ca                	add    %ecx,%edx
  100ec8:	c1 e2 05             	shl    $0x5,%edx
  100ecb:	01 ca                	add    %ecx,%edx
  100ecd:	c1 e2 02             	shl    $0x2,%edx
  100ed0:	01 da                	add    %ebx,%edx
  100ed2:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  100ed8:	8b 12                	mov    (%edx),%edx
  100eda:	8d 5a ff             	lea    -0x1(%edx),%ebx
  100edd:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100ee3:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100ee6:	89 ca                	mov    %ecx,%edx
  100ee8:	c1 e2 07             	shl    $0x7,%edx
  100eeb:	01 ca                	add    %ecx,%edx
  100eed:	c1 e2 05             	shl    $0x5,%edx
  100ef0:	01 ca                	add    %ecx,%edx
  100ef2:	c1 e2 02             	shl    $0x2,%edx
  100ef5:	01 f2                	add    %esi,%edx
  100ef7:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  100efd:	89 1a                	mov    %ebx,(%edx)
  100eff:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100f05:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100f08:	89 ca                	mov    %ecx,%edx
  100f0a:	c1 e2 07             	shl    $0x7,%edx
  100f0d:	01 ca                	add    %ecx,%edx
  100f0f:	c1 e2 05             	shl    $0x5,%edx
  100f12:	01 ca                	add    %ecx,%edx
  100f14:	c1 e2 02             	shl    $0x2,%edx
  100f17:	01 da                	add    %ebx,%edx
  100f19:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  100f1f:	8b 12                	mov    (%edx),%edx
  100f21:	85 d2                	test   %edx,%edx
  100f23:	75 26                	jne    100f4b <timerHandle+0xb1>
  100f25:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100f2b:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100f2e:	89 ca                	mov    %ecx,%edx
  100f30:	c1 e2 07             	shl    $0x7,%edx
  100f33:	01 ca                	add    %ecx,%edx
  100f35:	c1 e2 05             	shl    $0x5,%edx
  100f38:	01 ca                	add    %ecx,%edx
  100f3a:	c1 e2 02             	shl    $0x2,%edx
  100f3d:	01 da                	add    %ebx,%edx
  100f3f:	81 c2 54 40 00 00    	add    $0x4054,%edx
  100f45:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  100f4b:	ff 45 f4             	incl   -0xc(%ebp)
  100f4e:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  100f52:	0f 8e 60 ff ff ff    	jle    100eb8 <timerHandle+0x1e>
  100f58:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100f5e:	8b 0a                	mov    (%edx),%ecx
  100f60:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100f66:	89 ca                	mov    %ecx,%edx
  100f68:	c1 e2 07             	shl    $0x7,%edx
  100f6b:	01 ca                	add    %ecx,%edx
  100f6d:	c1 e2 05             	shl    $0x5,%edx
  100f70:	01 ca                	add    %ecx,%edx
  100f72:	c1 e2 02             	shl    $0x2,%edx
  100f75:	01 da                	add    %ebx,%edx
  100f77:	81 c2 58 40 00 00    	add    $0x4058,%edx
  100f7d:	8b 12                	mov    (%edx),%edx
  100f7f:	8d 5a 01             	lea    0x1(%edx),%ebx
  100f82:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  100f88:	89 ca                	mov    %ecx,%edx
  100f8a:	c1 e2 07             	shl    $0x7,%edx
  100f8d:	01 ca                	add    %ecx,%edx
  100f8f:	c1 e2 05             	shl    $0x5,%edx
  100f92:	01 ca                	add    %ecx,%edx
  100f94:	c1 e2 02             	shl    $0x2,%edx
  100f97:	01 f2                	add    %esi,%edx
  100f99:	81 c2 58 40 00 00    	add    $0x4058,%edx
  100f9f:	89 1a                	mov    %ebx,(%edx)
  100fa1:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100fa7:	8b 0a                	mov    (%edx),%ecx
  100fa9:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100faf:	89 ca                	mov    %ecx,%edx
  100fb1:	c1 e2 07             	shl    $0x7,%edx
  100fb4:	01 ca                	add    %ecx,%edx
  100fb6:	c1 e2 05             	shl    $0x5,%edx
  100fb9:	01 ca                	add    %ecx,%edx
  100fbb:	c1 e2 02             	shl    $0x2,%edx
  100fbe:	01 da                	add    %ebx,%edx
  100fc0:	81 c2 58 40 00 00    	add    $0x4058,%edx
  100fc6:	8b 12                	mov    (%edx),%edx
  100fc8:	83 fa 10             	cmp    $0x10,%edx
  100fcb:	75 58                	jne    101025 <timerHandle+0x18b>
  100fcd:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  100fd3:	8b 12                	mov    (%edx),%edx
  100fd5:	42                   	inc    %edx
  100fd6:	89 55 f0             	mov    %edx,-0x10(%ebp)
  100fd9:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
  100fdd:	75 07                	jne    100fe6 <timerHandle+0x14c>
  100fdf:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100fe6:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100fe9:	89 55 ec             	mov    %edx,-0x14(%ebp)
  100fec:	eb 30                	jmp    10101e <timerHandle+0x184>
  100fee:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  100ff4:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  100ff7:	89 ca                	mov    %ecx,%edx
  100ff9:	c1 e2 07             	shl    $0x7,%edx
  100ffc:	01 ca                	add    %ecx,%edx
  100ffe:	c1 e2 05             	shl    $0x5,%edx
  101001:	01 ca                	add    %ecx,%edx
  101003:	c1 e2 02             	shl    $0x2,%edx
  101006:	01 da                	add    %ebx,%edx
  101008:	81 c2 54 40 00 00    	add    $0x4054,%edx
  10100e:	8b 12                	mov    (%edx),%edx
  101010:	85 d2                	test   %edx,%edx
  101012:	75 07                	jne    10101b <timerHandle+0x181>
  101014:	e8 b0 fd ff ff       	call   100dc9 <__switch__>
  101019:	eb 09                	jmp    101024 <timerHandle+0x18a>
  10101b:	ff 45 ec             	incl   -0x14(%ebp)
  10101e:	83 7d ec 08          	cmpl   $0x8,-0x14(%ebp)
  101022:	7e ca                	jle    100fee <timerHandle+0x154>
  101024:	90                   	nop
  101025:	90                   	nop
  101026:	83 c4 10             	add    $0x10,%esp
  101029:	5b                   	pop    %ebx
  10102a:	5e                   	pop    %esi
  10102b:	5d                   	pop    %ebp
  10102c:	c3                   	ret    

0010102d <keyboardHandle>:
  10102d:	55                   	push   %ebp
  10102e:	89 e5                	mov    %esp,%ebp
  101030:	53                   	push   %ebx
  101031:	83 ec 14             	sub    $0x14,%esp
  101034:	e8 fc f7 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101039:	81 c3 c7 3f 00 00    	add    $0x3fc7,%ebx
  10103f:	e8 a5 0a 00 00       	call   101ae9 <getKeyCode>
  101044:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101047:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  10104b:	74 57                	je     1010a4 <keyboardHandle+0x77>
  10104d:	83 ec 0c             	sub    $0xc,%esp
  101050:	ff 75 f4             	pushl  -0xc(%ebp)
  101053:	e8 35 0b 00 00       	call   101b8d <getChar>
  101058:	83 c4 10             	add    $0x10,%esp
  10105b:	0f be c0             	movsbl %al,%eax
  10105e:	83 ec 0c             	sub    $0xc,%esp
  101061:	50                   	push   %eax
  101062:	e8 b4 16 00 00       	call   10271b <putChar>
  101067:	83 c4 10             	add    $0x10,%esp
  10106a:	c7 c0 40 5a 10 00    	mov    $0x105a40,%eax
  101070:	8b 10                	mov    (%eax),%edx
  101072:	c7 c0 60 5a 10 00    	mov    $0x105a60,%eax
  101078:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10107b:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
  10107e:	c7 c0 40 5a 10 00    	mov    $0x105a40,%eax
  101084:	8b 00                	mov    (%eax),%eax
  101086:	40                   	inc    %eax
  101087:	25 ff 00 00 80       	and    $0x800000ff,%eax
  10108c:	85 c0                	test   %eax,%eax
  10108e:	79 07                	jns    101097 <keyboardHandle+0x6a>
  101090:	48                   	dec    %eax
  101091:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  101096:	40                   	inc    %eax
  101097:	89 c2                	mov    %eax,%edx
  101099:	c7 c0 40 5a 10 00    	mov    $0x105a40,%eax
  10109f:	89 10                	mov    %edx,(%eax)
  1010a1:	90                   	nop
  1010a2:	eb 01                	jmp    1010a5 <keyboardHandle+0x78>
  1010a4:	90                   	nop
  1010a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010a8:	c9                   	leave  
  1010a9:	c3                   	ret    

001010aa <syscallWrite>:
  1010aa:	55                   	push   %ebp
  1010ab:	89 e5                	mov    %esp,%ebp
  1010ad:	83 ec 08             	sub    $0x8,%esp
  1010b0:	e8 90 f3 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1010b5:	05 4b 3f 00 00       	add    $0x3f4b,%eax
  1010ba:	8b 45 08             	mov    0x8(%ebp),%eax
  1010bd:	8b 40 28             	mov    0x28(%eax),%eax
  1010c0:	85 c0                	test   %eax,%eax
  1010c2:	74 02                	je     1010c6 <syscallWrite+0x1c>
  1010c4:	eb 0f                	jmp    1010d5 <syscallWrite+0x2b>
  1010c6:	83 ec 0c             	sub    $0xc,%esp
  1010c9:	ff 75 08             	pushl  0x8(%ebp)
  1010cc:	e8 07 00 00 00       	call   1010d8 <syscallPrint>
  1010d1:	83 c4 10             	add    $0x10,%esp
  1010d4:	90                   	nop
  1010d5:	90                   	nop
  1010d6:	c9                   	leave  
  1010d7:	c3                   	ret    

001010d8 <syscallPrint>:
  1010d8:	55                   	push   %ebp
  1010d9:	89 e5                	mov    %esp,%ebp
  1010db:	53                   	push   %ebx
  1010dc:	83 ec 24             	sub    $0x24,%esp
  1010df:	e8 51 f7 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1010e4:	81 c3 1c 3f 00 00    	add    $0x3f1c,%ebx
  1010ea:	8b 45 08             	mov    0x8(%ebp),%eax
  1010ed:	8b 40 0c             	mov    0xc(%eax),%eax
  1010f0:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1010f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1010f6:	8b 40 24             	mov    0x24(%eax),%eax
  1010f9:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1010fc:	8b 45 08             	mov    0x8(%ebp),%eax
  1010ff:	8b 40 20             	mov    0x20(%eax),%eax
  101102:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101105:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10110c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  101113:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
  101117:	66 c7 45 e4 00 00    	movw   $0x0,-0x1c(%ebp)
  10111d:	8e 45 e0             	mov    -0x20(%ebp),%es
  101120:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101127:	e9 10 01 00 00       	jmp    10123c <syscallPrint+0x164>
  10112c:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10112f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101132:	01 d0                	add    %edx,%eax
  101134:	26 8a 00             	mov    %es:(%eax),%al
  101137:	88 45 e7             	mov    %al,-0x19(%ebp)
  10113a:	80 7d e7 0a          	cmpb   $0xa,-0x19(%ebp)
  10113e:	75 52                	jne    101192 <syscallPrint+0xba>
  101140:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101146:	8b 00                	mov    (%eax),%eax
  101148:	8d 50 01             	lea    0x1(%eax),%edx
  10114b:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101151:	89 10                	mov    %edx,(%eax)
  101153:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  101159:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10115f:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101165:	8b 00                	mov    (%eax),%eax
  101167:	83 f8 19             	cmp    $0x19,%eax
  10116a:	0f 85 c9 00 00 00    	jne    101239 <syscallPrint+0x161>
  101170:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101176:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  10117c:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  101182:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101188:	e8 45 18 00 00       	call   1029d2 <scrollScreen>
  10118d:	e9 a7 00 00 00       	jmp    101239 <syscallPrint+0x161>
  101192:	66 0f be 45 e7       	movsbw -0x19(%ebp),%ax
  101197:	80 cc 0c             	or     $0xc,%ah
  10119a:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  10119e:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1011a4:	8b 10                	mov    (%eax),%edx
  1011a6:	89 d0                	mov    %edx,%eax
  1011a8:	c1 e0 02             	shl    $0x2,%eax
  1011ab:	01 d0                	add    %edx,%eax
  1011ad:	c1 e0 04             	shl    $0x4,%eax
  1011b0:	89 c2                	mov    %eax,%edx
  1011b2:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1011b8:	8b 00                	mov    (%eax),%eax
  1011ba:	01 d0                	add    %edx,%eax
  1011bc:	01 c0                	add    %eax,%eax
  1011be:	89 45 e8             	mov    %eax,-0x18(%ebp)
  1011c1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1011c4:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  1011ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1011cd:	66 89 02             	mov    %ax,(%edx)
  1011d0:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1011d6:	8b 00                	mov    (%eax),%eax
  1011d8:	8d 50 01             	lea    0x1(%eax),%edx
  1011db:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1011e1:	89 10                	mov    %edx,(%eax)
  1011e3:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  1011e9:	8b 00                	mov    (%eax),%eax
  1011eb:	83 f8 50             	cmp    $0x50,%eax
  1011ee:	75 49                	jne    101239 <syscallPrint+0x161>
  1011f0:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  1011f6:	8b 00                	mov    (%eax),%eax
  1011f8:	8d 50 01             	lea    0x1(%eax),%edx
  1011fb:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101201:	89 10                	mov    %edx,(%eax)
  101203:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  101209:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  10120f:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101215:	8b 00                	mov    (%eax),%eax
  101217:	83 f8 19             	cmp    $0x19,%eax
  10121a:	75 1d                	jne    101239 <syscallPrint+0x161>
  10121c:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101222:	c7 00 18 00 00 00    	movl   $0x18,(%eax)
  101228:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  10122e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  101234:	e8 99 17 00 00       	call   1029d2 <scrollScreen>
  101239:	ff 45 f4             	incl   -0xc(%ebp)
  10123c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10123f:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  101242:	0f 8c e4 fe ff ff    	jl     10112c <syscallPrint+0x54>
  101248:	c7 c0 10 52 10 00    	mov    $0x105210,%eax
  10124e:	8b 10                	mov    (%eax),%edx
  101250:	c7 c0 0c 52 10 00    	mov    $0x10520c,%eax
  101256:	8b 00                	mov    (%eax),%eax
  101258:	83 ec 08             	sub    $0x8,%esp
  10125b:	52                   	push   %edx
  10125c:	50                   	push   %eax
  10125d:	e8 fd 16 00 00       	call   10295f <updateCursor>
  101262:	83 c4 10             	add    $0x10,%esp
  101265:	90                   	nop
  101266:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101269:	c9                   	leave  
  10126a:	c3                   	ret    

0010126b <syscallFork>:
  10126b:	55                   	push   %ebp
  10126c:	89 e5                	mov    %esp,%ebp
  10126e:	57                   	push   %edi
  10126f:	56                   	push   %esi
  101270:	53                   	push   %ebx
  101271:	83 ec 10             	sub    $0x10,%esp
  101274:	e8 cc f1 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101279:	05 87 3d 00 00       	add    $0x3d87,%eax
  10127e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  101285:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  10128c:	e9 23 03 00 00       	jmp    1015b4 <syscallFork+0x349>
  101291:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101297:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  10129a:	89 ca                	mov    %ecx,%edx
  10129c:	c1 e2 07             	shl    $0x7,%edx
  10129f:	01 ca                	add    %ecx,%edx
  1012a1:	c1 e2 05             	shl    $0x5,%edx
  1012a4:	01 ca                	add    %ecx,%edx
  1012a6:	c1 e2 02             	shl    $0x2,%edx
  1012a9:	01 da                	add    %ebx,%edx
  1012ab:	81 c2 54 40 00 00    	add    $0x4054,%edx
  1012b1:	8b 12                	mov    (%edx),%edx
  1012b3:	83 fa 03             	cmp    $0x3,%edx
  1012b6:	0f 85 f5 02 00 00    	jne    1015b1 <syscallFork+0x346>
  1012bc:	8b 5d f0             	mov    -0x10(%ebp),%ebx
  1012bf:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  1012c5:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  1012c8:	89 ca                	mov    %ecx,%edx
  1012ca:	c1 e2 07             	shl    $0x7,%edx
  1012cd:	01 ca                	add    %ecx,%edx
  1012cf:	c1 e2 05             	shl    $0x5,%edx
  1012d2:	01 ca                	add    %ecx,%edx
  1012d4:	c1 e2 02             	shl    $0x2,%edx
  1012d7:	01 f2                	add    %esi,%edx
  1012d9:	81 c2 60 40 00 00    	add    $0x4060,%edx
  1012df:	89 1a                	mov    %ebx,(%edx)
  1012e1:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1012e7:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  1012ea:	89 ca                	mov    %ecx,%edx
  1012ec:	c1 e2 07             	shl    $0x7,%edx
  1012ef:	01 ca                	add    %ecx,%edx
  1012f1:	c1 e2 05             	shl    $0x5,%edx
  1012f4:	01 ca                	add    %ecx,%edx
  1012f6:	c1 e2 02             	shl    $0x2,%edx
  1012f9:	01 da                	add    %ebx,%edx
  1012fb:	81 c2 60 40 00 00    	add    $0x4060,%edx
  101301:	8b 12                	mov    (%edx),%edx
  101303:	89 55 e8             	mov    %edx,-0x18(%ebp)
  101306:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101309:	89 ca                	mov    %ecx,%edx
  10130b:	c1 e2 07             	shl    $0x7,%edx
  10130e:	01 ca                	add    %ecx,%edx
  101310:	c1 e2 05             	shl    $0x5,%edx
  101313:	01 ca                	add    %ecx,%edx
  101315:	c1 e2 02             	shl    $0x2,%edx
  101318:	8d 8a 00 40 00 00    	lea    0x4000(%edx),%ecx
  10131e:	c7 c2 a0 63 10 00    	mov    $0x1063a0,%edx
  101324:	01 ca                	add    %ecx,%edx
  101326:	89 d3                	mov    %edx,%ebx
  101328:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  10132e:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101331:	89 ca                	mov    %ecx,%edx
  101333:	c1 e2 07             	shl    $0x7,%edx
  101336:	01 ca                	add    %ecx,%edx
  101338:	c1 e2 05             	shl    $0x5,%edx
  10133b:	01 ca                	add    %ecx,%edx
  10133d:	c1 e2 02             	shl    $0x2,%edx
  101340:	01 f2                	add    %esi,%edx
  101342:	81 c2 4c 40 00 00    	add    $0x404c,%edx
  101348:	89 1a                	mov    %ebx,(%edx)
  10134a:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10134d:	89 ca                	mov    %ecx,%edx
  10134f:	c1 e2 07             	shl    $0x7,%edx
  101352:	01 ca                	add    %ecx,%edx
  101354:	c1 e2 05             	shl    $0x5,%edx
  101357:	01 ca                	add    %ecx,%edx
  101359:	c1 e2 02             	shl    $0x2,%edx
  10135c:	8d 8a 40 40 00 00    	lea    0x4040(%edx),%ecx
  101362:	c7 c2 a0 63 10 00    	mov    $0x1063a0,%edx
  101368:	01 ca                	add    %ecx,%edx
  10136a:	83 c2 0c             	add    $0xc,%edx
  10136d:	89 d3                	mov    %edx,%ebx
  10136f:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  101375:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101378:	89 ca                	mov    %ecx,%edx
  10137a:	c1 e2 07             	shl    $0x7,%edx
  10137d:	01 ca                	add    %ecx,%edx
  10137f:	c1 e2 05             	shl    $0x5,%edx
  101382:	01 ca                	add    %ecx,%edx
  101384:	c1 e2 02             	shl    $0x2,%edx
  101387:	01 f2                	add    %esi,%edx
  101389:	81 c2 50 40 00 00    	add    $0x4050,%edx
  10138f:	89 1a                	mov    %ebx,(%edx)
  101391:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101397:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10139a:	89 ca                	mov    %ecx,%edx
  10139c:	c1 e2 07             	shl    $0x7,%edx
  10139f:	01 ca                	add    %ecx,%edx
  1013a1:	c1 e2 05             	shl    $0x5,%edx
  1013a4:	01 ca                	add    %ecx,%edx
  1013a6:	c1 e2 02             	shl    $0x2,%edx
  1013a9:	01 da                	add    %ebx,%edx
  1013ab:	81 c2 54 40 00 00    	add    $0x4054,%edx
  1013b1:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1013b7:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1013bd:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1013c0:	89 ca                	mov    %ecx,%edx
  1013c2:	c1 e2 07             	shl    $0x7,%edx
  1013c5:	01 ca                	add    %ecx,%edx
  1013c7:	c1 e2 05             	shl    $0x5,%edx
  1013ca:	01 ca                	add    %ecx,%edx
  1013cc:	c1 e2 02             	shl    $0x2,%edx
  1013cf:	01 da                	add    %ebx,%edx
  1013d1:	81 c2 5c 40 00 00    	add    $0x405c,%edx
  1013d7:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1013dd:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1013e3:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1013e6:	89 ca                	mov    %ecx,%edx
  1013e8:	c1 e2 07             	shl    $0x7,%edx
  1013eb:	01 ca                	add    %ecx,%edx
  1013ed:	c1 e2 05             	shl    $0x5,%edx
  1013f0:	01 ca                	add    %ecx,%edx
  1013f2:	c1 e2 02             	shl    $0x2,%edx
  1013f5:	01 da                	add    %ebx,%edx
  1013f7:	81 c2 58 40 00 00    	add    $0x4058,%edx
  1013fd:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101403:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101409:	8b 0a                	mov    (%edx),%ecx
  10140b:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  101411:	8b 5d e8             	mov    -0x18(%ebp),%ebx
  101414:	89 da                	mov    %ebx,%edx
  101416:	c1 e2 07             	shl    $0x7,%edx
  101419:	01 da                	add    %ebx,%edx
  10141b:	c1 e2 05             	shl    $0x5,%edx
  10141e:	01 da                	add    %ebx,%edx
  101420:	c1 e2 02             	shl    $0x2,%edx
  101423:	01 f2                	add    %esi,%edx
  101425:	8d b2 00 40 00 00    	lea    0x4000(%edx),%esi
  10142b:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101431:	89 ca                	mov    %ecx,%edx
  101433:	c1 e2 07             	shl    $0x7,%edx
  101436:	01 ca                	add    %ecx,%edx
  101438:	c1 e2 05             	shl    $0x5,%edx
  10143b:	01 ca                	add    %ecx,%edx
  10143d:	c1 e2 02             	shl    $0x2,%edx
  101440:	01 da                	add    %ebx,%edx
  101442:	81 c2 00 40 00 00    	add    $0x4000,%edx
  101448:	89 f3                	mov    %esi,%ebx
  10144a:	89 d6                	mov    %edx,%esi
  10144c:	ba 13 00 00 00       	mov    $0x13,%edx
  101451:	89 df                	mov    %ebx,%edi
  101453:	89 d1                	mov    %edx,%ecx
  101455:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  101457:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  10145d:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101460:	89 ca                	mov    %ecx,%edx
  101462:	c1 e2 07             	shl    $0x7,%edx
  101465:	01 ca                	add    %ecx,%edx
  101467:	c1 e2 05             	shl    $0x5,%edx
  10146a:	01 ca                	add    %ecx,%edx
  10146c:	c1 e2 02             	shl    $0x2,%edx
  10146f:	01 da                	add    %ebx,%edx
  101471:	81 c2 44 40 00 00    	add    $0x4044,%edx
  101477:	8b 0a                	mov    (%edx),%ecx
  101479:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  10147f:	8b 12                	mov    (%edx),%edx
  101481:	89 d3                	mov    %edx,%ebx
  101483:	8b 55 e8             	mov    -0x18(%ebp),%edx
  101486:	29 da                	sub    %ebx,%edx
  101488:	c1 e2 14             	shl    $0x14,%edx
  10148b:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  10148e:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  101494:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101497:	89 ca                	mov    %ecx,%edx
  101499:	c1 e2 07             	shl    $0x7,%edx
  10149c:	01 ca                	add    %ecx,%edx
  10149e:	c1 e2 05             	shl    $0x5,%edx
  1014a1:	01 ca                	add    %ecx,%edx
  1014a3:	c1 e2 02             	shl    $0x2,%edx
  1014a6:	01 f2                	add    %esi,%edx
  1014a8:	81 c2 44 40 00 00    	add    $0x4044,%edx
  1014ae:	89 1a                	mov    %ebx,(%edx)
  1014b0:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  1014b6:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1014b9:	89 ca                	mov    %ecx,%edx
  1014bb:	c1 e2 07             	shl    $0x7,%edx
  1014be:	01 ca                	add    %ecx,%edx
  1014c0:	c1 e2 05             	shl    $0x5,%edx
  1014c3:	01 ca                	add    %ecx,%edx
  1014c5:	c1 e2 02             	shl    $0x2,%edx
  1014c8:	01 da                	add    %ebx,%edx
  1014ca:	81 c2 38 40 00 00    	add    $0x4038,%edx
  1014d0:	8b 0a                	mov    (%edx),%ecx
  1014d2:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  1014d8:	8b 12                	mov    (%edx),%edx
  1014da:	89 d3                	mov    %edx,%ebx
  1014dc:	8b 55 e8             	mov    -0x18(%ebp),%edx
  1014df:	29 da                	sub    %ebx,%edx
  1014e1:	c1 e2 14             	shl    $0x14,%edx
  1014e4:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
  1014e7:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  1014ed:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  1014f0:	89 ca                	mov    %ecx,%edx
  1014f2:	c1 e2 07             	shl    $0x7,%edx
  1014f5:	01 ca                	add    %ecx,%edx
  1014f7:	c1 e2 05             	shl    $0x5,%edx
  1014fa:	01 ca                	add    %ecx,%edx
  1014fc:	c1 e2 02             	shl    $0x2,%edx
  1014ff:	01 f2                	add    %esi,%edx
  101501:	81 c2 38 40 00 00    	add    $0x4038,%edx
  101507:	89 1a                	mov    %ebx,(%edx)
  101509:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  101510:	eb 42                	jmp    101554 <syscallFork+0x2e9>
  101512:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101518:	8b 0a                	mov    (%edx),%ecx
  10151a:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101520:	89 ca                	mov    %ecx,%edx
  101522:	c1 e2 07             	shl    $0x7,%edx
  101525:	01 ca                	add    %ecx,%edx
  101527:	c1 e2 05             	shl    $0x5,%edx
  10152a:	01 ca                	add    %ecx,%edx
  10152c:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10152f:	01 ca                	add    %ecx,%edx
  101531:	8b 34 93             	mov    (%ebx,%edx,4),%esi
  101534:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  10153a:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  10153d:	89 ca                	mov    %ecx,%edx
  10153f:	c1 e2 07             	shl    $0x7,%edx
  101542:	01 ca                	add    %ecx,%edx
  101544:	c1 e2 05             	shl    $0x5,%edx
  101547:	01 ca                	add    %ecx,%edx
  101549:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  10154c:	01 ca                	add    %ecx,%edx
  10154e:	89 34 93             	mov    %esi,(%ebx,%edx,4)
  101551:	ff 45 ec             	incl   -0x14(%ebp)
  101554:	81 7d ec ff 0f 00 00 	cmpl   $0xfff,-0x14(%ebp)
  10155b:	7e b5                	jle    101512 <syscallFork+0x2a7>
  10155d:	c7 c3 a0 63 10 00    	mov    $0x1063a0,%ebx
  101563:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  101566:	89 ca                	mov    %ecx,%edx
  101568:	c1 e2 07             	shl    $0x7,%edx
  10156b:	01 ca                	add    %ecx,%edx
  10156d:	c1 e2 05             	shl    $0x5,%edx
  101570:	01 ca                	add    %ecx,%edx
  101572:	c1 e2 02             	shl    $0x2,%edx
  101575:	01 da                	add    %ebx,%edx
  101577:	81 c2 2c 40 00 00    	add    $0x402c,%edx
  10157d:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  101583:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101589:	8b 12                	mov    (%edx),%edx
  10158b:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  101591:	89 d0                	mov    %edx,%eax
  101593:	c1 e0 07             	shl    $0x7,%eax
  101596:	01 d0                	add    %edx,%eax
  101598:	c1 e0 05             	shl    $0x5,%eax
  10159b:	01 d0                	add    %edx,%eax
  10159d:	c1 e0 02             	shl    $0x2,%eax
  1015a0:	01 c8                	add    %ecx,%eax
  1015a2:	8d 90 2c 40 00 00    	lea    0x402c(%eax),%edx
  1015a8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1015ab:	89 02                	mov    %eax,(%edx)
  1015ad:	cd 20                	int    $0x20
  1015af:	eb 3a                	jmp    1015eb <syscallFork+0x380>
  1015b1:	ff 45 f0             	incl   -0x10(%ebp)
  1015b4:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
  1015b8:	0f 8e d3 fc ff ff    	jle    101291 <syscallFork+0x26>
  1015be:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  1015c4:	8b 12                	mov    (%edx),%edx
  1015c6:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  1015cc:	89 d0                	mov    %edx,%eax
  1015ce:	c1 e0 07             	shl    $0x7,%eax
  1015d1:	01 d0                	add    %edx,%eax
  1015d3:	c1 e0 05             	shl    $0x5,%eax
  1015d6:	01 d0                	add    %edx,%eax
  1015d8:	c1 e0 02             	shl    $0x2,%eax
  1015db:	01 c8                	add    %ecx,%eax
  1015dd:	05 2c 40 00 00       	add    $0x402c,%eax
  1015e2:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
  1015e8:	cd 20                	int    $0x20
  1015ea:	90                   	nop
  1015eb:	83 c4 10             	add    $0x10,%esp
  1015ee:	5b                   	pop    %ebx
  1015ef:	5e                   	pop    %esi
  1015f0:	5f                   	pop    %edi
  1015f1:	5d                   	pop    %ebp
  1015f2:	c3                   	ret    

001015f3 <syscallExec>:
  1015f3:	55                   	push   %ebp
  1015f4:	89 e5                	mov    %esp,%ebp
  1015f6:	53                   	push   %ebx
  1015f7:	83 ec 24             	sub    $0x24,%esp
  1015fa:	e8 7b 01 00 00       	call   10177a <__x86.get_pc_thunk.dx>
  1015ff:	81 c2 01 3a 00 00    	add    $0x3a01,%edx
  101605:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  10160c:	8b 45 08             	mov    0x8(%ebp),%eax
  10160f:	8b 40 28             	mov    0x28(%eax),%eax
  101612:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101615:	8b 45 08             	mov    0x8(%ebp),%eax
  101618:	8b 40 20             	mov    0x20(%eax),%eax
  10161b:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10161e:	8b 45 08             	mov    0x8(%ebp),%eax
  101621:	8b 40 0c             	mov    0xc(%eax),%eax
  101624:	89 45 d8             	mov    %eax,-0x28(%ebp)
  101627:	8e 45 d8             	mov    -0x28(%ebp),%es
  10162a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101631:	eb 11                	jmp    101644 <syscallExec+0x51>
  101633:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  101636:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101639:	01 c8                	add    %ecx,%eax
  10163b:	26 8a 00             	mov    %es:(%eax),%al
  10163e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  101641:	ff 45 f4             	incl   -0xc(%ebp)
  101644:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101647:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10164a:	7c e7                	jl     101633 <syscallExec+0x40>
  10164c:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  101652:	8b 00                	mov    (%eax),%eax
  101654:	40                   	inc    %eax
  101655:	c1 e0 14             	shl    $0x14,%eax
  101658:	89 c1                	mov    %eax,%ecx
  10165a:	83 ec 04             	sub    $0x4,%esp
  10165d:	8d 45 dc             	lea    -0x24(%ebp),%eax
  101660:	50                   	push   %eax
  101661:	51                   	push   %ecx
  101662:	ff 75 f0             	pushl  -0x10(%ebp)
  101665:	89 d3                	mov    %edx,%ebx
  101667:	e8 80 0b 00 00       	call   1021ec <loadElf>
  10166c:	83 c4 10             	add    $0x10,%esp
  10166f:	89 45 e8             	mov    %eax,-0x18(%ebp)
  101672:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
  101676:	74 0e                	je     101686 <syscallExec+0x93>
  101678:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10167b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10167e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101681:	ff d0                	call   *%eax
  101683:	90                   	nop
  101684:	eb 01                	jmp    101687 <syscallExec+0x94>
  101686:	90                   	nop
  101687:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10168a:	c9                   	leave  
  10168b:	c3                   	ret    

0010168c <syscallSleep>:
  10168c:	55                   	push   %ebp
  10168d:	89 e5                	mov    %esp,%ebp
  10168f:	56                   	push   %esi
  101690:	53                   	push   %ebx
  101691:	83 ec 10             	sub    $0x10,%esp
  101694:	e8 e1 00 00 00       	call   10177a <__x86.get_pc_thunk.dx>
  101699:	81 c2 67 39 00 00    	add    $0x3967,%edx
  10169f:	8b 45 08             	mov    0x8(%ebp),%eax
  1016a2:	8b 40 28             	mov    0x28(%eax),%eax
  1016a5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1016a8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1016ac:	74 58                	je     101706 <syscallSleep+0x7a>
  1016ae:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  1016b4:	8b 08                	mov    (%eax),%ecx
  1016b6:	8b 5d f4             	mov    -0xc(%ebp),%ebx
  1016b9:	c7 c6 a0 63 10 00    	mov    $0x1063a0,%esi
  1016bf:	89 c8                	mov    %ecx,%eax
  1016c1:	c1 e0 07             	shl    $0x7,%eax
  1016c4:	01 c8                	add    %ecx,%eax
  1016c6:	c1 e0 05             	shl    $0x5,%eax
  1016c9:	01 c8                	add    %ecx,%eax
  1016cb:	c1 e0 02             	shl    $0x2,%eax
  1016ce:	01 f0                	add    %esi,%eax
  1016d0:	05 5c 40 00 00       	add    $0x405c,%eax
  1016d5:	89 18                	mov    %ebx,(%eax)
  1016d7:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  1016dd:	8b 08                	mov    (%eax),%ecx
  1016df:	c7 c2 a0 63 10 00    	mov    $0x1063a0,%edx
  1016e5:	89 c8                	mov    %ecx,%eax
  1016e7:	c1 e0 07             	shl    $0x7,%eax
  1016ea:	01 c8                	add    %ecx,%eax
  1016ec:	c1 e0 05             	shl    $0x5,%eax
  1016ef:	01 c8                	add    %ecx,%eax
  1016f1:	c1 e0 02             	shl    $0x2,%eax
  1016f4:	01 d0                	add    %edx,%eax
  1016f6:	05 54 40 00 00       	add    $0x4054,%eax
  1016fb:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  101701:	cd 20                	int    $0x20
  101703:	90                   	nop
  101704:	eb 01                	jmp    101707 <syscallSleep+0x7b>
  101706:	90                   	nop
  101707:	83 c4 10             	add    $0x10,%esp
  10170a:	5b                   	pop    %ebx
  10170b:	5e                   	pop    %esi
  10170c:	5d                   	pop    %ebp
  10170d:	c3                   	ret    

0010170e <syscallExit>:
  10170e:	55                   	push   %ebp
  10170f:	89 e5                	mov    %esp,%ebp
  101711:	e8 2f ed ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101716:	05 ea 38 00 00       	add    $0x38ea,%eax
  10171b:	c7 c2 84 5f 10 00    	mov    $0x105f84,%edx
  101721:	8b 12                	mov    (%edx),%edx
  101723:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  101729:	89 d0                	mov    %edx,%eax
  10172b:	c1 e0 07             	shl    $0x7,%eax
  10172e:	01 d0                	add    %edx,%eax
  101730:	c1 e0 05             	shl    $0x5,%eax
  101733:	01 d0                	add    %edx,%eax
  101735:	c1 e0 02             	shl    $0x2,%eax
  101738:	01 c8                	add    %ecx,%eax
  10173a:	05 54 40 00 00       	add    $0x4054,%eax
  10173f:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  101745:	cd 20                	int    $0x20
  101747:	90                   	nop
  101748:	5d                   	pop    %ebp
  101749:	c3                   	ret    

0010174a <GProtectFaultHandle>:
  10174a:	55                   	push   %ebp
  10174b:	89 e5                	mov    %esp,%ebp
  10174d:	53                   	push   %ebx
  10174e:	83 ec 04             	sub    $0x4,%esp
  101751:	e8 ef ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101756:	05 aa 38 00 00       	add    $0x38aa,%eax
  10175b:	83 ec 08             	sub    $0x8,%esp
  10175e:	68 15 01 00 00       	push   $0x115
  101763:	8d 90 20 df ff ff    	lea    -0x20e0(%eax),%edx
  101769:	52                   	push   %edx
  10176a:	89 c3                	mov    %eax,%ebx
  10176c:	e8 8c 14 00 00       	call   102bfd <abort>
  101771:	83 c4 10             	add    $0x10,%esp
  101774:	90                   	nop
  101775:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101778:	c9                   	leave  
  101779:	c3                   	ret    

0010177a <__x86.get_pc_thunk.dx>:
  10177a:	8b 14 24             	mov    (%esp),%edx
  10177d:	c3                   	ret    

0010177e <inByte>:
  10177e:	55                   	push   %ebp
  10177f:	89 e5                	mov    %esp,%ebp
  101781:	83 ec 14             	sub    $0x14,%esp
  101784:	e8 bc ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101789:	05 77 38 00 00       	add    $0x3877,%eax
  10178e:	8b 45 08             	mov    0x8(%ebp),%eax
  101791:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  101795:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101798:	89 c2                	mov    %eax,%edx
  10179a:	ec                   	in     (%dx),%al
  10179b:	88 45 ff             	mov    %al,-0x1(%ebp)
  10179e:	8a 45 ff             	mov    -0x1(%ebp),%al
  1017a1:	c9                   	leave  
  1017a2:	c3                   	ret    

001017a3 <outByte>:
  1017a3:	55                   	push   %ebp
  1017a4:	89 e5                	mov    %esp,%ebp
  1017a6:	83 ec 08             	sub    $0x8,%esp
  1017a9:	e8 97 ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1017ae:	05 52 38 00 00       	add    $0x3852,%eax
  1017b3:	8b 45 08             	mov    0x8(%ebp),%eax
  1017b6:	8b 55 0c             	mov    0xc(%ebp),%edx
  1017b9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1017bd:	88 d0                	mov    %dl,%al
  1017bf:	88 45 f8             	mov    %al,-0x8(%ebp)
  1017c2:	8a 45 f8             	mov    -0x8(%ebp),%al
  1017c5:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1017c8:	ee                   	out    %al,(%dx)
  1017c9:	90                   	nop
  1017ca:	c9                   	leave  
  1017cb:	c3                   	ret    

001017cc <initKeyTable>:
  1017cc:	55                   	push   %ebp
  1017cd:	89 e5                	mov    %esp,%ebp
  1017cf:	83 ec 10             	sub    $0x10,%esp
  1017d2:	e8 6e ec ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1017d7:	05 29 38 00 00       	add    $0x3829,%eax
  1017dc:	c7 c2 60 5e 10 00    	mov    $0x105e60,%edx
  1017e2:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1017e8:	c7 c2 40 5a 10 00    	mov    $0x105a40,%edx
  1017ee:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
  1017f4:	c7 80 00 02 00 00 00 	movl   $0x0,0x200(%eax)
  1017fb:	00 00 00 
  1017fe:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  101804:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  10180a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101811:	eb 1f                	jmp    101832 <initKeyTable+0x66>
  101813:	8d 88 40 01 00 00    	lea    0x140(%eax),%ecx
  101819:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10181c:	01 ca                	add    %ecx,%edx
  10181e:	c6 02 00             	movb   $0x0,(%edx)
  101821:	8d 88 a0 01 00 00    	lea    0x1a0(%eax),%ecx
  101827:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10182a:	01 ca                	add    %ecx,%edx
  10182c:	c6 02 00             	movb   $0x0,(%edx)
  10182f:	ff 45 fc             	incl   -0x4(%ebp)
  101832:	83 7d fc 58          	cmpl   $0x58,-0x4(%ebp)
  101836:	7e db                	jle    101813 <initKeyTable+0x47>
  101838:	c6 80 42 01 00 00 31 	movb   $0x31,0x142(%eax)
  10183f:	c6 80 a2 01 00 00 21 	movb   $0x21,0x1a2(%eax)
  101846:	c6 80 43 01 00 00 32 	movb   $0x32,0x143(%eax)
  10184d:	c6 80 a3 01 00 00 40 	movb   $0x40,0x1a3(%eax)
  101854:	c6 80 44 01 00 00 33 	movb   $0x33,0x144(%eax)
  10185b:	c6 80 a4 01 00 00 23 	movb   $0x23,0x1a4(%eax)
  101862:	c6 80 45 01 00 00 34 	movb   $0x34,0x145(%eax)
  101869:	c6 80 a5 01 00 00 24 	movb   $0x24,0x1a5(%eax)
  101870:	c6 80 46 01 00 00 35 	movb   $0x35,0x146(%eax)
  101877:	c6 80 a6 01 00 00 25 	movb   $0x25,0x1a6(%eax)
  10187e:	c6 80 47 01 00 00 36 	movb   $0x36,0x147(%eax)
  101885:	c6 80 a7 01 00 00 5e 	movb   $0x5e,0x1a7(%eax)
  10188c:	c6 80 48 01 00 00 37 	movb   $0x37,0x148(%eax)
  101893:	c6 80 a8 01 00 00 26 	movb   $0x26,0x1a8(%eax)
  10189a:	c6 80 49 01 00 00 38 	movb   $0x38,0x149(%eax)
  1018a1:	c6 80 a9 01 00 00 2a 	movb   $0x2a,0x1a9(%eax)
  1018a8:	c6 80 4a 01 00 00 39 	movb   $0x39,0x14a(%eax)
  1018af:	c6 80 aa 01 00 00 28 	movb   $0x28,0x1aa(%eax)
  1018b6:	c6 80 4b 01 00 00 30 	movb   $0x30,0x14b(%eax)
  1018bd:	c6 80 ab 01 00 00 29 	movb   $0x29,0x1ab(%eax)
  1018c4:	c6 80 5e 01 00 00 61 	movb   $0x61,0x15e(%eax)
  1018cb:	c6 80 be 01 00 00 41 	movb   $0x41,0x1be(%eax)
  1018d2:	c6 80 70 01 00 00 62 	movb   $0x62,0x170(%eax)
  1018d9:	c6 80 d0 01 00 00 42 	movb   $0x42,0x1d0(%eax)
  1018e0:	c6 80 6e 01 00 00 63 	movb   $0x63,0x16e(%eax)
  1018e7:	c6 80 ce 01 00 00 43 	movb   $0x43,0x1ce(%eax)
  1018ee:	c6 80 60 01 00 00 64 	movb   $0x64,0x160(%eax)
  1018f5:	c6 80 c0 01 00 00 44 	movb   $0x44,0x1c0(%eax)
  1018fc:	c6 80 52 01 00 00 65 	movb   $0x65,0x152(%eax)
  101903:	c6 80 b2 01 00 00 45 	movb   $0x45,0x1b2(%eax)
  10190a:	c6 80 61 01 00 00 66 	movb   $0x66,0x161(%eax)
  101911:	c6 80 c1 01 00 00 46 	movb   $0x46,0x1c1(%eax)
  101918:	c6 80 62 01 00 00 67 	movb   $0x67,0x162(%eax)
  10191f:	c6 80 c2 01 00 00 47 	movb   $0x47,0x1c2(%eax)
  101926:	c6 80 63 01 00 00 68 	movb   $0x68,0x163(%eax)
  10192d:	c6 80 c3 01 00 00 48 	movb   $0x48,0x1c3(%eax)
  101934:	c6 80 57 01 00 00 69 	movb   $0x69,0x157(%eax)
  10193b:	c6 80 b7 01 00 00 49 	movb   $0x49,0x1b7(%eax)
  101942:	c6 80 64 01 00 00 6a 	movb   $0x6a,0x164(%eax)
  101949:	c6 80 c4 01 00 00 4a 	movb   $0x4a,0x1c4(%eax)
  101950:	c6 80 65 01 00 00 6b 	movb   $0x6b,0x165(%eax)
  101957:	c6 80 c5 01 00 00 4b 	movb   $0x4b,0x1c5(%eax)
  10195e:	c6 80 66 01 00 00 6c 	movb   $0x6c,0x166(%eax)
  101965:	c6 80 c6 01 00 00 4c 	movb   $0x4c,0x1c6(%eax)
  10196c:	c6 80 72 01 00 00 6d 	movb   $0x6d,0x172(%eax)
  101973:	c6 80 d2 01 00 00 4d 	movb   $0x4d,0x1d2(%eax)
  10197a:	c6 80 71 01 00 00 6e 	movb   $0x6e,0x171(%eax)
  101981:	c6 80 d1 01 00 00 4e 	movb   $0x4e,0x1d1(%eax)
  101988:	c6 80 58 01 00 00 6f 	movb   $0x6f,0x158(%eax)
  10198f:	c6 80 b8 01 00 00 4f 	movb   $0x4f,0x1b8(%eax)
  101996:	c6 80 59 01 00 00 70 	movb   $0x70,0x159(%eax)
  10199d:	c6 80 b9 01 00 00 50 	movb   $0x50,0x1b9(%eax)
  1019a4:	c6 80 50 01 00 00 71 	movb   $0x71,0x150(%eax)
  1019ab:	c6 80 b0 01 00 00 51 	movb   $0x51,0x1b0(%eax)
  1019b2:	c6 80 53 01 00 00 72 	movb   $0x72,0x153(%eax)
  1019b9:	c6 80 b3 01 00 00 52 	movb   $0x52,0x1b3(%eax)
  1019c0:	c6 80 5f 01 00 00 73 	movb   $0x73,0x15f(%eax)
  1019c7:	c6 80 bf 01 00 00 53 	movb   $0x53,0x1bf(%eax)
  1019ce:	c6 80 54 01 00 00 74 	movb   $0x74,0x154(%eax)
  1019d5:	c6 80 b4 01 00 00 54 	movb   $0x54,0x1b4(%eax)
  1019dc:	c6 80 56 01 00 00 75 	movb   $0x75,0x156(%eax)
  1019e3:	c6 80 b6 01 00 00 55 	movb   $0x55,0x1b6(%eax)
  1019ea:	c6 80 6f 01 00 00 76 	movb   $0x76,0x16f(%eax)
  1019f1:	c6 80 cf 01 00 00 56 	movb   $0x56,0x1cf(%eax)
  1019f8:	c6 80 51 01 00 00 77 	movb   $0x77,0x151(%eax)
  1019ff:	c6 80 b1 01 00 00 57 	movb   $0x57,0x1b1(%eax)
  101a06:	c6 80 6d 01 00 00 78 	movb   $0x78,0x16d(%eax)
  101a0d:	c6 80 cd 01 00 00 58 	movb   $0x58,0x1cd(%eax)
  101a14:	c6 80 55 01 00 00 79 	movb   $0x79,0x155(%eax)
  101a1b:	c6 80 b5 01 00 00 59 	movb   $0x59,0x1b5(%eax)
  101a22:	c6 80 6c 01 00 00 7a 	movb   $0x7a,0x16c(%eax)
  101a29:	c6 80 cc 01 00 00 5a 	movb   $0x5a,0x1cc(%eax)
  101a30:	c6 80 4c 01 00 00 2d 	movb   $0x2d,0x14c(%eax)
  101a37:	c6 80 ac 01 00 00 5f 	movb   $0x5f,0x1ac(%eax)
  101a3e:	c6 80 4d 01 00 00 3d 	movb   $0x3d,0x14d(%eax)
  101a45:	c6 80 ad 01 00 00 2b 	movb   $0x2b,0x1ad(%eax)
  101a4c:	c6 80 5a 01 00 00 5b 	movb   $0x5b,0x15a(%eax)
  101a53:	c6 80 ba 01 00 00 7b 	movb   $0x7b,0x1ba(%eax)
  101a5a:	c6 80 5b 01 00 00 5d 	movb   $0x5d,0x15b(%eax)
  101a61:	c6 80 bb 01 00 00 7d 	movb   $0x7d,0x1bb(%eax)
  101a68:	c6 80 5c 01 00 00 0a 	movb   $0xa,0x15c(%eax)
  101a6f:	c6 80 bc 01 00 00 0a 	movb   $0xa,0x1bc(%eax)
  101a76:	c6 80 67 01 00 00 3b 	movb   $0x3b,0x167(%eax)
  101a7d:	c6 80 c7 01 00 00 3a 	movb   $0x3a,0x1c7(%eax)
  101a84:	c6 80 68 01 00 00 27 	movb   $0x27,0x168(%eax)
  101a8b:	c6 80 c8 01 00 00 22 	movb   $0x22,0x1c8(%eax)
  101a92:	c6 80 69 01 00 00 60 	movb   $0x60,0x169(%eax)
  101a99:	c6 80 c9 01 00 00 7e 	movb   $0x7e,0x1c9(%eax)
  101aa0:	c6 80 6b 01 00 00 5c 	movb   $0x5c,0x16b(%eax)
  101aa7:	c6 80 cb 01 00 00 7c 	movb   $0x7c,0x1cb(%eax)
  101aae:	c6 80 73 01 00 00 2c 	movb   $0x2c,0x173(%eax)
  101ab5:	c6 80 d3 01 00 00 3c 	movb   $0x3c,0x1d3(%eax)
  101abc:	c6 80 74 01 00 00 2e 	movb   $0x2e,0x174(%eax)
  101ac3:	c6 80 d4 01 00 00 3e 	movb   $0x3e,0x1d4(%eax)
  101aca:	c6 80 75 01 00 00 2f 	movb   $0x2f,0x175(%eax)
  101ad1:	c6 80 d5 01 00 00 3f 	movb   $0x3f,0x1d5(%eax)
  101ad8:	c6 80 79 01 00 00 20 	movb   $0x20,0x179(%eax)
  101adf:	c6 80 d9 01 00 00 20 	movb   $0x20,0x1d9(%eax)
  101ae6:	90                   	nop
  101ae7:	c9                   	leave  
  101ae8:	c3                   	ret    

00101ae9 <getKeyCode>:
  101ae9:	55                   	push   %ebp
  101aea:	89 e5                	mov    %esp,%ebp
  101aec:	83 ec 10             	sub    $0x10,%esp
  101aef:	e8 51 e9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101af4:	05 0c 35 00 00       	add    $0x350c,%eax
  101af9:	6a 60                	push   $0x60
  101afb:	e8 7e fc ff ff       	call   10177e <inByte>
  101b00:	83 c4 04             	add    $0x4,%esp
  101b03:	0f b6 c0             	movzbl %al,%eax
  101b06:	89 45 fc             	mov    %eax,-0x4(%ebp)
  101b09:	6a 61                	push   $0x61
  101b0b:	e8 6e fc ff ff       	call   10177e <inByte>
  101b10:	83 c4 04             	add    $0x4,%esp
  101b13:	0f b6 c0             	movzbl %al,%eax
  101b16:	89 45 f8             	mov    %eax,-0x8(%ebp)
  101b19:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101b1c:	83 c8 80             	or     $0xffffff80,%eax
  101b1f:	0f be c0             	movsbl %al,%eax
  101b22:	50                   	push   %eax
  101b23:	6a 61                	push   $0x61
  101b25:	e8 79 fc ff ff       	call   1017a3 <outByte>
  101b2a:	83 c4 08             	add    $0x8,%esp
  101b2d:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101b30:	0f be c0             	movsbl %al,%eax
  101b33:	50                   	push   %eax
  101b34:	6a 61                	push   $0x61
  101b36:	e8 68 fc ff ff       	call   1017a3 <outByte>
  101b3b:	83 c4 08             	add    $0x8,%esp
  101b3e:	81 7d fc d8 00 00 00 	cmpl   $0xd8,-0x4(%ebp)
  101b45:	77 05                	ja     101b4c <getKeyCode+0x63>
  101b47:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101b4a:	eb 05                	jmp    101b51 <getKeyCode+0x68>
  101b4c:	b8 00 00 00 00       	mov    $0x0,%eax
  101b51:	c9                   	leave  
  101b52:	c3                   	ret    

00101b53 <switchKeyboard>:
  101b53:	55                   	push   %ebp
  101b54:	89 e5                	mov    %esp,%ebp
  101b56:	e8 ea e8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101b5b:	05 a5 34 00 00       	add    $0x34a5,%eax
  101b60:	8b 88 fc 01 00 00    	mov    0x1fc(%eax),%ecx
  101b66:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  101b6c:	39 d1                	cmp    %edx,%ecx
  101b6e:	75 0e                	jne    101b7e <switchKeyboard+0x2b>
  101b70:	8d 90 a0 01 00 00    	lea    0x1a0(%eax),%edx
  101b76:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  101b7c:	eb 0c                	jmp    101b8a <switchKeyboard+0x37>
  101b7e:	8d 90 40 01 00 00    	lea    0x140(%eax),%edx
  101b84:	89 90 fc 01 00 00    	mov    %edx,0x1fc(%eax)
  101b8a:	90                   	nop
  101b8b:	5d                   	pop    %ebp
  101b8c:	c3                   	ret    

00101b8d <getChar>:
  101b8d:	55                   	push   %ebp
  101b8e:	89 e5                	mov    %esp,%ebp
  101b90:	53                   	push   %ebx
  101b91:	e8 9f ec ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101b96:	81 c3 6a 34 00 00    	add    $0x346a,%ebx
  101b9c:	8b 45 08             	mov    0x8(%ebp),%eax
  101b9f:	83 f8 3a             	cmp    $0x3a,%eax
  101ba2:	74 32                	je     101bd6 <getChar+0x49>
  101ba4:	83 f8 3a             	cmp    $0x3a,%eax
  101ba7:	77 0f                	ja     101bb8 <getChar+0x2b>
  101ba9:	83 f8 2a             	cmp    $0x2a,%eax
  101bac:	74 21                	je     101bcf <getChar+0x42>
  101bae:	83 f8 36             	cmp    $0x36,%eax
  101bb1:	74 1c                	je     101bcf <getChar+0x42>
  101bb3:	e9 87 00 00 00       	jmp    101c3f <getChar+0xb2>
  101bb8:	3d b6 00 00 00       	cmp    $0xb6,%eax
  101bbd:	74 10                	je     101bcf <getChar+0x42>
  101bbf:	3d ba 00 00 00       	cmp    $0xba,%eax
  101bc4:	74 42                	je     101c08 <getChar+0x7b>
  101bc6:	3d aa 00 00 00       	cmp    $0xaa,%eax
  101bcb:	74 02                	je     101bcf <getChar+0x42>
  101bcd:	eb 70                	jmp    101c3f <getChar+0xb2>
  101bcf:	e8 7f ff ff ff       	call   101b53 <switchKeyboard>
  101bd4:	eb 69                	jmp    101c3f <getChar+0xb2>
  101bd6:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101bdc:	85 c0                	test   %eax,%eax
  101bde:	75 11                	jne    101bf1 <getChar+0x64>
  101be0:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  101be7:	00 00 00 
  101bea:	e8 64 ff ff ff       	call   101b53 <switchKeyboard>
  101bef:	eb 4a                	jmp    101c3b <getChar+0xae>
  101bf1:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101bf7:	83 f8 01             	cmp    $0x1,%eax
  101bfa:	75 3f                	jne    101c3b <getChar+0xae>
  101bfc:	c7 83 00 02 00 00 02 	movl   $0x2,0x200(%ebx)
  101c03:	00 00 00 
  101c06:	eb 33                	jmp    101c3b <getChar+0xae>
  101c08:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101c0e:	83 f8 01             	cmp    $0x1,%eax
  101c11:	75 0c                	jne    101c1f <getChar+0x92>
  101c13:	c7 83 00 02 00 00 01 	movl   $0x1,0x200(%ebx)
  101c1a:	00 00 00 
  101c1d:	eb 1f                	jmp    101c3e <getChar+0xb1>
  101c1f:	8b 83 00 02 00 00    	mov    0x200(%ebx),%eax
  101c25:	83 f8 02             	cmp    $0x2,%eax
  101c28:	75 14                	jne    101c3e <getChar+0xb1>
  101c2a:	c7 83 00 02 00 00 00 	movl   $0x0,0x200(%ebx)
  101c31:	00 00 00 
  101c34:	e8 1a ff ff ff       	call   101b53 <switchKeyboard>
  101c39:	eb 03                	jmp    101c3e <getChar+0xb1>
  101c3b:	90                   	nop
  101c3c:	eb 01                	jmp    101c3f <getChar+0xb2>
  101c3e:	90                   	nop
  101c3f:	83 7d 08 57          	cmpl   $0x57,0x8(%ebp)
  101c43:	76 04                	jbe    101c49 <getChar+0xbc>
  101c45:	b0 00                	mov    $0x0,%al
  101c47:	eb 0d                	jmp    101c56 <getChar+0xc9>
  101c49:	8b 93 fc 01 00 00    	mov    0x1fc(%ebx),%edx
  101c4f:	8b 45 08             	mov    0x8(%ebp),%eax
  101c52:	01 d0                	add    %edx,%eax
  101c54:	8a 00                	mov    (%eax),%al
  101c56:	5b                   	pop    %ebx
  101c57:	5d                   	pop    %ebp
  101c58:	c3                   	ret    

00101c59 <waitForInterrupt>:
  101c59:	55                   	push   %ebp
  101c5a:	89 e5                	mov    %esp,%ebp
  101c5c:	e8 e4 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101c61:	05 9f 33 00 00       	add    $0x339f,%eax
  101c66:	f4                   	hlt    
  101c67:	90                   	nop
  101c68:	5d                   	pop    %ebp
  101c69:	c3                   	ret    

00101c6a <enableInterrupt>:
  101c6a:	55                   	push   %ebp
  101c6b:	89 e5                	mov    %esp,%ebp
  101c6d:	e8 d3 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101c72:	05 8e 33 00 00       	add    $0x338e,%eax
  101c77:	fb                   	sti    
  101c78:	90                   	nop
  101c79:	5d                   	pop    %ebp
  101c7a:	c3                   	ret    

00101c7b <setGdt>:
  101c7b:	55                   	push   %ebp
  101c7c:	89 e5                	mov    %esp,%ebp
  101c7e:	e8 c2 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101c83:	05 7d 33 00 00       	add    $0x337d,%eax
  101c88:	8b 55 0c             	mov    0xc(%ebp),%edx
  101c8b:	4a                   	dec    %edx
  101c8c:	66 89 90 04 02 00 00 	mov    %dx,0x204(%eax)
  101c93:	8b 55 08             	mov    0x8(%ebp),%edx
  101c96:	66 89 90 06 02 00 00 	mov    %dx,0x206(%eax)
  101c9d:	8b 55 08             	mov    0x8(%ebp),%edx
  101ca0:	c1 ea 10             	shr    $0x10,%edx
  101ca3:	66 89 90 08 02 00 00 	mov    %dx,0x208(%eax)
  101caa:	8d 80 04 02 00 00    	lea    0x204(%eax),%eax
  101cb0:	0f 01 10             	lgdtl  (%eax)
  101cb3:	90                   	nop
  101cb4:	5d                   	pop    %ebp
  101cb5:	c3                   	ret    

00101cb6 <lLdt>:
  101cb6:	55                   	push   %ebp
  101cb7:	89 e5                	mov    %esp,%ebp
  101cb9:	83 ec 04             	sub    $0x4,%esp
  101cbc:	e8 84 e7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  101cc1:	05 3f 33 00 00       	add    $0x333f,%eax
  101cc6:	8b 45 08             	mov    0x8(%ebp),%eax
  101cc9:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  101ccd:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101cd0:	0f 00 d0             	lldt   %ax
  101cd3:	90                   	nop
  101cd4:	c9                   	leave  
  101cd5:	c3                   	ret    

00101cd6 <initSeg>:
  101cd6:	55                   	push   %ebp
  101cd7:	89 e5                	mov    %esp,%ebp
  101cd9:	56                   	push   %esi
  101cda:	53                   	push   %ebx
  101cdb:	83 ec 14             	sub    $0x14,%esp
  101cde:	e8 52 eb ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  101ce3:	81 c3 1d 33 00 00    	add    $0x331d,%ebx
  101ce9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  101cf0:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101cf6:	66 c7 40 08 ff ff    	movw   $0xffff,0x8(%eax)
  101cfc:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d02:	66 c7 40 0a 00 00    	movw   $0x0,0xa(%eax)
  101d08:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d0e:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
  101d12:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d18:	8a 50 0d             	mov    0xd(%eax),%dl
  101d1b:	83 e2 f0             	and    $0xfffffff0,%edx
  101d1e:	83 ca 0a             	or     $0xa,%edx
  101d21:	88 50 0d             	mov    %dl,0xd(%eax)
  101d24:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d2a:	8a 50 0d             	mov    0xd(%eax),%dl
  101d2d:	83 ca 10             	or     $0x10,%edx
  101d30:	88 50 0d             	mov    %dl,0xd(%eax)
  101d33:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d39:	8a 50 0d             	mov    0xd(%eax),%dl
  101d3c:	83 e2 9f             	and    $0xffffff9f,%edx
  101d3f:	88 50 0d             	mov    %dl,0xd(%eax)
  101d42:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d48:	8a 50 0d             	mov    0xd(%eax),%dl
  101d4b:	83 ca 80             	or     $0xffffff80,%edx
  101d4e:	88 50 0d             	mov    %dl,0xd(%eax)
  101d51:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d57:	8a 50 0e             	mov    0xe(%eax),%dl
  101d5a:	83 ca 0f             	or     $0xf,%edx
  101d5d:	88 50 0e             	mov    %dl,0xe(%eax)
  101d60:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d66:	8a 50 0e             	mov    0xe(%eax),%dl
  101d69:	83 e2 ef             	and    $0xffffffef,%edx
  101d6c:	88 50 0e             	mov    %dl,0xe(%eax)
  101d6f:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d75:	8a 50 0e             	mov    0xe(%eax),%dl
  101d78:	83 e2 df             	and    $0xffffffdf,%edx
  101d7b:	88 50 0e             	mov    %dl,0xe(%eax)
  101d7e:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d84:	8a 50 0e             	mov    0xe(%eax),%dl
  101d87:	83 ca 40             	or     $0x40,%edx
  101d8a:	88 50 0e             	mov    %dl,0xe(%eax)
  101d8d:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101d93:	8a 50 0e             	mov    0xe(%eax),%dl
  101d96:	83 ca 80             	or     $0xffffff80,%edx
  101d99:	88 50 0e             	mov    %dl,0xe(%eax)
  101d9c:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101da2:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  101da6:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dac:	66 c7 40 10 ff ff    	movw   $0xffff,0x10(%eax)
  101db2:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101db8:	66 c7 40 12 00 00    	movw   $0x0,0x12(%eax)
  101dbe:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dc4:	c6 40 14 00          	movb   $0x0,0x14(%eax)
  101dc8:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dce:	8a 50 15             	mov    0x15(%eax),%dl
  101dd1:	83 e2 f0             	and    $0xfffffff0,%edx
  101dd4:	83 ca 02             	or     $0x2,%edx
  101dd7:	88 50 15             	mov    %dl,0x15(%eax)
  101dda:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101de0:	8a 50 15             	mov    0x15(%eax),%dl
  101de3:	83 ca 10             	or     $0x10,%edx
  101de6:	88 50 15             	mov    %dl,0x15(%eax)
  101de9:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101def:	8a 50 15             	mov    0x15(%eax),%dl
  101df2:	83 e2 9f             	and    $0xffffff9f,%edx
  101df5:	88 50 15             	mov    %dl,0x15(%eax)
  101df8:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101dfe:	8a 50 15             	mov    0x15(%eax),%dl
  101e01:	83 ca 80             	or     $0xffffff80,%edx
  101e04:	88 50 15             	mov    %dl,0x15(%eax)
  101e07:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e0d:	8a 50 16             	mov    0x16(%eax),%dl
  101e10:	83 ca 0f             	or     $0xf,%edx
  101e13:	88 50 16             	mov    %dl,0x16(%eax)
  101e16:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e1c:	8a 50 16             	mov    0x16(%eax),%dl
  101e1f:	83 e2 ef             	and    $0xffffffef,%edx
  101e22:	88 50 16             	mov    %dl,0x16(%eax)
  101e25:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e2b:	8a 50 16             	mov    0x16(%eax),%dl
  101e2e:	83 e2 df             	and    $0xffffffdf,%edx
  101e31:	88 50 16             	mov    %dl,0x16(%eax)
  101e34:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e3a:	8a 50 16             	mov    0x16(%eax),%dl
  101e3d:	83 ca 40             	or     $0x40,%edx
  101e40:	88 50 16             	mov    %dl,0x16(%eax)
  101e43:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e49:	8a 50 16             	mov    0x16(%eax),%dl
  101e4c:	83 ca 80             	or     $0xffffff80,%edx
  101e4f:	88 50 16             	mov    %dl,0x16(%eax)
  101e52:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  101e58:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  101e5c:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  101e63:	e9 e1 01 00 00       	jmp    102049 <initSeg+0x373>
  101e68:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101e6b:	01 c0                	add    %eax,%eax
  101e6d:	40                   	inc    %eax
  101e6e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e71:	42                   	inc    %edx
  101e72:	c1 e2 14             	shl    $0x14,%edx
  101e75:	c1 ea 10             	shr    $0x10,%edx
  101e78:	88 d1                	mov    %dl,%cl
  101e7a:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101e7d:	42                   	inc    %edx
  101e7e:	c1 e2 14             	shl    $0x14,%edx
  101e81:	c1 ea 18             	shr    $0x18,%edx
  101e84:	88 55 e7             	mov    %dl,-0x19(%ebp)
  101e87:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101e8d:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  101e93:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101e99:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  101ea0:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ea6:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  101eaa:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101eb0:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101eb4:	83 e1 f0             	and    $0xfffffff0,%ecx
  101eb7:	89 ce                	mov    %ecx,%esi
  101eb9:	83 ce 0a             	or     $0xa,%esi
  101ebc:	89 f1                	mov    %esi,%ecx
  101ebe:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101ec2:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ec8:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101ecc:	83 c9 10             	or     $0x10,%ecx
  101ecf:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101ed3:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ed9:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101edd:	83 c9 60             	or     $0x60,%ecx
  101ee0:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101ee4:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101eea:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101eee:	83 c9 80             	or     $0xffffff80,%ecx
  101ef1:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101ef5:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101efb:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101eff:	83 e1 f0             	and    $0xfffffff0,%ecx
  101f02:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f06:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f0c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f10:	83 e1 ef             	and    $0xffffffef,%ecx
  101f13:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f17:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f1d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f21:	83 e1 df             	and    $0xffffffdf,%ecx
  101f24:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f28:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f2e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f32:	83 c9 40             	or     $0x40,%ecx
  101f35:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f39:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f3f:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101f43:	83 c9 80             	or     $0xffffff80,%ecx
  101f46:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101f4a:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f50:	8a 4d e7             	mov    -0x19(%ebp),%cl
  101f53:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  101f57:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101f5a:	40                   	inc    %eax
  101f5b:	01 c0                	add    %eax,%eax
  101f5d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f60:	42                   	inc    %edx
  101f61:	c1 e2 14             	shl    $0x14,%edx
  101f64:	c1 ea 10             	shr    $0x10,%edx
  101f67:	88 d1                	mov    %dl,%cl
  101f69:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101f6c:	42                   	inc    %edx
  101f6d:	c1 e2 14             	shl    $0x14,%edx
  101f70:	c1 ea 18             	shr    $0x18,%edx
  101f73:	88 55 e7             	mov    %dl,-0x19(%ebp)
  101f76:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f7c:	66 c7 04 c2 00 01    	movw   $0x100,(%edx,%eax,8)
  101f82:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f88:	66 c7 44 c2 02 00 00 	movw   $0x0,0x2(%edx,%eax,8)
  101f8f:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f95:	88 4c c2 04          	mov    %cl,0x4(%edx,%eax,8)
  101f99:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101f9f:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101fa3:	83 e1 f0             	and    $0xfffffff0,%ecx
  101fa6:	89 ce                	mov    %ecx,%esi
  101fa8:	83 ce 02             	or     $0x2,%esi
  101fab:	89 f1                	mov    %esi,%ecx
  101fad:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101fb1:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fb7:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101fbb:	83 c9 10             	or     $0x10,%ecx
  101fbe:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101fc2:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fc8:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101fcc:	83 c9 60             	or     $0x60,%ecx
  101fcf:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101fd3:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fd9:	8a 4c c2 05          	mov    0x5(%edx,%eax,8),%cl
  101fdd:	83 c9 80             	or     $0xffffff80,%ecx
  101fe0:	88 4c c2 05          	mov    %cl,0x5(%edx,%eax,8)
  101fe4:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101fea:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101fee:	83 e1 f0             	and    $0xfffffff0,%ecx
  101ff1:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  101ff5:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  101ffb:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  101fff:	83 e1 ef             	and    $0xffffffef,%ecx
  102002:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102006:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10200c:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102010:	83 e1 df             	and    $0xffffffdf,%ecx
  102013:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102017:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10201d:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102021:	83 c9 40             	or     $0x40,%ecx
  102024:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102028:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10202e:	8a 4c c2 06          	mov    0x6(%edx,%eax,8),%cl
  102032:	83 c9 80             	or     $0xffffff80,%ecx
  102035:	88 4c c2 06          	mov    %cl,0x6(%edx,%eax,8)
  102039:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10203f:	8a 4d e7             	mov    -0x19(%ebp),%cl
  102042:	88 4c c2 07          	mov    %cl,0x7(%edx,%eax,8)
  102046:	ff 45 f4             	incl   -0xc(%ebp)
  102049:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  10204d:	0f 8e 15 fe ff ff    	jle    101e68 <initSeg+0x192>
  102053:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102059:	66 c7 80 98 00 00 00 	movw   $0x63,0x98(%eax)
  102060:	63 00 
  102062:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  102068:	c7 c2 80 5e 10 00    	mov    $0x105e80,%edx
  10206e:	66 89 82 9a 00 00 00 	mov    %ax,0x9a(%edx)
  102075:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  10207b:	c1 e8 10             	shr    $0x10,%eax
  10207e:	88 c2                	mov    %al,%dl
  102080:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102086:	88 90 9c 00 00 00    	mov    %dl,0x9c(%eax)
  10208c:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102092:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  102098:	83 e2 f0             	and    $0xfffffff0,%edx
  10209b:	83 ca 09             	or     $0x9,%edx
  10209e:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1020a4:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020aa:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1020b0:	83 e2 ef             	and    $0xffffffef,%edx
  1020b3:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1020b9:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020bf:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1020c5:	83 e2 9f             	and    $0xffffff9f,%edx
  1020c8:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1020ce:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020d4:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  1020da:	83 ca 80             	or     $0xffffff80,%edx
  1020dd:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  1020e3:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020e9:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  1020ef:	83 e2 f0             	and    $0xfffffff0,%edx
  1020f2:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  1020f8:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  1020fe:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  102104:	83 e2 ef             	and    $0xffffffef,%edx
  102107:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10210d:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102113:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  102119:	83 e2 df             	and    $0xffffffdf,%edx
  10211c:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  102122:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102128:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  10212e:	83 ca 40             	or     $0x40,%edx
  102131:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  102137:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  10213d:	8a 90 9e 00 00 00    	mov    0x9e(%eax),%dl
  102143:	83 e2 7f             	and    $0x7f,%edx
  102146:	88 90 9e 00 00 00    	mov    %dl,0x9e(%eax)
  10214c:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  102152:	c1 e8 18             	shr    $0x18,%eax
  102155:	88 c2                	mov    %al,%dl
  102157:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  10215d:	88 90 9f 00 00 00    	mov    %dl,0x9f(%eax)
  102163:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102169:	8a 90 9d 00 00 00    	mov    0x9d(%eax),%dl
  10216f:	83 e2 ef             	and    $0xffffffef,%edx
  102172:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  102178:	68 a0 00 00 00       	push   $0xa0
  10217d:	c7 c0 80 5e 10 00    	mov    $0x105e80,%eax
  102183:	50                   	push   %eax
  102184:	e8 f2 fa ff ff       	call   101c7b <setGdt>
  102189:	83 c4 08             	add    $0x8,%esp
  10218c:	c7 c0 20 5f 10 00    	mov    $0x105f20,%eax
  102192:	c7 40 08 10 00 00 00 	movl   $0x10,0x8(%eax)
  102199:	b8 98 00 00 00       	mov    $0x98,%eax
  10219e:	0f 00 d8             	ltr    %ax
  1021a1:	b8 10 00 00 00       	mov    $0x10,%eax
  1021a6:	8e d8                	mov    %eax,%ds
  1021a8:	b8 10 00 00 00       	mov    $0x10,%eax
  1021ad:	8e d0                	mov    %eax,%ss
  1021af:	6a 00                	push   $0x0
  1021b1:	e8 00 fb ff ff       	call   101cb6 <lLdt>
  1021b6:	83 c4 04             	add    $0x4,%esp
  1021b9:	90                   	nop
  1021ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1021bd:	5b                   	pop    %ebx
  1021be:	5e                   	pop    %esi
  1021bf:	5d                   	pop    %ebp
  1021c0:	c3                   	ret    

001021c1 <initFS>:
  1021c1:	55                   	push   %ebp
  1021c2:	89 e5                	mov    %esp,%ebp
  1021c4:	53                   	push   %ebx
  1021c5:	83 ec 04             	sub    $0x4,%esp
  1021c8:	e8 78 e2 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1021cd:	05 33 2e 00 00       	add    $0x2e33,%eax
  1021d2:	83 ec 0c             	sub    $0xc,%esp
  1021d5:	c7 c2 a0 5f 10 00    	mov    $0x105fa0,%edx
  1021db:	52                   	push   %edx
  1021dc:	89 c3                	mov    %eax,%ebx
  1021de:	e8 66 e2 ff ff       	call   100449 <readSuperBlock>
  1021e3:	83 c4 10             	add    $0x10,%esp
  1021e6:	90                   	nop
  1021e7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1021ea:	c9                   	leave  
  1021eb:	c3                   	ret    

001021ec <loadElf>:
  1021ec:	55                   	push   %ebp
  1021ed:	89 e5                	mov    %esp,%ebp
  1021ef:	53                   	push   %ebx
  1021f0:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  1021f6:	e8 3a e6 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  1021fb:	81 c3 05 2e 00 00    	add    $0x2e05,%ebx
  102201:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102208:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  10220f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  102216:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
  10221d:	00 00 00 
  102220:	ff 75 08             	pushl  0x8(%ebp)
  102223:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
  102229:	50                   	push   %eax
  10222a:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  102230:	50                   	push   %eax
  102231:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  102237:	50                   	push   %eax
  102238:	e8 48 e3 ff ff       	call   100585 <readInode>
  10223d:	83 c4 10             	add    $0x10,%esp
  102240:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102243:	83 7d e4 ff          	cmpl   $0xffffffff,-0x1c(%ebp)
  102247:	75 0a                	jne    102253 <loadElf+0x67>
  102249:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10224e:	e9 cd 00 00 00       	jmp    102320 <loadElf+0x134>
  102253:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10225a:	eb 31                	jmp    10228d <loadElf+0xa1>
  10225c:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  102262:	8b 40 14             	mov    0x14(%eax),%eax
  102265:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  102269:	89 c2                	mov    %eax,%edx
  10226b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10226e:	01 d0                	add    %edx,%eax
  102270:	50                   	push   %eax
  102271:	ff 75 f4             	pushl  -0xc(%ebp)
  102274:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  10227a:	50                   	push   %eax
  10227b:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  102281:	50                   	push   %eax
  102282:	e8 f3 e1 ff ff       	call   10047a <readBlock>
  102287:	83 c4 10             	add    $0x10,%esp
  10228a:	ff 45 f4             	incl   -0xc(%ebp)
  10228d:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
  102293:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  102296:	7c c4                	jl     10225c <loadElf+0x70>
  102298:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10229b:	8b 40 18             	mov    0x18(%eax),%eax
  10229e:	89 45 10             	mov    %eax,0x10(%ebp)
  1022a1:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022a4:	8b 40 1c             	mov    0x1c(%eax),%eax
  1022a7:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1022aa:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022ad:	c1 e0 05             	shl    $0x5,%eax
  1022b0:	89 c2                	mov    %eax,%edx
  1022b2:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1022b5:	01 d0                	add    %edx,%eax
  1022b7:	8b 40 04             	mov    0x4(%eax),%eax
  1022ba:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1022bd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1022c4:	eb 11                	jmp    1022d7 <loadElf+0xeb>
  1022c6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1022c9:	8b 50 08             	mov    0x8(%eax),%edx
  1022cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1022cf:	01 d0                	add    %edx,%eax
  1022d1:	c6 00 00             	movb   $0x0,(%eax)
  1022d4:	ff 45 f0             	incl   -0x10(%ebp)
  1022d7:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1022da:	8b 50 10             	mov    0x10(%eax),%edx
  1022dd:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1022e0:	39 c2                	cmp    %eax,%edx
  1022e2:	77 e2                	ja     1022c6 <loadElf+0xda>
  1022e4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1022eb:	eb 23                	jmp    102310 <loadElf+0x124>
  1022ed:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1022f0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1022f3:	01 c2                	add    %eax,%edx
  1022f5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1022f8:	01 d0                	add    %edx,%eax
  1022fa:	89 c1                	mov    %eax,%ecx
  1022fc:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1022ff:	8b 50 08             	mov    0x8(%eax),%edx
  102302:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102305:	01 d0                	add    %edx,%eax
  102307:	89 c2                	mov    %eax,%edx
  102309:	8a 01                	mov    (%ecx),%al
  10230b:	88 02                	mov    %al,(%edx)
  10230d:	ff 45 f4             	incl   -0xc(%ebp)
  102310:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102313:	8b 50 14             	mov    0x14(%eax),%edx
  102316:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102319:	39 c2                	cmp    %eax,%edx
  10231b:	77 d0                	ja     1022ed <loadElf+0x101>
  10231d:	8b 45 10             	mov    0x10(%ebp),%eax
  102320:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102323:	c9                   	leave  
  102324:	c3                   	ret    

00102325 <loadUMain>:
  102325:	55                   	push   %ebp
  102326:	89 e5                	mov    %esp,%ebp
  102328:	53                   	push   %ebx
  102329:	81 ec a4 00 00 00    	sub    $0xa4,%esp
  10232f:	e8 01 e5 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102334:	81 c3 cc 2c 00 00    	add    $0x2ccc,%ebx
  10233a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102341:	c7 45 f0 34 00 00 00 	movl   $0x34,-0x10(%ebp)
  102348:	c7 45 ec 00 10 00 00 	movl   $0x1000,-0x14(%ebp)
  10234f:	c7 45 e8 00 00 20 00 	movl   $0x200000,-0x18(%ebp)
  102356:	c7 45 e4 00 00 20 00 	movl   $0x200000,-0x1c(%ebp)
  10235d:	c7 85 60 ff ff ff 00 	movl   $0x0,-0xa0(%ebp)
  102364:	00 00 00 
  102367:	8d 83 48 df ff ff    	lea    -0x20b8(%ebx),%eax
  10236d:	50                   	push   %eax
  10236e:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
  102374:	50                   	push   %eax
  102375:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  10237b:	50                   	push   %eax
  10237c:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  102382:	50                   	push   %eax
  102383:	e8 fd e1 ff ff       	call   100585 <readInode>
  102388:	83 c4 10             	add    $0x10,%esp
  10238b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102392:	eb 31                	jmp    1023c5 <loadUMain+0xa0>
  102394:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  10239a:	8b 40 14             	mov    0x14(%eax),%eax
  10239d:	0f af 45 f4          	imul   -0xc(%ebp),%eax
  1023a1:	89 c2                	mov    %eax,%edx
  1023a3:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023a6:	01 d0                	add    %edx,%eax
  1023a8:	50                   	push   %eax
  1023a9:	ff 75 f4             	pushl  -0xc(%ebp)
  1023ac:	8d 85 64 ff ff ff    	lea    -0x9c(%ebp),%eax
  1023b2:	50                   	push   %eax
  1023b3:	c7 c0 a0 5f 10 00    	mov    $0x105fa0,%eax
  1023b9:	50                   	push   %eax
  1023ba:	e8 bb e0 ff ff       	call   10047a <readBlock>
  1023bf:	83 c4 10             	add    $0x10,%esp
  1023c2:	ff 45 f4             	incl   -0xc(%ebp)
  1023c5:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
  1023cb:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  1023ce:	7c c4                	jl     102394 <loadUMain+0x6f>
  1023d0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023d3:	8b 40 18             	mov    0x18(%eax),%eax
  1023d6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1023d9:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023dc:	8b 40 1c             	mov    0x1c(%eax),%eax
  1023df:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1023e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1023e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023e8:	01 d0                	add    %edx,%eax
  1023ea:	8b 40 04             	mov    0x4(%eax),%eax
  1023ed:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1023f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1023f7:	eb 1c                	jmp    102415 <loadUMain+0xf0>
  1023f9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1023fc:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1023ff:	01 c2                	add    %eax,%edx
  102401:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102404:	01 d0                	add    %edx,%eax
  102406:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  102409:	8b 55 e8             	mov    -0x18(%ebp),%edx
  10240c:	01 ca                	add    %ecx,%edx
  10240e:	8a 00                	mov    (%eax),%al
  102410:	88 02                	mov    %al,(%edx)
  102412:	ff 45 f4             	incl   -0xc(%ebp)
  102415:	81 7d f4 ff 8f 01 00 	cmpl   $0x18fff,-0xc(%ebp)
  10241c:	7e db                	jle    1023f9 <loadUMain+0xd4>
  10241e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  102421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102424:	c9                   	leave  
  102425:	c3                   	ret    

00102426 <initProc>:
  102426:	55                   	push   %ebp
  102427:	89 e5                	mov    %esp,%ebp
  102429:	53                   	push   %ebx
  10242a:	83 ec 14             	sub    $0x14,%esp
  10242d:	e8 03 e4 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102432:	81 c3 ce 2b 00 00    	add    $0x2bce,%ebx
  102438:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10243f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102446:	eb 28                	jmp    102470 <initProc+0x4a>
  102448:	c7 c1 a0 63 10 00    	mov    $0x1063a0,%ecx
  10244e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102451:	89 d0                	mov    %edx,%eax
  102453:	c1 e0 07             	shl    $0x7,%eax
  102456:	01 d0                	add    %edx,%eax
  102458:	c1 e0 05             	shl    $0x5,%eax
  10245b:	01 d0                	add    %edx,%eax
  10245d:	c1 e0 02             	shl    $0x2,%eax
  102460:	01 c8                	add    %ecx,%eax
  102462:	05 54 40 00 00       	add    $0x4054,%eax
  102467:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
  10246d:	ff 45 f4             	incl   -0xc(%ebp)
  102470:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)
  102474:	7e d2                	jle    102448 <initProc+0x22>
  102476:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10247c:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  102482:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102488:	89 90 4c 40 00 00    	mov    %edx,0x404c(%eax)
  10248e:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102494:	8d 90 4c 40 00 00    	lea    0x404c(%eax),%edx
  10249a:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024a0:	89 90 50 40 00 00    	mov    %edx,0x4050(%eax)
  1024a6:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024ac:	c7 80 54 40 00 00 01 	movl   $0x1,0x4054(%eax)
  1024b3:	00 00 00 
  1024b6:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024bc:	c7 80 58 40 00 00 10 	movl   $0x10,0x4058(%eax)
  1024c3:	00 00 00 
  1024c6:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024cc:	c7 80 5c 40 00 00 00 	movl   $0x0,0x405c(%eax)
  1024d3:	00 00 00 
  1024d6:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024dc:	c7 80 60 40 00 00 00 	movl   $0x0,0x4060(%eax)
  1024e3:	00 00 00 
  1024e6:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024ec:	8d 90 84 80 00 00    	lea    0x8084(%eax),%edx
  1024f2:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1024f8:	89 90 d0 80 00 00    	mov    %edx,0x80d0(%eax)
  1024fe:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102504:	8d 90 d0 80 00 00    	lea    0x80d0(%eax),%edx
  10250a:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102510:	89 90 d4 80 00 00    	mov    %edx,0x80d4(%eax)
  102516:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10251c:	c7 80 d8 80 00 00 00 	movl   $0x0,0x80d8(%eax)
  102523:	00 00 00 
  102526:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10252c:	c7 80 dc 80 00 00 00 	movl   $0x0,0x80dc(%eax)
  102533:	00 00 00 
  102536:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10253c:	c7 80 e0 80 00 00 00 	movl   $0x0,0x80e0(%eax)
  102543:	00 00 00 
  102546:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10254c:	c7 80 e4 80 00 00 01 	movl   $0x1,0x80e4(%eax)
  102553:	00 00 00 
  102556:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10255c:	c7 80 cc 80 00 00 23 	movl   $0x23,0x80cc(%eax)
  102563:	00 00 00 
  102566:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10256c:	c7 80 c8 80 00 00 00 	movl   $0x100000,0x80c8(%eax)
  102573:	00 10 00 
  102576:	9c                   	pushf  
  102577:	5a                   	pop    %edx
  102578:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10257e:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  102584:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10258a:	8b 80 c4 80 00 00    	mov    0x80c4(%eax),%eax
  102590:	80 cc 02             	or     $0x2,%ah
  102593:	89 c2                	mov    %eax,%edx
  102595:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  10259b:	89 90 c4 80 00 00    	mov    %edx,0x80c4(%eax)
  1025a1:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025a7:	c7 80 c0 80 00 00 1b 	movl   $0x1b,0x80c0(%eax)
  1025ae:	00 00 00 
  1025b1:	e8 6f fd ff ff       	call   102325 <loadUMain>
  1025b6:	89 c2                	mov    %eax,%edx
  1025b8:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025be:	89 90 bc 80 00 00    	mov    %edx,0x80bc(%eax)
  1025c4:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025ca:	c7 80 90 80 00 00 23 	movl   $0x23,0x8090(%eax)
  1025d1:	00 00 00 
  1025d4:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025da:	c7 80 8c 80 00 00 23 	movl   $0x23,0x808c(%eax)
  1025e1:	00 00 00 
  1025e4:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025ea:	c7 80 88 80 00 00 23 	movl   $0x23,0x8088(%eax)
  1025f1:	00 00 00 
  1025f4:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  1025fa:	c7 80 84 80 00 00 23 	movl   $0x23,0x8084(%eax)
  102601:	00 00 00 
  102604:	c7 c0 84 5f 10 00    	mov    $0x105f84,%eax
  10260a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102610:	c7 c0 a0 63 10 00    	mov    $0x1063a0,%eax
  102616:	8b a0 4c 40 00 00    	mov    0x404c(%eax),%esp
  10261c:	e8 49 f6 ff ff       	call   101c6a <enableInterrupt>
  102621:	cd 20                	int    $0x20
  102623:	e8 31 f6 ff ff       	call   101c59 <waitForInterrupt>
  102628:	eb f9                	jmp    102623 <initProc+0x1fd>

0010262a <inByte>:
  10262a:	55                   	push   %ebp
  10262b:	89 e5                	mov    %esp,%ebp
  10262d:	83 ec 14             	sub    $0x14,%esp
  102630:	e8 10 de ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102635:	05 cb 29 00 00       	add    $0x29cb,%eax
  10263a:	8b 45 08             	mov    0x8(%ebp),%eax
  10263d:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  102641:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102644:	89 c2                	mov    %eax,%edx
  102646:	ec                   	in     (%dx),%al
  102647:	88 45 ff             	mov    %al,-0x1(%ebp)
  10264a:	8a 45 ff             	mov    -0x1(%ebp),%al
  10264d:	c9                   	leave  
  10264e:	c3                   	ret    

0010264f <outByte>:
  10264f:	55                   	push   %ebp
  102650:	89 e5                	mov    %esp,%ebp
  102652:	83 ec 08             	sub    $0x8,%esp
  102655:	e8 eb dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10265a:	05 a6 29 00 00       	add    $0x29a6,%eax
  10265f:	8b 45 08             	mov    0x8(%ebp),%eax
  102662:	8b 55 0c             	mov    0xc(%ebp),%edx
  102665:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  102669:	88 d0                	mov    %dl,%al
  10266b:	88 45 f8             	mov    %al,-0x8(%ebp)
  10266e:	8a 45 f8             	mov    -0x8(%ebp),%al
  102671:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102674:	ee                   	out    %al,(%dx)
  102675:	90                   	nop
  102676:	c9                   	leave  
  102677:	c3                   	ret    

00102678 <initSerial>:
  102678:	55                   	push   %ebp
  102679:	89 e5                	mov    %esp,%ebp
  10267b:	e8 c5 dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102680:	05 80 29 00 00       	add    $0x2980,%eax
  102685:	6a 00                	push   $0x0
  102687:	68 f9 03 00 00       	push   $0x3f9
  10268c:	e8 be ff ff ff       	call   10264f <outByte>
  102691:	83 c4 08             	add    $0x8,%esp
  102694:	6a 80                	push   $0xffffff80
  102696:	68 fb 03 00 00       	push   $0x3fb
  10269b:	e8 af ff ff ff       	call   10264f <outByte>
  1026a0:	83 c4 08             	add    $0x8,%esp
  1026a3:	6a 01                	push   $0x1
  1026a5:	68 f8 03 00 00       	push   $0x3f8
  1026aa:	e8 a0 ff ff ff       	call   10264f <outByte>
  1026af:	83 c4 08             	add    $0x8,%esp
  1026b2:	6a 00                	push   $0x0
  1026b4:	68 f9 03 00 00       	push   $0x3f9
  1026b9:	e8 91 ff ff ff       	call   10264f <outByte>
  1026be:	83 c4 08             	add    $0x8,%esp
  1026c1:	6a 03                	push   $0x3
  1026c3:	68 fb 03 00 00       	push   $0x3fb
  1026c8:	e8 82 ff ff ff       	call   10264f <outByte>
  1026cd:	83 c4 08             	add    $0x8,%esp
  1026d0:	6a c7                	push   $0xffffffc7
  1026d2:	68 fa 03 00 00       	push   $0x3fa
  1026d7:	e8 73 ff ff ff       	call   10264f <outByte>
  1026dc:	83 c4 08             	add    $0x8,%esp
  1026df:	6a 0b                	push   $0xb
  1026e1:	68 fc 03 00 00       	push   $0x3fc
  1026e6:	e8 64 ff ff ff       	call   10264f <outByte>
  1026eb:	83 c4 08             	add    $0x8,%esp
  1026ee:	90                   	nop
  1026ef:	c9                   	leave  
  1026f0:	c3                   	ret    

001026f1 <serialIdle>:
  1026f1:	55                   	push   %ebp
  1026f2:	89 e5                	mov    %esp,%ebp
  1026f4:	e8 4c dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1026f9:	05 07 29 00 00       	add    $0x2907,%eax
  1026fe:	68 fd 03 00 00       	push   $0x3fd
  102703:	e8 22 ff ff ff       	call   10262a <inByte>
  102708:	83 c4 04             	add    $0x4,%esp
  10270b:	0f b6 c0             	movzbl %al,%eax
  10270e:	83 e0 20             	and    $0x20,%eax
  102711:	85 c0                	test   %eax,%eax
  102713:	0f 95 c0             	setne  %al
  102716:	0f b6 c0             	movzbl %al,%eax
  102719:	c9                   	leave  
  10271a:	c3                   	ret    

0010271b <putChar>:
  10271b:	55                   	push   %ebp
  10271c:	89 e5                	mov    %esp,%ebp
  10271e:	83 ec 04             	sub    $0x4,%esp
  102721:	e8 1f dd ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102726:	05 da 28 00 00       	add    $0x28da,%eax
  10272b:	8b 45 08             	mov    0x8(%ebp),%eax
  10272e:	88 45 fc             	mov    %al,-0x4(%ebp)
  102731:	90                   	nop
  102732:	e8 ba ff ff ff       	call   1026f1 <serialIdle>
  102737:	83 f8 01             	cmp    $0x1,%eax
  10273a:	75 f6                	jne    102732 <putChar+0x17>
  10273c:	0f be 45 fc          	movsbl -0x4(%ebp),%eax
  102740:	50                   	push   %eax
  102741:	68 f8 03 00 00       	push   $0x3f8
  102746:	e8 04 ff ff ff       	call   10264f <outByte>
  10274b:	83 c4 08             	add    $0x8,%esp
  10274e:	90                   	nop
  10274f:	c9                   	leave  
  102750:	c3                   	ret    

00102751 <putString>:
  102751:	55                   	push   %ebp
  102752:	89 e5                	mov    %esp,%ebp
  102754:	83 ec 10             	sub    $0x10,%esp
  102757:	e8 e9 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10275c:	05 a4 28 00 00       	add    $0x28a4,%eax
  102761:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102768:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10276c:	74 30                	je     10279e <putString+0x4d>
  10276e:	eb 1e                	jmp    10278e <putString+0x3d>
  102770:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102773:	8d 50 01             	lea    0x1(%eax),%edx
  102776:	89 55 fc             	mov    %edx,-0x4(%ebp)
  102779:	89 c2                	mov    %eax,%edx
  10277b:	8b 45 08             	mov    0x8(%ebp),%eax
  10277e:	01 d0                	add    %edx,%eax
  102780:	8a 00                	mov    (%eax),%al
  102782:	0f be c0             	movsbl %al,%eax
  102785:	50                   	push   %eax
  102786:	e8 90 ff ff ff       	call   10271b <putChar>
  10278b:	83 c4 04             	add    $0x4,%esp
  10278e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102791:	8b 45 08             	mov    0x8(%ebp),%eax
  102794:	01 d0                	add    %edx,%eax
  102796:	8a 00                	mov    (%eax),%al
  102798:	84 c0                	test   %al,%al
  10279a:	75 d4                	jne    102770 <putString+0x1f>
  10279c:	eb 01                	jmp    10279f <putString+0x4e>
  10279e:	90                   	nop
  10279f:	c9                   	leave  
  1027a0:	c3                   	ret    

001027a1 <putInt>:
  1027a1:	55                   	push   %ebp
  1027a2:	89 e5                	mov    %esp,%ebp
  1027a4:	83 ec 30             	sub    $0x30,%esp
  1027a7:	e8 99 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1027ac:	05 54 28 00 00       	add    $0x2854,%eax
  1027b1:	8d 45 dc             	lea    -0x24(%ebp),%eax
  1027b4:	83 c0 1f             	add    $0x1f,%eax
  1027b7:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1027ba:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1027bd:	c6 00 00             	movb   $0x0,(%eax)
  1027c0:	ff 4d fc             	decl   -0x4(%ebp)
  1027c3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1027c6:	c6 00 0a             	movb   $0xa,(%eax)
  1027c9:	8b 45 08             	mov    0x8(%ebp),%eax
  1027cc:	b9 0a 00 00 00       	mov    $0xa,%ecx
  1027d1:	99                   	cltd   
  1027d2:	f7 f9                	idiv   %ecx
  1027d4:	89 d0                	mov    %edx,%eax
  1027d6:	83 c0 30             	add    $0x30,%eax
  1027d9:	ff 4d fc             	decl   -0x4(%ebp)
  1027dc:	88 c2                	mov    %al,%dl
  1027de:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1027e1:	88 10                	mov    %dl,(%eax)
  1027e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1027e6:	b8 67 66 66 66       	mov    $0x66666667,%eax
  1027eb:	f7 e9                	imul   %ecx
  1027ed:	c1 fa 02             	sar    $0x2,%edx
  1027f0:	89 c8                	mov    %ecx,%eax
  1027f2:	c1 f8 1f             	sar    $0x1f,%eax
  1027f5:	29 c2                	sub    %eax,%edx
  1027f7:	89 d0                	mov    %edx,%eax
  1027f9:	89 45 08             	mov    %eax,0x8(%ebp)
  1027fc:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102800:	75 c7                	jne    1027c9 <putInt+0x28>
  102802:	ff 75 fc             	pushl  -0x4(%ebp)
  102805:	e8 47 ff ff ff       	call   102751 <putString>
  10280a:	83 c4 04             	add    $0x4,%esp
  10280d:	90                   	nop
  10280e:	c9                   	leave  
  10280f:	c3                   	ret    

00102810 <outByte>:
  102810:	55                   	push   %ebp
  102811:	89 e5                	mov    %esp,%ebp
  102813:	83 ec 08             	sub    $0x8,%esp
  102816:	e8 2a dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10281b:	05 e5 27 00 00       	add    $0x27e5,%eax
  102820:	8b 45 08             	mov    0x8(%ebp),%eax
  102823:	8b 55 0c             	mov    0xc(%ebp),%edx
  102826:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  10282a:	88 d0                	mov    %dl,%al
  10282c:	88 45 f8             	mov    %al,-0x8(%ebp)
  10282f:	8a 45 f8             	mov    -0x8(%ebp),%al
  102832:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102835:	ee                   	out    %al,(%dx)
  102836:	90                   	nop
  102837:	c9                   	leave  
  102838:	c3                   	ret    

00102839 <initTimer>:
  102839:	55                   	push   %ebp
  10283a:	89 e5                	mov    %esp,%ebp
  10283c:	83 ec 10             	sub    $0x10,%esp
  10283f:	e8 01 dc ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102844:	05 bc 27 00 00       	add    $0x27bc,%eax
  102849:	c7 45 fc 9b 2e 00 00 	movl   $0x2e9b,-0x4(%ebp)
  102850:	6a 34                	push   $0x34
  102852:	6a 43                	push   $0x43
  102854:	e8 b7 ff ff ff       	call   102810 <outByte>
  102859:	83 c4 08             	add    $0x8,%esp
  10285c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10285f:	25 ff 00 00 80       	and    $0x800000ff,%eax
  102864:	85 c0                	test   %eax,%eax
  102866:	79 07                	jns    10286f <initTimer+0x36>
  102868:	48                   	dec    %eax
  102869:	0d 00 ff ff ff       	or     $0xffffff00,%eax
  10286e:	40                   	inc    %eax
  10286f:	0f be c0             	movsbl %al,%eax
  102872:	50                   	push   %eax
  102873:	6a 40                	push   $0x40
  102875:	e8 96 ff ff ff       	call   102810 <outByte>
  10287a:	83 c4 08             	add    $0x8,%esp
  10287d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102880:	85 c0                	test   %eax,%eax
  102882:	79 05                	jns    102889 <initTimer+0x50>
  102884:	05 ff 00 00 00       	add    $0xff,%eax
  102889:	c1 f8 08             	sar    $0x8,%eax
  10288c:	0f be c0             	movsbl %al,%eax
  10288f:	50                   	push   %eax
  102890:	6a 40                	push   $0x40
  102892:	e8 79 ff ff ff       	call   102810 <outByte>
  102897:	83 c4 08             	add    $0x8,%esp
  10289a:	90                   	nop
  10289b:	c9                   	leave  
  10289c:	c3                   	ret    

0010289d <outByte>:
  10289d:	55                   	push   %ebp
  10289e:	89 e5                	mov    %esp,%ebp
  1028a0:	83 ec 08             	sub    $0x8,%esp
  1028a3:	e8 9d db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028a8:	05 58 27 00 00       	add    $0x2758,%eax
  1028ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1028b0:	8b 55 0c             	mov    0xc(%ebp),%edx
  1028b3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  1028b7:	88 d0                	mov    %dl,%al
  1028b9:	88 45 f8             	mov    %al,-0x8(%ebp)
  1028bc:	8a 45 f8             	mov    -0x8(%ebp),%al
  1028bf:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1028c2:	ee                   	out    %al,(%dx)
  1028c3:	90                   	nop
  1028c4:	c9                   	leave  
  1028c5:	c3                   	ret    

001028c6 <initVga>:
  1028c6:	55                   	push   %ebp
  1028c7:	89 e5                	mov    %esp,%ebp
  1028c9:	83 ec 08             	sub    $0x8,%esp
  1028cc:	e8 74 db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  1028d1:	05 2f 27 00 00       	add    $0x272f,%eax
  1028d6:	c7 80 0c 02 00 00 00 	movl   $0x0,0x20c(%eax)
  1028dd:	00 00 00 
  1028e0:	c7 80 10 02 00 00 00 	movl   $0x0,0x210(%eax)
  1028e7:	00 00 00 
  1028ea:	c7 80 14 02 00 00 00 	movl   $0x0,0x214(%eax)
  1028f1:	00 00 00 
  1028f4:	e8 12 00 00 00       	call   10290b <clearScreen>
  1028f9:	83 ec 08             	sub    $0x8,%esp
  1028fc:	6a 00                	push   $0x0
  1028fe:	6a 00                	push   $0x0
  102900:	e8 5a 00 00 00       	call   10295f <updateCursor>
  102905:	83 c4 10             	add    $0x10,%esp
  102908:	90                   	nop
  102909:	c9                   	leave  
  10290a:	c3                   	ret    

0010290b <clearScreen>:
  10290b:	55                   	push   %ebp
  10290c:	89 e5                	mov    %esp,%ebp
  10290e:	83 ec 10             	sub    $0x10,%esp
  102911:	e8 2f db ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102916:	05 ea 26 00 00       	add    $0x26ea,%eax
  10291b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102922:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  102929:	66 c7 45 f6 00 0c    	movw   $0xc00,-0xa(%ebp)
  10292f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102936:	eb 1b                	jmp    102953 <clearScreen+0x48>
  102938:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10293b:	01 c0                	add    %eax,%eax
  10293d:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102940:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102943:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  102949:	66 8b 45 f6          	mov    -0xa(%ebp),%ax
  10294d:	66 89 02             	mov    %ax,(%edx)
  102950:	ff 45 fc             	incl   -0x4(%ebp)
  102953:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  10295a:	7e dc                	jle    102938 <clearScreen+0x2d>
  10295c:	90                   	nop
  10295d:	c9                   	leave  
  10295e:	c3                   	ret    

0010295f <updateCursor>:
  10295f:	55                   	push   %ebp
  102960:	89 e5                	mov    %esp,%ebp
  102962:	83 ec 10             	sub    $0x10,%esp
  102965:	e8 db da ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  10296a:	05 96 26 00 00       	add    $0x2696,%eax
  10296f:	8b 55 08             	mov    0x8(%ebp),%edx
  102972:	89 d0                	mov    %edx,%eax
  102974:	c1 e0 02             	shl    $0x2,%eax
  102977:	01 d0                	add    %edx,%eax
  102979:	c1 e0 04             	shl    $0x4,%eax
  10297c:	89 c2                	mov    %eax,%edx
  10297e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102981:	01 d0                	add    %edx,%eax
  102983:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102986:	6a 0f                	push   $0xf
  102988:	68 d4 03 00 00       	push   $0x3d4
  10298d:	e8 0b ff ff ff       	call   10289d <outByte>
  102992:	83 c4 08             	add    $0x8,%esp
  102995:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102998:	0f be c0             	movsbl %al,%eax
  10299b:	50                   	push   %eax
  10299c:	68 d5 03 00 00       	push   $0x3d5
  1029a1:	e8 f7 fe ff ff       	call   10289d <outByte>
  1029a6:	83 c4 08             	add    $0x8,%esp
  1029a9:	6a 0e                	push   $0xe
  1029ab:	68 d4 03 00 00       	push   $0x3d4
  1029b0:	e8 e8 fe ff ff       	call   10289d <outByte>
  1029b5:	83 c4 08             	add    $0x8,%esp
  1029b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1029bb:	c1 f8 08             	sar    $0x8,%eax
  1029be:	0f be c0             	movsbl %al,%eax
  1029c1:	50                   	push   %eax
  1029c2:	68 d5 03 00 00       	push   $0x3d5
  1029c7:	e8 d1 fe ff ff       	call   10289d <outByte>
  1029cc:	83 c4 08             	add    $0x8,%esp
  1029cf:	90                   	nop
  1029d0:	c9                   	leave  
  1029d1:	c3                   	ret    

001029d2 <scrollScreen>:
  1029d2:	55                   	push   %ebp
  1029d3:	89 e5                	mov    %esp,%ebp
  1029d5:	53                   	push   %ebx
  1029d6:	83 ec 10             	sub    $0x10,%esp
  1029d9:	e8 9c ed ff ff       	call   10177a <__x86.get_pc_thunk.dx>
  1029de:	81 c2 22 26 00 00    	add    $0x2622,%edx
  1029e4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1029eb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1029f2:	66 c7 45 f2 00 00    	movw   $0x0,-0xe(%ebp)
  1029f8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1029ff:	eb 2b                	jmp    102a2c <scrollScreen+0x5a>
  102a01:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a04:	01 c0                	add    %eax,%eax
  102a06:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102a09:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a0c:	05 00 80 0b 00       	add    $0xb8000,%eax
  102a11:	66 8b 00             	mov    (%eax),%ax
  102a14:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  102a18:	c7 c1 60 a8 12 00    	mov    $0x12a860,%ecx
  102a1e:	8b 5d f8             	mov    -0x8(%ebp),%ebx
  102a21:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  102a25:	66 89 04 59          	mov    %ax,(%ecx,%ebx,2)
  102a29:	ff 45 f8             	incl   -0x8(%ebp)
  102a2c:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  102a33:	7e cc                	jle    102a01 <scrollScreen+0x2f>
  102a35:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  102a3c:	eb 2f                	jmp    102a6d <scrollScreen+0x9b>
  102a3e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a41:	01 c0                	add    %eax,%eax
  102a43:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102a46:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a49:	8d 48 50             	lea    0x50(%eax),%ecx
  102a4c:	c7 c0 60 a8 12 00    	mov    $0x12a860,%eax
  102a52:	66 8b 04 48          	mov    (%eax,%ecx,2),%ax
  102a56:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  102a5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a5d:	8d 88 00 80 0b 00    	lea    0xb8000(%eax),%ecx
  102a63:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  102a67:	66 89 01             	mov    %ax,(%ecx)
  102a6a:	ff 45 f8             	incl   -0x8(%ebp)
  102a6d:	81 7d f8 7f 07 00 00 	cmpl   $0x77f,-0x8(%ebp)
  102a74:	7e c8                	jle    102a3e <scrollScreen+0x6c>
  102a76:	66 c7 45 f2 00 0c    	movw   $0xc00,-0xe(%ebp)
  102a7c:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%ebp)
  102a83:	eb 1b                	jmp    102aa0 <scrollScreen+0xce>
  102a85:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102a88:	01 c0                	add    %eax,%eax
  102a8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102a8d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102a90:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
  102a96:	66 8b 45 f2          	mov    -0xe(%ebp),%ax
  102a9a:	66 89 02             	mov    %ax,(%edx)
  102a9d:	ff 45 f8             	incl   -0x8(%ebp)
  102aa0:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%ebp)
  102aa7:	7e dc                	jle    102a85 <scrollScreen+0xb3>
  102aa9:	90                   	nop
  102aaa:	83 c4 10             	add    $0x10,%esp
  102aad:	5b                   	pop    %ebx
  102aae:	5d                   	pop    %ebp
  102aaf:	c3                   	ret    

00102ab0 <waitForInterrupt>:
  102ab0:	55                   	push   %ebp
  102ab1:	89 e5                	mov    %esp,%ebp
  102ab3:	e8 8d d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ab8:	05 48 25 00 00       	add    $0x2548,%eax
  102abd:	f4                   	hlt    
  102abe:	90                   	nop
  102abf:	5d                   	pop    %ebp
  102ac0:	c3                   	ret    

00102ac1 <disableInterrupt>:
  102ac1:	55                   	push   %ebp
  102ac2:	89 e5                	mov    %esp,%ebp
  102ac4:	e8 7c d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ac9:	05 37 25 00 00       	add    $0x2537,%eax
  102ace:	fa                   	cli    
  102acf:	90                   	nop
  102ad0:	5d                   	pop    %ebp
  102ad1:	c3                   	ret    

00102ad2 <i2A>:
  102ad2:	55                   	push   %ebp
  102ad3:	89 e5                	mov    %esp,%ebp
  102ad5:	83 ec 10             	sub    $0x10,%esp
  102ad8:	e8 68 d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102add:	05 23 25 00 00       	add    $0x2523,%eax
  102ae2:	8d 80 35 02 00 00    	lea    0x235(%eax),%eax
  102ae8:	89 45 fc             	mov    %eax,-0x4(%ebp)
  102aeb:	8b 45 08             	mov    0x8(%ebp),%eax
  102aee:	b9 0a 00 00 00       	mov    $0xa,%ecx
  102af3:	99                   	cltd   
  102af4:	f7 f9                	idiv   %ecx
  102af6:	89 d0                	mov    %edx,%eax
  102af8:	83 c0 30             	add    $0x30,%eax
  102afb:	ff 4d fc             	decl   -0x4(%ebp)
  102afe:	88 c2                	mov    %al,%dl
  102b00:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b03:	88 10                	mov    %dl,(%eax)
  102b05:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102b08:	b8 67 66 66 66       	mov    $0x66666667,%eax
  102b0d:	f7 e9                	imul   %ecx
  102b0f:	c1 fa 02             	sar    $0x2,%edx
  102b12:	89 c8                	mov    %ecx,%eax
  102b14:	c1 f8 1f             	sar    $0x1f,%eax
  102b17:	29 c2                	sub    %eax,%edx
  102b19:	89 d0                	mov    %edx,%eax
  102b1b:	89 45 08             	mov    %eax,0x8(%ebp)
  102b1e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102b22:	75 c7                	jne    102aeb <i2A+0x19>
  102b24:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b27:	c9                   	leave  
  102b28:	c3                   	ret    

00102b29 <append>:
  102b29:	55                   	push   %ebp
  102b2a:	89 e5                	mov    %esp,%ebp
  102b2c:	53                   	push   %ebx
  102b2d:	e8 13 d9 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102b32:	05 ce 24 00 00       	add    $0x24ce,%eax
  102b37:	eb 1a                	jmp    102b53 <append+0x2a>
  102b39:	8b 55 0c             	mov    0xc(%ebp),%edx
  102b3c:	8d 42 01             	lea    0x1(%edx),%eax
  102b3f:	89 45 0c             	mov    %eax,0xc(%ebp)
  102b42:	8b 45 08             	mov    0x8(%ebp),%eax
  102b45:	8b 00                	mov    (%eax),%eax
  102b47:	8d 58 01             	lea    0x1(%eax),%ebx
  102b4a:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102b4d:	89 19                	mov    %ebx,(%ecx)
  102b4f:	8a 12                	mov    (%edx),%dl
  102b51:	88 10                	mov    %dl,(%eax)
  102b53:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b56:	8a 00                	mov    (%eax),%al
  102b58:	84 c0                	test   %al,%al
  102b5a:	75 dd                	jne    102b39 <append+0x10>
  102b5c:	90                   	nop
  102b5d:	5b                   	pop    %ebx
  102b5e:	5d                   	pop    %ebp
  102b5f:	c3                   	ret    

00102b60 <displayMessage>:
  102b60:	55                   	push   %ebp
  102b61:	89 e5                	mov    %esp,%ebp
  102b63:	53                   	push   %ebx
  102b64:	83 ec 14             	sub    $0x14,%esp
  102b67:	e8 c9 dc ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102b6c:	81 c3 94 24 00 00    	add    $0x2494,%ebx
  102b72:	8d 83 32 00 00 00    	lea    0x32(%ebx),%eax
  102b78:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102b7b:	ff 75 08             	pushl  0x8(%ebp)
  102b7e:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102b81:	50                   	push   %eax
  102b82:	e8 a2 ff ff ff       	call   102b29 <append>
  102b87:	83 c4 08             	add    $0x8,%esp
  102b8a:	8d 83 55 df ff ff    	lea    -0x20ab(%ebx),%eax
  102b90:	50                   	push   %eax
  102b91:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102b94:	50                   	push   %eax
  102b95:	e8 8f ff ff ff       	call   102b29 <append>
  102b9a:	83 c4 08             	add    $0x8,%esp
  102b9d:	ff 75 0c             	pushl  0xc(%ebp)
  102ba0:	e8 2d ff ff ff       	call   102ad2 <i2A>
  102ba5:	83 c4 04             	add    $0x4,%esp
  102ba8:	50                   	push   %eax
  102ba9:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102bac:	50                   	push   %eax
  102bad:	e8 77 ff ff ff       	call   102b29 <append>
  102bb2:	83 c4 08             	add    $0x8,%esp
  102bb5:	8d 83 57 df ff ff    	lea    -0x20a9(%ebx),%eax
  102bbb:	50                   	push   %eax
  102bbc:	8d 45 f4             	lea    -0xc(%ebp),%eax
  102bbf:	50                   	push   %eax
  102bc0:	e8 64 ff ff ff       	call   102b29 <append>
  102bc5:	83 c4 08             	add    $0x8,%esp
  102bc8:	8d 83 20 00 00 00    	lea    0x20(%ebx),%eax
  102bce:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102bd1:	eb 1b                	jmp    102bee <displayMessage+0x8e>
  102bd3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bd6:	8a 00                	mov    (%eax),%al
  102bd8:	0f be c0             	movsbl %al,%eax
  102bdb:	83 ec 0c             	sub    $0xc,%esp
  102bde:	50                   	push   %eax
  102bdf:	e8 37 fb ff ff       	call   10271b <putChar>
  102be4:	83 c4 10             	add    $0x10,%esp
  102be7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bea:	40                   	inc    %eax
  102beb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102bee:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bf1:	8a 00                	mov    (%eax),%al
  102bf3:	84 c0                	test   %al,%al
  102bf5:	75 dc                	jne    102bd3 <displayMessage+0x73>
  102bf7:	90                   	nop
  102bf8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102bfb:	c9                   	leave  
  102bfc:	c3                   	ret    

00102bfd <abort>:
  102bfd:	55                   	push   %ebp
  102bfe:	89 e5                	mov    %esp,%ebp
  102c00:	83 ec 08             	sub    $0x8,%esp
  102c03:	e8 3d d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c08:	05 f8 23 00 00       	add    $0x23f8,%eax
  102c0d:	e8 af fe ff ff       	call   102ac1 <disableInterrupt>
  102c12:	83 ec 08             	sub    $0x8,%esp
  102c15:	ff 75 0c             	pushl  0xc(%ebp)
  102c18:	ff 75 08             	pushl  0x8(%ebp)
  102c1b:	e8 40 ff ff ff       	call   102b60 <displayMessage>
  102c20:	83 c4 10             	add    $0x10,%esp
  102c23:	e8 88 fe ff ff       	call   102ab0 <waitForInterrupt>
  102c28:	eb f9                	jmp    102c23 <abort+0x26>

00102c2a <stringChr>:
  102c2a:	55                   	push   %ebp
  102c2b:	89 e5                	mov    %esp,%ebp
  102c2d:	83 ec 14             	sub    $0x14,%esp
  102c30:	e8 10 d8 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102c35:	05 cb 23 00 00       	add    $0x23cb,%eax
  102c3a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102c3d:	88 45 ec             	mov    %al,-0x14(%ebp)
  102c40:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102c47:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102c4b:	75 31                	jne    102c7e <stringChr+0x54>
  102c4d:	8b 45 10             	mov    0x10(%ebp),%eax
  102c50:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102c56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102c5b:	eb 3c                	jmp    102c99 <stringChr+0x6f>
  102c5d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102c60:	8b 45 08             	mov    0x8(%ebp),%eax
  102c63:	01 d0                	add    %edx,%eax
  102c65:	8a 00                	mov    (%eax),%al
  102c67:	38 45 ec             	cmp    %al,-0x14(%ebp)
  102c6a:	75 0f                	jne    102c7b <stringChr+0x51>
  102c6c:	8b 45 10             	mov    0x10(%ebp),%eax
  102c6f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102c72:	89 10                	mov    %edx,(%eax)
  102c74:	b8 00 00 00 00       	mov    $0x0,%eax
  102c79:	eb 1e                	jmp    102c99 <stringChr+0x6f>
  102c7b:	ff 45 fc             	incl   -0x4(%ebp)
  102c7e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102c81:	8b 45 08             	mov    0x8(%ebp),%eax
  102c84:	01 d0                	add    %edx,%eax
  102c86:	8a 00                	mov    (%eax),%al
  102c88:	84 c0                	test   %al,%al
  102c8a:	75 d1                	jne    102c5d <stringChr+0x33>
  102c8c:	8b 45 10             	mov    0x10(%ebp),%eax
  102c8f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102c92:	89 10                	mov    %edx,(%eax)
  102c94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102c99:	c9                   	leave  
  102c9a:	c3                   	ret    

00102c9b <stringChrR>:
  102c9b:	55                   	push   %ebp
  102c9c:	89 e5                	mov    %esp,%ebp
  102c9e:	83 ec 14             	sub    $0x14,%esp
  102ca1:	e8 9f d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102ca6:	05 5a 23 00 00       	add    $0x235a,%eax
  102cab:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cae:	88 45 ec             	mov    %al,-0x14(%ebp)
  102cb1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102cb8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102cbc:	75 13                	jne    102cd1 <stringChrR+0x36>
  102cbe:	8b 45 10             	mov    0x10(%ebp),%eax
  102cc1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102cc7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102ccc:	eb 47                	jmp    102d15 <stringChrR+0x7a>
  102cce:	ff 45 fc             	incl   -0x4(%ebp)
  102cd1:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102cd4:	8b 45 08             	mov    0x8(%ebp),%eax
  102cd7:	01 d0                	add    %edx,%eax
  102cd9:	8a 00                	mov    (%eax),%al
  102cdb:	84 c0                	test   %al,%al
  102cdd:	75 ef                	jne    102cce <stringChrR+0x33>
  102cdf:	8b 45 10             	mov    0x10(%ebp),%eax
  102ce2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102ce5:	89 10                	mov    %edx,(%eax)
  102ce7:	eb 21                	jmp    102d0a <stringChrR+0x6f>
  102ce9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102cec:	8b 45 08             	mov    0x8(%ebp),%eax
  102cef:	01 d0                	add    %edx,%eax
  102cf1:	8a 00                	mov    (%eax),%al
  102cf3:	38 45 ec             	cmp    %al,-0x14(%ebp)
  102cf6:	75 0f                	jne    102d07 <stringChrR+0x6c>
  102cf8:	8b 45 10             	mov    0x10(%ebp),%eax
  102cfb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102cfe:	89 10                	mov    %edx,(%eax)
  102d00:	b8 00 00 00 00       	mov    $0x0,%eax
  102d05:	eb 0e                	jmp    102d15 <stringChrR+0x7a>
  102d07:	ff 4d fc             	decl   -0x4(%ebp)
  102d0a:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  102d0e:	79 d9                	jns    102ce9 <stringChrR+0x4e>
  102d10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102d15:	c9                   	leave  
  102d16:	c3                   	ret    

00102d17 <stringLen>:
  102d17:	55                   	push   %ebp
  102d18:	89 e5                	mov    %esp,%ebp
  102d1a:	83 ec 10             	sub    $0x10,%esp
  102d1d:	e8 23 d7 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102d22:	05 de 22 00 00       	add    $0x22de,%eax
  102d27:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102d2e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102d32:	75 0a                	jne    102d3e <stringLen+0x27>
  102d34:	b8 00 00 00 00       	mov    $0x0,%eax
  102d39:	eb 14                	jmp    102d4f <stringLen+0x38>
  102d3b:	ff 45 fc             	incl   -0x4(%ebp)
  102d3e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d41:	8b 45 08             	mov    0x8(%ebp),%eax
  102d44:	01 d0                	add    %edx,%eax
  102d46:	8a 00                	mov    (%eax),%al
  102d48:	84 c0                	test   %al,%al
  102d4a:	75 ef                	jne    102d3b <stringLen+0x24>
  102d4c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102d4f:	c9                   	leave  
  102d50:	c3                   	ret    

00102d51 <stringCmp>:
  102d51:	55                   	push   %ebp
  102d52:	89 e5                	mov    %esp,%ebp
  102d54:	83 ec 10             	sub    $0x10,%esp
  102d57:	e8 e9 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102d5c:	05 a4 22 00 00       	add    $0x22a4,%eax
  102d61:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102d68:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102d6c:	74 06                	je     102d74 <stringCmp+0x23>
  102d6e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102d72:	75 3e                	jne    102db2 <stringCmp+0x61>
  102d74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102d79:	eb 44                	jmp    102dbf <stringCmp+0x6e>
  102d7b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d7e:	8b 45 08             	mov    0x8(%ebp),%eax
  102d81:	01 d0                	add    %edx,%eax
  102d83:	8a 10                	mov    (%eax),%dl
  102d85:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102d88:	8b 45 0c             	mov    0xc(%ebp),%eax
  102d8b:	01 c8                	add    %ecx,%eax
  102d8d:	8a 00                	mov    (%eax),%al
  102d8f:	38 c2                	cmp    %al,%dl
  102d91:	74 07                	je     102d9a <stringCmp+0x49>
  102d93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102d98:	eb 25                	jmp    102dbf <stringCmp+0x6e>
  102d9a:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102d9d:	8b 45 08             	mov    0x8(%ebp),%eax
  102da0:	01 d0                	add    %edx,%eax
  102da2:	8a 00                	mov    (%eax),%al
  102da4:	84 c0                	test   %al,%al
  102da6:	75 07                	jne    102daf <stringCmp+0x5e>
  102da8:	b8 00 00 00 00       	mov    $0x0,%eax
  102dad:	eb 10                	jmp    102dbf <stringCmp+0x6e>
  102daf:	ff 45 fc             	incl   -0x4(%ebp)
  102db2:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102db5:	3b 45 10             	cmp    0x10(%ebp),%eax
  102db8:	75 c1                	jne    102d7b <stringCmp+0x2a>
  102dba:	b8 00 00 00 00       	mov    $0x0,%eax
  102dbf:	c9                   	leave  
  102dc0:	c3                   	ret    

00102dc1 <stringCpy>:
  102dc1:	55                   	push   %ebp
  102dc2:	89 e5                	mov    %esp,%ebp
  102dc4:	83 ec 10             	sub    $0x10,%esp
  102dc7:	e8 79 d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102dcc:	05 34 22 00 00       	add    $0x2234,%eax
  102dd1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102dd8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102ddc:	74 06                	je     102de4 <stringCpy+0x23>
  102dde:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102de2:	75 2c                	jne    102e10 <stringCpy+0x4f>
  102de4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102de9:	eb 40                	jmp    102e2b <stringCpy+0x6a>
  102deb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102dee:	8b 45 08             	mov    0x8(%ebp),%eax
  102df1:	01 d0                	add    %edx,%eax
  102df3:	8a 00                	mov    (%eax),%al
  102df5:	84 c0                	test   %al,%al
  102df7:	74 21                	je     102e1a <stringCpy+0x59>
  102df9:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102dfc:	8b 45 08             	mov    0x8(%ebp),%eax
  102dff:	01 d0                	add    %edx,%eax
  102e01:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  102e04:	8b 55 0c             	mov    0xc(%ebp),%edx
  102e07:	01 ca                	add    %ecx,%edx
  102e09:	8a 00                	mov    (%eax),%al
  102e0b:	88 02                	mov    %al,(%edx)
  102e0d:	ff 45 fc             	incl   -0x4(%ebp)
  102e10:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102e13:	3b 45 10             	cmp    0x10(%ebp),%eax
  102e16:	75 d3                	jne    102deb <stringCpy+0x2a>
  102e18:	eb 01                	jmp    102e1b <stringCpy+0x5a>
  102e1a:	90                   	nop
  102e1b:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102e1e:	8b 45 0c             	mov    0xc(%ebp),%eax
  102e21:	01 d0                	add    %edx,%eax
  102e23:	c6 00 00             	movb   $0x0,(%eax)
  102e26:	b8 00 00 00 00       	mov    $0x0,%eax
  102e2b:	c9                   	leave  
  102e2c:	c3                   	ret    

00102e2d <setBuffer>:
  102e2d:	55                   	push   %ebp
  102e2e:	89 e5                	mov    %esp,%ebp
  102e30:	83 ec 14             	sub    $0x14,%esp
  102e33:	e8 0d d6 ff ff       	call   100445 <__x86.get_pc_thunk.ax>
  102e38:	05 c8 21 00 00       	add    $0x21c8,%eax
  102e3d:	8b 45 10             	mov    0x10(%ebp),%eax
  102e40:	88 45 ec             	mov    %al,-0x14(%ebp)
  102e43:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102e4a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  102e4e:	75 07                	jne    102e57 <setBuffer+0x2a>
  102e50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102e55:	eb 26                	jmp    102e7d <setBuffer+0x50>
  102e57:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102e5e:	eb 10                	jmp    102e70 <setBuffer+0x43>
  102e60:	8b 55 fc             	mov    -0x4(%ebp),%edx
  102e63:	8b 45 08             	mov    0x8(%ebp),%eax
  102e66:	01 c2                	add    %eax,%edx
  102e68:	8a 45 ec             	mov    -0x14(%ebp),%al
  102e6b:	88 02                	mov    %al,(%edx)
  102e6d:	ff 45 fc             	incl   -0x4(%ebp)
  102e70:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102e73:	3b 45 0c             	cmp    0xc(%ebp),%eax
  102e76:	7c e8                	jl     102e60 <setBuffer+0x33>
  102e78:	b8 00 00 00 00       	mov    $0x0,%eax
  102e7d:	c9                   	leave  
  102e7e:	c3                   	ret    

00102e7f <kEntry>:
  102e7f:	55                   	push   %ebp
  102e80:	89 e5                	mov    %esp,%ebp
  102e82:	53                   	push   %ebx
  102e83:	83 ec 04             	sub    $0x4,%esp
  102e86:	e8 aa d9 ff ff       	call   100835 <__x86.get_pc_thunk.bx>
  102e8b:	81 c3 75 21 00 00    	add    $0x2175,%ebx
  102e91:	e8 e2 f7 ff ff       	call   102678 <initSerial>
  102e96:	e8 79 db ff ff       	call   100a14 <initIdt>
  102e9b:	e8 c2 d9 ff ff       	call   100862 <initIntr>
  102ea0:	e8 31 ee ff ff       	call   101cd6 <initSeg>
  102ea5:	e8 1c fa ff ff       	call   1028c6 <initVga>
  102eaa:	e8 8a f9 ff ff       	call   102839 <initTimer>
  102eaf:	e8 18 e9 ff ff       	call   1017cc <initKeyTable>
  102eb4:	e8 08 f3 ff ff       	call   1021c1 <initFS>
  102eb9:	e8 68 f5 ff ff       	call   102426 <initProc>
  102ebe:	eb fe                	jmp    102ebe <kEntry+0x3f>

00102ec0 <irqEmpty>:
  102ec0:	6a 00                	push   $0x0
  102ec2:	6a ff                	push   $0xffffffff
  102ec4:	eb 39                	jmp    102eff <asmDoIrq>

00102ec6 <irqErrorCode>:
  102ec6:	6a ff                	push   $0xffffffff
  102ec8:	eb 35                	jmp    102eff <asmDoIrq>

00102eca <irqDoubleFault>:
  102eca:	6a ff                	push   $0xffffffff
  102ecc:	eb 31                	jmp    102eff <asmDoIrq>

00102ece <irqInvalidTSS>:
  102ece:	6a ff                	push   $0xffffffff
  102ed0:	eb 2d                	jmp    102eff <asmDoIrq>

00102ed2 <irqSegNotPresent>:
  102ed2:	6a ff                	push   $0xffffffff
  102ed4:	eb 29                	jmp    102eff <asmDoIrq>

00102ed6 <irqStackSegFault>:
  102ed6:	6a ff                	push   $0xffffffff
  102ed8:	eb 25                	jmp    102eff <asmDoIrq>

00102eda <irqGProtectFault>:
  102eda:	6a 0d                	push   $0xd
  102edc:	eb 21                	jmp    102eff <asmDoIrq>

00102ede <irqPageFault>:
  102ede:	6a ff                	push   $0xffffffff
  102ee0:	eb 1d                	jmp    102eff <asmDoIrq>

00102ee2 <irqAlignCheck>:
  102ee2:	6a ff                	push   $0xffffffff
  102ee4:	eb 19                	jmp    102eff <asmDoIrq>

00102ee6 <irqSecException>:
  102ee6:	6a ff                	push   $0xffffffff
  102ee8:	eb 15                	jmp    102eff <asmDoIrq>

00102eea <irqTimer>:
  102eea:	6a 00                	push   $0x0
  102eec:	6a 20                	push   $0x20
  102eee:	eb 0f                	jmp    102eff <asmDoIrq>

00102ef0 <irqKeyboard>:
  102ef0:	6a 00                	push   $0x0
  102ef2:	6a 21                	push   $0x21
  102ef4:	eb 09                	jmp    102eff <asmDoIrq>

00102ef6 <irqSyscall>:
  102ef6:	6a 00                	push   $0x0
  102ef8:	68 80 00 00 00       	push   $0x80
  102efd:	eb 00                	jmp    102eff <asmDoIrq>

00102eff <asmDoIrq>:
  102eff:	60                   	pusha  
  102f00:	1e                   	push   %ds
  102f01:	06                   	push   %es
  102f02:	0f a0                	push   %fs
  102f04:	0f a8                	push   %gs
  102f06:	54                   	push   %esp
  102f07:	e8 d5 dc ff ff       	call   100be1 <irqHandle>
  102f0c:	83 c4 04             	add    $0x4,%esp
  102f0f:	0f a9                	pop    %gs
  102f11:	0f a1                	pop    %fs
  102f13:	07                   	pop    %es
  102f14:	1f                   	pop    %ds
  102f15:	61                   	popa   
  102f16:	83 c4 04             	add    $0x4,%esp
  102f19:	83 c4 04             	add    $0x4,%esp
  102f1c:	cf                   	iret   
