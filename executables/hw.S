
hello-world:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	1141                	add	sp,sp,-16
   100ea:	4581                	li	a1,0
   100ec:	e022                	sd	s0,0(sp)
   100ee:	e406                	sd	ra,8(sp)
   100f0:	842a                	mv	s0,a0
   100f2:	00e020ef          	jal	12100 <__call_exitprocs>
   100f6:	7481b503          	ld	a0,1864(gp) # 1fab8 <_global_impure_ptr>
   100fa:	6d3c                	ld	a5,88(a0)
   100fc:	c391                	beqz	a5,10100 <exit+0x18>
   100fe:	9782                	jalr	a5
   10100:	8522                	mv	a0,s0
   10102:	1be0b0ef          	jal	1b2c0 <_exit>

0000000000010106 <register_fini>:
   10106:	00000793          	li	a5,0
   1010a:	c799                	beqz	a5,10118 <register_fini+0x12>
   1010c:	00002517          	auipc	a0,0x2
   10110:	55250513          	add	a0,a0,1362 # 1265e <__libc_fini_array>
   10114:	0ae0206f          	j	121c2 <atexit>
   10118:	8082                	ret

000000000001011a <_start>:
   1011a:	0000f197          	auipc	gp,0xf
   1011e:	25618193          	add	gp,gp,598 # 1f370 <__global_pointer$>
   10122:	77018513          	add	a0,gp,1904 # 1fae0 <__malloc_max_total_mem>
   10126:	00010617          	auipc	a2,0x10
   1012a:	a4a60613          	add	a2,a2,-1462 # 1fb70 <__BSS_END__>
   1012e:	8e09                	sub	a2,a2,a0
   10130:	4581                	li	a1,0
   10132:	12c000ef          	jal	1025e <memset>
   10136:	00002517          	auipc	a0,0x2
   1013a:	08c50513          	add	a0,a0,140 # 121c2 <atexit>
   1013e:	c519                	beqz	a0,1014c <_start+0x32>
   10140:	00002517          	auipc	a0,0x2
   10144:	51e50513          	add	a0,a0,1310 # 1265e <__libc_fini_array>
   10148:	07a020ef          	jal	121c2 <atexit>
   1014c:	0a8000ef          	jal	101f4 <__libc_init_array>
   10150:	4502                	lw	a0,0(sp)
   10152:	002c                	add	a1,sp,8
   10154:	4601                	li	a2,0
   10156:	056000ef          	jal	101ac <main>
   1015a:	b779                	j	100e8 <exit>

000000000001015c <__do_global_dtors_aux>:
   1015c:	1141                	add	sp,sp,-16
   1015e:	e022                	sd	s0,0(sp)
   10160:	7a018413          	add	s0,gp,1952 # 1fb10 <completed.1>
   10164:	00044783          	lbu	a5,0(s0)
   10168:	e406                	sd	ra,8(sp)
   1016a:	ef99                	bnez	a5,10188 <__do_global_dtors_aux+0x2c>
   1016c:	00000793          	li	a5,0
   10170:	cb89                	beqz	a5,10182 <__do_global_dtors_aux+0x26>
   10172:	0000e517          	auipc	a0,0xe
   10176:	7ee50513          	add	a0,a0,2030 # 1e960 <__EH_FRAME_BEGIN__>
   1017a:	00000097          	auipc	ra,0x0
   1017e:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   10182:	4785                	li	a5,1
   10184:	00f40023          	sb	a5,0(s0)
   10188:	60a2                	ld	ra,8(sp)
   1018a:	6402                	ld	s0,0(sp)
   1018c:	0141                	add	sp,sp,16
   1018e:	8082                	ret

0000000000010190 <frame_dummy>:
   10190:	00000793          	li	a5,0
   10194:	cb99                	beqz	a5,101aa <frame_dummy+0x1a>
   10196:	7a818593          	add	a1,gp,1960 # 1fb18 <object.0>
   1019a:	0000e517          	auipc	a0,0xe
   1019e:	7c650513          	add	a0,a0,1990 # 1e960 <__EH_FRAME_BEGIN__>
   101a2:	00000317          	auipc	t1,0x0
   101a6:	00000067          	jr	zero # 0 <exit-0x100e8>
   101aa:	8082                	ret

00000000000101ac <main>:
   101ac:	fe010113          	add	sp,sp,-32
   101b0:	00113c23          	sd	ra,24(sp)
   101b4:	00813823          	sd	s0,16(sp)
   101b8:	02010413          	add	s0,sp,32
   101bc:	00100793          	li	a5,1
   101c0:	fef42623          	sw	a5,-20(s0)
   101c4:	fec42783          	lw	a5,-20(s0)
   101c8:	0017879b          	addw	a5,a5,1
   101cc:	fef42423          	sw	a5,-24(s0)
   101d0:	0001d7b7          	lui	a5,0x1d
   101d4:	a6078513          	add	a0,a5,-1440 # 1ca60 <__clzdi2+0x42>
   101d8:	152000ef          	jal	1032a <printf>
   101dc:	00000793          	li	a5,0
   101e0:	00078513          	mv	a0,a5
   101e4:	01813083          	ld	ra,24(sp)
   101e8:	01013403          	ld	s0,16(sp)
   101ec:	02010113          	add	sp,sp,32
   101f0:	00008067          	ret

00000000000101f4 <__libc_init_array>:
   101f4:	1101                	add	sp,sp,-32
   101f6:	e822                	sd	s0,16(sp)
   101f8:	e04a                	sd	s2,0(sp)
   101fa:	0000e797          	auipc	a5,0xe
   101fe:	76a78793          	add	a5,a5,1898 # 1e964 <__preinit_array_end>
   10202:	0000e417          	auipc	s0,0xe
   10206:	76240413          	add	s0,s0,1890 # 1e964 <__preinit_array_end>
   1020a:	ec06                	sd	ra,24(sp)
   1020c:	e426                	sd	s1,8(sp)
   1020e:	40878933          	sub	s2,a5,s0
   10212:	00878b63          	beq	a5,s0,10228 <__libc_init_array+0x34>
   10216:	40395913          	sra	s2,s2,0x3
   1021a:	4481                	li	s1,0
   1021c:	601c                	ld	a5,0(s0)
   1021e:	0485                	add	s1,s1,1
   10220:	0421                	add	s0,s0,8
   10222:	9782                	jalr	a5
   10224:	ff24ece3          	bltu	s1,s2,1021c <__libc_init_array+0x28>
   10228:	0000e797          	auipc	a5,0xe
   1022c:	75078793          	add	a5,a5,1872 # 1e978 <__do_global_dtors_aux_fini_array_entry>
   10230:	0000e417          	auipc	s0,0xe
   10234:	73840413          	add	s0,s0,1848 # 1e968 <__init_array_start>
   10238:	40878933          	sub	s2,a5,s0
   1023c:	40395913          	sra	s2,s2,0x3
   10240:	00878963          	beq	a5,s0,10252 <__libc_init_array+0x5e>
   10244:	4481                	li	s1,0
   10246:	601c                	ld	a5,0(s0)
   10248:	0485                	add	s1,s1,1
   1024a:	0421                	add	s0,s0,8
   1024c:	9782                	jalr	a5
   1024e:	ff24ece3          	bltu	s1,s2,10246 <__libc_init_array+0x52>
   10252:	60e2                	ld	ra,24(sp)
   10254:	6442                	ld	s0,16(sp)
   10256:	64a2                	ld	s1,8(sp)
   10258:	6902                	ld	s2,0(sp)
   1025a:	6105                	add	sp,sp,32
   1025c:	8082                	ret

000000000001025e <memset>:
   1025e:	433d                	li	t1,15
   10260:	872a                	mv	a4,a0
   10262:	02c37163          	bgeu	t1,a2,10284 <memset+0x26>
   10266:	00f77793          	and	a5,a4,15
   1026a:	e3c1                	bnez	a5,102ea <memset+0x8c>
   1026c:	e1bd                	bnez	a1,102d2 <memset+0x74>
   1026e:	ff067693          	and	a3,a2,-16
   10272:	8a3d                	and	a2,a2,15
   10274:	96ba                	add	a3,a3,a4
   10276:	e30c                	sd	a1,0(a4)
   10278:	e70c                	sd	a1,8(a4)
   1027a:	0741                	add	a4,a4,16
   1027c:	fed76de3          	bltu	a4,a3,10276 <memset+0x18>
   10280:	e211                	bnez	a2,10284 <memset+0x26>
   10282:	8082                	ret
   10284:	40c306b3          	sub	a3,t1,a2
   10288:	068a                	sll	a3,a3,0x2
   1028a:	00000297          	auipc	t0,0x0
   1028e:	9696                	add	a3,a3,t0
   10290:	00a68067          	jr	10(a3)
   10294:	00b70723          	sb	a1,14(a4)
   10298:	00b706a3          	sb	a1,13(a4)
   1029c:	00b70623          	sb	a1,12(a4)
   102a0:	00b705a3          	sb	a1,11(a4)
   102a4:	00b70523          	sb	a1,10(a4)
   102a8:	00b704a3          	sb	a1,9(a4)
   102ac:	00b70423          	sb	a1,8(a4)
   102b0:	00b703a3          	sb	a1,7(a4)
   102b4:	00b70323          	sb	a1,6(a4)
   102b8:	00b702a3          	sb	a1,5(a4)
   102bc:	00b70223          	sb	a1,4(a4)
   102c0:	00b701a3          	sb	a1,3(a4)
   102c4:	00b70123          	sb	a1,2(a4)
   102c8:	00b700a3          	sb	a1,1(a4)
   102cc:	00b70023          	sb	a1,0(a4)
   102d0:	8082                	ret
   102d2:	0ff5f593          	zext.b	a1,a1
   102d6:	00859693          	sll	a3,a1,0x8
   102da:	8dd5                	or	a1,a1,a3
   102dc:	01059693          	sll	a3,a1,0x10
   102e0:	8dd5                	or	a1,a1,a3
   102e2:	02059693          	sll	a3,a1,0x20
   102e6:	8dd5                	or	a1,a1,a3
   102e8:	b759                	j	1026e <memset+0x10>
   102ea:	00279693          	sll	a3,a5,0x2
   102ee:	00000297          	auipc	t0,0x0
   102f2:	9696                	add	a3,a3,t0
   102f4:	8286                	mv	t0,ra
   102f6:	fa2680e7          	jalr	-94(a3)
   102fa:	8096                	mv	ra,t0
   102fc:	17c1                	add	a5,a5,-16
   102fe:	8f1d                	sub	a4,a4,a5
   10300:	963e                	add	a2,a2,a5
   10302:	f8c371e3          	bgeu	t1,a2,10284 <memset+0x26>
   10306:	b79d                	j	1026c <memset+0xe>

0000000000010308 <_printf_r>:
   10308:	715d                	add	sp,sp,-80
   1030a:	f032                	sd	a2,32(sp)
   1030c:	f436                	sd	a3,40(sp)
   1030e:	f83a                	sd	a4,48(sp)
   10310:	fc3e                	sd	a5,56(sp)
   10312:	e0c2                	sd	a6,64(sp)
   10314:	e4c6                	sd	a7,72(sp)
   10316:	862e                	mv	a2,a1
   10318:	690c                	ld	a1,16(a0)
   1031a:	1014                	add	a3,sp,32
   1031c:	ec06                	sd	ra,24(sp)
   1031e:	e436                	sd	a3,8(sp)
   10320:	036000ef          	jal	10356 <_vfprintf_r>
   10324:	60e2                	ld	ra,24(sp)
   10326:	6161                	add	sp,sp,80
   10328:	8082                	ret

000000000001032a <printf>:
   1032a:	711d                	add	sp,sp,-96
   1032c:	f832                	sd	a2,48(sp)
   1032e:	fc36                	sd	a3,56(sp)
   10330:	7581b303          	ld	t1,1880(gp) # 1fac8 <_impure_ptr>
   10334:	f42e                	sd	a1,40(sp)
   10336:	e0ba                	sd	a4,64(sp)
   10338:	e4be                	sd	a5,72(sp)
   1033a:	e8c2                	sd	a6,80(sp)
   1033c:	ecc6                	sd	a7,88(sp)
   1033e:	01033583          	ld	a1,16(t1) # 101b2 <main+0x6>
   10342:	1034                	add	a3,sp,40
   10344:	862a                	mv	a2,a0
   10346:	851a                	mv	a0,t1
   10348:	ec06                	sd	ra,24(sp)
   1034a:	e436                	sd	a3,8(sp)
   1034c:	00a000ef          	jal	10356 <_vfprintf_r>
   10350:	60e2                	ld	ra,24(sp)
   10352:	6125                	add	sp,sp,96
   10354:	8082                	ret

0000000000010356 <_vfprintf_r>:
   10356:	d9010113          	add	sp,sp,-624
   1035a:	26113423          	sd	ra,616(sp)
   1035e:	26813023          	sd	s0,608(sp)
   10362:	25213823          	sd	s2,592(sp)
   10366:	e02e                	sd	a1,0(sp)
   10368:	8932                	mv	s2,a2
   1036a:	ec36                	sd	a3,24(sp)
   1036c:	24913c23          	sd	s1,600(sp)
   10370:	25313423          	sd	s3,584(sp)
   10374:	25413023          	sd	s4,576(sp)
   10378:	23513c23          	sd	s5,568(sp)
   1037c:	23613823          	sd	s6,560(sp)
   10380:	23713423          	sd	s7,552(sp)
   10384:	23813023          	sd	s8,544(sp)
   10388:	21913c23          	sd	s9,536(sp)
   1038c:	21a13823          	sd	s10,528(sp)
   10390:	21b13423          	sd	s11,520(sp)
   10394:	842a                	mv	s0,a0
   10396:	e0aa                	sd	a0,64(sp)
   10398:	06f040ef          	jal	14c06 <_localeconv_r>
   1039c:	611c                	ld	a5,0(a0)
   1039e:	853e                	mv	a0,a5
   103a0:	e8be                	sd	a5,80(sp)
   103a2:	038060ef          	jal	163da <strlen>
   103a6:	e4aa                	sd	a0,72(sp)
   103a8:	f982                	sd	zero,240(sp)
   103aa:	fd82                	sd	zero,248(sp)
   103ac:	c401                	beqz	s0,103b4 <_vfprintf_r+0x5e>
   103ae:	4838                	lw	a4,80(s0)
   103b0:	46070e63          	beqz	a4,1082c <_vfprintf_r+0x4d6>
   103b4:	6782                	ld	a5,0(sp)
   103b6:	01079703          	lh	a4,16(a5)
   103ba:	03271693          	sll	a3,a4,0x32
   103be:	0206c163          	bltz	a3,103e0 <_vfprintf_r+0x8a>
   103c2:	0ac7a683          	lw	a3,172(a5)
   103c6:	6609                	lui	a2,0x2
   103c8:	8f51                	or	a4,a4,a2
   103ca:	7679                	lui	a2,0xffffe
   103cc:	0107171b          	sllw	a4,a4,0x10
   103d0:	167d                	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde48f>
   103d2:	4107571b          	sraw	a4,a4,0x10
   103d6:	8ef1                	and	a3,a3,a2
   103d8:	00e79823          	sh	a4,16(a5)
   103dc:	0ad7a623          	sw	a3,172(a5)
   103e0:	00877693          	and	a3,a4,8
   103e4:	24068f63          	beqz	a3,10642 <_vfprintf_r+0x2ec>
   103e8:	6782                	ld	a5,0(sp)
   103ea:	6f94                	ld	a3,24(a5)
   103ec:	24068b63          	beqz	a3,10642 <_vfprintf_r+0x2ec>
   103f0:	8b69                	and	a4,a4,26
   103f2:	46a9                	li	a3,10
   103f4:	26d70563          	beq	a4,a3,1065e <_vfprintf_r+0x308>
   103f8:	8aca                	mv	s5,s2
   103fa:	000ac703          	lbu	a4,0(s5)
   103fe:	031c                	add	a5,sp,384
   10400:	e23e                	sd	a5,256(sp)
   10402:	ea02                	sd	zero,272(sp)
   10404:	10012423          	sw	zero,264(sp)
   10408:	f402                	sd	zero,40(sp)
   1040a:	ec82                	sd	zero,88(sp)
   1040c:	f082                	sd	zero,96(sp)
   1040e:	f482                	sd	zero,104(sp)
   10410:	f882                	sd	zero,112(sp)
   10412:	fc82                	sd	zero,120(sp)
   10414:	e402                	sd	zero,8(sp)
   10416:	6486                	ld	s1,64(sp)
   10418:	4dc1                	li	s11,16
   1041a:	843e                	mv	s0,a5
   1041c:	1c070363          	beqz	a4,105e2 <_vfprintf_r+0x28c>
   10420:	89d6                	mv	s3,s5
   10422:	02500693          	li	a3,37
   10426:	24d70963          	beq	a4,a3,10678 <_vfprintf_r+0x322>
   1042a:	0019c703          	lbu	a4,1(s3)
   1042e:	0985                	add	s3,s3,1
   10430:	fb7d                	bnez	a4,10426 <_vfprintf_r+0xd0>
   10432:	41598b3b          	subw	s6,s3,s5
   10436:	1a0b0663          	beqz	s6,105e2 <_vfprintf_r+0x28c>
   1043a:	10812703          	lw	a4,264(sp)
   1043e:	6d52                	ld	s10,272(sp)
   10440:	01543023          	sd	s5,0(s0)
   10444:	0017069b          	addw	a3,a4,1
   10448:	9d5a                	add	s10,s10,s6
   1044a:	01643423          	sd	s6,8(s0)
   1044e:	ea6a                	sd	s10,272(sp)
   10450:	10d12423          	sw	a3,264(sp)
   10454:	471d                	li	a4,7
   10456:	0441                	add	s0,s0,16
   10458:	22d74763          	blt	a4,a3,10686 <_vfprintf_r+0x330>
   1045c:	67a2                	ld	a5,8(sp)
   1045e:	0009c703          	lbu	a4,0(s3)
   10462:	016787bb          	addw	a5,a5,s6
   10466:	e43e                	sd	a5,8(sp)
   10468:	16070d63          	beqz	a4,105e2 <_vfprintf_r+0x28c>
   1046c:	5e7d                	li	t3,-1
   1046e:	0019ce83          	lbu	t4,1(s3)
   10472:	0c0107a3          	sb	zero,207(sp)
   10476:	0985                	add	s3,s3,1
   10478:	4b81                	li	s7,0
   1047a:	4901                	li	s2,0
   1047c:	05a00b13          	li	s6,90
   10480:	8a72                	mv	s4,t3
   10482:	0985                	add	s3,s3,1
   10484:	2e81                	sext.w	t4,t4
   10486:	fe0e879b          	addw	a5,t4,-32
   1048a:	0007871b          	sext.w	a4,a5
   1048e:	04eb6963          	bltu	s6,a4,104e0 <_vfprintf_r+0x18a>
   10492:	02079713          	sll	a4,a5,0x20
   10496:	01e75793          	srl	a5,a4,0x1e
   1049a:	0000c717          	auipc	a4,0xc
   1049e:	63270713          	add	a4,a4,1586 # 1cacc <__clzdi2+0xae>
   104a2:	97ba                	add	a5,a5,a4
   104a4:	439c                	lw	a5,0(a5)
   104a6:	97ba                	add	a5,a5,a4
   104a8:	8782                	jr	a5
   104aa:	4b81                	li	s7,0
   104ac:	46a5                	li	a3,9
   104ae:	0009c703          	lbu	a4,0(s3)
   104b2:	002b979b          	sllw	a5,s7,0x2
   104b6:	01778bbb          	addw	s7,a5,s7
   104ba:	fd0e8e9b          	addw	t4,t4,-48
   104be:	001b9b9b          	sllw	s7,s7,0x1
   104c2:	fd07079b          	addw	a5,a4,-48
   104c6:	017e8bbb          	addw	s7,t4,s7
   104ca:	0985                	add	s3,s3,1
   104cc:	00070e9b          	sext.w	t4,a4
   104d0:	fcf6ffe3          	bgeu	a3,a5,104ae <_vfprintf_r+0x158>
   104d4:	fe0e879b          	addw	a5,t4,-32
   104d8:	0007871b          	sext.w	a4,a5
   104dc:	faeb7be3          	bgeu	s6,a4,10492 <_vfprintf_r+0x13c>
   104e0:	100e8163          	beqz	t4,105e2 <_vfprintf_r+0x28c>
   104e4:	11d10c23          	sb	t4,280(sp)
   104e8:	0c0107a3          	sb	zero,207(sp)
   104ec:	4b05                	li	s6,1
   104ee:	4c85                	li	s9,1
   104f0:	11810a93          	add	s5,sp,280
   104f4:	e802                	sd	zero,16(sp)
   104f6:	4e01                	li	t3,0
   104f8:	fc02                	sd	zero,56(sp)
   104fa:	f802                	sd	zero,48(sp)
   104fc:	f002                	sd	zero,32(sp)
   104fe:	00297293          	and	t0,s2,2
   10502:	00028363          	beqz	t0,10508 <_vfprintf_r+0x1b2>
   10506:	2b09                	addw	s6,s6,2
   10508:	08497c13          	and	s8,s2,132
   1050c:	000c1663          	bnez	s8,10518 <_vfprintf_r+0x1c2>
   10510:	416b8d3b          	subw	s10,s7,s6
   10514:	05a04ae3          	bgtz	s10,10d68 <_vfprintf_r+0xa12>
   10518:	0cf14603          	lbu	a2,207(sp)
   1051c:	6d52                	ld	s10,272(sp)
   1051e:	c21d                	beqz	a2,10544 <_vfprintf_r+0x1ee>
   10520:	10812603          	lw	a2,264(sp)
   10524:	0cf10593          	add	a1,sp,207
   10528:	e00c                	sd	a1,0(s0)
   1052a:	2605                	addw	a2,a2,1
   1052c:	4585                	li	a1,1
   1052e:	0d05                	add	s10,s10,1
   10530:	e40c                	sd	a1,8(s0)
   10532:	10c12423          	sw	a2,264(sp)
   10536:	0006059b          	sext.w	a1,a2
   1053a:	ea6a                	sd	s10,272(sp)
   1053c:	461d                	li	a2,7
   1053e:	0441                	add	s0,s0,16
   10540:	20b64963          	blt	a2,a1,10752 <_vfprintf_r+0x3fc>
   10544:	02028363          	beqz	t0,1056a <_vfprintf_r+0x214>
   10548:	10812603          	lw	a2,264(sp)
   1054c:	4589                	li	a1,2
   1054e:	0d09                	add	s10,s10,2
   10550:	2605                	addw	a2,a2,1
   10552:	099c                	add	a5,sp,208
   10554:	e40c                	sd	a1,8(s0)
   10556:	e01c                	sd	a5,0(s0)
   10558:	0006059b          	sext.w	a1,a2
   1055c:	10c12423          	sw	a2,264(sp)
   10560:	ea6a                	sd	s10,272(sp)
   10562:	461d                	li	a2,7
   10564:	0441                	add	s0,s0,16
   10566:	0cb64ae3          	blt	a2,a1,10e3a <_vfprintf_r+0xae4>
   1056a:	08000613          	li	a2,128
   1056e:	6acc0d63          	beq	s8,a2,10c28 <_vfprintf_r+0x8d2>
   10572:	419e0a3b          	subw	s4,t3,s9
   10576:	75404863          	bgtz	s4,10cc6 <_vfprintf_r+0x970>
   1057a:	10097613          	and	a2,s2,256
   1057e:	54061f63          	bnez	a2,10adc <_vfprintf_r+0x786>
   10582:	10812583          	lw	a1,264(sp)
   10586:	01ac8633          	add	a2,s9,s10
   1058a:	01543023          	sd	s5,0(s0)
   1058e:	0015869b          	addw	a3,a1,1
   10592:	01943423          	sd	s9,8(s0)
   10596:	ea32                	sd	a2,272(sp)
   10598:	10d12423          	sw	a3,264(sp)
   1059c:	479d                	li	a5,7
   1059e:	26d7cd63          	blt	a5,a3,10818 <_vfprintf_r+0x4c2>
   105a2:	0441                	add	s0,s0,16
   105a4:	00497913          	and	s2,s2,4
   105a8:	00090663          	beqz	s2,105b4 <_vfprintf_r+0x25e>
   105ac:	416b893b          	subw	s2,s7,s6
   105b0:	0b2043e3          	bgtz	s2,10e56 <_vfprintf_r+0xb00>
   105b4:	87de                	mv	a5,s7
   105b6:	016bd363          	bge	s7,s6,105bc <_vfprintf_r+0x266>
   105ba:	87da                	mv	a5,s6
   105bc:	6722                	ld	a4,8(sp)
   105be:	9fb9                	addw	a5,a5,a4
   105c0:	e43e                	sd	a5,8(sp)
   105c2:	78061563          	bnez	a2,10d4c <_vfprintf_r+0x9f6>
   105c6:	67c2                	ld	a5,16(sp)
   105c8:	10012423          	sw	zero,264(sp)
   105cc:	c789                	beqz	a5,105d6 <_vfprintf_r+0x280>
   105ce:	65c2                	ld	a1,16(sp)
   105d0:	8526                	mv	a0,s1
   105d2:	198020ef          	jal	1276a <_free_r>
   105d6:	0300                	add	s0,sp,384
   105d8:	8ace                	mv	s5,s3
   105da:	000ac703          	lbu	a4,0(s5)
   105de:	e40711e3          	bnez	a4,10420 <_vfprintf_r+0xca>
   105e2:	67d2                	ld	a5,272(sp)
   105e4:	c399                	beqz	a5,105ea <_vfprintf_r+0x294>
   105e6:	3600106f          	j	11946 <_vfprintf_r+0x15f0>
   105ea:	6782                	ld	a5,0(sp)
   105ec:	0107d783          	lhu	a5,16(a5)
   105f0:	0407f793          	and	a5,a5,64
   105f4:	c399                	beqz	a5,105fa <_vfprintf_r+0x2a4>
   105f6:	77e0106f          	j	11d74 <_vfprintf_r+0x1a1e>
   105fa:	26813083          	ld	ra,616(sp)
   105fe:	26013403          	ld	s0,608(sp)
   10602:	6522                	ld	a0,8(sp)
   10604:	25813483          	ld	s1,600(sp)
   10608:	25013903          	ld	s2,592(sp)
   1060c:	24813983          	ld	s3,584(sp)
   10610:	24013a03          	ld	s4,576(sp)
   10614:	23813a83          	ld	s5,568(sp)
   10618:	23013b03          	ld	s6,560(sp)
   1061c:	22813b83          	ld	s7,552(sp)
   10620:	22013c03          	ld	s8,544(sp)
   10624:	21813c83          	ld	s9,536(sp)
   10628:	21013d03          	ld	s10,528(sp)
   1062c:	20813d83          	ld	s11,520(sp)
   10630:	27010113          	add	sp,sp,624
   10634:	8082                	ret
   10636:	01096913          	or	s2,s2,16
   1063a:	0009ce83          	lbu	t4,0(s3)
   1063e:	2901                	sext.w	s2,s2
   10640:	b589                	j	10482 <_vfprintf_r+0x12c>
   10642:	6582                	ld	a1,0(sp)
   10644:	6506                	ld	a0,64(sp)
   10646:	1df010ef          	jal	12024 <__swsetup_r>
   1064a:	c119                	beqz	a0,10650 <_vfprintf_r+0x2fa>
   1064c:	7280106f          	j	11d74 <_vfprintf_r+0x1a1e>
   10650:	6782                	ld	a5,0(sp)
   10652:	46a9                	li	a3,10
   10654:	01079703          	lh	a4,16(a5)
   10658:	8b69                	and	a4,a4,26
   1065a:	d8d71fe3          	bne	a4,a3,103f8 <_vfprintf_r+0xa2>
   1065e:	6782                	ld	a5,0(sp)
   10660:	01279703          	lh	a4,18(a5)
   10664:	d8074ae3          	bltz	a4,103f8 <_vfprintf_r+0xa2>
   10668:	66e2                	ld	a3,24(sp)
   1066a:	6506                	ld	a0,64(sp)
   1066c:	864a                	mv	a2,s2
   1066e:	85be                	mv	a1,a5
   10670:	119010ef          	jal	11f88 <__sbprintf>
   10674:	e42a                	sd	a0,8(sp)
   10676:	b751                	j	105fa <_vfprintf_r+0x2a4>
   10678:	41598b3b          	subw	s6,s3,s5
   1067c:	da0b1fe3          	bnez	s6,1043a <_vfprintf_r+0xe4>
   10680:	0009c703          	lbu	a4,0(s3)
   10684:	b3d5                	j	10468 <_vfprintf_r+0x112>
   10686:	6582                	ld	a1,0(sp)
   10688:	0210                	add	a2,sp,256
   1068a:	8526                	mv	a0,s1
   1068c:	2ef070ef          	jal	1817a <__sprint_r>
   10690:	fd29                	bnez	a0,105ea <_vfprintf_r+0x294>
   10692:	0300                	add	s0,sp,384
   10694:	b3e1                	j	1045c <_vfprintf_r+0x106>
   10696:	00897713          	and	a4,s2,8
   1069a:	8e52                	mv	t3,s4
   1069c:	300711e3          	bnez	a4,1119e <_vfprintf_r+0xe48>
   106a0:	67e2                	ld	a5,24(sp)
   106a2:	f052                	sd	s4,32(sp)
   106a4:	e876                	sd	t4,16(sp)
   106a6:	2388                	fld	fa0,0(a5)
   106a8:	00878a13          	add	s4,a5,8
   106ac:	ec52                	sd	s4,24(sp)
   106ae:	02e0c0ef          	jal	1c6dc <__extenddftf2>
   106b2:	7e02                	ld	t3,32(sp)
   106b4:	6ec2                	ld	t4,16(sp)
   106b6:	872a                	mv	a4,a0
   106b8:	1988                	add	a0,sp,240
   106ba:	f072                	sd	t3,32(sp)
   106bc:	e876                	sd	t4,16(sp)
   106be:	f9ba                	sd	a4,240(sp)
   106c0:	fdae                	sd	a1,248(sp)
   106c2:	4fc040ef          	jal	14bbe <_ldcheck>
   106c6:	cdaa                	sw	a0,216(sp)
   106c8:	4709                	li	a4,2
   106ca:	6ec2                	ld	t4,16(sp)
   106cc:	7e02                	ld	t3,32(sp)
   106ce:	56e503e3          	beq	a0,a4,11434 <_vfprintf_r+0x10de>
   106d2:	4705                	li	a4,1
   106d4:	66e50fe3          	beq	a0,a4,11552 <_vfprintf_r+0x11fc>
   106d8:	06100713          	li	a4,97
   106dc:	00ee9463          	bne	t4,a4,106e4 <_vfprintf_r+0x38e>
   106e0:	53e0106f          	j	11c1e <_vfprintf_r+0x18c8>
   106e4:	04100713          	li	a4,65
   106e8:	00ee9463          	bne	t4,a4,106f0 <_vfprintf_r+0x39a>
   106ec:	2880106f          	j	11974 <_vfprintf_r+0x161e>
   106f0:	577d                	li	a4,-1
   106f2:	00ee1463          	bne	t3,a4,106fa <_vfprintf_r+0x3a4>
   106f6:	7820106f          	j	11e78 <_vfprintf_r+0x1b22>
   106fa:	fdfef713          	and	a4,t4,-33
   106fe:	04700693          	li	a3,71
   10702:	00d71463          	bne	a4,a3,1070a <_vfprintf_r+0x3b4>
   10706:	7640106f          	j	11e6a <_vfprintf_r+0x1b14>
   1070a:	10096713          	or	a4,s2,256
   1070e:	7b6e                	ld	s6,248(sp)
   10710:	0007079b          	sext.w	a5,a4
   10714:	e13e                	sd	a5,128(sp)
   10716:	f84a                	sd	s2,48(sp)
   10718:	7a4e                	ld	s4,240(sp)
   1071a:	000b5463          	bgez	s6,10722 <_vfprintf_r+0x3cc>
   1071e:	4c00106f          	j	11bde <_vfprintf_r+0x1888>
   10722:	e502                	sd	zero,136(sp)
   10724:	e802                	sd	zero,16(sp)
   10726:	fbfe871b          	addw	a4,t4,-65
   1072a:	0007061b          	sext.w	a2,a4
   1072e:	02500693          	li	a3,37
   10732:	00c6f463          	bgeu	a3,a2,1073a <_vfprintf_r+0x3e4>
   10736:	0360106f          	j	1176c <_vfprintf_r+0x1416>
   1073a:	02071613          	sll	a2,a4,0x20
   1073e:	0000c697          	auipc	a3,0xc
   10742:	4fa68693          	add	a3,a3,1274 # 1cc38 <__clzdi2+0x21a>
   10746:	01e65713          	srl	a4,a2,0x1e
   1074a:	9736                	add	a4,a4,a3
   1074c:	4318                	lw	a4,0(a4)
   1074e:	9736                	add	a4,a4,a3
   10750:	8702                	jr	a4
   10752:	6582                	ld	a1,0(sp)
   10754:	0210                	add	a2,sp,256
   10756:	8526                	mv	a0,s1
   10758:	e972                	sd	t3,144(sp)
   1075a:	e576                	sd	t4,136(sp)
   1075c:	e116                	sd	t0,128(sp)
   1075e:	21d070ef          	jal	1817a <__sprint_r>
   10762:	5e051c63          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10766:	6d52                	ld	s10,272(sp)
   10768:	6e4a                	ld	t3,144(sp)
   1076a:	6eaa                	ld	t4,136(sp)
   1076c:	628a                	ld	t0,128(sp)
   1076e:	0300                	add	s0,sp,384
   10770:	bbd1                	j	10544 <_vfprintf_r+0x1ee>
   10772:	77a2                	ld	a5,40(sp)
   10774:	4685                	li	a3,1
   10776:	01040c13          	add	s8,s0,16
   1077a:	08f6d5e3          	bge	a3,a5,11004 <_vfprintf_r+0xcae>
   1077e:	10812583          	lw	a1,264(sp)
   10782:	4685                	li	a3,1
   10784:	0d05                	add	s10,s10,1
   10786:	2585                	addw	a1,a1,1
   10788:	e414                	sd	a3,8(s0)
   1078a:	01543023          	sd	s5,0(s0)
   1078e:	ea6a                	sd	s10,272(sp)
   10790:	0005869b          	sext.w	a3,a1
   10794:	10b12423          	sw	a1,264(sp)
   10798:	461d                	li	a2,7
   1079a:	36d640e3          	blt	a2,a3,112fa <_vfprintf_r+0xfa4>
   1079e:	67a6                	ld	a5,72(sp)
   107a0:	6746                	ld	a4,80(sp)
   107a2:	0016841b          	addw	s0,a3,1
   107a6:	01a78cb3          	add	s9,a5,s10
   107aa:	00ec3023          	sd	a4,0(s8)
   107ae:	00fc3423          	sd	a5,8(s8)
   107b2:	ea66                	sd	s9,272(sp)
   107b4:	10812423          	sw	s0,264(sp)
   107b8:	469d                	li	a3,7
   107ba:	0c41                	add	s8,s8,16
   107bc:	3486cde3          	blt	a3,s0,11316 <_vfprintf_r+0xfc0>
   107c0:	754e                	ld	a0,240(sp)
   107c2:	75ee                	ld	a1,248(sp)
   107c4:	4601                	li	a2,0
   107c6:	4681                	li	a3,0
   107c8:	4bb0a0ef          	jal	1b482 <__eqtf2>
   107cc:	77a2                	ld	a5,40(sp)
   107ce:	fff78a1b          	addw	s4,a5,-1
   107d2:	06050ce3          	beqz	a0,1104a <_vfprintf_r+0xcf4>
   107d6:	001a8793          	add	a5,s5,1
   107da:	2405                	addw	s0,s0,1
   107dc:	9cd2                	add	s9,s9,s4
   107de:	00fc3023          	sd	a5,0(s8)
   107e2:	014c3423          	sd	s4,8(s8)
   107e6:	ea66                	sd	s9,272(sp)
   107e8:	10812423          	sw	s0,264(sp)
   107ec:	479d                	li	a5,7
   107ee:	0487c0e3          	blt	a5,s0,1102e <_vfprintf_r+0xcd8>
   107f2:	0c41                	add	s8,s8,16
   107f4:	7706                	ld	a4,96(sp)
   107f6:	0014069b          	addw	a3,s0,1
   107fa:	119c                	add	a5,sp,224
   107fc:	01970633          	add	a2,a4,s9
   10800:	00fc3023          	sd	a5,0(s8)
   10804:	00ec3423          	sd	a4,8(s8)
   10808:	ea32                	sd	a2,272(sp)
   1080a:	10d12423          	sw	a3,264(sp)
   1080e:	479d                	li	a5,7
   10810:	010c0413          	add	s0,s8,16
   10814:	d8d7d8e3          	bge	a5,a3,105a4 <_vfprintf_r+0x24e>
   10818:	6582                	ld	a1,0(sp)
   1081a:	0210                	add	a2,sp,256
   1081c:	8526                	mv	a0,s1
   1081e:	15d070ef          	jal	1817a <__sprint_r>
   10822:	52051c63          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10826:	6652                	ld	a2,272(sp)
   10828:	0300                	add	s0,sp,384
   1082a:	bbad                	j	105a4 <_vfprintf_r+0x24e>
   1082c:	6506                	ld	a0,64(sp)
   1082e:	605010ef          	jal	12632 <__sinit>
   10832:	b649                	j	103b4 <_vfprintf_r+0x5e>
   10834:	6762                	ld	a4,24(sp)
   10836:	0c0107a3          	sb	zero,207(sp)
   1083a:	4b05                	li	s6,1
   1083c:	431c                	lw	a5,0(a4)
   1083e:	0721                	add	a4,a4,8
   10840:	ec3a                	sd	a4,24(sp)
   10842:	10f10c23          	sb	a5,280(sp)
   10846:	4c85                	li	s9,1
   10848:	11810a93          	add	s5,sp,280
   1084c:	b165                	j	104f4 <_vfprintf_r+0x19e>
   1084e:	67e2                	ld	a5,24(sp)
   10850:	0c0107a3          	sb	zero,207(sp)
   10854:	8e52                	mv	t3,s4
   10856:	0007ba83          	ld	s5,0(a5)
   1085a:	00878a13          	add	s4,a5,8
   1085e:	200a8ee3          	beqz	s5,1127a <_vfprintf_r+0xf24>
   10862:	577d                	li	a4,-1
   10864:	40ee09e3          	beq	t3,a4,11476 <_vfprintf_r+0x1120>
   10868:	8672                	mv	a2,t3
   1086a:	4581                	li	a1,0
   1086c:	8556                	mv	a0,s5
   1086e:	f076                	sd	t4,32(sp)
   10870:	ec72                	sd	t3,24(sp)
   10872:	335040ef          	jal	153a6 <memchr>
   10876:	e82a                	sd	a0,16(sp)
   10878:	6e62                	ld	t3,24(sp)
   1087a:	7e82                	ld	t4,32(sp)
   1087c:	e119                	bnez	a0,10882 <_vfprintf_r+0x52c>
   1087e:	3ce0106f          	j	11c4c <_vfprintf_r+0x18f6>
   10882:	67c2                	ld	a5,16(sp)
   10884:	0cf14603          	lbu	a2,207(sp)
   10888:	ec52                	sd	s4,24(sp)
   1088a:	41578cbb          	subw	s9,a5,s5
   1088e:	fffcc713          	not	a4,s9
   10892:	977d                	sra	a4,a4,0x3f
   10894:	e802                	sd	zero,16(sp)
   10896:	fc02                	sd	zero,56(sp)
   10898:	f802                	sd	zero,48(sp)
   1089a:	f002                	sd	zero,32(sp)
   1089c:	01977b33          	and	s6,a4,s9
   108a0:	4e01                	li	t3,0
   108a2:	c4060ee3          	beqz	a2,104fe <_vfprintf_r+0x1a8>
   108a6:	2b05                	addw	s6,s6,1
   108a8:	b999                	j	104fe <_vfprintf_r+0x1a8>
   108aa:	67e2                	ld	a5,24(sp)
   108ac:	0007ab83          	lw	s7,0(a5)
   108b0:	07a1                	add	a5,a5,8
   108b2:	080bdbe3          	bgez	s7,11148 <_vfprintf_r+0xdf2>
   108b6:	41700bbb          	negw	s7,s7
   108ba:	ec3e                	sd	a5,24(sp)
   108bc:	00496913          	or	s2,s2,4
   108c0:	0009ce83          	lbu	t4,0(s3)
   108c4:	2901                	sext.w	s2,s2
   108c6:	be75                	j	10482 <_vfprintf_r+0x12c>
   108c8:	02b00793          	li	a5,43
   108cc:	0009ce83          	lbu	t4,0(s3)
   108d0:	0cf107a3          	sb	a5,207(sp)
   108d4:	b67d                	j	10482 <_vfprintf_r+0x12c>
   108d6:	08096913          	or	s2,s2,128
   108da:	0009ce83          	lbu	t4,0(s3)
   108de:	2901                	sext.w	s2,s2
   108e0:	b64d                	j	10482 <_vfprintf_r+0x12c>
   108e2:	0009ce83          	lbu	t4,0(s3)
   108e6:	02a00693          	li	a3,42
   108ea:	00198793          	add	a5,s3,1
   108ee:	00de9463          	bne	t4,a3,108f6 <_vfprintf_r+0x5a0>
   108f2:	61c0106f          	j	11f0e <_vfprintf_r+0x1bb8>
   108f6:	fd0e871b          	addw	a4,t4,-48
   108fa:	4625                	li	a2,9
   108fc:	89be                	mv	s3,a5
   108fe:	4a01                	li	s4,0
   10900:	46a5                	li	a3,9
   10902:	b8e662e3          	bltu	a2,a4,10486 <_vfprintf_r+0x130>
   10906:	0009ce83          	lbu	t4,0(s3)
   1090a:	002a179b          	sllw	a5,s4,0x2
   1090e:	01478e3b          	addw	t3,a5,s4
   10912:	001e1e1b          	sllw	t3,t3,0x1
   10916:	00ee0a3b          	addw	s4,t3,a4
   1091a:	fd0e871b          	addw	a4,t4,-48
   1091e:	0985                	add	s3,s3,1
   10920:	fee6f3e3          	bgeu	a3,a4,10906 <_vfprintf_r+0x5b0>
   10924:	b68d                	j	10486 <_vfprintf_r+0x130>
   10926:	8526                	mv	a0,s1
   10928:	2de040ef          	jal	14c06 <_localeconv_r>
   1092c:	651c                	ld	a5,8(a0)
   1092e:	853e                	mv	a0,a5
   10930:	fcbe                	sd	a5,120(sp)
   10932:	2a9050ef          	jal	163da <strlen>
   10936:	87aa                	mv	a5,a0
   10938:	8526                	mv	a0,s1
   1093a:	8c3e                	mv	s8,a5
   1093c:	f8be                	sd	a5,112(sp)
   1093e:	2c8040ef          	jal	14c06 <_localeconv_r>
   10942:	691c                	ld	a5,16(a0)
   10944:	0009ce83          	lbu	t4,0(s3)
   10948:	f4be                	sd	a5,104(sp)
   1094a:	b20c0ce3          	beqz	s8,10482 <_vfprintf_r+0x12c>
   1094e:	b2078ae3          	beqz	a5,10482 <_vfprintf_r+0x12c>
   10952:	0007c783          	lbu	a5,0(a5)
   10956:	b20786e3          	beqz	a5,10482 <_vfprintf_r+0x12c>
   1095a:	40096913          	or	s2,s2,1024
   1095e:	2901                	sext.w	s2,s2
   10960:	b60d                	j	10482 <_vfprintf_r+0x12c>
   10962:	00196913          	or	s2,s2,1
   10966:	0009ce83          	lbu	t4,0(s3)
   1096a:	2901                	sext.w	s2,s2
   1096c:	be19                	j	10482 <_vfprintf_r+0x12c>
   1096e:	0cf14783          	lbu	a5,207(sp)
   10972:	0009ce83          	lbu	t4,0(s3)
   10976:	b00796e3          	bnez	a5,10482 <_vfprintf_r+0x12c>
   1097a:	02000793          	li	a5,32
   1097e:	0cf107a3          	sb	a5,207(sp)
   10982:	b601                	j	10482 <_vfprintf_r+0x12c>
   10984:	01096c13          	or	s8,s2,16
   10988:	8e52                	mv	t3,s4
   1098a:	2c01                	sext.w	s8,s8
   1098c:	66e2                	ld	a3,24(sp)
   1098e:	020c7793          	and	a5,s8,32
   10992:	00868713          	add	a4,a3,8
   10996:	76078d63          	beqz	a5,11110 <_vfprintf_r+0xdba>
   1099a:	0006bb03          	ld	s6,0(a3)
   1099e:	4785                	li	a5,1
   109a0:	ec3a                	sd	a4,24(sp)
   109a2:	4701                	li	a4,0
   109a4:	0ce107a3          	sb	a4,207(sp)
   109a8:	577d                	li	a4,-1
   109aa:	1eee0e63          	beq	t3,a4,10ba6 <_vfprintf_r+0x850>
   109ae:	f7fc7913          	and	s2,s8,-129
   109b2:	2901                	sext.w	s2,s2
   109b4:	1e0b1863          	bnez	s6,10ba4 <_vfprintf_r+0x84e>
   109b8:	220e1b63          	bnez	t3,10bee <_vfprintf_r+0x898>
   109bc:	76079a63          	bnez	a5,11130 <_vfprintf_r+0xdda>
   109c0:	001c7c93          	and	s9,s8,1
   109c4:	17c10a93          	add	s5,sp,380
   109c8:	780c9563          	bnez	s9,11152 <_vfprintf_r+0xdfc>
   109cc:	0cf14603          	lbu	a2,207(sp)
   109d0:	8766                	mv	a4,s9
   109d2:	01ccd363          	bge	s9,t3,109d8 <_vfprintf_r+0x682>
   109d6:	8772                	mv	a4,t3
   109d8:	e802                	sd	zero,16(sp)
   109da:	fc02                	sd	zero,56(sp)
   109dc:	f802                	sd	zero,48(sp)
   109de:	f002                	sd	zero,32(sp)
   109e0:	00070b1b          	sext.w	s6,a4
   109e4:	ec0611e3          	bnez	a2,108a6 <_vfprintf_r+0x550>
   109e8:	be19                	j	104fe <_vfprintf_r+0x1a8>
   109ea:	00896913          	or	s2,s2,8
   109ee:	0009ce83          	lbu	t4,0(s3)
   109f2:	2901                	sext.w	s2,s2
   109f4:	b479                	j	10482 <_vfprintf_r+0x12c>
   109f6:	01096913          	or	s2,s2,16
   109fa:	8e52                	mv	t3,s4
   109fc:	2901                	sext.w	s2,s2
   109fe:	66e2                	ld	a3,24(sp)
   10a00:	02097793          	and	a5,s2,32
   10a04:	00868713          	add	a4,a3,8
   10a08:	6a078d63          	beqz	a5,110c2 <_vfprintf_r+0xd6c>
   10a0c:	629c                	ld	a5,0(a3)
   10a0e:	8b3e                	mv	s6,a5
   10a10:	6c07ca63          	bltz	a5,110e4 <_vfprintf_r+0xd8e>
   10a14:	57fd                	li	a5,-1
   10a16:	40fe0463          	beq	t3,a5,10e1e <_vfprintf_r+0xac8>
   10a1a:	f7f97c13          	and	s8,s2,-129
   10a1e:	2c01                	sext.w	s8,s8
   10a20:	200b18e3          	bnez	s6,11430 <_vfprintf_r+0x10da>
   10a24:	000e0463          	beqz	t3,10a2c <_vfprintf_r+0x6d6>
   10a28:	4560106f          	j	11e7e <_vfprintf_r+0x1b28>
   10a2c:	4c81                	li	s9,0
   10a2e:	ec3a                	sd	a4,24(sp)
   10a30:	8962                	mv	s2,s8
   10a32:	17c10a93          	add	s5,sp,380
   10a36:	bf59                	j	109cc <_vfprintf_r+0x676>
   10a38:	01096913          	or	s2,s2,16
   10a3c:	8e52                	mv	t3,s4
   10a3e:	2901                	sext.w	s2,s2
   10a40:	66e2                	ld	a3,24(sp)
   10a42:	02097793          	and	a5,s2,32
   10a46:	00868713          	add	a4,a3,8
   10a4a:	6a078563          	beqz	a5,110f4 <_vfprintf_r+0xd9e>
   10a4e:	0006bb03          	ld	s6,0(a3)
   10a52:	bff97c13          	and	s8,s2,-1025
   10a56:	2c01                	sext.w	s8,s8
   10a58:	ec3a                	sd	a4,24(sp)
   10a5a:	4781                	li	a5,0
   10a5c:	b799                	j	109a2 <_vfprintf_r+0x64c>
   10a5e:	02096913          	or	s2,s2,32
   10a62:	0009ce83          	lbu	t4,0(s3)
   10a66:	2901                	sext.w	s2,s2
   10a68:	bc29                	j	10482 <_vfprintf_r+0x12c>
   10a6a:	6762                	ld	a4,24(sp)
   10a6c:	02097793          	and	a5,s2,32
   10a70:	6318                	ld	a4,0(a4)
   10a72:	70078663          	beqz	a5,1117e <_vfprintf_r+0xe28>
   10a76:	67a2                	ld	a5,8(sp)
   10a78:	e31c                	sd	a5,0(a4)
   10a7a:	67e2                	ld	a5,24(sp)
   10a7c:	8ace                	mv	s5,s3
   10a7e:	07a1                	add	a5,a5,8
   10a80:	ec3e                	sd	a5,24(sp)
   10a82:	bea1                	j	105da <_vfprintf_r+0x284>
   10a84:	0009ce83          	lbu	t4,0(s3)
   10a88:	06c00793          	li	a5,108
   10a8c:	7cfe8f63          	beq	t4,a5,1126a <_vfprintf_r+0xf14>
   10a90:	01096913          	or	s2,s2,16
   10a94:	2901                	sext.w	s2,s2
   10a96:	b2f5                	j	10482 <_vfprintf_r+0x12c>
   10a98:	0009ce83          	lbu	t4,0(s3)
   10a9c:	06800793          	li	a5,104
   10aa0:	78fe8963          	beq	t4,a5,11232 <_vfprintf_r+0xedc>
   10aa4:	04096913          	or	s2,s2,64
   10aa8:	2901                	sext.w	s2,s2
   10aaa:	bae1                	j	10482 <_vfprintf_r+0x12c>
   10aac:	6762                	ld	a4,24(sp)
   10aae:	77e1                	lui	a5,0xffff8
   10ab0:	8307c793          	xor	a5,a5,-2000
   10ab4:	0cf11823          	sh	a5,208(sp)
   10ab8:	00870793          	add	a5,a4,8
   10abc:	00296c13          	or	s8,s2,2
   10ac0:	ec3e                	sd	a5,24(sp)
   10ac2:	0000c797          	auipc	a5,0xc
   10ac6:	fe678793          	add	a5,a5,-26 # 1caa8 <__clzdi2+0x8a>
   10aca:	ecbe                	sd	a5,88(sp)
   10acc:	00073b03          	ld	s6,0(a4)
   10ad0:	8e52                	mv	t3,s4
   10ad2:	2c01                	sext.w	s8,s8
   10ad4:	4789                	li	a5,2
   10ad6:	07800e93          	li	t4,120
   10ada:	b5e1                	j	109a2 <_vfprintf_r+0x64c>
   10adc:	06500693          	li	a3,101
   10ae0:	c9d6d9e3          	bge	a3,t4,10772 <_vfprintf_r+0x41c>
   10ae4:	754e                	ld	a0,240(sp)
   10ae6:	75ee                	ld	a1,248(sp)
   10ae8:	4601                	li	a2,0
   10aea:	4681                	li	a3,0
   10aec:	1970a0ef          	jal	1b482 <__eqtf2>
   10af0:	3e051463          	bnez	a0,10ed8 <_vfprintf_r+0xb82>
   10af4:	10812783          	lw	a5,264(sp)
   10af8:	0000c697          	auipc	a3,0xc
   10afc:	fd068693          	add	a3,a3,-48 # 1cac8 <__clzdi2+0xaa>
   10b00:	e014                	sd	a3,0(s0)
   10b02:	2785                	addw	a5,a5,1
   10b04:	4685                	li	a3,1
   10b06:	0d05                	add	s10,s10,1
   10b08:	e414                	sd	a3,8(s0)
   10b0a:	10f12423          	sw	a5,264(sp)
   10b0e:	0007869b          	sext.w	a3,a5
   10b12:	ea6a                	sd	s10,272(sp)
   10b14:	479d                	li	a5,7
   10b16:	0441                	add	s0,s0,16
   10b18:	0ed7c2e3          	blt	a5,a3,113fc <_vfprintf_r+0x10a6>
   10b1c:	47ee                	lw	a5,216(sp)
   10b1e:	7722                	ld	a4,40(sp)
   10b20:	60e7dc63          	bge	a5,a4,11138 <_vfprintf_r+0xde2>
   10b24:	10812783          	lw	a5,264(sp)
   10b28:	6726                	ld	a4,72(sp)
   10b2a:	66c6                	ld	a3,80(sp)
   10b2c:	0441                	add	s0,s0,16
   10b2e:	01a70633          	add	a2,a4,s10
   10b32:	fed43823          	sd	a3,-16(s0)
   10b36:	0017869b          	addw	a3,a5,1
   10b3a:	fee43c23          	sd	a4,-8(s0)
   10b3e:	ea32                	sd	a2,272(sp)
   10b40:	10d12423          	sw	a3,264(sp)
   10b44:	479d                	li	a5,7
   10b46:	70d7c563          	blt	a5,a3,11250 <_vfprintf_r+0xefa>
   10b4a:	77a2                	ld	a5,40(sp)
   10b4c:	fff78c1b          	addw	s8,a5,-1
   10b50:	a5805ae3          	blez	s8,105a4 <_vfprintf_r+0x24e>
   10b54:	46c1                	li	a3,16
   10b56:	10812783          	lw	a5,264(sp)
   10b5a:	0000cd17          	auipc	s10,0xc
   10b5e:	176d0d13          	add	s10,s10,374 # 1ccd0 <zeroes.0>
   10b62:	0b86d8e3          	bge	a3,s8,11412 <_vfprintf_r+0x10bc>
   10b66:	6a82                	ld	s5,0(sp)
   10b68:	4cc1                	li	s9,16
   10b6a:	4a1d                	li	s4,7
   10b6c:	a021                	j	10b74 <_vfprintf_r+0x81e>
   10b6e:	3c41                	addw	s8,s8,-16
   10b70:	0b8cd1e3          	bge	s9,s8,11412 <_vfprintf_r+0x10bc>
   10b74:	2785                	addw	a5,a5,1
   10b76:	0641                	add	a2,a2,16
   10b78:	01a43023          	sd	s10,0(s0)
   10b7c:	01943423          	sd	s9,8(s0)
   10b80:	ea32                	sd	a2,272(sp)
   10b82:	10f12423          	sw	a5,264(sp)
   10b86:	0441                	add	s0,s0,16
   10b88:	fefa53e3          	bge	s4,a5,10b6e <_vfprintf_r+0x818>
   10b8c:	0210                	add	a2,sp,256
   10b8e:	85d6                	mv	a1,s5
   10b90:	8526                	mv	a0,s1
   10b92:	5e8070ef          	jal	1817a <__sprint_r>
   10b96:	1c051263          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10b9a:	6652                	ld	a2,272(sp)
   10b9c:	10812783          	lw	a5,264(sp)
   10ba0:	0300                	add	s0,sp,384
   10ba2:	b7f1                	j	10b6e <_vfprintf_r+0x818>
   10ba4:	8c4a                	mv	s8,s2
   10ba6:	4705                	li	a4,1
   10ba8:	26e78d63          	beq	a5,a4,10e22 <_vfprintf_r+0xacc>
   10bac:	4709                	li	a4,2
   10bae:	04e78963          	beq	a5,a4,10c00 <_vfprintf_r+0x8aa>
   10bb2:	17c10a13          	add	s4,sp,380
   10bb6:	8ad2                	mv	s5,s4
   10bb8:	007b7713          	and	a4,s6,7
   10bbc:	03070713          	add	a4,a4,48
   10bc0:	feea8fa3          	sb	a4,-1(s5)
   10bc4:	003b5b13          	srl	s6,s6,0x3
   10bc8:	8656                	mv	a2,s5
   10bca:	1afd                	add	s5,s5,-1
   10bcc:	fe0b16e3          	bnez	s6,10bb8 <_vfprintf_r+0x862>
   10bd0:	001c7593          	and	a1,s8,1
   10bd4:	c5b1                	beqz	a1,10c20 <_vfprintf_r+0x8ca>
   10bd6:	03000593          	li	a1,48
   10bda:	04b70363          	beq	a4,a1,10c20 <_vfprintf_r+0x8ca>
   10bde:	1679                	add	a2,a2,-2
   10be0:	feba8fa3          	sb	a1,-1(s5)
   10be4:	40ca0cbb          	subw	s9,s4,a2
   10be8:	8962                	mv	s2,s8
   10bea:	8ab2                	mv	s5,a2
   10bec:	b3c5                	j	109cc <_vfprintf_r+0x676>
   10bee:	4705                	li	a4,1
   10bf0:	00e79463          	bne	a5,a4,10bf8 <_vfprintf_r+0x8a2>
   10bf4:	0c80106f          	j	11cbc <_vfprintf_r+0x1966>
   10bf8:	4709                	li	a4,2
   10bfa:	8c4a                	mv	s8,s2
   10bfc:	fae79be3          	bne	a5,a4,10bb2 <_vfprintf_r+0x85c>
   10c00:	6766                	ld	a4,88(sp)
   10c02:	17c10a13          	add	s4,sp,380
   10c06:	8ad2                	mv	s5,s4
   10c08:	00fb7793          	and	a5,s6,15
   10c0c:	97ba                	add	a5,a5,a4
   10c0e:	0007c783          	lbu	a5,0(a5)
   10c12:	004b5b13          	srl	s6,s6,0x4
   10c16:	1afd                	add	s5,s5,-1
   10c18:	00fa8023          	sb	a5,0(s5)
   10c1c:	fe0b16e3          	bnez	s6,10c08 <_vfprintf_r+0x8b2>
   10c20:	415a0cbb          	subw	s9,s4,s5
   10c24:	8962                	mv	s2,s8
   10c26:	b35d                	j	109cc <_vfprintf_r+0x676>
   10c28:	416b8a3b          	subw	s4,s7,s6
   10c2c:	954053e3          	blez	s4,10572 <_vfprintf_r+0x21c>
   10c30:	4541                	li	a0,16
   10c32:	85ea                	mv	a1,s10
   10c34:	10812603          	lw	a2,264(sp)
   10c38:	0000cd17          	auipc	s10,0xc
   10c3c:	098d0d13          	add	s10,s10,152 # 1ccd0 <zeroes.0>
   10c40:	07455063          	bge	a0,s4,10ca0 <_vfprintf_r+0x94a>
   10c44:	87a2                	mv	a5,s0
   10c46:	48c1                	li	a7,16
   10c48:	8452                	mv	s0,s4
   10c4a:	4c1d                	li	s8,7
   10c4c:	8a4a                	mv	s4,s2
   10c4e:	e176                	sd	t4,128(sp)
   10c50:	896a                	mv	s2,s10
   10c52:	8d56                	mv	s10,s5
   10c54:	8af2                	mv	s5,t3
   10c56:	a021                	j	10c5e <_vfprintf_r+0x908>
   10c58:	3441                	addw	s0,s0,-16
   10c5a:	0288dc63          	bge	a7,s0,10c92 <_vfprintf_r+0x93c>
   10c5e:	2605                	addw	a2,a2,1
   10c60:	05c1                	add	a1,a1,16
   10c62:	0127b023          	sd	s2,0(a5)
   10c66:	0117b423          	sd	a7,8(a5)
   10c6a:	ea2e                	sd	a1,272(sp)
   10c6c:	10c12423          	sw	a2,264(sp)
   10c70:	07c1                	add	a5,a5,16
   10c72:	fecc53e3          	bge	s8,a2,10c58 <_vfprintf_r+0x902>
   10c76:	6582                	ld	a1,0(sp)
   10c78:	0210                	add	a2,sp,256
   10c7a:	8526                	mv	a0,s1
   10c7c:	4fe070ef          	jal	1817a <__sprint_r>
   10c80:	ed69                	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10c82:	48c1                	li	a7,16
   10c84:	3441                	addw	s0,s0,-16
   10c86:	65d2                	ld	a1,272(sp)
   10c88:	10812603          	lw	a2,264(sp)
   10c8c:	031c                	add	a5,sp,384
   10c8e:	fc88c8e3          	blt	a7,s0,10c5e <_vfprintf_r+0x908>
   10c92:	6e8a                	ld	t4,128(sp)
   10c94:	8e56                	mv	t3,s5
   10c96:	8aea                	mv	s5,s10
   10c98:	8d4a                	mv	s10,s2
   10c9a:	8952                	mv	s2,s4
   10c9c:	8a22                	mv	s4,s0
   10c9e:	843e                	mv	s0,a5
   10ca0:	0016051b          	addw	a0,a2,1
   10ca4:	95d2                	add	a1,a1,s4
   10ca6:	01a43023          	sd	s10,0(s0)
   10caa:	01443423          	sd	s4,8(s0)
   10cae:	ea2e                	sd	a1,272(sp)
   10cb0:	10a12423          	sw	a0,264(sp)
   10cb4:	461d                	li	a2,7
   10cb6:	50a64863          	blt	a2,a0,111c6 <_vfprintf_r+0xe70>
   10cba:	419e0a3b          	subw	s4,t3,s9
   10cbe:	0441                	add	s0,s0,16
   10cc0:	8d2e                	mv	s10,a1
   10cc2:	8b405ce3          	blez	s4,1057a <_vfprintf_r+0x224>
   10cc6:	85ea                	mv	a1,s10
   10cc8:	10812603          	lw	a2,264(sp)
   10ccc:	0000cd17          	auipc	s10,0xc
   10cd0:	004d0d13          	add	s10,s10,4 # 1ccd0 <zeroes.0>
   10cd4:	054ddb63          	bge	s11,s4,10d2a <_vfprintf_r+0x9d4>
   10cd8:	87a2                	mv	a5,s0
   10cda:	4c1d                	li	s8,7
   10cdc:	8452                	mv	s0,s4
   10cde:	8a4a                	mv	s4,s2
   10ce0:	8976                	mv	s2,t4
   10ce2:	a021                	j	10cea <_vfprintf_r+0x994>
   10ce4:	3441                	addw	s0,s0,-16
   10ce6:	028dde63          	bge	s11,s0,10d22 <_vfprintf_r+0x9cc>
   10cea:	2605                	addw	a2,a2,1
   10cec:	05c1                	add	a1,a1,16
   10cee:	0000c697          	auipc	a3,0xc
   10cf2:	fe268693          	add	a3,a3,-30 # 1ccd0 <zeroes.0>
   10cf6:	e394                	sd	a3,0(a5)
   10cf8:	01b7b423          	sd	s11,8(a5)
   10cfc:	ea2e                	sd	a1,272(sp)
   10cfe:	10c12423          	sw	a2,264(sp)
   10d02:	07c1                	add	a5,a5,16
   10d04:	fecc50e3          	bge	s8,a2,10ce4 <_vfprintf_r+0x98e>
   10d08:	6582                	ld	a1,0(sp)
   10d0a:	0210                	add	a2,sp,256
   10d0c:	8526                	mv	a0,s1
   10d0e:	46c070ef          	jal	1817a <__sprint_r>
   10d12:	e521                	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10d14:	3441                	addw	s0,s0,-16
   10d16:	65d2                	ld	a1,272(sp)
   10d18:	10812603          	lw	a2,264(sp)
   10d1c:	031c                	add	a5,sp,384
   10d1e:	fc8dc6e3          	blt	s11,s0,10cea <_vfprintf_r+0x994>
   10d22:	8eca                	mv	t4,s2
   10d24:	8952                	mv	s2,s4
   10d26:	8a22                	mv	s4,s0
   10d28:	843e                	mv	s0,a5
   10d2a:	0016051b          	addw	a0,a2,1
   10d2e:	95d2                	add	a1,a1,s4
   10d30:	01a43023          	sd	s10,0(s0)
   10d34:	01443423          	sd	s4,8(s0)
   10d38:	ea2e                	sd	a1,272(sp)
   10d3a:	10a12423          	sw	a0,264(sp)
   10d3e:	461d                	li	a2,7
   10d40:	36a64463          	blt	a2,a0,110a8 <_vfprintf_r+0xd52>
   10d44:	0441                	add	s0,s0,16
   10d46:	8d2e                	mv	s10,a1
   10d48:	833ff06f          	j	1057a <_vfprintf_r+0x224>
   10d4c:	6582                	ld	a1,0(sp)
   10d4e:	0210                	add	a2,sp,256
   10d50:	8526                	mv	a0,s1
   10d52:	428070ef          	jal	1817a <__sprint_r>
   10d56:	860508e3          	beqz	a0,105c6 <_vfprintf_r+0x270>
   10d5a:	65c2                	ld	a1,16(sp)
   10d5c:	880587e3          	beqz	a1,105ea <_vfprintf_r+0x294>
   10d60:	6506                	ld	a0,64(sp)
   10d62:	209010ef          	jal	1276a <_free_r>
   10d66:	b051                	j	105ea <_vfprintf_r+0x294>
   10d68:	4541                	li	a0,16
   10d6a:	65d2                	ld	a1,272(sp)
   10d6c:	10812603          	lw	a2,264(sp)
   10d70:	0000ca17          	auipc	s4,0xc
   10d74:	f70a0a13          	add	s4,s4,-144 # 1cce0 <blanks.1>
   10d78:	07a55563          	bge	a0,s10,10de2 <_vfprintf_r+0xa8c>
   10d7c:	8752                	mv	a4,s4
   10d7e:	87a2                	mv	a5,s0
   10d80:	8a4a                	mv	s4,s2
   10d82:	846a                	mv	s0,s10
   10d84:	4841                	li	a6,16
   10d86:	8d56                	mv	s10,s5
   10d88:	439d                	li	t2,7
   10d8a:	e116                	sd	t0,128(sp)
   10d8c:	e576                	sd	t4,136(sp)
   10d8e:	8af2                	mv	s5,t3
   10d90:	893a                	mv	s2,a4
   10d92:	a021                	j	10d9a <_vfprintf_r+0xa44>
   10d94:	3441                	addw	s0,s0,-16
   10d96:	02885d63          	bge	a6,s0,10dd0 <_vfprintf_r+0xa7a>
   10d9a:	2605                	addw	a2,a2,1
   10d9c:	05c1                	add	a1,a1,16
   10d9e:	0127b023          	sd	s2,0(a5)
   10da2:	0107b423          	sd	a6,8(a5)
   10da6:	ea2e                	sd	a1,272(sp)
   10da8:	10c12423          	sw	a2,264(sp)
   10dac:	07c1                	add	a5,a5,16
   10dae:	fec3d3e3          	bge	t2,a2,10d94 <_vfprintf_r+0xa3e>
   10db2:	6582                	ld	a1,0(sp)
   10db4:	0210                	add	a2,sp,256
   10db6:	8526                	mv	a0,s1
   10db8:	3c2070ef          	jal	1817a <__sprint_r>
   10dbc:	fd59                	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10dbe:	4841                	li	a6,16
   10dc0:	3441                	addw	s0,s0,-16
   10dc2:	65d2                	ld	a1,272(sp)
   10dc4:	10812603          	lw	a2,264(sp)
   10dc8:	031c                	add	a5,sp,384
   10dca:	439d                	li	t2,7
   10dcc:	fc8847e3          	blt	a6,s0,10d9a <_vfprintf_r+0xa44>
   10dd0:	628a                	ld	t0,128(sp)
   10dd2:	6eaa                	ld	t4,136(sp)
   10dd4:	8e56                	mv	t3,s5
   10dd6:	8aea                	mv	s5,s10
   10dd8:	8d22                	mv	s10,s0
   10dda:	843e                	mv	s0,a5
   10ddc:	87ca                	mv	a5,s2
   10dde:	8952                	mv	s2,s4
   10de0:	8a3e                	mv	s4,a5
   10de2:	2605                	addw	a2,a2,1
   10de4:	95ea                	add	a1,a1,s10
   10de6:	01443023          	sd	s4,0(s0)
   10dea:	01a43423          	sd	s10,8(s0)
   10dee:	ea2e                	sd	a1,272(sp)
   10df0:	10c12423          	sw	a2,264(sp)
   10df4:	0006059b          	sext.w	a1,a2
   10df8:	461d                	li	a2,7
   10dfa:	0441                	add	s0,s0,16
   10dfc:	f0b65e63          	bge	a2,a1,10518 <_vfprintf_r+0x1c2>
   10e00:	6582                	ld	a1,0(sp)
   10e02:	0210                	add	a2,sp,256
   10e04:	8526                	mv	a0,s1
   10e06:	e972                	sd	t3,144(sp)
   10e08:	e576                	sd	t4,136(sp)
   10e0a:	e116                	sd	t0,128(sp)
   10e0c:	36e070ef          	jal	1817a <__sprint_r>
   10e10:	f529                	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10e12:	6e4a                	ld	t3,144(sp)
   10e14:	6eaa                	ld	t4,136(sp)
   10e16:	628a                	ld	t0,128(sp)
   10e18:	0300                	add	s0,sp,384
   10e1a:	efeff06f          	j	10518 <_vfprintf_r+0x1c2>
   10e1e:	8c4a                	mv	s8,s2
   10e20:	ec3a                	sd	a4,24(sp)
   10e22:	47a5                	li	a5,9
   10e24:	5167e763          	bltu	a5,s6,11332 <_vfprintf_r+0xfdc>
   10e28:	030b0b1b          	addw	s6,s6,48
   10e2c:	17610da3          	sb	s6,379(sp)
   10e30:	8962                	mv	s2,s8
   10e32:	4c85                	li	s9,1
   10e34:	17b10a93          	add	s5,sp,379
   10e38:	be51                	j	109cc <_vfprintf_r+0x676>
   10e3a:	6582                	ld	a1,0(sp)
   10e3c:	0210                	add	a2,sp,256
   10e3e:	8526                	mv	a0,s1
   10e40:	e572                	sd	t3,136(sp)
   10e42:	e176                	sd	t4,128(sp)
   10e44:	336070ef          	jal	1817a <__sprint_r>
   10e48:	f909                	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10e4a:	6d52                	ld	s10,272(sp)
   10e4c:	6e2a                	ld	t3,136(sp)
   10e4e:	6e8a                	ld	t4,128(sp)
   10e50:	0300                	add	s0,sp,384
   10e52:	f18ff06f          	j	1056a <_vfprintf_r+0x214>
   10e56:	46c1                	li	a3,16
   10e58:	10812783          	lw	a5,264(sp)
   10e5c:	0000ca17          	auipc	s4,0xc
   10e60:	e84a0a13          	add	s4,s4,-380 # 1cce0 <blanks.1>
   10e64:	0526d363          	bge	a3,s2,10eaa <_vfprintf_r+0xb54>
   10e68:	6a82                	ld	s5,0(sp)
   10e6a:	4c41                	li	s8,16
   10e6c:	4c9d                	li	s9,7
   10e6e:	a021                	j	10e76 <_vfprintf_r+0xb20>
   10e70:	3941                	addw	s2,s2,-16
   10e72:	032c5c63          	bge	s8,s2,10eaa <_vfprintf_r+0xb54>
   10e76:	2785                	addw	a5,a5,1
   10e78:	0641                	add	a2,a2,16
   10e7a:	01443023          	sd	s4,0(s0)
   10e7e:	01843423          	sd	s8,8(s0)
   10e82:	ea32                	sd	a2,272(sp)
   10e84:	10f12423          	sw	a5,264(sp)
   10e88:	0441                	add	s0,s0,16
   10e8a:	fefcd3e3          	bge	s9,a5,10e70 <_vfprintf_r+0xb1a>
   10e8e:	0210                	add	a2,sp,256
   10e90:	85d6                	mv	a1,s5
   10e92:	8526                	mv	a0,s1
   10e94:	2e6070ef          	jal	1817a <__sprint_r>
   10e98:	ec0511e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10e9c:	3941                	addw	s2,s2,-16
   10e9e:	6652                	ld	a2,272(sp)
   10ea0:	10812783          	lw	a5,264(sp)
   10ea4:	0300                	add	s0,sp,384
   10ea6:	fd2c48e3          	blt	s8,s2,10e76 <_vfprintf_r+0xb20>
   10eaa:	0017869b          	addw	a3,a5,1
   10eae:	964a                	add	a2,a2,s2
   10eb0:	01443023          	sd	s4,0(s0)
   10eb4:	01243423          	sd	s2,8(s0)
   10eb8:	ea32                	sd	a2,272(sp)
   10eba:	10d12423          	sw	a3,264(sp)
   10ebe:	479d                	li	a5,7
   10ec0:	eed7da63          	bge	a5,a3,105b4 <_vfprintf_r+0x25e>
   10ec4:	6582                	ld	a1,0(sp)
   10ec6:	0210                	add	a2,sp,256
   10ec8:	8526                	mv	a0,s1
   10eca:	2b0070ef          	jal	1817a <__sprint_r>
   10ece:	e80516e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10ed2:	6652                	ld	a2,272(sp)
   10ed4:	ee0ff06f          	j	105b4 <_vfprintf_r+0x25e>
   10ed8:	456e                	lw	a0,216(sp)
   10eda:	4aa05863          	blez	a0,1138a <_vfprintf_r+0x1034>
   10ede:	77a2                	ld	a5,40(sp)
   10ee0:	00fa8733          	add	a4,s5,a5
   10ee4:	e13a                	sd	a4,128(sp)
   10ee6:	7702                	ld	a4,32(sp)
   10ee8:	86ba                	mv	a3,a4
   10eea:	2ce7c863          	blt	a5,a4,111ba <_vfprintf_r+0xe64>
   10eee:	00068a1b          	sext.w	s4,a3
   10ef2:	03405263          	blez	s4,10f16 <_vfprintf_r+0xbc0>
   10ef6:	10812603          	lw	a2,264(sp)
   10efa:	9d52                	add	s10,s10,s4
   10efc:	01543023          	sd	s5,0(s0)
   10f00:	0016059b          	addw	a1,a2,1
   10f04:	01443423          	sd	s4,8(s0)
   10f08:	ea6a                	sd	s10,272(sp)
   10f0a:	10b12423          	sw	a1,264(sp)
   10f0e:	461d                	li	a2,7
   10f10:	0441                	add	s0,s0,16
   10f12:	1cb647e3          	blt	a2,a1,118e0 <_vfprintf_r+0x158a>
   10f16:	fffa4613          	not	a2,s4
   10f1a:	7782                	ld	a5,32(sp)
   10f1c:	967d                	sra	a2,a2,0x3f
   10f1e:	00ca76b3          	and	a3,s4,a2
   10f22:	40d78a3b          	subw	s4,a5,a3
   10f26:	37404863          	bgtz	s4,11296 <_vfprintf_r+0xf40>
   10f2a:	7782                	ld	a5,32(sp)
   10f2c:	40097693          	and	a3,s2,1024
   10f30:	9abe                	add	s5,s5,a5
   10f32:	6a069063          	bnez	a3,115d2 <_vfprintf_r+0x127c>
   10f36:	46ee                	lw	a3,216(sp)
   10f38:	77a2                	ld	a5,40(sp)
   10f3a:	00f6c663          	blt	a3,a5,10f46 <_vfprintf_r+0xbf0>
   10f3e:	00197613          	and	a2,s2,1
   10f42:	1a060ce3          	beqz	a2,118fa <_vfprintf_r+0x15a4>
   10f46:	10812583          	lw	a1,264(sp)
   10f4a:	67a6                	ld	a5,72(sp)
   10f4c:	6746                	ld	a4,80(sp)
   10f4e:	0015851b          	addw	a0,a1,1
   10f52:	01a78633          	add	a2,a5,s10
   10f56:	e018                	sd	a4,0(s0)
   10f58:	e41c                	sd	a5,8(s0)
   10f5a:	ea32                	sd	a2,272(sp)
   10f5c:	10a12423          	sw	a0,264(sp)
   10f60:	459d                	li	a1,7
   10f62:	0441                	add	s0,s0,16
   10f64:	4ca5c8e3          	blt	a1,a0,11c34 <_vfprintf_r+0x18de>
   10f68:	678a                	ld	a5,128(sp)
   10f6a:	41578c33          	sub	s8,a5,s5
   10f6e:	77a2                	ld	a5,40(sp)
   10f70:	000c051b          	sext.w	a0,s8
   10f74:	40d785bb          	subw	a1,a5,a3
   10f78:	00a5d363          	bge	a1,a0,10f7e <_vfprintf_r+0xc28>
   10f7c:	8c2e                	mv	s8,a1
   10f7e:	2c01                	sext.w	s8,s8
   10f80:	03805163          	blez	s8,10fa2 <_vfprintf_r+0xc4c>
   10f84:	10812683          	lw	a3,264(sp)
   10f88:	9662                	add	a2,a2,s8
   10f8a:	01543023          	sd	s5,0(s0)
   10f8e:	2685                	addw	a3,a3,1
   10f90:	01843423          	sd	s8,8(s0)
   10f94:	ea32                	sd	a2,272(sp)
   10f96:	10d12423          	sw	a3,264(sp)
   10f9a:	479d                	li	a5,7
   10f9c:	0441                	add	s0,s0,16
   10f9e:	4ed7cfe3          	blt	a5,a3,11c9c <_vfprintf_r+0x1946>
   10fa2:	fffc4793          	not	a5,s8
   10fa6:	97fd                	sra	a5,a5,0x3f
   10fa8:	00fc7c33          	and	s8,s8,a5
   10fac:	41858c3b          	subw	s8,a1,s8
   10fb0:	df805a63          	blez	s8,105a4 <_vfprintf_r+0x24e>
   10fb4:	46c1                	li	a3,16
   10fb6:	10812783          	lw	a5,264(sp)
   10fba:	0000cd17          	auipc	s10,0xc
   10fbe:	d16d0d13          	add	s10,s10,-746 # 1ccd0 <zeroes.0>
   10fc2:	4586d863          	bge	a3,s8,11412 <_vfprintf_r+0x10bc>
   10fc6:	6a82                	ld	s5,0(sp)
   10fc8:	4cc1                	li	s9,16
   10fca:	4a1d                	li	s4,7
   10fcc:	a021                	j	10fd4 <_vfprintf_r+0xc7e>
   10fce:	3c41                	addw	s8,s8,-16
   10fd0:	458cd163          	bge	s9,s8,11412 <_vfprintf_r+0x10bc>
   10fd4:	2785                	addw	a5,a5,1
   10fd6:	0641                	add	a2,a2,16
   10fd8:	01a43023          	sd	s10,0(s0)
   10fdc:	01943423          	sd	s9,8(s0)
   10fe0:	ea32                	sd	a2,272(sp)
   10fe2:	10f12423          	sw	a5,264(sp)
   10fe6:	0441                	add	s0,s0,16
   10fe8:	fefa53e3          	bge	s4,a5,10fce <_vfprintf_r+0xc78>
   10fec:	0210                	add	a2,sp,256
   10fee:	85d6                	mv	a1,s5
   10ff0:	8526                	mv	a0,s1
   10ff2:	188070ef          	jal	1817a <__sprint_r>
   10ff6:	d60512e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   10ffa:	6652                	ld	a2,272(sp)
   10ffc:	10812783          	lw	a5,264(sp)
   11000:	0300                	add	s0,sp,384
   11002:	b7f1                	j	10fce <_vfprintf_r+0xc78>
   11004:	00197613          	and	a2,s2,1
   11008:	f6061b63          	bnez	a2,1077e <_vfprintf_r+0x428>
   1100c:	10812603          	lw	a2,264(sp)
   11010:	001d0c93          	add	s9,s10,1
   11014:	01543023          	sd	s5,0(s0)
   11018:	0016079b          	addw	a5,a2,1
   1101c:	e414                	sd	a3,8(s0)
   1101e:	10f12423          	sw	a5,264(sp)
   11022:	0007841b          	sext.w	s0,a5
   11026:	ea66                	sd	s9,272(sp)
   11028:	479d                	li	a5,7
   1102a:	fc87d563          	bge	a5,s0,107f4 <_vfprintf_r+0x49e>
   1102e:	6582                	ld	a1,0(sp)
   11030:	0210                	add	a2,sp,256
   11032:	8526                	mv	a0,s1
   11034:	146070ef          	jal	1817a <__sprint_r>
   11038:	d20511e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   1103c:	6cd2                	ld	s9,272(sp)
   1103e:	10812403          	lw	s0,264(sp)
   11042:	18010c13          	add	s8,sp,384
   11046:	faeff06f          	j	107f4 <_vfprintf_r+0x49e>
   1104a:	7722                	ld	a4,40(sp)
   1104c:	4785                	li	a5,1
   1104e:	fae7d363          	bge	a5,a4,107f4 <_vfprintf_r+0x49e>
   11052:	47c5                	li	a5,17
   11054:	0000cd17          	auipc	s10,0xc
   11058:	c7cd0d13          	add	s10,s10,-900 # 1ccd0 <zeroes.0>
   1105c:	44e7d963          	bge	a5,a4,114ae <_vfprintf_r+0x1158>
   11060:	87ea                	mv	a5,s10
   11062:	4841                	li	a6,16
   11064:	8d52                	mv	s10,s4
   11066:	4a9d                	li	s5,7
   11068:	8a4a                	mv	s4,s2
   1106a:	893e                	mv	s2,a5
   1106c:	a021                	j	11074 <_vfprintf_r+0xd1e>
   1106e:	3d41                	addw	s10,s10,-16
   11070:	43a85b63          	bge	a6,s10,114a6 <_vfprintf_r+0x1150>
   11074:	2405                	addw	s0,s0,1
   11076:	0cc1                	add	s9,s9,16
   11078:	012c3023          	sd	s2,0(s8)
   1107c:	010c3423          	sd	a6,8(s8)
   11080:	ea66                	sd	s9,272(sp)
   11082:	10812423          	sw	s0,264(sp)
   11086:	0c41                	add	s8,s8,16
   11088:	fe8ad3e3          	bge	s5,s0,1106e <_vfprintf_r+0xd18>
   1108c:	6582                	ld	a1,0(sp)
   1108e:	0210                	add	a2,sp,256
   11090:	8526                	mv	a0,s1
   11092:	0e8070ef          	jal	1817a <__sprint_r>
   11096:	cc0512e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   1109a:	6cd2                	ld	s9,272(sp)
   1109c:	10812403          	lw	s0,264(sp)
   110a0:	18010c13          	add	s8,sp,384
   110a4:	4841                	li	a6,16
   110a6:	b7e1                	j	1106e <_vfprintf_r+0xd18>
   110a8:	6582                	ld	a1,0(sp)
   110aa:	0210                	add	a2,sp,256
   110ac:	8526                	mv	a0,s1
   110ae:	e176                	sd	t4,128(sp)
   110b0:	0ca070ef          	jal	1817a <__sprint_r>
   110b4:	ca0513e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   110b8:	6d52                	ld	s10,272(sp)
   110ba:	6e8a                	ld	t4,128(sp)
   110bc:	0300                	add	s0,sp,384
   110be:	cbcff06f          	j	1057a <_vfprintf_r+0x224>
   110c2:	01097793          	and	a5,s2,16
   110c6:	ebc5                	bnez	a5,11176 <_vfprintf_r+0xe20>
   110c8:	66e2                	ld	a3,24(sp)
   110ca:	04097793          	and	a5,s2,64
   110ce:	0006ab03          	lw	s6,0(a3)
   110d2:	44078b63          	beqz	a5,11528 <_vfprintf_r+0x11d2>
   110d6:	010b1b1b          	sllw	s6,s6,0x10
   110da:	410b5b1b          	sraw	s6,s6,0x10
   110de:	87da                	mv	a5,s6
   110e0:	9207dae3          	bgez	a5,10a14 <_vfprintf_r+0x6be>
   110e4:	ec3a                	sd	a4,24(sp)
   110e6:	41600b33          	neg	s6,s6
   110ea:	8c4a                	mv	s8,s2
   110ec:	02d00713          	li	a4,45
   110f0:	4785                	li	a5,1
   110f2:	b84d                	j	109a4 <_vfprintf_r+0x64e>
   110f4:	01097793          	and	a5,s2,16
   110f8:	ebbd                	bnez	a5,1116e <_vfprintf_r+0xe18>
   110fa:	66e2                	ld	a3,24(sp)
   110fc:	04097793          	and	a5,s2,64
   11100:	0006ab03          	lw	s6,0(a3)
   11104:	40078363          	beqz	a5,1150a <_vfprintf_r+0x11b4>
   11108:	1b42                	sll	s6,s6,0x30
   1110a:	030b5b13          	srl	s6,s6,0x30
   1110e:	b291                	j	10a52 <_vfprintf_r+0x6fc>
   11110:	010c7793          	and	a5,s8,16
   11114:	e7b1                	bnez	a5,11160 <_vfprintf_r+0xe0a>
   11116:	66e2                	ld	a3,24(sp)
   11118:	040c7793          	and	a5,s8,64
   1111c:	0006ab03          	lw	s6,0(a3)
   11120:	40078f63          	beqz	a5,1153e <_vfprintf_r+0x11e8>
   11124:	1b42                	sll	s6,s6,0x30
   11126:	030b5b13          	srl	s6,s6,0x30
   1112a:	ec3a                	sd	a4,24(sp)
   1112c:	4785                	li	a5,1
   1112e:	b895                	j	109a2 <_vfprintf_r+0x64c>
   11130:	4c81                	li	s9,0
   11132:	17c10a93          	add	s5,sp,380
   11136:	b859                	j	109cc <_vfprintf_r+0x676>
   11138:	00197793          	and	a5,s2,1
   1113c:	866a                	mv	a2,s10
   1113e:	c6078363          	beqz	a5,105a4 <_vfprintf_r+0x24e>
   11142:	b2cd                	j	10b24 <_vfprintf_r+0x7ce>
   11144:	8e52                	mv	t3,s4
   11146:	b865                	j	109fe <_vfprintf_r+0x6a8>
   11148:	0009ce83          	lbu	t4,0(s3)
   1114c:	ec3e                	sd	a5,24(sp)
   1114e:	b34ff06f          	j	10482 <_vfprintf_r+0x12c>
   11152:	03000793          	li	a5,48
   11156:	16f10da3          	sb	a5,379(sp)
   1115a:	17b10a93          	add	s5,sp,379
   1115e:	b0bd                	j	109cc <_vfprintf_r+0x676>
   11160:	67e2                	ld	a5,24(sp)
   11162:	ec3a                	sd	a4,24(sp)
   11164:	0007bb03          	ld	s6,0(a5)
   11168:	4785                	li	a5,1
   1116a:	839ff06f          	j	109a2 <_vfprintf_r+0x64c>
   1116e:	67e2                	ld	a5,24(sp)
   11170:	0007bb03          	ld	s6,0(a5)
   11174:	b8f9                	j	10a52 <_vfprintf_r+0x6fc>
   11176:	67e2                	ld	a5,24(sp)
   11178:	639c                	ld	a5,0(a5)
   1117a:	8b3e                	mv	s6,a5
   1117c:	b851                	j	10a10 <_vfprintf_r+0x6ba>
   1117e:	01097793          	and	a5,s2,16
   11182:	8e079ae3          	bnez	a5,10a76 <_vfprintf_r+0x720>
   11186:	04097793          	and	a5,s2,64
   1118a:	78079663          	bnez	a5,11916 <_vfprintf_r+0x15c0>
   1118e:	20097913          	and	s2,s2,512
   11192:	67a2                	ld	a5,8(sp)
   11194:	4a0908e3          	beqz	s2,11e44 <_vfprintf_r+0x1aee>
   11198:	00f70023          	sb	a5,0(a4)
   1119c:	b8f9                	j	10a7a <_vfprintf_r+0x724>
   1119e:	67e2                	ld	a5,24(sp)
   111a0:	00f78a13          	add	s4,a5,15
   111a4:	ff0a7a13          	and	s4,s4,-16
   111a8:	010a0793          	add	a5,s4,16
   111ac:	000a3703          	ld	a4,0(s4)
   111b0:	008a3583          	ld	a1,8(s4)
   111b4:	ec3e                	sd	a5,24(sp)
   111b6:	d02ff06f          	j	106b8 <_vfprintf_r+0x362>
   111ba:	86be                	mv	a3,a5
   111bc:	00068a1b          	sext.w	s4,a3
   111c0:	d3404be3          	bgtz	s4,10ef6 <_vfprintf_r+0xba0>
   111c4:	bb89                	j	10f16 <_vfprintf_r+0xbc0>
   111c6:	6582                	ld	a1,0(sp)
   111c8:	0210                	add	a2,sp,256
   111ca:	8526                	mv	a0,s1
   111cc:	e572                	sd	t3,136(sp)
   111ce:	e176                	sd	t4,128(sp)
   111d0:	7ab060ef          	jal	1817a <__sprint_r>
   111d4:	b80513e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   111d8:	6d52                	ld	s10,272(sp)
   111da:	6e2a                	ld	t3,136(sp)
   111dc:	6e8a                	ld	t4,128(sp)
   111de:	0300                	add	s0,sp,384
   111e0:	b92ff06f          	j	10572 <_vfprintf_r+0x21c>
   111e4:	0000c797          	auipc	a5,0xc
   111e8:	8ac78793          	add	a5,a5,-1876 # 1ca90 <__clzdi2+0x72>
   111ec:	8e52                	mv	t3,s4
   111ee:	ecbe                	sd	a5,88(sp)
   111f0:	66e2                	ld	a3,24(sp)
   111f2:	02097793          	and	a5,s2,32
   111f6:	00868713          	add	a4,a3,8
   111fa:	cbe5                	beqz	a5,112ea <_vfprintf_r+0xf94>
   111fc:	0006bb03          	ld	s6,0(a3)
   11200:	00197793          	and	a5,s2,1
   11204:	cf81                	beqz	a5,1121c <_vfprintf_r+0xec6>
   11206:	000b0b63          	beqz	s6,1121c <_vfprintf_r+0xec6>
   1120a:	00296913          	or	s2,s2,2
   1120e:	03000793          	li	a5,48
   11212:	0cf10823          	sb	a5,208(sp)
   11216:	0dd108a3          	sb	t4,209(sp)
   1121a:	2901                	sext.w	s2,s2
   1121c:	bff97c13          	and	s8,s2,-1025
   11220:	2c01                	sext.w	s8,s8
   11222:	ec3a                	sd	a4,24(sp)
   11224:	4789                	li	a5,2
   11226:	f7cff06f          	j	109a2 <_vfprintf_r+0x64c>
   1122a:	8e52                	mv	t3,s4
   1122c:	8c4a                	mv	s8,s2
   1122e:	f5eff06f          	j	1098c <_vfprintf_r+0x636>
   11232:	20096913          	or	s2,s2,512
   11236:	0019ce83          	lbu	t4,1(s3)
   1123a:	2901                	sext.w	s2,s2
   1123c:	0985                	add	s3,s3,1
   1123e:	a44ff06f          	j	10482 <_vfprintf_r+0x12c>
   11242:	0000c797          	auipc	a5,0xc
   11246:	86678793          	add	a5,a5,-1946 # 1caa8 <__clzdi2+0x8a>
   1124a:	8e52                	mv	t3,s4
   1124c:	ecbe                	sd	a5,88(sp)
   1124e:	b74d                	j	111f0 <_vfprintf_r+0xe9a>
   11250:	6582                	ld	a1,0(sp)
   11252:	0210                	add	a2,sp,256
   11254:	8526                	mv	a0,s1
   11256:	725060ef          	jal	1817a <__sprint_r>
   1125a:	b00510e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   1125e:	6652                	ld	a2,272(sp)
   11260:	0300                	add	s0,sp,384
   11262:	b0e5                	j	10b4a <_vfprintf_r+0x7f4>
   11264:	8e52                	mv	t3,s4
   11266:	fdaff06f          	j	10a40 <_vfprintf_r+0x6ea>
   1126a:	02096913          	or	s2,s2,32
   1126e:	0019ce83          	lbu	t4,1(s3)
   11272:	2901                	sext.w	s2,s2
   11274:	0985                	add	s3,s3,1
   11276:	a0cff06f          	j	10482 <_vfprintf_r+0x12c>
   1127a:	4799                	li	a5,6
   1127c:	86f2                	mv	a3,t3
   1127e:	67c7ec63          	bltu	a5,t3,118f6 <_vfprintf_r+0x15a0>
   11282:	00068c9b          	sext.w	s9,a3
   11286:	8b66                	mv	s6,s9
   11288:	ec52                	sd	s4,24(sp)
   1128a:	0000ca97          	auipc	s5,0xc
   1128e:	836a8a93          	add	s5,s5,-1994 # 1cac0 <__clzdi2+0xa2>
   11292:	a62ff06f          	j	104f4 <_vfprintf_r+0x19e>
   11296:	4541                	li	a0,16
   11298:	866a                	mv	a2,s10
   1129a:	10812583          	lw	a1,264(sp)
   1129e:	0000cd17          	auipc	s10,0xc
   112a2:	a32d0d13          	add	s10,s10,-1486 # 1ccd0 <zeroes.0>
   112a6:	2d455c63          	bge	a0,s4,1157e <_vfprintf_r+0x1228>
   112aa:	6c02                	ld	s8,0(sp)
   112ac:	4841                	li	a6,16
   112ae:	4c9d                	li	s9,7
   112b0:	a021                	j	112b8 <_vfprintf_r+0xf62>
   112b2:	3a41                	addw	s4,s4,-16
   112b4:	2d485563          	bge	a6,s4,1157e <_vfprintf_r+0x1228>
   112b8:	2585                	addw	a1,a1,1
   112ba:	0641                	add	a2,a2,16
   112bc:	01a43023          	sd	s10,0(s0)
   112c0:	01043423          	sd	a6,8(s0)
   112c4:	ea32                	sd	a2,272(sp)
   112c6:	10b12423          	sw	a1,264(sp)
   112ca:	0441                	add	s0,s0,16
   112cc:	febcd3e3          	bge	s9,a1,112b2 <_vfprintf_r+0xf5c>
   112d0:	0210                	add	a2,sp,256
   112d2:	85e2                	mv	a1,s8
   112d4:	8526                	mv	a0,s1
   112d6:	6a5060ef          	jal	1817a <__sprint_r>
   112da:	a80510e3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   112de:	6652                	ld	a2,272(sp)
   112e0:	10812583          	lw	a1,264(sp)
   112e4:	0300                	add	s0,sp,384
   112e6:	4841                	li	a6,16
   112e8:	b7e9                	j	112b2 <_vfprintf_r+0xf5c>
   112ea:	01097793          	and	a5,s2,16
   112ee:	0e078c63          	beqz	a5,113e6 <_vfprintf_r+0x1090>
   112f2:	67e2                	ld	a5,24(sp)
   112f4:	0007bb03          	ld	s6,0(a5)
   112f8:	b721                	j	11200 <_vfprintf_r+0xeaa>
   112fa:	6582                	ld	a1,0(sp)
   112fc:	0210                	add	a2,sp,256
   112fe:	8526                	mv	a0,s1
   11300:	67b060ef          	jal	1817a <__sprint_r>
   11304:	a4051be3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11308:	6d52                	ld	s10,272(sp)
   1130a:	10812683          	lw	a3,264(sp)
   1130e:	18010c13          	add	s8,sp,384
   11312:	c8cff06f          	j	1079e <_vfprintf_r+0x448>
   11316:	6582                	ld	a1,0(sp)
   11318:	0210                	add	a2,sp,256
   1131a:	8526                	mv	a0,s1
   1131c:	65f060ef          	jal	1817a <__sprint_r>
   11320:	a2051de3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11324:	6cd2                	ld	s9,272(sp)
   11326:	10812403          	lw	s0,264(sp)
   1132a:	18010c13          	add	s8,sp,384
   1132e:	c92ff06f          	j	107c0 <_vfprintf_r+0x46a>
   11332:	17c10a13          	add	s4,sp,380
   11336:	7826                	ld	a6,104(sp)
   11338:	400c7c93          	and	s9,s8,1024
   1133c:	4681                	li	a3,0
   1133e:	85d2                	mv	a1,s4
   11340:	4929                	li	s2,10
   11342:	4d25                	li	s10,9
   11344:	0ff00713          	li	a4,255
   11348:	a039                	j	11356 <_vfprintf_r+0x1000>
   1134a:	032b57b3          	divu	a5,s6,s2
   1134e:	036d7763          	bgeu	s10,s6,1137c <_vfprintf_r+0x1026>
   11352:	8b3e                	mv	s6,a5
   11354:	85d6                	mv	a1,s5
   11356:	fff58a93          	add	s5,a1,-1
   1135a:	2685                	addw	a3,a3,1
   1135c:	032b77b3          	remu	a5,s6,s2
   11360:	0307879b          	addw	a5,a5,48
   11364:	fef58fa3          	sb	a5,-1(a1)
   11368:	fe0c81e3          	beqz	s9,1134a <_vfprintf_r+0xff4>
   1136c:	00084783          	lbu	a5,0(a6)
   11370:	fcf69de3          	bne	a3,a5,1134a <_vfprintf_r+0xff4>
   11374:	fce78be3          	beq	a5,a4,1134a <_vfprintf_r+0xff4>
   11378:	236d6363          	bltu	s10,s6,1159e <_vfprintf_r+0x1248>
   1137c:	f436                	sd	a3,40(sp)
   1137e:	f4c2                	sd	a6,104(sp)
   11380:	415a0cbb          	subw	s9,s4,s5
   11384:	8962                	mv	s2,s8
   11386:	e46ff06f          	j	109cc <_vfprintf_r+0x676>
   1138a:	10812683          	lw	a3,264(sp)
   1138e:	0000b597          	auipc	a1,0xb
   11392:	73a58593          	add	a1,a1,1850 # 1cac8 <__clzdi2+0xaa>
   11396:	e00c                	sd	a1,0(s0)
   11398:	2685                	addw	a3,a3,1
   1139a:	4585                	li	a1,1
   1139c:	001d0613          	add	a2,s10,1
   113a0:	e40c                	sd	a1,8(s0)
   113a2:	10d12423          	sw	a3,264(sp)
   113a6:	0006859b          	sext.w	a1,a3
   113aa:	ea32                	sd	a2,272(sp)
   113ac:	469d                	li	a3,7
   113ae:	0441                	add	s0,s0,16
   113b0:	38b6ce63          	blt	a3,a1,1174c <_vfprintf_r+0x13f6>
   113b4:	10051a63          	bnez	a0,114c8 <_vfprintf_r+0x1172>
   113b8:	77a2                	ld	a5,40(sp)
   113ba:	00197693          	and	a3,s2,1
   113be:	8edd                	or	a3,a3,a5
   113c0:	9e068263          	beqz	a3,105a4 <_vfprintf_r+0x24e>
   113c4:	10812683          	lw	a3,264(sp)
   113c8:	67a6                	ld	a5,72(sp)
   113ca:	6746                	ld	a4,80(sp)
   113cc:	0016859b          	addw	a1,a3,1
   113d0:	963e                	add	a2,a2,a5
   113d2:	e018                	sd	a4,0(s0)
   113d4:	e41c                	sd	a5,8(s0)
   113d6:	ea32                	sd	a2,272(sp)
   113d8:	10b12423          	sw	a1,264(sp)
   113dc:	469d                	li	a3,7
   113de:	56b6ce63          	blt	a3,a1,1195a <_vfprintf_r+0x1604>
   113e2:	0441                	add	s0,s0,16
   113e4:	a221                	j	114ec <_vfprintf_r+0x1196>
   113e6:	66e2                	ld	a3,24(sp)
   113e8:	04097793          	and	a5,s2,64
   113ec:	0006ab03          	lw	s6,0(a3)
   113f0:	12078563          	beqz	a5,1151a <_vfprintf_r+0x11c4>
   113f4:	1b42                	sll	s6,s6,0x30
   113f6:	030b5b13          	srl	s6,s6,0x30
   113fa:	b519                	j	11200 <_vfprintf_r+0xeaa>
   113fc:	6582                	ld	a1,0(sp)
   113fe:	0210                	add	a2,sp,256
   11400:	8526                	mv	a0,s1
   11402:	579060ef          	jal	1817a <__sprint_r>
   11406:	94051ae3          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   1140a:	6d52                	ld	s10,272(sp)
   1140c:	0300                	add	s0,sp,384
   1140e:	f0eff06f          	j	10b1c <_vfprintf_r+0x7c6>
   11412:	0017869b          	addw	a3,a5,1
   11416:	01a43023          	sd	s10,0(s0)
   1141a:	01843423          	sd	s8,8(s0)
   1141e:	9662                	add	a2,a2,s8
   11420:	ea32                	sd	a2,272(sp)
   11422:	10d12423          	sw	a3,264(sp)
   11426:	479d                	li	a5,7
   11428:	96d7dd63          	bge	a5,a3,105a2 <_vfprintf_r+0x24c>
   1142c:	becff06f          	j	10818 <_vfprintf_r+0x4c2>
   11430:	ec3a                	sd	a4,24(sp)
   11432:	bac5                	j	10e22 <_vfprintf_r+0xacc>
   11434:	754e                	ld	a0,240(sp)
   11436:	75ee                	ld	a1,248(sp)
   11438:	4601                	li	a2,0
   1143a:	4681                	li	a3,0
   1143c:	1a00a0ef          	jal	1b5dc <__letf2>
   11440:	6ec2                	ld	t4,16(sp)
   11442:	7e054163          	bltz	a0,11c24 <_vfprintf_r+0x18ce>
   11446:	0cf14603          	lbu	a2,207(sp)
   1144a:	04700713          	li	a4,71
   1144e:	0000ba97          	auipc	s5,0xb
   11452:	622a8a93          	add	s5,s5,1570 # 1ca70 <__clzdi2+0x52>
   11456:	31d74663          	blt	a4,t4,11762 <_vfprintf_r+0x140c>
   1145a:	f7f97913          	and	s2,s2,-129
   1145e:	e802                	sd	zero,16(sp)
   11460:	fc02                	sd	zero,56(sp)
   11462:	f802                	sd	zero,48(sp)
   11464:	f002                	sd	zero,32(sp)
   11466:	2901                	sext.w	s2,s2
   11468:	4b0d                	li	s6,3
   1146a:	4c8d                	li	s9,3
   1146c:	4e01                	li	t3,0
   1146e:	c2061c63          	bnez	a2,108a6 <_vfprintf_r+0x550>
   11472:	88cff06f          	j	104fe <_vfprintf_r+0x1a8>
   11476:	8556                	mv	a0,s5
   11478:	e176                	sd	t4,128(sp)
   1147a:	761040ef          	jal	163da <strlen>
   1147e:	00050c9b          	sext.w	s9,a0
   11482:	0cf14603          	lbu	a2,207(sp)
   11486:	fffcc713          	not	a4,s9
   1148a:	977d                	sra	a4,a4,0x3f
   1148c:	ec52                	sd	s4,24(sp)
   1148e:	e802                	sd	zero,16(sp)
   11490:	fc02                	sd	zero,56(sp)
   11492:	f802                	sd	zero,48(sp)
   11494:	f002                	sd	zero,32(sp)
   11496:	6e8a                	ld	t4,128(sp)
   11498:	01977b33          	and	s6,a4,s9
   1149c:	4e01                	li	t3,0
   1149e:	c0061463          	bnez	a2,108a6 <_vfprintf_r+0x550>
   114a2:	85cff06f          	j	104fe <_vfprintf_r+0x1a8>
   114a6:	87ca                	mv	a5,s2
   114a8:	8952                	mv	s2,s4
   114aa:	8a6a                	mv	s4,s10
   114ac:	8d3e                	mv	s10,a5
   114ae:	2405                	addw	s0,s0,1
   114b0:	9cd2                	add	s9,s9,s4
   114b2:	01ac3023          	sd	s10,0(s8)
   114b6:	014c3423          	sd	s4,8(s8)
   114ba:	ea66                	sd	s9,272(sp)
   114bc:	10812423          	sw	s0,264(sp)
   114c0:	479d                	li	a5,7
   114c2:	b287d863          	bge	a5,s0,107f2 <_vfprintf_r+0x49c>
   114c6:	b6a5                	j	1102e <_vfprintf_r+0xcd8>
   114c8:	10812683          	lw	a3,264(sp)
   114cc:	67a6                	ld	a5,72(sp)
   114ce:	6746                	ld	a4,80(sp)
   114d0:	0016859b          	addw	a1,a3,1
   114d4:	963e                	add	a2,a2,a5
   114d6:	e018                	sd	a4,0(s0)
   114d8:	e41c                	sd	a5,8(s0)
   114da:	ea32                	sd	a2,272(sp)
   114dc:	10b12423          	sw	a1,264(sp)
   114e0:	469d                	li	a3,7
   114e2:	0441                	add	s0,s0,16
   114e4:	46b6cb63          	blt	a3,a1,1195a <_vfprintf_r+0x1604>
   114e8:	7c054d63          	bltz	a0,11cc2 <_vfprintf_r+0x196c>
   114ec:	77a2                	ld	a5,40(sp)
   114ee:	0015869b          	addw	a3,a1,1
   114f2:	01543023          	sd	s5,0(s0)
   114f6:	963e                	add	a2,a2,a5
   114f8:	e41c                	sd	a5,8(s0)
   114fa:	ea32                	sd	a2,272(sp)
   114fc:	10d12423          	sw	a3,264(sp)
   11500:	479d                	li	a5,7
   11502:	8ad7d063          	bge	a5,a3,105a2 <_vfprintf_r+0x24c>
   11506:	b12ff06f          	j	10818 <_vfprintf_r+0x4c2>
   1150a:	20097793          	and	a5,s2,512
   1150e:	42078763          	beqz	a5,1193c <_vfprintf_r+0x15e6>
   11512:	0ffb7b13          	zext.b	s6,s6
   11516:	d3cff06f          	j	10a52 <_vfprintf_r+0x6fc>
   1151a:	20097793          	and	a5,s2,512
   1151e:	40078b63          	beqz	a5,11934 <_vfprintf_r+0x15de>
   11522:	0ffb7b13          	zext.b	s6,s6
   11526:	b9e9                	j	11200 <_vfprintf_r+0xeaa>
   11528:	20097793          	and	a5,s2,512
   1152c:	40078163          	beqz	a5,1192e <_vfprintf_r+0x15d8>
   11530:	018b1b1b          	sllw	s6,s6,0x18
   11534:	418b5b1b          	sraw	s6,s6,0x18
   11538:	87da                	mv	a5,s6
   1153a:	cd6ff06f          	j	10a10 <_vfprintf_r+0x6ba>
   1153e:	200c7793          	and	a5,s8,512
   11542:	3c078f63          	beqz	a5,11920 <_vfprintf_r+0x15ca>
   11546:	0ffb7b13          	zext.b	s6,s6
   1154a:	ec3a                	sd	a4,24(sp)
   1154c:	4785                	li	a5,1
   1154e:	c54ff06f          	j	109a2 <_vfprintf_r+0x64c>
   11552:	77ee                	ld	a5,248(sp)
   11554:	4007d063          	bgez	a5,11954 <_vfprintf_r+0x15fe>
   11558:	02d00793          	li	a5,45
   1155c:	0cf107a3          	sb	a5,207(sp)
   11560:	02d00613          	li	a2,45
   11564:	04700713          	li	a4,71
   11568:	0000ba97          	auipc	s5,0xb
   1156c:	518a8a93          	add	s5,s5,1304 # 1ca80 <__clzdi2+0x62>
   11570:	efd755e3          	bge	a4,t4,1145a <_vfprintf_r+0x1104>
   11574:	0000ba97          	auipc	s5,0xb
   11578:	514a8a93          	add	s5,s5,1300 # 1ca88 <__clzdi2+0x6a>
   1157c:	bdf9                	j	1145a <_vfprintf_r+0x1104>
   1157e:	0015851b          	addw	a0,a1,1
   11582:	9652                	add	a2,a2,s4
   11584:	01a43023          	sd	s10,0(s0)
   11588:	01443423          	sd	s4,8(s0)
   1158c:	ea32                	sd	a2,272(sp)
   1158e:	10a12423          	sw	a0,264(sp)
   11592:	469d                	li	a3,7
   11594:	56a6c663          	blt	a3,a0,11b00 <_vfprintf_r+0x17aa>
   11598:	0441                	add	s0,s0,16
   1159a:	8d32                	mv	s10,a2
   1159c:	b279                	j	10f2a <_vfprintf_r+0xbd4>
   1159e:	77c6                	ld	a5,112(sp)
   115a0:	75e6                	ld	a1,120(sp)
   115a2:	f472                	sd	t3,40(sp)
   115a4:	40fa8ab3          	sub	s5,s5,a5
   115a8:	863e                	mv	a2,a5
   115aa:	8556                	mv	a0,s5
   115ac:	f076                	sd	t4,32(sp)
   115ae:	e842                	sd	a6,16(sp)
   115b0:	6bf040ef          	jal	1646e <strncpy>
   115b4:	6842                	ld	a6,16(sp)
   115b6:	47a9                	li	a5,10
   115b8:	02fb57b3          	divu	a5,s6,a5
   115bc:	00184683          	lbu	a3,1(a6)
   115c0:	7e82                	ld	t4,32(sp)
   115c2:	7e22                	ld	t3,40(sp)
   115c4:	00d036b3          	snez	a3,a3
   115c8:	9836                	add	a6,a6,a3
   115ca:	0ff00713          	li	a4,255
   115ce:	4681                	li	a3,0
   115d0:	b349                	j	11352 <_vfprintf_r+0xffc>
   115d2:	87a2                	mv	a5,s0
   115d4:	7442                	ld	s0,48(sp)
   115d6:	e54e                	sd	s3,136(sp)
   115d8:	ed5e                	sd	s7,152(sp)
   115da:	f85a                	sd	s6,48(sp)
   115dc:	e94a                	sd	s2,144(sp)
   115de:	8b56                	mv	s6,s5
   115e0:	86ea                	mv	a3,s10
   115e2:	79e6                	ld	s3,120(sp)
   115e4:	7bc6                	ld	s7,112(sp)
   115e6:	7aa6                	ld	s5,104(sp)
   115e8:	6c02                	ld	s8,0(sp)
   115ea:	7d62                	ld	s10,56(sp)
   115ec:	489d                	li	a7,7
   115ee:	4a41                	li	s4,16
   115f0:	0000bc97          	auipc	s9,0xb
   115f4:	6e0c8c93          	add	s9,s9,1760 # 1ccd0 <zeroes.0>
   115f8:	c049                	beqz	s0,1167a <_vfprintf_r+0x1324>
   115fa:	100d0c63          	beqz	s10,11712 <_vfprintf_r+0x13bc>
   115fe:	3d7d                	addw	s10,s10,-1
   11600:	10812703          	lw	a4,264(sp)
   11604:	96de                	add	a3,a3,s7
   11606:	0137b023          	sd	s3,0(a5)
   1160a:	0017061b          	addw	a2,a4,1
   1160e:	0177b423          	sd	s7,8(a5)
   11612:	ea36                	sd	a3,272(sp)
   11614:	10c12423          	sw	a2,264(sp)
   11618:	07c1                	add	a5,a5,16
   1161a:	0ec8cf63          	blt	a7,a2,11718 <_vfprintf_r+0x13c2>
   1161e:	670a                	ld	a4,128(sp)
   11620:	000ac603          	lbu	a2,0(s5)
   11624:	41670733          	sub	a4,a4,s6
   11628:	0007059b          	sext.w	a1,a4
   1162c:	0006081b          	sext.w	a6,a2
   11630:	00b65363          	bge	a2,a1,11636 <_vfprintf_r+0x12e0>
   11634:	8742                	mv	a4,a6
   11636:	0007091b          	sext.w	s2,a4
   1163a:	03205563          	blez	s2,11664 <_vfprintf_r+0x130e>
   1163e:	10812603          	lw	a2,264(sp)
   11642:	96ca                	add	a3,a3,s2
   11644:	0167b023          	sd	s6,0(a5)
   11648:	0016059b          	addw	a1,a2,1
   1164c:	0127b423          	sd	s2,8(a5)
   11650:	ea36                	sd	a3,272(sp)
   11652:	10b12423          	sw	a1,264(sp)
   11656:	0cb8cc63          	blt	a7,a1,1172e <_vfprintf_r+0x13d8>
   1165a:	000ac603          	lbu	a2,0(s5)
   1165e:	07c1                	add	a5,a5,16
   11660:	0006081b          	sext.w	a6,a2
   11664:	fff94593          	not	a1,s2
   11668:	95fd                	sra	a1,a1,0x3f
   1166a:	00b97733          	and	a4,s2,a1
   1166e:	40e8093b          	subw	s2,a6,a4
   11672:	03204363          	bgtz	s2,11698 <_vfprintf_r+0x1342>
   11676:	9b32                	add	s6,s6,a2
   11678:	f049                	bnez	s0,115fa <_vfprintf_r+0x12a4>
   1167a:	f80d12e3          	bnez	s10,115fe <_vfprintf_r+0x12a8>
   1167e:	843e                	mv	s0,a5
   11680:	678a                	ld	a5,128(sp)
   11682:	f4d6                	sd	s5,104(sp)
   11684:	8ada                	mv	s5,s6
   11686:	69aa                	ld	s3,136(sp)
   11688:	694a                	ld	s2,144(sp)
   1168a:	6bea                	ld	s7,152(sp)
   1168c:	7b42                	ld	s6,48(sp)
   1168e:	8d36                	mv	s10,a3
   11690:	8b57f3e3          	bgeu	a5,s5,10f36 <_vfprintf_r+0xbe0>
   11694:	8abe                	mv	s5,a5
   11696:	b045                	j	10f36 <_vfprintf_r+0xbe0>
   11698:	10812703          	lw	a4,264(sp)
   1169c:	0000b597          	auipc	a1,0xb
   116a0:	63458593          	add	a1,a1,1588 # 1ccd0 <zeroes.0>
   116a4:	052a5763          	bge	s4,s2,116f2 <_vfprintf_r+0x139c>
   116a8:	f022                	sd	s0,32(sp)
   116aa:	844a                	mv	s0,s2
   116ac:	8966                	mv	s2,s9
   116ae:	a021                	j	116b6 <_vfprintf_r+0x1360>
   116b0:	3441                	addw	s0,s0,-16
   116b2:	028a5d63          	bge	s4,s0,116ec <_vfprintf_r+0x1396>
   116b6:	2705                	addw	a4,a4,1
   116b8:	06c1                	add	a3,a3,16
   116ba:	0197b023          	sd	s9,0(a5)
   116be:	0147b423          	sd	s4,8(a5)
   116c2:	ea36                	sd	a3,272(sp)
   116c4:	10e12423          	sw	a4,264(sp)
   116c8:	07c1                	add	a5,a5,16
   116ca:	fee8d3e3          	bge	a7,a4,116b0 <_vfprintf_r+0x135a>
   116ce:	0210                	add	a2,sp,256
   116d0:	85e2                	mv	a1,s8
   116d2:	8526                	mv	a0,s1
   116d4:	2a7060ef          	jal	1817a <__sprint_r>
   116d8:	e8051163          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   116dc:	3441                	addw	s0,s0,-16
   116de:	66d2                	ld	a3,272(sp)
   116e0:	10812703          	lw	a4,264(sp)
   116e4:	031c                	add	a5,sp,384
   116e6:	489d                	li	a7,7
   116e8:	fc8a47e3          	blt	s4,s0,116b6 <_vfprintf_r+0x1360>
   116ec:	85ca                	mv	a1,s2
   116ee:	8922                	mv	s2,s0
   116f0:	7402                	ld	s0,32(sp)
   116f2:	0017061b          	addw	a2,a4,1
   116f6:	96ca                	add	a3,a3,s2
   116f8:	e38c                	sd	a1,0(a5)
   116fa:	0127b423          	sd	s2,8(a5)
   116fe:	ea36                	sd	a3,272(sp)
   11700:	10c12423          	sw	a2,264(sp)
   11704:	4ec8cf63          	blt	a7,a2,11c02 <_vfprintf_r+0x18ac>
   11708:	000ac603          	lbu	a2,0(s5)
   1170c:	07c1                	add	a5,a5,16
   1170e:	9b32                	add	s6,s6,a2
   11710:	b7a5                	j	11678 <_vfprintf_r+0x1322>
   11712:	1afd                	add	s5,s5,-1
   11714:	347d                	addw	s0,s0,-1
   11716:	b5ed                	j	11600 <_vfprintf_r+0x12aa>
   11718:	0210                	add	a2,sp,256
   1171a:	85e2                	mv	a1,s8
   1171c:	8526                	mv	a0,s1
   1171e:	25d060ef          	jal	1817a <__sprint_r>
   11722:	e2051c63          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11726:	66d2                	ld	a3,272(sp)
   11728:	031c                	add	a5,sp,384
   1172a:	489d                	li	a7,7
   1172c:	bdcd                	j	1161e <_vfprintf_r+0x12c8>
   1172e:	0210                	add	a2,sp,256
   11730:	85e2                	mv	a1,s8
   11732:	8526                	mv	a0,s1
   11734:	247060ef          	jal	1817a <__sprint_r>
   11738:	e2051163          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   1173c:	000ac603          	lbu	a2,0(s5)
   11740:	66d2                	ld	a3,272(sp)
   11742:	031c                	add	a5,sp,384
   11744:	0006081b          	sext.w	a6,a2
   11748:	489d                	li	a7,7
   1174a:	bf29                	j	11664 <_vfprintf_r+0x130e>
   1174c:	6582                	ld	a1,0(sp)
   1174e:	0210                	add	a2,sp,256
   11750:	8526                	mv	a0,s1
   11752:	229060ef          	jal	1817a <__sprint_r>
   11756:	e0051263          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   1175a:	456e                	lw	a0,216(sp)
   1175c:	6652                	ld	a2,272(sp)
   1175e:	0300                	add	s0,sp,384
   11760:	b991                	j	113b4 <_vfprintf_r+0x105e>
   11762:	0000ba97          	auipc	s5,0xb
   11766:	316a8a93          	add	s5,s5,790 # 1ca78 <__clzdi2+0x5a>
   1176a:	b9c5                	j	1145a <_vfprintf_r+0x1104>
   1176c:	8972                	mv	s2,t3
   1176e:	4689                	li	a3,2
   11770:	874a                	mv	a4,s2
   11772:	0e810893          	add	a7,sp,232
   11776:	0dc10813          	add	a6,sp,220
   1177a:	09bc                	add	a5,sp,216
   1177c:	85d2                	mv	a1,s4
   1177e:	865a                	mv	a2,s6
   11780:	8526                	mv	a0,s1
   11782:	f472                	sd	t3,40(sp)
   11784:	f076                	sd	t4,32(sp)
   11786:	5d4020ef          	jal	13d5a <_ldtoa_r>
   1178a:	7e82                	ld	t4,32(sp)
   1178c:	06700713          	li	a4,103
   11790:	7e22                	ld	t3,40(sp)
   11792:	8aaa                	mv	s5,a0
   11794:	44ee8e63          	beq	t4,a4,11bf0 <_vfprintf_r+0x189a>
   11798:	04700713          	li	a4,71
   1179c:	44ee8a63          	beq	t4,a4,11bf0 <_vfprintf_r+0x189a>
   117a0:	fdfefd13          	and	s10,t4,-33
   117a4:	04600713          	li	a4,70
   117a8:	01250cb3          	add	s9,a0,s2
   117ac:	4aed0e63          	beq	s10,a4,11c68 <_vfprintf_r+0x1912>
   117b0:	4601                	li	a2,0
   117b2:	4681                	li	a3,0
   117b4:	8552                	mv	a0,s4
   117b6:	85da                	mv	a1,s6
   117b8:	f472                	sd	t3,40(sp)
   117ba:	f076                	sd	t4,32(sp)
   117bc:	4c7090ef          	jal	1b482 <__eqtf2>
   117c0:	7e82                	ld	t4,32(sp)
   117c2:	7e22                	ld	t3,40(sp)
   117c4:	87e6                	mv	a5,s9
   117c6:	cd11                	beqz	a0,117e2 <_vfprintf_r+0x148c>
   117c8:	77ae                	ld	a5,232(sp)
   117ca:	0197fc63          	bgeu	a5,s9,117e2 <_vfprintf_r+0x148c>
   117ce:	03000693          	li	a3,48
   117d2:	00178713          	add	a4,a5,1
   117d6:	f5ba                	sd	a4,232(sp)
   117d8:	00d78023          	sb	a3,0(a5)
   117dc:	77ae                	ld	a5,232(sp)
   117de:	ff97eae3          	bltu	a5,s9,117d2 <_vfprintf_r+0x147c>
   117e2:	415787bb          	subw	a5,a5,s5
   117e6:	f43e                	sd	a5,40(sp)
   117e8:	466e                	lw	a2,216(sp)
   117ea:	04700713          	li	a4,71
   117ee:	f032                	sd	a2,32(sp)
   117f0:	38ed0363          	beq	s10,a4,11b76 <_vfprintf_r+0x1820>
   117f4:	04600713          	li	a4,70
   117f8:	50ed0d63          	beq	s10,a4,11d12 <_vfprintf_r+0x19bc>
   117fc:	fff6071b          	addw	a4,a2,-1
   11800:	cdba                	sw	a4,216(sp)
   11802:	06100693          	li	a3,97
   11806:	70de8163          	beq	t4,a3,11f08 <_vfprintf_r+0x1bb2>
   1180a:	04100593          	li	a1,65
   1180e:	05000693          	li	a3,80
   11812:	36be9c63          	bne	t4,a1,11b8a <_vfprintf_r+0x1834>
   11816:	4585                	li	a1,1
   11818:	0ed10023          	sb	a3,224(sp)
   1181c:	02b00693          	li	a3,43
   11820:	00075663          	bgez	a4,1182c <_vfprintf_r+0x14d6>
   11824:	4705                	li	a4,1
   11826:	9f11                	subw	a4,a4,a2
   11828:	02d00693          	li	a3,45
   1182c:	0ed100a3          	sb	a3,225(sp)
   11830:	46a5                	li	a3,9
   11832:	58e6d763          	bge	a3,a4,11dc0 <_vfprintf_r+0x1a6a>
   11836:	0ef10813          	add	a6,sp,239
   1183a:	88c2                	mv	a7,a6
   1183c:	4e29                	li	t3,10
   1183e:	06300f93          	li	t6,99
   11842:	03c767bb          	remw	a5,a4,t3
   11846:	8646                	mv	a2,a7
   11848:	86ba                	mv	a3,a4
   1184a:	18fd                	add	a7,a7,-1
   1184c:	0307879b          	addw	a5,a5,48
   11850:	fef60fa3          	sb	a5,-1(a2)
   11854:	03c7473b          	divw	a4,a4,t3
   11858:	fedfc5e3          	blt	t6,a3,11842 <_vfprintf_r+0x14ec>
   1185c:	0307051b          	addw	a0,a4,48
   11860:	fea88fa3          	sb	a0,-1(a7)
   11864:	ffe60713          	add	a4,a2,-2
   11868:	6f077a63          	bgeu	a4,a6,11f5c <_vfprintf_r+0x1c06>
   1186c:	0e210693          	add	a3,sp,226
   11870:	00074783          	lbu	a5,0(a4)
   11874:	0705                	add	a4,a4,1
   11876:	0685                	add	a3,a3,1
   11878:	fef68fa3          	sb	a5,-1(a3)
   1187c:	ff071ae3          	bne	a4,a6,11870 <_vfprintf_r+0x151a>
   11880:	0f110713          	add	a4,sp,241
   11884:	0e210793          	add	a5,sp,226
   11888:	8f11                	sub	a4,a4,a2
   1188a:	973e                	add	a4,a4,a5
   1188c:	1194                	add	a3,sp,224
   1188e:	40d707bb          	subw	a5,a4,a3
   11892:	f0be                	sd	a5,96(sp)
   11894:	7706                	ld	a4,96(sp)
   11896:	77a2                	ld	a5,40(sp)
   11898:	4605                	li	a2,1
   1189a:	00e78cbb          	addw	s9,a5,a4
   1189e:	8766                	mv	a4,s9
   118a0:	5ef65263          	bge	a2,a5,11e84 <_vfprintf_r+0x1b2e>
   118a4:	67a6                	ld	a5,72(sp)
   118a6:	00f70cbb          	addw	s9,a4,a5
   118aa:	77c2                	ld	a5,48(sp)
   118ac:	fffcc713          	not	a4,s9
   118b0:	977d                	sra	a4,a4,0x3f
   118b2:	bff7f913          	and	s2,a5,-1025
   118b6:	2901                	sext.w	s2,s2
   118b8:	00ecf733          	and	a4,s9,a4
   118bc:	10096913          	or	s2,s2,256
   118c0:	00070b1b          	sext.w	s6,a4
   118c4:	fc02                	sd	zero,56(sp)
   118c6:	f802                	sd	zero,48(sp)
   118c8:	f002                	sd	zero,32(sp)
   118ca:	67aa                	ld	a5,136(sp)
   118cc:	2c078363          	beqz	a5,11b92 <_vfprintf_r+0x183c>
   118d0:	02d00613          	li	a2,45
   118d4:	0cc107a3          	sb	a2,207(sp)
   118d8:	4e01                	li	t3,0
   118da:	2b05                	addw	s6,s6,1
   118dc:	c23fe06f          	j	104fe <_vfprintf_r+0x1a8>
   118e0:	6582                	ld	a1,0(sp)
   118e2:	0210                	add	a2,sp,256
   118e4:	8526                	mv	a0,s1
   118e6:	095060ef          	jal	1817a <__sprint_r>
   118ea:	c6051863          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   118ee:	6d52                	ld	s10,272(sp)
   118f0:	0300                	add	s0,sp,384
   118f2:	e24ff06f          	j	10f16 <_vfprintf_r+0xbc0>
   118f6:	4699                	li	a3,6
   118f8:	b269                	j	11282 <_vfprintf_r+0xf2c>
   118fa:	670a                	ld	a4,128(sp)
   118fc:	40d785bb          	subw	a1,a5,a3
   11900:	866a                	mv	a2,s10
   11902:	41570c33          	sub	s8,a4,s5
   11906:	000c079b          	sext.w	a5,s8
   1190a:	00f5d363          	bge	a1,a5,11910 <_vfprintf_r+0x15ba>
   1190e:	8c2e                	mv	s8,a1
   11910:	2c01                	sext.w	s8,s8
   11912:	e90ff06f          	j	10fa2 <_vfprintf_r+0xc4c>
   11916:	67a2                	ld	a5,8(sp)
   11918:	00f71023          	sh	a5,0(a4)
   1191c:	95eff06f          	j	10a7a <_vfprintf_r+0x724>
   11920:	1b02                	sll	s6,s6,0x20
   11922:	020b5b13          	srl	s6,s6,0x20
   11926:	ec3a                	sd	a4,24(sp)
   11928:	4785                	li	a5,1
   1192a:	878ff06f          	j	109a2 <_vfprintf_r+0x64c>
   1192e:	87da                	mv	a5,s6
   11930:	8e0ff06f          	j	10a10 <_vfprintf_r+0x6ba>
   11934:	1b02                	sll	s6,s6,0x20
   11936:	020b5b13          	srl	s6,s6,0x20
   1193a:	b0d9                	j	11200 <_vfprintf_r+0xeaa>
   1193c:	1b02                	sll	s6,s6,0x20
   1193e:	020b5b13          	srl	s6,s6,0x20
   11942:	910ff06f          	j	10a52 <_vfprintf_r+0x6fc>
   11946:	6582                	ld	a1,0(sp)
   11948:	6506                	ld	a0,64(sp)
   1194a:	0210                	add	a2,sp,256
   1194c:	02f060ef          	jal	1817a <__sprint_r>
   11950:	c9bfe06f          	j	105ea <_vfprintf_r+0x294>
   11954:	0cf14603          	lbu	a2,207(sp)
   11958:	b131                	j	11564 <_vfprintf_r+0x120e>
   1195a:	6582                	ld	a1,0(sp)
   1195c:	0210                	add	a2,sp,256
   1195e:	8526                	mv	a0,s1
   11960:	01b060ef          	jal	1817a <__sprint_r>
   11964:	be051b63          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11968:	456e                	lw	a0,216(sp)
   1196a:	6652                	ld	a2,272(sp)
   1196c:	10812583          	lw	a1,264(sp)
   11970:	0300                	add	s0,sp,384
   11972:	be9d                	j	114e8 <_vfprintf_r+0x1192>
   11974:	05800713          	li	a4,88
   11978:	00296793          	or	a5,s2,2
   1197c:	03000693          	li	a3,48
   11980:	2781                	sext.w	a5,a5
   11982:	0ce108a3          	sb	a4,209(sp)
   11986:	0cd10823          	sb	a3,208(sp)
   1198a:	06300713          	li	a4,99
   1198e:	f83e                	sd	a5,48(sp)
   11990:	e802                	sd	zero,16(sp)
   11992:	11810a93          	add	s5,sp,280
   11996:	49c74363          	blt	a4,t3,11e1c <_vfprintf_r+0x1ac6>
   1199a:	10296913          	or	s2,s2,258
   1199e:	7b6e                	ld	s6,248(sp)
   119a0:	0009079b          	sext.w	a5,s2
   119a4:	e13e                	sd	a5,128(sp)
   119a6:	e502                	sd	zero,136(sp)
   119a8:	7a4e                	ld	s4,240(sp)
   119aa:	220b4b63          	bltz	s6,11be0 <_vfprintf_r+0x188a>
   119ae:	06100713          	li	a4,97
   119b2:	00ee8463          	beq	t4,a4,119ba <_vfprintf_r+0x1664>
   119b6:	d71fe06f          	j	10726 <_vfprintf_r+0x3d0>
   119ba:	85da                	mv	a1,s6
   119bc:	8552                	mv	a0,s4
   119be:	f472                	sd	t3,40(sp)
   119c0:	f076                	sd	t4,32(sp)
   119c2:	5df0a0ef          	jal	1c7a0 <__trunctfdf2>
   119c6:	09a8                	add	a0,sp,216
   119c8:	74e040ef          	jal	16116 <frexp>
   119cc:	5110a0ef          	jal	1c6dc <__extenddftf2>
   119d0:	0000b717          	auipc	a4,0xb
   119d4:	32070713          	add	a4,a4,800 # 1ccf0 <blanks.1+0x10>
   119d8:	6310                	ld	a2,0(a4)
   119da:	6714                	ld	a3,8(a4)
   119dc:	4c1090ef          	jal	1b69c <__multf3>
   119e0:	4601                	li	a2,0
   119e2:	4681                	li	a3,0
   119e4:	8d2a                	mv	s10,a0
   119e6:	892e                	mv	s2,a1
   119e8:	29b090ef          	jal	1b482 <__eqtf2>
   119ec:	7e82                	ld	t4,32(sp)
   119ee:	7e22                	ld	t3,40(sp)
   119f0:	e119                	bnez	a0,119f6 <_vfprintf_r+0x16a0>
   119f2:	4705                	li	a4,1
   119f4:	cdba                	sw	a4,216(sp)
   119f6:	0000b797          	auipc	a5,0xb
   119fa:	0b278793          	add	a5,a5,178 # 1caa8 <__clzdi2+0x8a>
   119fe:	f03e                	sd	a5,32(sp)
   11a00:	0000b697          	auipc	a3,0xb
   11a04:	30068693          	add	a3,a3,768 # 1cd00 <blanks.1+0x20>
   11a08:	020e1713          	sll	a4,t3,0x20
   11a0c:	629c                	ld	a5,0(a3)
   11a0e:	9301                	srl	a4,a4,0x20
   11a10:	6694                	ld	a3,8(a3)
   11a12:	0705                	add	a4,a4,1
   11a14:	9756                	add	a4,a4,s5
   11a16:	000e061b          	sext.w	a2,t3
   11a1a:	8a56                	mv	s4,s5
   11a1c:	f44e                	sd	s3,40(sp)
   11a1e:	e95e                	sd	s7,144(sp)
   11a20:	f122                	sd	s0,160(sp)
   11a22:	f956                	sd	s5,176(sp)
   11a24:	7402                	ld	s0,32(sp)
   11a26:	89ba                	mv	s3,a4
   11a28:	fc76                	sd	t4,56(sp)
   11a2a:	fd32                	sd	a2,184(sp)
   11a2c:	ed72                	sd	t3,152(sp)
   11a2e:	f526                	sd	s1,168(sp)
   11a30:	8abe                	mv	s5,a5
   11a32:	8bb6                	mv	s7,a3
   11a34:	a039                	j	11a42 <_vfprintf_r+0x16ec>
   11a36:	4601                	li	a2,0
   11a38:	4681                	li	a3,0
   11a3a:	249090ef          	jal	1b482 <__eqtf2>
   11a3e:	40050663          	beqz	a0,11e4a <_vfprintf_r+0x1af4>
   11a42:	8656                	mv	a2,s5
   11a44:	86de                	mv	a3,s7
   11a46:	856a                	mv	a0,s10
   11a48:	85ca                	mv	a1,s2
   11a4a:	453090ef          	jal	1b69c <__multf3>
   11a4e:	84ae                	mv	s1,a1
   11a50:	892a                	mv	s2,a0
   11a52:	3a50a0ef          	jal	1c5f6 <__fixtfsi>
   11a56:	00050b1b          	sext.w	s6,a0
   11a5a:	855a                	mv	a0,s6
   11a5c:	42b0a0ef          	jal	1c686 <__floatsitf>
   11a60:	86ae                	mv	a3,a1
   11a62:	862a                	mv	a2,a0
   11a64:	85a6                	mv	a1,s1
   11a66:	854a                	mv	a0,s2
   11a68:	2560a0ef          	jal	1bcbe <__subtf3>
   11a6c:	01640733          	add	a4,s0,s6
   11a70:	00074683          	lbu	a3,0(a4)
   11a74:	84d2                	mv	s1,s4
   11a76:	0a05                	add	s4,s4,1
   11a78:	feda0fa3          	sb	a3,-1(s4)
   11a7c:	8c2a                	mv	s8,a0
   11a7e:	8d2a                	mv	s10,a0
   11a80:	892e                	mv	s2,a1
   11a82:	fb499ae3          	bne	s3,s4,11a36 <_vfprintf_r+0x16e0>
   11a86:	79a2                	ld	s3,40(sp)
   11a88:	7ee2                	ld	t4,56(sp)
   11a8a:	f426                	sd	s1,40(sp)
   11a8c:	6bca                	ld	s7,144(sp)
   11a8e:	6e6a                	ld	t3,152(sp)
   11a90:	740a                	ld	s0,160(sp)
   11a92:	74aa                	ld	s1,168(sp)
   11a94:	7aca                	ld	s5,176(sp)
   11a96:	8caa                	mv	s9,a0
   11a98:	8c2e                	mv	s8,a1
   11a9a:	597d                	li	s2,-1
   11a9c:	0000b697          	auipc	a3,0xb
   11aa0:	27468693          	add	a3,a3,628 # 1cd10 <blanks.1+0x30>
   11aa4:	0086bd03          	ld	s10,8(a3)
   11aa8:	6290                	ld	a2,0(a3)
   11aaa:	8566                	mv	a0,s9
   11aac:	86ea                	mv	a3,s10
   11aae:	85e2                	mv	a1,s8
   11ab0:	e972                	sd	t3,144(sp)
   11ab2:	fc76                	sd	t4,56(sp)
   11ab4:	ed32                	sd	a2,152(sp)
   11ab6:	267090ef          	jal	1b51c <__getf2>
   11aba:	7ee2                	ld	t4,56(sp)
   11abc:	6e4a                	ld	t3,144(sp)
   11abe:	2aa04f63          	bgtz	a0,11d7c <_vfprintf_r+0x1a26>
   11ac2:	666a                	ld	a2,152(sp)
   11ac4:	86ea                	mv	a3,s10
   11ac6:	8566                	mv	a0,s9
   11ac8:	85e2                	mv	a1,s8
   11aca:	1b9090ef          	jal	1b482 <__eqtf2>
   11ace:	7ee2                	ld	t4,56(sp)
   11ad0:	6e4a                	ld	t3,144(sp)
   11ad2:	e509                	bnez	a0,11adc <_vfprintf_r+0x1786>
   11ad4:	001b7793          	and	a5,s6,1
   11ad8:	2a079263          	bnez	a5,11d7c <_vfprintf_r+0x1a26>
   11adc:	0019079b          	addw	a5,s2,1
   11ae0:	97d2                	add	a5,a5,s4
   11ae2:	03000693          	li	a3,48
   11ae6:	2c094b63          	bltz	s2,11dbc <_vfprintf_r+0x1a66>
   11aea:	0a05                	add	s4,s4,1
   11aec:	feda0fa3          	sb	a3,-1(s4)
   11af0:	ff479de3          	bne	a5,s4,11aea <_vfprintf_r+0x1794>
   11af4:	415787bb          	subw	a5,a5,s5
   11af8:	f43e                	sd	a5,40(sp)
   11afa:	fdfefd13          	and	s10,t4,-33
   11afe:	b1ed                	j	117e8 <_vfprintf_r+0x1492>
   11b00:	6582                	ld	a1,0(sp)
   11b02:	0210                	add	a2,sp,256
   11b04:	8526                	mv	a0,s1
   11b06:	674060ef          	jal	1817a <__sprint_r>
   11b0a:	a4051863          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11b0e:	6d52                	ld	s10,272(sp)
   11b10:	0300                	add	s0,sp,384
   11b12:	c18ff06f          	j	10f2a <_vfprintf_r+0xbd4>
   11b16:	001e091b          	addw	s2,t3,1
   11b1a:	4689                	li	a3,2
   11b1c:	b991                	j	11770 <_vfprintf_r+0x141a>
   11b1e:	8972                	mv	s2,t3
   11b20:	468d                	li	a3,3
   11b22:	b1b9                	j	11770 <_vfprintf_r+0x141a>
   11b24:	85da                	mv	a1,s6
   11b26:	8552                	mv	a0,s4
   11b28:	f472                	sd	t3,40(sp)
   11b2a:	f076                	sd	t4,32(sp)
   11b2c:	4750a0ef          	jal	1c7a0 <__trunctfdf2>
   11b30:	09a8                	add	a0,sp,216
   11b32:	5e4040ef          	jal	16116 <frexp>
   11b36:	3a70a0ef          	jal	1c6dc <__extenddftf2>
   11b3a:	0000b717          	auipc	a4,0xb
   11b3e:	1b670713          	add	a4,a4,438 # 1ccf0 <blanks.1+0x10>
   11b42:	6310                	ld	a2,0(a4)
   11b44:	6714                	ld	a3,8(a4)
   11b46:	357090ef          	jal	1b69c <__multf3>
   11b4a:	4601                	li	a2,0
   11b4c:	4681                	li	a3,0
   11b4e:	8d2a                	mv	s10,a0
   11b50:	892e                	mv	s2,a1
   11b52:	131090ef          	jal	1b482 <__eqtf2>
   11b56:	7e82                	ld	t4,32(sp)
   11b58:	7e22                	ld	t3,40(sp)
   11b5a:	e119                	bnez	a0,11b60 <_vfprintf_r+0x180a>
   11b5c:	4705                	li	a4,1
   11b5e:	cdba                	sw	a4,216(sp)
   11b60:	0000b797          	auipc	a5,0xb
   11b64:	f3078793          	add	a5,a5,-208 # 1ca90 <__clzdi2+0x72>
   11b68:	f03e                	sd	a5,32(sp)
   11b6a:	bd59                	j	11a00 <_vfprintf_r+0x16aa>
   11b6c:	77ae                	ld	a5,232(sp)
   11b6e:	466e                	lw	a2,216(sp)
   11b70:	415787bb          	subw	a5,a5,s5
   11b74:	f43e                	sd	a5,40(sp)
   11b76:	5775                	li	a4,-3
   11b78:	f032                	sd	a2,32(sp)
   11b7a:	00e64463          	blt	a2,a4,11b82 <_vfprintf_r+0x182c>
   11b7e:	02ce5263          	bge	t3,a2,11ba2 <_vfprintf_r+0x184c>
   11b82:	fff6071b          	addw	a4,a2,-1
   11b86:	3ef9                	addw	t4,t4,-2
   11b88:	cdba                	sw	a4,216(sp)
   11b8a:	0ffef693          	zext.b	a3,t4
   11b8e:	4581                	li	a1,0
   11b90:	b161                	j	11818 <_vfprintf_r+0x14c2>
   11b92:	0cf14603          	lbu	a2,207(sp)
   11b96:	4e01                	li	t3,0
   11b98:	c219                	beqz	a2,11b9e <_vfprintf_r+0x1848>
   11b9a:	d0dfe06f          	j	108a6 <_vfprintf_r+0x550>
   11b9e:	961fe06f          	j	104fe <_vfprintf_r+0x1a8>
   11ba2:	77a2                	ld	a5,40(sp)
   11ba4:	1af64263          	blt	a2,a5,11d48 <_vfprintf_r+0x19f2>
   11ba8:	77c2                	ld	a5,48(sp)
   11baa:	8cb2                	mv	s9,a2
   11bac:	0017f713          	and	a4,a5,1
   11bb0:	c701                	beqz	a4,11bb8 <_vfprintf_r+0x1862>
   11bb2:	67a6                	ld	a5,72(sp)
   11bb4:	00c78cbb          	addw	s9,a5,a2
   11bb8:	77c2                	ld	a5,48(sp)
   11bba:	4007f713          	and	a4,a5,1024
   11bbe:	c319                	beqz	a4,11bc4 <_vfprintf_r+0x186e>
   11bc0:	2cc04863          	bgtz	a2,11e90 <_vfprintf_r+0x1b3a>
   11bc4:	fffcc713          	not	a4,s9
   11bc8:	977d                	sra	a4,a4,0x3f
   11bca:	690a                	ld	s2,128(sp)
   11bcc:	00ecf733          	and	a4,s9,a4
   11bd0:	00070b1b          	sext.w	s6,a4
   11bd4:	06700e93          	li	t4,103
   11bd8:	fc02                	sd	zero,56(sp)
   11bda:	f802                	sd	zero,48(sp)
   11bdc:	b1fd                	j	118ca <_vfprintf_r+0x1574>
   11bde:	e802                	sd	zero,16(sp)
   11be0:	577d                	li	a4,-1
   11be2:	177e                	sll	a4,a4,0x3f
   11be4:	02d00793          	li	a5,45
   11be8:	00eb4b33          	xor	s6,s6,a4
   11bec:	e53e                	sd	a5,136(sp)
   11bee:	b3c1                	j	119ae <_vfprintf_r+0x1658>
   11bf0:	77c2                	ld	a5,48(sp)
   11bf2:	0017f713          	and	a4,a5,1
   11bf6:	db3d                	beqz	a4,11b6c <_vfprintf_r+0x1816>
   11bf8:	012a8cb3          	add	s9,s5,s2
   11bfc:	04700d13          	li	s10,71
   11c00:	be45                	j	117b0 <_vfprintf_r+0x145a>
   11c02:	0210                	add	a2,sp,256
   11c04:	85e2                	mv	a1,s8
   11c06:	8526                	mv	a0,s1
   11c08:	572060ef          	jal	1817a <__sprint_r>
   11c0c:	94051763          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11c10:	000ac603          	lbu	a2,0(s5)
   11c14:	66d2                	ld	a3,272(sp)
   11c16:	031c                	add	a5,sp,384
   11c18:	489d                	li	a7,7
   11c1a:	9b32                	add	s6,s6,a2
   11c1c:	bcb1                	j	11678 <_vfprintf_r+0x1322>
   11c1e:	07800713          	li	a4,120
   11c22:	bb99                	j	11978 <_vfprintf_r+0x1622>
   11c24:	02d00793          	li	a5,45
   11c28:	0cf107a3          	sb	a5,207(sp)
   11c2c:	02d00613          	li	a2,45
   11c30:	81bff06f          	j	1144a <_vfprintf_r+0x10f4>
   11c34:	6582                	ld	a1,0(sp)
   11c36:	0210                	add	a2,sp,256
   11c38:	8526                	mv	a0,s1
   11c3a:	540060ef          	jal	1817a <__sprint_r>
   11c3e:	90051e63          	bnez	a0,10d5a <_vfprintf_r+0xa04>
   11c42:	46ee                	lw	a3,216(sp)
   11c44:	6652                	ld	a2,272(sp)
   11c46:	0300                	add	s0,sp,384
   11c48:	b20ff06f          	j	10f68 <_vfprintf_r+0xc12>
   11c4c:	0cf14603          	lbu	a2,207(sp)
   11c50:	ec52                	sd	s4,24(sp)
   11c52:	fc02                	sd	zero,56(sp)
   11c54:	f802                	sd	zero,48(sp)
   11c56:	f002                	sd	zero,32(sp)
   11c58:	8b72                	mv	s6,t3
   11c5a:	8cf2                	mv	s9,t3
   11c5c:	4e01                	li	t3,0
   11c5e:	c219                	beqz	a2,11c64 <_vfprintf_r+0x190e>
   11c60:	c47fe06f          	j	108a6 <_vfprintf_r+0x550>
   11c64:	89bfe06f          	j	104fe <_vfprintf_r+0x1a8>
   11c68:	00054683          	lbu	a3,0(a0)
   11c6c:	03000713          	li	a4,48
   11c70:	00e68563          	beq	a3,a4,11c7a <_vfprintf_r+0x1924>
   11c74:	46ee                	lw	a3,216(sp)
   11c76:	9cb6                	add	s9,s9,a3
   11c78:	be25                	j	117b0 <_vfprintf_r+0x145a>
   11c7a:	4601                	li	a2,0
   11c7c:	4681                	li	a3,0
   11c7e:	8552                	mv	a0,s4
   11c80:	85da                	mv	a1,s6
   11c82:	f472                	sd	t3,40(sp)
   11c84:	f076                	sd	t4,32(sp)
   11c86:	7fc090ef          	jal	1b482 <__eqtf2>
   11c8a:	7e82                	ld	t4,32(sp)
   11c8c:	7e22                	ld	t3,40(sp)
   11c8e:	d17d                	beqz	a0,11c74 <_vfprintf_r+0x191e>
   11c90:	4705                	li	a4,1
   11c92:	412706bb          	subw	a3,a4,s2
   11c96:	cdb6                	sw	a3,216(sp)
   11c98:	9cb6                	add	s9,s9,a3
   11c9a:	be19                	j	117b0 <_vfprintf_r+0x145a>
   11c9c:	6582                	ld	a1,0(sp)
   11c9e:	0210                	add	a2,sp,256
   11ca0:	8526                	mv	a0,s1
   11ca2:	4d8060ef          	jal	1817a <__sprint_r>
   11ca6:	c119                	beqz	a0,11cac <_vfprintf_r+0x1956>
   11ca8:	8b2ff06f          	j	10d5a <_vfprintf_r+0xa04>
   11cac:	45ee                	lw	a1,216(sp)
   11cae:	77a2                	ld	a5,40(sp)
   11cb0:	6652                	ld	a2,272(sp)
   11cb2:	0300                	add	s0,sp,384
   11cb4:	40b785bb          	subw	a1,a5,a1
   11cb8:	aeaff06f          	j	10fa2 <_vfprintf_r+0xc4c>
   11cbc:	8c4a                	mv	s8,s2
   11cbe:	96aff06f          	j	10e28 <_vfprintf_r+0xad2>
   11cc2:	56c1                	li	a3,-16
   11cc4:	40a00c3b          	negw	s8,a0
   11cc8:	0000bd17          	auipc	s10,0xb
   11ccc:	008d0d13          	add	s10,s10,8 # 1ccd0 <zeroes.0>
   11cd0:	4cc1                	li	s9,16
   11cd2:	4a1d                	li	s4,7
   11cd4:	00d54663          	blt	a0,a3,11ce0 <_vfprintf_r+0x198a>
   11cd8:	aa01                	j	11de8 <_vfprintf_r+0x1a92>
   11cda:	3c41                	addw	s8,s8,-16
   11cdc:	118cd663          	bge	s9,s8,11de8 <_vfprintf_r+0x1a92>
   11ce0:	2585                	addw	a1,a1,1
   11ce2:	0641                	add	a2,a2,16
   11ce4:	01a43023          	sd	s10,0(s0)
   11ce8:	01943423          	sd	s9,8(s0)
   11cec:	ea32                	sd	a2,272(sp)
   11cee:	10b12423          	sw	a1,264(sp)
   11cf2:	0441                	add	s0,s0,16
   11cf4:	feba53e3          	bge	s4,a1,11cda <_vfprintf_r+0x1984>
   11cf8:	6582                	ld	a1,0(sp)
   11cfa:	0210                	add	a2,sp,256
   11cfc:	8526                	mv	a0,s1
   11cfe:	47c060ef          	jal	1817a <__sprint_r>
   11d02:	c119                	beqz	a0,11d08 <_vfprintf_r+0x19b2>
   11d04:	856ff06f          	j	10d5a <_vfprintf_r+0xa04>
   11d08:	6652                	ld	a2,272(sp)
   11d0a:	10812583          	lw	a1,264(sp)
   11d0e:	0300                	add	s0,sp,384
   11d10:	b7e9                	j	11cda <_vfprintf_r+0x1984>
   11d12:	77c2                	ld	a5,48(sp)
   11d14:	0017f713          	and	a4,a5,1
   11d18:	7782                	ld	a5,32(sp)
   11d1a:	00ee6733          	or	a4,t3,a4
   11d1e:	20f05763          	blez	a5,11f2c <_vfprintf_r+0x1bd6>
   11d22:	1c071b63          	bnez	a4,11ef8 <_vfprintf_r+0x1ba2>
   11d26:	7c82                	ld	s9,32(sp)
   11d28:	06600e93          	li	t4,102
   11d2c:	77c2                	ld	a5,48(sp)
   11d2e:	4007f713          	and	a4,a5,1024
   11d32:	16071163          	bnez	a4,11e94 <_vfprintf_r+0x1b3e>
   11d36:	fffcc713          	not	a4,s9
   11d3a:	977d                	sra	a4,a4,0x3f
   11d3c:	00ecf733          	and	a4,s9,a4
   11d40:	690a                	ld	s2,128(sp)
   11d42:	00070b1b          	sext.w	s6,a4
   11d46:	bd49                	j	11bd8 <_vfprintf_r+0x1882>
   11d48:	67a6                	ld	a5,72(sp)
   11d4a:	7722                	ld	a4,40(sp)
   11d4c:	06700e93          	li	t4,103
   11d50:	00e78cbb          	addw	s9,a5,a4
   11d54:	7782                	ld	a5,32(sp)
   11d56:	fcf04be3          	bgtz	a5,11d2c <_vfprintf_r+0x19d6>
   11d5a:	40fc873b          	subw	a4,s9,a5
   11d5e:	2705                	addw	a4,a4,1
   11d60:	00070c9b          	sext.w	s9,a4
   11d64:	fffcc613          	not	a2,s9
   11d68:	967d                	sra	a2,a2,0x3f
   11d6a:	8f71                	and	a4,a4,a2
   11d6c:	690a                	ld	s2,128(sp)
   11d6e:	00070b1b          	sext.w	s6,a4
   11d72:	b59d                	j	11bd8 <_vfprintf_r+0x1882>
   11d74:	57fd                	li	a5,-1
   11d76:	e43e                	sd	a5,8(sp)
   11d78:	883fe06f          	j	105fa <_vfprintf_r+0x2a4>
   11d7c:	77a2                	ld	a5,40(sp)
   11d7e:	86d2                	mv	a3,s4
   11d80:	f5be                	sd	a5,232(sp)
   11d82:	7782                	ld	a5,32(sp)
   11d84:	fffa4603          	lbu	a2,-1(s4)
   11d88:	00f7c583          	lbu	a1,15(a5)
   11d8c:	00c59e63          	bne	a1,a2,11da8 <_vfprintf_r+0x1a52>
   11d90:	03000513          	li	a0,48
   11d94:	fea68fa3          	sb	a0,-1(a3)
   11d98:	76ae                	ld	a3,232(sp)
   11d9a:	fff68793          	add	a5,a3,-1
   11d9e:	f5be                	sd	a5,232(sp)
   11da0:	fff6c603          	lbu	a2,-1(a3)
   11da4:	fec588e3          	beq	a1,a2,11d94 <_vfprintf_r+0x1a3e>
   11da8:	0016059b          	addw	a1,a2,1
   11dac:	03900513          	li	a0,57
   11db0:	0ff5f593          	zext.b	a1,a1
   11db4:	08a60263          	beq	a2,a0,11e38 <_vfprintf_r+0x1ae2>
   11db8:	feb68fa3          	sb	a1,-1(a3)
   11dbc:	87d2                	mv	a5,s4
   11dbe:	bb1d                	j	11af4 <_vfprintf_r+0x179e>
   11dc0:	0e210693          	add	a3,sp,226
   11dc4:	e599                	bnez	a1,11dd2 <_vfprintf_r+0x1a7c>
   11dc6:	03000693          	li	a3,48
   11dca:	0ed10123          	sb	a3,226(sp)
   11dce:	0e310693          	add	a3,sp,227
   11dd2:	041c                	add	a5,sp,512
   11dd4:	40f68633          	sub	a2,a3,a5
   11dd8:	0307071b          	addw	a4,a4,48
   11ddc:	1216079b          	addw	a5,a2,289
   11de0:	00e68023          	sb	a4,0(a3)
   11de4:	f0be                	sd	a5,96(sp)
   11de6:	b47d                	j	11894 <_vfprintf_r+0x153e>
   11de8:	2585                	addw	a1,a1,1
   11dea:	9662                	add	a2,a2,s8
   11dec:	01a43023          	sd	s10,0(s0)
   11df0:	01843423          	sd	s8,8(s0)
   11df4:	ea32                	sd	a2,272(sp)
   11df6:	10b12423          	sw	a1,264(sp)
   11dfa:	469d                	li	a3,7
   11dfc:	deb6d363          	bge	a3,a1,113e2 <_vfprintf_r+0x108c>
   11e00:	6582                	ld	a1,0(sp)
   11e02:	0210                	add	a2,sp,256
   11e04:	8526                	mv	a0,s1
   11e06:	374060ef          	jal	1817a <__sprint_r>
   11e0a:	c119                	beqz	a0,11e10 <_vfprintf_r+0x1aba>
   11e0c:	f4ffe06f          	j	10d5a <_vfprintf_r+0xa04>
   11e10:	6652                	ld	a2,272(sp)
   11e12:	10812583          	lw	a1,264(sp)
   11e16:	0300                	add	s0,sp,384
   11e18:	ed4ff06f          	j	114ec <_vfprintf_r+0x1196>
   11e1c:	001e059b          	addw	a1,t3,1
   11e20:	8526                	mv	a0,s1
   11e22:	f076                	sd	t4,32(sp)
   11e24:	e872                	sd	t3,16(sp)
   11e26:	78b020ef          	jal	14db0 <_malloc_r>
   11e2a:	6e42                	ld	t3,16(sp)
   11e2c:	7e82                	ld	t4,32(sp)
   11e2e:	8aaa                	mv	s5,a0
   11e30:	12050c63          	beqz	a0,11f68 <_vfprintf_r+0x1c12>
   11e34:	e82a                	sd	a0,16(sp)
   11e36:	b695                	j	1199a <_vfprintf_r+0x1644>
   11e38:	7782                	ld	a5,32(sp)
   11e3a:	00a7c583          	lbu	a1,10(a5)
   11e3e:	feb68fa3          	sb	a1,-1(a3)
   11e42:	bfad                	j	11dbc <_vfprintf_r+0x1a66>
   11e44:	c31c                	sw	a5,0(a4)
   11e46:	c35fe06f          	j	10a7a <_vfprintf_r+0x724>
   11e4a:	766a                	ld	a2,184(sp)
   11e4c:	7aca                	ld	s5,176(sp)
   11e4e:	79a2                	ld	s3,40(sp)
   11e50:	8ce2                	mv	s9,s8
   11e52:	00ca863b          	addw	a2,s5,a2
   11e56:	f426                	sd	s1,40(sp)
   11e58:	8c4a                	mv	s8,s2
   11e5a:	7ee2                	ld	t4,56(sp)
   11e5c:	6bca                	ld	s7,144(sp)
   11e5e:	6e6a                	ld	t3,152(sp)
   11e60:	740a                	ld	s0,160(sp)
   11e62:	74aa                	ld	s1,168(sp)
   11e64:	4146093b          	subw	s2,a2,s4
   11e68:	b915                	j	11a9c <_vfprintf_r+0x1746>
   11e6a:	000e0463          	beqz	t3,11e72 <_vfprintf_r+0x1b1c>
   11e6e:	89dfe06f          	j	1070a <_vfprintf_r+0x3b4>
   11e72:	4e05                	li	t3,1
   11e74:	897fe06f          	j	1070a <_vfprintf_r+0x3b4>
   11e78:	4e19                	li	t3,6
   11e7a:	891fe06f          	j	1070a <_vfprintf_r+0x3b4>
   11e7e:	ec3a                	sd	a4,24(sp)
   11e80:	fa9fe06f          	j	10e28 <_vfprintf_r+0xad2>
   11e84:	77c2                	ld	a5,48(sp)
   11e86:	0017f613          	and	a2,a5,1
   11e8a:	a20600e3          	beqz	a2,118aa <_vfprintf_r+0x1554>
   11e8e:	bc19                	j	118a4 <_vfprintf_r+0x154e>
   11e90:	06700e93          	li	t4,103
   11e94:	76a6                	ld	a3,104(sp)
   11e96:	0ff00613          	li	a2,255
   11e9a:	0006c703          	lbu	a4,0(a3)
   11e9e:	0cc70263          	beq	a4,a2,11f62 <_vfprintf_r+0x1c0c>
   11ea2:	7782                	ld	a5,32(sp)
   11ea4:	4801                	li	a6,0
   11ea6:	4501                	li	a0,0
   11ea8:	0ff00593          	li	a1,255
   11eac:	0007061b          	sext.w	a2,a4
   11eb0:	00f75a63          	bge	a4,a5,11ec4 <_vfprintf_r+0x1b6e>
   11eb4:	0016c703          	lbu	a4,1(a3)
   11eb8:	9f91                	subw	a5,a5,a2
   11eba:	cb1d                	beqz	a4,11ef0 <_vfprintf_r+0x1b9a>
   11ebc:	2505                	addw	a0,a0,1
   11ebe:	0685                	add	a3,a3,1
   11ec0:	feb716e3          	bne	a4,a1,11eac <_vfprintf_r+0x1b56>
   11ec4:	f03e                	sd	a5,32(sp)
   11ec6:	f4b6                	sd	a3,104(sp)
   11ec8:	f82a                	sd	a0,48(sp)
   11eca:	fc42                	sd	a6,56(sp)
   11ecc:	77e2                	ld	a5,56(sp)
   11ece:	7742                	ld	a4,48(sp)
   11ed0:	690a                	ld	s2,128(sp)
   11ed2:	9f3d                	addw	a4,a4,a5
   11ed4:	77c6                	ld	a5,112(sp)
   11ed6:	02f7073b          	mulw	a4,a4,a5
   11eda:	0197073b          	addw	a4,a4,s9
   11ede:	00070c9b          	sext.w	s9,a4
   11ee2:	fffcc613          	not	a2,s9
   11ee6:	967d                	sra	a2,a2,0x3f
   11ee8:	8f71                	and	a4,a4,a2
   11eea:	00070b1b          	sext.w	s6,a4
   11eee:	baf1                	j	118ca <_vfprintf_r+0x1574>
   11ef0:	0006c703          	lbu	a4,0(a3)
   11ef4:	2805                	addw	a6,a6,1
   11ef6:	b7e9                	j	11ec0 <_vfprintf_r+0x1b6a>
   11ef8:	6726                	ld	a4,72(sp)
   11efa:	06600e93          	li	t4,102
   11efe:	00f706bb          	addw	a3,a4,a5
   11f02:	01c68cbb          	addw	s9,a3,t3
   11f06:	b51d                	j	11d2c <_vfprintf_r+0x19d6>
   11f08:	07000693          	li	a3,112
   11f0c:	b229                	j	11816 <_vfprintf_r+0x14c0>
   11f0e:	66e2                	ld	a3,24(sp)
   11f10:	4298                	lw	a4,0(a3)
   11f12:	06a1                	add	a3,a3,8
   11f14:	8e3a                	mv	t3,a4
   11f16:	00075363          	bgez	a4,11f1c <_vfprintf_r+0x1bc6>
   11f1a:	5e7d                	li	t3,-1
   11f1c:	0019ce83          	lbu	t4,1(s3)
   11f20:	000e0a1b          	sext.w	s4,t3
   11f24:	ec36                	sd	a3,24(sp)
   11f26:	89be                	mv	s3,a5
   11f28:	d5afe06f          	j	10482 <_vfprintf_r+0x12c>
   11f2c:	e719                	bnez	a4,11f3a <_vfprintf_r+0x1be4>
   11f2e:	690a                	ld	s2,128(sp)
   11f30:	4b05                	li	s6,1
   11f32:	06600e93          	li	t4,102
   11f36:	4c85                	li	s9,1
   11f38:	b145                	j	11bd8 <_vfprintf_r+0x1882>
   11f3a:	67a6                	ld	a5,72(sp)
   11f3c:	690a                	ld	s2,128(sp)
   11f3e:	06600e93          	li	t4,102
   11f42:	0017871b          	addw	a4,a5,1
   11f46:	01c7073b          	addw	a4,a4,t3
   11f4a:	00070c9b          	sext.w	s9,a4
   11f4e:	fffcc613          	not	a2,s9
   11f52:	967d                	sra	a2,a2,0x3f
   11f54:	8f71                	and	a4,a4,a2
   11f56:	00070b1b          	sext.w	s6,a4
   11f5a:	b9bd                	j	11bd8 <_vfprintf_r+0x1882>
   11f5c:	4789                	li	a5,2
   11f5e:	f0be                	sd	a5,96(sp)
   11f60:	ba15                	j	11894 <_vfprintf_r+0x153e>
   11f62:	fc02                	sd	zero,56(sp)
   11f64:	f802                	sd	zero,48(sp)
   11f66:	b79d                	j	11ecc <_vfprintf_r+0x1b76>
   11f68:	6702                	ld	a4,0(sp)
   11f6a:	01075783          	lhu	a5,16(a4)
   11f6e:	0407e793          	or	a5,a5,64
   11f72:	00f71823          	sh	a5,16(a4)
   11f76:	e74fe06f          	j	105ea <_vfprintf_r+0x294>

0000000000011f7a <vfprintf>:
   11f7a:	86b2                	mv	a3,a2
   11f7c:	862e                	mv	a2,a1
   11f7e:	85aa                	mv	a1,a0
   11f80:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   11f84:	bd2fe06f          	j	10356 <_vfprintf_r>

0000000000011f88 <__sbprintf>:
   11f88:	01059783          	lh	a5,16(a1)
   11f8c:	0125d703          	lhu	a4,18(a1)
   11f90:	0ac5a303          	lw	t1,172(a1)
   11f94:	9bf5                	and	a5,a5,-3
   11f96:	0107979b          	sllw	a5,a5,0x10
   11f9a:	0305b883          	ld	a7,48(a1)
   11f9e:	0405b803          	ld	a6,64(a1)
   11fa2:	0107171b          	sllw	a4,a4,0x10
   11fa6:	0107d79b          	srlw	a5,a5,0x10
   11faa:	b3010113          	add	sp,sp,-1232
   11fae:	8fd9                	or	a5,a5,a4
   11fb0:	4c813023          	sd	s0,1216(sp)
   11fb4:	40000713          	li	a4,1024
   11fb8:	c83e                	sw	a5,16(sp)
   11fba:	842e                	mv	s0,a1
   11fbc:	191c                	add	a5,sp,176
   11fbe:	858a                	mv	a1,sp
   11fc0:	4a913c23          	sd	s1,1208(sp)
   11fc4:	4b213823          	sd	s2,1200(sp)
   11fc8:	4c113423          	sd	ra,1224(sp)
   11fcc:	892a                	mv	s2,a0
   11fce:	d71a                	sw	t1,172(sp)
   11fd0:	f846                	sd	a7,48(sp)
   11fd2:	e0c2                	sd	a6,64(sp)
   11fd4:	e03e                	sd	a5,0(sp)
   11fd6:	ec3e                	sd	a5,24(sp)
   11fd8:	c63a                	sw	a4,12(sp)
   11fda:	d03a                	sw	a4,32(sp)
   11fdc:	d402                	sw	zero,40(sp)
   11fde:	b78fe0ef          	jal	10356 <_vfprintf_r>
   11fe2:	84aa                	mv	s1,a0
   11fe4:	02055963          	bgez	a0,12016 <__sbprintf+0x8e>
   11fe8:	01015783          	lhu	a5,16(sp)
   11fec:	0407f793          	and	a5,a5,64
   11ff0:	c799                	beqz	a5,11ffe <__sbprintf+0x76>
   11ff2:	01045783          	lhu	a5,16(s0)
   11ff6:	0407e793          	or	a5,a5,64
   11ffa:	00f41823          	sh	a5,16(s0)
   11ffe:	4c813083          	ld	ra,1224(sp)
   12002:	4c013403          	ld	s0,1216(sp)
   12006:	4b013903          	ld	s2,1200(sp)
   1200a:	8526                	mv	a0,s1
   1200c:	4b813483          	ld	s1,1208(sp)
   12010:	4d010113          	add	sp,sp,1232
   12014:	8082                	ret
   12016:	858a                	mv	a1,sp
   12018:	854a                	mv	a0,s2
   1201a:	336000ef          	jal	12350 <_fflush_r>
   1201e:	d569                	beqz	a0,11fe8 <__sbprintf+0x60>
   12020:	54fd                	li	s1,-1
   12022:	b7d9                	j	11fe8 <__sbprintf+0x60>

0000000000012024 <__swsetup_r>:
   12024:	1101                	add	sp,sp,-32
   12026:	e822                	sd	s0,16(sp)
   12028:	e426                	sd	s1,8(sp)
   1202a:	ec06                	sd	ra,24(sp)
   1202c:	7581b783          	ld	a5,1880(gp) # 1fac8 <_impure_ptr>
   12030:	84aa                	mv	s1,a0
   12032:	842e                	mv	s0,a1
   12034:	c399                	beqz	a5,1203a <__swsetup_r+0x16>
   12036:	4bb8                	lw	a4,80(a5)
   12038:	cb29                	beqz	a4,1208a <__swsetup_r+0x66>
   1203a:	01041783          	lh	a5,16(s0)
   1203e:	0087f713          	and	a4,a5,8
   12042:	cf21                	beqz	a4,1209a <__swsetup_r+0x76>
   12044:	6c18                	ld	a4,24(s0)
   12046:	c735                	beqz	a4,120b2 <__swsetup_r+0x8e>
   12048:	0017f693          	and	a3,a5,1
   1204c:	ce91                	beqz	a3,12068 <__swsetup_r+0x44>
   1204e:	5014                	lw	a3,32(s0)
   12050:	00042623          	sw	zero,12(s0)
   12054:	4501                	li	a0,0
   12056:	40d006bb          	negw	a3,a3
   1205a:	d414                	sw	a3,40(s0)
   1205c:	cf11                	beqz	a4,12078 <__swsetup_r+0x54>
   1205e:	60e2                	ld	ra,24(sp)
   12060:	6442                	ld	s0,16(sp)
   12062:	64a2                	ld	s1,8(sp)
   12064:	6105                	add	sp,sp,32
   12066:	8082                	ret
   12068:	0027f693          	and	a3,a5,2
   1206c:	4601                	li	a2,0
   1206e:	e291                	bnez	a3,12072 <__swsetup_r+0x4e>
   12070:	5010                	lw	a2,32(s0)
   12072:	c450                	sw	a2,12(s0)
   12074:	4501                	li	a0,0
   12076:	f765                	bnez	a4,1205e <__swsetup_r+0x3a>
   12078:	0807f713          	and	a4,a5,128
   1207c:	d36d                	beqz	a4,1205e <__swsetup_r+0x3a>
   1207e:	0407e793          	or	a5,a5,64
   12082:	00f41823          	sh	a5,16(s0)
   12086:	557d                	li	a0,-1
   12088:	bfd9                	j	1205e <__swsetup_r+0x3a>
   1208a:	853e                	mv	a0,a5
   1208c:	5a6000ef          	jal	12632 <__sinit>
   12090:	01041783          	lh	a5,16(s0)
   12094:	0087f713          	and	a4,a5,8
   12098:	f755                	bnez	a4,12044 <__swsetup_r+0x20>
   1209a:	0107f713          	and	a4,a5,16
   1209e:	cf21                	beqz	a4,120f6 <__swsetup_r+0xd2>
   120a0:	0047f713          	and	a4,a5,4
   120a4:	e70d                	bnez	a4,120ce <__swsetup_r+0xaa>
   120a6:	6c18                	ld	a4,24(s0)
   120a8:	0087e793          	or	a5,a5,8
   120ac:	00f41823          	sh	a5,16(s0)
   120b0:	ff41                	bnez	a4,12048 <__swsetup_r+0x24>
   120b2:	2807f693          	and	a3,a5,640
   120b6:	20000613          	li	a2,512
   120ba:	f8c687e3          	beq	a3,a2,12048 <__swsetup_r+0x24>
   120be:	85a2                	mv	a1,s0
   120c0:	8526                	mv	a0,s1
   120c2:	351020ef          	jal	14c12 <__smakebuf_r>
   120c6:	01041783          	lh	a5,16(s0)
   120ca:	6c18                	ld	a4,24(s0)
   120cc:	bfb5                	j	12048 <__swsetup_r+0x24>
   120ce:	6c2c                	ld	a1,88(s0)
   120d0:	cd81                	beqz	a1,120e8 <__swsetup_r+0xc4>
   120d2:	07440713          	add	a4,s0,116
   120d6:	00e58763          	beq	a1,a4,120e4 <__swsetup_r+0xc0>
   120da:	8526                	mv	a0,s1
   120dc:	68e000ef          	jal	1276a <_free_r>
   120e0:	01041783          	lh	a5,16(s0)
   120e4:	04043c23          	sd	zero,88(s0)
   120e8:	6c18                	ld	a4,24(s0)
   120ea:	fdb7f793          	and	a5,a5,-37
   120ee:	00042423          	sw	zero,8(s0)
   120f2:	e018                	sd	a4,0(s0)
   120f4:	bf55                	j	120a8 <__swsetup_r+0x84>
   120f6:	4725                	li	a4,9
   120f8:	c098                	sw	a4,0(s1)
   120fa:	0407e793          	or	a5,a5,64
   120fe:	b751                	j	12082 <__swsetup_r+0x5e>

0000000000012100 <__call_exitprocs>:
   12100:	715d                	add	sp,sp,-80
   12102:	f052                	sd	s4,32(sp)
   12104:	7481ba03          	ld	s4,1864(gp) # 1fab8 <_global_impure_ptr>
   12108:	f84a                	sd	s2,48(sp)
   1210a:	1f8a3903          	ld	s2,504(s4)
   1210e:	e486                	sd	ra,72(sp)
   12110:	e0a2                	sd	s0,64(sp)
   12112:	fc26                	sd	s1,56(sp)
   12114:	f44e                	sd	s3,40(sp)
   12116:	ec56                	sd	s5,24(sp)
   12118:	e85a                	sd	s6,16(sp)
   1211a:	e45e                	sd	s7,8(sp)
   1211c:	e062                	sd	s8,0(sp)
   1211e:	02090863          	beqz	s2,1214e <__call_exitprocs+0x4e>
   12122:	8b2a                	mv	s6,a0
   12124:	8bae                	mv	s7,a1
   12126:	4a85                	li	s5,1
   12128:	59fd                	li	s3,-1
   1212a:	00892483          	lw	s1,8(s2)
   1212e:	fff4841b          	addw	s0,s1,-1
   12132:	00044e63          	bltz	s0,1214e <__call_exitprocs+0x4e>
   12136:	048e                	sll	s1,s1,0x3
   12138:	94ca                	add	s1,s1,s2
   1213a:	020b8663          	beqz	s7,12166 <__call_exitprocs+0x66>
   1213e:	2084b783          	ld	a5,520(s1)
   12142:	03778263          	beq	a5,s7,12166 <__call_exitprocs+0x66>
   12146:	347d                	addw	s0,s0,-1
   12148:	14e1                	add	s1,s1,-8
   1214a:	ff3418e3          	bne	s0,s3,1213a <__call_exitprocs+0x3a>
   1214e:	60a6                	ld	ra,72(sp)
   12150:	6406                	ld	s0,64(sp)
   12152:	74e2                	ld	s1,56(sp)
   12154:	7942                	ld	s2,48(sp)
   12156:	79a2                	ld	s3,40(sp)
   12158:	7a02                	ld	s4,32(sp)
   1215a:	6ae2                	ld	s5,24(sp)
   1215c:	6b42                	ld	s6,16(sp)
   1215e:	6ba2                	ld	s7,8(sp)
   12160:	6c02                	ld	s8,0(sp)
   12162:	6161                	add	sp,sp,80
   12164:	8082                	ret
   12166:	00892783          	lw	a5,8(s2)
   1216a:	6498                	ld	a4,8(s1)
   1216c:	37fd                	addw	a5,a5,-1
   1216e:	04878463          	beq	a5,s0,121b6 <__call_exitprocs+0xb6>
   12172:	0004b423          	sd	zero,8(s1)
   12176:	db61                	beqz	a4,12146 <__call_exitprocs+0x46>
   12178:	31092783          	lw	a5,784(s2)
   1217c:	008a96bb          	sllw	a3,s5,s0
   12180:	00892c03          	lw	s8,8(s2)
   12184:	8ff5                	and	a5,a5,a3
   12186:	2781                	sext.w	a5,a5
   12188:	ef89                	bnez	a5,121a2 <__call_exitprocs+0xa2>
   1218a:	9702                	jalr	a4
   1218c:	00892703          	lw	a4,8(s2)
   12190:	1f8a3783          	ld	a5,504(s4)
   12194:	01871463          	bne	a4,s8,1219c <__call_exitprocs+0x9c>
   12198:	fb2787e3          	beq	a5,s2,12146 <__call_exitprocs+0x46>
   1219c:	dbcd                	beqz	a5,1214e <__call_exitprocs+0x4e>
   1219e:	893e                	mv	s2,a5
   121a0:	b769                	j	1212a <__call_exitprocs+0x2a>
   121a2:	31492783          	lw	a5,788(s2)
   121a6:	1084b583          	ld	a1,264(s1)
   121aa:	8ff5                	and	a5,a5,a3
   121ac:	2781                	sext.w	a5,a5
   121ae:	e799                	bnez	a5,121bc <__call_exitprocs+0xbc>
   121b0:	855a                	mv	a0,s6
   121b2:	9702                	jalr	a4
   121b4:	bfe1                	j	1218c <__call_exitprocs+0x8c>
   121b6:	00892423          	sw	s0,8(s2)
   121ba:	bf75                	j	12176 <__call_exitprocs+0x76>
   121bc:	852e                	mv	a0,a1
   121be:	9702                	jalr	a4
   121c0:	b7f1                	j	1218c <__call_exitprocs+0x8c>

00000000000121c2 <atexit>:
   121c2:	85aa                	mv	a1,a0
   121c4:	4681                	li	a3,0
   121c6:	4601                	li	a2,0
   121c8:	4501                	li	a0,0
   121ca:	5bb0606f          	j	18f84 <__register_exitproc>

00000000000121ce <__sflush_r>:
   121ce:	01059783          	lh	a5,16(a1)
   121d2:	7179                	add	sp,sp,-48
   121d4:	f022                	sd	s0,32(sp)
   121d6:	e44e                	sd	s3,8(sp)
   121d8:	f406                	sd	ra,40(sp)
   121da:	ec26                	sd	s1,24(sp)
   121dc:	e84a                	sd	s2,16(sp)
   121de:	0087f713          	and	a4,a5,8
   121e2:	842e                	mv	s0,a1
   121e4:	89aa                	mv	s3,a0
   121e6:	e369                	bnez	a4,122a8 <__sflush_r+0xda>
   121e8:	6705                	lui	a4,0x1
   121ea:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf8e8>
   121ee:	4594                	lw	a3,8(a1)
   121f0:	8f5d                	or	a4,a4,a5
   121f2:	00e59823          	sh	a4,16(a1)
   121f6:	10d05463          	blez	a3,122fe <__sflush_r+0x130>
   121fa:	04843803          	ld	a6,72(s0)
   121fe:	08080d63          	beqz	a6,12298 <__sflush_r+0xca>
   12202:	83b1                	srl	a5,a5,0xc
   12204:	0009a483          	lw	s1,0(s3)
   12208:	8b85                	and	a5,a5,1
   1220a:	0009a023          	sw	zero,0(s3)
   1220e:	780c                	ld	a1,48(s0)
   12210:	efe5                	bnez	a5,12308 <__sflush_r+0x13a>
   12212:	4601                	li	a2,0
   12214:	4685                	li	a3,1
   12216:	854e                	mv	a0,s3
   12218:	9802                	jalr	a6
   1221a:	57fd                	li	a5,-1
   1221c:	862a                	mv	a2,a0
   1221e:	10f50863          	beq	a0,a5,1232e <__sflush_r+0x160>
   12222:	01041703          	lh	a4,16(s0)
   12226:	04843803          	ld	a6,72(s0)
   1222a:	780c                	ld	a1,48(s0)
   1222c:	8b11                	and	a4,a4,4
   1222e:	c719                	beqz	a4,1223c <__sflush_r+0x6e>
   12230:	4418                	lw	a4,8(s0)
   12232:	6c3c                	ld	a5,88(s0)
   12234:	8e19                	sub	a2,a2,a4
   12236:	c399                	beqz	a5,1223c <__sflush_r+0x6e>
   12238:	583c                	lw	a5,112(s0)
   1223a:	8e1d                	sub	a2,a2,a5
   1223c:	4681                	li	a3,0
   1223e:	854e                	mv	a0,s3
   12240:	9802                	jalr	a6
   12242:	57fd                	li	a5,-1
   12244:	0cf51463          	bne	a0,a5,1230c <__sflush_r+0x13e>
   12248:	0009a683          	lw	a3,0(s3)
   1224c:	47f5                	li	a5,29
   1224e:	08d7ea63          	bltu	a5,a3,122e2 <__sflush_r+0x114>
   12252:	dfc00737          	lui	a4,0xdfc00
   12256:	1779                	add	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbe048e>
   12258:	40d75733          	sra	a4,a4,a3
   1225c:	8b05                	and	a4,a4,1
   1225e:	01041783          	lh	a5,16(s0)
   12262:	e351                	bnez	a4,122e6 <__sflush_r+0x118>
   12264:	6c10                	ld	a2,24(s0)
   12266:	777d                	lui	a4,0xfffff
   12268:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfc8f>
   1226c:	8f7d                	and	a4,a4,a5
   1226e:	83b1                	srl	a5,a5,0xc
   12270:	00e41823          	sh	a4,16(s0)
   12274:	00042423          	sw	zero,8(s0)
   12278:	e010                	sd	a2,0(s0)
   1227a:	8b85                	and	a5,a5,1
   1227c:	e7f9                	bnez	a5,1234a <__sflush_r+0x17c>
   1227e:	6c2c                	ld	a1,88(s0)
   12280:	0099a023          	sw	s1,0(s3)
   12284:	c991                	beqz	a1,12298 <__sflush_r+0xca>
   12286:	07440793          	add	a5,s0,116
   1228a:	00f58563          	beq	a1,a5,12294 <__sflush_r+0xc6>
   1228e:	854e                	mv	a0,s3
   12290:	4da000ef          	jal	1276a <_free_r>
   12294:	04043c23          	sd	zero,88(s0)
   12298:	4501                	li	a0,0
   1229a:	70a2                	ld	ra,40(sp)
   1229c:	7402                	ld	s0,32(sp)
   1229e:	64e2                	ld	s1,24(sp)
   122a0:	6942                	ld	s2,16(sp)
   122a2:	69a2                	ld	s3,8(sp)
   122a4:	6145                	add	sp,sp,48
   122a6:	8082                	ret
   122a8:	0185b903          	ld	s2,24(a1)
   122ac:	fe0906e3          	beqz	s2,12298 <__sflush_r+0xca>
   122b0:	6184                	ld	s1,0(a1)
   122b2:	8b8d                	and	a5,a5,3
   122b4:	0125b023          	sd	s2,0(a1)
   122b8:	412484bb          	subw	s1,s1,s2
   122bc:	4701                	li	a4,0
   122be:	e391                	bnez	a5,122c2 <__sflush_r+0xf4>
   122c0:	5198                	lw	a4,32(a1)
   122c2:	c458                	sw	a4,12(s0)
   122c4:	00904663          	bgtz	s1,122d0 <__sflush_r+0x102>
   122c8:	bfc1                	j	12298 <__sflush_r+0xca>
   122ca:	992a                	add	s2,s2,a0
   122cc:	fc9056e3          	blez	s1,12298 <__sflush_r+0xca>
   122d0:	603c                	ld	a5,64(s0)
   122d2:	780c                	ld	a1,48(s0)
   122d4:	86a6                	mv	a3,s1
   122d6:	864a                	mv	a2,s2
   122d8:	854e                	mv	a0,s3
   122da:	9782                	jalr	a5
   122dc:	9c89                	subw	s1,s1,a0
   122de:	fea046e3          	bgtz	a0,122ca <__sflush_r+0xfc>
   122e2:	01041783          	lh	a5,16(s0)
   122e6:	0407e793          	or	a5,a5,64
   122ea:	70a2                	ld	ra,40(sp)
   122ec:	00f41823          	sh	a5,16(s0)
   122f0:	7402                	ld	s0,32(sp)
   122f2:	64e2                	ld	s1,24(sp)
   122f4:	6942                	ld	s2,16(sp)
   122f6:	69a2                	ld	s3,8(sp)
   122f8:	557d                	li	a0,-1
   122fa:	6145                	add	sp,sp,48
   122fc:	8082                	ret
   122fe:	59b4                	lw	a3,112(a1)
   12300:	eed04de3          	bgtz	a3,121fa <__sflush_r+0x2c>
   12304:	4501                	li	a0,0
   12306:	bf51                	j	1229a <__sflush_r+0xcc>
   12308:	6850                	ld	a2,144(s0)
   1230a:	b70d                	j	1222c <__sflush_r+0x5e>
   1230c:	01041783          	lh	a5,16(s0)
   12310:	6c14                	ld	a3,24(s0)
   12312:	777d                	lui	a4,0xfffff
   12314:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdfc8f>
   12318:	8f7d                	and	a4,a4,a5
   1231a:	83b1                	srl	a5,a5,0xc
   1231c:	00e41823          	sh	a4,16(s0)
   12320:	00042423          	sw	zero,8(s0)
   12324:	e014                	sd	a3,0(s0)
   12326:	8b85                	and	a5,a5,1
   12328:	dbb9                	beqz	a5,1227e <__sflush_r+0xb0>
   1232a:	e848                	sd	a0,144(s0)
   1232c:	bf89                	j	1227e <__sflush_r+0xb0>
   1232e:	0009a783          	lw	a5,0(s3)
   12332:	ee0788e3          	beqz	a5,12222 <__sflush_r+0x54>
   12336:	4775                	li	a4,29
   12338:	00e78563          	beq	a5,a4,12342 <__sflush_r+0x174>
   1233c:	4759                	li	a4,22
   1233e:	fae792e3          	bne	a5,a4,122e2 <__sflush_r+0x114>
   12342:	0099a023          	sw	s1,0(s3)
   12346:	4501                	li	a0,0
   12348:	bf89                	j	1229a <__sflush_r+0xcc>
   1234a:	fa95                	bnez	a3,1227e <__sflush_r+0xb0>
   1234c:	e848                	sd	a0,144(s0)
   1234e:	bf05                	j	1227e <__sflush_r+0xb0>

0000000000012350 <_fflush_r>:
   12350:	1101                	add	sp,sp,-32
   12352:	e822                	sd	s0,16(sp)
   12354:	ec06                	sd	ra,24(sp)
   12356:	842a                	mv	s0,a0
   12358:	c119                	beqz	a0,1235e <_fflush_r+0xe>
   1235a:	493c                	lw	a5,80(a0)
   1235c:	cb89                	beqz	a5,1236e <_fflush_r+0x1e>
   1235e:	01059783          	lh	a5,16(a1)
   12362:	ef89                	bnez	a5,1237c <_fflush_r+0x2c>
   12364:	60e2                	ld	ra,24(sp)
   12366:	6442                	ld	s0,16(sp)
   12368:	4501                	li	a0,0
   1236a:	6105                	add	sp,sp,32
   1236c:	8082                	ret
   1236e:	e42e                	sd	a1,8(sp)
   12370:	2c2000ef          	jal	12632 <__sinit>
   12374:	65a2                	ld	a1,8(sp)
   12376:	01059783          	lh	a5,16(a1)
   1237a:	d7ed                	beqz	a5,12364 <_fflush_r+0x14>
   1237c:	8522                	mv	a0,s0
   1237e:	6442                	ld	s0,16(sp)
   12380:	60e2                	ld	ra,24(sp)
   12382:	6105                	add	sp,sp,32
   12384:	b5a9                	j	121ce <__sflush_r>

0000000000012386 <fflush>:
   12386:	cd1d                	beqz	a0,123c4 <fflush+0x3e>
   12388:	1101                	add	sp,sp,-32
   1238a:	e822                	sd	s0,16(sp)
   1238c:	ec06                	sd	ra,24(sp)
   1238e:	842a                	mv	s0,a0
   12390:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   12394:	c119                	beqz	a0,1239a <fflush+0x14>
   12396:	493c                	lw	a5,80(a0)
   12398:	cf91                	beqz	a5,123b4 <fflush+0x2e>
   1239a:	01041783          	lh	a5,16(s0)
   1239e:	e791                	bnez	a5,123aa <fflush+0x24>
   123a0:	60e2                	ld	ra,24(sp)
   123a2:	6442                	ld	s0,16(sp)
   123a4:	4501                	li	a0,0
   123a6:	6105                	add	sp,sp,32
   123a8:	8082                	ret
   123aa:	85a2                	mv	a1,s0
   123ac:	6442                	ld	s0,16(sp)
   123ae:	60e2                	ld	ra,24(sp)
   123b0:	6105                	add	sp,sp,32
   123b2:	bd31                	j	121ce <__sflush_r>
   123b4:	e42a                	sd	a0,8(sp)
   123b6:	27c000ef          	jal	12632 <__sinit>
   123ba:	01041783          	lh	a5,16(s0)
   123be:	6522                	ld	a0,8(sp)
   123c0:	d3e5                	beqz	a5,123a0 <fflush+0x1a>
   123c2:	b7e5                	j	123aa <fflush+0x24>
   123c4:	00000597          	auipc	a1,0x0
   123c8:	f8c58593          	add	a1,a1,-116 # 12350 <_fflush_r>
   123cc:	7481b503          	ld	a0,1864(gp) # 1fab8 <_global_impure_ptr>
   123d0:	a595                	j	12a34 <_fwalk_reent>

00000000000123d2 <__fp_lock>:
   123d2:	4501                	li	a0,0
   123d4:	8082                	ret

00000000000123d6 <_cleanup_r>:
   123d6:	00007597          	auipc	a1,0x7
   123da:	d5258593          	add	a1,a1,-686 # 19128 <_fclose_r>
   123de:	ad99                	j	12a34 <_fwalk_reent>

00000000000123e0 <__fp_unlock>:
   123e0:	4501                	li	a0,0
   123e2:	8082                	ret

00000000000123e4 <__sinit.part.0>:
   123e4:	7139                	add	sp,sp,-64
   123e6:	fc06                	sd	ra,56(sp)
   123e8:	f822                	sd	s0,48(sp)
   123ea:	f426                	sd	s1,40(sp)
   123ec:	f04a                	sd	s2,32(sp)
   123ee:	ec4e                	sd	s3,24(sp)
   123f0:	e852                	sd	s4,16(sp)
   123f2:	e456                	sd	s5,8(sp)
   123f4:	e05a                	sd	s6,0(sp)
   123f6:	6500                	ld	s0,8(a0)
   123f8:	00000717          	auipc	a4,0x0
   123fc:	fde70713          	add	a4,a4,-34 # 123d6 <_cleanup_r>
   12400:	ed38                	sd	a4,88(a0)
   12402:	53850793          	add	a5,a0,1336
   12406:	470d                	li	a4,3
   12408:	52e52423          	sw	a4,1320(a0)
   1240c:	52f53823          	sd	a5,1328(a0)
   12410:	52053023          	sd	zero,1312(a0)
   12414:	4791                	li	a5,4
   12416:	892a                	mv	s2,a0
   12418:	c81c                	sw	a5,16(s0)
   1241a:	4621                	li	a2,8
   1241c:	4581                	li	a1,0
   1241e:	00043023          	sd	zero,0(s0)
   12422:	00043423          	sd	zero,8(s0)
   12426:	0a042623          	sw	zero,172(s0)
   1242a:	00043c23          	sd	zero,24(s0)
   1242e:	02042023          	sw	zero,32(s0)
   12432:	02042423          	sw	zero,40(s0)
   12436:	0a440513          	add	a0,s0,164
   1243a:	e25fd0ef          	jal	1025e <memset>
   1243e:	01093483          	ld	s1,16(s2)
   12442:	00004b17          	auipc	s6,0x4
   12446:	e0eb0b13          	add	s6,s6,-498 # 16250 <__sread>
   1244a:	00004a97          	auipc	s5,0x4
   1244e:	e42a8a93          	add	s5,s5,-446 # 1628c <__swrite>
   12452:	00004a17          	auipc	s4,0x4
   12456:	e8ea0a13          	add	s4,s4,-370 # 162e0 <__sseek>
   1245a:	00004997          	auipc	s3,0x4
   1245e:	ed898993          	add	s3,s3,-296 # 16332 <__sclose>
   12462:	67c1                	lui	a5,0x10
   12464:	03643c23          	sd	s6,56(s0)
   12468:	05543023          	sd	s5,64(s0)
   1246c:	05443423          	sd	s4,72(s0)
   12470:	05343823          	sd	s3,80(s0)
   12474:	f800                	sd	s0,48(s0)
   12476:	07a5                	add	a5,a5,9 # 10009 <exit-0xdf>
   12478:	c89c                	sw	a5,16(s1)
   1247a:	4621                	li	a2,8
   1247c:	4581                	li	a1,0
   1247e:	0004b023          	sd	zero,0(s1)
   12482:	0004b423          	sd	zero,8(s1)
   12486:	0a04a623          	sw	zero,172(s1)
   1248a:	0004bc23          	sd	zero,24(s1)
   1248e:	0204a023          	sw	zero,32(s1)
   12492:	0204a423          	sw	zero,40(s1)
   12496:	0a448513          	add	a0,s1,164
   1249a:	dc5fd0ef          	jal	1025e <memset>
   1249e:	01893403          	ld	s0,24(s2)
   124a2:	000207b7          	lui	a5,0x20
   124a6:	0364bc23          	sd	s6,56(s1)
   124aa:	0554b023          	sd	s5,64(s1)
   124ae:	0544b423          	sd	s4,72(s1)
   124b2:	0534b823          	sd	s3,80(s1)
   124b6:	f884                	sd	s1,48(s1)
   124b8:	07c9                	add	a5,a5,18 # 20012 <__BSS_END__+0x4a2>
   124ba:	c81c                	sw	a5,16(s0)
   124bc:	00043023          	sd	zero,0(s0)
   124c0:	00043423          	sd	zero,8(s0)
   124c4:	0a042623          	sw	zero,172(s0)
   124c8:	00043c23          	sd	zero,24(s0)
   124cc:	02042023          	sw	zero,32(s0)
   124d0:	02042423          	sw	zero,40(s0)
   124d4:	0a440513          	add	a0,s0,164
   124d8:	4621                	li	a2,8
   124da:	4581                	li	a1,0
   124dc:	d83fd0ef          	jal	1025e <memset>
   124e0:	70e2                	ld	ra,56(sp)
   124e2:	03643c23          	sd	s6,56(s0)
   124e6:	05543023          	sd	s5,64(s0)
   124ea:	05443423          	sd	s4,72(s0)
   124ee:	05343823          	sd	s3,80(s0)
   124f2:	f800                	sd	s0,48(s0)
   124f4:	7442                	ld	s0,48(sp)
   124f6:	4785                	li	a5,1
   124f8:	04f92823          	sw	a5,80(s2)
   124fc:	74a2                	ld	s1,40(sp)
   124fe:	7902                	ld	s2,32(sp)
   12500:	69e2                	ld	s3,24(sp)
   12502:	6a42                	ld	s4,16(sp)
   12504:	6aa2                	ld	s5,8(sp)
   12506:	6b02                	ld	s6,0(sp)
   12508:	6121                	add	sp,sp,64
   1250a:	8082                	ret

000000000001250c <__sfmoreglue>:
   1250c:	1101                	add	sp,sp,-32
   1250e:	e426                	sd	s1,8(sp)
   12510:	0b000793          	li	a5,176
   12514:	fff5849b          	addw	s1,a1,-1
   12518:	02f484b3          	mul	s1,s1,a5
   1251c:	e04a                	sd	s2,0(sp)
   1251e:	892e                	mv	s2,a1
   12520:	e822                	sd	s0,16(sp)
   12522:	ec06                	sd	ra,24(sp)
   12524:	0c848593          	add	a1,s1,200
   12528:	089020ef          	jal	14db0 <_malloc_r>
   1252c:	842a                	mv	s0,a0
   1252e:	cd01                	beqz	a0,12546 <__sfmoreglue+0x3a>
   12530:	0561                	add	a0,a0,24
   12532:	00043023          	sd	zero,0(s0)
   12536:	01242423          	sw	s2,8(s0)
   1253a:	e808                	sd	a0,16(s0)
   1253c:	0b048613          	add	a2,s1,176
   12540:	4581                	li	a1,0
   12542:	d1dfd0ef          	jal	1025e <memset>
   12546:	60e2                	ld	ra,24(sp)
   12548:	8522                	mv	a0,s0
   1254a:	6442                	ld	s0,16(sp)
   1254c:	64a2                	ld	s1,8(sp)
   1254e:	6902                	ld	s2,0(sp)
   12550:	6105                	add	sp,sp,32
   12552:	8082                	ret

0000000000012554 <__sfp>:
   12554:	7179                	add	sp,sp,-48
   12556:	ec26                	sd	s1,24(sp)
   12558:	7481b483          	ld	s1,1864(gp) # 1fab8 <_global_impure_ptr>
   1255c:	48bc                	lw	a5,80(s1)
   1255e:	e84a                	sd	s2,16(sp)
   12560:	f406                	sd	ra,40(sp)
   12562:	f022                	sd	s0,32(sp)
   12564:	e44e                	sd	s3,8(sp)
   12566:	892a                	mv	s2,a0
   12568:	cfbd                	beqz	a5,125e6 <__sfp+0x92>
   1256a:	52048493          	add	s1,s1,1312
   1256e:	0b000993          	li	s3,176
   12572:	4498                	lw	a4,8(s1)
   12574:	6880                	ld	s0,16(s1)
   12576:	06e05463          	blez	a4,125de <__sfp+0x8a>
   1257a:	1702                	sll	a4,a4,0x20
   1257c:	9301                	srl	a4,a4,0x20
   1257e:	03370733          	mul	a4,a4,s3
   12582:	9722                	add	a4,a4,s0
   12584:	a029                	j	1258e <__sfp+0x3a>
   12586:	0b040413          	add	s0,s0,176
   1258a:	04e40a63          	beq	s0,a4,125de <__sfp+0x8a>
   1258e:	01041783          	lh	a5,16(s0)
   12592:	fbf5                	bnez	a5,12586 <__sfp+0x32>
   12594:	77c1                	lui	a5,0xffff0
   12596:	0785                	add	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffd0491>
   12598:	c81c                	sw	a5,16(s0)
   1259a:	0a042623          	sw	zero,172(s0)
   1259e:	00043023          	sd	zero,0(s0)
   125a2:	00043423          	sd	zero,8(s0)
   125a6:	00043c23          	sd	zero,24(s0)
   125aa:	02042023          	sw	zero,32(s0)
   125ae:	02042423          	sw	zero,40(s0)
   125b2:	4621                	li	a2,8
   125b4:	4581                	li	a1,0
   125b6:	0a440513          	add	a0,s0,164
   125ba:	ca5fd0ef          	jal	1025e <memset>
   125be:	04043c23          	sd	zero,88(s0)
   125c2:	06042023          	sw	zero,96(s0)
   125c6:	06043c23          	sd	zero,120(s0)
   125ca:	08042023          	sw	zero,128(s0)
   125ce:	70a2                	ld	ra,40(sp)
   125d0:	8522                	mv	a0,s0
   125d2:	7402                	ld	s0,32(sp)
   125d4:	64e2                	ld	s1,24(sp)
   125d6:	6942                	ld	s2,16(sp)
   125d8:	69a2                	ld	s3,8(sp)
   125da:	6145                	add	sp,sp,48
   125dc:	8082                	ret
   125de:	6080                	ld	s0,0(s1)
   125e0:	c419                	beqz	s0,125ee <__sfp+0x9a>
   125e2:	84a2                	mv	s1,s0
   125e4:	b779                	j	12572 <__sfp+0x1e>
   125e6:	8526                	mv	a0,s1
   125e8:	dfdff0ef          	jal	123e4 <__sinit.part.0>
   125ec:	bfbd                	j	1256a <__sfp+0x16>
   125ee:	2d800593          	li	a1,728
   125f2:	854a                	mv	a0,s2
   125f4:	7bc020ef          	jal	14db0 <_malloc_r>
   125f8:	842a                	mv	s0,a0
   125fa:	cd19                	beqz	a0,12618 <__sfp+0xc4>
   125fc:	0561                	add	a0,a0,24
   125fe:	4791                	li	a5,4
   12600:	00043023          	sd	zero,0(s0)
   12604:	c41c                	sw	a5,8(s0)
   12606:	e808                	sd	a0,16(s0)
   12608:	2c000613          	li	a2,704
   1260c:	4581                	li	a1,0
   1260e:	c51fd0ef          	jal	1025e <memset>
   12612:	e080                	sd	s0,0(s1)
   12614:	84a2                	mv	s1,s0
   12616:	bfb1                	j	12572 <__sfp+0x1e>
   12618:	0004b023          	sd	zero,0(s1)
   1261c:	47b1                	li	a5,12
   1261e:	00f92023          	sw	a5,0(s2)
   12622:	b775                	j	125ce <__sfp+0x7a>

0000000000012624 <_cleanup>:
   12624:	00007597          	auipc	a1,0x7
   12628:	b0458593          	add	a1,a1,-1276 # 19128 <_fclose_r>
   1262c:	7481b503          	ld	a0,1864(gp) # 1fab8 <_global_impure_ptr>
   12630:	a111                	j	12a34 <_fwalk_reent>

0000000000012632 <__sinit>:
   12632:	493c                	lw	a5,80(a0)
   12634:	c391                	beqz	a5,12638 <__sinit+0x6>
   12636:	8082                	ret
   12638:	b375                	j	123e4 <__sinit.part.0>

000000000001263a <__sfp_lock_acquire>:
   1263a:	8082                	ret

000000000001263c <__sfp_lock_release>:
   1263c:	8082                	ret

000000000001263e <__sinit_lock_acquire>:
   1263e:	8082                	ret

0000000000012640 <__sinit_lock_release>:
   12640:	8082                	ret

0000000000012642 <__fp_lock_all>:
   12642:	00000597          	auipc	a1,0x0
   12646:	d9058593          	add	a1,a1,-624 # 123d2 <__fp_lock>
   1264a:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   1264e:	a6ad                	j	129b8 <_fwalk>

0000000000012650 <__fp_unlock_all>:
   12650:	00000597          	auipc	a1,0x0
   12654:	d9058593          	add	a1,a1,-624 # 123e0 <__fp_unlock>
   12658:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   1265c:	aeb1                	j	129b8 <_fwalk>

000000000001265e <__libc_fini_array>:
   1265e:	1101                	add	sp,sp,-32
   12660:	e822                	sd	s0,16(sp)
   12662:	0000c797          	auipc	a5,0xc
   12666:	31678793          	add	a5,a5,790 # 1e978 <__do_global_dtors_aux_fini_array_entry>
   1266a:	0000c417          	auipc	s0,0xc
   1266e:	31640413          	add	s0,s0,790 # 1e980 <impure_data>
   12672:	8c1d                	sub	s0,s0,a5
   12674:	e426                	sd	s1,8(sp)
   12676:	ec06                	sd	ra,24(sp)
   12678:	40345493          	sra	s1,s0,0x3
   1267c:	c881                	beqz	s1,1268c <__libc_fini_array+0x2e>
   1267e:	1461                	add	s0,s0,-8
   12680:	943e                	add	s0,s0,a5
   12682:	601c                	ld	a5,0(s0)
   12684:	14fd                	add	s1,s1,-1
   12686:	1461                	add	s0,s0,-8
   12688:	9782                	jalr	a5
   1268a:	fce5                	bnez	s1,12682 <__libc_fini_array+0x24>
   1268c:	60e2                	ld	ra,24(sp)
   1268e:	6442                	ld	s0,16(sp)
   12690:	64a2                	ld	s1,8(sp)
   12692:	6105                	add	sp,sp,32
   12694:	8082                	ret

0000000000012696 <_malloc_trim_r>:
   12696:	7179                	add	sp,sp,-48
   12698:	f022                	sd	s0,32(sp)
   1269a:	ec26                	sd	s1,24(sp)
   1269c:	e84a                	sd	s2,16(sp)
   1269e:	e44e                	sd	s3,8(sp)
   126a0:	e052                	sd	s4,0(sp)
   126a2:	89ae                	mv	s3,a1
   126a4:	f406                	sd	ra,40(sp)
   126a6:	0000da17          	auipc	s4,0xd
   126aa:	a22a0a13          	add	s4,s4,-1502 # 1f0c8 <__malloc_av_>
   126ae:	892a                	mv	s2,a0
   126b0:	58d020ef          	jal	1543c <__malloc_lock>
   126b4:	010a3703          	ld	a4,16(s4)
   126b8:	6785                	lui	a5,0x1
   126ba:	fdf78413          	add	s0,a5,-33 # fdf <exit-0xf109>
   126be:	6704                	ld	s1,8(a4)
   126c0:	98f1                	and	s1,s1,-4
   126c2:	9426                	add	s0,s0,s1
   126c4:	41340433          	sub	s0,s0,s3
   126c8:	8031                	srl	s0,s0,0xc
   126ca:	147d                	add	s0,s0,-1
   126cc:	0432                	sll	s0,s0,0xc
   126ce:	00f44b63          	blt	s0,a5,126e4 <_malloc_trim_r+0x4e>
   126d2:	4581                	li	a1,0
   126d4:	854a                	mv	a0,s2
   126d6:	2bf030ef          	jal	16194 <_sbrk_r>
   126da:	010a3783          	ld	a5,16(s4)
   126de:	97a6                	add	a5,a5,s1
   126e0:	00f50e63          	beq	a0,a5,126fc <_malloc_trim_r+0x66>
   126e4:	854a                	mv	a0,s2
   126e6:	559020ef          	jal	1543e <__malloc_unlock>
   126ea:	70a2                	ld	ra,40(sp)
   126ec:	7402                	ld	s0,32(sp)
   126ee:	64e2                	ld	s1,24(sp)
   126f0:	6942                	ld	s2,16(sp)
   126f2:	69a2                	ld	s3,8(sp)
   126f4:	6a02                	ld	s4,0(sp)
   126f6:	4501                	li	a0,0
   126f8:	6145                	add	sp,sp,48
   126fa:	8082                	ret
   126fc:	408005b3          	neg	a1,s0
   12700:	854a                	mv	a0,s2
   12702:	293030ef          	jal	16194 <_sbrk_r>
   12706:	57fd                	li	a5,-1
   12708:	02f50b63          	beq	a0,a5,1273e <_malloc_trim_r+0xa8>
   1270c:	0000d717          	auipc	a4,0xd
   12710:	43c70713          	add	a4,a4,1084 # 1fb48 <__malloc_current_mallinfo>
   12714:	431c                	lw	a5,0(a4)
   12716:	010a3683          	ld	a3,16(s4)
   1271a:	8c81                	sub	s1,s1,s0
   1271c:	0014e493          	or	s1,s1,1
   12720:	9f81                	subw	a5,a5,s0
   12722:	854a                	mv	a0,s2
   12724:	e684                	sd	s1,8(a3)
   12726:	c31c                	sw	a5,0(a4)
   12728:	517020ef          	jal	1543e <__malloc_unlock>
   1272c:	70a2                	ld	ra,40(sp)
   1272e:	7402                	ld	s0,32(sp)
   12730:	64e2                	ld	s1,24(sp)
   12732:	6942                	ld	s2,16(sp)
   12734:	69a2                	ld	s3,8(sp)
   12736:	6a02                	ld	s4,0(sp)
   12738:	4505                	li	a0,1
   1273a:	6145                	add	sp,sp,48
   1273c:	8082                	ret
   1273e:	4581                	li	a1,0
   12740:	854a                	mv	a0,s2
   12742:	253030ef          	jal	16194 <_sbrk_r>
   12746:	010a3703          	ld	a4,16(s4)
   1274a:	46fd                	li	a3,31
   1274c:	40e507b3          	sub	a5,a0,a4
   12750:	f8f6dae3          	bge	a3,a5,126e4 <_malloc_trim_r+0x4e>
   12754:	7601b683          	ld	a3,1888(gp) # 1fad0 <__malloc_sbrk_base>
   12758:	8d15                	sub	a0,a0,a3
   1275a:	0017e793          	or	a5,a5,1
   1275e:	0000d697          	auipc	a3,0xd
   12762:	3ea6a523          	sw	a0,1002(a3) # 1fb48 <__malloc_current_mallinfo>
   12766:	e71c                	sd	a5,8(a4)
   12768:	bfb5                	j	126e4 <_malloc_trim_r+0x4e>

000000000001276a <_free_r>:
   1276a:	12058463          	beqz	a1,12892 <_free_r+0x128>
   1276e:	1101                	add	sp,sp,-32
   12770:	e822                	sd	s0,16(sp)
   12772:	e426                	sd	s1,8(sp)
   12774:	842e                	mv	s0,a1
   12776:	84aa                	mv	s1,a0
   12778:	ec06                	sd	ra,24(sp)
   1277a:	4c3020ef          	jal	1543c <__malloc_lock>
   1277e:	ff843583          	ld	a1,-8(s0)
   12782:	ff040713          	add	a4,s0,-16
   12786:	0000d517          	auipc	a0,0xd
   1278a:	94250513          	add	a0,a0,-1726 # 1f0c8 <__malloc_av_>
   1278e:	ffe5f793          	and	a5,a1,-2
   12792:	00f70633          	add	a2,a4,a5
   12796:	6614                	ld	a3,8(a2)
   12798:	01053803          	ld	a6,16(a0)
   1279c:	9af1                	and	a3,a3,-4
   1279e:	12c80c63          	beq	a6,a2,128d6 <_free_r+0x16c>
   127a2:	e614                	sd	a3,8(a2)
   127a4:	8985                	and	a1,a1,1
   127a6:	00d60833          	add	a6,a2,a3
   127aa:	e1c1                	bnez	a1,1282a <_free_r+0xc0>
   127ac:	ff043303          	ld	t1,-16(s0)
   127b0:	00883583          	ld	a1,8(a6)
   127b4:	0000d897          	auipc	a7,0xd
   127b8:	92488893          	add	a7,a7,-1756 # 1f0d8 <__malloc_av_+0x10>
   127bc:	40670733          	sub	a4,a4,t1
   127c0:	01073803          	ld	a6,16(a4)
   127c4:	979a                	add	a5,a5,t1
   127c6:	8985                	and	a1,a1,1
   127c8:	0f180b63          	beq	a6,a7,128be <_free_r+0x154>
   127cc:	01873303          	ld	t1,24(a4)
   127d0:	00683c23          	sd	t1,24(a6)
   127d4:	01033823          	sd	a6,16(t1)
   127d8:	12058863          	beqz	a1,12908 <_free_r+0x19e>
   127dc:	0017e693          	or	a3,a5,1
   127e0:	e714                	sd	a3,8(a4)
   127e2:	e21c                	sd	a5,0(a2)
   127e4:	1ff00693          	li	a3,511
   127e8:	04f6ee63          	bltu	a3,a5,12844 <_free_r+0xda>
   127ec:	838d                	srl	a5,a5,0x3
   127ee:	0017869b          	addw	a3,a5,1
   127f2:	0016969b          	sllw	a3,a3,0x1
   127f6:	068e                	sll	a3,a3,0x3
   127f8:	00853803          	ld	a6,8(a0)
   127fc:	96aa                	add	a3,a3,a0
   127fe:	628c                	ld	a1,0(a3)
   12800:	4027d61b          	sraw	a2,a5,0x2
   12804:	4785                	li	a5,1
   12806:	00c797b3          	sll	a5,a5,a2
   1280a:	0107e7b3          	or	a5,a5,a6
   1280e:	ff068613          	add	a2,a3,-16
   12812:	ef10                	sd	a2,24(a4)
   12814:	eb0c                	sd	a1,16(a4)
   12816:	e51c                	sd	a5,8(a0)
   12818:	e298                	sd	a4,0(a3)
   1281a:	ed98                	sd	a4,24(a1)
   1281c:	6442                	ld	s0,16(sp)
   1281e:	60e2                	ld	ra,24(sp)
   12820:	8526                	mv	a0,s1
   12822:	64a2                	ld	s1,8(sp)
   12824:	6105                	add	sp,sp,32
   12826:	4190206f          	j	1543e <__malloc_unlock>
   1282a:	00883583          	ld	a1,8(a6)
   1282e:	8985                	and	a1,a1,1
   12830:	c1b5                	beqz	a1,12894 <_free_r+0x12a>
   12832:	0017e693          	or	a3,a5,1
   12836:	fed43c23          	sd	a3,-8(s0)
   1283a:	e21c                	sd	a5,0(a2)
   1283c:	1ff00693          	li	a3,511
   12840:	faf6f6e3          	bgeu	a3,a5,127ec <_free_r+0x82>
   12844:	0097d693          	srl	a3,a5,0x9
   12848:	4611                	li	a2,4
   1284a:	0cd66163          	bltu	a2,a3,1290c <_free_r+0x1a2>
   1284e:	0067d693          	srl	a3,a5,0x6
   12852:	0396859b          	addw	a1,a3,57
   12856:	0015959b          	sllw	a1,a1,0x1
   1285a:	0386861b          	addw	a2,a3,56
   1285e:	058e                	sll	a1,a1,0x3
   12860:	95aa                	add	a1,a1,a0
   12862:	6194                	ld	a3,0(a1)
   12864:	15c1                	add	a1,a1,-16
   12866:	00d59663          	bne	a1,a3,12872 <_free_r+0x108>
   1286a:	a0f5                	j	12956 <_free_r+0x1ec>
   1286c:	6a94                	ld	a3,16(a3)
   1286e:	00d58663          	beq	a1,a3,1287a <_free_r+0x110>
   12872:	6690                	ld	a2,8(a3)
   12874:	9a71                	and	a2,a2,-4
   12876:	fec7ebe3          	bltu	a5,a2,1286c <_free_r+0x102>
   1287a:	6e8c                	ld	a1,24(a3)
   1287c:	ef0c                	sd	a1,24(a4)
   1287e:	eb14                	sd	a3,16(a4)
   12880:	6442                	ld	s0,16(sp)
   12882:	60e2                	ld	ra,24(sp)
   12884:	e998                	sd	a4,16(a1)
   12886:	8526                	mv	a0,s1
   12888:	64a2                	ld	s1,8(sp)
   1288a:	ee98                	sd	a4,24(a3)
   1288c:	6105                	add	sp,sp,32
   1288e:	3b10206f          	j	1543e <__malloc_unlock>
   12892:	8082                	ret
   12894:	97b6                	add	a5,a5,a3
   12896:	0000d897          	auipc	a7,0xd
   1289a:	84288893          	add	a7,a7,-1982 # 1f0d8 <__malloc_av_+0x10>
   1289e:	6a14                	ld	a3,16(a2)
   128a0:	09168f63          	beq	a3,a7,1293e <_free_r+0x1d4>
   128a4:	01863803          	ld	a6,24(a2)
   128a8:	0017e593          	or	a1,a5,1
   128ac:	00f70633          	add	a2,a4,a5
   128b0:	0106bc23          	sd	a6,24(a3)
   128b4:	00d83823          	sd	a3,16(a6)
   128b8:	e70c                	sd	a1,8(a4)
   128ba:	e21c                	sd	a5,0(a2)
   128bc:	b725                	j	127e4 <_free_r+0x7a>
   128be:	e9e5                	bnez	a1,129ae <_free_r+0x244>
   128c0:	6a0c                	ld	a1,16(a2)
   128c2:	6e10                	ld	a2,24(a2)
   128c4:	96be                	add	a3,a3,a5
   128c6:	0016e793          	or	a5,a3,1
   128ca:	ed90                	sd	a2,24(a1)
   128cc:	ea0c                	sd	a1,16(a2)
   128ce:	e71c                	sd	a5,8(a4)
   128d0:	9736                	add	a4,a4,a3
   128d2:	e314                	sd	a3,0(a4)
   128d4:	b7a1                	j	1281c <_free_r+0xb2>
   128d6:	8985                	and	a1,a1,1
   128d8:	96be                	add	a3,a3,a5
   128da:	e989                	bnez	a1,128ec <_free_r+0x182>
   128dc:	ff043583          	ld	a1,-16(s0)
   128e0:	8f0d                	sub	a4,a4,a1
   128e2:	6f1c                	ld	a5,24(a4)
   128e4:	6b10                	ld	a2,16(a4)
   128e6:	96ae                	add	a3,a3,a1
   128e8:	ee1c                	sd	a5,24(a2)
   128ea:	eb90                	sd	a2,16(a5)
   128ec:	0016e793          	or	a5,a3,1
   128f0:	e71c                	sd	a5,8(a4)
   128f2:	e918                	sd	a4,16(a0)
   128f4:	7681b783          	ld	a5,1896(gp) # 1fad8 <__malloc_trim_threshold>
   128f8:	f2f6e2e3          	bltu	a3,a5,1281c <_free_r+0xb2>
   128fc:	7801b583          	ld	a1,1920(gp) # 1faf0 <__malloc_top_pad>
   12900:	8526                	mv	a0,s1
   12902:	d95ff0ef          	jal	12696 <_malloc_trim_r>
   12906:	bf19                	j	1281c <_free_r+0xb2>
   12908:	97b6                	add	a5,a5,a3
   1290a:	bf51                	j	1289e <_free_r+0x134>
   1290c:	4651                	li	a2,20
   1290e:	02d67063          	bgeu	a2,a3,1292e <_free_r+0x1c4>
   12912:	05400613          	li	a2,84
   12916:	04d66b63          	bltu	a2,a3,1296c <_free_r+0x202>
   1291a:	00c7d693          	srl	a3,a5,0xc
   1291e:	06f6859b          	addw	a1,a3,111
   12922:	0015959b          	sllw	a1,a1,0x1
   12926:	06e6861b          	addw	a2,a3,110
   1292a:	058e                	sll	a1,a1,0x3
   1292c:	bf15                	j	12860 <_free_r+0xf6>
   1292e:	05c6859b          	addw	a1,a3,92
   12932:	0015959b          	sllw	a1,a1,0x1
   12936:	05b6861b          	addw	a2,a3,91
   1293a:	058e                	sll	a1,a1,0x3
   1293c:	b715                	j	12860 <_free_r+0xf6>
   1293e:	f518                	sd	a4,40(a0)
   12940:	f118                	sd	a4,32(a0)
   12942:	0017e693          	or	a3,a5,1
   12946:	01173c23          	sd	a7,24(a4)
   1294a:	01173823          	sd	a7,16(a4)
   1294e:	e714                	sd	a3,8(a4)
   12950:	973e                	add	a4,a4,a5
   12952:	e31c                	sd	a5,0(a4)
   12954:	b5e1                	j	1281c <_free_r+0xb2>
   12956:	00853803          	ld	a6,8(a0)
   1295a:	4026561b          	sraw	a2,a2,0x2
   1295e:	4785                	li	a5,1
   12960:	00c797b3          	sll	a5,a5,a2
   12964:	0107e7b3          	or	a5,a5,a6
   12968:	e51c                	sd	a5,8(a0)
   1296a:	bf09                	j	1287c <_free_r+0x112>
   1296c:	15400613          	li	a2,340
   12970:	00d66c63          	bltu	a2,a3,12988 <_free_r+0x21e>
   12974:	00f7d693          	srl	a3,a5,0xf
   12978:	0786859b          	addw	a1,a3,120
   1297c:	0015959b          	sllw	a1,a1,0x1
   12980:	0776861b          	addw	a2,a3,119
   12984:	058e                	sll	a1,a1,0x3
   12986:	bde9                	j	12860 <_free_r+0xf6>
   12988:	55400613          	li	a2,1364
   1298c:	00d66c63          	bltu	a2,a3,129a4 <_free_r+0x23a>
   12990:	0127d693          	srl	a3,a5,0x12
   12994:	07d6859b          	addw	a1,a3,125
   12998:	0015959b          	sllw	a1,a1,0x1
   1299c:	07c6861b          	addw	a2,a3,124
   129a0:	058e                	sll	a1,a1,0x3
   129a2:	bd7d                	j	12860 <_free_r+0xf6>
   129a4:	7f000593          	li	a1,2032
   129a8:	07e00613          	li	a2,126
   129ac:	bd55                	j	12860 <_free_r+0xf6>
   129ae:	0017e693          	or	a3,a5,1
   129b2:	e714                	sd	a3,8(a4)
   129b4:	e21c                	sd	a5,0(a2)
   129b6:	b59d                	j	1281c <_free_r+0xb2>

00000000000129b8 <_fwalk>:
   129b8:	715d                	add	sp,sp,-80
   129ba:	f84a                	sd	s2,48(sp)
   129bc:	f44e                	sd	s3,40(sp)
   129be:	f052                	sd	s4,32(sp)
   129c0:	ec56                	sd	s5,24(sp)
   129c2:	e85a                	sd	s6,16(sp)
   129c4:	e45e                	sd	s7,8(sp)
   129c6:	e486                	sd	ra,72(sp)
   129c8:	e0a2                	sd	s0,64(sp)
   129ca:	fc26                	sd	s1,56(sp)
   129cc:	8aae                	mv	s5,a1
   129ce:	52050993          	add	s3,a0,1312
   129d2:	4901                	li	s2,0
   129d4:	0b000b13          	li	s6,176
   129d8:	4b85                	li	s7,1
   129da:	5a7d                	li	s4,-1
   129dc:	0089a483          	lw	s1,8(s3)
   129e0:	0109b403          	ld	s0,16(s3)
   129e4:	02905863          	blez	s1,12a14 <_fwalk+0x5c>
   129e8:	1482                	sll	s1,s1,0x20
   129ea:	9081                	srl	s1,s1,0x20
   129ec:	036484b3          	mul	s1,s1,s6
   129f0:	94a2                	add	s1,s1,s0
   129f2:	01045783          	lhu	a5,16(s0)
   129f6:	00fbfb63          	bgeu	s7,a5,12a0c <_fwalk+0x54>
   129fa:	01241783          	lh	a5,18(s0)
   129fe:	8522                	mv	a0,s0
   12a00:	01478663          	beq	a5,s4,12a0c <_fwalk+0x54>
   12a04:	9a82                	jalr	s5
   12a06:	01256933          	or	s2,a0,s2
   12a0a:	2901                	sext.w	s2,s2
   12a0c:	0b040413          	add	s0,s0,176
   12a10:	fe8491e3          	bne	s1,s0,129f2 <_fwalk+0x3a>
   12a14:	0009b983          	ld	s3,0(s3)
   12a18:	fc0992e3          	bnez	s3,129dc <_fwalk+0x24>
   12a1c:	60a6                	ld	ra,72(sp)
   12a1e:	6406                	ld	s0,64(sp)
   12a20:	74e2                	ld	s1,56(sp)
   12a22:	79a2                	ld	s3,40(sp)
   12a24:	7a02                	ld	s4,32(sp)
   12a26:	6ae2                	ld	s5,24(sp)
   12a28:	6b42                	ld	s6,16(sp)
   12a2a:	6ba2                	ld	s7,8(sp)
   12a2c:	854a                	mv	a0,s2
   12a2e:	7942                	ld	s2,48(sp)
   12a30:	6161                	add	sp,sp,80
   12a32:	8082                	ret

0000000000012a34 <_fwalk_reent>:
   12a34:	715d                	add	sp,sp,-80
   12a36:	f84a                	sd	s2,48(sp)
   12a38:	f44e                	sd	s3,40(sp)
   12a3a:	f052                	sd	s4,32(sp)
   12a3c:	ec56                	sd	s5,24(sp)
   12a3e:	e85a                	sd	s6,16(sp)
   12a40:	e45e                	sd	s7,8(sp)
   12a42:	e062                	sd	s8,0(sp)
   12a44:	e486                	sd	ra,72(sp)
   12a46:	e0a2                	sd	s0,64(sp)
   12a48:	fc26                	sd	s1,56(sp)
   12a4a:	89aa                	mv	s3,a0
   12a4c:	8b2e                	mv	s6,a1
   12a4e:	52050a13          	add	s4,a0,1312
   12a52:	4901                	li	s2,0
   12a54:	0b000b93          	li	s7,176
   12a58:	4c05                	li	s8,1
   12a5a:	5afd                	li	s5,-1
   12a5c:	008a2483          	lw	s1,8(s4)
   12a60:	010a3403          	ld	s0,16(s4)
   12a64:	02905963          	blez	s1,12a96 <_fwalk_reent+0x62>
   12a68:	1482                	sll	s1,s1,0x20
   12a6a:	9081                	srl	s1,s1,0x20
   12a6c:	037484b3          	mul	s1,s1,s7
   12a70:	94a2                	add	s1,s1,s0
   12a72:	01045783          	lhu	a5,16(s0)
   12a76:	00fc7c63          	bgeu	s8,a5,12a8e <_fwalk_reent+0x5a>
   12a7a:	01241783          	lh	a5,18(s0)
   12a7e:	85a2                	mv	a1,s0
   12a80:	854e                	mv	a0,s3
   12a82:	01578663          	beq	a5,s5,12a8e <_fwalk_reent+0x5a>
   12a86:	9b02                	jalr	s6
   12a88:	01256933          	or	s2,a0,s2
   12a8c:	2901                	sext.w	s2,s2
   12a8e:	0b040413          	add	s0,s0,176
   12a92:	fe8490e3          	bne	s1,s0,12a72 <_fwalk_reent+0x3e>
   12a96:	000a3a03          	ld	s4,0(s4)
   12a9a:	fc0a11e3          	bnez	s4,12a5c <_fwalk_reent+0x28>
   12a9e:	60a6                	ld	ra,72(sp)
   12aa0:	6406                	ld	s0,64(sp)
   12aa2:	74e2                	ld	s1,56(sp)
   12aa4:	79a2                	ld	s3,40(sp)
   12aa6:	7a02                	ld	s4,32(sp)
   12aa8:	6ae2                	ld	s5,24(sp)
   12aaa:	6b42                	ld	s6,16(sp)
   12aac:	6ba2                	ld	s7,8(sp)
   12aae:	6c02                	ld	s8,0(sp)
   12ab0:	854a                	mv	a0,s2
   12ab2:	7942                	ld	s2,48(sp)
   12ab4:	6161                	add	sp,sp,80
   12ab6:	8082                	ret

0000000000012ab8 <eshdn1>:
   12ab8:	00450693          	add	a3,a0,4
   12abc:	4701                	li	a4,0
   12abe:	0569                	add	a0,a0,26
   12ac0:	7861                	lui	a6,0xffff8
   12ac2:	0006d783          	lhu	a5,0(a3)
   12ac6:	0017f613          	and	a2,a5,1
   12aca:	c219                	beqz	a2,12ad0 <eshdn1+0x18>
   12acc:	00176713          	or	a4,a4,1
   12ad0:	00277613          	and	a2,a4,2
   12ad4:	8385                	srl	a5,a5,0x1
   12ad6:	0017171b          	sllw	a4,a4,0x1
   12ada:	0107e5b3          	or	a1,a5,a6
   12ade:	c601                	beqz	a2,12ae6 <eshdn1+0x2e>
   12ae0:	03059793          	sll	a5,a1,0x30
   12ae4:	93c1                	srl	a5,a5,0x30
   12ae6:	00f69023          	sh	a5,0(a3)
   12aea:	1742                	sll	a4,a4,0x30
   12aec:	0689                	add	a3,a3,2
   12aee:	9341                	srl	a4,a4,0x30
   12af0:	fcd519e3          	bne	a0,a3,12ac2 <eshdn1+0xa>
   12af4:	8082                	ret

0000000000012af6 <eshup1>:
   12af6:	01850693          	add	a3,a0,24
   12afa:	4701                	li	a4,0
   12afc:	0509                	add	a0,a0,2
   12afe:	0006d783          	lhu	a5,0(a3)
   12b02:	00f7d613          	srl	a2,a5,0xf
   12b06:	0017979b          	sllw	a5,a5,0x1
   12b0a:	c219                	beqz	a2,12b10 <eshup1+0x1a>
   12b0c:	00176713          	or	a4,a4,1
   12b10:	00277613          	and	a2,a4,2
   12b14:	17c2                	sll	a5,a5,0x30
   12b16:	0017171b          	sllw	a4,a4,0x1
   12b1a:	93c1                	srl	a5,a5,0x30
   12b1c:	c219                	beqz	a2,12b22 <eshup1+0x2c>
   12b1e:	0017e793          	or	a5,a5,1
   12b22:	00f69023          	sh	a5,0(a3)
   12b26:	1742                	sll	a4,a4,0x30
   12b28:	16f9                	add	a3,a3,-2
   12b2a:	9341                	srl	a4,a4,0x30
   12b2c:	fcd519e3          	bne	a0,a3,12afe <eshup1+0x8>
   12b30:	8082                	ret

0000000000012b32 <m16m>:
   12b32:	1101                	add	sp,sp,-32
   12b34:	6e41                	lui	t3,0x10
   12b36:	00011b23          	sh	zero,22(sp)
   12b3a:	00011c23          	sh	zero,24(sp)
   12b3e:	05e1                	add	a1,a1,24
   12b40:	083c                	add	a5,sp,24
   12b42:	00410813          	add	a6,sp,4
   12b46:	1e7d                	add	t3,t3,-1 # ffff <exit-0xe9>
   12b48:	0005d703          	lhu	a4,0(a1)
   12b4c:	17f9                	add	a5,a5,-2
   12b4e:	15f9                	add	a1,a1,-2
   12b50:	c705                	beqz	a4,12b78 <m16m+0x46>
   12b52:	02a70733          	mul	a4,a4,a0
   12b56:	0027d883          	lhu	a7,2(a5)
   12b5a:	0007d303          	lhu	t1,0(a5)
   12b5e:	01c776b3          	and	a3,a4,t3
   12b62:	96c6                	add	a3,a3,a7
   12b64:	8341                	srl	a4,a4,0x10
   12b66:	0106d893          	srl	a7,a3,0x10
   12b6a:	971a                	add	a4,a4,t1
   12b6c:	9746                	add	a4,a4,a7
   12b6e:	00e79023          	sh	a4,0(a5)
   12b72:	00d79123          	sh	a3,2(a5)
   12b76:	8341                	srl	a4,a4,0x10
   12b78:	fee79f23          	sh	a4,-2(a5)
   12b7c:	fd0796e3          	bne	a5,a6,12b48 <m16m+0x16>
   12b80:	0611                	add	a2,a2,4
   12b82:	01a10693          	add	a3,sp,26
   12b86:	0007d703          	lhu	a4,0(a5)
   12b8a:	0789                	add	a5,a5,2
   12b8c:	0609                	add	a2,a2,2
   12b8e:	fee61f23          	sh	a4,-2(a2)
   12b92:	fef69ae3          	bne	a3,a5,12b86 <m16m+0x54>
   12b96:	6105                	add	sp,sp,32
   12b98:	8082                	ret

0000000000012b9a <emovo.constprop.0>:
   12b9a:	00055703          	lhu	a4,0(a0)
   12b9e:	00255783          	lhu	a5,2(a0)
   12ba2:	c319                	beqz	a4,12ba8 <emovo.constprop.0+0xe>
   12ba4:	6721                	lui	a4,0x8
   12ba6:	8fd9                	or	a5,a5,a4
   12ba8:	00f59923          	sh	a5,18(a1)
   12bac:	00255703          	lhu	a4,2(a0)
   12bb0:	67a1                	lui	a5,0x8
   12bb2:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   12bb4:	00f70f63          	beq	a4,a5,12bd2 <emovo.constprop.0+0x38>
   12bb8:	00650793          	add	a5,a0,6
   12bbc:	05c1                	add	a1,a1,16
   12bbe:	0561                	add	a0,a0,24
   12bc0:	0007d703          	lhu	a4,0(a5)
   12bc4:	0789                	add	a5,a5,2
   12bc6:	15f9                	add	a1,a1,-2
   12bc8:	00e59123          	sh	a4,2(a1)
   12bcc:	fea79ae3          	bne	a5,a0,12bc0 <emovo.constprop.0+0x26>
   12bd0:	8082                	ret
   12bd2:	00650793          	add	a5,a0,6
   12bd6:	0569                	add	a0,a0,26
   12bd8:	0007d703          	lhu	a4,0(a5)
   12bdc:	0789                	add	a5,a5,2
   12bde:	e31d                	bnez	a4,12c04 <emovo.constprop.0+0x6a>
   12be0:	fef51ce3          	bne	a0,a5,12bd8 <emovo.constprop.0+0x3e>
   12be4:	01258713          	add	a4,a1,18
   12be8:	87ae                	mv	a5,a1
   12bea:	0789                	add	a5,a5,2
   12bec:	fe079f23          	sh	zero,-2(a5)
   12bf0:	fee79de3          	bne	a5,a4,12bea <emovo.constprop.0+0x50>
   12bf4:	0125d783          	lhu	a5,18(a1)
   12bf8:	6721                	lui	a4,0x8
   12bfa:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   12bfc:	8fd9                	or	a5,a5,a4
   12bfe:	00f59923          	sh	a5,18(a1)
   12c02:	8082                	ret
   12c04:	01058713          	add	a4,a1,16
   12c08:	87ae                	mv	a5,a1
   12c0a:	0789                	add	a5,a5,2
   12c0c:	fe079f23          	sh	zero,-2(a5)
   12c10:	fee79de3          	bne	a5,a4,12c0a <emovo.constprop.0+0x70>
   12c14:	77f1                	lui	a5,0xffffc
   12c16:	00f59823          	sh	a5,16(a1)
   12c1a:	77e1                	lui	a5,0xffff8
   12c1c:	fff7c793          	not	a5,a5
   12c20:	00f59923          	sh	a5,18(a1)
   12c24:	8082                	ret

0000000000012c26 <enormlz>:
   12c26:	00455783          	lhu	a5,4(a0)
   12c2a:	1101                	add	sp,sp,-32
   12c2c:	e426                	sd	s1,8(sp)
   12c2e:	ec06                	sd	ra,24(sp)
   12c30:	e822                	sd	s0,16(sp)
   12c32:	e04a                	sd	s2,0(sp)
   12c34:	84aa                	mv	s1,a0
   12c36:	efd1                	bnez	a5,12cd2 <enormlz+0xac>
   12c38:	00655783          	lhu	a5,6(a0)
   12c3c:	4401                	li	s0,0
   12c3e:	00f7d713          	srl	a4,a5,0xf
   12c42:	e349                	bnez	a4,12cc4 <enormlz+0x9e>
   12c44:	01850693          	add	a3,a0,24
   12c48:	0a000613          	li	a2,160
   12c4c:	e395                	bnez	a5,12c70 <enormlz+0x4a>
   12c4e:	00448793          	add	a5,s1,4
   12c52:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd8492>
   12c56:	0789                	add	a5,a5,2
   12c58:	fee79f23          	sh	a4,-2(a5)
   12c5c:	fed79be3          	bne	a5,a3,12c52 <enormlz+0x2c>
   12c60:	00049c23          	sh	zero,24(s1)
   12c64:	2441                	addw	s0,s0,16
   12c66:	04c40f63          	beq	s0,a2,12cc4 <enormlz+0x9e>
   12c6a:	0064d783          	lhu	a5,6(s1)
   12c6e:	d3e5                	beqz	a5,12c4e <enormlz+0x28>
   12c70:	0ff00713          	li	a4,255
   12c74:	02f76b63          	bltu	a4,a5,12caa <enormlz+0x84>
   12c78:	01848813          	add	a6,s1,24
   12c7c:	00248593          	add	a1,s1,2
   12c80:	0ff00513          	li	a0,255
   12c84:	4781                	li	a5,0
   12c86:	8742                	mv	a4,a6
   12c88:	00075683          	lhu	a3,0(a4)
   12c8c:	1779                	add	a4,a4,-2
   12c8e:	0086961b          	sllw	a2,a3,0x8
   12c92:	8fd1                	or	a5,a5,a2
   12c94:	00f71123          	sh	a5,2(a4)
   12c98:	0086d793          	srl	a5,a3,0x8
   12c9c:	feb716e3          	bne	a4,a1,12c88 <enormlz+0x62>
   12ca0:	0064d783          	lhu	a5,6(s1)
   12ca4:	2421                	addw	s0,s0,8
   12ca6:	fcf57fe3          	bgeu	a0,a5,12c84 <enormlz+0x5e>
   12caa:	0a000913          	li	s2,160
   12cae:	a801                	j	12cbe <enormlz+0x98>
   12cb0:	2405                	addw	s0,s0,1
   12cb2:	e45ff0ef          	jal	12af6 <eshup1>
   12cb6:	00894763          	blt	s2,s0,12cc4 <enormlz+0x9e>
   12cba:	0064d783          	lhu	a5,6(s1)
   12cbe:	83bd                	srl	a5,a5,0xf
   12cc0:	8526                	mv	a0,s1
   12cc2:	d7fd                	beqz	a5,12cb0 <enormlz+0x8a>
   12cc4:	60e2                	ld	ra,24(sp)
   12cc6:	8522                	mv	a0,s0
   12cc8:	6442                	ld	s0,16(sp)
   12cca:	64a2                	ld	s1,8(sp)
   12ccc:	6902                	ld	s2,0(sp)
   12cce:	6105                	add	sp,sp,32
   12cd0:	8082                	ret
   12cd2:	0ff00713          	li	a4,255
   12cd6:	4401                	li	s0,0
   12cd8:	02f76563          	bltu	a4,a5,12d02 <enormlz+0xdc>
   12cdc:	f6f00913          	li	s2,-145
   12ce0:	a801                	j	12cf0 <enormlz+0xca>
   12ce2:	347d                	addw	s0,s0,-1
   12ce4:	dd5ff0ef          	jal	12ab8 <eshdn1>
   12ce8:	fd240ee3          	beq	s0,s2,12cc4 <enormlz+0x9e>
   12cec:	0044d783          	lhu	a5,4(s1)
   12cf0:	8526                	mv	a0,s1
   12cf2:	fbe5                	bnez	a5,12ce2 <enormlz+0xbc>
   12cf4:	60e2                	ld	ra,24(sp)
   12cf6:	8522                	mv	a0,s0
   12cf8:	6442                	ld	s0,16(sp)
   12cfa:	64a2                	ld	s1,8(sp)
   12cfc:	6902                	ld	s2,0(sp)
   12cfe:	6105                	add	sp,sp,32
   12d00:	8082                	ret
   12d02:	00450713          	add	a4,a0,4
   12d06:	01a50593          	add	a1,a0,26
   12d0a:	4781                	li	a5,0
   12d0c:	00075683          	lhu	a3,0(a4)
   12d10:	0709                	add	a4,a4,2
   12d12:	0086d61b          	srlw	a2,a3,0x8
   12d16:	8fd1                	or	a5,a5,a2
   12d18:	0086969b          	sllw	a3,a3,0x8
   12d1c:	fef71f23          	sh	a5,-2(a4)
   12d20:	03069793          	sll	a5,a3,0x30
   12d24:	93c1                	srl	a5,a5,0x30
   12d26:	feb713e3          	bne	a4,a1,12d0c <enormlz+0xe6>
   12d2a:	0044d783          	lhu	a5,4(s1)
   12d2e:	5461                	li	s0,-8
   12d30:	b775                	j	12cdc <enormlz+0xb6>

0000000000012d32 <eshift.part.0>:
   12d32:	7179                	add	sp,sp,-48
   12d34:	f022                	sd	s0,32(sp)
   12d36:	ec26                	sd	s1,24(sp)
   12d38:	f406                	sd	ra,40(sp)
   12d3a:	e84a                	sd	s2,16(sp)
   12d3c:	e44e                	sd	s3,8(sp)
   12d3e:	84ae                	mv	s1,a1
   12d40:	842a                	mv	s0,a0
   12d42:	0605cb63          	bltz	a1,12db8 <eshift.part.0+0x86>
   12d46:	47bd                	li	a5,15
   12d48:	862e                	mv	a2,a1
   12d4a:	0511                	add	a0,a0,4
   12d4c:	01840693          	add	a3,s0,24
   12d50:	45bd                	li	a1,15
   12d52:	0297d063          	bge	a5,s1,12d72 <eshift.part.0+0x40>
   12d56:	87aa                	mv	a5,a0
   12d58:	0027d703          	lhu	a4,2(a5)
   12d5c:	0789                	add	a5,a5,2
   12d5e:	fee79f23          	sh	a4,-2(a5)
   12d62:	fef69be3          	bne	a3,a5,12d58 <eshift.part.0+0x26>
   12d66:	00041c23          	sh	zero,24(s0)
   12d6a:	3641                	addw	a2,a2,-16
   12d6c:	fec5c5e3          	blt	a1,a2,12d56 <eshift.part.0+0x24>
   12d70:	88bd                	and	s1,s1,15
   12d72:	479d                	li	a5,7
   12d74:	0297d463          	bge	a5,s1,12d9c <eshift.part.0+0x6a>
   12d78:	01840713          	add	a4,s0,24
   12d7c:	00240593          	add	a1,s0,2
   12d80:	4781                	li	a5,0
   12d82:	00075683          	lhu	a3,0(a4)
   12d86:	1779                	add	a4,a4,-2
   12d88:	0086961b          	sllw	a2,a3,0x8
   12d8c:	8fd1                	or	a5,a5,a2
   12d8e:	00f71123          	sh	a5,2(a4)
   12d92:	0086d793          	srl	a5,a3,0x8
   12d96:	feb716e3          	bne	a4,a1,12d82 <eshift.part.0+0x50>
   12d9a:	34e1                	addw	s1,s1,-8
   12d9c:	c491                	beqz	s1,12da8 <eshift.part.0+0x76>
   12d9e:	34fd                	addw	s1,s1,-1
   12da0:	8522                	mv	a0,s0
   12da2:	d55ff0ef          	jal	12af6 <eshup1>
   12da6:	fce5                	bnez	s1,12d9e <eshift.part.0+0x6c>
   12da8:	4501                	li	a0,0
   12daa:	70a2                	ld	ra,40(sp)
   12dac:	7402                	ld	s0,32(sp)
   12dae:	64e2                	ld	s1,24(sp)
   12db0:	6942                	ld	s2,16(sp)
   12db2:	69a2                	ld	s3,8(sp)
   12db4:	6145                	add	sp,sp,48
   12db6:	8082                	ret
   12db8:	57c5                	li	a5,-15
   12dba:	40b0093b          	negw	s2,a1
   12dbe:	4981                	li	s3,0
   12dc0:	01850593          	add	a1,a0,24
   12dc4:	00450693          	add	a3,a0,4
   12dc8:	463d                	li	a2,15
   12dca:	0af4d463          	bge	s1,a5,12e72 <eshift.part.0+0x140>
   12dce:	01845703          	lhu	a4,24(s0)
   12dd2:	87ae                	mv	a5,a1
   12dd4:	00e9e9b3          	or	s3,s3,a4
   12dd8:	ffe7d703          	lhu	a4,-2(a5)
   12ddc:	17f9                	add	a5,a5,-2
   12dde:	00e79123          	sh	a4,2(a5)
   12de2:	fed79be3          	bne	a5,a3,12dd8 <eshift.part.0+0xa6>
   12de6:	00041223          	sh	zero,4(s0)
   12dea:	3941                	addw	s2,s2,-16
   12dec:	ff2641e3          	blt	a2,s2,12dce <eshift.part.0+0x9c>
   12df0:	5941                	li	s2,-16
   12df2:	5745                	li	a4,-15
   12df4:	4099093b          	subw	s2,s2,s1
   12df8:	4781                	li	a5,0
   12dfa:	06e4c763          	blt	s1,a4,12e68 <eshift.part.0+0x136>
   12dfe:	00f9093b          	addw	s2,s2,a5
   12e02:	479d                	li	a5,7
   12e04:	0327d963          	bge	a5,s2,12e36 <eshift.part.0+0x104>
   12e08:	01844783          	lbu	a5,24(s0)
   12e0c:	01a40593          	add	a1,s0,26
   12e10:	00f9e9b3          	or	s3,s3,a5
   12e14:	4781                	li	a5,0
   12e16:	0006d703          	lhu	a4,0(a3)
   12e1a:	0689                	add	a3,a3,2
   12e1c:	0087561b          	srlw	a2,a4,0x8
   12e20:	8fd1                	or	a5,a5,a2
   12e22:	0087171b          	sllw	a4,a4,0x8
   12e26:	fef69f23          	sh	a5,-2(a3)
   12e2a:	03071793          	sll	a5,a4,0x30
   12e2e:	93c1                	srl	a5,a5,0x30
   12e30:	feb693e3          	bne	a3,a1,12e16 <eshift.part.0+0xe4>
   12e34:	3961                	addw	s2,s2,-8
   12e36:	01303533          	snez	a0,s3
   12e3a:	f60908e3          	beqz	s2,12daa <eshift.part.0+0x78>
   12e3e:	01845783          	lhu	a5,24(s0)
   12e42:	397d                	addw	s2,s2,-1
   12e44:	8522                	mv	a0,s0
   12e46:	8b85                	and	a5,a5,1
   12e48:	00f9e9b3          	or	s3,s3,a5
   12e4c:	c6dff0ef          	jal	12ab8 <eshdn1>
   12e50:	fe0917e3          	bnez	s2,12e3e <eshift.part.0+0x10c>
   12e54:	70a2                	ld	ra,40(sp)
   12e56:	7402                	ld	s0,32(sp)
   12e58:	2981                	sext.w	s3,s3
   12e5a:	64e2                	ld	s1,24(sp)
   12e5c:	6942                	ld	s2,16(sp)
   12e5e:	01303533          	snez	a0,s3
   12e62:	69a2                	ld	s3,8(sp)
   12e64:	6145                	add	sp,sp,48
   12e66:	8082                	ret
   12e68:	ff097793          	and	a5,s2,-16
   12e6c:	40f007bb          	negw	a5,a5
   12e70:	b779                	j	12dfe <eshift.part.0+0xcc>
   12e72:	57e5                	li	a5,-7
   12e74:	f8f4cae3          	blt	s1,a5,12e08 <eshift.part.0+0xd6>
   12e78:	b7d9                	j	12e3e <eshift.part.0+0x10c>

0000000000012e7a <emovi>:
   12e7a:	01255783          	lhu	a5,18(a0)
   12e7e:	66a1                	lui	a3,0x8
   12e80:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   12e82:	00f7d79b          	srlw	a5,a5,0xf
   12e86:	40f007bb          	negw	a5,a5
   12e8a:	00f59023          	sh	a5,0(a1)
   12e8e:	01255703          	lhu	a4,18(a0)
   12e92:	01050793          	add	a5,a0,16
   12e96:	8f75                	and	a4,a4,a3
   12e98:	00e59123          	sh	a4,2(a1)
   12e9c:	0007061b          	sext.w	a2,a4
   12ea0:	02d70263          	beq	a4,a3,12ec4 <emovi+0x4a>
   12ea4:	00658713          	add	a4,a1,6
   12ea8:	00059223          	sh	zero,4(a1)
   12eac:	1579                	add	a0,a0,-2
   12eae:	0007d683          	lhu	a3,0(a5)
   12eb2:	17f9                	add	a5,a5,-2
   12eb4:	0709                	add	a4,a4,2
   12eb6:	fed71f23          	sh	a3,-2(a4)
   12eba:	fea79ae3          	bne	a5,a0,12eae <emovi+0x34>
   12ebe:	00059c23          	sh	zero,24(a1)
   12ec2:	8082                	ret
   12ec4:	01255703          	lhu	a4,18(a0)
   12ec8:	8f71                	and	a4,a4,a2
   12eca:	00c71b63          	bne	a4,a2,12ee0 <emovi+0x66>
   12ece:	01250613          	add	a2,a0,18
   12ed2:	872a                	mv	a4,a0
   12ed4:	00075683          	lhu	a3,0(a4)
   12ed8:	0709                	add	a4,a4,2
   12eda:	ee81                	bnez	a3,12ef2 <emovi+0x78>
   12edc:	fec71ce3          	bne	a4,a2,12ed4 <emovi+0x5a>
   12ee0:	00458793          	add	a5,a1,4
   12ee4:	05e9                	add	a1,a1,26
   12ee6:	0789                	add	a5,a5,2
   12ee8:	fe079f23          	sh	zero,-2(a5)
   12eec:	feb79de3          	bne	a5,a1,12ee6 <emovi+0x6c>
   12ef0:	8082                	ret
   12ef2:	00658713          	add	a4,a1,6
   12ef6:	00059223          	sh	zero,4(a1)
   12efa:	1571                	add	a0,a0,-4
   12efc:	0007d683          	lhu	a3,0(a5)
   12f00:	17f9                	add	a5,a5,-2
   12f02:	0709                	add	a4,a4,2
   12f04:	fed71f23          	sh	a3,-2(a4)
   12f08:	fef51ae3          	bne	a0,a5,12efc <emovi+0x82>
   12f0c:	8082                	ret

0000000000012f0e <ecmp>:
   12f0e:	01255783          	lhu	a5,18(a0)
   12f12:	715d                	add	sp,sp,-80
   12f14:	e0a2                	sd	s0,64(sp)
   12f16:	fff7c793          	not	a5,a5
   12f1a:	e486                	sd	ra,72(sp)
   12f1c:	03179713          	sll	a4,a5,0x31
   12f20:	842e                	mv	s0,a1
   12f22:	eb11                	bnez	a4,12f36 <ecmp+0x28>
   12f24:	01250693          	add	a3,a0,18
   12f28:	87aa                	mv	a5,a0
   12f2a:	0007d703          	lhu	a4,0(a5)
   12f2e:	0789                	add	a5,a5,2
   12f30:	eb25                	bnez	a4,12fa0 <ecmp+0x92>
   12f32:	fed79ce3          	bne	a5,a3,12f2a <ecmp+0x1c>
   12f36:	01245783          	lhu	a5,18(s0)
   12f3a:	fff7c793          	not	a5,a5
   12f3e:	03179713          	sll	a4,a5,0x31
   12f42:	c331                	beqz	a4,12f86 <ecmp+0x78>
   12f44:	858a                	mv	a1,sp
   12f46:	f35ff0ef          	jal	12e7a <emovi>
   12f4a:	100c                	add	a1,sp,32
   12f4c:	8522                	mv	a0,s0
   12f4e:	f2dff0ef          	jal	12e7a <emovi>
   12f52:	00015583          	lhu	a1,0(sp)
   12f56:	02015783          	lhu	a5,32(sp)
   12f5a:	04b78863          	beq	a5,a1,12faa <ecmp+0x9c>
   12f5e:	00210793          	add	a5,sp,2
   12f62:	02210713          	add	a4,sp,34
   12f66:	0830                	add	a2,sp,24
   12f68:	0007d683          	lhu	a3,0(a5)
   12f6c:	0789                	add	a5,a5,2
   12f6e:	eab5                	bnez	a3,12fe2 <ecmp+0xd4>
   12f70:	00075683          	lhu	a3,0(a4)
   12f74:	0709                	add	a4,a4,2
   12f76:	e6b5                	bnez	a3,12fe2 <ecmp+0xd4>
   12f78:	fef618e3          	bne	a2,a5,12f68 <ecmp+0x5a>
   12f7c:	4501                	li	a0,0
   12f7e:	60a6                	ld	ra,72(sp)
   12f80:	6406                	ld	s0,64(sp)
   12f82:	6161                	add	sp,sp,80
   12f84:	8082                	ret
   12f86:	87a2                	mv	a5,s0
   12f88:	0007d703          	lhu	a4,0(a5)
   12f8c:	01240693          	add	a3,s0,18
   12f90:	0789                	add	a5,a5,2
   12f92:	e719                	bnez	a4,12fa0 <ecmp+0x92>
   12f94:	fad788e3          	beq	a5,a3,12f44 <ecmp+0x36>
   12f98:	0007d703          	lhu	a4,0(a5)
   12f9c:	0789                	add	a5,a5,2
   12f9e:	db7d                	beqz	a4,12f94 <ecmp+0x86>
   12fa0:	60a6                	ld	ra,72(sp)
   12fa2:	6406                	ld	s0,64(sp)
   12fa4:	5579                	li	a0,-2
   12fa6:	6161                	add	sp,sp,80
   12fa8:	8082                	ret
   12faa:	557d                	li	a0,-1
   12fac:	c1a9                	beqz	a1,12fee <ecmp+0xe0>
   12fae:	878a                	mv	a5,sp
   12fb0:	0007d603          	lhu	a2,0(a5)
   12fb4:	02015683          	lhu	a3,32(sp)
   12fb8:	1018                	add	a4,sp,32
   12fba:	082c                	add	a1,sp,24
   12fbc:	0789                	add	a5,a5,2
   12fbe:	0709                	add	a4,a4,2
   12fc0:	00d61c63          	bne	a2,a3,12fd8 <ecmp+0xca>
   12fc4:	fab78ce3          	beq	a5,a1,12f7c <ecmp+0x6e>
   12fc8:	0007d603          	lhu	a2,0(a5)
   12fcc:	00075683          	lhu	a3,0(a4)
   12fd0:	0789                	add	a5,a5,2
   12fd2:	0709                	add	a4,a4,2
   12fd4:	fed608e3          	beq	a2,a3,12fc4 <ecmp+0xb6>
   12fd8:	fac6e3e3          	bltu	a3,a2,12f7e <ecmp+0x70>
   12fdc:	40a0053b          	negw	a0,a0
   12fe0:	bf79                	j	12f7e <ecmp+0x70>
   12fe2:	e981                	bnez	a1,12ff2 <ecmp+0xe4>
   12fe4:	60a6                	ld	ra,72(sp)
   12fe6:	6406                	ld	s0,64(sp)
   12fe8:	4505                	li	a0,1
   12fea:	6161                	add	sp,sp,80
   12fec:	8082                	ret
   12fee:	4505                	li	a0,1
   12ff0:	bf7d                	j	12fae <ecmp+0xa0>
   12ff2:	557d                	li	a0,-1
   12ff4:	b769                	j	12f7e <ecmp+0x70>

0000000000012ff6 <emdnorm>:
   12ff6:	7139                	add	sp,sp,-64
   12ff8:	f822                	sd	s0,48(sp)
   12ffa:	f426                	sd	s1,40(sp)
   12ffc:	f04a                	sd	s2,32(sp)
   12ffe:	ec4e                	sd	s3,24(sp)
   13000:	e852                	sd	s4,16(sp)
   13002:	e456                	sd	s5,8(sp)
   13004:	8936                	mv	s2,a3
   13006:	843e                	mv	s0,a5
   13008:	fc06                	sd	ra,56(sp)
   1300a:	84aa                	mv	s1,a0
   1300c:	89ae                	mv	s3,a1
   1300e:	8a32                	mv	s4,a2
   13010:	8aba                	mv	s5,a4
   13012:	c15ff0ef          	jal	12c26 <enormlz>
   13016:	09000793          	li	a5,144
   1301a:	40a90933          	sub	s2,s2,a0
   1301e:	12a7d863          	bge	a5,a0,1314e <emdnorm+0x158>
   13022:	67a1                	lui	a5,0x8
   13024:	17f9                	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   13026:	2327dd63          	bge	a5,s2,13260 <emdnorm+0x26a>
   1302a:	1a0a8c63          	beqz	s5,131e2 <emdnorm+0x1ec>
   1302e:	00442a83          	lw	s5,4(s0)
   13032:	401c                	lw	a5,0(s0)
   13034:	20fa8363          	beq	s5,a5,1323a <emdnorm+0x244>
   13038:	01a40713          	add	a4,s0,26
   1303c:	03440793          	add	a5,s0,52
   13040:	0709                	add	a4,a4,2
   13042:	fe071f23          	sh	zero,-2(a4)
   13046:	fee79de3          	bne	a5,a4,13040 <emdnorm+0x4a>
   1304a:	03800793          	li	a5,56
   1304e:	2afa8f63          	beq	s5,a5,1330c <emdnorm+0x316>
   13052:	1557d663          	bge	a5,s5,1319e <emdnorm+0x1a8>
   13056:	04000793          	li	a5,64
   1305a:	20fa8c63          	beq	s5,a5,13272 <emdnorm+0x27c>
   1305e:	07100793          	li	a5,113
   13062:	2cfa9d63          	bne	s5,a5,1333c <emdnorm+0x346>
   13066:	400087b7          	lui	a5,0x40008
   1306a:	46a9                	li	a3,10
   1306c:	7761                	lui	a4,0xffff8
   1306e:	17fd                	add	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe848f>
   13070:	c414                	sw	a3,8(s0)
   13072:	c85c                	sw	a5,20(s0)
   13074:	00e41c23          	sh	a4,24(s0)
   13078:	c454                	sw	a3,12(s0)
   1307a:	02e41723          	sh	a4,46(s0)
   1307e:	01542023          	sw	s5,0(s0)
   13082:	1b205263          	blez	s2,13226 <emdnorm+0x230>
   13086:	0144d603          	lhu	a2,20(s1)
   1308a:	01448593          	add	a1,s1,20
   1308e:	47ad                	li	a5,11
   13090:	1646                	sll	a2,a2,0x31
   13092:	9245                	srl	a2,a2,0x31
   13094:	4731                	li	a4,12
   13096:	9f1d                	subw	a4,a4,a5
   13098:	1702                	sll	a4,a4,0x20
   1309a:	9301                	srl	a4,a4,0x20
   1309c:	973e                	add	a4,a4,a5
   1309e:	0706                	sll	a4,a4,0x1
   130a0:	0786                	sll	a5,a5,0x1
   130a2:	00248693          	add	a3,s1,2
   130a6:	97a6                	add	a5,a5,s1
   130a8:	9736                	add	a4,a4,a3
   130aa:	0007d683          	lhu	a3,0(a5)
   130ae:	c299                	beqz	a3,130b4 <emdnorm+0xbe>
   130b0:	00166613          	or	a2,a2,1
   130b4:	00079023          	sh	zero,0(a5)
   130b8:	0789                	add	a5,a5,2
   130ba:	fef718e3          	bne	a4,a5,130aa <emdnorm+0xb4>
   130be:	0005d703          	lhu	a4,0(a1)
   130c2:	01445683          	lhu	a3,20(s0)
   130c6:	fff6c693          	not	a3,a3
   130ca:	8f75                	and	a4,a4,a3
   130cc:	00e59023          	sh	a4,0(a1)
   130d0:	01645783          	lhu	a5,22(s0)
   130d4:	00c7f733          	and	a4,a5,a2
   130d8:	c721                	beqz	a4,13120 <emdnorm+0x12a>
   130da:	00c79d63          	bne	a5,a2,130f4 <emdnorm+0xfe>
   130de:	22099463          	bnez	s3,13306 <emdnorm+0x310>
   130e2:	445c                	lw	a5,12(s0)
   130e4:	01845703          	lhu	a4,24(s0)
   130e8:	0786                	sll	a5,a5,0x1
   130ea:	97a6                	add	a5,a5,s1
   130ec:	0007d783          	lhu	a5,0(a5)
   130f0:	8ff9                	and	a5,a5,a4
   130f2:	c79d                	beqz	a5,13120 <emdnorm+0x12a>
   130f4:	03240793          	add	a5,s0,50
   130f8:	01848613          	add	a2,s1,24
   130fc:	00248513          	add	a0,s1,2
   13100:	4581                	li	a1,0
   13102:	0007d703          	lhu	a4,0(a5)
   13106:	00065683          	lhu	a3,0(a2)
   1310a:	1679                	add	a2,a2,-2
   1310c:	17f9                	add	a5,a5,-2
   1310e:	9736                	add	a4,a4,a3
   13110:	972e                	add	a4,a4,a1
   13112:	01075593          	srl	a1,a4,0x10
   13116:	00e61123          	sh	a4,2(a2)
   1311a:	8985                	and	a1,a1,1
   1311c:	fec513e3          	bne	a0,a2,13102 <emdnorm+0x10c>
   13120:	1b205a63          	blez	s2,132d4 <emdnorm+0x2de>
   13124:	0044d783          	lhu	a5,4(s1)
   13128:	18079b63          	bnez	a5,132be <emdnorm+0x2c8>
   1312c:	67a1                	lui	a5,0x8
   1312e:	00049c23          	sh	zero,24(s1)
   13132:	17f9                	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   13134:	0b27c963          	blt	a5,s2,131e6 <emdnorm+0x1f0>
   13138:	01249123          	sh	s2,2(s1)
   1313c:	70e2                	ld	ra,56(sp)
   1313e:	7442                	ld	s0,48(sp)
   13140:	74a2                	ld	s1,40(sp)
   13142:	7902                	ld	s2,32(sp)
   13144:	69e2                	ld	s3,24(sp)
   13146:	6a42                	ld	s4,16(sp)
   13148:	6aa2                	ld	s5,8(sp)
   1314a:	6121                	add	sp,sp,64
   1314c:	8082                	ret
   1314e:	02094b63          	bltz	s2,13184 <emdnorm+0x18e>
   13152:	fc0a8de3          	beqz	s5,1312c <emdnorm+0x136>
   13156:	00442a83          	lw	s5,4(s0)
   1315a:	401c                	lw	a5,0(s0)
   1315c:	ecfa9ee3          	bne	s5,a5,13038 <emdnorm+0x42>
   13160:	23204263          	bgtz	s2,13384 <emdnorm+0x38e>
   13164:	09000713          	li	a4,144
   13168:	22e79063          	bne	a5,a4,13388 <emdnorm+0x392>
   1316c:	440c                	lw	a1,8(s0)
   1316e:	01445683          	lhu	a3,20(s0)
   13172:	09000a93          	li	s5,144
   13176:	0586                	sll	a1,a1,0x1
   13178:	95a6                	add	a1,a1,s1
   1317a:	0005d703          	lhu	a4,0(a1)
   1317e:	00d77633          	and	a2,a4,a3
   13182:	b791                	j	130c6 <emdnorm+0xd0>
   13184:	f7000793          	li	a5,-144
   13188:	10f95c63          	bge	s2,a5,132a0 <emdnorm+0x2aa>
   1318c:	00248793          	add	a5,s1,2
   13190:	04e9                	add	s1,s1,26
   13192:	0789                	add	a5,a5,2
   13194:	fe079f23          	sh	zero,-2(a5)
   13198:	fe979de3          	bne	a5,s1,13192 <emdnorm+0x19c>
   1319c:	b745                	j	1313c <emdnorm+0x146>
   1319e:	47e1                	li	a5,24
   131a0:	06fa8163          	beq	s5,a5,13202 <emdnorm+0x20c>
   131a4:	03500793          	li	a5,53
   131a8:	18fa9a63          	bne	s5,a5,1333c <emdnorm+0x346>
   131ac:	6785                	lui	a5,0x1
   131ae:	04000737          	lui	a4,0x4000
   131b2:	4699                	li	a3,6
   131b4:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf8e8>
   131b8:	7ff70713          	add	a4,a4,2047 # 40007ff <__BSS_END__+0x3fe0c8f>
   131bc:	c414                	sw	a3,8(s0)
   131be:	c858                	sw	a4,20(s0)
   131c0:	00f41c23          	sh	a5,24(s0)
   131c4:	c454                	sw	a3,12(s0)
   131c6:	02f41323          	sh	a5,38(s0)
   131ca:	01542023          	sw	s5,0(s0)
   131ce:	05205c63          	blez	s2,13226 <emdnorm+0x230>
   131d2:	00c4d603          	lhu	a2,12(s1)
   131d6:	00c48593          	add	a1,s1,12
   131da:	479d                	li	a5,7
   131dc:	7ff67613          	and	a2,a2,2047
   131e0:	bd55                	j	13094 <emdnorm+0x9e>
   131e2:	00049c23          	sh	zero,24(s1)
   131e6:	77e1                	lui	a5,0xffff8
   131e8:	fff7c793          	not	a5,a5
   131ec:	00f49123          	sh	a5,2(s1)
   131f0:	00448793          	add	a5,s1,4
   131f4:	04e1                	add	s1,s1,24
   131f6:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8490>
   131fa:	0789                	add	a5,a5,2
   131fc:	fe979de3          	bne	a5,s1,131f6 <emdnorm+0x200>
   13200:	bf35                	j	1313c <emdnorm+0x146>
   13202:	008007b7          	lui	a5,0x800
   13206:	4691                	li	a3,4
   13208:	10000713          	li	a4,256
   1320c:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7e058f>
   13210:	c414                	sw	a3,8(s0)
   13212:	c85c                	sw	a5,20(s0)
   13214:	00e41c23          	sh	a4,24(s0)
   13218:	c454                	sw	a3,12(s0)
   1321a:	02e41123          	sh	a4,34(s0)
   1321e:	01542023          	sw	s5,0(s0)
   13222:	15204663          	bgtz	s2,1336e <emdnorm+0x378>
   13226:	0184d783          	lhu	a5,24(s1)
   1322a:	8526                	mv	a0,s1
   1322c:	8b85                	and	a5,a5,1
   1322e:	00f9e7b3          	or	a5,s3,a5
   13232:	0007899b          	sext.w	s3,a5
   13236:	883ff0ef          	jal	12ab8 <eshdn1>
   1323a:	441c                	lw	a5,8(s0)
   1323c:	01445683          	lhu	a3,20(s0)
   13240:	08f00513          	li	a0,143
   13244:	00179593          	sll	a1,a5,0x1
   13248:	95a6                	add	a1,a1,s1
   1324a:	0005d703          	lhu	a4,0(a1)
   1324e:	00d77633          	and	a2,a4,a3
   13252:	e7554ae3          	blt	a0,s5,130c6 <emdnorm+0xd0>
   13256:	2785                	addw	a5,a5,1
   13258:	4531                	li	a0,12
   1325a:	e2f55de3          	bge	a0,a5,13094 <emdnorm+0x9e>
   1325e:	b5a5                	j	130c6 <emdnorm+0xd0>
   13260:	00248793          	add	a5,s1,2
   13264:	04e9                	add	s1,s1,26
   13266:	0789                	add	a5,a5,2
   13268:	fe079f23          	sh	zero,-2(a5)
   1326c:	fe979de3          	bne	a5,s1,13266 <emdnorm+0x270>
   13270:	b5f1                	j	1313c <emdnorm+0x146>
   13272:	479d                	li	a5,7
   13274:	c41c                	sw	a5,8(s0)
   13276:	800107b7          	lui	a5,0x80010
   1327a:	17fd                	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7fff048f>
   1327c:	4705                	li	a4,1
   1327e:	c85c                	sw	a5,20(s0)
   13280:	4799                	li	a5,6
   13282:	00e41c23          	sh	a4,24(s0)
   13286:	c45c                	sw	a5,12(s0)
   13288:	02e41323          	sh	a4,38(s0)
   1328c:	01542023          	sw	s5,0(s0)
   13290:	f9205be3          	blez	s2,13226 <emdnorm+0x230>
   13294:	00e4d603          	lhu	a2,14(s1)
   13298:	00e48593          	add	a1,s1,14
   1329c:	47a1                	li	a5,8
   1329e:	bbdd                	j	13094 <emdnorm+0x9e>
   132a0:	0009059b          	sext.w	a1,s2
   132a4:	8526                	mv	a0,s1
   132a6:	a8dff0ef          	jal	12d32 <eshift.part.0>
   132aa:	c955                	beqz	a0,1335e <emdnorm+0x368>
   132ac:	0c0a8763          	beqz	s5,1337a <emdnorm+0x384>
   132b0:	00442a83          	lw	s5,4(s0)
   132b4:	401c                	lw	a5,0(s0)
   132b6:	4985                	li	s3,1
   132b8:	d8fa90e3          	bne	s5,a5,13038 <emdnorm+0x42>
   132bc:	b565                	j	13164 <emdnorm+0x16e>
   132be:	8526                	mv	a0,s1
   132c0:	ff8ff0ef          	jal	12ab8 <eshdn1>
   132c4:	67a1                	lui	a5,0x8
   132c6:	0905                	add	s2,s2,1
   132c8:	00049c23          	sh	zero,24(s1)
   132cc:	17f9                	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   132ce:	f127cce3          	blt	a5,s2,131e6 <emdnorm+0x1f0>
   132d2:	b59d                	j	13138 <emdnorm+0x142>
   132d4:	09000793          	li	a5,144
   132d8:	00fa8f63          	beq	s5,a5,132f6 <emdnorm+0x300>
   132dc:	8526                	mv	a0,s1
   132de:	819ff0ef          	jal	12af6 <eshup1>
   132e2:	0044d783          	lhu	a5,4(s1)
   132e6:	eb99                	bnez	a5,132fc <emdnorm+0x306>
   132e8:	00049c23          	sh	zero,24(s1)
   132ec:	e40956e3          	bgez	s2,13138 <emdnorm+0x142>
   132f0:	00049123          	sh	zero,2(s1)
   132f4:	b5a1                	j	1313c <emdnorm+0x146>
   132f6:	0044d783          	lhu	a5,4(s1)
   132fa:	d7fd                	beqz	a5,132e8 <emdnorm+0x2f2>
   132fc:	8526                	mv	a0,s1
   132fe:	fbaff0ef          	jal	12ab8 <eshdn1>
   13302:	0905                	add	s2,s2,1
   13304:	b7d5                	j	132e8 <emdnorm+0x2f2>
   13306:	de0a07e3          	beqz	s4,130f4 <emdnorm+0xfe>
   1330a:	bd19                	j	13120 <emdnorm+0x12a>
   1330c:	008007b7          	lui	a5,0x800
   13310:	4699                	li	a3,6
   13312:	10000713          	li	a4,256
   13316:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7e058f>
   1331a:	c414                	sw	a3,8(s0)
   1331c:	c85c                	sw	a5,20(s0)
   1331e:	00e41c23          	sh	a4,24(s0)
   13322:	c454                	sw	a3,12(s0)
   13324:	02e41323          	sh	a4,38(s0)
   13328:	01542023          	sw	s5,0(s0)
   1332c:	ef205de3          	blez	s2,13226 <emdnorm+0x230>
   13330:	00c4c603          	lbu	a2,12(s1)
   13334:	00c48593          	add	a1,s1,12
   13338:	479d                	li	a5,7
   1333a:	bba9                	j	13094 <emdnorm+0x9e>
   1333c:	47b1                	li	a5,12
   1333e:	c41c                	sw	a5,8(s0)
   13340:	800107b7          	lui	a5,0x80010
   13344:	17fd                	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7fff048f>
   13346:	4705                	li	a4,1
   13348:	c85c                	sw	a5,20(s0)
   1334a:	47ad                	li	a5,11
   1334c:	c45c                	sw	a5,12(s0)
   1334e:	00e41c23          	sh	a4,24(s0)
   13352:	02e41823          	sh	a4,48(s0)
   13356:	01542023          	sw	s5,0(s0)
   1335a:	87d6                	mv	a5,s5
   1335c:	b511                	j	13160 <emdnorm+0x16a>
   1335e:	000a8e63          	beqz	s5,1337a <emdnorm+0x384>
   13362:	00442a83          	lw	s5,4(s0)
   13366:	401c                	lw	a5,0(s0)
   13368:	ccfa98e3          	bne	s5,a5,13038 <emdnorm+0x42>
   1336c:	bbe5                	j	13164 <emdnorm+0x16e>
   1336e:	0084c603          	lbu	a2,8(s1)
   13372:	00848593          	add	a1,s1,8
   13376:	4795                	li	a5,5
   13378:	bb31                	j	13094 <emdnorm+0x9e>
   1337a:	00049c23          	sh	zero,24(s1)
   1337e:	00049123          	sh	zero,2(s1)
   13382:	bb6d                	j	1313c <emdnorm+0x146>
   13384:	8abe                	mv	s5,a5
   13386:	bd55                	j	1323a <emdnorm+0x244>
   13388:	8abe                	mv	s5,a5
   1338a:	bd71                	j	13226 <emdnorm+0x230>

000000000001338c <eiremain>:
   1338c:	711d                	add	sp,sp,-96
   1338e:	e0ca                	sd	s2,64(sp)
   13390:	fc4e                	sd	s3,56(sp)
   13392:	892e                	mv	s2,a1
   13394:	00255983          	lhu	s3,2(a0)
   13398:	ec86                	sd	ra,88(sp)
   1339a:	e8a2                	sd	s0,80(sp)
   1339c:	e4a6                	sd	s1,72(sp)
   1339e:	f852                	sd	s4,48(sp)
   133a0:	84b2                	mv	s1,a2
   133a2:	ec5e                	sd	s7,24(sp)
   133a4:	f456                	sd	s5,40(sp)
   133a6:	f05a                	sd	s6,32(sp)
   133a8:	e862                	sd	s8,16(sp)
   133aa:	e466                	sd	s9,8(sp)
   133ac:	e06a                	sd	s10,0(sp)
   133ae:	8baa                	mv	s7,a0
   133b0:	877ff0ef          	jal	12c26 <enormlz>
   133b4:	00295403          	lhu	s0,2(s2)
   133b8:	87aa                	mv	a5,a0
   133ba:	854a                	mv	a0,s2
   133bc:	40f989b3          	sub	s3,s3,a5
   133c0:	03448a13          	add	s4,s1,52
   133c4:	863ff0ef          	jal	12c26 <enormlz>
   133c8:	8c09                	sub	s0,s0,a0
   133ca:	04e48713          	add	a4,s1,78
   133ce:	87d2                	mv	a5,s4
   133d0:	0789                	add	a5,a5,2
   133d2:	fe079f23          	sh	zero,-2(a5)
   133d6:	fee79de3          	bne	a5,a4,133d0 <eiremain+0x44>
   133da:	07344a63          	blt	s0,s3,1344e <eiremain+0xc2>
   133de:	004b8b13          	add	s6,s7,4
   133e2:	00490a93          	add	s5,s2,4
   133e6:	01ab8c13          	add	s8,s7,26
   133ea:	00290d13          	add	s10,s2,2
   133ee:	8756                	mv	a4,s5
   133f0:	87da                	mv	a5,s6
   133f2:	0007d603          	lhu	a2,0(a5)
   133f6:	00075683          	lhu	a3,0(a4)
   133fa:	0789                	add	a5,a5,2
   133fc:	0709                	add	a4,a4,2
   133fe:	06d61c63          	bne	a2,a3,13476 <eiremain+0xea>
   13402:	fefc18e3          	bne	s8,a5,133f2 <eiremain+0x66>
   13406:	018b8613          	add	a2,s7,24
   1340a:	01890713          	add	a4,s2,24
   1340e:	4681                	li	a3,0
   13410:	00075783          	lhu	a5,0(a4)
   13414:	00065583          	lhu	a1,0(a2)
   13418:	1779                	add	a4,a4,-2
   1341a:	1679                	add	a2,a2,-2
   1341c:	8f8d                	sub	a5,a5,a1
   1341e:	8f95                	sub	a5,a5,a3
   13420:	0107d693          	srl	a3,a5,0x10
   13424:	00f71123          	sh	a5,2(a4)
   13428:	8a85                	and	a3,a3,1
   1342a:	ffa713e3          	bne	a4,s10,13410 <eiremain+0x84>
   1342e:	4c85                	li	s9,1
   13430:	8552                	mv	a0,s4
   13432:	ec4ff0ef          	jal	12af6 <eshup1>
   13436:	04c4d783          	lhu	a5,76(s1)
   1343a:	147d                	add	s0,s0,-1
   1343c:	854a                	mv	a0,s2
   1343e:	00fce7b3          	or	a5,s9,a5
   13442:	04f49623          	sh	a5,76(s1)
   13446:	eb0ff0ef          	jal	12af6 <eshup1>
   1344a:	fb3452e3          	bge	s0,s3,133ee <eiremain+0x62>
   1344e:	86a2                	mv	a3,s0
   13450:	6446                	ld	s0,80(sp)
   13452:	60e6                	ld	ra,88(sp)
   13454:	79e2                	ld	s3,56(sp)
   13456:	7a42                	ld	s4,48(sp)
   13458:	7aa2                	ld	s5,40(sp)
   1345a:	7b02                	ld	s6,32(sp)
   1345c:	6be2                	ld	s7,24(sp)
   1345e:	6c42                	ld	s8,16(sp)
   13460:	6ca2                	ld	s9,8(sp)
   13462:	6d02                	ld	s10,0(sp)
   13464:	87a6                	mv	a5,s1
   13466:	854a                	mv	a0,s2
   13468:	64a6                	ld	s1,72(sp)
   1346a:	6906                	ld	s2,64(sp)
   1346c:	4701                	li	a4,0
   1346e:	4601                	li	a2,0
   13470:	4581                	li	a1,0
   13472:	6125                	add	sp,sp,96
   13474:	b649                	j	12ff6 <emdnorm>
   13476:	4c81                	li	s9,0
   13478:	fac6ece3          	bltu	a3,a2,13430 <eiremain+0xa4>
   1347c:	b769                	j	13406 <eiremain+0x7a>

000000000001347e <e113toe.isra.0>:
   1347e:	7179                	add	sp,sp,-48
   13480:	f022                	sd	s0,32(sp)
   13482:	f406                	sd	ra,40(sp)
   13484:	842e                	mv	s0,a1
   13486:	878a                	mv	a5,sp
   13488:	01a10713          	add	a4,sp,26
   1348c:	0789                	add	a5,a5,2
   1348e:	fe079f23          	sh	zero,-2(a5)
   13492:	fee79de3          	bne	a5,a4,1348c <e113toe.isra.0+0xe>
   13496:	00e55783          	lhu	a5,14(a0)
   1349a:	6721                	lui	a4,0x8
   1349c:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1349e:	03079693          	sll	a3,a5,0x30
   134a2:	96fd                	sra	a3,a3,0x3f
   134a4:	00d11023          	sh	a3,0(sp)
   134a8:	00e7f6b3          	and	a3,a5,a4
   134ac:	8636                	mv	a2,a3
   134ae:	04e68363          	beq	a3,a4,134f4 <e113toe.isra.0+0x76>
   134b2:	00e50793          	add	a5,a0,14
   134b6:	00d11123          	sh	a3,2(sp)
   134ba:	00610713          	add	a4,sp,6
   134be:	ffe7d683          	lhu	a3,-2(a5)
   134c2:	17f9                	add	a5,a5,-2
   134c4:	0709                	add	a4,a4,2
   134c6:	fed71f23          	sh	a3,-2(a4)
   134ca:	fef51ae3          	bne	a0,a5,134be <e113toe.isra.0+0x40>
   134ce:	ea19                	bnez	a2,134e4 <e113toe.isra.0+0x66>
   134d0:	00011223          	sh	zero,4(sp)
   134d4:	85a2                	mv	a1,s0
   134d6:	850a                	mv	a0,sp
   134d8:	ec2ff0ef          	jal	12b9a <emovo.constprop.0>
   134dc:	70a2                	ld	ra,40(sp)
   134de:	7402                	ld	s0,32(sp)
   134e0:	6145                	add	sp,sp,48
   134e2:	8082                	ret
   134e4:	4785                	li	a5,1
   134e6:	55fd                	li	a1,-1
   134e8:	850a                	mv	a0,sp
   134ea:	00f11223          	sh	a5,4(sp)
   134ee:	845ff0ef          	jal	12d32 <eshift.part.0>
   134f2:	b7cd                	j	134d4 <e113toe.isra.0+0x56>
   134f4:	87aa                	mv	a5,a0
   134f6:	00e50693          	add	a3,a0,14
   134fa:	0007d703          	lhu	a4,0(a5)
   134fe:	0789                	add	a5,a5,2
   13500:	ef21                	bnez	a4,13558 <e113toe.isra.0+0xda>
   13502:	fed79ce3          	bne	a5,a3,134fa <e113toe.isra.0+0x7c>
   13506:	01440713          	add	a4,s0,20
   1350a:	87a2                	mv	a5,s0
   1350c:	0789                	add	a5,a5,2
   1350e:	fe079f23          	sh	zero,-2(a5)
   13512:	fee79de3          	bne	a5,a4,1350c <e113toe.isra.0+0x8e>
   13516:	01240713          	add	a4,s0,18
   1351a:	87a2                	mv	a5,s0
   1351c:	0789                	add	a5,a5,2
   1351e:	fe079f23          	sh	zero,-2(a5)
   13522:	fee79de3          	bne	a5,a4,1351c <e113toe.isra.0+0x9e>
   13526:	01245783          	lhu	a5,18(s0)
   1352a:	66a1                	lui	a3,0x8
   1352c:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   1352e:	8fd5                	or	a5,a5,a3
   13530:	17c2                	sll	a5,a5,0x30
   13532:	93c1                	srl	a5,a5,0x30
   13534:	00f41923          	sh	a5,18(s0)
   13538:	00e51683          	lh	a3,14(a0)
   1353c:	fa06d0e3          	bgez	a3,134dc <e113toe.isra.0+0x5e>
   13540:	86a2                	mv	a3,s0
   13542:	0006d603          	lhu	a2,0(a3)
   13546:	0689                	add	a3,a3,2
   13548:	fa51                	bnez	a2,134dc <e113toe.isra.0+0x5e>
   1354a:	fee69ce3          	bne	a3,a4,13542 <e113toe.isra.0+0xc4>
   1354e:	7761                	lui	a4,0xffff8
   13550:	8fb9                	xor	a5,a5,a4
   13552:	00f41923          	sh	a5,18(s0)
   13556:	b759                	j	134dc <e113toe.isra.0+0x5e>
   13558:	01040713          	add	a4,s0,16
   1355c:	87a2                	mv	a5,s0
   1355e:	0789                	add	a5,a5,2
   13560:	fe079f23          	sh	zero,-2(a5)
   13564:	fee79de3          	bne	a5,a4,1355e <e113toe.isra.0+0xe0>
   13568:	77f1                	lui	a5,0xffffc
   1356a:	00f41823          	sh	a5,16(s0)
   1356e:	77e1                	lui	a5,0xffff8
   13570:	fff7c793          	not	a5,a5
   13574:	00f41923          	sh	a5,18(s0)
   13578:	b795                	j	134dc <e113toe.isra.0+0x5e>

000000000001357a <ediv>:
   1357a:	01255783          	lhu	a5,18(a0)
   1357e:	7151                	add	sp,sp,-240
   13580:	f1a2                	sd	s0,224(sp)
   13582:	fff7c793          	not	a5,a5
   13586:	eda6                	sd	s1,216(sp)
   13588:	e9ca                	sd	s2,208(sp)
   1358a:	e5ce                	sd	s3,200(sp)
   1358c:	f586                	sd	ra,232(sp)
   1358e:	e1d2                	sd	s4,192(sp)
   13590:	fd56                	sd	s5,184(sp)
   13592:	f95a                	sd	s6,176(sp)
   13594:	f55e                	sd	s7,168(sp)
   13596:	f162                	sd	s8,160(sp)
   13598:	ed66                	sd	s9,152(sp)
   1359a:	e96a                	sd	s10,144(sp)
   1359c:	e56e                	sd	s11,136(sp)
   1359e:	03179713          	sll	a4,a5,0x31
   135a2:	84aa                	mv	s1,a0
   135a4:	89ae                	mv	s3,a1
   135a6:	8432                	mv	s0,a2
   135a8:	8936                	mv	s2,a3
   135aa:	eb11                	bnez	a4,135be <ediv+0x44>
   135ac:	01250693          	add	a3,a0,18
   135b0:	87aa                	mv	a5,a0
   135b2:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8490>
   135b6:	0789                	add	a5,a5,2
   135b8:	ef4d                	bnez	a4,13672 <ediv+0xf8>
   135ba:	fed79ce3          	bne	a5,a3,135b2 <ediv+0x38>
   135be:	0129d783          	lhu	a5,18(s3)
   135c2:	fff7c793          	not	a5,a5
   135c6:	03179713          	sll	a4,a5,0x31
   135ca:	eb11                	bnez	a4,135de <ediv+0x64>
   135cc:	01298693          	add	a3,s3,18
   135d0:	87ce                	mv	a5,s3
   135d2:	0007d703          	lhu	a4,0(a5)
   135d6:	0789                	add	a5,a5,2
   135d8:	eb45                	bnez	a4,13688 <ediv+0x10e>
   135da:	fed79ce3          	bne	a5,a3,135d2 <ediv+0x58>
   135de:	0000a597          	auipc	a1,0xa
   135e2:	a4258593          	add	a1,a1,-1470 # 1d020 <ezero>
   135e6:	8526                	mv	a0,s1
   135e8:	927ff0ef          	jal	12f0e <ecmp>
   135ec:	12050763          	beqz	a0,1371a <ediv+0x1a0>
   135f0:	0124d603          	lhu	a2,18(s1)
   135f4:	67a1                	lui	a5,0x8
   135f6:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   135f8:	00f67533          	and	a0,a2,a5
   135fc:	0af51163          	bne	a0,a5,1369e <ediv+0x124>
   13600:	01248693          	add	a3,s1,18
   13604:	87a6                	mv	a5,s1
   13606:	0007d703          	lhu	a4,0(a5)
   1360a:	0789                	add	a5,a5,2
   1360c:	eb49                	bnez	a4,1369e <ediv+0x124>
   1360e:	fed79ce3          	bne	a5,a3,13606 <ediv+0x8c>
   13612:	0129d703          	lhu	a4,18(s3)
   13616:	fff74793          	not	a5,a4
   1361a:	03179693          	sll	a3,a5,0x31
   1361e:	e6f5                	bnez	a3,1370a <ediv+0x190>
   13620:	01298693          	add	a3,s3,18
   13624:	87ce                	mv	a5,s3
   13626:	0007d583          	lhu	a1,0(a5)
   1362a:	0789                	add	a5,a5,2
   1362c:	36059c63          	bnez	a1,139a4 <ediv+0x42a>
   13630:	fed79be3          	bne	a5,a3,13626 <ediv+0xac>
   13634:	01040713          	add	a4,s0,16
   13638:	87a2                	mv	a5,s0
   1363a:	0789                	add	a5,a5,2
   1363c:	fe079f23          	sh	zero,-2(a5)
   13640:	fee79de3          	bne	a5,a4,1363a <ediv+0xc0>
   13644:	77f1                	lui	a5,0xffffc
   13646:	00f41823          	sh	a5,16(s0)
   1364a:	77e1                	lui	a5,0xffff8
   1364c:	fff7c793          	not	a5,a5
   13650:	00f41923          	sh	a5,18(s0)
   13654:	70ae                	ld	ra,232(sp)
   13656:	740e                	ld	s0,224(sp)
   13658:	64ee                	ld	s1,216(sp)
   1365a:	694e                	ld	s2,208(sp)
   1365c:	69ae                	ld	s3,200(sp)
   1365e:	6a0e                	ld	s4,192(sp)
   13660:	7aea                	ld	s5,184(sp)
   13662:	7b4a                	ld	s6,176(sp)
   13664:	7baa                	ld	s7,168(sp)
   13666:	7c0a                	ld	s8,160(sp)
   13668:	6cea                	ld	s9,152(sp)
   1366a:	6d4a                	ld	s10,144(sp)
   1366c:	6daa                	ld	s11,136(sp)
   1366e:	616d                	add	sp,sp,240
   13670:	8082                	ret
   13672:	01448713          	add	a4,s1,20
   13676:	0004d783          	lhu	a5,0(s1)
   1367a:	0489                	add	s1,s1,2
   1367c:	0409                	add	s0,s0,2
   1367e:	fef41f23          	sh	a5,-2(s0)
   13682:	fee49ae3          	bne	s1,a4,13676 <ediv+0xfc>
   13686:	b7f9                	j	13654 <ediv+0xda>
   13688:	01440713          	add	a4,s0,20
   1368c:	0009d783          	lhu	a5,0(s3)
   13690:	0409                	add	s0,s0,2
   13692:	0989                	add	s3,s3,2
   13694:	fef41f23          	sh	a5,-2(s0)
   13698:	fee41ae3          	bne	s0,a4,1368c <ediv+0x112>
   1369c:	bf65                	j	13654 <ediv+0xda>
   1369e:	0129d703          	lhu	a4,18(s3)
   136a2:	fff74793          	not	a5,a4
   136a6:	03179693          	sll	a3,a5,0x31
   136aa:	e2d1                	bnez	a3,1372e <ediv+0x1b4>
   136ac:	4801                	li	a6,0
   136ae:	01298693          	add	a3,s3,18
   136b2:	87ce                	mv	a5,s3
   136b4:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8490>
   136b8:	0789                	add	a5,a5,2
   136ba:	e5b1                	bnez	a1,13706 <ediv+0x18c>
   136bc:	fed79ce3          	bne	a5,a3,136b4 <ediv+0x13a>
   136c0:	67a1                	lui	a5,0x8
   136c2:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   136c4:	0af50663          	beq	a0,a5,13770 <ediv+0x1f6>
   136c8:	823d                	srl	a2,a2,0xf
   136ca:	0009d783          	lhu	a5,0(s3)
   136ce:	0989                	add	s3,s3,2
   136d0:	2c079663          	bnez	a5,1399c <ediv+0x422>
   136d4:	fed99be3          	bne	s3,a3,136ca <ediv+0x150>
   136d8:	00f75793          	srl	a5,a4,0xf
   136dc:	8fb1                	xor	a5,a5,a2
   136de:	00f7979b          	sllw	a5,a5,0xf
   136e2:	00f41923          	sh	a5,18(s0)
   136e6:	01240713          	add	a4,s0,18
   136ea:	87a2                	mv	a5,s0
   136ec:	0789                	add	a5,a5,2
   136ee:	fe079f23          	sh	zero,-2(a5)
   136f2:	fee79de3          	bne	a5,a4,136ec <ediv+0x172>
   136f6:	01245783          	lhu	a5,18(s0)
   136fa:	6721                	lui	a4,0x8
   136fc:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   136fe:	8fd9                	or	a5,a5,a4
   13700:	00f41923          	sh	a5,18(s0)
   13704:	bf81                	j	13654 <ediv+0xda>
   13706:	02080463          	beqz	a6,1372e <ediv+0x1b4>
   1370a:	01440793          	add	a5,s0,20
   1370e:	0409                	add	s0,s0,2
   13710:	fe041f23          	sh	zero,-2(s0)
   13714:	fef41de3          	bne	s0,a5,1370e <ediv+0x194>
   13718:	bf35                	j	13654 <ediv+0xda>
   1371a:	0000a597          	auipc	a1,0xa
   1371e:	90658593          	add	a1,a1,-1786 # 1d020 <ezero>
   13722:	854e                	mv	a0,s3
   13724:	feaff0ef          	jal	12f0e <ecmp>
   13728:	ec0514e3          	bnez	a0,135f0 <ediv+0x76>
   1372c:	b721                	j	13634 <ediv+0xba>
   1372e:	100c                	add	a1,sp,32
   13730:	8526                	mv	a0,s1
   13732:	f48ff0ef          	jal	12e7a <emovi>
   13736:	008c                	add	a1,sp,64
   13738:	854e                	mv	a0,s3
   1373a:	f40ff0ef          	jal	12e7a <emovi>
   1373e:	04215b03          	lhu	s6,66(sp)
   13742:	02215c03          	lhu	s8,34(sp)
   13746:	020b1f63          	bnez	s6,13784 <ediv+0x20a>
   1374a:	04210793          	add	a5,sp,66
   1374e:	05810c93          	add	s9,sp,88
   13752:	0007d703          	lhu	a4,0(a5)
   13756:	0789                	add	a5,a5,2
   13758:	22071463          	bnez	a4,13980 <ediv+0x406>
   1375c:	fefc9be3          	bne	s9,a5,13752 <ediv+0x1d8>
   13760:	01440793          	add	a5,s0,20
   13764:	0409                	add	s0,s0,2
   13766:	fe041f23          	sh	zero,-2(s0)
   1376a:	fef41de3          	bne	s0,a5,13764 <ediv+0x1ea>
   1376e:	b5dd                	j	13654 <ediv+0xda>
   13770:	01248593          	add	a1,s1,18
   13774:	0004d783          	lhu	a5,0(s1)
   13778:	0489                	add	s1,s1,2
   1377a:	22079363          	bnez	a5,139a0 <ediv+0x426>
   1377e:	feb49be3          	bne	s1,a1,13774 <ediv+0x1fa>
   13782:	b799                	j	136c8 <ediv+0x14e>
   13784:	e45a                	sd	s6,8(sp)
   13786:	040c1063          	bnez	s8,137c6 <ediv+0x24c>
   1378a:	02210793          	add	a5,sp,34
   1378e:	1834                	add	a3,sp,56
   13790:	0007d703          	lhu	a4,0(a5)
   13794:	0789                	add	a5,a5,2
   13796:	1e071c63          	bnez	a4,1398e <ediv+0x414>
   1379a:	fed79be3          	bne	a5,a3,13790 <ediv+0x216>
   1379e:	02015683          	lhu	a3,32(sp)
   137a2:	04015603          	lhu	a2,64(sp)
   137a6:	01240713          	add	a4,s0,18
   137aa:	87a2                	mv	a5,s0
   137ac:	8e91                	sub	a3,a3,a2
   137ae:	00d036b3          	snez	a3,a3
   137b2:	00f6969b          	sllw	a3,a3,0xf
   137b6:	00d41923          	sh	a3,18(s0)
   137ba:	0789                	add	a5,a5,2
   137bc:	fe079f23          	sh	zero,-2(a5)
   137c0:	fee79de3          	bne	a5,a4,137ba <ediv+0x240>
   137c4:	bf0d                	j	136f6 <ediv+0x17c>
   137c6:	e862                	sd	s8,16(sp)
   137c8:	4786                	lw	a5,64(sp)
   137ca:	03890493          	add	s1,s2,56
   137ce:	03490713          	add	a4,s2,52
   137d2:	02f92a23          	sw	a5,52(s2)
   137d6:	ec3a                	sd	a4,24(sp)
   137d8:	04e90993          	add	s3,s2,78
   137dc:	87a6                	mv	a5,s1
   137de:	0789                	add	a5,a5,2
   137e0:	fe079f23          	sh	zero,-2(a5)
   137e4:	ff379de3          	bne	a5,s3,137de <ediv+0x264>
   137e8:	0088                	add	a0,sp,64
   137ea:	aceff0ef          	jal	12ab8 <eshdn1>
   137ee:	02615b83          	lhu	s7,38(sp)
   137f2:	6a41                	lui	s4,0x10
   137f4:	04210d13          	add	s10,sp,66
   137f8:	010b9a93          	sll	s5,s7,0x10
   137fc:	417a8ab3          	sub	s5,s5,s7
   13800:	05810c93          	add	s9,sp,88
   13804:	1a7d                	add	s4,s4,-1 # ffff <exit-0xe9>
   13806:	07a10d93          	add	s11,sp,122
   1380a:	06210c13          	add	s8,sp,98
   1380e:	04415783          	lhu	a5,68(sp)
   13812:	04615703          	lhu	a4,70(sp)
   13816:	8b52                	mv	s6,s4
   13818:	07c2                	sll	a5,a5,0x10
   1381a:	97ba                	add	a5,a5,a4
   1381c:	00fae863          	bltu	s5,a5,1382c <ediv+0x2b2>
   13820:	0377d7b3          	divu	a5,a5,s7
   13824:	03079b13          	sll	s6,a5,0x30
   13828:	030b5b13          	srl	s6,s6,0x30
   1382c:	1090                	add	a2,sp,96
   1382e:	100c                	add	a1,sp,32
   13830:	855a                	mv	a0,s6
   13832:	b00ff0ef          	jal	12b32 <m16m>
   13836:	00d8                	add	a4,sp,68
   13838:	10dc                	add	a5,sp,100
   1383a:	0007d603          	lhu	a2,0(a5)
   1383e:	00075683          	lhu	a3,0(a4)
   13842:	0789                	add	a5,a5,2
   13844:	0709                	add	a4,a4,2
   13846:	0ad61a63          	bne	a2,a3,138fa <ediv+0x380>
   1384a:	ffb798e3          	bne	a5,s11,1383a <ediv+0x2c0>
   1384e:	4681                	li	a3,0
   13850:	18b0                	add	a2,sp,120
   13852:	87e6                	mv	a5,s9
   13854:	0007d703          	lhu	a4,0(a5)
   13858:	00065583          	lhu	a1,0(a2)
   1385c:	17f9                	add	a5,a5,-2
   1385e:	1679                	add	a2,a2,-2
   13860:	8f0d                	sub	a4,a4,a1
   13862:	8f15                	sub	a4,a4,a3
   13864:	01075693          	srl	a3,a4,0x10
   13868:	00e79123          	sh	a4,2(a5)
   1386c:	8a85                	and	a3,a3,1
   1386e:	ffa793e3          	bne	a5,s10,13854 <ediv+0x2da>
   13872:	01649023          	sh	s6,0(s1)
   13876:	00dc                	add	a5,sp,68
   13878:	0027d703          	lhu	a4,2(a5)
   1387c:	0789                	add	a5,a5,2
   1387e:	fee79f23          	sh	a4,-2(a5)
   13882:	ff979be3          	bne	a5,s9,13878 <ediv+0x2fe>
   13886:	04011c23          	sh	zero,88(sp)
   1388a:	0489                	add	s1,s1,2
   1388c:	f89991e3          	bne	s3,s1,1380e <ediv+0x294>
   13890:	4701                	li	a4,0
   13892:	00dc                	add	a5,sp,68
   13894:	05a10693          	add	a3,sp,90
   13898:	0007d603          	lhu	a2,0(a5)
   1389c:	0789                	add	a5,a5,2
   1389e:	8f51                	or	a4,a4,a2
   138a0:	fed79ce3          	bne	a5,a3,13898 <ediv+0x31e>
   138a4:	64e2                	ld	s1,24(sp)
   138a6:	2701                	sext.w	a4,a4
   138a8:	00e035b3          	snez	a1,a4
   138ac:	009c                	add	a5,sp,64
   138ae:	0004d703          	lhu	a4,0(s1)
   138b2:	0789                	add	a5,a5,2
   138b4:	0489                	add	s1,s1,2
   138b6:	fee79f23          	sh	a4,-2(a5)
   138ba:	fed79ae3          	bne	a5,a3,138ae <ediv+0x334>
   138be:	67a2                	ld	a5,8(sp)
   138c0:	6742                	ld	a4,16(sp)
   138c2:	6691                	lui	a3,0x4
   138c4:	16fd                	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   138c6:	40e78b33          	sub	s6,a5,a4
   138ca:	0088                	add	a0,sp,64
   138cc:	87ca                	mv	a5,s2
   138ce:	04000713          	li	a4,64
   138d2:	96da                	add	a3,a3,s6
   138d4:	4601                	li	a2,0
   138d6:	f20ff0ef          	jal	12ff6 <emdnorm>
   138da:	04015703          	lhu	a4,64(sp)
   138de:	02015783          	lhu	a5,32(sp)
   138e2:	85a2                	mv	a1,s0
   138e4:	0088                	add	a0,sp,64
   138e6:	8f99                	sub	a5,a5,a4
   138e8:	00f037b3          	snez	a5,a5
   138ec:	40f007bb          	negw	a5,a5
   138f0:	04f11023          	sh	a5,64(sp)
   138f4:	aa6ff0ef          	jal	12b9a <emovo.constprop.0>
   138f8:	bbb1                	j	13654 <ediv+0xda>
   138fa:	f4c6fae3          	bgeu	a3,a2,1384e <ediv+0x2d4>
   138fe:	fffb079b          	addw	a5,s6,-1
   13902:	03079313          	sll	t1,a5,0x30
   13906:	03035313          	srl	t1,t1,0x30
   1390a:	4681                	li	a3,0
   1390c:	1830                	add	a2,sp,56
   1390e:	18b8                	add	a4,sp,120
   13910:	00075783          	lhu	a5,0(a4)
   13914:	00065583          	lhu	a1,0(a2)
   13918:	1779                	add	a4,a4,-2
   1391a:	1679                	add	a2,a2,-2
   1391c:	8f8d                	sub	a5,a5,a1
   1391e:	8f95                	sub	a5,a5,a3
   13920:	0107d693          	srl	a3,a5,0x10
   13924:	00f71123          	sh	a5,2(a4)
   13928:	8a85                	and	a3,a3,1
   1392a:	ff8713e3          	bne	a4,s8,13910 <ediv+0x396>
   1392e:	00d8                	add	a4,sp,68
   13930:	10dc                	add	a5,sp,100
   13932:	0007d603          	lhu	a2,0(a5)
   13936:	00075683          	lhu	a3,0(a4)
   1393a:	0789                	add	a5,a5,2
   1393c:	0709                	add	a4,a4,2
   1393e:	00d61663          	bne	a2,a3,1394a <ediv+0x3d0>
   13942:	ffb798e3          	bne	a5,s11,13932 <ediv+0x3b8>
   13946:	8b1a                	mv	s6,t1
   13948:	b719                	j	1384e <ediv+0x2d4>
   1394a:	fec6fee3          	bgeu	a3,a2,13946 <ediv+0x3cc>
   1394e:	ffeb051b          	addw	a0,s6,-2
   13952:	03051b13          	sll	s6,a0,0x30
   13956:	030b5b13          	srl	s6,s6,0x30
   1395a:	4681                	li	a3,0
   1395c:	1830                	add	a2,sp,56
   1395e:	18b8                	add	a4,sp,120
   13960:	00075783          	lhu	a5,0(a4)
   13964:	00065583          	lhu	a1,0(a2)
   13968:	1779                	add	a4,a4,-2
   1396a:	1679                	add	a2,a2,-2
   1396c:	8f8d                	sub	a5,a5,a1
   1396e:	8f95                	sub	a5,a5,a3
   13970:	0107d693          	srl	a3,a5,0x10
   13974:	00f71123          	sh	a5,2(a4)
   13978:	8a85                	and	a3,a3,1
   1397a:	ff8713e3          	bne	a4,s8,13960 <ediv+0x3e6>
   1397e:	bdc1                	j	1384e <ediv+0x2d4>
   13980:	0088                	add	a0,sp,64
   13982:	aa4ff0ef          	jal	12c26 <enormlz>
   13986:	40a007b3          	neg	a5,a0
   1398a:	e43e                	sd	a5,8(sp)
   1398c:	bbed                	j	13786 <ediv+0x20c>
   1398e:	1008                	add	a0,sp,32
   13990:	a96ff0ef          	jal	12c26 <enormlz>
   13994:	40a007b3          	neg	a5,a0
   13998:	e83e                	sd	a5,16(sp)
   1399a:	b53d                	j	137c8 <ediv+0x24e>
   1399c:	4781                	li	a5,0
   1399e:	bb3d                	j	136dc <ediv+0x162>
   139a0:	4601                	li	a2,0
   139a2:	b325                	j	136ca <ediv+0x150>
   139a4:	4805                	li	a6,1
   139a6:	b331                	j	136b2 <ediv+0x138>

00000000000139a8 <emul>:
   139a8:	01255803          	lhu	a6,18(a0)
   139ac:	6721                	lui	a4,0x8
   139ae:	7131                	add	sp,sp,-192
   139b0:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   139b2:	f922                	sd	s0,176(sp)
   139b4:	f526                	sd	s1,168(sp)
   139b6:	f14a                	sd	s2,160(sp)
   139b8:	e556                	sd	s5,136(sp)
   139ba:	84aa                	mv	s1,a0
   139bc:	fd06                	sd	ra,184(sp)
   139be:	ed4e                	sd	s3,152(sp)
   139c0:	e952                	sd	s4,144(sp)
   139c2:	e15a                	sd	s6,128(sp)
   139c4:	fcde                	sd	s7,120(sp)
   139c6:	f8e2                	sd	s8,112(sp)
   139c8:	f4e6                	sd	s9,104(sp)
   139ca:	f0ea                	sd	s10,96(sp)
   139cc:	00e87533          	and	a0,a6,a4
   139d0:	892e                	mv	s2,a1
   139d2:	8432                	mv	s0,a2
   139d4:	8ab6                	mv	s5,a3
   139d6:	12e51863          	bne	a0,a4,13b06 <emul+0x15e>
   139da:	01248993          	add	s3,s1,18
   139de:	8726                	mv	a4,s1
   139e0:	00075603          	lhu	a2,0(a4)
   139e4:	0709                	add	a4,a4,2
   139e6:	18061a63          	bnez	a2,13b7a <emul+0x1d2>
   139ea:	ff371be3          	bne	a4,s3,139e0 <emul+0x38>
   139ee:	01295603          	lhu	a2,18(s2)
   139f2:	fff64793          	not	a5,a2
   139f6:	03179713          	sll	a4,a5,0x31
   139fa:	10070c63          	beqz	a4,13b12 <emul+0x16a>
   139fe:	87a6                	mv	a5,s1
   13a00:	0007d703          	lhu	a4,0(a5)
   13a04:	0789                	add	a5,a5,2
   13a06:	1e071763          	bnez	a4,13bf4 <emul+0x24c>
   13a0a:	ff379be3          	bne	a5,s3,13a00 <emul+0x58>
   13a0e:	00009597          	auipc	a1,0x9
   13a12:	61258593          	add	a1,a1,1554 # 1d020 <ezero>
   13a16:	854a                	mv	a0,s2
   13a18:	cf6ff0ef          	jal	12f0e <ecmp>
   13a1c:	1e050f63          	beqz	a0,13c1a <emul+0x272>
   13a20:	01295603          	lhu	a2,18(s2)
   13a24:	65a1                	lui	a1,0x8
   13a26:	15fd                	add	a1,a1,-1 # 7fff <exit-0x80e9>
   13a28:	00b67733          	and	a4,a2,a1
   13a2c:	86ba                	mv	a3,a4
   13a2e:	01290793          	add	a5,s2,18
   13a32:	30b71d63          	bne	a4,a1,13d4c <emul+0x3a4>
   13a36:	874a                	mv	a4,s2
   13a38:	00075683          	lhu	a3,0(a4)
   13a3c:	0709                	add	a4,a4,2
   13a3e:	18069663          	bnez	a3,13bca <emul+0x222>
   13a42:	fee79be3          	bne	a5,a4,13a38 <emul+0x90>
   13a46:	00009597          	auipc	a1,0x9
   13a4a:	5da58593          	add	a1,a1,1498 # 1d020 <ezero>
   13a4e:	8526                	mv	a0,s1
   13a50:	cbeff0ef          	jal	12f0e <ecmp>
   13a54:	1c050363          	beqz	a0,13c1a <emul+0x272>
   13a58:	0124d803          	lhu	a6,18(s1)
   13a5c:	01295603          	lhu	a2,18(s2)
   13a60:	67a1                	lui	a5,0x8
   13a62:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13a64:	00f87733          	and	a4,a6,a5
   13a68:	00f676b3          	and	a3,a2,a5
   13a6c:	85ba                	mv	a1,a4
   13a6e:	16f70763          	beq	a4,a5,13bdc <emul+0x234>
   13a72:	8736                	mv	a4,a3
   13a74:	86ae                	mv	a3,a1
   13a76:	67a1                	lui	a5,0x8
   13a78:	2701                	sext.w	a4,a4
   13a7a:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13a7c:	0af71e63          	bne	a4,a5,13b38 <emul+0x190>
   13a80:	01290793          	add	a5,s2,18
   13a84:	874a                	mv	a4,s2
   13a86:	00075583          	lhu	a1,0(a4)
   13a8a:	0709                	add	a4,a4,2
   13a8c:	e5d5                	bnez	a1,13b38 <emul+0x190>
   13a8e:	fee79ce3          	bne	a5,a4,13a86 <emul+0xde>
   13a92:	65a1                	lui	a1,0x8
   13a94:	15fd                	add	a1,a1,-1 # 7fff <exit-0x80e9>
   13a96:	0006871b          	sext.w	a4,a3
   13a9a:	01248993          	add	s3,s1,18
   13a9e:	18b69f63          	bne	a3,a1,13c3c <emul+0x294>
   13aa2:	0004d783          	lhu	a5,0(s1)
   13aa6:	0489                	add	s1,s1,2
   13aa8:	18079d63          	bnez	a5,13c42 <emul+0x29a>
   13aac:	fe999be3          	bne	s3,s1,13aa2 <emul+0xfa>
   13ab0:	00f85813          	srl	a6,a6,0xf
   13ab4:	67a1                	lui	a5,0x8
   13ab6:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13ab8:	14f70863          	beq	a4,a5,13c08 <emul+0x260>
   13abc:	00f65793          	srl	a5,a2,0xf
   13ac0:	0107c7b3          	xor	a5,a5,a6
   13ac4:	00f7979b          	sllw	a5,a5,0xf
   13ac8:	00f41923          	sh	a5,18(s0)
   13acc:	01240713          	add	a4,s0,18
   13ad0:	87a2                	mv	a5,s0
   13ad2:	0789                	add	a5,a5,2
   13ad4:	fe079f23          	sh	zero,-2(a5)
   13ad8:	fee79de3          	bne	a5,a4,13ad2 <emul+0x12a>
   13adc:	01245783          	lhu	a5,18(s0)
   13ae0:	6721                	lui	a4,0x8
   13ae2:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   13ae4:	8fd9                	or	a5,a5,a4
   13ae6:	00f41923          	sh	a5,18(s0)
   13aea:	70ea                	ld	ra,184(sp)
   13aec:	744a                	ld	s0,176(sp)
   13aee:	74aa                	ld	s1,168(sp)
   13af0:	790a                	ld	s2,160(sp)
   13af2:	69ea                	ld	s3,152(sp)
   13af4:	6a4a                	ld	s4,144(sp)
   13af6:	6aaa                	ld	s5,136(sp)
   13af8:	6b0a                	ld	s6,128(sp)
   13afa:	7be6                	ld	s7,120(sp)
   13afc:	7c46                	ld	s8,112(sp)
   13afe:	7ca6                	ld	s9,104(sp)
   13b00:	7d06                	ld	s10,96(sp)
   13b02:	6129                	add	sp,sp,192
   13b04:	8082                	ret
   13b06:	0125d603          	lhu	a2,18(a1)
   13b0a:	00e677b3          	and	a5,a2,a4
   13b0e:	02e79563          	bne	a5,a4,13b38 <emul+0x190>
   13b12:	01290793          	add	a5,s2,18
   13b16:	874a                	mv	a4,s2
   13b18:	00075683          	lhu	a3,0(a4)
   13b1c:	0709                	add	a4,a4,2
   13b1e:	eaad                	bnez	a3,13b90 <emul+0x1e8>
   13b20:	fef71ce3          	bne	a4,a5,13b18 <emul+0x170>
   13b24:	6721                	lui	a4,0x8
   13b26:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   13b28:	01248993          	add	s3,s1,18
   13b2c:	ece509e3          	beq	a0,a4,139fe <emul+0x56>
   13b30:	00e676b3          	and	a3,a2,a4
   13b34:	f0e681e3          	beq	a3,a4,13a36 <emul+0x8e>
   13b38:	8526                	mv	a0,s1
   13b3a:	858a                	mv	a1,sp
   13b3c:	b3eff0ef          	jal	12e7a <emovi>
   13b40:	854a                	mv	a0,s2
   13b42:	100c                	add	a1,sp,32
   13b44:	b36ff0ef          	jal	12e7a <emovi>
   13b48:	00215903          	lhu	s2,2(sp)
   13b4c:	02215483          	lhu	s1,34(sp)
   13b50:	04090b63          	beqz	s2,13ba6 <emul+0x1fe>
   13b54:	ecfd                	bnez	s1,13c52 <emul+0x2aa>
   13b56:	02210793          	add	a5,sp,34
   13b5a:	1834                	add	a3,sp,56
   13b5c:	0007d703          	lhu	a4,0(a5)
   13b60:	0789                	add	a5,a5,2
   13b62:	1c071d63          	bnez	a4,13d3c <emul+0x394>
   13b66:	fed79be3          	bne	a5,a3,13b5c <emul+0x1b4>
   13b6a:	01440793          	add	a5,s0,20
   13b6e:	0409                	add	s0,s0,2
   13b70:	fe041f23          	sh	zero,-2(s0)
   13b74:	fe879de3          	bne	a5,s0,13b6e <emul+0x1c6>
   13b78:	bf8d                	j	13aea <emul+0x142>
   13b7a:	01440713          	add	a4,s0,20
   13b7e:	0004d783          	lhu	a5,0(s1)
   13b82:	0409                	add	s0,s0,2
   13b84:	0489                	add	s1,s1,2
   13b86:	fef41f23          	sh	a5,-2(s0)
   13b8a:	fee41ae3          	bne	s0,a4,13b7e <emul+0x1d6>
   13b8e:	bfb1                	j	13aea <emul+0x142>
   13b90:	01490713          	add	a4,s2,20
   13b94:	00095783          	lhu	a5,0(s2)
   13b98:	0909                	add	s2,s2,2
   13b9a:	0409                	add	s0,s0,2
   13b9c:	fef41f23          	sh	a5,-2(s0)
   13ba0:	ff271ae3          	bne	a4,s2,13b94 <emul+0x1ec>
   13ba4:	b799                	j	13aea <emul+0x142>
   13ba6:	00210793          	add	a5,sp,2
   13baa:	0834                	add	a3,sp,24
   13bac:	0007d703          	lhu	a4,0(a5)
   13bb0:	0789                	add	a5,a5,2
   13bb2:	16071f63          	bnez	a4,13d30 <emul+0x388>
   13bb6:	fef69be3          	bne	a3,a5,13bac <emul+0x204>
   13bba:	01440793          	add	a5,s0,20
   13bbe:	0409                	add	s0,s0,2
   13bc0:	fe041f23          	sh	zero,-2(s0)
   13bc4:	fef41de3          	bne	s0,a5,13bbe <emul+0x216>
   13bc8:	b70d                	j	13aea <emul+0x142>
   13bca:	0124d803          	lhu	a6,18(s1)
   13bce:	65a1                	lui	a1,0x8
   13bd0:	15fd                	add	a1,a1,-1 # 7fff <exit-0x80e9>
   13bd2:	00b87733          	and	a4,a6,a1
   13bd6:	86ba                	mv	a3,a4
   13bd8:	eab716e3          	bne	a4,a1,13a84 <emul+0xdc>
   13bdc:	01248993          	add	s3,s1,18
   13be0:	87a6                	mv	a5,s1
   13be2:	0007d703          	lhu	a4,0(a5)
   13be6:	0789                	add	a5,a5,2
   13be8:	e32d                	bnez	a4,13c4a <emul+0x2a2>
   13bea:	fef99ce3          	bne	s3,a5,13be2 <emul+0x23a>
   13bee:	0006871b          	sext.w	a4,a3
   13bf2:	bd45                	j	13aa2 <emul+0xfa>
   13bf4:	65a1                	lui	a1,0x8
   13bf6:	15fd                	add	a1,a1,-1 # 7fff <exit-0x80e9>
   13bf8:	00b67733          	and	a4,a2,a1
   13bfc:	86ba                	mv	a3,a4
   13bfe:	01290793          	add	a5,s2,18
   13c02:	e2b70ae3          	beq	a4,a1,13a36 <emul+0x8e>
   13c06:	bfe9                	j	13be0 <emul+0x238>
   13c08:	01290793          	add	a5,s2,18
   13c0c:	00095703          	lhu	a4,0(s2)
   13c10:	0909                	add	s2,s2,2
   13c12:	eb15                	bnez	a4,13c46 <emul+0x29e>
   13c14:	fef91ce3          	bne	s2,a5,13c0c <emul+0x264>
   13c18:	b555                	j	13abc <emul+0x114>
   13c1a:	01040713          	add	a4,s0,16
   13c1e:	87a2                	mv	a5,s0
   13c20:	0789                	add	a5,a5,2
   13c22:	fe079f23          	sh	zero,-2(a5)
   13c26:	fef71de3          	bne	a4,a5,13c20 <emul+0x278>
   13c2a:	77f1                	lui	a5,0xffffc
   13c2c:	00f41823          	sh	a5,16(s0)
   13c30:	77e1                	lui	a5,0xffff8
   13c32:	fff7c793          	not	a5,a5
   13c36:	00f41923          	sh	a5,18(s0)
   13c3a:	bd45                	j	13aea <emul+0x142>
   13c3c:	00f85813          	srl	a6,a6,0xf
   13c40:	b7f1                	j	13c0c <emul+0x264>
   13c42:	4801                	li	a6,0
   13c44:	bd85                	j	13ab4 <emul+0x10c>
   13c46:	4781                	li	a5,0
   13c48:	bda5                	j	13ac0 <emul+0x118>
   13c4a:	8736                	mv	a4,a3
   13c4c:	66a1                	lui	a3,0x8
   13c4e:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   13c50:	b51d                	j	13a76 <emul+0xce>
   13c52:	89a6                	mv	s3,s1
   13c54:	02015783          	lhu	a5,32(sp)
   13c58:	0104949b          	sllw	s1,s1,0x10
   13c5c:	038a8a13          	add	s4,s5,56
   13c60:	8fc5                	or	a5,a5,s1
   13c62:	02faaa23          	sw	a5,52(s5)
   13c66:	034a8493          	add	s1,s5,52
   13c6a:	87d2                	mv	a5,s4
   13c6c:	04ea8713          	add	a4,s5,78
   13c70:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd8490>
   13c74:	0789                	add	a5,a5,2
   13c76:	fee79de3          	bne	a5,a4,13c70 <emul+0x2c8>
   13c7a:	04ca8c93          	add	s9,s5,76
   13c7e:	4c01                	li	s8,0
   13c80:	01810b13          	add	s6,sp,24
   13c84:	00410d13          	add	s10,sp,4
   13c88:	04210b93          	add	s7,sp,66
   13c8c:	000b5503          	lhu	a0,0(s6)
   13c90:	1b79                	add	s6,s6,-2
   13c92:	e925                	bnez	a0,13d02 <emul+0x35a>
   13c94:	04cad783          	lhu	a5,76(s5)
   13c98:	8766                	mv	a4,s9
   13c9a:	00fc6c33          	or	s8,s8,a5
   13c9e:	ffe75603          	lhu	a2,-2(a4)
   13ca2:	1779                	add	a4,a4,-2
   13ca4:	00c71123          	sh	a2,2(a4)
   13ca8:	feea1be3          	bne	s4,a4,13c9e <emul+0x2f6>
   13cac:	020a9c23          	sh	zero,56(s5)
   13cb0:	fdab1ee3          	bne	s6,s10,13c8c <emul+0x2e4>
   13cb4:	101c                	add	a5,sp,32
   13cb6:	03a10693          	add	a3,sp,58
   13cba:	0004d703          	lhu	a4,0(s1)
   13cbe:	0789                	add	a5,a5,2
   13cc0:	0489                	add	s1,s1,2
   13cc2:	fee79f23          	sh	a4,-2(a5)
   13cc6:	fef69ae3          	bne	a3,a5,13cba <emul+0x312>
   13cca:	76f1                	lui	a3,0xffffc
   13ccc:	994e                	add	s2,s2,s3
   13cce:	0689                	add	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc492>
   13cd0:	85e2                	mv	a1,s8
   13cd2:	1008                	add	a0,sp,32
   13cd4:	87d6                	mv	a5,s5
   13cd6:	04000713          	li	a4,64
   13cda:	96ca                	add	a3,a3,s2
   13cdc:	4601                	li	a2,0
   13cde:	b18ff0ef          	jal	12ff6 <emdnorm>
   13ce2:	02015703          	lhu	a4,32(sp)
   13ce6:	00015783          	lhu	a5,0(sp)
   13cea:	85a2                	mv	a1,s0
   13cec:	1008                	add	a0,sp,32
   13cee:	8f99                	sub	a5,a5,a4
   13cf0:	00f037b3          	snez	a5,a5
   13cf4:	40f007bb          	negw	a5,a5
   13cf8:	02f11023          	sh	a5,32(sp)
   13cfc:	e9ffe0ef          	jal	12b9a <emovo.constprop.0>
   13d00:	b3ed                	j	13aea <emul+0x142>
   13d02:	0090                	add	a2,sp,64
   13d04:	100c                	add	a1,sp,32
   13d06:	e2dfe0ef          	jal	12b32 <m16m>
   13d0a:	8566                	mv	a0,s9
   13d0c:	4581                	li	a1,0
   13d0e:	08b0                	add	a2,sp,88
   13d10:	00055783          	lhu	a5,0(a0)
   13d14:	00065703          	lhu	a4,0(a2)
   13d18:	1579                	add	a0,a0,-2
   13d1a:	1679                	add	a2,a2,-2
   13d1c:	973e                	add	a4,a4,a5
   13d1e:	972e                	add	a4,a4,a1
   13d20:	01075593          	srl	a1,a4,0x10
   13d24:	00e51123          	sh	a4,2(a0)
   13d28:	8985                	and	a1,a1,1
   13d2a:	ff7613e3          	bne	a2,s7,13d10 <emul+0x368>
   13d2e:	b79d                	j	13c94 <emul+0x2ec>
   13d30:	850a                	mv	a0,sp
   13d32:	ef5fe0ef          	jal	12c26 <enormlz>
   13d36:	40a00933          	neg	s2,a0
   13d3a:	bd29                	j	13b54 <emul+0x1ac>
   13d3c:	1008                	add	a0,sp,32
   13d3e:	ee9fe0ef          	jal	12c26 <enormlz>
   13d42:	40a009b3          	neg	s3,a0
   13d46:	02215483          	lhu	s1,34(sp)
   13d4a:	b729                	j	13c54 <emul+0x2ac>
   13d4c:	0124d803          	lhu	a6,18(s1)
   13d50:	00b877b3          	and	a5,a6,a1
   13d54:	e8b786e3          	beq	a5,a1,13be0 <emul+0x238>
   13d58:	b3c5                	j	13b38 <emul+0x190>

0000000000013d5a <_ldtoa_r>:
   13d5a:	d9010113          	add	sp,sp,-624
   13d5e:	09100313          	li	t1,145
   13d62:	f4b2                	sd	a2,104(sp)
   13d64:	06053e03          	ld	t3,96(a0)
   13d68:	02031613          	sll	a2,t1,0x20
   13d6c:	167d                	add	a2,a2,-1
   13d6e:	26813023          	sd	s0,608(sp)
   13d72:	25313423          	sd	s3,584(sp)
   13d76:	26113423          	sd	ra,616(sp)
   13d7a:	24913c23          	sd	s1,600(sp)
   13d7e:	25213823          	sd	s2,592(sp)
   13d82:	25413023          	sd	s4,576(sp)
   13d86:	23513c23          	sd	s5,568(sp)
   13d8a:	23613823          	sd	s6,560(sp)
   13d8e:	23713423          	sd	s7,552(sp)
   13d92:	23813023          	sd	s8,544(sp)
   13d96:	21913c23          	sd	s9,536(sp)
   13d9a:	21a13823          	sd	s10,528(sp)
   13d9e:	21b13423          	sd	s11,520(sp)
   13da2:	f0ae                	sd	a1,96(sp)
   13da4:	fb32                	sd	a2,432(sp)
   13da6:	e436                	sd	a3,8(sp)
   13da8:	ec3a                	sd	a4,24(sp)
   13daa:	f03e                	sd	a5,32(sp)
   13dac:	f446                	sd	a7,40(sp)
   13dae:	89aa                	mv	s3,a0
   13db0:	8442                	mv	s0,a6
   13db2:	020e0163          	beqz	t3,13dd4 <_ldtoa_r+0x7a>
   13db6:	553c                	lw	a5,104(a0)
   13db8:	4705                	li	a4,1
   13dba:	85f2                	mv	a1,t3
   13dbc:	00f7173b          	sllw	a4,a4,a5
   13dc0:	1782                	sll	a5,a5,0x20
   13dc2:	1702                	sll	a4,a4,0x20
   13dc4:	9381                	srl	a5,a5,0x20
   13dc6:	8fd9                	or	a5,a5,a4
   13dc8:	00fe3423          	sd	a5,8(t3)
   13dcc:	6d8010ef          	jal	154a4 <_Bfree>
   13dd0:	0609b023          	sd	zero,96(s3)
   13dd4:	090c                	add	a1,sp,144
   13dd6:	1088                	add	a0,sp,96
   13dd8:	ea6ff0ef          	jal	1347e <e113toe.isra.0>
   13ddc:	0a215683          	lhu	a3,162(sp)
   13de0:	67a1                	lui	a5,0x8
   13de2:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13de4:	00f6f733          	and	a4,a3,a5
   13de8:	f83a                	sd	a4,48(sp)
   13dea:	34f70f63          	beq	a4,a5,14148 <_ldtoa_r+0x3ee>
   13dee:	0106979b          	sllw	a5,a3,0x10
   13df2:	4107d79b          	sraw	a5,a5,0x10
   13df6:	6722                	ld	a4,8(sp)
   13df8:	01f7d79b          	srlw	a5,a5,0x1f
   13dfc:	c01c                	sw	a5,0(s0)
   13dfe:	478d                	li	a5,3
   13e00:	72f70963          	beq	a4,a5,14532 <_ldtoa_r+0x7d8>
   13e04:	47d1                	li	a5,20
   13e06:	e83e                	sd	a5,16(sp)
   13e08:	67a2                	ld	a5,8(sp)
   13e0a:	74079063          	bnez	a5,1454a <_ldtoa_r+0x7f0>
   13e0e:	191c                	add	a5,sp,176
   13e10:	0918                	add	a4,sp,144
   13e12:	01c0                	add	s0,sp,196
   13e14:	00075683          	lhu	a3,0(a4)
   13e18:	0789                	add	a5,a5,2
   13e1a:	0709                	add	a4,a4,2
   13e1c:	fed79f23          	sh	a3,-2(a5)
   13e20:	fe879ae3          	bne	a5,s0,13e14 <_ldtoa_r+0xba>
   13e24:	0c215a83          	lhu	s5,194(sp)
   13e28:	4481                	li	s1,0
   13e2a:	00fad793          	srl	a5,s5,0xf
   13e2e:	cb91                	beqz	a5,13e42 <_ldtoa_r+0xe8>
   13e30:	031a9f13          	sll	t5,s5,0x31
   13e34:	031f5a93          	srl	s5,t5,0x31
   13e38:	67c1                	lui	a5,0x10
   13e3a:	0d511123          	sh	s5,194(sp)
   13e3e:	fff78493          	add	s1,a5,-1 # ffff <exit-0xe9>
   13e42:	0998                	add	a4,sp,208
   13e44:	00009797          	auipc	a5,0x9
   13e48:	1c478793          	add	a5,a5,452 # 1d008 <eone>
   13e4c:	00009917          	auipc	s2,0x9
   13e50:	1d090913          	add	s2,s2,464 # 1d01c <eone+0x14>
   13e54:	0007d683          	lhu	a3,0(a5)
   13e58:	0789                	add	a5,a5,2
   13e5a:	0709                	add	a4,a4,2
   13e5c:	fed71f23          	sh	a3,-2(a4)
   13e60:	ff279ae3          	bne	a5,s2,13e54 <_ldtoa_r+0xfa>
   13e64:	520a9b63          	bnez	s5,1439a <_ldtoa_r+0x640>
   13e68:	191c                	add	a5,sp,176
   13e6a:	0c210693          	add	a3,sp,194
   13e6e:	0007d703          	lhu	a4,0(a5)
   13e72:	52071c63          	bnez	a4,143aa <_ldtoa_r+0x650>
   13e76:	0789                	add	a5,a5,2
   13e78:	fef69be3          	bne	a3,a5,13e6e <_ldtoa_r+0x114>
   13e7c:	4401                	li	s0,0
   13e7e:	17010b13          	add	s6,sp,368
   13e82:	1b010b93          	add	s7,sp,432
   13e86:	11010a13          	add	s4,sp,272
   13e8a:	12810a93          	add	s5,sp,296
   13e8e:	85d2                	mv	a1,s4
   13e90:	0988                	add	a0,sp,208
   13e92:	fe9fe0ef          	jal	12e7a <emovi>
   13e96:	8952                	mv	s2,s4
   13e98:	0994                	add	a3,sp,208
   13e9a:	87d2                	mv	a5,s4
   13e9c:	6398                	ld	a4,0(a5)
   13e9e:	07a1                	add	a5,a5,8
   13ea0:	06a1                	add	a3,a3,8
   13ea2:	fee6bc23          	sd	a4,-8(a3)
   13ea6:	fefa9be3          	bne	s5,a5,13e9c <_ldtoa_r+0x142>
   13eaa:	85d2                	mv	a1,s4
   13eac:	1908                	add	a0,sp,176
   13eae:	0e011423          	sh	zero,232(sp)
   13eb2:	fc9fe0ef          	jal	12e7a <emovi>
   13eb6:	0c810c93          	add	s9,sp,200
   13eba:	191c                	add	a5,sp,176
   13ebc:	00093703          	ld	a4,0(s2)
   13ec0:	07a1                	add	a5,a5,8
   13ec2:	0921                	add	s2,s2,8
   13ec4:	fee7bc23          	sd	a4,-8(a5)
   13ec8:	fefc9ae3          	bne	s9,a5,13ebc <_ldtoa_r+0x162>
   13ecc:	865e                	mv	a2,s7
   13ece:	190c                	add	a1,sp,176
   13ed0:	0988                	add	a0,sp,208
   13ed2:	0c011423          	sh	zero,200(sp)
   13ed6:	cb6ff0ef          	jal	1338c <eiremain>
   13eda:	1fc15d83          	lhu	s11,508(sp)
   13ede:	100d9763          	bnez	s11,13fec <_ldtoa_r+0x292>
   13ee2:	00009917          	auipc	s2,0x9
   13ee6:	13e90913          	add	s2,s2,318 # 1d020 <ezero>
   13eea:	0b210d13          	add	s10,sp,178
   13eee:	0f210c13          	add	s8,sp,242
   13ef2:	85ca                	mv	a1,s2
   13ef4:	1908                	add	a0,sp,176
   13ef6:	818ff0ef          	jal	12f0e <ecmp>
   13efa:	c96d                	beqz	a0,13fec <_ldtoa_r+0x292>
   13efc:	4701                	li	a4,0
   13efe:	86e6                	mv	a3,s9
   13f00:	0006d783          	lhu	a5,0(a3)
   13f04:	00f7d613          	srl	a2,a5,0xf
   13f08:	c219                	beqz	a2,13f0e <_ldtoa_r+0x1b4>
   13f0a:	00176713          	or	a4,a4,1
   13f0e:	0017979b          	sllw	a5,a5,0x1
   13f12:	17c2                	sll	a5,a5,0x30
   13f14:	00277613          	and	a2,a4,2
   13f18:	93c1                	srl	a5,a5,0x30
   13f1a:	c219                	beqz	a2,13f20 <_ldtoa_r+0x1c6>
   13f1c:	0017e793          	or	a5,a5,1
   13f20:	0017171b          	sllw	a4,a4,0x1
   13f24:	00f69023          	sh	a5,0(a3)
   13f28:	1742                	sll	a4,a4,0x30
   13f2a:	16f9                	add	a3,a3,-2
   13f2c:	9341                	srl	a4,a4,0x30
   13f2e:	fda699e3          	bne	a3,s10,13f00 <_ldtoa_r+0x1a6>
   13f32:	1998                	add	a4,sp,240
   13f34:	191c                	add	a5,sp,176
   13f36:	6394                	ld	a3,0(a5)
   13f38:	07a1                	add	a5,a5,8
   13f3a:	0721                	add	a4,a4,8
   13f3c:	fed73c23          	sd	a3,-8(a4)
   13f40:	fefc9be3          	bne	s9,a5,13f36 <_ldtoa_r+0x1dc>
   13f44:	10011423          	sh	zero,264(sp)
   13f48:	4701                	li	a4,0
   13f4a:	0234                	add	a3,sp,264
   13f4c:	0006d783          	lhu	a5,0(a3)
   13f50:	00f7d613          	srl	a2,a5,0xf
   13f54:	c219                	beqz	a2,13f5a <_ldtoa_r+0x200>
   13f56:	00176713          	or	a4,a4,1
   13f5a:	0017979b          	sllw	a5,a5,0x1
   13f5e:	17c2                	sll	a5,a5,0x30
   13f60:	00277613          	and	a2,a4,2
   13f64:	93c1                	srl	a5,a5,0x30
   13f66:	c219                	beqz	a2,13f6c <_ldtoa_r+0x212>
   13f68:	0017e793          	or	a5,a5,1
   13f6c:	0017171b          	sllw	a4,a4,0x1
   13f70:	00f69023          	sh	a5,0(a3)
   13f74:	1742                	sll	a4,a4,0x30
   13f76:	16f9                	add	a3,a3,-2
   13f78:	9341                	srl	a4,a4,0x30
   13f7a:	fd8699e3          	bne	a3,s8,13f4c <_ldtoa_r+0x1f2>
   13f7e:	4701                	li	a4,0
   13f80:	0234                	add	a3,sp,264
   13f82:	0006d783          	lhu	a5,0(a3)
   13f86:	00f7d613          	srl	a2,a5,0xf
   13f8a:	c219                	beqz	a2,13f90 <_ldtoa_r+0x236>
   13f8c:	00176713          	or	a4,a4,1
   13f90:	0017979b          	sllw	a5,a5,0x1
   13f94:	17c2                	sll	a5,a5,0x30
   13f96:	00277613          	and	a2,a4,2
   13f9a:	93c1                	srl	a5,a5,0x30
   13f9c:	c219                	beqz	a2,13fa2 <_ldtoa_r+0x248>
   13f9e:	0017e793          	or	a5,a5,1
   13fa2:	0017171b          	sllw	a4,a4,0x1
   13fa6:	00f69023          	sh	a5,0(a3)
   13faa:	1742                	sll	a4,a4,0x30
   13fac:	16f9                	add	a3,a3,-2
   13fae:	9341                	srl	a4,a4,0x30
   13fb0:	fd8699e3          	bne	a3,s8,13f82 <_ldtoa_r+0x228>
   13fb4:	4601                	li	a2,0
   13fb6:	86e6                	mv	a3,s9
   13fb8:	0238                	add	a4,sp,264
   13fba:	0006d583          	lhu	a1,0(a3)
   13fbe:	00075783          	lhu	a5,0(a4)
   13fc2:	16f9                	add	a3,a3,-2
   13fc4:	1779                	add	a4,a4,-2
   13fc6:	97ae                	add	a5,a5,a1
   13fc8:	97b2                	add	a5,a5,a2
   13fca:	0107d613          	srl	a2,a5,0x10
   13fce:	00f69123          	sh	a5,2(a3)
   13fd2:	8a05                	and	a2,a2,1
   13fd4:	ff8713e3          	bne	a4,s8,13fba <_ldtoa_r+0x260>
   13fd8:	865e                	mv	a2,s7
   13fda:	190c                	add	a1,sp,176
   13fdc:	0988                	add	a0,sp,208
   13fde:	baeff0ef          	jal	1338c <eiremain>
   13fe2:	1fc15783          	lhu	a5,508(sp)
   13fe6:	347d                	addw	s0,s0,-1
   13fe8:	d789                	beqz	a5,13ef2 <_ldtoa_r+0x198>
   13fea:	8dbe                	mv	s11,a5
   13fec:	02000793          	li	a5,32
   13ff0:	c099                	beqz	s1,13ff6 <_ldtoa_r+0x29c>
   13ff2:	02d00793          	li	a5,45
   13ff6:	6722                	ld	a4,8(sp)
   13ff8:	16f10823          	sb	a5,368(sp)
   13ffc:	468d                	li	a3,3
   13ffe:	67c2                	ld	a5,16(sp)
   14000:	00d71363          	bne	a4,a3,14006 <_ldtoa_r+0x2ac>
   14004:	9fa1                	addw	a5,a5,s0
   14006:	02a00693          	li	a3,42
   1400a:	863e                	mv	a2,a5
   1400c:	00f6d463          	bge	a3,a5,14014 <_ldtoa_r+0x2ba>
   14010:	02a00613          	li	a2,42
   14014:	46a9                	li	a3,10
   14016:	00060a9b          	sext.w	s5,a2
   1401a:	4edd8a63          	beq	s11,a3,1450e <_ldtoa_r+0x7b4>
   1401e:	030d8d9b          	addw	s11,s11,48
   14022:	02e00693          	li	a3,46
   14026:	17b108a3          	sb	s11,369(sp)
   1402a:	16d10923          	sb	a3,370(sp)
   1402e:	1a07c963          	bltz	a5,141e0 <_ldtoa_r+0x486>
   14032:	17310493          	add	s1,sp,371
   14036:	4a01                	li	s4,0
   14038:	0f010c13          	add	s8,sp,240
   1403c:	10810d93          	add	s11,sp,264
   14040:	0b210d13          	add	s10,sp,178
   14044:	0f210913          	add	s2,sp,242
   14048:	4701                	li	a4,0
   1404a:	86e6                	mv	a3,s9
   1404c:	0006d783          	lhu	a5,0(a3)
   14050:	00f7d613          	srl	a2,a5,0xf
   14054:	c219                	beqz	a2,1405a <_ldtoa_r+0x300>
   14056:	00176713          	or	a4,a4,1
   1405a:	0017979b          	sllw	a5,a5,0x1
   1405e:	17c2                	sll	a5,a5,0x30
   14060:	00277613          	and	a2,a4,2
   14064:	93c1                	srl	a5,a5,0x30
   14066:	c219                	beqz	a2,1406c <_ldtoa_r+0x312>
   14068:	0017e793          	or	a5,a5,1
   1406c:	0017171b          	sllw	a4,a4,0x1
   14070:	00f69023          	sh	a5,0(a3)
   14074:	1742                	sll	a4,a4,0x30
   14076:	16f9                	add	a3,a3,-2
   14078:	9341                	srl	a4,a4,0x30
   1407a:	fda699e3          	bne	a3,s10,1404c <_ldtoa_r+0x2f2>
   1407e:	87e2                	mv	a5,s8
   14080:	1918                	add	a4,sp,176
   14082:	6314                	ld	a3,0(a4)
   14084:	07a1                	add	a5,a5,8
   14086:	0721                	add	a4,a4,8
   14088:	fed7bc23          	sd	a3,-8(a5)
   1408c:	fefd9be3          	bne	s11,a5,14082 <_ldtoa_r+0x328>
   14090:	10011423          	sh	zero,264(sp)
   14094:	4701                	li	a4,0
   14096:	86ee                	mv	a3,s11
   14098:	0006d783          	lhu	a5,0(a3)
   1409c:	00f7d613          	srl	a2,a5,0xf
   140a0:	c219                	beqz	a2,140a6 <_ldtoa_r+0x34c>
   140a2:	00176713          	or	a4,a4,1
   140a6:	0017979b          	sllw	a5,a5,0x1
   140aa:	17c2                	sll	a5,a5,0x30
   140ac:	00277613          	and	a2,a4,2
   140b0:	93c1                	srl	a5,a5,0x30
   140b2:	c219                	beqz	a2,140b8 <_ldtoa_r+0x35e>
   140b4:	0017e793          	or	a5,a5,1
   140b8:	0017171b          	sllw	a4,a4,0x1
   140bc:	00f69023          	sh	a5,0(a3)
   140c0:	1742                	sll	a4,a4,0x30
   140c2:	16f9                	add	a3,a3,-2
   140c4:	9341                	srl	a4,a4,0x30
   140c6:	fd2699e3          	bne	a3,s2,14098 <_ldtoa_r+0x33e>
   140ca:	4701                	li	a4,0
   140cc:	86ee                	mv	a3,s11
   140ce:	0006d783          	lhu	a5,0(a3)
   140d2:	00f7d613          	srl	a2,a5,0xf
   140d6:	c219                	beqz	a2,140dc <_ldtoa_r+0x382>
   140d8:	00176713          	or	a4,a4,1
   140dc:	0017979b          	sllw	a5,a5,0x1
   140e0:	17c2                	sll	a5,a5,0x30
   140e2:	00277613          	and	a2,a4,2
   140e6:	93c1                	srl	a5,a5,0x30
   140e8:	c219                	beqz	a2,140ee <_ldtoa_r+0x394>
   140ea:	0017e793          	or	a5,a5,1
   140ee:	0017171b          	sllw	a4,a4,0x1
   140f2:	00f69023          	sh	a5,0(a3)
   140f6:	1742                	sll	a4,a4,0x30
   140f8:	16f9                	add	a3,a3,-2
   140fa:	9341                	srl	a4,a4,0x30
   140fc:	fd2699e3          	bne	a3,s2,140ce <_ldtoa_r+0x374>
   14100:	4601                	li	a2,0
   14102:	86e6                	mv	a3,s9
   14104:	876e                	mv	a4,s11
   14106:	0006d583          	lhu	a1,0(a3)
   1410a:	00075783          	lhu	a5,0(a4)
   1410e:	16f9                	add	a3,a3,-2
   14110:	1779                	add	a4,a4,-2
   14112:	97ae                	add	a5,a5,a1
   14114:	97b2                	add	a5,a5,a2
   14116:	0107d613          	srl	a2,a5,0x10
   1411a:	00f69123          	sh	a5,2(a3)
   1411e:	8a05                	and	a2,a2,1
   14120:	ff2713e3          	bne	a4,s2,14106 <_ldtoa_r+0x3ac>
   14124:	190c                	add	a1,sp,176
   14126:	865e                	mv	a2,s7
   14128:	0988                	add	a0,sp,208
   1412a:	a62ff0ef          	jal	1338c <eiremain>
   1412e:	1fc15583          	lhu	a1,508(sp)
   14132:	00148793          	add	a5,s1,1
   14136:	2a05                	addw	s4,s4,1
   14138:	0305871b          	addw	a4,a1,48
   1413c:	fee78fa3          	sb	a4,-1(a5)
   14140:	0b4ac663          	blt	s5,s4,141ec <_ldtoa_r+0x492>
   14144:	84be                	mv	s1,a5
   14146:	b709                	j	14048 <_ldtoa_r+0x2ee>
   14148:	091c                	add	a5,sp,144
   1414a:	0a210613          	add	a2,sp,162
   1414e:	0007d703          	lhu	a4,0(a5)
   14152:	0789                	add	a5,a5,2
   14154:	60071a63          	bnez	a4,14768 <_ldtoa_r+0xa0e>
   14158:	fec79be3          	bne	a5,a2,1414e <_ldtoa_r+0x3f4>
   1415c:	82bd                	srl	a3,a3,0xf
   1415e:	6722                	ld	a4,8(sp)
   14160:	c014                	sw	a3,0(s0)
   14162:	478d                	li	a5,3
   14164:	5ef70663          	beq	a4,a5,14750 <_ldtoa_r+0x9f6>
   14168:	47d1                	li	a5,20
   1416a:	e83e                	sd	a5,16(sp)
   1416c:	cb19                	beqz	a4,14182 <_ldtoa_r+0x428>
   1416e:	67e2                	ld	a5,24(sp)
   14170:	fff78a9b          	addw	s5,a5,-1
   14174:	02a00793          	li	a5,42
   14178:	0157d463          	bge	a5,s5,14180 <_ldtoa_r+0x426>
   1417c:	02a00a93          	li	s5,42
   14180:	e856                	sd	s5,16(sp)
   14182:	09015703          	lhu	a4,144(sp)
   14186:	091c                	add	a5,sp,144
   14188:	0a210693          	add	a3,sp,162
   1418c:	0789                	add	a5,a5,2
   1418e:	e719                	bnez	a4,1419c <_ldtoa_r+0x442>
   14190:	c6d78fe3          	beq	a5,a3,13e0e <_ldtoa_r+0xb4>
   14194:	0007d703          	lhu	a4,0(a5)
   14198:	0789                	add	a5,a5,2
   1419a:	db7d                	beqz	a4,14190 <_ldtoa_r+0x436>
   1419c:	17010b13          	add	s6,sp,368
   141a0:	00009597          	auipc	a1,0x9
   141a4:	c2858593          	add	a1,a1,-984 # 1cdc8 <blanks.1+0xe8>
   141a8:	855a                	mv	a0,s6
   141aa:	05c020ef          	jal	16206 <sprintf>
   141ae:	6409                	lui	s0,0x2
   141b0:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   141b4:	09000793          	li	a5,144
   141b8:	1af12a23          	sw	a5,436(sp)
   141bc:	1c812023          	sw	s0,448(sp)
   141c0:	091c                	add	a5,sp,144
   141c2:	0a210613          	add	a2,sp,162
   141c6:	0007d703          	lhu	a4,0(a5)
   141ca:	0789                	add	a5,a5,2
   141cc:	72071563          	bnez	a4,148f6 <_ldtoa_r+0xb9c>
   141d0:	fec79be3          	bne	a5,a2,141c6 <_ldtoa_r+0x46c>
   141d4:	7702                	ld	a4,32(sp)
   141d6:	6789                	lui	a5,0x2
   141d8:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   141dc:	c31c                	sw	a5,0(a4)
   141de:	a875                	j	1429a <_ldtoa_r+0x540>
   141e0:	1fc15583          	lhu	a1,508(sp)
   141e4:	17210493          	add	s1,sp,370
   141e8:	17310793          	add	a5,sp,371
   141ec:	4691                	li	a3,4
   141ee:	04b6d463          	bge	a3,a1,14236 <_ldtoa_r+0x4dc>
   141f2:	4695                	li	a3,5
   141f4:	72d58b63          	beq	a1,a3,1492a <_ldtoa_r+0xbd0>
   141f8:	ffe7c683          	lbu	a3,-2(a5)
   141fc:	ffe78593          	add	a1,a5,-2
   14200:	07f6f693          	and	a3,a3,127
   14204:	020ac463          	bltz	s5,1422c <_ldtoa_r+0x4d2>
   14208:	02e00793          	li	a5,46
   1420c:	03800613          	li	a2,56
   14210:	03000513          	li	a0,48
   14214:	6cf68563          	beq	a3,a5,148de <_ldtoa_r+0xb84>
   14218:	6ad67f63          	bgeu	a2,a3,148d6 <_ldtoa_r+0xb7c>
   1421c:	fff5c683          	lbu	a3,-1(a1)
   14220:	00a58023          	sb	a0,0(a1)
   14224:	15fd                	add	a1,a1,-1
   14226:	07f6f693          	and	a3,a3,127
   1422a:	b7ed                	j	14214 <_ldtoa_r+0x4ba>
   1422c:	03100693          	li	a3,49
   14230:	fed78f23          	sb	a3,-2(a5)
   14234:	2405                	addw	s0,s0,1
   14236:	8622                	mv	a2,s0
   14238:	00009597          	auipc	a1,0x9
   1423c:	b1058593          	add	a1,a1,-1264 # 1cd48 <blanks.1+0x68>
   14240:	8526                	mv	a0,s1
   14242:	7c5010ef          	jal	16206 <sprintf>
   14246:	09000793          	li	a5,144
   1424a:	7742                	ld	a4,48(sp)
   1424c:	1af12a23          	sw	a5,436(sp)
   14250:	67a1                	lui	a5,0x8
   14252:	1c812023          	sw	s0,448(sp)
   14256:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14258:	f6f704e3          	beq	a4,a5,141c0 <_ldtoa_r+0x466>
   1425c:	7702                	ld	a4,32(sp)
   1425e:	17014683          	lbu	a3,368(sp)
   14262:	0014079b          	addw	a5,s0,1
   14266:	c31c                	sw	a5,0(a4)
   14268:	4e068263          	beqz	a3,1474c <_ldtoa_r+0x9f2>
   1426c:	87da                	mv	a5,s6
   1426e:	02e00613          	li	a2,46
   14272:	26c68c63          	beq	a3,a2,144ea <_ldtoa_r+0x790>
   14276:	0017c683          	lbu	a3,1(a5)
   1427a:	0785                	add	a5,a5,1
   1427c:	fafd                	bnez	a3,14272 <_ldtoa_r+0x518>
   1427e:	04500613          	li	a2,69
   14282:	00fb6563          	bltu	s6,a5,1428c <_ldtoa_r+0x532>
   14286:	a801                	j	14296 <_ldtoa_r+0x53c>
   14288:	4d678263          	beq	a5,s6,1474c <_ldtoa_r+0x9f2>
   1428c:	fff7c703          	lbu	a4,-1(a5)
   14290:	17fd                	add	a5,a5,-1
   14292:	fec71be3          	bne	a4,a2,14288 <_ldtoa_r+0x52e>
   14296:	00078023          	sb	zero,0(a5)
   1429a:	87da                	mv	a5,s6
   1429c:	02000613          	li	a2,32
   142a0:	02d00593          	li	a1,45
   142a4:	0007c703          	lbu	a4,0(a5)
   142a8:	00c70463          	beq	a4,a2,142b0 <_ldtoa_r+0x556>
   142ac:	00b71463          	bne	a4,a1,142b4 <_ldtoa_r+0x55a>
   142b0:	0785                	add	a5,a5,1
   142b2:	bfcd                	j	142a4 <_ldtoa_r+0x54a>
   142b4:	865a                	mv	a2,s6
   142b6:	0007c703          	lbu	a4,0(a5)
   142ba:	8932                	mv	s2,a2
   142bc:	0785                	add	a5,a5,1
   142be:	00e60023          	sb	a4,0(a2)
   142c2:	0605                	add	a2,a2,1
   142c4:	fb6d                	bnez	a4,142b6 <_ldtoa_r+0x55c>
   142c6:	6722                	ld	a4,8(sp)
   142c8:	4789                	li	a5,2
   142ca:	fff94603          	lbu	a2,-1(s2)
   142ce:	20f70463          	beq	a4,a5,144d6 <_ldtoa_r+0x77c>
   142d2:	6742                	ld	a4,16(sp)
   142d4:	87ba                	mv	a5,a4
   142d6:	00875363          	bge	a4,s0,142dc <_ldtoa_r+0x582>
   142da:	87a2                	mv	a5,s0
   142dc:	03000593          	li	a1,48
   142e0:	0007869b          	sext.w	a3,a5
   142e4:	02b61463          	bne	a2,a1,1430c <_ldtoa_r+0x5b2>
   142e8:	416907b3          	sub	a5,s2,s6
   142ec:	02f6d063          	bge	a3,a5,1430c <_ldtoa_r+0x5b2>
   142f0:	03000613          	li	a2,48
   142f4:	a029                	j	142fe <_ldtoa_r+0x5a4>
   142f6:	416907b3          	sub	a5,s2,s6
   142fa:	00f6d963          	bge	a3,a5,1430c <_ldtoa_r+0x5b2>
   142fe:	ffe94783          	lbu	a5,-2(s2)
   14302:	fe090fa3          	sb	zero,-1(s2)
   14306:	197d                	add	s2,s2,-1
   14308:	fec787e3          	beq	a5,a2,142f6 <_ldtoa_r+0x59c>
   1430c:	6722                	ld	a4,8(sp)
   1430e:	478d                	li	a5,3
   14310:	18f70e63          	beq	a4,a5,144ac <_ldtoa_r+0x752>
   14314:	67e2                	ld	a5,24(sp)
   14316:	467d                	li	a2,31
   14318:	4685                	li	a3,1
   1431a:	0097849b          	addw	s1,a5,9
   1431e:	4791                	li	a5,4
   14320:	1a967763          	bgeu	a2,s1,144ce <_ldtoa_r+0x774>
   14324:	0017979b          	sllw	a5,a5,0x1
   14328:	01c78713          	add	a4,a5,28
   1432c:	0006859b          	sext.w	a1,a3
   14330:	2685                	addw	a3,a3,1
   14332:	fee4f9e3          	bgeu	s1,a4,14324 <_ldtoa_r+0x5ca>
   14336:	2581                	sext.w	a1,a1
   14338:	06b9a423          	sw	a1,104(s3)
   1433c:	854e                	mv	a0,s3
   1433e:	102010ef          	jal	15440 <_Balloc>
   14342:	842a                	mv	s0,a0
   14344:	76050b63          	beqz	a0,14aba <_ldtoa_r+0xd60>
   14348:	06a9b023          	sd	a0,96(s3)
   1434c:	85da                	mv	a1,s6
   1434e:	7ed010ef          	jal	1633a <strcpy>
   14352:	7722                	ld	a4,40(sp)
   14354:	c709                	beqz	a4,1435e <_ldtoa_r+0x604>
   14356:	416907b3          	sub	a5,s2,s6
   1435a:	97a2                	add	a5,a5,s0
   1435c:	e31c                	sd	a5,0(a4)
   1435e:	26813083          	ld	ra,616(sp)
   14362:	8522                	mv	a0,s0
   14364:	26013403          	ld	s0,608(sp)
   14368:	25813483          	ld	s1,600(sp)
   1436c:	25013903          	ld	s2,592(sp)
   14370:	24813983          	ld	s3,584(sp)
   14374:	24013a03          	ld	s4,576(sp)
   14378:	23813a83          	ld	s5,568(sp)
   1437c:	23013b03          	ld	s6,560(sp)
   14380:	22813b83          	ld	s7,552(sp)
   14384:	22013c03          	ld	s8,544(sp)
   14388:	21813c83          	ld	s9,536(sp)
   1438c:	21013d03          	ld	s10,528(sp)
   14390:	20813d83          	ld	s11,520(sp)
   14394:	27010113          	add	sp,sp,624
   14398:	8082                	ret
   1439a:	67a1                	lui	a5,0x8
   1439c:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   1439e:	50fa8a63          	beq	s5,a5,148b2 <_ldtoa_r+0xb58>
   143a2:	0c011783          	lh	a5,192(sp)
   143a6:	5607d863          	bgez	a5,14916 <_ldtoa_r+0xbbc>
   143aa:	190c                	add	a1,sp,176
   143ac:	00009517          	auipc	a0,0x9
   143b0:	c5c50513          	add	a0,a0,-932 # 1d008 <eone>
   143b4:	b5bfe0ef          	jal	12f0e <ecmp>
   143b8:	ac0502e3          	beqz	a0,13e7c <_ldtoa_r+0x122>
   143bc:	1a054263          	bltz	a0,14560 <_ldtoa_r+0x806>
   143c0:	5c0a9563          	bnez	s5,1498a <_ldtoa_r+0xc30>
   143c4:	0c011783          	lh	a5,192(sp)
   143c8:	4401                	li	s0,0
   143ca:	1b010b93          	add	s7,sp,432
   143ce:	0207c163          	bltz	a5,143f0 <_ldtoa_r+0x696>
   143d2:	00009c17          	auipc	s8,0x9
   143d6:	c1ec0c13          	add	s8,s8,-994 # 1cff0 <etens+0xf0>
   143da:	1910                	add	a2,sp,176
   143dc:	86de                	mv	a3,s7
   143de:	85b2                	mv	a1,a2
   143e0:	8562                	mv	a0,s8
   143e2:	dc6ff0ef          	jal	139a8 <emul>
   143e6:	0c011783          	lh	a5,192(sp)
   143ea:	347d                	addw	s0,s0,-1
   143ec:	fe07d7e3          	bgez	a5,143da <_ldtoa_r+0x680>
   143f0:	11010a13          	add	s4,sp,272
   143f4:	12810a93          	add	s5,sp,296
   143f8:	87d2                	mv	a5,s4
   143fa:	1918                	add	a4,sp,176
   143fc:	1250                	add	a2,sp,292
   143fe:	00075683          	lhu	a3,0(a4)
   14402:	0789                	add	a5,a5,2
   14404:	0709                	add	a4,a4,2
   14406:	fed79f23          	sh	a3,-2(a5)
   1440a:	fec79ae3          	bne	a5,a2,143fe <_ldtoa_r+0x6a4>
   1440e:	0998                	add	a4,sp,208
   14410:	00009797          	auipc	a5,0x9
   14414:	bf878793          	add	a5,a5,-1032 # 1d008 <eone>
   14418:	0007d683          	lhu	a3,0(a5)
   1441c:	0789                	add	a5,a5,2
   1441e:	0709                	add	a4,a4,2
   14420:	fed71f23          	sh	a3,-2(a4)
   14424:	ff279ae3          	bne	a5,s2,14418 <_ldtoa_r+0x6be>
   14428:	797d                	lui	s2,0xfffff
   1442a:	00009c97          	auipc	s9,0x9
   1442e:	ad6c8c93          	add	s9,s9,-1322 # 1cf00 <etens>
   14432:	00009c17          	auipc	s8,0x9
   14436:	9c6c0c13          	add	s8,s8,-1594 # 1cdf8 <emtens>
   1443a:	00009d97          	auipc	s11,0x9
   1443e:	bced8d93          	add	s11,s11,-1074 # 1d008 <eone>
   14442:	00009d17          	auipc	s10,0x9
   14446:	aa6d0d13          	add	s10,s10,-1370 # 1cee8 <emtens+0xf0>
   1444a:	a019                	j	14450 <_ldtoa_r+0x6f6>
   1444c:	0c51                	add	s8,s8,20
   1444e:	0cd1                	add	s9,s9,20
   14450:	85d2                	mv	a1,s4
   14452:	856e                	mv	a0,s11
   14454:	abbfe0ef          	jal	12f0e <ecmp>
   14458:	02a05e63          	blez	a0,14494 <_ldtoa_r+0x73a>
   1445c:	85d2                	mv	a1,s4
   1445e:	8562                	mv	a0,s8
   14460:	aaffe0ef          	jal	12f0e <ecmp>
   14464:	02054063          	bltz	a0,14484 <_ldtoa_r+0x72a>
   14468:	86de                	mv	a3,s7
   1446a:	8652                	mv	a2,s4
   1446c:	85d2                	mv	a1,s4
   1446e:	8566                	mv	a0,s9
   14470:	d38ff0ef          	jal	139a8 <emul>
   14474:	0990                	add	a2,sp,208
   14476:	86de                	mv	a3,s7
   14478:	85b2                	mv	a1,a2
   1447a:	8566                	mv	a0,s9
   1447c:	d2cff0ef          	jal	139a8 <emul>
   14480:	0089043b          	addw	s0,s2,s0
   14484:	01f9579b          	srlw	a5,s2,0x1f
   14488:	012787bb          	addw	a5,a5,s2
   1448c:	4017d91b          	sraw	s2,a5,0x1
   14490:	fbac1ee3          	bne	s8,s10,1444c <_ldtoa_r+0x6f2>
   14494:	0990                	add	a2,sp,208
   14496:	86de                	mv	a3,s7
   14498:	00009597          	auipc	a1,0x9
   1449c:	b7058593          	add	a1,a1,-1168 # 1d008 <eone>
   144a0:	8532                	mv	a0,a2
   144a2:	8d8ff0ef          	jal	1357a <ediv>
   144a6:	17010b13          	add	s6,sp,368
   144aa:	b2d5                	j	13e8e <_ldtoa_r+0x134>
   144ac:	67c2                	ld	a5,16(sp)
   144ae:	9c3d                	addw	s0,s0,a5
   144b0:	3e044263          	bltz	s0,14894 <_ldtoa_r+0xb3a>
   144b4:	7782                	ld	a5,32(sp)
   144b6:	6762                	ld	a4,24(sp)
   144b8:	439c                	lw	a5,0(a5)
   144ba:	9fb9                	addw	a5,a5,a4
   144bc:	ec3e                	sd	a5,24(sp)
   144be:	67e2                	ld	a5,24(sp)
   144c0:	467d                	li	a2,31
   144c2:	4685                	li	a3,1
   144c4:	0037849b          	addw	s1,a5,3
   144c8:	4791                	li	a5,4
   144ca:	e4966de3          	bltu	a2,s1,14324 <_ldtoa_r+0x5ca>
   144ce:	0609a423          	sw	zero,104(s3)
   144d2:	4581                	li	a1,0
   144d4:	b5a5                	j	1433c <_ldtoa_r+0x5e2>
   144d6:	03000793          	li	a5,48
   144da:	e2f61de3          	bne	a2,a5,14314 <_ldtoa_r+0x5ba>
   144de:	416907b3          	sub	a5,s2,s6
   144e2:	4685                	li	a3,1
   144e4:	e0f6c6e3          	blt	a3,a5,142f0 <_ldtoa_r+0x596>
   144e8:	b535                	j	14314 <_ldtoa_r+0x5ba>
   144ea:	0007c683          	lbu	a3,0(a5)
   144ee:	d80688e3          	beqz	a3,1427e <_ldtoa_r+0x524>
   144f2:	0017c703          	lbu	a4,1(a5)
   144f6:	0785                	add	a5,a5,1
   144f8:	fee78fa3          	sb	a4,-1(a5)
   144fc:	d80701e3          	beqz	a4,1427e <_ldtoa_r+0x524>
   14500:	0017c703          	lbu	a4,1(a5)
   14504:	0785                	add	a5,a5,1
   14506:	fee78fa3          	sb	a4,-1(a5)
   1450a:	f765                	bnez	a4,144f2 <_ldtoa_r+0x798>
   1450c:	bb8d                	j	1427e <_ldtoa_r+0x524>
   1450e:	03100693          	li	a3,49
   14512:	16d108a3          	sb	a3,369(sp)
   14516:	02e00693          	li	a3,46
   1451a:	16d10923          	sb	a3,370(sp)
   1451e:	2405                	addw	s0,s0,1
   14520:	22f05063          	blez	a5,14740 <_ldtoa_r+0x9e6>
   14524:	03000793          	li	a5,48
   14528:	16f109a3          	sb	a5,371(sp)
   1452c:	3afd                	addw	s5,s5,-1
   1452e:	1ac4                	add	s1,sp,372
   14530:	b619                	j	14036 <_ldtoa_r+0x2dc>
   14532:	6762                	ld	a4,24(sp)
   14534:	02a00793          	li	a5,42
   14538:	8aba                	mv	s5,a4
   1453a:	00e7d463          	bge	a5,a4,14542 <_ldtoa_r+0x7e8>
   1453e:	02a00a93          	li	s5,42
   14542:	000a879b          	sext.w	a5,s5
   14546:	e83e                	sd	a5,16(sp)
   14548:	b0d9                	j	13e0e <_ldtoa_r+0xb4>
   1454a:	67e2                	ld	a5,24(sp)
   1454c:	fff78a9b          	addw	s5,a5,-1
   14550:	02a00793          	li	a5,42
   14554:	0157d463          	bge	a5,s5,1455c <_ldtoa_r+0x802>
   14558:	02a00a93          	li	s5,42
   1455c:	e856                	sd	s5,16(sp)
   1455e:	b845                	j	13e0e <_ldtoa_r+0xb4>
   14560:	0f010c13          	add	s8,sp,240
   14564:	8762                	mv	a4,s8
   14566:	191c                	add	a5,sp,176
   14568:	0007d683          	lhu	a3,0(a5)
   1456c:	0789                	add	a5,a5,2
   1456e:	0709                	add	a4,a4,2
   14570:	fed71f23          	sh	a3,-2(a4)
   14574:	fe879ae3          	bne	a5,s0,14568 <_ldtoa_r+0x80e>
   14578:	6791                	lui	a5,0x4
   1457a:	08e78793          	add	a5,a5,142 # 408e <exit-0xc05a>
   1457e:	10f11123          	sh	a5,258(sp)
   14582:	67a1                	lui	a5,0x8
   14584:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14586:	fc3e                	sd	a5,56(sp)
   14588:	77f1                	lui	a5,0xffffc
   1458a:	4401                	li	s0,0
   1458c:	4741                	li	a4,16
   1458e:	00009e97          	auipc	t4,0x9
   14592:	a12e8e93          	add	t4,t4,-1518 # 1cfa0 <etens+0xa0>
   14596:	2789                	addw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdc492>
   14598:	e4a6                	sd	s1,72(sp)
   1459a:	e8ce                	sd	s3,80(sp)
   1459c:	84a2                	mv	s1,s0
   1459e:	17010b13          	add	s6,sp,368
   145a2:	1b010b93          	add	s7,sp,432
   145a6:	08c10d13          	add	s10,sp,140
   145aa:	11010a13          	add	s4,sp,272
   145ae:	0e210c93          	add	s9,sp,226
   145b2:	c2be                	sw	a5,68(sp)
   145b4:	0e410d93          	add	s11,sp,228
   145b8:	843a                	mv	s0,a4
   145ba:	89f6                	mv	s3,t4
   145bc:	86de                	mv	a3,s7
   145be:	0990                	add	a2,sp,208
   145c0:	85e2                	mv	a1,s8
   145c2:	854e                	mv	a0,s3
   145c4:	fb7fe0ef          	jal	1357a <ediv>
   145c8:	18bc                	add	a5,sp,120
   145ca:	0998                	add	a4,sp,208
   145cc:	00075683          	lhu	a3,0(a4)
   145d0:	0789                	add	a5,a5,2
   145d2:	0709                	add	a4,a4,2
   145d4:	fed79f23          	sh	a3,-2(a5)
   145d8:	ffa79ae3          	bne	a5,s10,145cc <_ldtoa_r+0x872>
   145dc:	77e2                	ld	a5,56(sp)
   145de:	08a15583          	lhu	a1,138(sp)
   145e2:	00f5f533          	and	a0,a1,a5
   145e6:	4796                	lw	a5,68(sp)
   145e8:	9fa9                	addw	a5,a5,a0
   145ea:	853e                	mv	a0,a5
   145ec:	2af05b63          	blez	a5,148a2 <_ldtoa_r+0xb48>
   145f0:	09000793          	li	a5,144
   145f4:	40a7863b          	subw	a2,a5,a0
   145f8:	8752                	mv	a4,s4
   145fa:	18bc                	add	a5,sp,120
   145fc:	0007d683          	lhu	a3,0(a5)
   14600:	0789                	add	a5,a5,2
   14602:	0709                	add	a4,a4,2
   14604:	fed71f23          	sh	a3,-2(a4)
   14608:	ffa79ae3          	bne	a5,s10,145fc <_ldtoa_r+0x8a2>
   1460c:	04c05c63          	blez	a2,14664 <_ldtoa_r+0x90a>
   14610:	47bd                	li	a5,15
   14612:	8752                	mv	a4,s4
   14614:	02c7d763          	bge	a5,a2,14642 <_ldtoa_r+0x8e8>
   14618:	08000693          	li	a3,128
   1461c:	9e89                	subw	a3,a3,a0
   1461e:	0046d69b          	srlw	a3,a3,0x4
   14622:	0016871b          	addw	a4,a3,1
   14626:	0706                	sll	a4,a4,0x1
   14628:	9752                	add	a4,a4,s4
   1462a:	87d2                	mv	a5,s4
   1462c:	0789                	add	a5,a5,2
   1462e:	fe079f23          	sh	zero,-2(a5)
   14632:	fee79de3          	bne	a5,a4,1462c <_ldtoa_r+0x8d2>
   14636:	08000613          	li	a2,128
   1463a:	9e09                	subw	a2,a2,a0
   1463c:	0046969b          	sllw	a3,a3,0x4
   14640:	9e15                	subw	a2,a2,a3
   14642:	00008697          	auipc	a3,0x8
   14646:	78e68693          	add	a3,a3,1934 # 1cdd0 <bmask>
   1464a:	00161793          	sll	a5,a2,0x1
   1464e:	97b6                	add	a5,a5,a3
   14650:	0007d783          	lhu	a5,0(a5)
   14654:	00075683          	lhu	a3,0(a4)
   14658:	8ff5                	and	a5,a5,a3
   1465a:	00f71023          	sh	a5,0(a4)
   1465e:	81bd                	srl	a1,a1,0xf
   14660:	10059663          	bnez	a1,1476c <_ldtoa_r+0xa12>
   14664:	099c                	add	a5,sp,208
   14666:	8752                	mv	a4,s4
   14668:	0007d603          	lhu	a2,0(a5)
   1466c:	00075683          	lhu	a3,0(a4)
   14670:	02d61163          	bne	a2,a3,14692 <_ldtoa_r+0x938>
   14674:	0789                	add	a5,a5,2
   14676:	0709                	add	a4,a4,2
   14678:	ff9798e3          	bne	a5,s9,14668 <_ldtoa_r+0x90e>
   1467c:	8762                	mv	a4,s8
   1467e:	099c                	add	a5,sp,208
   14680:	0007d683          	lhu	a3,0(a5)
   14684:	0789                	add	a5,a5,2
   14686:	0709                	add	a4,a4,2
   14688:	fed71f23          	sh	a3,-2(a4)
   1468c:	ffb79ae3          	bne	a5,s11,14680 <_ldtoa_r+0x926>
   14690:	9ca1                	addw	s1,s1,s0
   14692:	09d1                	add	s3,s3,20
   14694:	00009797          	auipc	a5,0x9
   14698:	97078793          	add	a5,a5,-1680 # 1d004 <etens+0x104>
   1469c:	8005                	srl	s0,s0,0x1
   1469e:	f0f99fe3          	bne	s3,a5,145bc <_ldtoa_r+0x862>
   146a2:	10215683          	lhu	a3,258(sp)
   146a6:	77f1                	lui	a5,0xffffc
   146a8:	f727879b          	addw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffdc402>
   146ac:	9fb5                	addw	a5,a5,a3
   146ae:	8426                	mv	s0,s1
   146b0:	69c6                	ld	s3,80(sp)
   146b2:	64a6                	ld	s1,72(sp)
   146b4:	015787bb          	addw	a5,a5,s5
   146b8:	10f11123          	sh	a5,258(sp)
   146bc:	1914                	add	a3,sp,176
   146be:	87e2                	mv	a5,s8
   146c0:	024c                	add	a1,sp,260
   146c2:	0007d703          	lhu	a4,0(a5)
   146c6:	0789                	add	a5,a5,2
   146c8:	0689                	add	a3,a3,2
   146ca:	fee69f23          	sh	a4,-2(a3)
   146ce:	feb79ae3          	bne	a5,a1,146c2 <_ldtoa_r+0x968>
   146d2:	0994                	add	a3,sp,208
   146d4:	00009797          	auipc	a5,0x9
   146d8:	93478793          	add	a5,a5,-1740 # 1d008 <eone>
   146dc:	0007d703          	lhu	a4,0(a5)
   146e0:	0789                	add	a5,a5,2
   146e2:	0689                	add	a3,a3,2
   146e4:	fee69f23          	sh	a4,-2(a3)
   146e8:	ff279ae3          	bne	a5,s2,146dc <_ldtoa_r+0x982>
   146ec:	6c85                	lui	s9,0x1
   146ee:	00009917          	auipc	s2,0x9
   146f2:	81290913          	add	s2,s2,-2030 # 1cf00 <etens>
   146f6:	00009d17          	auipc	s10,0x9
   146fa:	8fad0d13          	add	s10,s10,-1798 # 1cff0 <etens+0xf0>
   146fe:	a031                	j	1470a <_ldtoa_r+0x9b0>
   14700:	001cdc93          	srl	s9,s9,0x1
   14704:	1da90563          	beq	s2,s10,148ce <_ldtoa_r+0xb74>
   14708:	0951                	add	s2,s2,20
   1470a:	85e2                	mv	a1,s8
   1470c:	856a                	mv	a0,s10
   1470e:	801fe0ef          	jal	12f0e <ecmp>
   14712:	1aa04e63          	bgtz	a0,148ce <_ldtoa_r+0xb74>
   14716:	85e2                	mv	a1,s8
   14718:	854a                	mv	a0,s2
   1471a:	ff4fe0ef          	jal	12f0e <ecmp>
   1471e:	fea041e3          	bgtz	a0,14700 <_ldtoa_r+0x9a6>
   14722:	86de                	mv	a3,s7
   14724:	8662                	mv	a2,s8
   14726:	85e2                	mv	a1,s8
   14728:	854a                	mv	a0,s2
   1472a:	e51fe0ef          	jal	1357a <ediv>
   1472e:	0990                	add	a2,sp,208
   14730:	86de                	mv	a3,s7
   14732:	85b2                	mv	a1,a2
   14734:	854a                	mv	a0,s2
   14736:	a72ff0ef          	jal	139a8 <emul>
   1473a:	008c843b          	addw	s0,s9,s0
   1473e:	b7c9                	j	14700 <_ldtoa_r+0x9a6>
   14740:	17310493          	add	s1,sp,371
   14744:	4a81                	li	s5,0
   14746:	ae0798e3          	bnez	a5,14236 <_ldtoa_r+0x4dc>
   1474a:	b0f5                	j	14036 <_ldtoa_r+0x2dc>
   1474c:	87da                	mv	a5,s6
   1474e:	b6a1                	j	14296 <_ldtoa_r+0x53c>
   14750:	6762                	ld	a4,24(sp)
   14752:	02a00793          	li	a5,42
   14756:	8aba                	mv	s5,a4
   14758:	00e7d463          	bge	a5,a4,14760 <_ldtoa_r+0xa06>
   1475c:	02a00a93          	li	s5,42
   14760:	000a879b          	sext.w	a5,s5
   14764:	e83e                	sd	a5,16(sp)
   14766:	bc31                	j	14182 <_ldtoa_r+0x428>
   14768:	4681                	li	a3,0
   1476a:	bad5                	j	1415e <_ldtoa_r+0x404>
   1476c:	18bc                	add	a5,sp,120
   1476e:	8752                	mv	a4,s4
   14770:	a039                	j	1477e <_ldtoa_r+0xa24>
   14772:	0789                	add	a5,a5,2
   14774:	08a10693          	add	a3,sp,138
   14778:	0709                	add	a4,a4,2
   1477a:	eed785e3          	beq	a5,a3,14664 <_ldtoa_r+0x90a>
   1477e:	0007d603          	lhu	a2,0(a5)
   14782:	00075683          	lhu	a3,0(a4)
   14786:	fed606e3          	beq	a2,a3,14772 <_ldtoa_r+0xa18>
   1478a:	12215783          	lhu	a5,290(sp)
   1478e:	fff7c793          	not	a5,a5
   14792:	03179713          	sll	a4,a5,0x31
   14796:	2c070363          	beqz	a4,14a5c <_ldtoa_r+0xd02>
   1479a:	1a0c                	add	a1,sp,304
   1479c:	00009517          	auipc	a0,0x9
   147a0:	86c50513          	add	a0,a0,-1940 # 1d008 <eone>
   147a4:	ed6fe0ef          	jal	12e7a <emovi>
   147a8:	0a8c                	add	a1,sp,336
   147aa:	8552                	mv	a0,s4
   147ac:	ecefe0ef          	jal	12e7a <emovi>
   147b0:	13015783          	lhu	a5,304(sp)
   147b4:	15215703          	lhu	a4,338(sp)
   147b8:	13215883          	lhu	a7,306(sp)
   147bc:	fff7c793          	not	a5,a5
   147c0:	12f11823          	sh	a5,304(sp)
   147c4:	40e885b3          	sub	a1,a7,a4
   147c8:	86ba                	mv	a3,a4
   147ca:	04b05e63          	blez	a1,14826 <_ldtoa_r+0xacc>
   147ce:	0a8c                	add	a1,sp,336
   147d0:	86da                	mv	a3,s6
   147d2:	12bc                	add	a5,sp,360
   147d4:	855a                	mv	a0,s6
   147d6:	862e                	mv	a2,a1
   147d8:	00063803          	ld	a6,0(a2)
   147dc:	0621                	add	a2,a2,8
   147de:	0521                	add	a0,a0,8
   147e0:	ff053c23          	sd	a6,-8(a0)
   147e4:	fec79ae3          	bne	a5,a2,147d8 <_ldtoa_r+0xa7e>
   147e8:	1a10                	add	a2,sp,304
   147ea:	18011423          	sh	zero,392(sp)
   147ee:	02a8                	add	a0,sp,328
   147f0:	87b2                	mv	a5,a2
   147f2:	0007b803          	ld	a6,0(a5)
   147f6:	07a1                	add	a5,a5,8
   147f8:	05a1                	add	a1,a1,8
   147fa:	ff05bc23          	sd	a6,-8(a1)
   147fe:	fea79ae3          	bne	a5,a0,147f2 <_ldtoa_r+0xa98>
   14802:	16011423          	sh	zero,360(sp)
   14806:	018b0793          	add	a5,s6,24
   1480a:	628c                	ld	a1,0(a3)
   1480c:	06a1                	add	a3,a3,8
   1480e:	0621                	add	a2,a2,8
   14810:	feb63c23          	sd	a1,-8(a2)
   14814:	fef69be3          	bne	a3,a5,1480a <_ldtoa_r+0xab0>
   14818:	15215683          	lhu	a3,338(sp)
   1481c:	411705b3          	sub	a1,a4,a7
   14820:	14011423          	sh	zero,328(sp)
   14824:	8736                	mv	a4,a3
   14826:	24058e63          	beqz	a1,14a82 <_ldtoa_r+0xd28>
   1482a:	ecb6                	sd	a3,88(sp)
   1482c:	f6f00793          	li	a5,-145
   14830:	04f5cd63          	blt	a1,a5,1488a <_ldtoa_r+0xb30>
   14834:	2581                	sext.w	a1,a1
   14836:	1a08                	add	a0,sp,304
   14838:	cfafe0ef          	jal	12d32 <eshift.part.0>
   1483c:	66e6                	ld	a3,88(sp)
   1483e:	85aa                	mv	a1,a0
   14840:	12bc                	add	a5,sp,360
   14842:	13015603          	lhu	a2,304(sp)
   14846:	15015703          	lhu	a4,336(sp)
   1484a:	34e60463          	beq	a2,a4,14b92 <_ldtoa_r+0xe38>
   1484e:	4701                	li	a4,0
   14850:	14810893          	add	a7,sp,328
   14854:	15210513          	add	a0,sp,338
   14858:	0007d603          	lhu	a2,0(a5)
   1485c:	0008d803          	lhu	a6,0(a7)
   14860:	17f9                	add	a5,a5,-2
   14862:	18f9                	add	a7,a7,-2
   14864:	41060633          	sub	a2,a2,a6
   14868:	40e60733          	sub	a4,a2,a4
   1486c:	01075613          	srl	a2,a4,0x10
   14870:	00e79123          	sh	a4,2(a5)
   14874:	00167713          	and	a4,a2,1
   14878:	fea790e3          	bne	a5,a0,14858 <_ldtoa_r+0xafe>
   1487c:	4605                	li	a2,1
   1487e:	87de                	mv	a5,s7
   14880:	04000713          	li	a4,64
   14884:	0a88                	add	a0,sp,336
   14886:	f70fe0ef          	jal	12ff6 <emdnorm>
   1488a:	85d2                	mv	a1,s4
   1488c:	0a88                	add	a0,sp,336
   1488e:	b0cfe0ef          	jal	12b9a <emovo.constprop.0>
   14892:	bbc9                	j	14664 <_ldtoa_r+0x90a>
   14894:	7782                	ld	a5,32(sp)
   14896:	16010823          	sb	zero,368(sp)
   1489a:	895a                	mv	s2,s6
   1489c:	0007a023          	sw	zero,0(a5)
   148a0:	b939                	j	144be <_ldtoa_r+0x764>
   148a2:	87d2                	mv	a5,s4
   148a4:	0789                	add	a5,a5,2
   148a6:	1258                	add	a4,sp,292
   148a8:	fe079f23          	sh	zero,-2(a5)
   148ac:	fee79ce3          	bne	a5,a4,148a4 <_ldtoa_r+0xb4a>
   148b0:	b37d                	j	1465e <_ldtoa_r+0x904>
   148b2:	17010b13          	add	s6,sp,368
   148b6:	ccd5                	beqz	s1,14972 <_ldtoa_r+0xc18>
   148b8:	00008597          	auipc	a1,0x8
   148bc:	46858593          	add	a1,a1,1128 # 1cd20 <blanks.1+0x40>
   148c0:	855a                	mv	a0,s6
   148c2:	145010ef          	jal	16206 <sprintf>
   148c6:	6409                	lui	s0,0x2
   148c8:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   148cc:	baad                	j	14246 <_ldtoa_r+0x4ec>
   148ce:	12810a93          	add	s5,sp,296
   148d2:	dbcff06f          	j	13e8e <_ldtoa_r+0x134>
   148d6:	2685                	addw	a3,a3,1
   148d8:	00d58023          	sb	a3,0(a1)
   148dc:	baa9                	j	14236 <_ldtoa_r+0x4dc>
   148de:	fff5c783          	lbu	a5,-1(a1)
   148e2:	03800693          	li	a3,56
   148e6:	08f6fe63          	bgeu	a3,a5,14982 <_ldtoa_r+0xc28>
   148ea:	03100793          	li	a5,49
   148ee:	2405                	addw	s0,s0,1
   148f0:	fef58fa3          	sb	a5,-1(a1)
   148f4:	b289                	j	14236 <_ldtoa_r+0x4dc>
   148f6:	091c                	add	a5,sp,144
   148f8:	0a210613          	add	a2,sp,162
   148fc:	a019                	j	14902 <_ldtoa_r+0xba8>
   148fe:	94c78fe3          	beq	a5,a2,1425c <_ldtoa_r+0x502>
   14902:	0007d703          	lhu	a4,0(a5)
   14906:	0789                	add	a5,a5,2
   14908:	db7d                	beqz	a4,148fe <_ldtoa_r+0xba4>
   1490a:	7702                	ld	a4,32(sp)
   1490c:	6789                	lui	a5,0x2
   1490e:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   14912:	c31c                	sw	a5,0(a4)
   14914:	b259                	j	1429a <_ldtoa_r+0x540>
   14916:	17010b13          	add	s6,sp,368
   1491a:	00008597          	auipc	a1,0x8
   1491e:	42658593          	add	a1,a1,1062 # 1cd40 <blanks.1+0x60>
   14922:	855a                	mv	a0,s6
   14924:	0e3010ef          	jal	16206 <sprintf>
   14928:	bf79                	j	148c6 <_ldtoa_r+0xb6c>
   1492a:	098c                	add	a1,sp,208
   1492c:	1908                	add	a0,sp,176
   1492e:	fc3e                	sd	a5,56(sp)
   14930:	a6afe0ef          	jal	12b9a <emovo.constprop.0>
   14934:	00008597          	auipc	a1,0x8
   14938:	6ec58593          	add	a1,a1,1772 # 1d020 <ezero>
   1493c:	0988                	add	a0,sp,208
   1493e:	dd0fe0ef          	jal	12f0e <ecmp>
   14942:	77e2                	ld	a5,56(sp)
   14944:	8a051ae3          	bnez	a0,141f8 <_ldtoa_r+0x49e>
   14948:	8e0ac7e3          	bltz	s5,14236 <_ldtoa_r+0x4dc>
   1494c:	ffe7c683          	lbu	a3,-2(a5)
   14950:	ffe78593          	add	a1,a5,-2
   14954:	fd268613          	add	a2,a3,-46
   14958:	00163613          	seqz	a2,a2
   1495c:	fff64613          	not	a2,a2
   14960:	9626                	add	a2,a2,s1
   14962:	00064603          	lbu	a2,0(a2)
   14966:	07f6f693          	and	a3,a3,127
   1496a:	8a05                	and	a2,a2,1
   1496c:	88061ee3          	bnez	a2,14208 <_ldtoa_r+0x4ae>
   14970:	b0d9                	j	14236 <_ldtoa_r+0x4dc>
   14972:	00008597          	auipc	a1,0x8
   14976:	3be58593          	add	a1,a1,958 # 1cd30 <blanks.1+0x50>
   1497a:	855a                	mv	a0,s6
   1497c:	08b010ef          	jal	16206 <sprintf>
   14980:	b799                	j	148c6 <_ldtoa_r+0xb6c>
   14982:	2785                	addw	a5,a5,1
   14984:	fef58fa3          	sb	a5,-1(a1)
   14988:	b07d                	j	14236 <_ldtoa_r+0x4dc>
   1498a:	11010a13          	add	s4,sp,272
   1498e:	85d2                	mv	a1,s4
   14990:	1908                	add	a0,sp,176
   14992:	6d11                	lui	s10,0x4
   14994:	ce6fe0ef          	jal	12e7a <emovi>
   14998:	4401                	li	s0,0
   1499a:	12810a93          	add	s5,sp,296
   1499e:	11210b93          	add	s7,sp,274
   149a2:	1d79                	add	s10,s10,-2 # 3ffe <exit-0xc0ea>
   149a4:	10810c93          	add	s9,sp,264
   149a8:	fd500d93          	li	s11,-43
   149ac:	12815783          	lhu	a5,296(sp)
   149b0:	8b9d                	and	a5,a5,7
   149b2:	efd1                	bnez	a5,14a4e <_ldtoa_r+0xcf4>
   149b4:	0f010b13          	add	s6,sp,240
   149b8:	8c52                	mv	s8,s4
   149ba:	875a                	mv	a4,s6
   149bc:	87d2                	mv	a5,s4
   149be:	6394                	ld	a3,0(a5)
   149c0:	07a1                	add	a5,a5,8
   149c2:	0721                	add	a4,a4,8
   149c4:	fed73c23          	sd	a3,-8(a4)
   149c8:	ff579be3          	bne	a5,s5,149be <_ldtoa_r+0xc64>
   149cc:	1988                	add	a0,sp,240
   149ce:	10011423          	sh	zero,264(sp)
   149d2:	8e6fe0ef          	jal	12ab8 <eshdn1>
   149d6:	1988                	add	a0,sp,240
   149d8:	8e0fe0ef          	jal	12ab8 <eshdn1>
   149dc:	4601                	li	a2,0
   149de:	0234                	add	a3,sp,264
   149e0:	8756                	mv	a4,s5
   149e2:	0006d583          	lhu	a1,0(a3)
   149e6:	00075783          	lhu	a5,0(a4)
   149ea:	16f9                	add	a3,a3,-2
   149ec:	1779                	add	a4,a4,-2
   149ee:	97ae                	add	a5,a5,a1
   149f0:	97b2                	add	a5,a5,a2
   149f2:	0107d613          	srl	a2,a5,0x10
   149f6:	00f69123          	sh	a5,2(a3)
   149fa:	8a05                	and	a2,a2,1
   149fc:	ff7713e3          	bne	a4,s7,149e2 <_ldtoa_r+0xc88>
   14a00:	0f215783          	lhu	a5,242(sp)
   14a04:	0f415703          	lhu	a4,244(sp)
   14a08:	278d                	addw	a5,a5,3
   14a0a:	0ef11923          	sh	a5,242(sp)
   14a0e:	cf01                	beqz	a4,14a26 <_ldtoa_r+0xccc>
   14a10:	1988                	add	a0,sp,240
   14a12:	8a6fe0ef          	jal	12ab8 <eshdn1>
   14a16:	0f215783          	lhu	a5,242(sp)
   14a1a:	0f415703          	lhu	a4,244(sp)
   14a1e:	2785                	addw	a5,a5,1
   14a20:	0ef11923          	sh	a5,242(sp)
   14a24:	f775                	bnez	a4,14a10 <_ldtoa_r+0xcb6>
   14a26:	10815783          	lhu	a5,264(sp)
   14a2a:	e395                	bnez	a5,14a4e <_ldtoa_r+0xcf4>
   14a2c:	0f215783          	lhu	a5,242(sp)
   14a30:	00fd6f63          	bltu	s10,a5,14a4e <_ldtoa_r+0xcf4>
   14a34:	000b3783          	ld	a5,0(s6)
   14a38:	0b21                	add	s6,s6,8
   14a3a:	0c21                	add	s8,s8,8
   14a3c:	fefc3c23          	sd	a5,-8(s8)
   14a40:	ff9b1ae3          	bne	s6,s9,14a34 <_ldtoa_r+0xcda>
   14a44:	12011423          	sh	zero,296(sp)
   14a48:	347d                	addw	s0,s0,-1
   14a4a:	f7b411e3          	bne	s0,s11,149ac <_ldtoa_r+0xc52>
   14a4e:	190c                	add	a1,sp,176
   14a50:	8552                	mv	a0,s4
   14a52:	948fe0ef          	jal	12b9a <emovo.constprop.0>
   14a56:	1b010b93          	add	s7,sp,432
   14a5a:	ba79                	j	143f8 <_ldtoa_r+0x69e>
   14a5c:	87d2                	mv	a5,s4
   14a5e:	12210713          	add	a4,sp,290
   14a62:	0007d683          	lhu	a3,0(a5)
   14a66:	0789                	add	a5,a5,2
   14a68:	be069ee3          	bnez	a3,14664 <_ldtoa_r+0x90a>
   14a6c:	fee79be3          	bne	a5,a4,14a62 <_ldtoa_r+0xd08>
   14a70:	87d2                	mv	a5,s4
   14a72:	0007d683          	lhu	a3,0(a5)
   14a76:	0789                	add	a5,a5,2
   14a78:	d20691e3          	bnez	a3,1479a <_ldtoa_r+0xa40>
   14a7c:	fee79be3          	bne	a5,a4,14a72 <_ldtoa_r+0xd18>
   14a80:	b6d5                	j	14664 <_ldtoa_r+0x90a>
   14a82:	0ad0                	add	a2,sp,340
   14a84:	1a5c                	add	a5,sp,308
   14a86:	14a10893          	add	a7,sp,330
   14a8a:	0007d503          	lhu	a0,0(a5)
   14a8e:	00065583          	lhu	a1,0(a2)
   14a92:	0789                	add	a5,a5,2
   14a94:	0609                	add	a2,a2,2
   14a96:	04b51063          	bne	a0,a1,14ad6 <_ldtoa_r+0xd7c>
   14a9a:	ff1798e3          	bne	a5,a7,14a8a <_ldtoa_r+0xd30>
   14a9e:	13015603          	lhu	a2,304(sp)
   14aa2:	15015783          	lhu	a5,336(sp)
   14aa6:	08f60263          	beq	a2,a5,14b2a <_ldtoa_r+0xdd0>
   14aaa:	87d2                	mv	a5,s4
   14aac:	1258                	add	a4,sp,292
   14aae:	0789                	add	a5,a5,2
   14ab0:	fe079f23          	sh	zero,-2(a5)
   14ab4:	fee79de3          	bne	a5,a4,14aae <_ldtoa_r+0xd54>
   14ab8:	b675                	j	14664 <_ldtoa_r+0x90a>
   14aba:	6585                	lui	a1,0x1
   14abc:	00008697          	auipc	a3,0x8
   14ac0:	29468693          	add	a3,a3,660 # 1cd50 <blanks.1+0x70>
   14ac4:	4601                	li	a2,0
   14ac6:	b6e58593          	add	a1,a1,-1170 # b6e <exit-0xf57a>
   14aca:	00008517          	auipc	a0,0x8
   14ace:	29e50513          	add	a0,a0,670 # 1cd68 <blanks.1+0x88>
   14ad2:	528040ef          	jal	18ffa <__assert_func>
   14ad6:	12bc                	add	a5,sp,360
   14ad8:	04a5f763          	bgeu	a1,a0,14b26 <_ldtoa_r+0xdcc>
   14adc:	0a98                	add	a4,sp,336
   14ade:	85da                	mv	a1,s6
   14ae0:	12bc                	add	a5,sp,360
   14ae2:	855a                	mv	a0,s6
   14ae4:	863a                	mv	a2,a4
   14ae6:	00063803          	ld	a6,0(a2)
   14aea:	0621                	add	a2,a2,8
   14aec:	0521                	add	a0,a0,8
   14aee:	ff053c23          	sd	a6,-8(a0)
   14af2:	fec79ae3          	bne	a5,a2,14ae6 <_ldtoa_r+0xd8c>
   14af6:	1a10                	add	a2,sp,304
   14af8:	18011423          	sh	zero,392(sp)
   14afc:	8532                	mv	a0,a2
   14afe:	00053803          	ld	a6,0(a0)
   14b02:	0721                	add	a4,a4,8
   14b04:	0521                	add	a0,a0,8
   14b06:	ff073c23          	sd	a6,-8(a4)
   14b0a:	fee79ae3          	bne	a5,a4,14afe <_ldtoa_r+0xda4>
   14b0e:	16011423          	sh	zero,360(sp)
   14b12:	02b8                	add	a4,sp,328
   14b14:	6188                	ld	a0,0(a1)
   14b16:	0621                	add	a2,a2,8
   14b18:	05a1                	add	a1,a1,8
   14b1a:	fea63c23          	sd	a0,-8(a2)
   14b1e:	fec71be3          	bne	a4,a2,14b14 <_ldtoa_r+0xdba>
   14b22:	14011423          	sh	zero,328(sp)
   14b26:	4581                	li	a1,0
   14b28:	bb29                	j	14842 <_ldtoa_r+0xae8>
   14b2a:	87b6                	mv	a5,a3
   14b2c:	e689                	bnez	a3,14b36 <_ldtoa_r+0xddc>
   14b2e:	15611603          	lh	a2,342(sp)
   14b32:	00065e63          	bgez	a2,14b4e <_ldtoa_r+0xdf4>
   14b36:	15210613          	add	a2,sp,338
   14b3a:	12bc                	add	a5,sp,360
   14b3c:	00065583          	lhu	a1,0(a2)
   14b40:	e5a1                	bnez	a1,14b88 <_ldtoa_r+0xe2e>
   14b42:	0609                	add	a2,a2,2
   14b44:	fec79ce3          	bne	a5,a2,14b3c <_ldtoa_r+0xde2>
   14b48:	14e11923          	sh	a4,338(sp)
   14b4c:	bb3d                	j	1488a <_ldtoa_r+0xb30>
   14b4e:	12b4                	add	a3,sp,360
   14b50:	15210513          	add	a0,sp,338
   14b54:	0006d703          	lhu	a4,0(a3)
   14b58:	00f75613          	srl	a2,a4,0xf
   14b5c:	c219                	beqz	a2,14b62 <_ldtoa_r+0xe08>
   14b5e:	0017e793          	or	a5,a5,1
   14b62:	0017171b          	sllw	a4,a4,0x1
   14b66:	1742                	sll	a4,a4,0x30
   14b68:	0027f613          	and	a2,a5,2
   14b6c:	9341                	srl	a4,a4,0x30
   14b6e:	c219                	beqz	a2,14b74 <_ldtoa_r+0xe1a>
   14b70:	00176713          	or	a4,a4,1
   14b74:	0017979b          	sllw	a5,a5,0x1
   14b78:	00e69023          	sh	a4,0(a3)
   14b7c:	17c2                	sll	a5,a5,0x30
   14b7e:	16f9                	add	a3,a3,-2
   14b80:	93c1                	srl	a5,a5,0x30
   14b82:	fca699e3          	bne	a3,a0,14b54 <_ldtoa_r+0xdfa>
   14b86:	b311                	j	1488a <_ldtoa_r+0xb30>
   14b88:	00168713          	add	a4,a3,1
   14b8c:	14e11923          	sh	a4,338(sp)
   14b90:	b9ed                	j	1488a <_ldtoa_r+0xb30>
   14b92:	4701                	li	a4,0
   14b94:	02a8                	add	a0,sp,328
   14b96:	13210893          	add	a7,sp,306
   14b9a:	0007d803          	lhu	a6,0(a5)
   14b9e:	00055603          	lhu	a2,0(a0)
   14ba2:	17f9                	add	a5,a5,-2
   14ba4:	1579                	add	a0,a0,-2
   14ba6:	9642                	add	a2,a2,a6
   14ba8:	9732                	add	a4,a4,a2
   14baa:	01075613          	srl	a2,a4,0x10
   14bae:	00e79123          	sh	a4,2(a5)
   14bb2:	00167713          	and	a4,a2,1
   14bb6:	ff1512e3          	bne	a0,a7,14b9a <_ldtoa_r+0xe40>
   14bba:	4601                	li	a2,0
   14bbc:	b1c9                	j	1487e <_ldtoa_r+0xb24>

0000000000014bbe <_ldcheck>:
   14bbe:	6118                	ld	a4,0(a0)
   14bc0:	651c                	ld	a5,8(a0)
   14bc2:	7139                	add	sp,sp,-64
   14bc4:	850a                	mv	a0,sp
   14bc6:	080c                	add	a1,sp,16
   14bc8:	e03a                	sd	a4,0(sp)
   14bca:	e43e                	sd	a5,8(sp)
   14bcc:	fc06                	sd	ra,56(sp)
   14bce:	8b1fe0ef          	jal	1347e <e113toe.isra.0>
   14bd2:	02215783          	lhu	a5,34(sp)
   14bd6:	4501                	li	a0,0
   14bd8:	fff7c793          	not	a5,a5
   14bdc:	03179713          	sll	a4,a5,0x31
   14be0:	eb19                	bnez	a4,14bf6 <_ldcheck+0x38>
   14be2:	081c                	add	a5,sp,16
   14be4:	02210693          	add	a3,sp,34
   14be8:	0007d703          	lhu	a4,0(a5)
   14bec:	0789                	add	a5,a5,2
   14bee:	e719                	bnez	a4,14bfc <_ldcheck+0x3e>
   14bf0:	fed79ce3          	bne	a5,a3,14be8 <_ldcheck+0x2a>
   14bf4:	4509                	li	a0,2
   14bf6:	70e2                	ld	ra,56(sp)
   14bf8:	6121                	add	sp,sp,64
   14bfa:	8082                	ret
   14bfc:	4505                	li	a0,1
   14bfe:	bfe5                	j	14bf6 <_ldcheck+0x38>

0000000000014c00 <__localeconv_l>:
   14c00:	10050513          	add	a0,a0,256
   14c04:	8082                	ret

0000000000014c06 <_localeconv_r>:
   14c06:	66818513          	add	a0,gp,1640 # 1f9d8 <__global_locale+0x100>
   14c0a:	8082                	ret

0000000000014c0c <localeconv>:
   14c0c:	66818513          	add	a0,gp,1640 # 1f9d8 <__global_locale+0x100>
   14c10:	8082                	ret

0000000000014c12 <__smakebuf_r>:
   14c12:	01059783          	lh	a5,16(a1)
   14c16:	7135                	add	sp,sp,-160
   14c18:	e922                	sd	s0,144(sp)
   14c1a:	ed06                	sd	ra,152(sp)
   14c1c:	e526                	sd	s1,136(sp)
   14c1e:	e14a                	sd	s2,128(sp)
   14c20:	fcce                	sd	s3,120(sp)
   14c22:	f8d2                	sd	s4,112(sp)
   14c24:	0027f713          	and	a4,a5,2
   14c28:	842e                	mv	s0,a1
   14c2a:	cf19                	beqz	a4,14c48 <__smakebuf_r+0x36>
   14c2c:	07758793          	add	a5,a1,119
   14c30:	e19c                	sd	a5,0(a1)
   14c32:	ed9c                	sd	a5,24(a1)
   14c34:	4785                	li	a5,1
   14c36:	d19c                	sw	a5,32(a1)
   14c38:	60ea                	ld	ra,152(sp)
   14c3a:	644a                	ld	s0,144(sp)
   14c3c:	64aa                	ld	s1,136(sp)
   14c3e:	690a                	ld	s2,128(sp)
   14c40:	79e6                	ld	s3,120(sp)
   14c42:	7a46                	ld	s4,112(sp)
   14c44:	610d                	add	sp,sp,160
   14c46:	8082                	ret
   14c48:	01259583          	lh	a1,18(a1)
   14c4c:	84aa                	mv	s1,a0
   14c4e:	0605c963          	bltz	a1,14cc0 <__smakebuf_r+0xae>
   14c52:	0030                	add	a2,sp,8
   14c54:	6ea040ef          	jal	1933e <_fstat_r>
   14c58:	06054263          	bltz	a0,14cbc <__smakebuf_r+0xaa>
   14c5c:	4932                	lw	s2,12(sp)
   14c5e:	67bd                	lui	a5,0xf
   14c60:	6a05                	lui	s4,0x1
   14c62:	00f97933          	and	s2,s2,a5
   14c66:	6789                	lui	a5,0x2
   14c68:	40f90933          	sub	s2,s2,a5
   14c6c:	00193913          	seqz	s2,s2
   14c70:	40000993          	li	s3,1024
   14c74:	800a0a13          	add	s4,s4,-2048 # 800 <exit-0xf8e8>
   14c78:	85ce                	mv	a1,s3
   14c7a:	8526                	mv	a0,s1
   14c7c:	134000ef          	jal	14db0 <_malloc_r>
   14c80:	01041783          	lh	a5,16(s0)
   14c84:	cd21                	beqz	a0,14cdc <__smakebuf_r+0xca>
   14c86:	ffffd717          	auipc	a4,0xffffd
   14c8a:	75070713          	add	a4,a4,1872 # 123d6 <_cleanup_r>
   14c8e:	ecb8                	sd	a4,88(s1)
   14c90:	0807e793          	or	a5,a5,128
   14c94:	00f41823          	sh	a5,16(s0)
   14c98:	e008                	sd	a0,0(s0)
   14c9a:	ec08                	sd	a0,24(s0)
   14c9c:	03342023          	sw	s3,32(s0)
   14ca0:	06091163          	bnez	s2,14d02 <__smakebuf_r+0xf0>
   14ca4:	0147e7b3          	or	a5,a5,s4
   14ca8:	60ea                	ld	ra,152(sp)
   14caa:	00f41823          	sh	a5,16(s0)
   14cae:	644a                	ld	s0,144(sp)
   14cb0:	64aa                	ld	s1,136(sp)
   14cb2:	690a                	ld	s2,128(sp)
   14cb4:	79e6                	ld	s3,120(sp)
   14cb6:	7a46                	ld	s4,112(sp)
   14cb8:	610d                	add	sp,sp,160
   14cba:	8082                	ret
   14cbc:	01041783          	lh	a5,16(s0)
   14cc0:	0807f793          	and	a5,a5,128
   14cc4:	4901                	li	s2,0
   14cc6:	cb95                	beqz	a5,14cfa <__smakebuf_r+0xe8>
   14cc8:	04000993          	li	s3,64
   14ccc:	85ce                	mv	a1,s3
   14cce:	8526                	mv	a0,s1
   14cd0:	0e0000ef          	jal	14db0 <_malloc_r>
   14cd4:	01041783          	lh	a5,16(s0)
   14cd8:	4a01                	li	s4,0
   14cda:	f555                	bnez	a0,14c86 <__smakebuf_r+0x74>
   14cdc:	2007f713          	and	a4,a5,512
   14ce0:	ff21                	bnez	a4,14c38 <__smakebuf_r+0x26>
   14ce2:	9bf1                	and	a5,a5,-4
   14ce4:	0027e793          	or	a5,a5,2
   14ce8:	07740713          	add	a4,s0,119
   14cec:	00f41823          	sh	a5,16(s0)
   14cf0:	4785                	li	a5,1
   14cf2:	e018                	sd	a4,0(s0)
   14cf4:	ec18                	sd	a4,24(s0)
   14cf6:	d01c                	sw	a5,32(s0)
   14cf8:	b781                	j	14c38 <__smakebuf_r+0x26>
   14cfa:	40000993          	li	s3,1024
   14cfe:	4a01                	li	s4,0
   14d00:	bfa5                	j	14c78 <__smakebuf_r+0x66>
   14d02:	01241583          	lh	a1,18(s0)
   14d06:	8526                	mv	a0,s1
   14d08:	199040ef          	jal	196a0 <_isatty_r>
   14d0c:	e501                	bnez	a0,14d14 <__smakebuf_r+0x102>
   14d0e:	01041783          	lh	a5,16(s0)
   14d12:	bf49                	j	14ca4 <__smakebuf_r+0x92>
   14d14:	01045783          	lhu	a5,16(s0)
   14d18:	9bf1                	and	a5,a5,-4
   14d1a:	0017e793          	or	a5,a5,1
   14d1e:	0107979b          	sllw	a5,a5,0x10
   14d22:	4107d79b          	sraw	a5,a5,0x10
   14d26:	bfbd                	j	14ca4 <__smakebuf_r+0x92>

0000000000014d28 <__swhatbuf_r>:
   14d28:	7175                	add	sp,sp,-144
   14d2a:	e122                	sd	s0,128(sp)
   14d2c:	842e                	mv	s0,a1
   14d2e:	01259583          	lh	a1,18(a1)
   14d32:	fca6                	sd	s1,120(sp)
   14d34:	f8ca                	sd	s2,112(sp)
   14d36:	e506                	sd	ra,136(sp)
   14d38:	84b2                	mv	s1,a2
   14d3a:	8936                	mv	s2,a3
   14d3c:	0205cc63          	bltz	a1,14d74 <__swhatbuf_r+0x4c>
   14d40:	0030                	add	a2,sp,8
   14d42:	5fc040ef          	jal	1933e <_fstat_r>
   14d46:	02054763          	bltz	a0,14d74 <__swhatbuf_r+0x4c>
   14d4a:	47b2                	lw	a5,12(sp)
   14d4c:	673d                	lui	a4,0xf
   14d4e:	60aa                	ld	ra,136(sp)
   14d50:	8ff9                	and	a5,a5,a4
   14d52:	6709                	lui	a4,0x2
   14d54:	8f99                	sub	a5,a5,a4
   14d56:	640a                	ld	s0,128(sp)
   14d58:	0017b793          	seqz	a5,a5
   14d5c:	00f92023          	sw	a5,0(s2)
   14d60:	40000713          	li	a4,1024
   14d64:	e098                	sd	a4,0(s1)
   14d66:	6505                	lui	a0,0x1
   14d68:	74e6                	ld	s1,120(sp)
   14d6a:	7946                	ld	s2,112(sp)
   14d6c:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf8e8>
   14d70:	6149                	add	sp,sp,144
   14d72:	8082                	ret
   14d74:	01045783          	lhu	a5,16(s0)
   14d78:	0807f793          	and	a5,a5,128
   14d7c:	cf91                	beqz	a5,14d98 <__swhatbuf_r+0x70>
   14d7e:	60aa                	ld	ra,136(sp)
   14d80:	640a                	ld	s0,128(sp)
   14d82:	4781                	li	a5,0
   14d84:	00f92023          	sw	a5,0(s2)
   14d88:	04000713          	li	a4,64
   14d8c:	e098                	sd	a4,0(s1)
   14d8e:	7946                	ld	s2,112(sp)
   14d90:	74e6                	ld	s1,120(sp)
   14d92:	4501                	li	a0,0
   14d94:	6149                	add	sp,sp,144
   14d96:	8082                	ret
   14d98:	60aa                	ld	ra,136(sp)
   14d9a:	640a                	ld	s0,128(sp)
   14d9c:	00f92023          	sw	a5,0(s2)
   14da0:	40000713          	li	a4,1024
   14da4:	e098                	sd	a4,0(s1)
   14da6:	7946                	ld	s2,112(sp)
   14da8:	74e6                	ld	s1,120(sp)
   14daa:	4501                	li	a0,0
   14dac:	6149                	add	sp,sp,144
   14dae:	8082                	ret

0000000000014db0 <_malloc_r>:
   14db0:	711d                	add	sp,sp,-96
   14db2:	e4a6                	sd	s1,72(sp)
   14db4:	e0ca                	sd	s2,64(sp)
   14db6:	ec86                	sd	ra,88(sp)
   14db8:	e8a2                	sd	s0,80(sp)
   14dba:	fc4e                	sd	s3,56(sp)
   14dbc:	f852                	sd	s4,48(sp)
   14dbe:	f456                	sd	s5,40(sp)
   14dc0:	f05a                	sd	s6,32(sp)
   14dc2:	ec5e                	sd	s7,24(sp)
   14dc4:	e862                	sd	s8,16(sp)
   14dc6:	e466                	sd	s9,8(sp)
   14dc8:	01758493          	add	s1,a1,23
   14dcc:	02e00793          	li	a5,46
   14dd0:	892a                	mv	s2,a0
   14dd2:	0697e463          	bltu	a5,s1,14e3a <_malloc_r+0x8a>
   14dd6:	02000793          	li	a5,32
   14dda:	1ab7e163          	bltu	a5,a1,14f7c <_malloc_r+0x1cc>
   14dde:	65e000ef          	jal	1543c <__malloc_lock>
   14de2:	02000493          	li	s1,32
   14de6:	05000793          	li	a5,80
   14dea:	4611                	li	a2,4
   14dec:	0000a997          	auipc	s3,0xa
   14df0:	2dc98993          	add	s3,s3,732 # 1f0c8 <__malloc_av_>
   14df4:	97ce                	add	a5,a5,s3
   14df6:	6780                	ld	s0,8(a5)
   14df8:	ff078713          	add	a4,a5,-16 # 1ff0 <exit-0xe0f8>
   14dfc:	26e40063          	beq	s0,a4,1505c <_malloc_r+0x2ac>
   14e00:	641c                	ld	a5,8(s0)
   14e02:	6c14                	ld	a3,24(s0)
   14e04:	6810                	ld	a2,16(s0)
   14e06:	9bf1                	and	a5,a5,-4
   14e08:	97a2                	add	a5,a5,s0
   14e0a:	6798                	ld	a4,8(a5)
   14e0c:	ee14                	sd	a3,24(a2)
   14e0e:	ea90                	sd	a2,16(a3)
   14e10:	00176713          	or	a4,a4,1
   14e14:	854a                	mv	a0,s2
   14e16:	e798                	sd	a4,8(a5)
   14e18:	626000ef          	jal	1543e <__malloc_unlock>
   14e1c:	01040513          	add	a0,s0,16
   14e20:	60e6                	ld	ra,88(sp)
   14e22:	6446                	ld	s0,80(sp)
   14e24:	64a6                	ld	s1,72(sp)
   14e26:	6906                	ld	s2,64(sp)
   14e28:	79e2                	ld	s3,56(sp)
   14e2a:	7a42                	ld	s4,48(sp)
   14e2c:	7aa2                	ld	s5,40(sp)
   14e2e:	7b02                	ld	s6,32(sp)
   14e30:	6be2                	ld	s7,24(sp)
   14e32:	6c42                	ld	s8,16(sp)
   14e34:	6ca2                	ld	s9,8(sp)
   14e36:	6125                	add	sp,sp,96
   14e38:	8082                	ret
   14e3a:	800007b7          	lui	a5,0x80000
   14e3e:	98c1                	and	s1,s1,-16
   14e40:	fff7c793          	not	a5,a5
   14e44:	1297ec63          	bltu	a5,s1,14f7c <_malloc_r+0x1cc>
   14e48:	12b4ea63          	bltu	s1,a1,14f7c <_malloc_r+0x1cc>
   14e4c:	5f0000ef          	jal	1543c <__malloc_lock>
   14e50:	1f700793          	li	a5,503
   14e54:	2e97ff63          	bgeu	a5,s1,15152 <_malloc_r+0x3a2>
   14e58:	0094d793          	srl	a5,s1,0x9
   14e5c:	12078563          	beqz	a5,14f86 <_malloc_r+0x1d6>
   14e60:	4711                	li	a4,4
   14e62:	24f76463          	bltu	a4,a5,150aa <_malloc_r+0x2fa>
   14e66:	0064d793          	srl	a5,s1,0x6
   14e6a:	0397861b          	addw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffe04c9>
   14e6e:	0016169b          	sllw	a3,a2,0x1
   14e72:	0387851b          	addw	a0,a5,56
   14e76:	068e                	sll	a3,a3,0x3
   14e78:	0000a997          	auipc	s3,0xa
   14e7c:	25098993          	add	s3,s3,592 # 1f0c8 <__malloc_av_>
   14e80:	96ce                	add	a3,a3,s3
   14e82:	6680                	ld	s0,8(a3)
   14e84:	16c1                	add	a3,a3,-16
   14e86:	02868063          	beq	a3,s0,14ea6 <_malloc_r+0xf6>
   14e8a:	45fd                	li	a1,31
   14e8c:	a031                	j	14e98 <_malloc_r+0xe8>
   14e8e:	1c075463          	bgez	a4,15056 <_malloc_r+0x2a6>
   14e92:	6c00                	ld	s0,24(s0)
   14e94:	00868963          	beq	a3,s0,14ea6 <_malloc_r+0xf6>
   14e98:	641c                	ld	a5,8(s0)
   14e9a:	9bf1                	and	a5,a5,-4
   14e9c:	40978733          	sub	a4,a5,s1
   14ea0:	fee5d7e3          	bge	a1,a4,14e8e <_malloc_r+0xde>
   14ea4:	862a                	mv	a2,a0
   14ea6:	0209b403          	ld	s0,32(s3)
   14eaa:	0000a897          	auipc	a7,0xa
   14eae:	22e88893          	add	a7,a7,558 # 1f0d8 <__malloc_av_+0x10>
   14eb2:	19140f63          	beq	s0,a7,15050 <_malloc_r+0x2a0>
   14eb6:	641c                	ld	a5,8(s0)
   14eb8:	46fd                	li	a3,31
   14eba:	9bf1                	and	a5,a5,-4
   14ebc:	40978733          	sub	a4,a5,s1
   14ec0:	26e6c263          	blt	a3,a4,15124 <_malloc_r+0x374>
   14ec4:	0319b423          	sd	a7,40(s3)
   14ec8:	0319b023          	sd	a7,32(s3)
   14ecc:	24075163          	bgez	a4,1510e <_malloc_r+0x35e>
   14ed0:	1ff00713          	li	a4,511
   14ed4:	0089b503          	ld	a0,8(s3)
   14ed8:	18f76763          	bltu	a4,a5,15066 <_malloc_r+0x2b6>
   14edc:	838d                	srl	a5,a5,0x3
   14ede:	0017871b          	addw	a4,a5,1
   14ee2:	0017171b          	sllw	a4,a4,0x1
   14ee6:	070e                	sll	a4,a4,0x3
   14ee8:	974e                	add	a4,a4,s3
   14eea:	630c                	ld	a1,0(a4)
   14eec:	4027d79b          	sraw	a5,a5,0x2
   14ef0:	4685                	li	a3,1
   14ef2:	00f697b3          	sll	a5,a3,a5
   14ef6:	8d5d                	or	a0,a0,a5
   14ef8:	ff070793          	add	a5,a4,-16 # 1ff0 <exit-0xe0f8>
   14efc:	ec1c                	sd	a5,24(s0)
   14efe:	e80c                	sd	a1,16(s0)
   14f00:	00a9b423          	sd	a0,8(s3)
   14f04:	e300                	sd	s0,0(a4)
   14f06:	ed80                	sd	s0,24(a1)
   14f08:	4026579b          	sraw	a5,a2,0x2
   14f0c:	4585                	li	a1,1
   14f0e:	00f595b3          	sll	a1,a1,a5
   14f12:	08b56163          	bltu	a0,a1,14f94 <_malloc_r+0x1e4>
   14f16:	00a5f7b3          	and	a5,a1,a0
   14f1a:	ef81                	bnez	a5,14f32 <_malloc_r+0x182>
   14f1c:	0586                	sll	a1,a1,0x1
   14f1e:	9a71                	and	a2,a2,-4
   14f20:	00a5f7b3          	and	a5,a1,a0
   14f24:	2611                	addw	a2,a2,4
   14f26:	e791                	bnez	a5,14f32 <_malloc_r+0x182>
   14f28:	0586                	sll	a1,a1,0x1
   14f2a:	00a5f7b3          	and	a5,a1,a0
   14f2e:	2611                	addw	a2,a2,4
   14f30:	dfe5                	beqz	a5,14f28 <_malloc_r+0x178>
   14f32:	487d                	li	a6,31
   14f34:	0016031b          	addw	t1,a2,1
   14f38:	0013131b          	sllw	t1,t1,0x1
   14f3c:	030e                	sll	t1,t1,0x3
   14f3e:	1341                	add	t1,t1,-16
   14f40:	934e                	add	t1,t1,s3
   14f42:	851a                	mv	a0,t1
   14f44:	6d1c                	ld	a5,24(a0)
   14f46:	8e32                	mv	t3,a2
   14f48:	18f50263          	beq	a0,a5,150cc <_malloc_r+0x31c>
   14f4c:	6798                	ld	a4,8(a5)
   14f4e:	843e                	mv	s0,a5
   14f50:	6f9c                	ld	a5,24(a5)
   14f52:	9b71                	and	a4,a4,-4
   14f54:	409706b3          	sub	a3,a4,s1
   14f58:	18d84163          	blt	a6,a3,150da <_malloc_r+0x32a>
   14f5c:	fe06c6e3          	bltz	a3,14f48 <_malloc_r+0x198>
   14f60:	9722                	add	a4,a4,s0
   14f62:	6714                	ld	a3,8(a4)
   14f64:	6810                	ld	a2,16(s0)
   14f66:	854a                	mv	a0,s2
   14f68:	0016e693          	or	a3,a3,1
   14f6c:	e714                	sd	a3,8(a4)
   14f6e:	ee1c                	sd	a5,24(a2)
   14f70:	eb90                	sd	a2,16(a5)
   14f72:	4cc000ef          	jal	1543e <__malloc_unlock>
   14f76:	01040513          	add	a0,s0,16
   14f7a:	b55d                	j	14e20 <_malloc_r+0x70>
   14f7c:	47b1                	li	a5,12
   14f7e:	00f92023          	sw	a5,0(s2)
   14f82:	4501                	li	a0,0
   14f84:	bd71                	j	14e20 <_malloc_r+0x70>
   14f86:	40000693          	li	a3,1024
   14f8a:	04000613          	li	a2,64
   14f8e:	03f00513          	li	a0,63
   14f92:	b5dd                	j	14e78 <_malloc_r+0xc8>
   14f94:	0109b403          	ld	s0,16(s3)
   14f98:	641c                	ld	a5,8(s0)
   14f9a:	ffc7fa93          	and	s5,a5,-4
   14f9e:	009ae763          	bltu	s5,s1,14fac <_malloc_r+0x1fc>
   14fa2:	409a8733          	sub	a4,s5,s1
   14fa6:	47fd                	li	a5,31
   14fa8:	08e7c563          	blt	a5,a4,15032 <_malloc_r+0x282>
   14fac:	76018c93          	add	s9,gp,1888 # 1fad0 <__malloc_sbrk_base>
   14fb0:	000cb703          	ld	a4,0(s9) # 1000 <exit-0xf0e8>
   14fb4:	7801ba03          	ld	s4,1920(gp) # 1faf0 <__malloc_top_pad>
   14fb8:	57fd                	li	a5,-1
   14fba:	01540bb3          	add	s7,s0,s5
   14fbe:	9a26                	add	s4,s4,s1
   14fc0:	2ef70563          	beq	a4,a5,152aa <_malloc_r+0x4fa>
   14fc4:	6785                	lui	a5,0x1
   14fc6:	07fd                	add	a5,a5,31 # 101f <exit-0xf0c9>
   14fc8:	9a3e                	add	s4,s4,a5
   14fca:	77fd                	lui	a5,0xfffff
   14fcc:	00fa7a33          	and	s4,s4,a5
   14fd0:	85d2                	mv	a1,s4
   14fd2:	854a                	mv	a0,s2
   14fd4:	1c0010ef          	jal	16194 <_sbrk_r>
   14fd8:	57fd                	li	a5,-1
   14fda:	8b2a                	mv	s6,a0
   14fdc:	1af50063          	beq	a0,a5,1517c <_malloc_r+0x3cc>
   14fe0:	19756c63          	bltu	a0,s7,15178 <_malloc_r+0x3c8>
   14fe4:	0000bc17          	auipc	s8,0xb
   14fe8:	b64c0c13          	add	s8,s8,-1180 # 1fb48 <__malloc_current_mallinfo>
   14fec:	000c2783          	lw	a5,0(s8)
   14ff0:	0147873b          	addw	a4,a5,s4
   14ff4:	00ec2023          	sw	a4,0(s8)
   14ff8:	86ba                	mv	a3,a4
   14ffa:	20ab9263          	bne	s7,a0,151fe <_malloc_r+0x44e>
   14ffe:	03451793          	sll	a5,a0,0x34
   15002:	1e079e63          	bnez	a5,151fe <_malloc_r+0x44e>
   15006:	0109bb03          	ld	s6,16(s3)
   1500a:	014a87b3          	add	a5,s5,s4
   1500e:	0017e793          	or	a5,a5,1
   15012:	00fb3423          	sd	a5,8(s6)
   15016:	77818693          	add	a3,gp,1912 # 1fae8 <__malloc_max_sbrked_mem>
   1501a:	6290                	ld	a2,0(a3)
   1501c:	00e67363          	bgeu	a2,a4,15022 <_malloc_r+0x272>
   15020:	e298                	sd	a4,0(a3)
   15022:	77018693          	add	a3,gp,1904 # 1fae0 <__malloc_max_total_mem>
   15026:	6290                	ld	a2,0(a3)
   15028:	00e67363          	bgeu	a2,a4,1502e <_malloc_r+0x27e>
   1502c:	e298                	sd	a4,0(a3)
   1502e:	845a                	mv	s0,s6
   15030:	aa89                	j	15182 <_malloc_r+0x3d2>
   15032:	0014e793          	or	a5,s1,1
   15036:	e41c                	sd	a5,8(s0)
   15038:	94a2                	add	s1,s1,s0
   1503a:	0099b823          	sd	s1,16(s3)
   1503e:	00176713          	or	a4,a4,1
   15042:	854a                	mv	a0,s2
   15044:	e498                	sd	a4,8(s1)
   15046:	3f8000ef          	jal	1543e <__malloc_unlock>
   1504a:	01040513          	add	a0,s0,16
   1504e:	bbc9                	j	14e20 <_malloc_r+0x70>
   15050:	0089b503          	ld	a0,8(s3)
   15054:	bd55                	j	14f08 <_malloc_r+0x158>
   15056:	6c14                	ld	a3,24(s0)
   15058:	6810                	ld	a2,16(s0)
   1505a:	b37d                	j	14e08 <_malloc_r+0x58>
   1505c:	6f80                	ld	s0,24(a5)
   1505e:	2609                	addw	a2,a2,2
   15060:	e48783e3          	beq	a5,s0,14ea6 <_malloc_r+0xf6>
   15064:	bb71                	j	14e00 <_malloc_r+0x50>
   15066:	0097d713          	srl	a4,a5,0x9
   1506a:	4691                	li	a3,4
   1506c:	0ee6fc63          	bgeu	a3,a4,15164 <_malloc_r+0x3b4>
   15070:	46d1                	li	a3,20
   15072:	26e6e863          	bltu	a3,a4,152e2 <_malloc_r+0x532>
   15076:	05c7059b          	addw	a1,a4,92
   1507a:	0015959b          	sllw	a1,a1,0x1
   1507e:	05b7069b          	addw	a3,a4,91
   15082:	058e                	sll	a1,a1,0x3
   15084:	95ce                	add	a1,a1,s3
   15086:	6198                	ld	a4,0(a1)
   15088:	15c1                	add	a1,a1,-16
   1508a:	00e59663          	bne	a1,a4,15096 <_malloc_r+0x2e6>
   1508e:	a40d                	j	152b0 <_malloc_r+0x500>
   15090:	6b18                	ld	a4,16(a4)
   15092:	00e58663          	beq	a1,a4,1509e <_malloc_r+0x2ee>
   15096:	6714                	ld	a3,8(a4)
   15098:	9af1                	and	a3,a3,-4
   1509a:	fed7ebe3          	bltu	a5,a3,15090 <_malloc_r+0x2e0>
   1509e:	6f0c                	ld	a1,24(a4)
   150a0:	ec0c                	sd	a1,24(s0)
   150a2:	e818                	sd	a4,16(s0)
   150a4:	e980                	sd	s0,16(a1)
   150a6:	ef00                	sd	s0,24(a4)
   150a8:	b585                	j	14f08 <_malloc_r+0x158>
   150aa:	4751                	li	a4,20
   150ac:	0ef77863          	bgeu	a4,a5,1519c <_malloc_r+0x3ec>
   150b0:	05400713          	li	a4,84
   150b4:	24f76563          	bltu	a4,a5,152fe <_malloc_r+0x54e>
   150b8:	00c4d793          	srl	a5,s1,0xc
   150bc:	06f7861b          	addw	a2,a5,111 # fffffffffffff06f <__BSS_END__+0xfffffffffffdf4ff>
   150c0:	0016169b          	sllw	a3,a2,0x1
   150c4:	06e7851b          	addw	a0,a5,110
   150c8:	068e                	sll	a3,a3,0x3
   150ca:	b37d                	j	14e78 <_malloc_r+0xc8>
   150cc:	2e05                	addw	t3,t3,1
   150ce:	003e7793          	and	a5,t3,3
   150d2:	0541                	add	a0,a0,16
   150d4:	c3ed                	beqz	a5,151b6 <_malloc_r+0x406>
   150d6:	6d1c                	ld	a5,24(a0)
   150d8:	bd85                	j	14f48 <_malloc_r+0x198>
   150da:	6810                	ld	a2,16(s0)
   150dc:	0014e593          	or	a1,s1,1
   150e0:	e40c                	sd	a1,8(s0)
   150e2:	ee1c                	sd	a5,24(a2)
   150e4:	eb90                	sd	a2,16(a5)
   150e6:	94a2                	add	s1,s1,s0
   150e8:	0299b423          	sd	s1,40(s3)
   150ec:	0299b023          	sd	s1,32(s3)
   150f0:	0016e793          	or	a5,a3,1
   150f4:	0114bc23          	sd	a7,24(s1)
   150f8:	0114b823          	sd	a7,16(s1)
   150fc:	e49c                	sd	a5,8(s1)
   150fe:	9722                	add	a4,a4,s0
   15100:	854a                	mv	a0,s2
   15102:	e314                	sd	a3,0(a4)
   15104:	33a000ef          	jal	1543e <__malloc_unlock>
   15108:	01040513          	add	a0,s0,16
   1510c:	bb11                	j	14e20 <_malloc_r+0x70>
   1510e:	97a2                	add	a5,a5,s0
   15110:	6798                	ld	a4,8(a5)
   15112:	854a                	mv	a0,s2
   15114:	00176713          	or	a4,a4,1
   15118:	e798                	sd	a4,8(a5)
   1511a:	324000ef          	jal	1543e <__malloc_unlock>
   1511e:	01040513          	add	a0,s0,16
   15122:	b9fd                	j	14e20 <_malloc_r+0x70>
   15124:	0014e693          	or	a3,s1,1
   15128:	e414                	sd	a3,8(s0)
   1512a:	94a2                	add	s1,s1,s0
   1512c:	0299b423          	sd	s1,40(s3)
   15130:	0299b023          	sd	s1,32(s3)
   15134:	00176693          	or	a3,a4,1
   15138:	0114bc23          	sd	a7,24(s1)
   1513c:	0114b823          	sd	a7,16(s1)
   15140:	e494                	sd	a3,8(s1)
   15142:	97a2                	add	a5,a5,s0
   15144:	854a                	mv	a0,s2
   15146:	e398                	sd	a4,0(a5)
   15148:	2f6000ef          	jal	1543e <__malloc_unlock>
   1514c:	01040513          	add	a0,s0,16
   15150:	b9c1                	j	14e20 <_malloc_r+0x70>
   15152:	0034d613          	srl	a2,s1,0x3
   15156:	0016079b          	addw	a5,a2,1
   1515a:	0017979b          	sllw	a5,a5,0x1
   1515e:	2601                	sext.w	a2,a2
   15160:	078e                	sll	a5,a5,0x3
   15162:	b169                	j	14dec <_malloc_r+0x3c>
   15164:	0067d713          	srl	a4,a5,0x6
   15168:	0397059b          	addw	a1,a4,57
   1516c:	0015959b          	sllw	a1,a1,0x1
   15170:	0387069b          	addw	a3,a4,56
   15174:	058e                	sll	a1,a1,0x3
   15176:	b739                	j	15084 <_malloc_r+0x2d4>
   15178:	07340963          	beq	s0,s3,151ea <_malloc_r+0x43a>
   1517c:	0109b403          	ld	s0,16(s3)
   15180:	641c                	ld	a5,8(s0)
   15182:	9bf1                	and	a5,a5,-4
   15184:	40978733          	sub	a4,a5,s1
   15188:	0097e563          	bltu	a5,s1,15192 <_malloc_r+0x3e2>
   1518c:	47fd                	li	a5,31
   1518e:	eae7c2e3          	blt	a5,a4,15032 <_malloc_r+0x282>
   15192:	854a                	mv	a0,s2
   15194:	2aa000ef          	jal	1543e <__malloc_unlock>
   15198:	4501                	li	a0,0
   1519a:	b159                	j	14e20 <_malloc_r+0x70>
   1519c:	05c7861b          	addw	a2,a5,92
   151a0:	0016169b          	sllw	a3,a2,0x1
   151a4:	05b7851b          	addw	a0,a5,91
   151a8:	068e                	sll	a3,a3,0x3
   151aa:	b1f9                	j	14e78 <_malloc_r+0xc8>
   151ac:	01033783          	ld	a5,16(t1)
   151b0:	367d                	addw	a2,a2,-1
   151b2:	1e679763          	bne	a5,t1,153a0 <_malloc_r+0x5f0>
   151b6:	00367793          	and	a5,a2,3
   151ba:	1341                	add	t1,t1,-16
   151bc:	fbe5                	bnez	a5,151ac <_malloc_r+0x3fc>
   151be:	0089b703          	ld	a4,8(s3)
   151c2:	fff5c793          	not	a5,a1
   151c6:	8ff9                	and	a5,a5,a4
   151c8:	00f9b423          	sd	a5,8(s3)
   151cc:	0586                	sll	a1,a1,0x1
   151ce:	dcb7e3e3          	bltu	a5,a1,14f94 <_malloc_r+0x1e4>
   151d2:	dc0581e3          	beqz	a1,14f94 <_malloc_r+0x1e4>
   151d6:	00f5f733          	and	a4,a1,a5
   151da:	e711                	bnez	a4,151e6 <_malloc_r+0x436>
   151dc:	0586                	sll	a1,a1,0x1
   151de:	00f5f733          	and	a4,a1,a5
   151e2:	2e11                	addw	t3,t3,4
   151e4:	df65                	beqz	a4,151dc <_malloc_r+0x42c>
   151e6:	8672                	mv	a2,t3
   151e8:	b3b1                	j	14f34 <_malloc_r+0x184>
   151ea:	0000bc17          	auipc	s8,0xb
   151ee:	95ec0c13          	add	s8,s8,-1698 # 1fb48 <__malloc_current_mallinfo>
   151f2:	000c2783          	lw	a5,0(s8)
   151f6:	014786bb          	addw	a3,a5,s4
   151fa:	00dc2023          	sw	a3,0(s8)
   151fe:	000cb703          	ld	a4,0(s9)
   15202:	57fd                	li	a5,-1
   15204:	10f70b63          	beq	a4,a5,1531a <_malloc_r+0x56a>
   15208:	417b07b3          	sub	a5,s6,s7
   1520c:	9fb5                	addw	a5,a5,a3
   1520e:	00fc2023          	sw	a5,0(s8)
   15212:	00fb7c93          	and	s9,s6,15
   15216:	0a0c8663          	beqz	s9,152c2 <_malloc_r+0x512>
   1521a:	6705                	lui	a4,0x1
   1521c:	419b0b33          	sub	s6,s6,s9
   15220:	01070b93          	add	s7,a4,16 # 1010 <exit-0xf0d8>
   15224:	0b41                	add	s6,s6,16
   15226:	419b8bb3          	sub	s7,s7,s9
   1522a:	9a5a                	add	s4,s4,s6
   1522c:	177d                	add	a4,a4,-1
   1522e:	414b8bb3          	sub	s7,s7,s4
   15232:	00ebfbb3          	and	s7,s7,a4
   15236:	85de                	mv	a1,s7
   15238:	854a                	mv	a0,s2
   1523a:	75b000ef          	jal	16194 <_sbrk_r>
   1523e:	57fd                	li	a5,-1
   15240:	12f50063          	beq	a0,a5,15360 <_malloc_r+0x5b0>
   15244:	41650533          	sub	a0,a0,s6
   15248:	000b869b          	sext.w	a3,s7
   1524c:	01750a33          	add	s4,a0,s7
   15250:	000c2703          	lw	a4,0(s8)
   15254:	0169b823          	sd	s6,16(s3)
   15258:	001a6793          	or	a5,s4,1
   1525c:	9f35                	addw	a4,a4,a3
   1525e:	00ec2023          	sw	a4,0(s8)
   15262:	00fb3423          	sd	a5,8(s6)
   15266:	db3408e3          	beq	s0,s3,15016 <_malloc_r+0x266>
   1526a:	467d                	li	a2,31
   1526c:	0b567a63          	bgeu	a2,s5,15320 <_malloc_r+0x570>
   15270:	6414                	ld	a3,8(s0)
   15272:	fe8a8793          	add	a5,s5,-24
   15276:	9bc1                	and	a5,a5,-16
   15278:	8a85                	and	a3,a3,1
   1527a:	8edd                	or	a3,a3,a5
   1527c:	e414                	sd	a3,8(s0)
   1527e:	45a5                	li	a1,9
   15280:	00f406b3          	add	a3,s0,a5
   15284:	e68c                	sd	a1,8(a3)
   15286:	ea8c                	sd	a1,16(a3)
   15288:	00f66563          	bltu	a2,a5,15292 <_malloc_r+0x4e2>
   1528c:	008b3783          	ld	a5,8(s6)
   15290:	b359                	j	15016 <_malloc_r+0x266>
   15292:	01040593          	add	a1,s0,16
   15296:	854a                	mv	a0,s2
   15298:	cd2fd0ef          	jal	1276a <_free_r>
   1529c:	0109bb03          	ld	s6,16(s3)
   152a0:	000c2703          	lw	a4,0(s8)
   152a4:	008b3783          	ld	a5,8(s6)
   152a8:	b3bd                	j	15016 <_malloc_r+0x266>
   152aa:	020a0a13          	add	s4,s4,32
   152ae:	b30d                	j	14fd0 <_malloc_r+0x220>
   152b0:	4026d69b          	sraw	a3,a3,0x2
   152b4:	4785                	li	a5,1
   152b6:	00d797b3          	sll	a5,a5,a3
   152ba:	8d5d                	or	a0,a0,a5
   152bc:	00a9b423          	sd	a0,8(s3)
   152c0:	b3c5                	j	150a0 <_malloc_r+0x2f0>
   152c2:	014b0bb3          	add	s7,s6,s4
   152c6:	41700bb3          	neg	s7,s7
   152ca:	1bd2                	sll	s7,s7,0x34
   152cc:	034bdb93          	srl	s7,s7,0x34
   152d0:	85de                	mv	a1,s7
   152d2:	854a                	mv	a0,s2
   152d4:	6c1000ef          	jal	16194 <_sbrk_r>
   152d8:	57fd                	li	a5,-1
   152da:	4681                	li	a3,0
   152dc:	f6f514e3          	bne	a0,a5,15244 <_malloc_r+0x494>
   152e0:	bf85                	j	15250 <_malloc_r+0x4a0>
   152e2:	05400693          	li	a3,84
   152e6:	04e6e163          	bltu	a3,a4,15328 <_malloc_r+0x578>
   152ea:	00c7d713          	srl	a4,a5,0xc
   152ee:	06f7059b          	addw	a1,a4,111
   152f2:	0015959b          	sllw	a1,a1,0x1
   152f6:	06e7069b          	addw	a3,a4,110
   152fa:	058e                	sll	a1,a1,0x3
   152fc:	b361                	j	15084 <_malloc_r+0x2d4>
   152fe:	15400713          	li	a4,340
   15302:	04f76163          	bltu	a4,a5,15344 <_malloc_r+0x594>
   15306:	00f4d793          	srl	a5,s1,0xf
   1530a:	0787861b          	addw	a2,a5,120
   1530e:	0016169b          	sllw	a3,a2,0x1
   15312:	0777851b          	addw	a0,a5,119
   15316:	068e                	sll	a3,a3,0x3
   15318:	b685                	j	14e78 <_malloc_r+0xc8>
   1531a:	016cb023          	sd	s6,0(s9)
   1531e:	bdd5                	j	15212 <_malloc_r+0x462>
   15320:	4785                	li	a5,1
   15322:	00fb3423          	sd	a5,8(s6)
   15326:	b5b5                	j	15192 <_malloc_r+0x3e2>
   15328:	15400693          	li	a3,340
   1532c:	04e6e063          	bltu	a3,a4,1536c <_malloc_r+0x5bc>
   15330:	00f7d713          	srl	a4,a5,0xf
   15334:	0787059b          	addw	a1,a4,120
   15338:	0015959b          	sllw	a1,a1,0x1
   1533c:	0777069b          	addw	a3,a4,119
   15340:	058e                	sll	a1,a1,0x3
   15342:	b389                	j	15084 <_malloc_r+0x2d4>
   15344:	55400713          	li	a4,1364
   15348:	04f76063          	bltu	a4,a5,15388 <_malloc_r+0x5d8>
   1534c:	0124d793          	srl	a5,s1,0x12
   15350:	07d7861b          	addw	a2,a5,125
   15354:	0016169b          	sllw	a3,a2,0x1
   15358:	07c7851b          	addw	a0,a5,124
   1535c:	068e                	sll	a3,a3,0x3
   1535e:	be29                	j	14e78 <_malloc_r+0xc8>
   15360:	1cc1                	add	s9,s9,-16
   15362:	9a66                	add	s4,s4,s9
   15364:	416a0a33          	sub	s4,s4,s6
   15368:	4681                	li	a3,0
   1536a:	b5dd                	j	15250 <_malloc_r+0x4a0>
   1536c:	55400693          	li	a3,1364
   15370:	02e6e363          	bltu	a3,a4,15396 <_malloc_r+0x5e6>
   15374:	0127d713          	srl	a4,a5,0x12
   15378:	07d7059b          	addw	a1,a4,125
   1537c:	0015959b          	sllw	a1,a1,0x1
   15380:	07c7069b          	addw	a3,a4,124
   15384:	058e                	sll	a1,a1,0x3
   15386:	b9fd                	j	15084 <_malloc_r+0x2d4>
   15388:	7f000693          	li	a3,2032
   1538c:	07f00613          	li	a2,127
   15390:	07e00513          	li	a0,126
   15394:	b4d5                	j	14e78 <_malloc_r+0xc8>
   15396:	7f000593          	li	a1,2032
   1539a:	07e00693          	li	a3,126
   1539e:	b1dd                	j	15084 <_malloc_r+0x2d4>
   153a0:	0089b783          	ld	a5,8(s3)
   153a4:	b525                	j	151cc <_malloc_r+0x41c>

00000000000153a6 <memchr>:
   153a6:	00757793          	and	a5,a0,7
   153aa:	0ff5f693          	zext.b	a3,a1
   153ae:	c785                	beqz	a5,153d6 <memchr+0x30>
   153b0:	fff60793          	add	a5,a2,-1
   153b4:	ce19                	beqz	a2,153d2 <memchr+0x2c>
   153b6:	567d                	li	a2,-1
   153b8:	a801                	j	153c8 <memchr+0x22>
   153ba:	0505                	add	a0,a0,1
   153bc:	00757713          	and	a4,a0,7
   153c0:	cf01                	beqz	a4,153d8 <memchr+0x32>
   153c2:	17fd                	add	a5,a5,-1
   153c4:	00c78763          	beq	a5,a2,153d2 <memchr+0x2c>
   153c8:	00054703          	lbu	a4,0(a0)
   153cc:	fed717e3          	bne	a4,a3,153ba <memchr+0x14>
   153d0:	8082                	ret
   153d2:	4501                	li	a0,0
   153d4:	8082                	ret
   153d6:	87b2                	mv	a5,a2
   153d8:	471d                	li	a4,7
   153da:	04f77563          	bgeu	a4,a5,15424 <memchr+0x7e>
   153de:	0ff5f593          	zext.b	a1,a1
   153e2:	00859713          	sll	a4,a1,0x8
   153e6:	972e                	add	a4,a4,a1
   153e8:	01071593          	sll	a1,a4,0x10
   153ec:	95ba                	add	a1,a1,a4
   153ee:	02059713          	sll	a4,a1,0x20
   153f2:	95ba                	add	a1,a1,a4
   153f4:	0000a897          	auipc	a7,0xa
   153f8:	68c8b883          	ld	a7,1676(a7) # 1fa80 <__SDATA_BEGIN__>
   153fc:	0000a817          	auipc	a6,0xa
   15400:	68c83803          	ld	a6,1676(a6) # 1fa88 <__SDATA_BEGIN__+0x8>
   15404:	431d                	li	t1,7
   15406:	a029                	j	15410 <memchr+0x6a>
   15408:	17e1                	add	a5,a5,-8
   1540a:	0521                	add	a0,a0,8
   1540c:	00f37c63          	bgeu	t1,a5,15424 <memchr+0x7e>
   15410:	6118                	ld	a4,0(a0)
   15412:	8f2d                	xor	a4,a4,a1
   15414:	01170633          	add	a2,a4,a7
   15418:	fff74713          	not	a4,a4
   1541c:	8f71                	and	a4,a4,a2
   1541e:	01077733          	and	a4,a4,a6
   15422:	d37d                	beqz	a4,15408 <memchr+0x62>
   15424:	00f50733          	add	a4,a0,a5
   15428:	e789                	bnez	a5,15432 <memchr+0x8c>
   1542a:	b765                	j	153d2 <memchr+0x2c>
   1542c:	0505                	add	a0,a0,1
   1542e:	faa702e3          	beq	a4,a0,153d2 <memchr+0x2c>
   15432:	00054783          	lbu	a5,0(a0)
   15436:	fed79be3          	bne	a5,a3,1542c <memchr+0x86>
   1543a:	8082                	ret

000000000001543c <__malloc_lock>:
   1543c:	8082                	ret

000000000001543e <__malloc_unlock>:
   1543e:	8082                	ret

0000000000015440 <_Balloc>:
   15440:	7d3c                	ld	a5,120(a0)
   15442:	1101                	add	sp,sp,-32
   15444:	e822                	sd	s0,16(sp)
   15446:	e426                	sd	s1,8(sp)
   15448:	ec06                	sd	ra,24(sp)
   1544a:	84aa                	mv	s1,a0
   1544c:	842e                	mv	s0,a1
   1544e:	cf99                	beqz	a5,1546c <_Balloc+0x2c>
   15450:	00341713          	sll	a4,s0,0x3
   15454:	97ba                	add	a5,a5,a4
   15456:	6388                	ld	a0,0(a5)
   15458:	c505                	beqz	a0,15480 <_Balloc+0x40>
   1545a:	6118                	ld	a4,0(a0)
   1545c:	e398                	sd	a4,0(a5)
   1545e:	00053823          	sd	zero,16(a0)
   15462:	60e2                	ld	ra,24(sp)
   15464:	6442                	ld	s0,16(sp)
   15466:	64a2                	ld	s1,8(sp)
   15468:	6105                	add	sp,sp,32
   1546a:	8082                	ret
   1546c:	04100613          	li	a2,65
   15470:	45a1                	li	a1,8
   15472:	3d5030ef          	jal	19046 <_calloc_r>
   15476:	fca8                	sd	a0,120(s1)
   15478:	87aa                	mv	a5,a0
   1547a:	f979                	bnez	a0,15450 <_Balloc+0x10>
   1547c:	4501                	li	a0,0
   1547e:	b7d5                	j	15462 <_Balloc+0x22>
   15480:	4785                	li	a5,1
   15482:	008797bb          	sllw	a5,a5,s0
   15486:	0007861b          	sext.w	a2,a5
   1548a:	061d                	add	a2,a2,7
   1548c:	1402                	sll	s0,s0,0x20
   1548e:	1782                	sll	a5,a5,0x20
   15490:	9001                	srl	s0,s0,0x20
   15492:	060a                	sll	a2,a2,0x2
   15494:	4585                	li	a1,1
   15496:	8526                	mv	a0,s1
   15498:	8c5d                	or	s0,s0,a5
   1549a:	3ad030ef          	jal	19046 <_calloc_r>
   1549e:	dd79                	beqz	a0,1547c <_Balloc+0x3c>
   154a0:	e500                	sd	s0,8(a0)
   154a2:	bf75                	j	1545e <_Balloc+0x1e>

00000000000154a4 <_Bfree>:
   154a4:	c981                	beqz	a1,154b4 <_Bfree+0x10>
   154a6:	4598                	lw	a4,8(a1)
   154a8:	7d3c                	ld	a5,120(a0)
   154aa:	070e                	sll	a4,a4,0x3
   154ac:	97ba                	add	a5,a5,a4
   154ae:	6398                	ld	a4,0(a5)
   154b0:	e198                	sd	a4,0(a1)
   154b2:	e38c                	sd	a1,0(a5)
   154b4:	8082                	ret

00000000000154b6 <__multadd>:
   154b6:	7179                	add	sp,sp,-48
   154b8:	f022                	sd	s0,32(sp)
   154ba:	49c0                	lw	s0,20(a1)
   154bc:	6341                	lui	t1,0x10
   154be:	e84a                	sd	s2,16(sp)
   154c0:	e44e                	sd	s3,8(sp)
   154c2:	f406                	sd	ra,40(sp)
   154c4:	ec26                	sd	s1,24(sp)
   154c6:	e052                	sd	s4,0(sp)
   154c8:	892e                	mv	s2,a1
   154ca:	89aa                	mv	s3,a0
   154cc:	01858813          	add	a6,a1,24
   154d0:	4881                	li	a7,0
   154d2:	137d                	add	t1,t1,-1 # ffff <exit-0xe9>
   154d4:	00082783          	lw	a5,0(a6)
   154d8:	0811                	add	a6,a6,4
   154da:	2885                	addw	a7,a7,1
   154dc:	0067f733          	and	a4,a5,t1
   154e0:	02c7073b          	mulw	a4,a4,a2
   154e4:	0107d79b          	srlw	a5,a5,0x10
   154e8:	02c787bb          	mulw	a5,a5,a2
   154ec:	9f35                	addw	a4,a4,a3
   154ee:	0107569b          	srlw	a3,a4,0x10
   154f2:	00e37733          	and	a4,t1,a4
   154f6:	9fb5                	addw	a5,a5,a3
   154f8:	0107969b          	sllw	a3,a5,0x10
   154fc:	9f35                	addw	a4,a4,a3
   154fe:	fee82e23          	sw	a4,-4(a6)
   15502:	0107d49b          	srlw	s1,a5,0x10
   15506:	0107d69b          	srlw	a3,a5,0x10
   1550a:	fc88c5e3          	blt	a7,s0,154d4 <__multadd+0x1e>
   1550e:	ce89                	beqz	a3,15528 <__multadd+0x72>
   15510:	00c92783          	lw	a5,12(s2)
   15514:	02f45363          	bge	s0,a5,1553a <__multadd+0x84>
   15518:	00440793          	add	a5,s0,4
   1551c:	078a                	sll	a5,a5,0x2
   1551e:	97ca                	add	a5,a5,s2
   15520:	c784                	sw	s1,8(a5)
   15522:	2405                	addw	s0,s0,1
   15524:	00892a23          	sw	s0,20(s2)
   15528:	70a2                	ld	ra,40(sp)
   1552a:	7402                	ld	s0,32(sp)
   1552c:	64e2                	ld	s1,24(sp)
   1552e:	69a2                	ld	s3,8(sp)
   15530:	6a02                	ld	s4,0(sp)
   15532:	854a                	mv	a0,s2
   15534:	6942                	ld	s2,16(sp)
   15536:	6145                	add	sp,sp,48
   15538:	8082                	ret
   1553a:	00892583          	lw	a1,8(s2)
   1553e:	854e                	mv	a0,s3
   15540:	2585                	addw	a1,a1,1
   15542:	effff0ef          	jal	15440 <_Balloc>
   15546:	8a2a                	mv	s4,a0
   15548:	cd1d                	beqz	a0,15586 <__multadd+0xd0>
   1554a:	01492603          	lw	a2,20(s2)
   1554e:	01090593          	add	a1,s2,16
   15552:	0541                	add	a0,a0,16
   15554:	0609                	add	a2,a2,2
   15556:	060a                	sll	a2,a2,0x2
   15558:	2aa040ef          	jal	19802 <memcpy>
   1555c:	00892703          	lw	a4,8(s2)
   15560:	0789b783          	ld	a5,120(s3)
   15564:	070e                	sll	a4,a4,0x3
   15566:	97ba                	add	a5,a5,a4
   15568:	6398                	ld	a4,0(a5)
   1556a:	00e93023          	sd	a4,0(s2)
   1556e:	0127b023          	sd	s2,0(a5)
   15572:	00440793          	add	a5,s0,4
   15576:	8952                	mv	s2,s4
   15578:	078a                	sll	a5,a5,0x2
   1557a:	97ca                	add	a5,a5,s2
   1557c:	c784                	sw	s1,8(a5)
   1557e:	2405                	addw	s0,s0,1
   15580:	00892a23          	sw	s0,20(s2)
   15584:	b755                	j	15528 <__multadd+0x72>
   15586:	00007697          	auipc	a3,0x7
   1558a:	7ca68693          	add	a3,a3,1994 # 1cd50 <blanks.1+0x70>
   1558e:	4601                	li	a2,0
   15590:	0b500593          	li	a1,181
   15594:	00008517          	auipc	a0,0x8
   15598:	aa450513          	add	a0,a0,-1372 # 1d038 <ezero+0x18>
   1559c:	25f030ef          	jal	18ffa <__assert_func>

00000000000155a0 <__s2b>:
   155a0:	7139                	add	sp,sp,-64
   155a2:	f822                	sd	s0,48(sp)
   155a4:	f426                	sd	s1,40(sp)
   155a6:	f04a                	sd	s2,32(sp)
   155a8:	ec4e                	sd	s3,24(sp)
   155aa:	e852                	sd	s4,16(sp)
   155ac:	84b6                	mv	s1,a3
   155ae:	842e                	mv	s0,a1
   155b0:	26a1                	addw	a3,a3,8
   155b2:	45a5                	li	a1,9
   155b4:	fc06                	sd	ra,56(sp)
   155b6:	e456                	sd	s5,8(sp)
   155b8:	e05a                	sd	s6,0(sp)
   155ba:	47a5                	li	a5,9
   155bc:	02b6c6bb          	divw	a3,a3,a1
   155c0:	892a                	mv	s2,a0
   155c2:	8a32                	mv	s4,a2
   155c4:	89ba                	mv	s3,a4
   155c6:	0a97d163          	bge	a5,s1,15668 <__s2b+0xc8>
   155ca:	4785                	li	a5,1
   155cc:	4581                	li	a1,0
   155ce:	0017979b          	sllw	a5,a5,0x1
   155d2:	2585                	addw	a1,a1,1
   155d4:	fed7cde3          	blt	a5,a3,155ce <__s2b+0x2e>
   155d8:	854a                	mv	a0,s2
   155da:	e67ff0ef          	jal	15440 <_Balloc>
   155de:	85aa                	mv	a1,a0
   155e0:	c551                	beqz	a0,1566c <__s2b+0xcc>
   155e2:	4785                	li	a5,1
   155e4:	c95c                	sw	a5,20(a0)
   155e6:	01352c23          	sw	s3,24(a0)
   155ea:	47a5                	li	a5,9
   155ec:	0747db63          	bge	a5,s4,15662 <__s2b+0xc2>
   155f0:	020a1793          	sll	a5,s4,0x20
   155f4:	00940b13          	add	s6,s0,9
   155f8:	9381                	srl	a5,a5,0x20
   155fa:	000a0a9b          	sext.w	s5,s4
   155fe:	943e                	add	s0,s0,a5
   15600:	89da                	mv	s3,s6
   15602:	0009c683          	lbu	a3,0(s3)
   15606:	4629                	li	a2,10
   15608:	854a                	mv	a0,s2
   1560a:	fd06869b          	addw	a3,a3,-48
   1560e:	ea9ff0ef          	jal	154b6 <__multadd>
   15612:	0985                	add	s3,s3,1
   15614:	85aa                	mv	a1,a0
   15616:	fe8996e3          	bne	s3,s0,15602 <__s2b+0x62>
   1561a:	3ae1                	addw	s5,s5,-8
   1561c:	1a82                	sll	s5,s5,0x20
   1561e:	020ada93          	srl	s5,s5,0x20
   15622:	015b0433          	add	s0,s6,s5
   15626:	029a5363          	bge	s4,s1,1564c <__s2b+0xac>
   1562a:	414484bb          	subw	s1,s1,s4
   1562e:	1482                	sll	s1,s1,0x20
   15630:	9081                	srl	s1,s1,0x20
   15632:	94a2                	add	s1,s1,s0
   15634:	00044683          	lbu	a3,0(s0)
   15638:	4629                	li	a2,10
   1563a:	854a                	mv	a0,s2
   1563c:	fd06869b          	addw	a3,a3,-48
   15640:	e77ff0ef          	jal	154b6 <__multadd>
   15644:	0405                	add	s0,s0,1
   15646:	85aa                	mv	a1,a0
   15648:	fe9416e3          	bne	s0,s1,15634 <__s2b+0x94>
   1564c:	70e2                	ld	ra,56(sp)
   1564e:	7442                	ld	s0,48(sp)
   15650:	74a2                	ld	s1,40(sp)
   15652:	7902                	ld	s2,32(sp)
   15654:	69e2                	ld	s3,24(sp)
   15656:	6a42                	ld	s4,16(sp)
   15658:	6aa2                	ld	s5,8(sp)
   1565a:	6b02                	ld	s6,0(sp)
   1565c:	852e                	mv	a0,a1
   1565e:	6121                	add	sp,sp,64
   15660:	8082                	ret
   15662:	0429                	add	s0,s0,10
   15664:	4a25                	li	s4,9
   15666:	b7c1                	j	15626 <__s2b+0x86>
   15668:	4581                	li	a1,0
   1566a:	b7bd                	j	155d8 <__s2b+0x38>
   1566c:	00007697          	auipc	a3,0x7
   15670:	6e468693          	add	a3,a3,1764 # 1cd50 <blanks.1+0x70>
   15674:	4601                	li	a2,0
   15676:	0ce00593          	li	a1,206
   1567a:	00008517          	auipc	a0,0x8
   1567e:	9be50513          	add	a0,a0,-1602 # 1d038 <ezero+0x18>
   15682:	179030ef          	jal	18ffa <__assert_func>

0000000000015686 <__hi0bits>:
   15686:	87aa                	mv	a5,a0
   15688:	6741                	lui	a4,0x10
   1568a:	4501                	li	a0,0
   1568c:	00e7f563          	bgeu	a5,a4,15696 <__hi0bits+0x10>
   15690:	0107979b          	sllw	a5,a5,0x10
   15694:	4541                	li	a0,16
   15696:	01000737          	lui	a4,0x1000
   1569a:	00e7f563          	bgeu	a5,a4,156a4 <__hi0bits+0x1e>
   1569e:	0087979b          	sllw	a5,a5,0x8
   156a2:	2521                	addw	a0,a0,8
   156a4:	10000737          	lui	a4,0x10000
   156a8:	00e7f563          	bgeu	a5,a4,156b2 <__hi0bits+0x2c>
   156ac:	0047979b          	sllw	a5,a5,0x4
   156b0:	2511                	addw	a0,a0,4
   156b2:	40000737          	lui	a4,0x40000
   156b6:	00e7e663          	bltu	a5,a4,156c2 <__hi0bits+0x3c>
   156ba:	0207c063          	bltz	a5,156da <__hi0bits+0x54>
   156be:	2505                	addw	a0,a0,1
   156c0:	8082                	ret
   156c2:	0027979b          	sllw	a5,a5,0x2
   156c6:	0007871b          	sext.w	a4,a5
   156ca:	00074963          	bltz	a4,156dc <__hi0bits+0x56>
   156ce:	40000737          	lui	a4,0x40000
   156d2:	8ff9                	and	a5,a5,a4
   156d4:	e791                	bnez	a5,156e0 <__hi0bits+0x5a>
   156d6:	02000513          	li	a0,32
   156da:	8082                	ret
   156dc:	2509                	addw	a0,a0,2
   156de:	8082                	ret
   156e0:	250d                	addw	a0,a0,3
   156e2:	8082                	ret

00000000000156e4 <__lo0bits>:
   156e4:	411c                	lw	a5,0(a0)
   156e6:	872a                	mv	a4,a0
   156e8:	0077f693          	and	a3,a5,7
   156ec:	863e                	mv	a2,a5
   156ee:	ce81                	beqz	a3,15706 <__lo0bits+0x22>
   156f0:	0017f693          	and	a3,a5,1
   156f4:	4501                	li	a0,0
   156f6:	ee9d                	bnez	a3,15734 <__lo0bits+0x50>
   156f8:	8a09                	and	a2,a2,2
   156fa:	ce25                	beqz	a2,15772 <__lo0bits+0x8e>
   156fc:	0017d79b          	srlw	a5,a5,0x1
   15700:	c31c                	sw	a5,0(a4)
   15702:	4505                	li	a0,1
   15704:	8082                	ret
   15706:	03079693          	sll	a3,a5,0x30
   1570a:	92c1                	srl	a3,a3,0x30
   1570c:	4501                	li	a0,0
   1570e:	cab9                	beqz	a3,15764 <__lo0bits+0x80>
   15710:	0ff7f693          	zext.b	a3,a5
   15714:	c2a9                	beqz	a3,15756 <__lo0bits+0x72>
   15716:	00f7f693          	and	a3,a5,15
   1571a:	c69d                	beqz	a3,15748 <__lo0bits+0x64>
   1571c:	0037f693          	and	a3,a5,3
   15720:	ce89                	beqz	a3,1573a <__lo0bits+0x56>
   15722:	0017f693          	and	a3,a5,1
   15726:	ea81                	bnez	a3,15736 <__lo0bits+0x52>
   15728:	0017d79b          	srlw	a5,a5,0x1
   1572c:	2505                	addw	a0,a0,1
   1572e:	e781                	bnez	a5,15736 <__lo0bits+0x52>
   15730:	02000513          	li	a0,32
   15734:	8082                	ret
   15736:	c31c                	sw	a5,0(a4)
   15738:	8082                	ret
   1573a:	0027d79b          	srlw	a5,a5,0x2
   1573e:	0017f693          	and	a3,a5,1
   15742:	2509                	addw	a0,a0,2
   15744:	faed                	bnez	a3,15736 <__lo0bits+0x52>
   15746:	b7cd                	j	15728 <__lo0bits+0x44>
   15748:	0047d79b          	srlw	a5,a5,0x4
   1574c:	0037f693          	and	a3,a5,3
   15750:	2511                	addw	a0,a0,4
   15752:	fae1                	bnez	a3,15722 <__lo0bits+0x3e>
   15754:	b7dd                	j	1573a <__lo0bits+0x56>
   15756:	0087d79b          	srlw	a5,a5,0x8
   1575a:	00f7f693          	and	a3,a5,15
   1575e:	2521                	addw	a0,a0,8
   15760:	fed5                	bnez	a3,1571c <__lo0bits+0x38>
   15762:	b7dd                	j	15748 <__lo0bits+0x64>
   15764:	0107d79b          	srlw	a5,a5,0x10
   15768:	0ff7f693          	zext.b	a3,a5
   1576c:	4541                	li	a0,16
   1576e:	f6c5                	bnez	a3,15716 <__lo0bits+0x32>
   15770:	b7dd                	j	15756 <__lo0bits+0x72>
   15772:	0027d79b          	srlw	a5,a5,0x2
   15776:	c31c                	sw	a5,0(a4)
   15778:	4509                	li	a0,2
   1577a:	8082                	ret

000000000001577c <__i2b>:
   1577c:	7d3c                	ld	a5,120(a0)
   1577e:	1101                	add	sp,sp,-32
   15780:	e822                	sd	s0,16(sp)
   15782:	e426                	sd	s1,8(sp)
   15784:	ec06                	sd	ra,24(sp)
   15786:	842a                	mv	s0,a0
   15788:	84ae                	mv	s1,a1
   1578a:	cf91                	beqz	a5,157a6 <__i2b+0x2a>
   1578c:	6788                	ld	a0,8(a5)
   1578e:	c129                	beqz	a0,157d0 <__i2b+0x54>
   15790:	6118                	ld	a4,0(a0)
   15792:	e798                	sd	a4,8(a5)
   15794:	60e2                	ld	ra,24(sp)
   15796:	6442                	ld	s0,16(sp)
   15798:	4785                	li	a5,1
   1579a:	1782                	sll	a5,a5,0x20
   1579c:	cd04                	sw	s1,24(a0)
   1579e:	e91c                	sd	a5,16(a0)
   157a0:	64a2                	ld	s1,8(sp)
   157a2:	6105                	add	sp,sp,32
   157a4:	8082                	ret
   157a6:	04100613          	li	a2,65
   157aa:	45a1                	li	a1,8
   157ac:	09b030ef          	jal	19046 <_calloc_r>
   157b0:	fc28                	sd	a0,120(s0)
   157b2:	87aa                	mv	a5,a0
   157b4:	fd61                	bnez	a0,1578c <__i2b+0x10>
   157b6:	00007697          	auipc	a3,0x7
   157ba:	59a68693          	add	a3,a3,1434 # 1cd50 <blanks.1+0x70>
   157be:	4601                	li	a2,0
   157c0:	14000593          	li	a1,320
   157c4:	00008517          	auipc	a0,0x8
   157c8:	87450513          	add	a0,a0,-1932 # 1d038 <ezero+0x18>
   157cc:	02f030ef          	jal	18ffa <__assert_func>
   157d0:	02400613          	li	a2,36
   157d4:	4585                	li	a1,1
   157d6:	8522                	mv	a0,s0
   157d8:	06f030ef          	jal	19046 <_calloc_r>
   157dc:	dd69                	beqz	a0,157b6 <__i2b+0x3a>
   157de:	4785                	li	a5,1
   157e0:	1786                	sll	a5,a5,0x21
   157e2:	0785                	add	a5,a5,1
   157e4:	e51c                	sd	a5,8(a0)
   157e6:	b77d                	j	15794 <__i2b+0x18>

00000000000157e8 <__multiply>:
   157e8:	7179                	add	sp,sp,-48
   157ea:	e84a                	sd	s2,16(sp)
   157ec:	e44e                	sd	s3,8(sp)
   157ee:	01462903          	lw	s2,20(a2)
   157f2:	0145a983          	lw	s3,20(a1)
   157f6:	ec26                	sd	s1,24(sp)
   157f8:	e052                	sd	s4,0(sp)
   157fa:	f406                	sd	ra,40(sp)
   157fc:	f022                	sd	s0,32(sp)
   157fe:	8a2e                	mv	s4,a1
   15800:	84b2                	mv	s1,a2
   15802:	0129c763          	blt	s3,s2,15810 <__multiply+0x28>
   15806:	87ca                	mv	a5,s2
   15808:	84ae                	mv	s1,a1
   1580a:	894e                	mv	s2,s3
   1580c:	8a32                	mv	s4,a2
   1580e:	89be                	mv	s3,a5
   15810:	44dc                	lw	a5,12(s1)
   15812:	0139043b          	addw	s0,s2,s3
   15816:	448c                	lw	a1,8(s1)
   15818:	0087d363          	bge	a5,s0,1581e <__multiply+0x36>
   1581c:	2585                	addw	a1,a1,1
   1581e:	c23ff0ef          	jal	15440 <_Balloc>
   15822:	14050c63          	beqz	a0,1597a <__multiply+0x192>
   15826:	01850313          	add	t1,a0,24
   1582a:	00241893          	sll	a7,s0,0x2
   1582e:	989a                	add	a7,a7,t1
   15830:	879a                	mv	a5,t1
   15832:	01137763          	bgeu	t1,a7,15840 <__multiply+0x58>
   15836:	0007a023          	sw	zero,0(a5)
   1583a:	0791                	add	a5,a5,4
   1583c:	ff17ede3          	bltu	a5,a7,15836 <__multiply+0x4e>
   15840:	018a0813          	add	a6,s4,24
   15844:	00299e13          	sll	t3,s3,0x2
   15848:	01848e93          	add	t4,s1,24
   1584c:	00291593          	sll	a1,s2,0x2
   15850:	9e42                	add	t3,t3,a6
   15852:	95f6                	add	a1,a1,t4
   15854:	0fc87a63          	bgeu	a6,t3,15948 <__multiply+0x160>
   15858:	01948793          	add	a5,s1,25
   1585c:	4f11                	li	t5,4
   1585e:	10f5f763          	bgeu	a1,a5,1596c <__multiply+0x184>
   15862:	66c1                	lui	a3,0x10
   15864:	16fd                	add	a3,a3,-1 # ffff <exit-0xe9>
   15866:	a809                	j	15878 <__multiply+0x90>
   15868:	010fdf9b          	srlw	t6,t6,0x10
   1586c:	060f9d63          	bnez	t6,158e6 <__multiply+0xfe>
   15870:	0811                	add	a6,a6,4
   15872:	0311                	add	t1,t1,4
   15874:	0dc87a63          	bgeu	a6,t3,15948 <__multiply+0x160>
   15878:	00082f83          	lw	t6,0(a6)
   1587c:	00dff3b3          	and	t2,t6,a3
   15880:	fe0384e3          	beqz	t2,15868 <__multiply+0x80>
   15884:	829a                	mv	t0,t1
   15886:	8ff6                	mv	t6,t4
   15888:	4481                	li	s1,0
   1588a:	000fa783          	lw	a5,0(t6)
   1588e:	0002a603          	lw	a2,0(t0) # 102ee <memset+0x90>
   15892:	0291                	add	t0,t0,4
   15894:	00d7f733          	and	a4,a5,a3
   15898:	0277073b          	mulw	a4,a4,t2
   1589c:	0107d79b          	srlw	a5,a5,0x10
   158a0:	00d67933          	and	s2,a2,a3
   158a4:	0106561b          	srlw	a2,a2,0x10
   158a8:	0f91                	add	t6,t6,4
   158aa:	027787bb          	mulw	a5,a5,t2
   158ae:	0127073b          	addw	a4,a4,s2
   158b2:	9f25                	addw	a4,a4,s1
   158b4:	0107549b          	srlw	s1,a4,0x10
   158b8:	8f75                	and	a4,a4,a3
   158ba:	9fb1                	addw	a5,a5,a2
   158bc:	9fa5                	addw	a5,a5,s1
   158be:	0107961b          	sllw	a2,a5,0x10
   158c2:	8f51                	or	a4,a4,a2
   158c4:	fee2ae23          	sw	a4,-4(t0)
   158c8:	0107d49b          	srlw	s1,a5,0x10
   158cc:	0107d71b          	srlw	a4,a5,0x10
   158d0:	fabfede3          	bltu	t6,a1,1588a <__multiply+0xa2>
   158d4:	01e307b3          	add	a5,t1,t5
   158d8:	c398                	sw	a4,0(a5)
   158da:	00082f83          	lw	t6,0(a6)
   158de:	010fdf9b          	srlw	t6,t6,0x10
   158e2:	f80f87e3          	beqz	t6,15870 <__multiply+0x88>
   158e6:	00032703          	lw	a4,0(t1)
   158ea:	829a                	mv	t0,t1
   158ec:	8676                	mv	a2,t4
   158ee:	83ba                	mv	t2,a4
   158f0:	4481                	li	s1,0
   158f2:	421c                	lw	a5,0(a2)
   158f4:	0103d99b          	srlw	s3,t2,0x10
   158f8:	8f75                	and	a4,a4,a3
   158fa:	8ff5                	and	a5,a5,a3
   158fc:	03f787bb          	mulw	a5,a5,t6
   15900:	0042a383          	lw	t2,4(t0)
   15904:	0291                	add	t0,t0,4
   15906:	0611                	add	a2,a2,4
   15908:	00d3f933          	and	s2,t2,a3
   1590c:	9fa5                	addw	a5,a5,s1
   1590e:	013787bb          	addw	a5,a5,s3
   15912:	0107949b          	sllw	s1,a5,0x10
   15916:	8f45                	or	a4,a4,s1
   15918:	fee2ae23          	sw	a4,-4(t0)
   1591c:	ffe65703          	lhu	a4,-2(a2)
   15920:	0107d79b          	srlw	a5,a5,0x10
   15924:	03f7073b          	mulw	a4,a4,t6
   15928:	0127073b          	addw	a4,a4,s2
   1592c:	9fb9                	addw	a5,a5,a4
   1592e:	0007871b          	sext.w	a4,a5
   15932:	0107d49b          	srlw	s1,a5,0x10
   15936:	fab66ee3          	bltu	a2,a1,158f2 <__multiply+0x10a>
   1593a:	01e30733          	add	a4,t1,t5
   1593e:	c31c                	sw	a5,0(a4)
   15940:	0811                	add	a6,a6,4
   15942:	0311                	add	t1,t1,4
   15944:	f3c86ae3          	bltu	a6,t3,15878 <__multiply+0x90>
   15948:	00804563          	bgtz	s0,15952 <__multiply+0x16a>
   1594c:	a039                	j	1595a <__multiply+0x172>
   1594e:	347d                	addw	s0,s0,-1
   15950:	c409                	beqz	s0,1595a <__multiply+0x172>
   15952:	ffc8a783          	lw	a5,-4(a7)
   15956:	18f1                	add	a7,a7,-4
   15958:	dbfd                	beqz	a5,1594e <__multiply+0x166>
   1595a:	70a2                	ld	ra,40(sp)
   1595c:	c940                	sw	s0,20(a0)
   1595e:	7402                	ld	s0,32(sp)
   15960:	64e2                	ld	s1,24(sp)
   15962:	6942                	ld	s2,16(sp)
   15964:	69a2                	ld	s3,8(sp)
   15966:	6a02                	ld	s4,0(sp)
   15968:	6145                	add	sp,sp,48
   1596a:	8082                	ret
   1596c:	409587b3          	sub	a5,a1,s1
   15970:	179d                	add	a5,a5,-25
   15972:	9bf1                	and	a5,a5,-4
   15974:	00478f13          	add	t5,a5,4
   15978:	b5ed                	j	15862 <__multiply+0x7a>
   1597a:	00007697          	auipc	a3,0x7
   1597e:	3d668693          	add	a3,a3,982 # 1cd50 <blanks.1+0x70>
   15982:	4601                	li	a2,0
   15984:	15d00593          	li	a1,349
   15988:	00007517          	auipc	a0,0x7
   1598c:	6b050513          	add	a0,a0,1712 # 1d038 <ezero+0x18>
   15990:	66a030ef          	jal	18ffa <__assert_func>

0000000000015994 <__pow5mult>:
   15994:	7179                	add	sp,sp,-48
   15996:	f022                	sd	s0,32(sp)
   15998:	e84a                	sd	s2,16(sp)
   1599a:	e44e                	sd	s3,8(sp)
   1599c:	f406                	sd	ra,40(sp)
   1599e:	ec26                	sd	s1,24(sp)
   159a0:	00367793          	and	a5,a2,3
   159a4:	8432                	mv	s0,a2
   159a6:	89aa                	mv	s3,a0
   159a8:	892e                	mv	s2,a1
   159aa:	eba5                	bnez	a5,15a1a <__pow5mult+0x86>
   159ac:	8409                	sra	s0,s0,0x2
   159ae:	c421                	beqz	s0,159f6 <__pow5mult+0x62>
   159b0:	0709b483          	ld	s1,112(s3)
   159b4:	c0c1                	beqz	s1,15a34 <__pow5mult+0xa0>
   159b6:	00147793          	and	a5,s0,1
   159ba:	eb89                	bnez	a5,159cc <__pow5mult+0x38>
   159bc:	8405                	sra	s0,s0,0x1
   159be:	cc05                	beqz	s0,159f6 <__pow5mult+0x62>
   159c0:	6088                	ld	a0,0(s1)
   159c2:	c131                	beqz	a0,15a06 <__pow5mult+0x72>
   159c4:	84aa                	mv	s1,a0
   159c6:	00147793          	and	a5,s0,1
   159ca:	dbed                	beqz	a5,159bc <__pow5mult+0x28>
   159cc:	8626                	mv	a2,s1
   159ce:	85ca                	mv	a1,s2
   159d0:	854e                	mv	a0,s3
   159d2:	e17ff0ef          	jal	157e8 <__multiply>
   159d6:	00090d63          	beqz	s2,159f0 <__pow5mult+0x5c>
   159da:	00892703          	lw	a4,8(s2)
   159de:	0789b783          	ld	a5,120(s3)
   159e2:	070e                	sll	a4,a4,0x3
   159e4:	97ba                	add	a5,a5,a4
   159e6:	6398                	ld	a4,0(a5)
   159e8:	00e93023          	sd	a4,0(s2)
   159ec:	0127b023          	sd	s2,0(a5)
   159f0:	8405                	sra	s0,s0,0x1
   159f2:	892a                	mv	s2,a0
   159f4:	f471                	bnez	s0,159c0 <__pow5mult+0x2c>
   159f6:	70a2                	ld	ra,40(sp)
   159f8:	7402                	ld	s0,32(sp)
   159fa:	64e2                	ld	s1,24(sp)
   159fc:	69a2                	ld	s3,8(sp)
   159fe:	854a                	mv	a0,s2
   15a00:	6942                	ld	s2,16(sp)
   15a02:	6145                	add	sp,sp,48
   15a04:	8082                	ret
   15a06:	8626                	mv	a2,s1
   15a08:	85a6                	mv	a1,s1
   15a0a:	854e                	mv	a0,s3
   15a0c:	dddff0ef          	jal	157e8 <__multiply>
   15a10:	e088                	sd	a0,0(s1)
   15a12:	00053023          	sd	zero,0(a0)
   15a16:	84aa                	mv	s1,a0
   15a18:	b77d                	j	159c6 <__pow5mult+0x32>
   15a1a:	37fd                	addw	a5,a5,-1
   15a1c:	00007717          	auipc	a4,0x7
   15a20:	67c70713          	add	a4,a4,1660 # 1d098 <p05.0>
   15a24:	078a                	sll	a5,a5,0x2
   15a26:	97ba                	add	a5,a5,a4
   15a28:	4390                	lw	a2,0(a5)
   15a2a:	4681                	li	a3,0
   15a2c:	a8bff0ef          	jal	154b6 <__multadd>
   15a30:	892a                	mv	s2,a0
   15a32:	bfad                	j	159ac <__pow5mult+0x18>
   15a34:	4585                	li	a1,1
   15a36:	854e                	mv	a0,s3
   15a38:	a09ff0ef          	jal	15440 <_Balloc>
   15a3c:	84aa                	mv	s1,a0
   15a3e:	c919                	beqz	a0,15a54 <__pow5mult+0xc0>
   15a40:	27100793          	li	a5,625
   15a44:	cd1c                	sw	a5,24(a0)
   15a46:	4785                	li	a5,1
   15a48:	c95c                	sw	a5,20(a0)
   15a4a:	06a9b823          	sd	a0,112(s3)
   15a4e:	00053023          	sd	zero,0(a0)
   15a52:	b795                	j	159b6 <__pow5mult+0x22>
   15a54:	00007697          	auipc	a3,0x7
   15a58:	2fc68693          	add	a3,a3,764 # 1cd50 <blanks.1+0x70>
   15a5c:	4601                	li	a2,0
   15a5e:	14000593          	li	a1,320
   15a62:	00007517          	auipc	a0,0x7
   15a66:	5d650513          	add	a0,a0,1494 # 1d038 <ezero+0x18>
   15a6a:	590030ef          	jal	18ffa <__assert_func>

0000000000015a6e <__lshift>:
   15a6e:	7139                	add	sp,sp,-64
   15a70:	f822                	sd	s0,48(sp)
   15a72:	49c0                	lw	s0,20(a1)
   15a74:	45dc                	lw	a5,12(a1)
   15a76:	e456                	sd	s5,8(sp)
   15a78:	40565a9b          	sraw	s5,a2,0x5
   15a7c:	008a843b          	addw	s0,s5,s0
   15a80:	f426                	sd	s1,40(sp)
   15a82:	f04a                	sd	s2,32(sp)
   15a84:	ec4e                	sd	s3,24(sp)
   15a86:	e852                	sd	s4,16(sp)
   15a88:	e05a                	sd	s6,0(sp)
   15a8a:	fc06                	sd	ra,56(sp)
   15a8c:	0014091b          	addw	s2,s0,1
   15a90:	84ae                	mv	s1,a1
   15a92:	8a32                	mv	s4,a2
   15a94:	458c                	lw	a1,8(a1)
   15a96:	89aa                	mv	s3,a0
   15a98:	40565b13          	sra	s6,a2,0x5
   15a9c:	0127d763          	bge	a5,s2,15aaa <__lshift+0x3c>
   15aa0:	0017979b          	sllw	a5,a5,0x1
   15aa4:	2585                	addw	a1,a1,1
   15aa6:	ff27cde3          	blt	a5,s2,15aa0 <__lshift+0x32>
   15aaa:	854e                	mv	a0,s3
   15aac:	995ff0ef          	jal	15440 <_Balloc>
   15ab0:	c571                	beqz	a0,15b7c <__lshift+0x10e>
   15ab2:	01850713          	add	a4,a0,24
   15ab6:	03605163          	blez	s6,15ad8 <__lshift+0x6a>
   15aba:	006a869b          	addw	a3,s5,6
   15abe:	068a                	sll	a3,a3,0x2
   15ac0:	96aa                	add	a3,a3,a0
   15ac2:	87ba                	mv	a5,a4
   15ac4:	0791                	add	a5,a5,4
   15ac6:	fe07ae23          	sw	zero,-4(a5)
   15aca:	fef69de3          	bne	a3,a5,15ac4 <__lshift+0x56>
   15ace:	020a9793          	sll	a5,s5,0x20
   15ad2:	01e7da93          	srl	s5,a5,0x1e
   15ad6:	9756                	add	a4,a4,s5
   15ad8:	0144a883          	lw	a7,20(s1)
   15adc:	01848793          	add	a5,s1,24
   15ae0:	01fa7613          	and	a2,s4,31
   15ae4:	088a                	sll	a7,a7,0x2
   15ae6:	98be                	add	a7,a7,a5
   15ae8:	ca3d                	beqz	a2,15b5e <__lshift+0xf0>
   15aea:	02000593          	li	a1,32
   15aee:	9d91                	subw	a1,a1,a2
   15af0:	833a                	mv	t1,a4
   15af2:	4681                	li	a3,0
   15af4:	0007a803          	lw	a6,0(a5)
   15af8:	0311                	add	t1,t1,4
   15afa:	0791                	add	a5,a5,4
   15afc:	00c8183b          	sllw	a6,a6,a2
   15b00:	0106e6b3          	or	a3,a3,a6
   15b04:	fed32e23          	sw	a3,-4(t1)
   15b08:	ffc7a803          	lw	a6,-4(a5)
   15b0c:	00b856bb          	srlw	a3,a6,a1
   15b10:	8836                	mv	a6,a3
   15b12:	ff17e1e3          	bltu	a5,a7,15af4 <__lshift+0x86>
   15b16:	01948793          	add	a5,s1,25
   15b1a:	4611                	li	a2,4
   15b1c:	00f8e863          	bltu	a7,a5,15b2c <__lshift+0xbe>
   15b20:	409887b3          	sub	a5,a7,s1
   15b24:	179d                	add	a5,a5,-25
   15b26:	9bf1                	and	a5,a5,-4
   15b28:	00478613          	add	a2,a5,4
   15b2c:	9732                	add	a4,a4,a2
   15b2e:	01072023          	sw	a6,0(a4)
   15b32:	e291                	bnez	a3,15b36 <__lshift+0xc8>
   15b34:	8922                	mv	s2,s0
   15b36:	4498                	lw	a4,8(s1)
   15b38:	0789b783          	ld	a5,120(s3)
   15b3c:	70e2                	ld	ra,56(sp)
   15b3e:	070e                	sll	a4,a4,0x3
   15b40:	97ba                	add	a5,a5,a4
   15b42:	6398                	ld	a4,0(a5)
   15b44:	01252a23          	sw	s2,20(a0)
   15b48:	7442                	ld	s0,48(sp)
   15b4a:	e098                	sd	a4,0(s1)
   15b4c:	e384                	sd	s1,0(a5)
   15b4e:	7902                	ld	s2,32(sp)
   15b50:	74a2                	ld	s1,40(sp)
   15b52:	69e2                	ld	s3,24(sp)
   15b54:	6a42                	ld	s4,16(sp)
   15b56:	6aa2                	ld	s5,8(sp)
   15b58:	6b02                	ld	s6,0(sp)
   15b5a:	6121                	add	sp,sp,64
   15b5c:	8082                	ret
   15b5e:	4394                	lw	a3,0(a5)
   15b60:	0791                	add	a5,a5,4
   15b62:	0711                	add	a4,a4,4
   15b64:	fed72e23          	sw	a3,-4(a4)
   15b68:	fd17f6e3          	bgeu	a5,a7,15b34 <__lshift+0xc6>
   15b6c:	4394                	lw	a3,0(a5)
   15b6e:	0791                	add	a5,a5,4
   15b70:	0711                	add	a4,a4,4
   15b72:	fed72e23          	sw	a3,-4(a4)
   15b76:	ff17e4e3          	bltu	a5,a7,15b5e <__lshift+0xf0>
   15b7a:	bf6d                	j	15b34 <__lshift+0xc6>
   15b7c:	00007697          	auipc	a3,0x7
   15b80:	1d468693          	add	a3,a3,468 # 1cd50 <blanks.1+0x70>
   15b84:	4601                	li	a2,0
   15b86:	1d900593          	li	a1,473
   15b8a:	00007517          	auipc	a0,0x7
   15b8e:	4ae50513          	add	a0,a0,1198 # 1d038 <ezero+0x18>
   15b92:	468030ef          	jal	18ffa <__assert_func>

0000000000015b96 <__mcmp>:
   15b96:	49dc                	lw	a5,20(a1)
   15b98:	882a                	mv	a6,a0
   15b9a:	4948                	lw	a0,20(a0)
   15b9c:	9d1d                	subw	a0,a0,a5
   15b9e:	e51d                	bnez	a0,15bcc <__mcmp+0x36>
   15ba0:	078a                	sll	a5,a5,0x2
   15ba2:	0861                	add	a6,a6,24
   15ba4:	05e1                	add	a1,a1,24
   15ba6:	00f80733          	add	a4,a6,a5
   15baa:	97ae                	add	a5,a5,a1
   15bac:	a019                	j	15bb2 <__mcmp+0x1c>
   15bae:	00e87f63          	bgeu	a6,a4,15bcc <__mcmp+0x36>
   15bb2:	ffc72603          	lw	a2,-4(a4)
   15bb6:	ffc7a683          	lw	a3,-4(a5)
   15bba:	1771                	add	a4,a4,-4
   15bbc:	17f1                	add	a5,a5,-4
   15bbe:	fed608e3          	beq	a2,a3,15bae <__mcmp+0x18>
   15bc2:	4505                	li	a0,1
   15bc4:	00d67463          	bgeu	a2,a3,15bcc <__mcmp+0x36>
   15bc8:	557d                	li	a0,-1
   15bca:	8082                	ret
   15bcc:	8082                	ret

0000000000015bce <__mdiff>:
   15bce:	1101                	add	sp,sp,-32
   15bd0:	4a5c                	lw	a5,20(a2)
   15bd2:	e04a                	sd	s2,0(sp)
   15bd4:	0145a903          	lw	s2,20(a1)
   15bd8:	e822                	sd	s0,16(sp)
   15bda:	e426                	sd	s1,8(sp)
   15bdc:	ec06                	sd	ra,24(sp)
   15bde:	40f9093b          	subw	s2,s2,a5
   15be2:	84ae                	mv	s1,a1
   15be4:	8432                	mv	s0,a2
   15be6:	02091c63          	bnez	s2,15c1e <__mdiff+0x50>
   15bea:	00279693          	sll	a3,a5,0x2
   15bee:	05e1                	add	a1,a1,24
   15bf0:	01860713          	add	a4,a2,24
   15bf4:	00d587b3          	add	a5,a1,a3
   15bf8:	9736                	add	a4,a4,a3
   15bfa:	a019                	j	15c00 <__mdiff+0x32>
   15bfc:	12f5f663          	bgeu	a1,a5,15d28 <__mdiff+0x15a>
   15c00:	ffc7a603          	lw	a2,-4(a5)
   15c04:	ffc72683          	lw	a3,-4(a4)
   15c08:	17f1                	add	a5,a5,-4
   15c0a:	1771                	add	a4,a4,-4
   15c0c:	fed608e3          	beq	a2,a3,15bfc <__mdiff+0x2e>
   15c10:	00d67a63          	bgeu	a2,a3,15c24 <__mdiff+0x56>
   15c14:	87a6                	mv	a5,s1
   15c16:	4905                	li	s2,1
   15c18:	84a2                	mv	s1,s0
   15c1a:	843e                	mv	s0,a5
   15c1c:	a021                	j	15c24 <__mdiff+0x56>
   15c1e:	fe094be3          	bltz	s2,15c14 <__mdiff+0x46>
   15c22:	4901                	li	s2,0
   15c24:	448c                	lw	a1,8(s1)
   15c26:	81bff0ef          	jal	15440 <_Balloc>
   15c2a:	14050363          	beqz	a0,15d70 <__mdiff+0x1a2>
   15c2e:	0144a303          	lw	t1,20(s1)
   15c32:	01442f03          	lw	t5,20(s0)
   15c36:	01848293          	add	t0,s1,24
   15c3a:	00231e13          	sll	t3,t1,0x2
   15c3e:	01840813          	add	a6,s0,24
   15c42:	0f0a                	sll	t5,t5,0x2
   15c44:	01850f93          	add	t6,a0,24
   15c48:	68c1                	lui	a7,0x10
   15c4a:	01252823          	sw	s2,16(a0)
   15c4e:	9e16                	add	t3,t3,t0
   15c50:	9f42                	add	t5,t5,a6
   15c52:	867e                	mv	a2,t6
   15c54:	8e96                	mv	t4,t0
   15c56:	4581                	li	a1,0
   15c58:	18fd                	add	a7,a7,-1 # ffff <exit-0xe9>
   15c5a:	000ea703          	lw	a4,0(t4)
   15c5e:	00082683          	lw	a3,0(a6)
   15c62:	0611                	add	a2,a2,4
   15c64:	011777b3          	and	a5,a4,a7
   15c68:	0116f3b3          	and	t2,a3,a7
   15c6c:	407787bb          	subw	a5,a5,t2
   15c70:	9fad                	addw	a5,a5,a1
   15c72:	0106d69b          	srlw	a3,a3,0x10
   15c76:	0107571b          	srlw	a4,a4,0x10
   15c7a:	9f15                	subw	a4,a4,a3
   15c7c:	4107d69b          	sraw	a3,a5,0x10
   15c80:	9f35                	addw	a4,a4,a3
   15c82:	00f8f7b3          	and	a5,a7,a5
   15c86:	0107169b          	sllw	a3,a4,0x10
   15c8a:	8fd5                	or	a5,a5,a3
   15c8c:	2781                	sext.w	a5,a5
   15c8e:	0811                	add	a6,a6,4
   15c90:	fef62e23          	sw	a5,-4(a2)
   15c94:	0e91                	add	t4,t4,4
   15c96:	4107559b          	sraw	a1,a4,0x10
   15c9a:	fde860e3          	bltu	a6,t5,15c5a <__mdiff+0x8c>
   15c9e:	408f0733          	sub	a4,t5,s0
   15ca2:	171d                	add	a4,a4,-25
   15ca4:	0465                	add	s0,s0,25
   15ca6:	00275e93          	srl	t4,a4,0x2
   15caa:	4711                	li	a4,4
   15cac:	008f6563          	bltu	t5,s0,15cb6 <__mdiff+0xe8>
   15cb0:	001e8713          	add	a4,t4,1
   15cb4:	070a                	sll	a4,a4,0x2
   15cb6:	92ba                	add	t0,t0,a4
   15cb8:	00ef8833          	add	a6,t6,a4
   15cbc:	68c1                	lui	a7,0x10
   15cbe:	8642                	mv	a2,a6
   15cc0:	8696                	mv	a3,t0
   15cc2:	18fd                	add	a7,a7,-1 # ffff <exit-0xe9>
   15cc4:	09c2f063          	bgeu	t0,t3,15d44 <__mdiff+0x176>
   15cc8:	429c                	lw	a5,0(a3)
   15cca:	00058e9b          	sext.w	t4,a1
   15cce:	0611                	add	a2,a2,4
   15cd0:	0117f733          	and	a4,a5,a7
   15cd4:	9f2d                	addw	a4,a4,a1
   15cd6:	4107571b          	sraw	a4,a4,0x10
   15cda:	0107d59b          	srlw	a1,a5,0x10
   15cde:	9f2d                	addw	a4,a4,a1
   15ce0:	01d787bb          	addw	a5,a5,t4
   15ce4:	0107159b          	sllw	a1,a4,0x10
   15ce8:	0117f7b3          	and	a5,a5,a7
   15cec:	8fcd                	or	a5,a5,a1
   15cee:	2781                	sext.w	a5,a5
   15cf0:	0691                	add	a3,a3,4
   15cf2:	fef62e23          	sw	a5,-4(a2)
   15cf6:	4107559b          	sraw	a1,a4,0x10
   15cfa:	fdc6e7e3          	bltu	a3,t3,15cc8 <__mdiff+0xfa>
   15cfe:	1e7d                	add	t3,t3,-1
   15d00:	405e0e33          	sub	t3,t3,t0
   15d04:	ffce7e13          	and	t3,t3,-4
   15d08:	01c80733          	add	a4,a6,t3
   15d0c:	e791                	bnez	a5,15d18 <__mdiff+0x14a>
   15d0e:	ffc72783          	lw	a5,-4(a4)
   15d12:	337d                	addw	t1,t1,-1
   15d14:	1771                	add	a4,a4,-4
   15d16:	dfe5                	beqz	a5,15d0e <__mdiff+0x140>
   15d18:	60e2                	ld	ra,24(sp)
   15d1a:	6442                	ld	s0,16(sp)
   15d1c:	00652a23          	sw	t1,20(a0)
   15d20:	64a2                	ld	s1,8(sp)
   15d22:	6902                	ld	s2,0(sp)
   15d24:	6105                	add	sp,sp,32
   15d26:	8082                	ret
   15d28:	4581                	li	a1,0
   15d2a:	f16ff0ef          	jal	15440 <_Balloc>
   15d2e:	c505                	beqz	a0,15d56 <__mdiff+0x188>
   15d30:	60e2                	ld	ra,24(sp)
   15d32:	6442                	ld	s0,16(sp)
   15d34:	4785                	li	a5,1
   15d36:	c95c                	sw	a5,20(a0)
   15d38:	00052c23          	sw	zero,24(a0)
   15d3c:	64a2                	ld	s1,8(sp)
   15d3e:	6902                	ld	s2,0(sp)
   15d40:	6105                	add	sp,sp,32
   15d42:	8082                	ret
   15d44:	4701                	li	a4,0
   15d46:	008f7463          	bgeu	t5,s0,15d4e <__mdiff+0x180>
   15d4a:	977e                	add	a4,a4,t6
   15d4c:	b7c1                	j	15d0c <__mdiff+0x13e>
   15d4e:	002e9713          	sll	a4,t4,0x2
   15d52:	977e                	add	a4,a4,t6
   15d54:	bf65                	j	15d0c <__mdiff+0x13e>
   15d56:	00007697          	auipc	a3,0x7
   15d5a:	ffa68693          	add	a3,a3,-6 # 1cd50 <blanks.1+0x70>
   15d5e:	4601                	li	a2,0
   15d60:	23200593          	li	a1,562
   15d64:	00007517          	auipc	a0,0x7
   15d68:	2d450513          	add	a0,a0,724 # 1d038 <ezero+0x18>
   15d6c:	28e030ef          	jal	18ffa <__assert_func>
   15d70:	00007697          	auipc	a3,0x7
   15d74:	fe068693          	add	a3,a3,-32 # 1cd50 <blanks.1+0x70>
   15d78:	4601                	li	a2,0
   15d7a:	24000593          	li	a1,576
   15d7e:	00007517          	auipc	a0,0x7
   15d82:	2ba50513          	add	a0,a0,698 # 1d038 <ezero+0x18>
   15d86:	274030ef          	jal	18ffa <__assert_func>

0000000000015d8a <__ulp>:
   15d8a:	e2050753          	fmv.x.d	a4,fa0
   15d8e:	7ff007b7          	lui	a5,0x7ff00
   15d92:	9301                	srl	a4,a4,0x20
   15d94:	8f7d                	and	a4,a4,a5
   15d96:	fcc007b7          	lui	a5,0xfcc00
   15d9a:	00e786bb          	addw	a3,a5,a4
   15d9e:	4701                	li	a4,0
   15da0:	00d05963          	blez	a3,15db2 <__ulp+0x28>
   15da4:	1702                	sll	a4,a4,0x20
   15da6:	1682                	sll	a3,a3,0x20
   15da8:	9301                	srl	a4,a4,0x20
   15daa:	8f55                	or	a4,a4,a3
   15dac:	f2070553          	fmv.d.x	fa0,a4
   15db0:	8082                	ret
   15db2:	40d007bb          	negw	a5,a3
   15db6:	4147d71b          	sraw	a4,a5,0x14
   15dba:	46cd                	li	a3,19
   15dbc:	00e6ce63          	blt	a3,a4,15dd8 <__ulp+0x4e>
   15dc0:	000806b7          	lui	a3,0x80
   15dc4:	40e6d6bb          	sraw	a3,a3,a4
   15dc8:	4701                	li	a4,0
   15dca:	1702                	sll	a4,a4,0x20
   15dcc:	1682                	sll	a3,a3,0x20
   15dce:	9301                	srl	a4,a4,0x20
   15dd0:	8f55                	or	a4,a4,a3
   15dd2:	f2070553          	fmv.d.x	fa0,a4
   15dd6:	8082                	ret
   15dd8:	fec7079b          	addw	a5,a4,-20
   15ddc:	46f9                	li	a3,30
   15dde:	4705                	li	a4,1
   15de0:	00f6c663          	blt	a3,a5,15dec <__ulp+0x62>
   15de4:	80000737          	lui	a4,0x80000
   15de8:	00f7573b          	srlw	a4,a4,a5
   15dec:	4681                	li	a3,0
   15dee:	1702                	sll	a4,a4,0x20
   15df0:	1682                	sll	a3,a3,0x20
   15df2:	9301                	srl	a4,a4,0x20
   15df4:	8f55                	or	a4,a4,a3
   15df6:	f2070553          	fmv.d.x	fa0,a4
   15dfa:	8082                	ret

0000000000015dfc <__b2d>:
   15dfc:	7179                	add	sp,sp,-48
   15dfe:	ec26                	sd	s1,24(sp)
   15e00:	4944                	lw	s1,20(a0)
   15e02:	f022                	sd	s0,32(sp)
   15e04:	01850413          	add	s0,a0,24
   15e08:	048a                	sll	s1,s1,0x2
   15e0a:	94a2                	add	s1,s1,s0
   15e0c:	e84a                	sd	s2,16(sp)
   15e0e:	ffc4a903          	lw	s2,-4(s1)
   15e12:	e44e                	sd	s3,8(sp)
   15e14:	e052                	sd	s4,0(sp)
   15e16:	854a                	mv	a0,s2
   15e18:	89ae                	mv	s3,a1
   15e1a:	f406                	sd	ra,40(sp)
   15e1c:	86bff0ef          	jal	15686 <__hi0bits>
   15e20:	02000693          	li	a3,32
   15e24:	40a687bb          	subw	a5,a3,a0
   15e28:	00f9a023          	sw	a5,0(s3)
   15e2c:	47a9                	li	a5,10
   15e2e:	ffc48a13          	add	s4,s1,-4
   15e32:	08a7d563          	bge	a5,a0,15ebc <__b2d+0xc0>
   15e36:	ff55079b          	addw	a5,a0,-11
   15e3a:	05447163          	bgeu	s0,s4,15e7c <__b2d+0x80>
   15e3e:	ff84a703          	lw	a4,-8(s1)
   15e42:	cba9                	beqz	a5,15e94 <__b2d+0x98>
   15e44:	9e9d                	subw	a3,a3,a5
   15e46:	00d7563b          	srlw	a2,a4,a3
   15e4a:	00f9193b          	sllw	s2,s2,a5
   15e4e:	00c96933          	or	s2,s2,a2
   15e52:	3ff00637          	lui	a2,0x3ff00
   15e56:	00c96933          	or	s2,s2,a2
   15e5a:	00f715bb          	sllw	a1,a4,a5
   15e5e:	ff848613          	add	a2,s1,-8
   15e62:	02091793          	sll	a5,s2,0x20
   15e66:	0005871b          	sext.w	a4,a1
   15e6a:	02c47a63          	bgeu	s0,a2,15e9e <__b2d+0xa2>
   15e6e:	ff44a703          	lw	a4,-12(s1)
   15e72:	00d7573b          	srlw	a4,a4,a3
   15e76:	8f4d                	or	a4,a4,a1
   15e78:	2701                	sext.w	a4,a4
   15e7a:	a015                	j	15e9e <__b2d+0xa2>
   15e7c:	472d                	li	a4,11
   15e7e:	00e50a63          	beq	a0,a4,15e92 <__b2d+0x96>
   15e82:	3ff00737          	lui	a4,0x3ff00
   15e86:	00f917bb          	sllw	a5,s2,a5
   15e8a:	8fd9                	or	a5,a5,a4
   15e8c:	1782                	sll	a5,a5,0x20
   15e8e:	4701                	li	a4,0
   15e90:	a039                	j	15e9e <__b2d+0xa2>
   15e92:	4701                	li	a4,0
   15e94:	3ff007b7          	lui	a5,0x3ff00
   15e98:	00f967b3          	or	a5,s2,a5
   15e9c:	1782                	sll	a5,a5,0x20
   15e9e:	70a2                	ld	ra,40(sp)
   15ea0:	7402                	ld	s0,32(sp)
   15ea2:	9381                	srl	a5,a5,0x20
   15ea4:	1702                	sll	a4,a4,0x20
   15ea6:	9301                	srl	a4,a4,0x20
   15ea8:	1782                	sll	a5,a5,0x20
   15eaa:	8fd9                	or	a5,a5,a4
   15eac:	64e2                	ld	s1,24(sp)
   15eae:	6942                	ld	s2,16(sp)
   15eb0:	69a2                	ld	s3,8(sp)
   15eb2:	6a02                	ld	s4,0(sp)
   15eb4:	f2078553          	fmv.d.x	fa0,a5
   15eb8:	6145                	add	sp,sp,48
   15eba:	8082                	ret
   15ebc:	46ad                	li	a3,11
   15ebe:	9e89                	subw	a3,a3,a0
   15ec0:	3ff00737          	lui	a4,0x3ff00
   15ec4:	00d957bb          	srlw	a5,s2,a3
   15ec8:	8fd9                	or	a5,a5,a4
   15eca:	1782                	sll	a5,a5,0x20
   15ecc:	4701                	li	a4,0
   15ece:	01447663          	bgeu	s0,s4,15eda <__b2d+0xde>
   15ed2:	ff84a703          	lw	a4,-8(s1)
   15ed6:	00d7573b          	srlw	a4,a4,a3
   15eda:	2555                	addw	a0,a0,21
   15edc:	00a9153b          	sllw	a0,s2,a0
   15ee0:	8f49                	or	a4,a4,a0
   15ee2:	2701                	sext.w	a4,a4
   15ee4:	bf6d                	j	15e9e <__b2d+0xa2>

0000000000015ee6 <__d2b>:
   15ee6:	7139                	add	sp,sp,-64
   15ee8:	e852                	sd	s4,16(sp)
   15eea:	8a2e                	mv	s4,a1
   15eec:	4585                	li	a1,1
   15eee:	f822                	sd	s0,48(sp)
   15ef0:	f04a                	sd	s2,32(sp)
   15ef2:	fc06                	sd	ra,56(sp)
   15ef4:	f426                	sd	s1,40(sp)
   15ef6:	ec4e                	sd	s3,24(sp)
   15ef8:	e2050453          	fmv.x.d	s0,fa0
   15efc:	8932                	mv	s2,a2
   15efe:	d42ff0ef          	jal	15440 <_Balloc>
   15f02:	c955                	beqz	a0,15fb6 <__d2b+0xd0>
   15f04:	42045793          	sra	a5,s0,0x20
   15f08:	0147d99b          	srlw	s3,a5,0x14
   15f0c:	7ff9f993          	and	s3,s3,2047
   15f10:	17b2                	sll	a5,a5,0x2c
   15f12:	84aa                	mv	s1,a0
   15f14:	93b1                	srl	a5,a5,0x2c
   15f16:	00098563          	beqz	s3,15f20 <__d2b+0x3a>
   15f1a:	00100737          	lui	a4,0x100
   15f1e:	8fd9                	or	a5,a5,a4
   15f20:	c63e                	sw	a5,12(sp)
   15f22:	2401                	sext.w	s0,s0
   15f24:	e029                	bnez	s0,15f66 <__d2b+0x80>
   15f26:	0068                	add	a0,sp,12
   15f28:	fbcff0ef          	jal	156e4 <__lo0bits>
   15f2c:	47b2                	lw	a5,12(sp)
   15f2e:	4405                	li	s0,1
   15f30:	c8c0                	sw	s0,20(s1)
   15f32:	cc9c                	sw	a5,24(s1)
   15f34:	0205051b          	addw	a0,a0,32
   15f38:	06098063          	beqz	s3,15f98 <__d2b+0xb2>
   15f3c:	bcd9899b          	addw	s3,s3,-1075
   15f40:	00a989bb          	addw	s3,s3,a0
   15f44:	03500413          	li	s0,53
   15f48:	013a2023          	sw	s3,0(s4)
   15f4c:	40a4053b          	subw	a0,s0,a0
   15f50:	70e2                	ld	ra,56(sp)
   15f52:	7442                	ld	s0,48(sp)
   15f54:	00a92023          	sw	a0,0(s2)
   15f58:	69e2                	ld	s3,24(sp)
   15f5a:	7902                	ld	s2,32(sp)
   15f5c:	6a42                	ld	s4,16(sp)
   15f5e:	8526                	mv	a0,s1
   15f60:	74a2                	ld	s1,40(sp)
   15f62:	6121                	add	sp,sp,64
   15f64:	8082                	ret
   15f66:	0028                	add	a0,sp,8
   15f68:	c422                	sw	s0,8(sp)
   15f6a:	f7aff0ef          	jal	156e4 <__lo0bits>
   15f6e:	47b2                	lw	a5,12(sp)
   15f70:	4722                	lw	a4,8(sp)
   15f72:	c919                	beqz	a0,15f88 <__d2b+0xa2>
   15f74:	02000693          	li	a3,32
   15f78:	9e89                	subw	a3,a3,a0
   15f7a:	00d796bb          	sllw	a3,a5,a3
   15f7e:	8f55                	or	a4,a4,a3
   15f80:	00a7d7bb          	srlw	a5,a5,a0
   15f84:	2701                	sext.w	a4,a4
   15f86:	c63e                	sw	a5,12(sp)
   15f88:	00f03433          	snez	s0,a5
   15f8c:	0405                	add	s0,s0,1
   15f8e:	cc98                	sw	a4,24(s1)
   15f90:	ccdc                	sw	a5,28(s1)
   15f92:	c8c0                	sw	s0,20(s1)
   15f94:	fa0994e3          	bnez	s3,15f3c <__d2b+0x56>
   15f98:	bce5051b          	addw	a0,a0,-1074
   15f9c:	00241793          	sll	a5,s0,0x2
   15fa0:	00aa2023          	sw	a0,0(s4)
   15fa4:	97a6                	add	a5,a5,s1
   15fa6:	4bc8                	lw	a0,20(a5)
   15fa8:	0054141b          	sllw	s0,s0,0x5
   15fac:	edaff0ef          	jal	15686 <__hi0bits>
   15fb0:	40a4053b          	subw	a0,s0,a0
   15fb4:	bf71                	j	15f50 <__d2b+0x6a>
   15fb6:	00007697          	auipc	a3,0x7
   15fba:	d9a68693          	add	a3,a3,-614 # 1cd50 <blanks.1+0x70>
   15fbe:	4601                	li	a2,0
   15fc0:	30a00593          	li	a1,778
   15fc4:	00007517          	auipc	a0,0x7
   15fc8:	07450513          	add	a0,a0,116 # 1d038 <ezero+0x18>
   15fcc:	02e030ef          	jal	18ffa <__assert_func>

0000000000015fd0 <__ratio>:
   15fd0:	7179                	add	sp,sp,-48
   15fd2:	ec26                	sd	s1,24(sp)
   15fd4:	84ae                	mv	s1,a1
   15fd6:	002c                	add	a1,sp,8
   15fd8:	f406                	sd	ra,40(sp)
   15fda:	f022                	sd	s0,32(sp)
   15fdc:	e84a                	sd	s2,16(sp)
   15fde:	892a                	mv	s2,a0
   15fe0:	e1dff0ef          	jal	15dfc <__b2d>
   15fe4:	006c                	add	a1,sp,12
   15fe6:	8526                	mv	a0,s1
   15fe8:	e2050453          	fmv.x.d	s0,fa0
   15fec:	e11ff0ef          	jal	15dfc <__b2d>
   15ff0:	01492783          	lw	a5,20(s2)
   15ff4:	48d0                	lw	a2,20(s1)
   15ff6:	46b2                	lw	a3,12(sp)
   15ff8:	4722                	lw	a4,8(sp)
   15ffa:	9f91                	subw	a5,a5,a2
   15ffc:	0057979b          	sllw	a5,a5,0x5
   16000:	9f15                	subw	a4,a4,a3
   16002:	00e786bb          	addw	a3,a5,a4
   16006:	87b6                	mv	a5,a3
   16008:	e2050753          	fmv.x.d	a4,fa0
   1600c:	02d05963          	blez	a3,1603e <__ratio+0x6e>
   16010:	02045693          	srl	a3,s0,0x20
   16014:	0147979b          	sllw	a5,a5,0x14
   16018:	9fb5                	addw	a5,a5,a3
   1601a:	56fd                	li	a3,-1
   1601c:	9281                	srl	a3,a3,0x20
   1601e:	1782                	sll	a5,a5,0x20
   16020:	8ee1                	and	a3,a3,s0
   16022:	00f6e433          	or	s0,a3,a5
   16026:	f20407d3          	fmv.d.x	fa5,s0
   1602a:	70a2                	ld	ra,40(sp)
   1602c:	7402                	ld	s0,32(sp)
   1602e:	f2070753          	fmv.d.x	fa4,a4
   16032:	64e2                	ld	s1,24(sp)
   16034:	6942                	ld	s2,16(sp)
   16036:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   1603a:	6145                	add	sp,sp,48
   1603c:	8082                	ret
   1603e:	02075693          	srl	a3,a4,0x20
   16042:	0147979b          	sllw	a5,a5,0x14
   16046:	40f687bb          	subw	a5,a3,a5
   1604a:	56fd                	li	a3,-1
   1604c:	9281                	srl	a3,a3,0x20
   1604e:	1782                	sll	a5,a5,0x20
   16050:	8f75                	and	a4,a4,a3
   16052:	8f5d                	or	a4,a4,a5
   16054:	bfc9                	j	16026 <__ratio+0x56>

0000000000016056 <_mprec_log10>:
   16056:	47dd                	li	a5,23
   16058:	00a7df63          	bge	a5,a0,16076 <_mprec_log10+0x20>
   1605c:	0000a797          	auipc	a5,0xa
   16060:	a347b507          	fld	fa0,-1484(a5) # 1fa90 <__SDATA_BEGIN__+0x10>
   16064:	0000a797          	auipc	a5,0xa
   16068:	a347b787          	fld	fa5,-1484(a5) # 1fa98 <__SDATA_BEGIN__+0x18>
   1606c:	357d                	addw	a0,a0,-1
   1606e:	12f57553          	fmul.d	fa0,fa0,fa5
   16072:	fd6d                	bnez	a0,1606c <_mprec_log10+0x16>
   16074:	8082                	ret
   16076:	050e                	sll	a0,a0,0x3
   16078:	00007797          	auipc	a5,0x7
   1607c:	08078793          	add	a5,a5,128 # 1d0f8 <__mprec_tens>
   16080:	97aa                	add	a5,a5,a0
   16082:	2388                	fld	fa0,0(a5)
   16084:	8082                	ret

0000000000016086 <__copybits>:
   16086:	4a54                	lw	a3,20(a2)
   16088:	35fd                	addw	a1,a1,-1
   1608a:	4055d59b          	sraw	a1,a1,0x5
   1608e:	2585                	addw	a1,a1,1
   16090:	01860793          	add	a5,a2,24 # 3ff00018 <__BSS_END__+0x3fee04a8>
   16094:	068a                	sll	a3,a3,0x2
   16096:	058a                	sll	a1,a1,0x2
   16098:	96be                	add	a3,a3,a5
   1609a:	95aa                	add	a1,a1,a0
   1609c:	02d7f163          	bgeu	a5,a3,160be <__copybits+0x38>
   160a0:	872a                	mv	a4,a0
   160a2:	0007a803          	lw	a6,0(a5)
   160a6:	0791                	add	a5,a5,4
   160a8:	0711                	add	a4,a4,4 # 100004 <__BSS_END__+0xe0494>
   160aa:	ff072e23          	sw	a6,-4(a4)
   160ae:	fed7eae3          	bltu	a5,a3,160a2 <__copybits+0x1c>
   160b2:	40c687b3          	sub	a5,a3,a2
   160b6:	179d                	add	a5,a5,-25
   160b8:	9bf1                	and	a5,a5,-4
   160ba:	0791                	add	a5,a5,4
   160bc:	953e                	add	a0,a0,a5
   160be:	00b57763          	bgeu	a0,a1,160cc <__copybits+0x46>
   160c2:	0511                	add	a0,a0,4
   160c4:	fe052e23          	sw	zero,-4(a0)
   160c8:	feb56de3          	bltu	a0,a1,160c2 <__copybits+0x3c>
   160cc:	8082                	ret

00000000000160ce <__any_on>:
   160ce:	4958                	lw	a4,20(a0)
   160d0:	4055d613          	sra	a2,a1,0x5
   160d4:	01850693          	add	a3,a0,24
   160d8:	00c75d63          	bge	a4,a2,160f2 <__any_on+0x24>
   160dc:	070a                	sll	a4,a4,0x2
   160de:	00e687b3          	add	a5,a3,a4
   160e2:	02f6f863          	bgeu	a3,a5,16112 <__any_on+0x44>
   160e6:	ffc7a703          	lw	a4,-4(a5)
   160ea:	17f1                	add	a5,a5,-4
   160ec:	db7d                	beqz	a4,160e2 <__any_on+0x14>
   160ee:	4505                	li	a0,1
   160f0:	8082                	ret
   160f2:	00261793          	sll	a5,a2,0x2
   160f6:	97b6                	add	a5,a5,a3
   160f8:	fee655e3          	bge	a2,a4,160e2 <__any_on+0x14>
   160fc:	89fd                	and	a1,a1,31
   160fe:	d1f5                	beqz	a1,160e2 <__any_on+0x14>
   16100:	4390                	lw	a2,0(a5)
   16102:	4505                	li	a0,1
   16104:	00b6573b          	srlw	a4,a2,a1
   16108:	00b7173b          	sllw	a4,a4,a1
   1610c:	fcc70be3          	beq	a4,a2,160e2 <__any_on+0x14>
   16110:	8082                	ret
   16112:	4501                	li	a0,0
   16114:	8082                	ret

0000000000016116 <frexp>:
   16116:	e20507d3          	fmv.x.d	a5,fa0
   1611a:	80000637          	lui	a2,0x80000
   1611e:	fff64613          	not	a2,a2
   16122:	4207d693          	sra	a3,a5,0x20
   16126:	00c6f733          	and	a4,a3,a2
   1612a:	00052023          	sw	zero,0(a0)
   1612e:	7ff005b7          	lui	a1,0x7ff00
   16132:	02b77f63          	bgeu	a4,a1,16170 <frexp+0x5a>
   16136:	00f765b3          	or	a1,a4,a5
   1613a:	2581                	sext.w	a1,a1
   1613c:	c995                	beqz	a1,16170 <frexp+0x5a>
   1613e:	7ff005b7          	lui	a1,0x7ff00
   16142:	8df5                	and	a1,a1,a3
   16144:	c98d                	beqz	a1,16176 <frexp+0x60>
   16146:	2681                	sext.w	a3,a3
   16148:	2701                	sext.w	a4,a4
   1614a:	4581                	li	a1,0
   1614c:	80100637          	lui	a2,0x80100
   16150:	167d                	add	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800e048f>
   16152:	8ef1                	and	a3,a3,a2
   16154:	3fe00637          	lui	a2,0x3fe00
   16158:	8ed1                	or	a3,a3,a2
   1615a:	4147571b          	sraw	a4,a4,0x14
   1615e:	567d                	li	a2,-1
   16160:	c027071b          	addw	a4,a4,-1022
   16164:	9201                	srl	a2,a2,0x20
   16166:	9f2d                	addw	a4,a4,a1
   16168:	1682                	sll	a3,a3,0x20
   1616a:	8ff1                	and	a5,a5,a2
   1616c:	c118                	sw	a4,0(a0)
   1616e:	8fd5                	or	a5,a5,a3
   16170:	f2078553          	fmv.d.x	fa0,a5
   16174:	8082                	ret
   16176:	0000a717          	auipc	a4,0xa
   1617a:	92a73787          	fld	fa5,-1750(a4) # 1faa0 <__SDATA_BEGIN__+0x20>
   1617e:	12f577d3          	fmul.d	fa5,fa0,fa5
   16182:	fca00593          	li	a1,-54
   16186:	e20787d3          	fmv.x.d	a5,fa5
   1618a:	4207d713          	sra	a4,a5,0x20
   1618e:	86ba                	mv	a3,a4
   16190:	8f71                	and	a4,a4,a2
   16192:	bf6d                	j	1614c <frexp+0x36>

0000000000016194 <_sbrk_r>:
   16194:	1141                	add	sp,sp,-16
   16196:	e022                	sd	s0,0(sp)
   16198:	842a                	mv	s0,a0
   1619a:	852e                	mv	a0,a1
   1619c:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   161a0:	e406                	sd	ra,8(sp)
   161a2:	216050ef          	jal	1b3b8 <_sbrk>
   161a6:	57fd                	li	a5,-1
   161a8:	00f50663          	beq	a0,a5,161b4 <_sbrk_r+0x20>
   161ac:	60a2                	ld	ra,8(sp)
   161ae:	6402                	ld	s0,0(sp)
   161b0:	0141                	add	sp,sp,16
   161b2:	8082                	ret
   161b4:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   161b8:	dbf5                	beqz	a5,161ac <_sbrk_r+0x18>
   161ba:	60a2                	ld	ra,8(sp)
   161bc:	c01c                	sw	a5,0(s0)
   161be:	6402                	ld	s0,0(sp)
   161c0:	0141                	add	sp,sp,16
   161c2:	8082                	ret

00000000000161c4 <_sprintf_r>:
   161c4:	7111                	add	sp,sp,-256
   161c6:	0d810e93          	add	t4,sp,216
   161ca:	f5be                	sd	a5,232(sp)
   161cc:	80000337          	lui	t1,0x80000
   161d0:	77c1                	lui	a5,0xffff0
   161d2:	8e2e                	mv	t3,a1
   161d4:	fff34313          	not	t1,t1
   161d8:	edb6                	sd	a3,216(sp)
   161da:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0698>
   161de:	080c                	add	a1,sp,16
   161e0:	86f6                	mv	a3,t4
   161e2:	e586                	sd	ra,200(sp)
   161e4:	d03e                	sw	a5,32(sp)
   161e6:	f1ba                	sd	a4,224(sp)
   161e8:	f9c2                	sd	a6,240(sp)
   161ea:	fdc6                	sd	a7,248(sp)
   161ec:	e872                	sd	t3,16(sp)
   161ee:	f472                	sd	t3,40(sp)
   161f0:	ce1a                	sw	t1,28(sp)
   161f2:	d81a                	sw	t1,48(sp)
   161f4:	e476                	sd	t4,8(sp)
   161f6:	2f4000ef          	jal	164ea <_svfprintf_r>
   161fa:	67c2                	ld	a5,16(sp)
   161fc:	00078023          	sb	zero,0(a5)
   16200:	60ae                	ld	ra,200(sp)
   16202:	6111                	add	sp,sp,256
   16204:	8082                	ret

0000000000016206 <sprintf>:
   16206:	7111                	add	sp,sp,-256
   16208:	0d010e93          	add	t4,sp,208
   1620c:	f5be                	sd	a5,232(sp)
   1620e:	80000337          	lui	t1,0x80000
   16212:	77c1                	lui	a5,0xffff0
   16214:	8e2a                	mv	t3,a0
   16216:	fff34313          	not	t1,t1
   1621a:	e9b2                	sd	a2,208(sp)
   1621c:	edb6                	sd	a3,216(sp)
   1621e:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffd0698>
   16222:	862e                	mv	a2,a1
   16224:	86f6                	mv	a3,t4
   16226:	080c                	add	a1,sp,16
   16228:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   1622c:	e586                	sd	ra,200(sp)
   1622e:	d03e                	sw	a5,32(sp)
   16230:	f1ba                	sd	a4,224(sp)
   16232:	f9c2                	sd	a6,240(sp)
   16234:	fdc6                	sd	a7,248(sp)
   16236:	e872                	sd	t3,16(sp)
   16238:	f472                	sd	t3,40(sp)
   1623a:	ce1a                	sw	t1,28(sp)
   1623c:	d81a                	sw	t1,48(sp)
   1623e:	e476                	sd	t4,8(sp)
   16240:	2aa000ef          	jal	164ea <_svfprintf_r>
   16244:	67c2                	ld	a5,16(sp)
   16246:	00078023          	sb	zero,0(a5)
   1624a:	60ae                	ld	ra,200(sp)
   1624c:	6111                	add	sp,sp,256
   1624e:	8082                	ret

0000000000016250 <__sread>:
   16250:	1141                	add	sp,sp,-16
   16252:	e022                	sd	s0,0(sp)
   16254:	842e                	mv	s0,a1
   16256:	01259583          	lh	a1,18(a1) # 7ff00012 <__BSS_END__+0x7fee04a2>
   1625a:	e406                	sd	ra,8(sp)
   1625c:	7c4030ef          	jal	19a20 <_read_r>
   16260:	00054963          	bltz	a0,16272 <__sread+0x22>
   16264:	685c                	ld	a5,144(s0)
   16266:	60a2                	ld	ra,8(sp)
   16268:	97aa                	add	a5,a5,a0
   1626a:	e85c                	sd	a5,144(s0)
   1626c:	6402                	ld	s0,0(sp)
   1626e:	0141                	add	sp,sp,16
   16270:	8082                	ret
   16272:	01045783          	lhu	a5,16(s0)
   16276:	777d                	lui	a4,0xfffff
   16278:	177d                	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf48f>
   1627a:	8ff9                	and	a5,a5,a4
   1627c:	60a2                	ld	ra,8(sp)
   1627e:	00f41823          	sh	a5,16(s0)
   16282:	6402                	ld	s0,0(sp)
   16284:	0141                	add	sp,sp,16
   16286:	8082                	ret

0000000000016288 <__seofread>:
   16288:	4501                	li	a0,0
   1628a:	8082                	ret

000000000001628c <__swrite>:
   1628c:	01059783          	lh	a5,16(a1)
   16290:	7179                	add	sp,sp,-48
   16292:	f022                	sd	s0,32(sp)
   16294:	ec26                	sd	s1,24(sp)
   16296:	e84a                	sd	s2,16(sp)
   16298:	e44e                	sd	s3,8(sp)
   1629a:	f406                	sd	ra,40(sp)
   1629c:	1007f713          	and	a4,a5,256
   162a0:	842e                	mv	s0,a1
   162a2:	84aa                	mv	s1,a0
   162a4:	8932                	mv	s2,a2
   162a6:	89b6                	mv	s3,a3
   162a8:	e31d                	bnez	a4,162ce <__swrite+0x42>
   162aa:	777d                	lui	a4,0xfffff
   162ac:	177d                	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf48f>
   162ae:	8ff9                	and	a5,a5,a4
   162b0:	01241583          	lh	a1,18(s0)
   162b4:	00f41823          	sh	a5,16(s0)
   162b8:	7402                	ld	s0,32(sp)
   162ba:	70a2                	ld	ra,40(sp)
   162bc:	86ce                	mv	a3,s3
   162be:	864a                	mv	a2,s2
   162c0:	69a2                	ld	s3,8(sp)
   162c2:	6942                	ld	s2,16(sp)
   162c4:	8526                	mv	a0,s1
   162c6:	64e2                	ld	s1,24(sp)
   162c8:	6145                	add	sp,sp,48
   162ca:	4850206f          	j	18f4e <_write_r>
   162ce:	01259583          	lh	a1,18(a1)
   162d2:	4689                	li	a3,2
   162d4:	4601                	li	a2,0
   162d6:	4b0030ef          	jal	19786 <_lseek_r>
   162da:	01041783          	lh	a5,16(s0)
   162de:	b7f1                	j	162aa <__swrite+0x1e>

00000000000162e0 <__sseek>:
   162e0:	1141                	add	sp,sp,-16
   162e2:	e022                	sd	s0,0(sp)
   162e4:	842e                	mv	s0,a1
   162e6:	01259583          	lh	a1,18(a1)
   162ea:	e406                	sd	ra,8(sp)
   162ec:	49a030ef          	jal	19786 <_lseek_r>
   162f0:	57fd                	li	a5,-1
   162f2:	02f50163          	beq	a0,a5,16314 <__sseek+0x34>
   162f6:	01045783          	lhu	a5,16(s0)
   162fa:	6705                	lui	a4,0x1
   162fc:	60a2                	ld	ra,8(sp)
   162fe:	8fd9                	or	a5,a5,a4
   16300:	0107979b          	sllw	a5,a5,0x10
   16304:	4107d79b          	sraw	a5,a5,0x10
   16308:	e848                	sd	a0,144(s0)
   1630a:	00f41823          	sh	a5,16(s0)
   1630e:	6402                	ld	s0,0(sp)
   16310:	0141                	add	sp,sp,16
   16312:	8082                	ret
   16314:	01045783          	lhu	a5,16(s0)
   16318:	777d                	lui	a4,0xfffff
   1631a:	177d                	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffdf48f>
   1631c:	8ff9                	and	a5,a5,a4
   1631e:	0107979b          	sllw	a5,a5,0x10
   16322:	4107d79b          	sraw	a5,a5,0x10
   16326:	60a2                	ld	ra,8(sp)
   16328:	00f41823          	sh	a5,16(s0)
   1632c:	6402                	ld	s0,0(sp)
   1632e:	0141                	add	sp,sp,16
   16330:	8082                	ret

0000000000016332 <__sclose>:
   16332:	01259583          	lh	a1,18(a1)
   16336:	5bd0206f          	j	190f2 <_close_r>

000000000001633a <strcpy>:
   1633a:	00b567b3          	or	a5,a0,a1
   1633e:	8b9d                	and	a5,a5,7
   16340:	efbd                	bnez	a5,163be <strcpy+0x84>
   16342:	6198                	ld	a4,0(a1)
   16344:	00009697          	auipc	a3,0x9
   16348:	7646b683          	ld	a3,1892(a3) # 1faa8 <mask>
   1634c:	567d                	li	a2,-1
   1634e:	00d777b3          	and	a5,a4,a3
   16352:	97b6                	add	a5,a5,a3
   16354:	8fd9                	or	a5,a5,a4
   16356:	8fd5                	or	a5,a5,a3
   16358:	06c79c63          	bne	a5,a2,163d0 <strcpy+0x96>
   1635c:	862a                	mv	a2,a0
   1635e:	587d                	li	a6,-1
   16360:	e218                	sd	a4,0(a2)
   16362:	6598                	ld	a4,8(a1)
   16364:	05a1                	add	a1,a1,8
   16366:	0621                	add	a2,a2,8 # 3fe00008 <__BSS_END__+0x3fde0498>
   16368:	00d777b3          	and	a5,a4,a3
   1636c:	97b6                	add	a5,a5,a3
   1636e:	8fd9                	or	a5,a5,a4
   16370:	8fd5                	or	a5,a5,a3
   16372:	ff0787e3          	beq	a5,a6,16360 <strcpy+0x26>
   16376:	0005c783          	lbu	a5,0(a1)
   1637a:	0015c703          	lbu	a4,1(a1)
   1637e:	0025c683          	lbu	a3,2(a1)
   16382:	00f60023          	sb	a5,0(a2)
   16386:	cb9d                	beqz	a5,163bc <strcpy+0x82>
   16388:	00e600a3          	sb	a4,1(a2)
   1638c:	cb05                	beqz	a4,163bc <strcpy+0x82>
   1638e:	0035c783          	lbu	a5,3(a1)
   16392:	00d60123          	sb	a3,2(a2)
   16396:	c29d                	beqz	a3,163bc <strcpy+0x82>
   16398:	0045c703          	lbu	a4,4(a1)
   1639c:	00f601a3          	sb	a5,3(a2)
   163a0:	cf91                	beqz	a5,163bc <strcpy+0x82>
   163a2:	0055c783          	lbu	a5,5(a1)
   163a6:	00e60223          	sb	a4,4(a2)
   163aa:	cb09                	beqz	a4,163bc <strcpy+0x82>
   163ac:	0065c703          	lbu	a4,6(a1)
   163b0:	00f602a3          	sb	a5,5(a2)
   163b4:	c781                	beqz	a5,163bc <strcpy+0x82>
   163b6:	00e60323          	sb	a4,6(a2)
   163ba:	ef09                	bnez	a4,163d4 <strcpy+0x9a>
   163bc:	8082                	ret
   163be:	87aa                	mv	a5,a0
   163c0:	0005c703          	lbu	a4,0(a1)
   163c4:	0785                	add	a5,a5,1
   163c6:	0585                	add	a1,a1,1
   163c8:	fee78fa3          	sb	a4,-1(a5)
   163cc:	fb75                	bnez	a4,163c0 <strcpy+0x86>
   163ce:	8082                	ret
   163d0:	862a                	mv	a2,a0
   163d2:	b755                	j	16376 <strcpy+0x3c>
   163d4:	000603a3          	sb	zero,7(a2)
   163d8:	8082                	ret

00000000000163da <strlen>:
   163da:	00757793          	and	a5,a0,7
   163de:	872a                	mv	a4,a0
   163e0:	ebb9                	bnez	a5,16436 <strlen+0x5c>
   163e2:	00009697          	auipc	a3,0x9
   163e6:	6c66b683          	ld	a3,1734(a3) # 1faa8 <mask>
   163ea:	55fd                	li	a1,-1
   163ec:	6310                	ld	a2,0(a4)
   163ee:	0721                	add	a4,a4,8
   163f0:	00d677b3          	and	a5,a2,a3
   163f4:	97b6                	add	a5,a5,a3
   163f6:	8fd1                	or	a5,a5,a2
   163f8:	8fd5                	or	a5,a5,a3
   163fa:	feb789e3          	beq	a5,a1,163ec <strlen+0x12>
   163fe:	ff874683          	lbu	a3,-8(a4)
   16402:	40a707b3          	sub	a5,a4,a0
   16406:	c6a9                	beqz	a3,16450 <strlen+0x76>
   16408:	ff974683          	lbu	a3,-7(a4)
   1640c:	ce9d                	beqz	a3,1644a <strlen+0x70>
   1640e:	ffa74683          	lbu	a3,-6(a4)
   16412:	c6a9                	beqz	a3,1645c <strlen+0x82>
   16414:	ffb74683          	lbu	a3,-5(a4)
   16418:	ce9d                	beqz	a3,16456 <strlen+0x7c>
   1641a:	ffc74683          	lbu	a3,-4(a4)
   1641e:	c2b1                	beqz	a3,16462 <strlen+0x88>
   16420:	ffd74683          	lbu	a3,-3(a4)
   16424:	c2b1                	beqz	a3,16468 <strlen+0x8e>
   16426:	ffe74503          	lbu	a0,-2(a4)
   1642a:	00a03533          	snez	a0,a0
   1642e:	953e                	add	a0,a0,a5
   16430:	1579                	add	a0,a0,-2
   16432:	8082                	ret
   16434:	d6dd                	beqz	a3,163e2 <strlen+0x8>
   16436:	00074783          	lbu	a5,0(a4)
   1643a:	0705                	add	a4,a4,1
   1643c:	00777693          	and	a3,a4,7
   16440:	fbf5                	bnez	a5,16434 <strlen+0x5a>
   16442:	8f09                	sub	a4,a4,a0
   16444:	fff70513          	add	a0,a4,-1
   16448:	8082                	ret
   1644a:	ff978513          	add	a0,a5,-7
   1644e:	8082                	ret
   16450:	ff878513          	add	a0,a5,-8
   16454:	8082                	ret
   16456:	ffb78513          	add	a0,a5,-5
   1645a:	8082                	ret
   1645c:	ffa78513          	add	a0,a5,-6
   16460:	8082                	ret
   16462:	ffc78513          	add	a0,a5,-4
   16466:	8082                	ret
   16468:	ffd78513          	add	a0,a5,-3
   1646c:	8082                	ret

000000000001646e <strncpy>:
   1646e:	00b567b3          	or	a5,a0,a1
   16472:	8b9d                	and	a5,a5,7
   16474:	872a                	mv	a4,a0
   16476:	ebb9                	bnez	a5,164cc <strncpy+0x5e>
   16478:	479d                	li	a5,7
   1647a:	04c7f963          	bgeu	a5,a2,164cc <strncpy+0x5e>
   1647e:	00009317          	auipc	t1,0x9
   16482:	60233303          	ld	t1,1538(t1) # 1fa80 <__SDATA_BEGIN__>
   16486:	00009897          	auipc	a7,0x9
   1648a:	6028b883          	ld	a7,1538(a7) # 1fa88 <__SDATA_BEGIN__+0x8>
   1648e:	4e1d                	li	t3,7
   16490:	a039                	j	1649e <strncpy+0x30>
   16492:	e314                	sd	a3,0(a4)
   16494:	1661                	add	a2,a2,-8
   16496:	0721                	add	a4,a4,8
   16498:	05a1                	add	a1,a1,8
   1649a:	02ce7963          	bgeu	t3,a2,164cc <strncpy+0x5e>
   1649e:	6194                	ld	a3,0(a1)
   164a0:	006687b3          	add	a5,a3,t1
   164a4:	fff6c813          	not	a6,a3
   164a8:	0107f7b3          	and	a5,a5,a6
   164ac:	0117f7b3          	and	a5,a5,a7
   164b0:	d3ed                	beqz	a5,16492 <strncpy+0x24>
   164b2:	0585                	add	a1,a1,1
   164b4:	00170793          	add	a5,a4,1
   164b8:	ce11                	beqz	a2,164d4 <strncpy+0x66>
   164ba:	fff5c683          	lbu	a3,-1(a1)
   164be:	fff60813          	add	a6,a2,-1
   164c2:	fed78fa3          	sb	a3,-1(a5)
   164c6:	ca81                	beqz	a3,164d6 <strncpy+0x68>
   164c8:	873e                	mv	a4,a5
   164ca:	8642                	mv	a2,a6
   164cc:	0585                	add	a1,a1,1
   164ce:	00170793          	add	a5,a4,1
   164d2:	f665                	bnez	a2,164ba <strncpy+0x4c>
   164d4:	8082                	ret
   164d6:	9732                	add	a4,a4,a2
   164d8:	00080863          	beqz	a6,164e8 <strncpy+0x7a>
   164dc:	0785                	add	a5,a5,1
   164de:	fe078fa3          	sb	zero,-1(a5)
   164e2:	fee79de3          	bne	a5,a4,164dc <strncpy+0x6e>
   164e6:	8082                	ret
   164e8:	8082                	ret

00000000000164ea <_svfprintf_r>:
   164ea:	d9010113          	add	sp,sp,-624
   164ee:	26113423          	sd	ra,616(sp)
   164f2:	26813023          	sd	s0,608(sp)
   164f6:	24913c23          	sd	s1,600(sp)
   164fa:	842e                	mv	s0,a1
   164fc:	25213823          	sd	s2,592(sp)
   16500:	e82e                	sd	a1,16(sp)
   16502:	8932                	mv	s2,a2
   16504:	84b6                	mv	s1,a3
   16506:	25313423          	sd	s3,584(sp)
   1650a:	25413023          	sd	s4,576(sp)
   1650e:	23513c23          	sd	s5,568(sp)
   16512:	23613823          	sd	s6,560(sp)
   16516:	23713423          	sd	s7,552(sp)
   1651a:	23813023          	sd	s8,544(sp)
   1651e:	21913c23          	sd	s9,536(sp)
   16522:	21a13823          	sd	s10,528(sp)
   16526:	21b13423          	sd	s11,520(sp)
   1652a:	e42a                	sd	a0,8(sp)
   1652c:	edafe0ef          	jal	14c06 <_localeconv_r>
   16530:	611c                	ld	a5,0(a0)
   16532:	853e                	mv	a0,a5
   16534:	e8be                	sd	a5,80(sp)
   16536:	ea5ff0ef          	jal	163da <strlen>
   1653a:	01045703          	lhu	a4,16(s0)
   1653e:	f982                	sd	zero,240(sp)
   16540:	fd82                	sd	zero,248(sp)
   16542:	08077713          	and	a4,a4,128
   16546:	e4aa                	sd	a0,72(sp)
   16548:	c701                	beqz	a4,16550 <_svfprintf_r+0x66>
   1654a:	6c18                	ld	a4,24(s0)
   1654c:	6a070ce3          	beqz	a4,17404 <_svfprintf_r+0xf1a>
   16550:	8aca                	mv	s5,s2
   16552:	000ac703          	lbu	a4,0(s5)
   16556:	031c                	add	a5,sp,384
   16558:	e23e                	sd	a5,256(sp)
   1655a:	ea02                	sd	zero,272(sp)
   1655c:	10012423          	sw	zero,264(sp)
   16560:	f802                	sd	zero,48(sp)
   16562:	ec82                	sd	zero,88(sp)
   16564:	f082                	sd	zero,96(sp)
   16566:	f482                	sd	zero,104(sp)
   16568:	f882                	sd	zero,112(sp)
   1656a:	fc82                	sd	zero,120(sp)
   1656c:	ec02                	sd	zero,24(sp)
   1656e:	4dc1                	li	s11,16
   16570:	843e                	mv	s0,a5
   16572:	8a26                	mv	s4,s1
   16574:	1c070263          	beqz	a4,16738 <_svfprintf_r+0x24e>
   16578:	89d6                	mv	s3,s5
   1657a:	02500693          	li	a3,37
   1657e:	20d70d63          	beq	a4,a3,16798 <_svfprintf_r+0x2ae>
   16582:	0019c703          	lbu	a4,1(s3)
   16586:	0985                	add	s3,s3,1
   16588:	fb7d                	bnez	a4,1657e <_svfprintf_r+0x94>
   1658a:	41598b3b          	subw	s6,s3,s5
   1658e:	1a0b0563          	beqz	s6,16738 <_svfprintf_r+0x24e>
   16592:	10812703          	lw	a4,264(sp)
   16596:	6d52                	ld	s10,272(sp)
   16598:	01543023          	sd	s5,0(s0)
   1659c:	0017069b          	addw	a3,a4,1
   165a0:	9d5a                	add	s10,s10,s6
   165a2:	01643423          	sd	s6,8(s0)
   165a6:	ea6a                	sd	s10,272(sp)
   165a8:	10d12423          	sw	a3,264(sp)
   165ac:	471d                	li	a4,7
   165ae:	0441                	add	s0,s0,16
   165b0:	1ed74b63          	blt	a4,a3,167a6 <_svfprintf_r+0x2bc>
   165b4:	67e2                	ld	a5,24(sp)
   165b6:	0009c703          	lbu	a4,0(s3)
   165ba:	016787bb          	addw	a5,a5,s6
   165be:	ec3e                	sd	a5,24(sp)
   165c0:	16070c63          	beqz	a4,16738 <_svfprintf_r+0x24e>
   165c4:	5e7d                	li	t3,-1
   165c6:	0019ce83          	lbu	t4,1(s3)
   165ca:	0c0107a3          	sb	zero,207(sp)
   165ce:	0985                	add	s3,s3,1
   165d0:	4481                	li	s1,0
   165d2:	4901                	li	s2,0
   165d4:	05a00b13          	li	s6,90
   165d8:	8bf2                	mv	s7,t3
   165da:	0985                	add	s3,s3,1
   165dc:	2e81                	sext.w	t4,t4
   165de:	fe0e879b          	addw	a5,t4,-32
   165e2:	0007871b          	sext.w	a4,a5
   165e6:	04eb6863          	bltu	s6,a4,16636 <_svfprintf_r+0x14c>
   165ea:	02079713          	sll	a4,a5,0x20
   165ee:	01e75793          	srl	a5,a4,0x1e
   165f2:	00007717          	auipc	a4,0x7
   165f6:	bce70713          	add	a4,a4,-1074 # 1d1c0 <__mprec_tens+0xc8>
   165fa:	97ba                	add	a5,a5,a4
   165fc:	439c                	lw	a5,0(a5)
   165fe:	97ba                	add	a5,a5,a4
   16600:	8782                	jr	a5
   16602:	4481                	li	s1,0
   16604:	46a5                	li	a3,9
   16606:	0009c703          	lbu	a4,0(s3)
   1660a:	0024979b          	sllw	a5,s1,0x2
   1660e:	9cbd                	addw	s1,s1,a5
   16610:	fd0e8e9b          	addw	t4,t4,-48
   16614:	0014949b          	sllw	s1,s1,0x1
   16618:	fd07079b          	addw	a5,a4,-48
   1661c:	009e84bb          	addw	s1,t4,s1
   16620:	0985                	add	s3,s3,1
   16622:	00070e9b          	sext.w	t4,a4
   16626:	fef6f0e3          	bgeu	a3,a5,16606 <_svfprintf_r+0x11c>
   1662a:	fe0e879b          	addw	a5,t4,-32
   1662e:	0007871b          	sext.w	a4,a5
   16632:	faeb7ce3          	bgeu	s6,a4,165ea <_svfprintf_r+0x100>
   16636:	100e8163          	beqz	t4,16738 <_svfprintf_r+0x24e>
   1663a:	11d10c23          	sb	t4,280(sp)
   1663e:	0c0107a3          	sb	zero,207(sp)
   16642:	4b85                	li	s7,1
   16644:	4c85                	li	s9,1
   16646:	11810a93          	add	s5,sp,280
   1664a:	f002                	sd	zero,32(sp)
   1664c:	4e01                	li	t3,0
   1664e:	e082                	sd	zero,64(sp)
   16650:	fc02                	sd	zero,56(sp)
   16652:	f402                	sd	zero,40(sp)
   16654:	00297293          	and	t0,s2,2
   16658:	00028363          	beqz	t0,1665e <_svfprintf_r+0x174>
   1665c:	2b89                	addw	s7,s7,2
   1665e:	08497c13          	and	s8,s2,132
   16662:	000c1663          	bnez	s8,1666e <_svfprintf_r+0x184>
   16666:	41748d3b          	subw	s10,s1,s7
   1666a:	09a04ce3          	bgtz	s10,16f02 <_svfprintf_r+0xa18>
   1666e:	0cf14603          	lbu	a2,207(sp)
   16672:	6d52                	ld	s10,272(sp)
   16674:	c21d                	beqz	a2,1669a <_svfprintf_r+0x1b0>
   16676:	10812603          	lw	a2,264(sp)
   1667a:	0cf10593          	add	a1,sp,207
   1667e:	e00c                	sd	a1,0(s0)
   16680:	2605                	addw	a2,a2,1
   16682:	4585                	li	a1,1
   16684:	0d05                	add	s10,s10,1
   16686:	e40c                	sd	a1,8(s0)
   16688:	10c12423          	sw	a2,264(sp)
   1668c:	0006059b          	sext.w	a1,a2
   16690:	ea6a                	sd	s10,272(sp)
   16692:	461d                	li	a2,7
   16694:	0441                	add	s0,s0,16
   16696:	1cb64e63          	blt	a2,a1,16872 <_svfprintf_r+0x388>
   1669a:	02028363          	beqz	t0,166c0 <_svfprintf_r+0x1d6>
   1669e:	10812603          	lw	a2,264(sp)
   166a2:	4589                	li	a1,2
   166a4:	0d09                	add	s10,s10,2
   166a6:	2605                	addw	a2,a2,1
   166a8:	099c                	add	a5,sp,208
   166aa:	e40c                	sd	a1,8(s0)
   166ac:	e01c                	sd	a5,0(s0)
   166ae:	0006059b          	sext.w	a1,a2
   166b2:	10c12423          	sw	a2,264(sp)
   166b6:	ea6a                	sd	s10,272(sp)
   166b8:	461d                	li	a2,7
   166ba:	0441                	add	s0,s0,16
   166bc:	0eb64de3          	blt	a2,a1,16fb6 <_svfprintf_r+0xacc>
   166c0:	08000613          	li	a2,128
   166c4:	6ccc0a63          	beq	s8,a2,16d98 <_svfprintf_r+0x8ae>
   166c8:	419e0b3b          	subw	s6,t3,s9
   166cc:	77604863          	bgtz	s6,16e3c <_svfprintf_r+0x952>
   166d0:	10097613          	and	a2,s2,256
   166d4:	5a061d63          	bnez	a2,16c8e <_svfprintf_r+0x7a4>
   166d8:	10812583          	lw	a1,264(sp)
   166dc:	01ac8633          	add	a2,s9,s10
   166e0:	01543023          	sd	s5,0(s0)
   166e4:	0015869b          	addw	a3,a1,1
   166e8:	01943423          	sd	s9,8(s0)
   166ec:	ea32                	sd	a2,272(sp)
   166ee:	10d12423          	sw	a3,264(sp)
   166f2:	479d                	li	a5,7
   166f4:	24d7c263          	blt	a5,a3,16938 <_svfprintf_r+0x44e>
   166f8:	0441                	add	s0,s0,16
   166fa:	00497913          	and	s2,s2,4
   166fe:	00090663          	beqz	s2,1670a <_svfprintf_r+0x220>
   16702:	4174893b          	subw	s2,s1,s7
   16706:	0d2046e3          	bgtz	s2,16fd2 <_svfprintf_r+0xae8>
   1670a:	87a6                	mv	a5,s1
   1670c:	0174d363          	bge	s1,s7,16712 <_svfprintf_r+0x228>
   16710:	87de                	mv	a5,s7
   16712:	6762                	ld	a4,24(sp)
   16714:	9fb9                	addw	a5,a5,a4
   16716:	ec3e                	sd	a5,24(sp)
   16718:	7a061763          	bnez	a2,16ec6 <_svfprintf_r+0x9dc>
   1671c:	7782                	ld	a5,32(sp)
   1671e:	10012423          	sw	zero,264(sp)
   16722:	c789                	beqz	a5,1672c <_svfprintf_r+0x242>
   16724:	7582                	ld	a1,32(sp)
   16726:	6522                	ld	a0,8(sp)
   16728:	842fc0ef          	jal	1276a <_free_r>
   1672c:	0300                	add	s0,sp,384
   1672e:	8ace                	mv	s5,s3
   16730:	000ac703          	lbu	a4,0(s5)
   16734:	e40712e3          	bnez	a4,16578 <_svfprintf_r+0x8e>
   16738:	67d2                	ld	a5,272(sp)
   1673a:	c399                	beqz	a5,16740 <_svfprintf_r+0x256>
   1673c:	3ac0106f          	j	17ae8 <_svfprintf_r+0x15fe>
   16740:	67c2                	ld	a5,16(sp)
   16742:	0107d783          	lhu	a5,16(a5)
   16746:	0407f793          	and	a5,a5,64
   1674a:	c399                	beqz	a5,16750 <_svfprintf_r+0x266>
   1674c:	03f0106f          	j	17f8a <_svfprintf_r+0x1aa0>
   16750:	26813083          	ld	ra,616(sp)
   16754:	26013403          	ld	s0,608(sp)
   16758:	6562                	ld	a0,24(sp)
   1675a:	25813483          	ld	s1,600(sp)
   1675e:	25013903          	ld	s2,592(sp)
   16762:	24813983          	ld	s3,584(sp)
   16766:	24013a03          	ld	s4,576(sp)
   1676a:	23813a83          	ld	s5,568(sp)
   1676e:	23013b03          	ld	s6,560(sp)
   16772:	22813b83          	ld	s7,552(sp)
   16776:	22013c03          	ld	s8,544(sp)
   1677a:	21813c83          	ld	s9,536(sp)
   1677e:	21013d03          	ld	s10,528(sp)
   16782:	20813d83          	ld	s11,520(sp)
   16786:	27010113          	add	sp,sp,624
   1678a:	8082                	ret
   1678c:	01096913          	or	s2,s2,16
   16790:	0009ce83          	lbu	t4,0(s3)
   16794:	2901                	sext.w	s2,s2
   16796:	b591                	j	165da <_svfprintf_r+0xf0>
   16798:	41598b3b          	subw	s6,s3,s5
   1679c:	de0b1be3          	bnez	s6,16592 <_svfprintf_r+0xa8>
   167a0:	0009c703          	lbu	a4,0(s3)
   167a4:	bd31                	j	165c0 <_svfprintf_r+0xd6>
   167a6:	65c2                	ld	a1,16(sp)
   167a8:	6522                	ld	a0,8(sp)
   167aa:	0210                	add	a2,sp,256
   167ac:	095030ef          	jal	1a040 <__ssprint_r>
   167b0:	f941                	bnez	a0,16740 <_svfprintf_r+0x256>
   167b2:	0300                	add	s0,sp,384
   167b4:	b501                	j	165b4 <_svfprintf_r+0xca>
   167b6:	00897713          	and	a4,s2,8
   167ba:	8e5e                	mv	t3,s7
   167bc:	2e0717e3          	bnez	a4,172aa <_svfprintf_r+0xdc0>
   167c0:	000a3507          	fld	fa0,0(s4)
   167c4:	f076                	sd	t4,32(sp)
   167c6:	f45e                	sd	s7,40(sp)
   167c8:	715050ef          	jal	1c6dc <__extenddftf2>
   167cc:	7e22                	ld	t3,40(sp)
   167ce:	7e82                	ld	t4,32(sp)
   167d0:	0a21                	add	s4,s4,8
   167d2:	872a                	mv	a4,a0
   167d4:	1988                	add	a0,sp,240
   167d6:	f472                	sd	t3,40(sp)
   167d8:	f076                	sd	t4,32(sp)
   167da:	f9ba                	sd	a4,240(sp)
   167dc:	fdae                	sd	a1,248(sp)
   167de:	be0fe0ef          	jal	14bbe <_ldcheck>
   167e2:	cdaa                	sw	a0,216(sp)
   167e4:	4709                	li	a4,2
   167e6:	7e82                	ld	t4,32(sp)
   167e8:	7e22                	ld	t3,40(sp)
   167ea:	74e502e3          	beq	a0,a4,1772e <_svfprintf_r+0x1244>
   167ee:	4705                	li	a4,1
   167f0:	00e51463          	bne	a0,a4,167f8 <_svfprintf_r+0x30e>
   167f4:	0780106f          	j	1786c <_svfprintf_r+0x1382>
   167f8:	06100713          	li	a4,97
   167fc:	00ee9463          	bne	t4,a4,16804 <_svfprintf_r+0x31a>
   16800:	52a0106f          	j	17d2a <_svfprintf_r+0x1840>
   16804:	04100713          	li	a4,65
   16808:	00ee9463          	bne	t4,a4,16810 <_svfprintf_r+0x326>
   1680c:	6580106f          	j	17e64 <_svfprintf_r+0x197a>
   16810:	577d                	li	a4,-1
   16812:	00ee1463          	bne	t3,a4,1681a <_svfprintf_r+0x330>
   16816:	3140106f          	j	17b2a <_svfprintf_r+0x1640>
   1681a:	fdfef713          	and	a4,t4,-33
   1681e:	04700693          	li	a3,71
   16822:	00d71463          	bne	a4,a3,1682a <_svfprintf_r+0x340>
   16826:	7780106f          	j	17f9e <_svfprintf_r+0x1ab4>
   1682a:	10096713          	or	a4,s2,256
   1682e:	7bee                	ld	s7,248(sp)
   16830:	0007079b          	sext.w	a5,a4
   16834:	e13e                	sd	a5,128(sp)
   16836:	fc4a                	sd	s2,56(sp)
   16838:	7c4e                	ld	s8,240(sp)
   1683a:	000bd463          	bgez	s7,16842 <_svfprintf_r+0x358>
   1683e:	57a0106f          	j	17db8 <_svfprintf_r+0x18ce>
   16842:	e502                	sd	zero,136(sp)
   16844:	f002                	sd	zero,32(sp)
   16846:	fbfe871b          	addw	a4,t4,-65
   1684a:	0007061b          	sext.w	a2,a4
   1684e:	02500693          	li	a3,37
   16852:	00c6f463          	bgeu	a3,a2,1685a <_svfprintf_r+0x370>
   16856:	0f20106f          	j	17948 <_svfprintf_r+0x145e>
   1685a:	02071613          	sll	a2,a4,0x20
   1685e:	00007697          	auipc	a3,0x7
   16862:	ace68693          	add	a3,a3,-1330 # 1d32c <__mprec_tens+0x234>
   16866:	01e65713          	srl	a4,a2,0x1e
   1686a:	9736                	add	a4,a4,a3
   1686c:	4318                	lw	a4,0(a4)
   1686e:	9736                	add	a4,a4,a3
   16870:	8702                	jr	a4
   16872:	65c2                	ld	a1,16(sp)
   16874:	6522                	ld	a0,8(sp)
   16876:	0210                	add	a2,sp,256
   16878:	e972                	sd	t3,144(sp)
   1687a:	e576                	sd	t4,136(sp)
   1687c:	e116                	sd	t0,128(sp)
   1687e:	7c2030ef          	jal	1a040 <__ssprint_r>
   16882:	64051963          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16886:	6d52                	ld	s10,272(sp)
   16888:	6e4a                	ld	t3,144(sp)
   1688a:	6eaa                	ld	t4,136(sp)
   1688c:	628a                	ld	t0,128(sp)
   1688e:	0300                	add	s0,sp,384
   16890:	b529                	j	1669a <_svfprintf_r+0x1b0>
   16892:	77c2                	ld	a5,48(sp)
   16894:	4685                	li	a3,1
   16896:	01040c13          	add	s8,s0,16
   1689a:	0ef6d6e3          	bge	a3,a5,17186 <_svfprintf_r+0xc9c>
   1689e:	10812583          	lw	a1,264(sp)
   168a2:	4685                	li	a3,1
   168a4:	0d05                	add	s10,s10,1
   168a6:	2585                	addw	a1,a1,1
   168a8:	e414                	sd	a3,8(s0)
   168aa:	01543023          	sd	s5,0(s0)
   168ae:	ea6a                	sd	s10,272(sp)
   168b0:	0005869b          	sext.w	a3,a1
   168b4:	10b12423          	sw	a1,264(sp)
   168b8:	461d                	li	a2,7
   168ba:	18d64ce3          	blt	a2,a3,17252 <_svfprintf_r+0xd68>
   168be:	67a6                	ld	a5,72(sp)
   168c0:	6746                	ld	a4,80(sp)
   168c2:	0016841b          	addw	s0,a3,1
   168c6:	01a78cb3          	add	s9,a5,s10
   168ca:	00ec3023          	sd	a4,0(s8)
   168ce:	00fc3423          	sd	a5,8(s8)
   168d2:	ea66                	sd	s9,272(sp)
   168d4:	10812423          	sw	s0,264(sp)
   168d8:	469d                	li	a3,7
   168da:	0c41                	add	s8,s8,16
   168dc:	1886c9e3          	blt	a3,s0,1726e <_svfprintf_r+0xd84>
   168e0:	754e                	ld	a0,240(sp)
   168e2:	75ee                	ld	a1,248(sp)
   168e4:	4601                	li	a2,0
   168e6:	4681                	li	a3,0
   168e8:	39b040ef          	jal	1b482 <__eqtf2>
   168ec:	77c2                	ld	a5,48(sp)
   168ee:	fff78b1b          	addw	s6,a5,-1
   168f2:	0c050de3          	beqz	a0,171cc <_svfprintf_r+0xce2>
   168f6:	001a8793          	add	a5,s5,1
   168fa:	2405                	addw	s0,s0,1
   168fc:	9cda                	add	s9,s9,s6
   168fe:	00fc3023          	sd	a5,0(s8)
   16902:	016c3423          	sd	s6,8(s8)
   16906:	ea66                	sd	s9,272(sp)
   16908:	10812423          	sw	s0,264(sp)
   1690c:	479d                	li	a5,7
   1690e:	0a87c1e3          	blt	a5,s0,171b0 <_svfprintf_r+0xcc6>
   16912:	0c41                	add	s8,s8,16
   16914:	7706                	ld	a4,96(sp)
   16916:	0014069b          	addw	a3,s0,1
   1691a:	119c                	add	a5,sp,224
   1691c:	01970633          	add	a2,a4,s9
   16920:	00fc3023          	sd	a5,0(s8)
   16924:	00ec3423          	sd	a4,8(s8)
   16928:	ea32                	sd	a2,272(sp)
   1692a:	10d12423          	sw	a3,264(sp)
   1692e:	479d                	li	a5,7
   16930:	010c0413          	add	s0,s8,16
   16934:	dcd7d3e3          	bge	a5,a3,166fa <_svfprintf_r+0x210>
   16938:	65c2                	ld	a1,16(sp)
   1693a:	6522                	ld	a0,8(sp)
   1693c:	0210                	add	a2,sp,256
   1693e:	702030ef          	jal	1a040 <__ssprint_r>
   16942:	58051963          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16946:	6652                	ld	a2,272(sp)
   16948:	0300                	add	s0,sp,384
   1694a:	bb45                	j	166fa <_svfprintf_r+0x210>
   1694c:	000a2783          	lw	a5,0(s4)
   16950:	0c0107a3          	sb	zero,207(sp)
   16954:	0a21                	add	s4,s4,8
   16956:	10f10c23          	sb	a5,280(sp)
   1695a:	4b85                	li	s7,1
   1695c:	4c85                	li	s9,1
   1695e:	11810a93          	add	s5,sp,280
   16962:	b1e5                	j	1664a <_svfprintf_r+0x160>
   16964:	000a3a83          	ld	s5,0(s4)
   16968:	0c0107a3          	sb	zero,207(sp)
   1696c:	0a21                	add	s4,s4,8
   1696e:	600a81e3          	beqz	s5,17770 <_svfprintf_r+0x1286>
   16972:	577d                	li	a4,-1
   16974:	30eb89e3          	beq	s7,a4,17486 <_svfprintf_r+0xf9c>
   16978:	865e                	mv	a2,s7
   1697a:	4581                	li	a1,0
   1697c:	8556                	mv	a0,s5
   1697e:	fc76                	sd	t4,56(sp)
   16980:	f45e                	sd	s7,40(sp)
   16982:	a25fe0ef          	jal	153a6 <memchr>
   16986:	f02a                	sd	a0,32(sp)
   16988:	7e22                	ld	t3,40(sp)
   1698a:	7ee2                	ld	t4,56(sp)
   1698c:	e119                	bnez	a0,16992 <_svfprintf_r+0x4a8>
   1698e:	4620106f          	j	17df0 <_svfprintf_r+0x1906>
   16992:	7782                	ld	a5,32(sp)
   16994:	0cf14603          	lbu	a2,207(sp)
   16998:	f002                	sd	zero,32(sp)
   1699a:	41578cbb          	subw	s9,a5,s5
   1699e:	fffcc713          	not	a4,s9
   169a2:	977d                	sra	a4,a4,0x3f
   169a4:	e082                	sd	zero,64(sp)
   169a6:	fc02                	sd	zero,56(sp)
   169a8:	f402                	sd	zero,40(sp)
   169aa:	01977bb3          	and	s7,a4,s9
   169ae:	4e01                	li	t3,0
   169b0:	ca0602e3          	beqz	a2,16654 <_svfprintf_r+0x16a>
   169b4:	2b85                	addw	s7,s7,1
   169b6:	b979                	j	16654 <_svfprintf_r+0x16a>
   169b8:	000a2483          	lw	s1,0(s4)
   169bc:	0a21                	add	s4,s4,8
   169be:	0804dc63          	bgez	s1,16a56 <_svfprintf_r+0x56c>
   169c2:	409004bb          	negw	s1,s1
   169c6:	00496913          	or	s2,s2,4
   169ca:	0009ce83          	lbu	t4,0(s3)
   169ce:	2901                	sext.w	s2,s2
   169d0:	b129                	j	165da <_svfprintf_r+0xf0>
   169d2:	02b00793          	li	a5,43
   169d6:	0009ce83          	lbu	t4,0(s3)
   169da:	0cf107a3          	sb	a5,207(sp)
   169de:	bef5                	j	165da <_svfprintf_r+0xf0>
   169e0:	08096913          	or	s2,s2,128
   169e4:	0009ce83          	lbu	t4,0(s3)
   169e8:	2901                	sext.w	s2,s2
   169ea:	bec5                	j	165da <_svfprintf_r+0xf0>
   169ec:	0009ce83          	lbu	t4,0(s3)
   169f0:	02a00693          	li	a3,42
   169f4:	00198793          	add	a5,s3,1
   169f8:	00de9463          	bne	t4,a3,16a00 <_svfprintf_r+0x516>
   169fc:	6700106f          	j	1806c <_svfprintf_r+0x1b82>
   16a00:	fd0e871b          	addw	a4,t4,-48
   16a04:	4625                	li	a2,9
   16a06:	89be                	mv	s3,a5
   16a08:	4b81                	li	s7,0
   16a0a:	46a5                	li	a3,9
   16a0c:	bce669e3          	bltu	a2,a4,165de <_svfprintf_r+0xf4>
   16a10:	0009ce83          	lbu	t4,0(s3)
   16a14:	002b979b          	sllw	a5,s7,0x2
   16a18:	01778e3b          	addw	t3,a5,s7
   16a1c:	001e1e1b          	sllw	t3,t3,0x1
   16a20:	00ee0bbb          	addw	s7,t3,a4
   16a24:	fd0e871b          	addw	a4,t4,-48
   16a28:	0985                	add	s3,s3,1
   16a2a:	fee6f3e3          	bgeu	a3,a4,16a10 <_svfprintf_r+0x526>
   16a2e:	be45                	j	165de <_svfprintf_r+0xf4>
   16a30:	6c22                	ld	s8,8(sp)
   16a32:	8562                	mv	a0,s8
   16a34:	9d2fe0ef          	jal	14c06 <_localeconv_r>
   16a38:	651c                	ld	a5,8(a0)
   16a3a:	853e                	mv	a0,a5
   16a3c:	fcbe                	sd	a5,120(sp)
   16a3e:	99dff0ef          	jal	163da <strlen>
   16a42:	87aa                	mv	a5,a0
   16a44:	8562                	mv	a0,s8
   16a46:	f8be                	sd	a5,112(sp)
   16a48:	8c3e                	mv	s8,a5
   16a4a:	9bcfe0ef          	jal	14c06 <_localeconv_r>
   16a4e:	691c                	ld	a5,16(a0)
   16a50:	f4be                	sd	a5,104(sp)
   16a52:	080c10e3          	bnez	s8,172d2 <_svfprintf_r+0xde8>
   16a56:	0009ce83          	lbu	t4,0(s3)
   16a5a:	b641                	j	165da <_svfprintf_r+0xf0>
   16a5c:	00196913          	or	s2,s2,1
   16a60:	0009ce83          	lbu	t4,0(s3)
   16a64:	2901                	sext.w	s2,s2
   16a66:	be95                	j	165da <_svfprintf_r+0xf0>
   16a68:	0cf14783          	lbu	a5,207(sp)
   16a6c:	0009ce83          	lbu	t4,0(s3)
   16a70:	b60795e3          	bnez	a5,165da <_svfprintf_r+0xf0>
   16a74:	02000793          	li	a5,32
   16a78:	0cf107a3          	sb	a5,207(sp)
   16a7c:	beb9                	j	165da <_svfprintf_r+0xf0>
   16a7e:	01096c13          	or	s8,s2,16
   16a82:	8e5e                	mv	t3,s7
   16a84:	2c01                	sext.w	s8,s8
   16a86:	020c7793          	and	a5,s8,32
   16a8a:	008a0713          	add	a4,s4,8
   16a8e:	e3bd                	bnez	a5,16af4 <_svfprintf_r+0x60a>
   16a90:	010c7793          	and	a5,s8,16
   16a94:	e3a5                	bnez	a5,16af4 <_svfprintf_r+0x60a>
   16a96:	040c7793          	and	a5,s8,64
   16a9a:	000a2b03          	lw	s6,0(s4)
   16a9e:	580783e3          	beqz	a5,17824 <_svfprintf_r+0x133a>
   16aa2:	1b42                	sll	s6,s6,0x30
   16aa4:	030b5b13          	srl	s6,s6,0x30
   16aa8:	8a3a                	mv	s4,a4
   16aaa:	4785                	li	a5,1
   16aac:	4701                	li	a4,0
   16aae:	0ce107a3          	sb	a4,207(sp)
   16ab2:	577d                	li	a4,-1
   16ab4:	0cee0863          	beq	t3,a4,16b84 <_svfprintf_r+0x69a>
   16ab8:	f7fc7913          	and	s2,s8,-129
   16abc:	2901                	sext.w	s2,s2
   16abe:	420b1263          	bnez	s6,16ee2 <_svfprintf_r+0x9f8>
   16ac2:	280e1e63          	bnez	t3,16d5e <_svfprintf_r+0x874>
   16ac6:	78079263          	bnez	a5,1724a <_svfprintf_r+0xd60>
   16aca:	001c7c93          	and	s9,s8,1
   16ace:	17c10a93          	add	s5,sp,380
   16ad2:	7c0c9463          	bnez	s9,1729a <_svfprintf_r+0xdb0>
   16ad6:	0cf14603          	lbu	a2,207(sp)
   16ada:	8772                	mv	a4,t3
   16adc:	019e5363          	bge	t3,s9,16ae2 <_svfprintf_r+0x5f8>
   16ae0:	8766                	mv	a4,s9
   16ae2:	f002                	sd	zero,32(sp)
   16ae4:	e082                	sd	zero,64(sp)
   16ae6:	fc02                	sd	zero,56(sp)
   16ae8:	f402                	sd	zero,40(sp)
   16aea:	00070b9b          	sext.w	s7,a4
   16aee:	ec0613e3          	bnez	a2,169b4 <_svfprintf_r+0x4ca>
   16af2:	b68d                	j	16654 <_svfprintf_r+0x16a>
   16af4:	000a3b03          	ld	s6,0(s4)
   16af8:	4785                	li	a5,1
   16afa:	8a3a                	mv	s4,a4
   16afc:	bf45                	j	16aac <_svfprintf_r+0x5c2>
   16afe:	00896913          	or	s2,s2,8
   16b02:	0009ce83          	lbu	t4,0(s3)
   16b06:	2901                	sext.w	s2,s2
   16b08:	bcc9                	j	165da <_svfprintf_r+0xf0>
   16b0a:	01096913          	or	s2,s2,16
   16b0e:	8e5e                	mv	t3,s7
   16b10:	2901                	sext.w	s2,s2
   16b12:	02097793          	and	a5,s2,32
   16b16:	008a0713          	add	a4,s4,8
   16b1a:	e7a1                	bnez	a5,16b62 <_svfprintf_r+0x678>
   16b1c:	01097793          	and	a5,s2,16
   16b20:	e3a9                	bnez	a5,16b62 <_svfprintf_r+0x678>
   16b22:	04097793          	and	a5,s2,64
   16b26:	000a2b03          	lw	s6,0(s4)
   16b2a:	520786e3          	beqz	a5,17856 <_svfprintf_r+0x136c>
   16b2e:	010b1b1b          	sllw	s6,s6,0x10
   16b32:	410b5b1b          	sraw	s6,s6,0x10
   16b36:	87da                	mv	a5,s6
   16b38:	0207ca63          	bltz	a5,16b6c <_svfprintf_r+0x682>
   16b3c:	57fd                	li	a5,-1
   16b3e:	8c4a                	mv	s8,s2
   16b40:	8a3a                	mv	s4,a4
   16b42:	3afe0463          	beq	t3,a5,16eea <_svfprintf_r+0xa00>
   16b46:	f7f97c13          	and	s8,s2,-129
   16b4a:	2c01                	sext.w	s8,s8
   16b4c:	7a0b1663          	bnez	s6,172f8 <_svfprintf_r+0xe0e>
   16b50:	000e0463          	beqz	t3,16b58 <_svfprintf_r+0x66e>
   16b54:	47a0106f          	j	17fce <_svfprintf_r+0x1ae4>
   16b58:	4c81                	li	s9,0
   16b5a:	8962                	mv	s2,s8
   16b5c:	17c10a93          	add	s5,sp,380
   16b60:	bf9d                	j	16ad6 <_svfprintf_r+0x5ec>
   16b62:	000a3783          	ld	a5,0(s4)
   16b66:	8b3e                	mv	s6,a5
   16b68:	fc07dae3          	bgez	a5,16b3c <_svfprintf_r+0x652>
   16b6c:	8a3a                	mv	s4,a4
   16b6e:	02d00713          	li	a4,45
   16b72:	0ce107a3          	sb	a4,207(sp)
   16b76:	577d                	li	a4,-1
   16b78:	41600b33          	neg	s6,s6
   16b7c:	8c4a                	mv	s8,s2
   16b7e:	4785                	li	a5,1
   16b80:	f2ee1ce3          	bne	t3,a4,16ab8 <_svfprintf_r+0x5ce>
   16b84:	4705                	li	a4,1
   16b86:	36e78263          	beq	a5,a4,16eea <_svfprintf_r+0xa00>
   16b8a:	4709                	li	a4,2
   16b8c:	1ee78263          	beq	a5,a4,16d70 <_svfprintf_r+0x886>
   16b90:	17c10b93          	add	s7,sp,380
   16b94:	8ade                	mv	s5,s7
   16b96:	007b7713          	and	a4,s6,7
   16b9a:	03070713          	add	a4,a4,48
   16b9e:	feea8fa3          	sb	a4,-1(s5)
   16ba2:	003b5b13          	srl	s6,s6,0x3
   16ba6:	8656                	mv	a2,s5
   16ba8:	1afd                	add	s5,s5,-1
   16baa:	fe0b16e3          	bnez	s6,16b96 <_svfprintf_r+0x6ac>
   16bae:	001c7593          	and	a1,s8,1
   16bb2:	1c058f63          	beqz	a1,16d90 <_svfprintf_r+0x8a6>
   16bb6:	03000593          	li	a1,48
   16bba:	1cb70b63          	beq	a4,a1,16d90 <_svfprintf_r+0x8a6>
   16bbe:	1679                	add	a2,a2,-2
   16bc0:	feba8fa3          	sb	a1,-1(s5)
   16bc4:	40cb8cbb          	subw	s9,s7,a2
   16bc8:	8962                	mv	s2,s8
   16bca:	8ab2                	mv	s5,a2
   16bcc:	b729                	j	16ad6 <_svfprintf_r+0x5ec>
   16bce:	01096913          	or	s2,s2,16
   16bd2:	8e5e                	mv	t3,s7
   16bd4:	2901                	sext.w	s2,s2
   16bd6:	02097793          	and	a5,s2,32
   16bda:	008a0713          	add	a4,s4,8
   16bde:	e789                	bnez	a5,16be8 <_svfprintf_r+0x6fe>
   16be0:	01097793          	and	a5,s2,16
   16be4:	6c078d63          	beqz	a5,172be <_svfprintf_r+0xdd4>
   16be8:	000a3b03          	ld	s6,0(s4)
   16bec:	bff97c13          	and	s8,s2,-1025
   16bf0:	2c01                	sext.w	s8,s8
   16bf2:	8a3a                	mv	s4,a4
   16bf4:	4781                	li	a5,0
   16bf6:	bd5d                	j	16aac <_svfprintf_r+0x5c2>
   16bf8:	0009ce83          	lbu	t4,0(s3)
   16bfc:	06800793          	li	a5,104
   16c00:	7efe8a63          	beq	t4,a5,173f4 <_svfprintf_r+0xf0a>
   16c04:	04096913          	or	s2,s2,64
   16c08:	2901                	sext.w	s2,s2
   16c0a:	bac1                	j	165da <_svfprintf_r+0xf0>
   16c0c:	02096913          	or	s2,s2,32
   16c10:	0009ce83          	lbu	t4,0(s3)
   16c14:	2901                	sext.w	s2,s2
   16c16:	b2d1                	j	165da <_svfprintf_r+0xf0>
   16c18:	77e1                	lui	a5,0xffff8
   16c1a:	8307c793          	xor	a5,a5,-2000
   16c1e:	00296c13          	or	s8,s2,2
   16c22:	0cf11823          	sh	a5,208(sp)
   16c26:	00006797          	auipc	a5,0x6
   16c2a:	e8278793          	add	a5,a5,-382 # 1caa8 <__clzdi2+0x8a>
   16c2e:	000a3b03          	ld	s6,0(s4)
   16c32:	ecbe                	sd	a5,88(sp)
   16c34:	8e5e                	mv	t3,s7
   16c36:	2c01                	sext.w	s8,s8
   16c38:	0a21                	add	s4,s4,8
   16c3a:	4789                	li	a5,2
   16c3c:	07800e93          	li	t4,120
   16c40:	b5b5                	j	16aac <_svfprintf_r+0x5c2>
   16c42:	02097793          	and	a5,s2,32
   16c46:	000a3703          	ld	a4,0(s4)
   16c4a:	e785                	bnez	a5,16c72 <_svfprintf_r+0x788>
   16c4c:	01097793          	and	a5,s2,16
   16c50:	e38d                	bnez	a5,16c72 <_svfprintf_r+0x788>
   16c52:	04097793          	and	a5,s2,64
   16c56:	4e0793e3          	bnez	a5,1793c <_svfprintf_r+0x1452>
   16c5a:	20097913          	and	s2,s2,512
   16c5e:	67e2                	ld	a5,24(sp)
   16c60:	00091463          	bnez	s2,16c68 <_svfprintf_r+0x77e>
   16c64:	3180106f          	j	17f7c <_svfprintf_r+0x1a92>
   16c68:	00f70023          	sb	a5,0(a4)
   16c6c:	0a21                	add	s4,s4,8
   16c6e:	8ace                	mv	s5,s3
   16c70:	b4c1                	j	16730 <_svfprintf_r+0x246>
   16c72:	67e2                	ld	a5,24(sp)
   16c74:	0a21                	add	s4,s4,8
   16c76:	e31c                	sd	a5,0(a4)
   16c78:	bfdd                	j	16c6e <_svfprintf_r+0x784>
   16c7a:	0009ce83          	lbu	t4,0(s3)
   16c7e:	06c00793          	li	a5,108
   16c82:	76fe8163          	beq	t4,a5,173e4 <_svfprintf_r+0xefa>
   16c86:	01096913          	or	s2,s2,16
   16c8a:	2901                	sext.w	s2,s2
   16c8c:	b2b9                	j	165da <_svfprintf_r+0xf0>
   16c8e:	06500693          	li	a3,101
   16c92:	c1d6d0e3          	bge	a3,t4,16892 <_svfprintf_r+0x3a8>
   16c96:	754e                	ld	a0,240(sp)
   16c98:	75ee                	ld	a1,248(sp)
   16c9a:	4601                	li	a2,0
   16c9c:	4681                	li	a3,0
   16c9e:	7e4040ef          	jal	1b482 <__eqtf2>
   16ca2:	3a051a63          	bnez	a0,17056 <_svfprintf_r+0xb6c>
   16ca6:	10812783          	lw	a5,264(sp)
   16caa:	00006697          	auipc	a3,0x6
   16cae:	e1e68693          	add	a3,a3,-482 # 1cac8 <__clzdi2+0xaa>
   16cb2:	e014                	sd	a3,0(s0)
   16cb4:	2785                	addw	a5,a5,1
   16cb6:	4685                	li	a3,1
   16cb8:	0d05                	add	s10,s10,1
   16cba:	e414                	sd	a3,8(s0)
   16cbc:	10f12423          	sw	a5,264(sp)
   16cc0:	0007869b          	sext.w	a3,a5
   16cc4:	ea6a                	sd	s10,272(sp)
   16cc6:	479d                	li	a5,7
   16cc8:	0441                	add	s0,s0,16
   16cca:	1ed7c2e3          	blt	a5,a3,176ae <_svfprintf_r+0x11c4>
   16cce:	47ee                	lw	a5,216(sp)
   16cd0:	7742                	ld	a4,48(sp)
   16cd2:	5ae7dc63          	bge	a5,a4,1728a <_svfprintf_r+0xda0>
   16cd6:	10812783          	lw	a5,264(sp)
   16cda:	6726                	ld	a4,72(sp)
   16cdc:	66c6                	ld	a3,80(sp)
   16cde:	0441                	add	s0,s0,16
   16ce0:	01a70633          	add	a2,a4,s10
   16ce4:	fed43823          	sd	a3,-16(s0)
   16ce8:	0017869b          	addw	a3,a5,1
   16cec:	fee43c23          	sd	a4,-8(s0)
   16cf0:	ea32                	sd	a2,272(sp)
   16cf2:	10d12423          	sw	a3,264(sp)
   16cf6:	479d                	li	a5,7
   16cf8:	6cd7cc63          	blt	a5,a3,173d0 <_svfprintf_r+0xee6>
   16cfc:	77c2                	ld	a5,48(sp)
   16cfe:	fff78c1b          	addw	s8,a5,-1
   16d02:	9f805ce3          	blez	s8,166fa <_svfprintf_r+0x210>
   16d06:	46c1                	li	a3,16
   16d08:	10812783          	lw	a5,264(sp)
   16d0c:	00006d17          	auipc	s10,0x6
   16d10:	6bcd0d13          	add	s10,s10,1724 # 1d3c8 <zeroes.0>
   16d14:	1b86dde3          	bge	a3,s8,176ce <_svfprintf_r+0x11e4>
   16d18:	876a                	mv	a4,s10
   16d1a:	6b22                	ld	s6,8(sp)
   16d1c:	8d62                	mv	s10,s8
   16d1e:	4cc1                	li	s9,16
   16d20:	8c52                	mv	s8,s4
   16d22:	4a9d                	li	s5,7
   16d24:	8a26                	mv	s4,s1
   16d26:	84ba                	mv	s1,a4
   16d28:	a021                	j	16d30 <_svfprintf_r+0x846>
   16d2a:	3d41                	addw	s10,s10,-16
   16d2c:	19acdce3          	bge	s9,s10,176c4 <_svfprintf_r+0x11da>
   16d30:	2785                	addw	a5,a5,1
   16d32:	0641                	add	a2,a2,16
   16d34:	e004                	sd	s1,0(s0)
   16d36:	01943423          	sd	s9,8(s0)
   16d3a:	ea32                	sd	a2,272(sp)
   16d3c:	10f12423          	sw	a5,264(sp)
   16d40:	0441                	add	s0,s0,16
   16d42:	fefad4e3          	bge	s5,a5,16d2a <_svfprintf_r+0x840>
   16d46:	65c2                	ld	a1,16(sp)
   16d48:	0210                	add	a2,sp,256
   16d4a:	855a                	mv	a0,s6
   16d4c:	2f4030ef          	jal	1a040 <__ssprint_r>
   16d50:	18051263          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16d54:	6652                	ld	a2,272(sp)
   16d56:	10812783          	lw	a5,264(sp)
   16d5a:	0300                	add	s0,sp,384
   16d5c:	b7f9                	j	16d2a <_svfprintf_r+0x840>
   16d5e:	4705                	li	a4,1
   16d60:	00e79463          	bne	a5,a4,16d68 <_svfprintf_r+0x87e>
   16d64:	0fa0106f          	j	17e5e <_svfprintf_r+0x1974>
   16d68:	4709                	li	a4,2
   16d6a:	8c4a                	mv	s8,s2
   16d6c:	e2e792e3          	bne	a5,a4,16b90 <_svfprintf_r+0x6a6>
   16d70:	6766                	ld	a4,88(sp)
   16d72:	17c10b93          	add	s7,sp,380
   16d76:	8ade                	mv	s5,s7
   16d78:	00fb7793          	and	a5,s6,15
   16d7c:	97ba                	add	a5,a5,a4
   16d7e:	0007c783          	lbu	a5,0(a5)
   16d82:	004b5b13          	srl	s6,s6,0x4
   16d86:	1afd                	add	s5,s5,-1
   16d88:	00fa8023          	sb	a5,0(s5)
   16d8c:	fe0b16e3          	bnez	s6,16d78 <_svfprintf_r+0x88e>
   16d90:	415b8cbb          	subw	s9,s7,s5
   16d94:	8962                	mv	s2,s8
   16d96:	b381                	j	16ad6 <_svfprintf_r+0x5ec>
   16d98:	41748b3b          	subw	s6,s1,s7
   16d9c:	936056e3          	blez	s6,166c8 <_svfprintf_r+0x1de>
   16da0:	4541                	li	a0,16
   16da2:	85ea                	mv	a1,s10
   16da4:	10812603          	lw	a2,264(sp)
   16da8:	00006d17          	auipc	s10,0x6
   16dac:	620d0d13          	add	s10,s10,1568 # 1d3c8 <zeroes.0>
   16db0:	07655363          	bge	a0,s6,16e16 <_svfprintf_r+0x92c>
   16db4:	876a                	mv	a4,s10
   16db6:	87a2                	mv	a5,s0
   16db8:	8d52                	mv	s10,s4
   16dba:	845a                	mv	s0,s6
   16dbc:	8a26                	mv	s4,s1
   16dbe:	8b56                	mv	s6,s5
   16dc0:	48c1                	li	a7,16
   16dc2:	4c1d                	li	s8,7
   16dc4:	e176                	sd	t4,128(sp)
   16dc6:	8af2                	mv	s5,t3
   16dc8:	84ba                	mv	s1,a4
   16dca:	a021                	j	16dd2 <_svfprintf_r+0x8e8>
   16dcc:	3441                	addw	s0,s0,-16
   16dce:	0288db63          	bge	a7,s0,16e04 <_svfprintf_r+0x91a>
   16dd2:	2605                	addw	a2,a2,1
   16dd4:	05c1                	add	a1,a1,16
   16dd6:	e384                	sd	s1,0(a5)
   16dd8:	0117b423          	sd	a7,8(a5)
   16ddc:	ea2e                	sd	a1,272(sp)
   16dde:	10c12423          	sw	a2,264(sp)
   16de2:	07c1                	add	a5,a5,16
   16de4:	fecc54e3          	bge	s8,a2,16dcc <_svfprintf_r+0x8e2>
   16de8:	65c2                	ld	a1,16(sp)
   16dea:	6522                	ld	a0,8(sp)
   16dec:	0210                	add	a2,sp,256
   16dee:	252030ef          	jal	1a040 <__ssprint_r>
   16df2:	e16d                	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16df4:	48c1                	li	a7,16
   16df6:	3441                	addw	s0,s0,-16
   16df8:	65d2                	ld	a1,272(sp)
   16dfa:	10812603          	lw	a2,264(sp)
   16dfe:	031c                	add	a5,sp,384
   16e00:	fc88c9e3          	blt	a7,s0,16dd2 <_svfprintf_r+0x8e8>
   16e04:	6e8a                	ld	t4,128(sp)
   16e06:	8e56                	mv	t3,s5
   16e08:	8ada                	mv	s5,s6
   16e0a:	8b22                	mv	s6,s0
   16e0c:	843e                	mv	s0,a5
   16e0e:	87a6                	mv	a5,s1
   16e10:	84d2                	mv	s1,s4
   16e12:	8a6a                	mv	s4,s10
   16e14:	8d3e                	mv	s10,a5
   16e16:	0016051b          	addw	a0,a2,1
   16e1a:	95da                	add	a1,a1,s6
   16e1c:	01a43023          	sd	s10,0(s0)
   16e20:	01643423          	sd	s6,8(s0)
   16e24:	ea2e                	sd	a1,272(sp)
   16e26:	10a12423          	sw	a0,264(sp)
   16e2a:	461d                	li	a2,7
   16e2c:	0ea642e3          	blt	a2,a0,17710 <_svfprintf_r+0x1226>
   16e30:	419e0b3b          	subw	s6,t3,s9
   16e34:	0441                	add	s0,s0,16
   16e36:	8d2e                	mv	s10,a1
   16e38:	89605ce3          	blez	s6,166d0 <_svfprintf_r+0x1e6>
   16e3c:	85ea                	mv	a1,s10
   16e3e:	10812603          	lw	a2,264(sp)
   16e42:	00006d17          	auipc	s10,0x6
   16e46:	586d0d13          	add	s10,s10,1414 # 1d3c8 <zeroes.0>
   16e4a:	056ddd63          	bge	s11,s6,16ea4 <_svfprintf_r+0x9ba>
   16e4e:	87a2                	mv	a5,s0
   16e50:	4c1d                	li	s8,7
   16e52:	845a                	mv	s0,s6
   16e54:	8b52                	mv	s6,s4
   16e56:	8a26                	mv	s4,s1
   16e58:	84f6                	mv	s1,t4
   16e5a:	a021                	j	16e62 <_svfprintf_r+0x978>
   16e5c:	3441                	addw	s0,s0,-16
   16e5e:	028dde63          	bge	s11,s0,16e9a <_svfprintf_r+0x9b0>
   16e62:	2605                	addw	a2,a2,1
   16e64:	05c1                	add	a1,a1,16
   16e66:	00006697          	auipc	a3,0x6
   16e6a:	56268693          	add	a3,a3,1378 # 1d3c8 <zeroes.0>
   16e6e:	e394                	sd	a3,0(a5)
   16e70:	01b7b423          	sd	s11,8(a5)
   16e74:	ea2e                	sd	a1,272(sp)
   16e76:	10c12423          	sw	a2,264(sp)
   16e7a:	07c1                	add	a5,a5,16
   16e7c:	fecc50e3          	bge	s8,a2,16e5c <_svfprintf_r+0x972>
   16e80:	65c2                	ld	a1,16(sp)
   16e82:	6522                	ld	a0,8(sp)
   16e84:	0210                	add	a2,sp,256
   16e86:	1ba030ef          	jal	1a040 <__ssprint_r>
   16e8a:	e529                	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16e8c:	3441                	addw	s0,s0,-16
   16e8e:	65d2                	ld	a1,272(sp)
   16e90:	10812603          	lw	a2,264(sp)
   16e94:	031c                	add	a5,sp,384
   16e96:	fc8dc6e3          	blt	s11,s0,16e62 <_svfprintf_r+0x978>
   16e9a:	8ea6                	mv	t4,s1
   16e9c:	84d2                	mv	s1,s4
   16e9e:	8a5a                	mv	s4,s6
   16ea0:	8b22                	mv	s6,s0
   16ea2:	843e                	mv	s0,a5
   16ea4:	0016051b          	addw	a0,a2,1
   16ea8:	95da                	add	a1,a1,s6
   16eaa:	01a43023          	sd	s10,0(s0)
   16eae:	01643423          	sd	s6,8(s0)
   16eb2:	ea2e                	sd	a1,272(sp)
   16eb4:	10a12423          	sw	a0,264(sp)
   16eb8:	461d                	li	a2,7
   16eba:	36a64b63          	blt	a2,a0,17230 <_svfprintf_r+0xd46>
   16ebe:	0441                	add	s0,s0,16
   16ec0:	8d2e                	mv	s10,a1
   16ec2:	80fff06f          	j	166d0 <_svfprintf_r+0x1e6>
   16ec6:	65c2                	ld	a1,16(sp)
   16ec8:	6522                	ld	a0,8(sp)
   16eca:	0210                	add	a2,sp,256
   16ecc:	174030ef          	jal	1a040 <__ssprint_r>
   16ed0:	840506e3          	beqz	a0,1671c <_svfprintf_r+0x232>
   16ed4:	7582                	ld	a1,32(sp)
   16ed6:	860585e3          	beqz	a1,16740 <_svfprintf_r+0x256>
   16eda:	6522                	ld	a0,8(sp)
   16edc:	88ffb0ef          	jal	1276a <_free_r>
   16ee0:	b085                	j	16740 <_svfprintf_r+0x256>
   16ee2:	4705                	li	a4,1
   16ee4:	8c4a                	mv	s8,s2
   16ee6:	cae792e3          	bne	a5,a4,16b8a <_svfprintf_r+0x6a0>
   16eea:	47a5                	li	a5,9
   16eec:	4167ea63          	bltu	a5,s6,17300 <_svfprintf_r+0xe16>
   16ef0:	030b0b1b          	addw	s6,s6,48
   16ef4:	17610da3          	sb	s6,379(sp)
   16ef8:	8962                	mv	s2,s8
   16efa:	4c85                	li	s9,1
   16efc:	17b10a93          	add	s5,sp,379
   16f00:	bed9                	j	16ad6 <_svfprintf_r+0x5ec>
   16f02:	4541                	li	a0,16
   16f04:	65d2                	ld	a1,272(sp)
   16f06:	10812603          	lw	a2,264(sp)
   16f0a:	00006b17          	auipc	s6,0x6
   16f0e:	4ceb0b13          	add	s6,s6,1230 # 1d3d8 <blanks.1>
   16f12:	07a55463          	bge	a0,s10,16f7a <_svfprintf_r+0xa90>
   16f16:	87a2                	mv	a5,s0
   16f18:	4841                	li	a6,16
   16f1a:	846a                	mv	s0,s10
   16f1c:	439d                	li	t2,7
   16f1e:	8d52                	mv	s10,s4
   16f20:	e116                	sd	t0,128(sp)
   16f22:	8a26                	mv	s4,s1
   16f24:	e576                	sd	t4,136(sp)
   16f26:	84da                	mv	s1,s6
   16f28:	8b56                	mv	s6,s5
   16f2a:	8af2                	mv	s5,t3
   16f2c:	a021                	j	16f34 <_svfprintf_r+0xa4a>
   16f2e:	3441                	addw	s0,s0,-16
   16f30:	02885c63          	bge	a6,s0,16f68 <_svfprintf_r+0xa7e>
   16f34:	2605                	addw	a2,a2,1
   16f36:	05c1                	add	a1,a1,16
   16f38:	e384                	sd	s1,0(a5)
   16f3a:	0107b423          	sd	a6,8(a5)
   16f3e:	ea2e                	sd	a1,272(sp)
   16f40:	10c12423          	sw	a2,264(sp)
   16f44:	07c1                	add	a5,a5,16
   16f46:	fec3d4e3          	bge	t2,a2,16f2e <_svfprintf_r+0xa44>
   16f4a:	65c2                	ld	a1,16(sp)
   16f4c:	6522                	ld	a0,8(sp)
   16f4e:	0210                	add	a2,sp,256
   16f50:	0f0030ef          	jal	1a040 <__ssprint_r>
   16f54:	f141                	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16f56:	4841                	li	a6,16
   16f58:	3441                	addw	s0,s0,-16
   16f5a:	65d2                	ld	a1,272(sp)
   16f5c:	10812603          	lw	a2,264(sp)
   16f60:	031c                	add	a5,sp,384
   16f62:	439d                	li	t2,7
   16f64:	fc8848e3          	blt	a6,s0,16f34 <_svfprintf_r+0xa4a>
   16f68:	628a                	ld	t0,128(sp)
   16f6a:	6eaa                	ld	t4,136(sp)
   16f6c:	8e56                	mv	t3,s5
   16f6e:	8ada                	mv	s5,s6
   16f70:	8b26                	mv	s6,s1
   16f72:	84d2                	mv	s1,s4
   16f74:	8a6a                	mv	s4,s10
   16f76:	8d22                	mv	s10,s0
   16f78:	843e                	mv	s0,a5
   16f7a:	2605                	addw	a2,a2,1
   16f7c:	95ea                	add	a1,a1,s10
   16f7e:	01643023          	sd	s6,0(s0)
   16f82:	01a43423          	sd	s10,8(s0)
   16f86:	ea2e                	sd	a1,272(sp)
   16f88:	10c12423          	sw	a2,264(sp)
   16f8c:	0006059b          	sext.w	a1,a2
   16f90:	461d                	li	a2,7
   16f92:	0441                	add	s0,s0,16
   16f94:	ecb65d63          	bge	a2,a1,1666e <_svfprintf_r+0x184>
   16f98:	65c2                	ld	a1,16(sp)
   16f9a:	6522                	ld	a0,8(sp)
   16f9c:	0210                	add	a2,sp,256
   16f9e:	e972                	sd	t3,144(sp)
   16fa0:	e576                	sd	t4,136(sp)
   16fa2:	e116                	sd	t0,128(sp)
   16fa4:	09c030ef          	jal	1a040 <__ssprint_r>
   16fa8:	f515                	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16faa:	6e4a                	ld	t3,144(sp)
   16fac:	6eaa                	ld	t4,136(sp)
   16fae:	628a                	ld	t0,128(sp)
   16fb0:	0300                	add	s0,sp,384
   16fb2:	ebcff06f          	j	1666e <_svfprintf_r+0x184>
   16fb6:	65c2                	ld	a1,16(sp)
   16fb8:	6522                	ld	a0,8(sp)
   16fba:	0210                	add	a2,sp,256
   16fbc:	e572                	sd	t3,136(sp)
   16fbe:	e176                	sd	t4,128(sp)
   16fc0:	080030ef          	jal	1a040 <__ssprint_r>
   16fc4:	f901                	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   16fc6:	6d52                	ld	s10,272(sp)
   16fc8:	6e2a                	ld	t3,136(sp)
   16fca:	6e8a                	ld	t4,128(sp)
   16fcc:	0300                	add	s0,sp,384
   16fce:	ef2ff06f          	j	166c0 <_svfprintf_r+0x1d6>
   16fd2:	46c1                	li	a3,16
   16fd4:	10812783          	lw	a5,264(sp)
   16fd8:	00006b17          	auipc	s6,0x6
   16fdc:	400b0b13          	add	s6,s6,1024 # 1d3d8 <blanks.1>
   16fe0:	0526d463          	bge	a3,s2,17028 <_svfprintf_r+0xb3e>
   16fe4:	6aa2                	ld	s5,8(sp)
   16fe6:	6d42                	ld	s10,16(sp)
   16fe8:	4c41                	li	s8,16
   16fea:	4c9d                	li	s9,7
   16fec:	a021                	j	16ff4 <_svfprintf_r+0xb0a>
   16fee:	3941                	addw	s2,s2,-16
   16ff0:	032c5c63          	bge	s8,s2,17028 <_svfprintf_r+0xb3e>
   16ff4:	2785                	addw	a5,a5,1
   16ff6:	0641                	add	a2,a2,16
   16ff8:	01643023          	sd	s6,0(s0)
   16ffc:	01843423          	sd	s8,8(s0)
   17000:	ea32                	sd	a2,272(sp)
   17002:	10f12423          	sw	a5,264(sp)
   17006:	0441                	add	s0,s0,16
   17008:	fefcd3e3          	bge	s9,a5,16fee <_svfprintf_r+0xb04>
   1700c:	0210                	add	a2,sp,256
   1700e:	85ea                	mv	a1,s10
   17010:	8556                	mv	a0,s5
   17012:	02e030ef          	jal	1a040 <__ssprint_r>
   17016:	ea051fe3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   1701a:	3941                	addw	s2,s2,-16
   1701c:	6652                	ld	a2,272(sp)
   1701e:	10812783          	lw	a5,264(sp)
   17022:	0300                	add	s0,sp,384
   17024:	fd2c48e3          	blt	s8,s2,16ff4 <_svfprintf_r+0xb0a>
   17028:	0017869b          	addw	a3,a5,1
   1702c:	964a                	add	a2,a2,s2
   1702e:	01643023          	sd	s6,0(s0)
   17032:	01243423          	sd	s2,8(s0)
   17036:	ea32                	sd	a2,272(sp)
   17038:	10d12423          	sw	a3,264(sp)
   1703c:	479d                	li	a5,7
   1703e:	ecd7d663          	bge	a5,a3,1670a <_svfprintf_r+0x220>
   17042:	65c2                	ld	a1,16(sp)
   17044:	6522                	ld	a0,8(sp)
   17046:	0210                	add	a2,sp,256
   17048:	7f9020ef          	jal	1a040 <__ssprint_r>
   1704c:	e80514e3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17050:	6652                	ld	a2,272(sp)
   17052:	eb8ff06f          	j	1670a <_svfprintf_r+0x220>
   17056:	456e                	lw	a0,216(sp)
   17058:	5ca05263          	blez	a0,1761c <_svfprintf_r+0x1132>
   1705c:	77c2                	ld	a5,48(sp)
   1705e:	7722                	ld	a4,40(sp)
   17060:	00fa8c33          	add	s8,s5,a5
   17064:	86be                	mv	a3,a5
   17066:	28f74363          	blt	a4,a5,172ec <_svfprintf_r+0xe02>
   1706a:	00068b1b          	sext.w	s6,a3
   1706e:	03605263          	blez	s6,17092 <_svfprintf_r+0xba8>
   17072:	10812603          	lw	a2,264(sp)
   17076:	9d5a                	add	s10,s10,s6
   17078:	01543023          	sd	s5,0(s0)
   1707c:	0016059b          	addw	a1,a2,1
   17080:	01643423          	sd	s6,8(s0)
   17084:	ea6a                	sd	s10,272(sp)
   17086:	10b12423          	sw	a1,264(sp)
   1708a:	461d                	li	a2,7
   1708c:	0441                	add	s0,s0,16
   1708e:	06b64de3          	blt	a2,a1,17908 <_svfprintf_r+0x141e>
   17092:	fffb4613          	not	a2,s6
   17096:	77a2                	ld	a5,40(sp)
   17098:	967d                	sra	a2,a2,0x3f
   1709a:	00cb76b3          	and	a3,s6,a2
   1709e:	40d78b3b          	subw	s6,a5,a3
   170a2:	39604163          	bgtz	s6,17424 <_svfprintf_r+0xf3a>
   170a6:	77a2                	ld	a5,40(sp)
   170a8:	40097693          	and	a3,s2,1024
   170ac:	9abe                	add	s5,s5,a5
   170ae:	40069363          	bnez	a3,174b4 <_svfprintf_r+0xfca>
   170b2:	46ee                	lw	a3,216(sp)
   170b4:	77c2                	ld	a5,48(sp)
   170b6:	00f6c663          	blt	a3,a5,170c2 <_svfprintf_r+0xbd8>
   170ba:	00197613          	and	a2,s2,1
   170be:	060602e3          	beqz	a2,17922 <_svfprintf_r+0x1438>
   170c2:	10812583          	lw	a1,264(sp)
   170c6:	67a6                	ld	a5,72(sp)
   170c8:	6746                	ld	a4,80(sp)
   170ca:	0015851b          	addw	a0,a1,1
   170ce:	01a78633          	add	a2,a5,s10
   170d2:	e018                	sd	a4,0(s0)
   170d4:	e41c                	sd	a5,8(s0)
   170d6:	ea32                	sd	a2,272(sp)
   170d8:	10a12423          	sw	a0,264(sp)
   170dc:	459d                	li	a1,7
   170de:	0441                	add	s0,s0,16
   170e0:	4ea5c5e3          	blt	a1,a0,17dca <_svfprintf_r+0x18e0>
   170e4:	77c2                	ld	a5,48(sp)
   170e6:	415c0c33          	sub	s8,s8,s5
   170ea:	000c051b          	sext.w	a0,s8
   170ee:	40d785bb          	subw	a1,a5,a3
   170f2:	00a5d363          	bge	a1,a0,170f8 <_svfprintf_r+0xc0e>
   170f6:	8c2e                	mv	s8,a1
   170f8:	2c01                	sext.w	s8,s8
   170fa:	03805163          	blez	s8,1711c <_svfprintf_r+0xc32>
   170fe:	10812683          	lw	a3,264(sp)
   17102:	9662                	add	a2,a2,s8
   17104:	01543023          	sd	s5,0(s0)
   17108:	2685                	addw	a3,a3,1
   1710a:	01843423          	sd	s8,8(s0)
   1710e:	ea32                	sd	a2,272(sp)
   17110:	10d12423          	sw	a3,264(sp)
   17114:	479d                	li	a5,7
   17116:	0441                	add	s0,s0,16
   17118:	52d7c3e3          	blt	a5,a3,17e3e <_svfprintf_r+0x1954>
   1711c:	fffc4793          	not	a5,s8
   17120:	97fd                	sra	a5,a5,0x3f
   17122:	00fc7c33          	and	s8,s8,a5
   17126:	41858c3b          	subw	s8,a1,s8
   1712a:	dd805863          	blez	s8,166fa <_svfprintf_r+0x210>
   1712e:	46c1                	li	a3,16
   17130:	10812783          	lw	a5,264(sp)
   17134:	00006d17          	auipc	s10,0x6
   17138:	294d0d13          	add	s10,s10,660 # 1d3c8 <zeroes.0>
   1713c:	5986d963          	bge	a3,s8,176ce <_svfprintf_r+0x11e4>
   17140:	876a                	mv	a4,s10
   17142:	6b22                	ld	s6,8(sp)
   17144:	8d62                	mv	s10,s8
   17146:	4cc1                	li	s9,16
   17148:	8c52                	mv	s8,s4
   1714a:	4a9d                	li	s5,7
   1714c:	8a26                	mv	s4,s1
   1714e:	84ba                	mv	s1,a4
   17150:	a021                	j	17158 <_svfprintf_r+0xc6e>
   17152:	3d41                	addw	s10,s10,-16
   17154:	57acd863          	bge	s9,s10,176c4 <_svfprintf_r+0x11da>
   17158:	2785                	addw	a5,a5,1
   1715a:	0641                	add	a2,a2,16
   1715c:	e004                	sd	s1,0(s0)
   1715e:	01943423          	sd	s9,8(s0)
   17162:	ea32                	sd	a2,272(sp)
   17164:	10f12423          	sw	a5,264(sp)
   17168:	0441                	add	s0,s0,16
   1716a:	fefad4e3          	bge	s5,a5,17152 <_svfprintf_r+0xc68>
   1716e:	65c2                	ld	a1,16(sp)
   17170:	0210                	add	a2,sp,256
   17172:	855a                	mv	a0,s6
   17174:	6cd020ef          	jal	1a040 <__ssprint_r>
   17178:	d4051ee3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   1717c:	6652                	ld	a2,272(sp)
   1717e:	10812783          	lw	a5,264(sp)
   17182:	0300                	add	s0,sp,384
   17184:	b7f9                	j	17152 <_svfprintf_r+0xc68>
   17186:	00197613          	and	a2,s2,1
   1718a:	f0061a63          	bnez	a2,1689e <_svfprintf_r+0x3b4>
   1718e:	10812603          	lw	a2,264(sp)
   17192:	001d0c93          	add	s9,s10,1
   17196:	01543023          	sd	s5,0(s0)
   1719a:	0016079b          	addw	a5,a2,1
   1719e:	e414                	sd	a3,8(s0)
   171a0:	10f12423          	sw	a5,264(sp)
   171a4:	0007841b          	sext.w	s0,a5
   171a8:	ea66                	sd	s9,272(sp)
   171aa:	479d                	li	a5,7
   171ac:	f687d463          	bge	a5,s0,16914 <_svfprintf_r+0x42a>
   171b0:	65c2                	ld	a1,16(sp)
   171b2:	6522                	ld	a0,8(sp)
   171b4:	0210                	add	a2,sp,256
   171b6:	68b020ef          	jal	1a040 <__ssprint_r>
   171ba:	d0051de3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   171be:	6cd2                	ld	s9,272(sp)
   171c0:	10812403          	lw	s0,264(sp)
   171c4:	18010c13          	add	s8,sp,384
   171c8:	f4cff06f          	j	16914 <_svfprintf_r+0x42a>
   171cc:	7742                	ld	a4,48(sp)
   171ce:	4785                	li	a5,1
   171d0:	f4e7d263          	bge	a5,a4,16914 <_svfprintf_r+0x42a>
   171d4:	47c5                	li	a5,17
   171d6:	00006d17          	auipc	s10,0x6
   171da:	1f2d0d13          	add	s10,s10,498 # 1d3c8 <zeroes.0>
   171de:	5ae7dd63          	bge	a5,a4,17798 <_svfprintf_r+0x12ae>
   171e2:	875a                	mv	a4,s6
   171e4:	87ea                	mv	a5,s10
   171e6:	8b26                	mv	s6,s1
   171e8:	8d52                	mv	s10,s4
   171ea:	4841                	li	a6,16
   171ec:	8a4a                	mv	s4,s2
   171ee:	4a9d                	li	s5,7
   171f0:	893e                	mv	s2,a5
   171f2:	84ba                	mv	s1,a4
   171f4:	a021                	j	171fc <_svfprintf_r+0xd12>
   171f6:	34c1                	addw	s1,s1,-16
   171f8:	58985963          	bge	a6,s1,1778a <_svfprintf_r+0x12a0>
   171fc:	2405                	addw	s0,s0,1
   171fe:	0cc1                	add	s9,s9,16
   17200:	012c3023          	sd	s2,0(s8)
   17204:	010c3423          	sd	a6,8(s8)
   17208:	ea66                	sd	s9,272(sp)
   1720a:	10812423          	sw	s0,264(sp)
   1720e:	0c41                	add	s8,s8,16
   17210:	fe8ad3e3          	bge	s5,s0,171f6 <_svfprintf_r+0xd0c>
   17214:	65c2                	ld	a1,16(sp)
   17216:	6522                	ld	a0,8(sp)
   17218:	0210                	add	a2,sp,256
   1721a:	627020ef          	jal	1a040 <__ssprint_r>
   1721e:	ca051be3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17222:	6cd2                	ld	s9,272(sp)
   17224:	10812403          	lw	s0,264(sp)
   17228:	18010c13          	add	s8,sp,384
   1722c:	4841                	li	a6,16
   1722e:	b7e1                	j	171f6 <_svfprintf_r+0xd0c>
   17230:	65c2                	ld	a1,16(sp)
   17232:	6522                	ld	a0,8(sp)
   17234:	0210                	add	a2,sp,256
   17236:	e176                	sd	t4,128(sp)
   17238:	609020ef          	jal	1a040 <__ssprint_r>
   1723c:	c8051ce3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17240:	6d52                	ld	s10,272(sp)
   17242:	6e8a                	ld	t4,128(sp)
   17244:	0300                	add	s0,sp,384
   17246:	c8aff06f          	j	166d0 <_svfprintf_r+0x1e6>
   1724a:	4c81                	li	s9,0
   1724c:	17c10a93          	add	s5,sp,380
   17250:	b059                	j	16ad6 <_svfprintf_r+0x5ec>
   17252:	65c2                	ld	a1,16(sp)
   17254:	6522                	ld	a0,8(sp)
   17256:	0210                	add	a2,sp,256
   17258:	5e9020ef          	jal	1a040 <__ssprint_r>
   1725c:	c6051ce3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17260:	6d52                	ld	s10,272(sp)
   17262:	10812683          	lw	a3,264(sp)
   17266:	18010c13          	add	s8,sp,384
   1726a:	e54ff06f          	j	168be <_svfprintf_r+0x3d4>
   1726e:	65c2                	ld	a1,16(sp)
   17270:	6522                	ld	a0,8(sp)
   17272:	0210                	add	a2,sp,256
   17274:	5cd020ef          	jal	1a040 <__ssprint_r>
   17278:	c4051ee3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   1727c:	6cd2                	ld	s9,272(sp)
   1727e:	10812403          	lw	s0,264(sp)
   17282:	18010c13          	add	s8,sp,384
   17286:	e5aff06f          	j	168e0 <_svfprintf_r+0x3f6>
   1728a:	00197793          	and	a5,s2,1
   1728e:	866a                	mv	a2,s10
   17290:	c6078563          	beqz	a5,166fa <_svfprintf_r+0x210>
   17294:	b489                	j	16cd6 <_svfprintf_r+0x7ec>
   17296:	8e5e                	mv	t3,s7
   17298:	b8ad                	j	16b12 <_svfprintf_r+0x628>
   1729a:	03000793          	li	a5,48
   1729e:	16f10da3          	sb	a5,379(sp)
   172a2:	17b10a93          	add	s5,sp,379
   172a6:	831ff06f          	j	16ad6 <_svfprintf_r+0x5ec>
   172aa:	0a3d                	add	s4,s4,15
   172ac:	ff0a7a13          	and	s4,s4,-16
   172b0:	000a3703          	ld	a4,0(s4)
   172b4:	008a3583          	ld	a1,8(s4)
   172b8:	0a41                	add	s4,s4,16
   172ba:	d1aff06f          	j	167d4 <_svfprintf_r+0x2ea>
   172be:	04097793          	and	a5,s2,64
   172c2:	000a2b03          	lw	s6,0(s4)
   172c6:	56078963          	beqz	a5,17838 <_svfprintf_r+0x134e>
   172ca:	1b42                	sll	s6,s6,0x30
   172cc:	030b5b13          	srl	s6,s6,0x30
   172d0:	ba31                	j	16bec <_svfprintf_r+0x702>
   172d2:	0009ce83          	lbu	t4,0(s3)
   172d6:	b0078263          	beqz	a5,165da <_svfprintf_r+0xf0>
   172da:	0007c783          	lbu	a5,0(a5)
   172de:	ae078e63          	beqz	a5,165da <_svfprintf_r+0xf0>
   172e2:	40096913          	or	s2,s2,1024
   172e6:	2901                	sext.w	s2,s2
   172e8:	af2ff06f          	j	165da <_svfprintf_r+0xf0>
   172ec:	86ba                	mv	a3,a4
   172ee:	00068b1b          	sext.w	s6,a3
   172f2:	d96040e3          	bgtz	s6,17072 <_svfprintf_r+0xb88>
   172f6:	bb71                	j	17092 <_svfprintf_r+0xba8>
   172f8:	47a5                	li	a5,9
   172fa:	8a3a                	mv	s4,a4
   172fc:	bf67fae3          	bgeu	a5,s6,16ef0 <_svfprintf_r+0xa06>
   17300:	17c10b93          	add	s7,sp,380
   17304:	7826                	ld	a6,104(sp)
   17306:	400c7c93          	and	s9,s8,1024
   1730a:	4681                	li	a3,0
   1730c:	85de                	mv	a1,s7
   1730e:	4929                	li	s2,10
   17310:	4d25                	li	s10,9
   17312:	0ff00713          	li	a4,255
   17316:	a039                	j	17324 <_svfprintf_r+0xe3a>
   17318:	032b57b3          	divu	a5,s6,s2
   1731c:	036d7763          	bgeu	s10,s6,1734a <_svfprintf_r+0xe60>
   17320:	8b3e                	mv	s6,a5
   17322:	85d6                	mv	a1,s5
   17324:	fff58a93          	add	s5,a1,-1
   17328:	2685                	addw	a3,a3,1
   1732a:	032b77b3          	remu	a5,s6,s2
   1732e:	0307879b          	addw	a5,a5,48
   17332:	fef58fa3          	sb	a5,-1(a1)
   17336:	fe0c81e3          	beqz	s9,17318 <_svfprintf_r+0xe2e>
   1733a:	00084783          	lbu	a5,0(a6)
   1733e:	fcf69de3          	bne	a3,a5,17318 <_svfprintf_r+0xe2e>
   17342:	fce78be3          	beq	a5,a4,17318 <_svfprintf_r+0xe2e>
   17346:	596d6263          	bltu	s10,s6,178ca <_svfprintf_r+0x13e0>
   1734a:	f4c2                	sd	a6,104(sp)
   1734c:	f836                	sd	a3,48(sp)
   1734e:	415b8cbb          	subw	s9,s7,s5
   17352:	8962                	mv	s2,s8
   17354:	f82ff06f          	j	16ad6 <_svfprintf_r+0x5ec>
   17358:	00005797          	auipc	a5,0x5
   1735c:	73878793          	add	a5,a5,1848 # 1ca90 <__clzdi2+0x72>
   17360:	8e5e                	mv	t3,s7
   17362:	ecbe                	sd	a5,88(sp)
   17364:	02097793          	and	a5,s2,32
   17368:	008a0713          	add	a4,s4,8
   1736c:	28079963          	bnez	a5,175fe <_svfprintf_r+0x1114>
   17370:	01097793          	and	a5,s2,16
   17374:	28079563          	bnez	a5,175fe <_svfprintf_r+0x1114>
   17378:	04097793          	and	a5,s2,64
   1737c:	000a2b03          	lw	s6,0(s4)
   17380:	4c078463          	beqz	a5,17848 <_svfprintf_r+0x135e>
   17384:	1b42                	sll	s6,s6,0x30
   17386:	030b5b13          	srl	s6,s6,0x30
   1738a:	00197793          	and	a5,s2,1
   1738e:	cf81                	beqz	a5,173a6 <_svfprintf_r+0xebc>
   17390:	000b0b63          	beqz	s6,173a6 <_svfprintf_r+0xebc>
   17394:	00296913          	or	s2,s2,2
   17398:	03000793          	li	a5,48
   1739c:	0cf10823          	sb	a5,208(sp)
   173a0:	0dd108a3          	sb	t4,209(sp)
   173a4:	2901                	sext.w	s2,s2
   173a6:	bff97c13          	and	s8,s2,-1025
   173aa:	2c01                	sext.w	s8,s8
   173ac:	8a3a                	mv	s4,a4
   173ae:	4789                	li	a5,2
   173b0:	efcff06f          	j	16aac <_svfprintf_r+0x5c2>
   173b4:	8e5e                	mv	t3,s7
   173b6:	8c4a                	mv	s8,s2
   173b8:	eceff06f          	j	16a86 <_svfprintf_r+0x59c>
   173bc:	00005797          	auipc	a5,0x5
   173c0:	6ec78793          	add	a5,a5,1772 # 1caa8 <__clzdi2+0x8a>
   173c4:	8e5e                	mv	t3,s7
   173c6:	ecbe                	sd	a5,88(sp)
   173c8:	bf71                	j	17364 <_svfprintf_r+0xe7a>
   173ca:	8e5e                	mv	t3,s7
   173cc:	80bff06f          	j	16bd6 <_svfprintf_r+0x6ec>
   173d0:	65c2                	ld	a1,16(sp)
   173d2:	6522                	ld	a0,8(sp)
   173d4:	0210                	add	a2,sp,256
   173d6:	46b020ef          	jal	1a040 <__ssprint_r>
   173da:	ae051de3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   173de:	6652                	ld	a2,272(sp)
   173e0:	0300                	add	s0,sp,384
   173e2:	ba29                	j	16cfc <_svfprintf_r+0x812>
   173e4:	02096913          	or	s2,s2,32
   173e8:	0019ce83          	lbu	t4,1(s3)
   173ec:	2901                	sext.w	s2,s2
   173ee:	0985                	add	s3,s3,1
   173f0:	9eaff06f          	j	165da <_svfprintf_r+0xf0>
   173f4:	20096913          	or	s2,s2,512
   173f8:	0019ce83          	lbu	t4,1(s3)
   173fc:	2901                	sext.w	s2,s2
   173fe:	0985                	add	s3,s3,1
   17400:	9daff06f          	j	165da <_svfprintf_r+0xf0>
   17404:	6522                	ld	a0,8(sp)
   17406:	04000593          	li	a1,64
   1740a:	9a7fd0ef          	jal	14db0 <_malloc_r>
   1740e:	67c2                	ld	a5,16(sp)
   17410:	e388                	sd	a0,0(a5)
   17412:	ef88                	sd	a0,24(a5)
   17414:	360508e3          	beqz	a0,17f84 <_svfprintf_r+0x1a9a>
   17418:	67c2                	ld	a5,16(sp)
   1741a:	04000713          	li	a4,64
   1741e:	d398                	sw	a4,32(a5)
   17420:	930ff06f          	j	16550 <_svfprintf_r+0x66>
   17424:	4541                	li	a0,16
   17426:	866a                	mv	a2,s10
   17428:	10812583          	lw	a1,264(sp)
   1742c:	00006d17          	auipc	s10,0x6
   17430:	f9cd0d13          	add	s10,s10,-100 # 1d3c8 <zeroes.0>
   17434:	47655a63          	bge	a0,s6,178a8 <_svfprintf_r+0x13be>
   17438:	8756                	mv	a4,s5
   1743a:	87ea                	mv	a5,s10
   1743c:	8aa6                	mv	s5,s1
   1743e:	8d52                	mv	s10,s4
   17440:	84da                	mv	s1,s6
   17442:	8a4a                	mv	s4,s2
   17444:	4841                	li	a6,16
   17446:	4c9d                	li	s9,7
   17448:	893e                	mv	s2,a5
   1744a:	8b3a                	mv	s6,a4
   1744c:	a021                	j	17454 <_svfprintf_r+0xf6a>
   1744e:	34c1                	addw	s1,s1,-16
   17450:	44985463          	bge	a6,s1,17898 <_svfprintf_r+0x13ae>
   17454:	2585                	addw	a1,a1,1
   17456:	0641                	add	a2,a2,16
   17458:	01243023          	sd	s2,0(s0)
   1745c:	01043423          	sd	a6,8(s0)
   17460:	ea32                	sd	a2,272(sp)
   17462:	10b12423          	sw	a1,264(sp)
   17466:	0441                	add	s0,s0,16
   17468:	febcd3e3          	bge	s9,a1,1744e <_svfprintf_r+0xf64>
   1746c:	65c2                	ld	a1,16(sp)
   1746e:	6522                	ld	a0,8(sp)
   17470:	0210                	add	a2,sp,256
   17472:	3cf020ef          	jal	1a040 <__ssprint_r>
   17476:	a4051fe3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   1747a:	6652                	ld	a2,272(sp)
   1747c:	10812583          	lw	a1,264(sp)
   17480:	0300                	add	s0,sp,384
   17482:	4841                	li	a6,16
   17484:	b7e9                	j	1744e <_svfprintf_r+0xf64>
   17486:	8556                	mv	a0,s5
   17488:	e176                	sd	t4,128(sp)
   1748a:	f51fe0ef          	jal	163da <strlen>
   1748e:	00050c9b          	sext.w	s9,a0
   17492:	0cf14603          	lbu	a2,207(sp)
   17496:	fffcc713          	not	a4,s9
   1749a:	977d                	sra	a4,a4,0x3f
   1749c:	f002                	sd	zero,32(sp)
   1749e:	e082                	sd	zero,64(sp)
   174a0:	fc02                	sd	zero,56(sp)
   174a2:	f402                	sd	zero,40(sp)
   174a4:	6e8a                	ld	t4,128(sp)
   174a6:	01977bb3          	and	s7,a4,s9
   174aa:	4e01                	li	t3,0
   174ac:	d0061463          	bnez	a2,169b4 <_svfprintf_r+0x4ca>
   174b0:	9a4ff06f          	j	16654 <_svfprintf_r+0x16a>
   174b4:	e926                	sd	s1,144(sp)
   174b6:	74e2                	ld	s1,56(sp)
   174b8:	e14e                	sd	s3,128(sp)
   174ba:	e54a                	sd	s2,136(sp)
   174bc:	fc5e                	sd	s7,56(sp)
   174be:	6b86                	ld	s7,64(sp)
   174c0:	e0d2                	sd	s4,64(sp)
   174c2:	87a2                	mv	a5,s0
   174c4:	8a56                	mv	s4,s5
   174c6:	79a6                	ld	s3,104(sp)
   174c8:	7966                	ld	s2,120(sp)
   174ca:	6ca2                	ld	s9,8(sp)
   174cc:	6442                	ld	s0,16(sp)
   174ce:	7ac6                	ld	s5,112(sp)
   174d0:	489d                	li	a7,7
   174d2:	4841                	li	a6,16
   174d4:	00006b17          	auipc	s6,0x6
   174d8:	ef4b0b13          	add	s6,s6,-268 # 1d3c8 <zeroes.0>
   174dc:	86ea                	mv	a3,s10
   174de:	c0c1                	beqz	s1,1755e <_svfprintf_r+0x1074>
   174e0:	100b8c63          	beqz	s7,175f8 <_svfprintf_r+0x110e>
   174e4:	3bfd                	addw	s7,s7,-1
   174e6:	10812703          	lw	a4,264(sp)
   174ea:	96d6                	add	a3,a3,s5
   174ec:	0127b023          	sd	s2,0(a5)
   174f0:	0017061b          	addw	a2,a4,1
   174f4:	0157b423          	sd	s5,8(a5)
   174f8:	ea36                	sd	a3,272(sp)
   174fa:	10c12423          	sw	a2,264(sp)
   174fe:	07c1                	add	a5,a5,16
   17500:	10c8c263          	blt	a7,a2,17604 <_svfprintf_r+0x111a>
   17504:	0009c603          	lbu	a2,0(s3)
   17508:	414c0733          	sub	a4,s8,s4
   1750c:	0007059b          	sext.w	a1,a4
   17510:	0006031b          	sext.w	t1,a2
   17514:	00b65363          	bge	a2,a1,1751a <_svfprintf_r+0x1030>
   17518:	871a                	mv	a4,t1
   1751a:	00070d1b          	sext.w	s10,a4
   1751e:	03a05563          	blez	s10,17548 <_svfprintf_r+0x105e>
   17522:	10812603          	lw	a2,264(sp)
   17526:	96ea                	add	a3,a3,s10
   17528:	0147b023          	sd	s4,0(a5)
   1752c:	0016059b          	addw	a1,a2,1
   17530:	01a7b423          	sd	s10,8(a5)
   17534:	ea36                	sd	a3,272(sp)
   17536:	10b12423          	sw	a1,264(sp)
   1753a:	1ab8cb63          	blt	a7,a1,176f0 <_svfprintf_r+0x1206>
   1753e:	0009c603          	lbu	a2,0(s3)
   17542:	07c1                	add	a5,a5,16
   17544:	0006031b          	sext.w	t1,a2
   17548:	fffd4593          	not	a1,s10
   1754c:	95fd                	sra	a1,a1,0x3f
   1754e:	00bd7733          	and	a4,s10,a1
   17552:	40e30d3b          	subw	s10,t1,a4
   17556:	03a04363          	bgtz	s10,1757c <_svfprintf_r+0x1092>
   1755a:	9a32                	add	s4,s4,a2
   1755c:	f0d1                	bnez	s1,174e0 <_svfprintf_r+0xff6>
   1755e:	f80b93e3          	bnez	s7,174e4 <_svfprintf_r+0xffa>
   17562:	f4ce                	sd	s3,104(sp)
   17564:	8ad2                	mv	s5,s4
   17566:	698a                	ld	s3,128(sp)
   17568:	692a                	ld	s2,136(sp)
   1756a:	64ca                	ld	s1,144(sp)
   1756c:	7be2                	ld	s7,56(sp)
   1756e:	6a06                	ld	s4,64(sp)
   17570:	843e                	mv	s0,a5
   17572:	8d36                	mv	s10,a3
   17574:	b35c7fe3          	bgeu	s8,s5,170b2 <_svfprintf_r+0xbc8>
   17578:	8ae2                	mv	s5,s8
   1757a:	be25                	j	170b2 <_svfprintf_r+0xbc8>
   1757c:	10812703          	lw	a4,264(sp)
   17580:	00006597          	auipc	a1,0x6
   17584:	e4858593          	add	a1,a1,-440 # 1d3c8 <zeroes.0>
   17588:	05a85863          	bge	a6,s10,175d8 <_svfprintf_r+0x10ee>
   1758c:	f426                	sd	s1,40(sp)
   1758e:	84ea                	mv	s1,s10
   17590:	8d5a                	mv	s10,s6
   17592:	a021                	j	1759a <_svfprintf_r+0x10b0>
   17594:	34c1                	addw	s1,s1,-16
   17596:	02985e63          	bge	a6,s1,175d2 <_svfprintf_r+0x10e8>
   1759a:	2705                	addw	a4,a4,1
   1759c:	06c1                	add	a3,a3,16
   1759e:	0167b023          	sd	s6,0(a5)
   175a2:	0107b423          	sd	a6,8(a5)
   175a6:	ea36                	sd	a3,272(sp)
   175a8:	10e12423          	sw	a4,264(sp)
   175ac:	07c1                	add	a5,a5,16
   175ae:	fee8d3e3          	bge	a7,a4,17594 <_svfprintf_r+0x10aa>
   175b2:	0210                	add	a2,sp,256
   175b4:	85a2                	mv	a1,s0
   175b6:	8566                	mv	a0,s9
   175b8:	289020ef          	jal	1a040 <__ssprint_r>
   175bc:	90051ce3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   175c0:	4841                	li	a6,16
   175c2:	34c1                	addw	s1,s1,-16
   175c4:	66d2                	ld	a3,272(sp)
   175c6:	10812703          	lw	a4,264(sp)
   175ca:	031c                	add	a5,sp,384
   175cc:	489d                	li	a7,7
   175ce:	fc9846e3          	blt	a6,s1,1759a <_svfprintf_r+0x10b0>
   175d2:	85ea                	mv	a1,s10
   175d4:	8d26                	mv	s10,s1
   175d6:	74a2                	ld	s1,40(sp)
   175d8:	0017061b          	addw	a2,a4,1
   175dc:	96ea                	add	a3,a3,s10
   175de:	e38c                	sd	a1,0(a5)
   175e0:	01a7b423          	sd	s10,8(a5)
   175e4:	ea36                	sd	a3,272(sp)
   175e6:	10c12423          	sw	a2,264(sp)
   175ea:	72c8c063          	blt	a7,a2,17d0a <_svfprintf_r+0x1820>
   175ee:	0009c603          	lbu	a2,0(s3)
   175f2:	07c1                	add	a5,a5,16
   175f4:	9a32                	add	s4,s4,a2
   175f6:	b79d                	j	1755c <_svfprintf_r+0x1072>
   175f8:	19fd                	add	s3,s3,-1
   175fa:	34fd                	addw	s1,s1,-1
   175fc:	b5ed                	j	174e6 <_svfprintf_r+0xffc>
   175fe:	000a3b03          	ld	s6,0(s4)
   17602:	b361                	j	1738a <_svfprintf_r+0xea0>
   17604:	0210                	add	a2,sp,256
   17606:	85a2                	mv	a1,s0
   17608:	8566                	mv	a0,s9
   1760a:	237020ef          	jal	1a040 <__ssprint_r>
   1760e:	8c0513e3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17612:	66d2                	ld	a3,272(sp)
   17614:	031c                	add	a5,sp,384
   17616:	4841                	li	a6,16
   17618:	489d                	li	a7,7
   1761a:	b5ed                	j	17504 <_svfprintf_r+0x101a>
   1761c:	10812683          	lw	a3,264(sp)
   17620:	00005597          	auipc	a1,0x5
   17624:	4a858593          	add	a1,a1,1192 # 1cac8 <__clzdi2+0xaa>
   17628:	e00c                	sd	a1,0(s0)
   1762a:	2685                	addw	a3,a3,1
   1762c:	4585                	li	a1,1
   1762e:	001d0613          	add	a2,s10,1
   17632:	e40c                	sd	a1,8(s0)
   17634:	10d12423          	sw	a3,264(sp)
   17638:	0006859b          	sext.w	a1,a3
   1763c:	ea32                	sd	a2,272(sp)
   1763e:	469d                	li	a3,7
   17640:	0441                	add	s0,s0,16
   17642:	04b6cb63          	blt	a3,a1,17698 <_svfprintf_r+0x11ae>
   17646:	16051663          	bnez	a0,177b2 <_svfprintf_r+0x12c8>
   1764a:	77c2                	ld	a5,48(sp)
   1764c:	00197693          	and	a3,s2,1
   17650:	8edd                	or	a3,a3,a5
   17652:	8a068463          	beqz	a3,166fa <_svfprintf_r+0x210>
   17656:	10812683          	lw	a3,264(sp)
   1765a:	67a6                	ld	a5,72(sp)
   1765c:	6746                	ld	a4,80(sp)
   1765e:	0016859b          	addw	a1,a3,1
   17662:	963e                	add	a2,a2,a5
   17664:	e018                	sd	a4,0(s0)
   17666:	e41c                	sd	a5,8(s0)
   17668:	ea32                	sd	a2,272(sp)
   1766a:	10b12423          	sw	a1,264(sp)
   1766e:	469d                	li	a3,7
   17670:	48b6c363          	blt	a3,a1,17af6 <_svfprintf_r+0x160c>
   17674:	0441                	add	s0,s0,16
   17676:	77c2                	ld	a5,48(sp)
   17678:	0015869b          	addw	a3,a1,1
   1767c:	01543023          	sd	s5,0(s0)
   17680:	963e                	add	a2,a2,a5
   17682:	e41c                	sd	a5,8(s0)
   17684:	ea32                	sd	a2,272(sp)
   17686:	10d12423          	sw	a3,264(sp)
   1768a:	479d                	li	a5,7
   1768c:	00d7c463          	blt	a5,a3,17694 <_svfprintf_r+0x11aa>
   17690:	868ff06f          	j	166f8 <_svfprintf_r+0x20e>
   17694:	aa4ff06f          	j	16938 <_svfprintf_r+0x44e>
   17698:	65c2                	ld	a1,16(sp)
   1769a:	6522                	ld	a0,8(sp)
   1769c:	0210                	add	a2,sp,256
   1769e:	1a3020ef          	jal	1a040 <__ssprint_r>
   176a2:	820519e3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   176a6:	456e                	lw	a0,216(sp)
   176a8:	6652                	ld	a2,272(sp)
   176aa:	0300                	add	s0,sp,384
   176ac:	bf69                	j	17646 <_svfprintf_r+0x115c>
   176ae:	65c2                	ld	a1,16(sp)
   176b0:	6522                	ld	a0,8(sp)
   176b2:	0210                	add	a2,sp,256
   176b4:	18d020ef          	jal	1a040 <__ssprint_r>
   176b8:	80051ee3          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   176bc:	6d52                	ld	s10,272(sp)
   176be:	0300                	add	s0,sp,384
   176c0:	e0eff06f          	j	16cce <_svfprintf_r+0x7e4>
   176c4:	8726                	mv	a4,s1
   176c6:	84d2                	mv	s1,s4
   176c8:	8a62                	mv	s4,s8
   176ca:	8c6a                	mv	s8,s10
   176cc:	8d3a                	mv	s10,a4
   176ce:	0017869b          	addw	a3,a5,1
   176d2:	01a43023          	sd	s10,0(s0)
   176d6:	01843423          	sd	s8,8(s0)
   176da:	9662                	add	a2,a2,s8
   176dc:	ea32                	sd	a2,272(sp)
   176de:	10d12423          	sw	a3,264(sp)
   176e2:	479d                	li	a5,7
   176e4:	00d7c463          	blt	a5,a3,176ec <_svfprintf_r+0x1202>
   176e8:	810ff06f          	j	166f8 <_svfprintf_r+0x20e>
   176ec:	a4cff06f          	j	16938 <_svfprintf_r+0x44e>
   176f0:	0210                	add	a2,sp,256
   176f2:	85a2                	mv	a1,s0
   176f4:	8566                	mv	a0,s9
   176f6:	14b020ef          	jal	1a040 <__ssprint_r>
   176fa:	fc051d63          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   176fe:	0009c603          	lbu	a2,0(s3)
   17702:	66d2                	ld	a3,272(sp)
   17704:	031c                	add	a5,sp,384
   17706:	0006031b          	sext.w	t1,a2
   1770a:	4841                	li	a6,16
   1770c:	489d                	li	a7,7
   1770e:	bd2d                	j	17548 <_svfprintf_r+0x105e>
   17710:	65c2                	ld	a1,16(sp)
   17712:	6522                	ld	a0,8(sp)
   17714:	0210                	add	a2,sp,256
   17716:	e572                	sd	t3,136(sp)
   17718:	e176                	sd	t4,128(sp)
   1771a:	127020ef          	jal	1a040 <__ssprint_r>
   1771e:	fa051b63          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17722:	6d52                	ld	s10,272(sp)
   17724:	6e2a                	ld	t3,136(sp)
   17726:	6e8a                	ld	t4,128(sp)
   17728:	0300                	add	s0,sp,384
   1772a:	f9ffe06f          	j	166c8 <_svfprintf_r+0x1de>
   1772e:	754e                	ld	a0,240(sp)
   17730:	75ee                	ld	a1,248(sp)
   17732:	4601                	li	a2,0
   17734:	4681                	li	a3,0
   17736:	6a7030ef          	jal	1b5dc <__letf2>
   1773a:	7e82                	ld	t4,32(sp)
   1773c:	6a054363          	bltz	a0,17de2 <_svfprintf_r+0x18f8>
   17740:	0cf14603          	lbu	a2,207(sp)
   17744:	04700713          	li	a4,71
   17748:	00005a97          	auipc	s5,0x5
   1774c:	328a8a93          	add	s5,s5,808 # 1ca70 <__clzdi2+0x52>
   17750:	1bd74763          	blt	a4,t4,178fe <_svfprintf_r+0x1414>
   17754:	f7f97913          	and	s2,s2,-129
   17758:	f002                	sd	zero,32(sp)
   1775a:	e082                	sd	zero,64(sp)
   1775c:	fc02                	sd	zero,56(sp)
   1775e:	f402                	sd	zero,40(sp)
   17760:	2901                	sext.w	s2,s2
   17762:	4b8d                	li	s7,3
   17764:	4c8d                	li	s9,3
   17766:	4e01                	li	t3,0
   17768:	a4061663          	bnez	a2,169b4 <_svfprintf_r+0x4ca>
   1776c:	ee9fe06f          	j	16654 <_svfprintf_r+0x16a>
   17770:	4799                	li	a5,6
   17772:	86de                	mv	a3,s7
   17774:	1b77e563          	bltu	a5,s7,1791e <_svfprintf_r+0x1434>
   17778:	00068c9b          	sext.w	s9,a3
   1777c:	8be6                	mv	s7,s9
   1777e:	00005a97          	auipc	s5,0x5
   17782:	342a8a93          	add	s5,s5,834 # 1cac0 <__clzdi2+0xa2>
   17786:	ec5fe06f          	j	1664a <_svfprintf_r+0x160>
   1778a:	8726                	mv	a4,s1
   1778c:	87ca                	mv	a5,s2
   1778e:	84da                	mv	s1,s6
   17790:	8952                	mv	s2,s4
   17792:	8b3a                	mv	s6,a4
   17794:	8a6a                	mv	s4,s10
   17796:	8d3e                	mv	s10,a5
   17798:	2405                	addw	s0,s0,1
   1779a:	9cda                	add	s9,s9,s6
   1779c:	01ac3023          	sd	s10,0(s8)
   177a0:	016c3423          	sd	s6,8(s8)
   177a4:	ea66                	sd	s9,272(sp)
   177a6:	10812423          	sw	s0,264(sp)
   177aa:	479d                	li	a5,7
   177ac:	9687d363          	bge	a5,s0,16912 <_svfprintf_r+0x428>
   177b0:	b401                	j	171b0 <_svfprintf_r+0xcc6>
   177b2:	10812683          	lw	a3,264(sp)
   177b6:	67a6                	ld	a5,72(sp)
   177b8:	6746                	ld	a4,80(sp)
   177ba:	0016859b          	addw	a1,a3,1
   177be:	963e                	add	a2,a2,a5
   177c0:	e018                	sd	a4,0(s0)
   177c2:	e41c                	sd	a5,8(s0)
   177c4:	ea32                	sd	a2,272(sp)
   177c6:	10b12423          	sw	a1,264(sp)
   177ca:	469d                	li	a3,7
   177cc:	0441                	add	s0,s0,16
   177ce:	32b6c463          	blt	a3,a1,17af6 <_svfprintf_r+0x160c>
   177d2:	ea0552e3          	bgez	a0,17676 <_svfprintf_r+0x118c>
   177d6:	56c1                	li	a3,-16
   177d8:	40a00c3b          	negw	s8,a0
   177dc:	00006d17          	auipc	s10,0x6
   177e0:	becd0d13          	add	s10,s10,-1044 # 1d3c8 <zeroes.0>
   177e4:	4cc1                	li	s9,16
   177e6:	4b1d                	li	s6,7
   177e8:	00d54663          	blt	a0,a3,177f4 <_svfprintf_r+0x130a>
   177ec:	af15                	j	17f20 <_svfprintf_r+0x1a36>
   177ee:	3c41                	addw	s8,s8,-16
   177f0:	738cd863          	bge	s9,s8,17f20 <_svfprintf_r+0x1a36>
   177f4:	2585                	addw	a1,a1,1
   177f6:	0641                	add	a2,a2,16
   177f8:	01a43023          	sd	s10,0(s0)
   177fc:	01943423          	sd	s9,8(s0)
   17800:	ea32                	sd	a2,272(sp)
   17802:	10b12423          	sw	a1,264(sp)
   17806:	0441                	add	s0,s0,16
   17808:	febb53e3          	bge	s6,a1,177ee <_svfprintf_r+0x1304>
   1780c:	65c2                	ld	a1,16(sp)
   1780e:	6522                	ld	a0,8(sp)
   17810:	0210                	add	a2,sp,256
   17812:	02f020ef          	jal	1a040 <__ssprint_r>
   17816:	ea051f63          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   1781a:	6652                	ld	a2,272(sp)
   1781c:	10812583          	lw	a1,264(sp)
   17820:	0300                	add	s0,sp,384
   17822:	b7f1                	j	177ee <_svfprintf_r+0x1304>
   17824:	200c7793          	and	a5,s8,512
   17828:	28078f63          	beqz	a5,17ac6 <_svfprintf_r+0x15dc>
   1782c:	0ffb7b13          	zext.b	s6,s6
   17830:	8a3a                	mv	s4,a4
   17832:	4785                	li	a5,1
   17834:	a78ff06f          	j	16aac <_svfprintf_r+0x5c2>
   17838:	20097793          	and	a5,s2,512
   1783c:	28078063          	beqz	a5,17abc <_svfprintf_r+0x15d2>
   17840:	0ffb7b13          	zext.b	s6,s6
   17844:	ba8ff06f          	j	16bec <_svfprintf_r+0x702>
   17848:	20097793          	and	a5,s2,512
   1784c:	28078763          	beqz	a5,17ada <_svfprintf_r+0x15f0>
   17850:	0ffb7b13          	zext.b	s6,s6
   17854:	be1d                	j	1738a <_svfprintf_r+0xea0>
   17856:	20097793          	and	a5,s2,512
   1785a:	26078d63          	beqz	a5,17ad4 <_svfprintf_r+0x15ea>
   1785e:	018b1b1b          	sllw	s6,s6,0x18
   17862:	418b5b1b          	sraw	s6,s6,0x18
   17866:	87da                	mv	a5,s6
   17868:	ad0ff06f          	j	16b38 <_svfprintf_r+0x64e>
   1786c:	77ee                	ld	a5,248(sp)
   1786e:	2607da63          	bgez	a5,17ae2 <_svfprintf_r+0x15f8>
   17872:	02d00793          	li	a5,45
   17876:	0cf107a3          	sb	a5,207(sp)
   1787a:	02d00613          	li	a2,45
   1787e:	04700713          	li	a4,71
   17882:	00005a97          	auipc	s5,0x5
   17886:	1fea8a93          	add	s5,s5,510 # 1ca80 <__clzdi2+0x62>
   1788a:	edd755e3          	bge	a4,t4,17754 <_svfprintf_r+0x126a>
   1788e:	00005a97          	auipc	s5,0x5
   17892:	1faa8a93          	add	s5,s5,506 # 1ca88 <__clzdi2+0x6a>
   17896:	bd7d                	j	17754 <_svfprintf_r+0x126a>
   17898:	875a                	mv	a4,s6
   1789a:	87ca                	mv	a5,s2
   1789c:	8b26                	mv	s6,s1
   1789e:	8952                	mv	s2,s4
   178a0:	84d6                	mv	s1,s5
   178a2:	8a6a                	mv	s4,s10
   178a4:	8aba                	mv	s5,a4
   178a6:	8d3e                	mv	s10,a5
   178a8:	0015851b          	addw	a0,a1,1
   178ac:	965a                	add	a2,a2,s6
   178ae:	01a43023          	sd	s10,0(s0)
   178b2:	01643423          	sd	s6,8(s0)
   178b6:	ea32                	sd	a2,272(sp)
   178b8:	10a12423          	sw	a0,264(sp)
   178bc:	469d                	li	a3,7
   178be:	24a6cb63          	blt	a3,a0,17b14 <_svfprintf_r+0x162a>
   178c2:	0441                	add	s0,s0,16
   178c4:	8d32                	mv	s10,a2
   178c6:	fe0ff06f          	j	170a6 <_svfprintf_r+0xbbc>
   178ca:	77c6                	ld	a5,112(sp)
   178cc:	75e6                	ld	a1,120(sp)
   178ce:	f872                	sd	t3,48(sp)
   178d0:	40fa8ab3          	sub	s5,s5,a5
   178d4:	863e                	mv	a2,a5
   178d6:	8556                	mv	a0,s5
   178d8:	f476                	sd	t4,40(sp)
   178da:	f042                	sd	a6,32(sp)
   178dc:	b93fe0ef          	jal	1646e <strncpy>
   178e0:	7802                	ld	a6,32(sp)
   178e2:	47a9                	li	a5,10
   178e4:	02fb57b3          	divu	a5,s6,a5
   178e8:	00184683          	lbu	a3,1(a6)
   178ec:	7ea2                	ld	t4,40(sp)
   178ee:	7e42                	ld	t3,48(sp)
   178f0:	00d036b3          	snez	a3,a3
   178f4:	9836                	add	a6,a6,a3
   178f6:	0ff00713          	li	a4,255
   178fa:	4681                	li	a3,0
   178fc:	b415                	j	17320 <_svfprintf_r+0xe36>
   178fe:	00005a97          	auipc	s5,0x5
   17902:	17aa8a93          	add	s5,s5,378 # 1ca78 <__clzdi2+0x5a>
   17906:	b5b9                	j	17754 <_svfprintf_r+0x126a>
   17908:	65c2                	ld	a1,16(sp)
   1790a:	6522                	ld	a0,8(sp)
   1790c:	0210                	add	a2,sp,256
   1790e:	732020ef          	jal	1a040 <__ssprint_r>
   17912:	dc051163          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17916:	6d52                	ld	s10,272(sp)
   17918:	0300                	add	s0,sp,384
   1791a:	f78ff06f          	j	17092 <_svfprintf_r+0xba8>
   1791e:	4699                	li	a3,6
   17920:	bda1                	j	17778 <_svfprintf_r+0x128e>
   17922:	415c0c33          	sub	s8,s8,s5
   17926:	40d785bb          	subw	a1,a5,a3
   1792a:	000c079b          	sext.w	a5,s8
   1792e:	866a                	mv	a2,s10
   17930:	00f5d363          	bge	a1,a5,17936 <_svfprintf_r+0x144c>
   17934:	8c2e                	mv	s8,a1
   17936:	2c01                	sext.w	s8,s8
   17938:	fe4ff06f          	j	1711c <_svfprintf_r+0xc32>
   1793c:	67e2                	ld	a5,24(sp)
   1793e:	0a21                	add	s4,s4,8
   17940:	00f71023          	sh	a5,0(a4)
   17944:	b2aff06f          	j	16c6e <_svfprintf_r+0x784>
   17948:	8972                	mv	s2,t3
   1794a:	4689                	li	a3,2
   1794c:	6522                	ld	a0,8(sp)
   1794e:	874a                	mv	a4,s2
   17950:	0e810893          	add	a7,sp,232
   17954:	0dc10813          	add	a6,sp,220
   17958:	09bc                	add	a5,sp,216
   1795a:	85e2                	mv	a1,s8
   1795c:	865e                	mv	a2,s7
   1795e:	f872                	sd	t3,48(sp)
   17960:	f476                	sd	t4,40(sp)
   17962:	bf8fc0ef          	jal	13d5a <_ldtoa_r>
   17966:	7ea2                	ld	t4,40(sp)
   17968:	06700713          	li	a4,103
   1796c:	7e42                	ld	t3,48(sp)
   1796e:	8aaa                	mv	s5,a0
   17970:	38ee8463          	beq	t4,a4,17cf8 <_svfprintf_r+0x180e>
   17974:	04700713          	li	a4,71
   17978:	38ee8063          	beq	t4,a4,17cf8 <_svfprintf_r+0x180e>
   1797c:	fdfefd13          	and	s10,t4,-33
   17980:	04600713          	li	a4,70
   17984:	01250cb3          	add	s9,a0,s2
   17988:	48ed0163          	beq	s10,a4,17e0a <_svfprintf_r+0x1920>
   1798c:	85de                	mv	a1,s7
   1798e:	4601                	li	a2,0
   17990:	4681                	li	a3,0
   17992:	8562                	mv	a0,s8
   17994:	f872                	sd	t3,48(sp)
   17996:	f476                	sd	t4,40(sp)
   17998:	2eb030ef          	jal	1b482 <__eqtf2>
   1799c:	7ea2                	ld	t4,40(sp)
   1799e:	7e42                	ld	t3,48(sp)
   179a0:	8be6                	mv	s7,s9
   179a2:	cd11                	beqz	a0,179be <_svfprintf_r+0x14d4>
   179a4:	7bae                	ld	s7,232(sp)
   179a6:	019bfc63          	bgeu	s7,s9,179be <_svfprintf_r+0x14d4>
   179aa:	03000693          	li	a3,48
   179ae:	001b8793          	add	a5,s7,1
   179b2:	f5be                	sd	a5,232(sp)
   179b4:	00db8023          	sb	a3,0(s7)
   179b8:	7bae                	ld	s7,232(sp)
   179ba:	ff9beae3          	bltu	s7,s9,179ae <_svfprintf_r+0x14c4>
   179be:	415b87bb          	subw	a5,s7,s5
   179c2:	f83e                	sd	a5,48(sp)
   179c4:	466e                	lw	a2,216(sp)
   179c6:	04700713          	li	a4,71
   179ca:	f432                	sd	a2,40(sp)
   179cc:	2ced0263          	beq	s10,a4,17c90 <_svfprintf_r+0x17a6>
   179d0:	04600713          	li	a4,70
   179d4:	4ced0263          	beq	s10,a4,17e98 <_svfprintf_r+0x19ae>
   179d8:	fff6071b          	addw	a4,a2,-1
   179dc:	cdba                	sw	a4,216(sp)
   179de:	06100693          	li	a3,97
   179e2:	68de8263          	beq	t4,a3,18066 <_svfprintf_r+0x1b7c>
   179e6:	04100593          	li	a1,65
   179ea:	05000693          	li	a3,80
   179ee:	2abe9b63          	bne	t4,a1,17ca4 <_svfprintf_r+0x17ba>
   179f2:	4585                	li	a1,1
   179f4:	0ed10023          	sb	a3,224(sp)
   179f8:	02b00693          	li	a3,43
   179fc:	00075663          	bgez	a4,17a08 <_svfprintf_r+0x151e>
   17a00:	4705                	li	a4,1
   17a02:	9f11                	subw	a4,a4,a2
   17a04:	02d00693          	li	a3,45
   17a08:	0ed100a3          	sb	a3,225(sp)
   17a0c:	46a5                	li	a3,9
   17a0e:	54e6d363          	bge	a3,a4,17f54 <_svfprintf_r+0x1a6a>
   17a12:	0ef10813          	add	a6,sp,239
   17a16:	88c2                	mv	a7,a6
   17a18:	4e29                	li	t3,10
   17a1a:	06300f93          	li	t6,99
   17a1e:	03c767bb          	remw	a5,a4,t3
   17a22:	8646                	mv	a2,a7
   17a24:	86ba                	mv	a3,a4
   17a26:	18fd                	add	a7,a7,-1
   17a28:	0307879b          	addw	a5,a5,48
   17a2c:	fef60fa3          	sb	a5,-1(a2)
   17a30:	03c7473b          	divw	a4,a4,t3
   17a34:	fedfc5e3          	blt	t6,a3,17a1e <_svfprintf_r+0x1534>
   17a38:	0307051b          	addw	a0,a4,48
   17a3c:	fea88fa3          	sb	a0,-1(a7)
   17a40:	ffe60713          	add	a4,a2,-2
   17a44:	67077a63          	bgeu	a4,a6,180b8 <_svfprintf_r+0x1bce>
   17a48:	0e210693          	add	a3,sp,226
   17a4c:	00074783          	lbu	a5,0(a4)
   17a50:	0705                	add	a4,a4,1
   17a52:	0685                	add	a3,a3,1
   17a54:	fef68fa3          	sb	a5,-1(a3)
   17a58:	ff071ae3          	bne	a4,a6,17a4c <_svfprintf_r+0x1562>
   17a5c:	0f110713          	add	a4,sp,241
   17a60:	0e210793          	add	a5,sp,226
   17a64:	8f11                	sub	a4,a4,a2
   17a66:	973e                	add	a4,a4,a5
   17a68:	1194                	add	a3,sp,224
   17a6a:	40d707bb          	subw	a5,a4,a3
   17a6e:	f0be                	sd	a5,96(sp)
   17a70:	7706                	ld	a4,96(sp)
   17a72:	77c2                	ld	a5,48(sp)
   17a74:	4605                	li	a2,1
   17a76:	00f70cbb          	addw	s9,a4,a5
   17a7a:	8766                	mv	a4,s9
   17a7c:	50f65b63          	bge	a2,a5,17f92 <_svfprintf_r+0x1aa8>
   17a80:	67a6                	ld	a5,72(sp)
   17a82:	00f70cbb          	addw	s9,a4,a5
   17a86:	77e2                	ld	a5,56(sp)
   17a88:	fffcc713          	not	a4,s9
   17a8c:	977d                	sra	a4,a4,0x3f
   17a8e:	bff7f913          	and	s2,a5,-1025
   17a92:	2901                	sext.w	s2,s2
   17a94:	00ecf733          	and	a4,s9,a4
   17a98:	10096913          	or	s2,s2,256
   17a9c:	00070b9b          	sext.w	s7,a4
   17aa0:	e082                	sd	zero,64(sp)
   17aa2:	fc02                	sd	zero,56(sp)
   17aa4:	f402                	sd	zero,40(sp)
   17aa6:	67aa                	ld	a5,136(sp)
   17aa8:	20078263          	beqz	a5,17cac <_svfprintf_r+0x17c2>
   17aac:	02d00613          	li	a2,45
   17ab0:	0cc107a3          	sb	a2,207(sp)
   17ab4:	4e01                	li	t3,0
   17ab6:	2b85                	addw	s7,s7,1
   17ab8:	b9dfe06f          	j	16654 <_svfprintf_r+0x16a>
   17abc:	1b02                	sll	s6,s6,0x20
   17abe:	020b5b13          	srl	s6,s6,0x20
   17ac2:	92aff06f          	j	16bec <_svfprintf_r+0x702>
   17ac6:	1b02                	sll	s6,s6,0x20
   17ac8:	020b5b13          	srl	s6,s6,0x20
   17acc:	8a3a                	mv	s4,a4
   17ace:	4785                	li	a5,1
   17ad0:	fddfe06f          	j	16aac <_svfprintf_r+0x5c2>
   17ad4:	87da                	mv	a5,s6
   17ad6:	862ff06f          	j	16b38 <_svfprintf_r+0x64e>
   17ada:	1b02                	sll	s6,s6,0x20
   17adc:	020b5b13          	srl	s6,s6,0x20
   17ae0:	b06d                	j	1738a <_svfprintf_r+0xea0>
   17ae2:	0cf14603          	lbu	a2,207(sp)
   17ae6:	bb61                	j	1787e <_svfprintf_r+0x1394>
   17ae8:	65c2                	ld	a1,16(sp)
   17aea:	6522                	ld	a0,8(sp)
   17aec:	0210                	add	a2,sp,256
   17aee:	552020ef          	jal	1a040 <__ssprint_r>
   17af2:	c4ffe06f          	j	16740 <_svfprintf_r+0x256>
   17af6:	65c2                	ld	a1,16(sp)
   17af8:	6522                	ld	a0,8(sp)
   17afa:	0210                	add	a2,sp,256
   17afc:	544020ef          	jal	1a040 <__ssprint_r>
   17b00:	bc051a63          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17b04:	456e                	lw	a0,216(sp)
   17b06:	6652                	ld	a2,272(sp)
   17b08:	10812583          	lw	a1,264(sp)
   17b0c:	0300                	add	s0,sp,384
   17b0e:	b60554e3          	bgez	a0,17676 <_svfprintf_r+0x118c>
   17b12:	b1d1                	j	177d6 <_svfprintf_r+0x12ec>
   17b14:	65c2                	ld	a1,16(sp)
   17b16:	6522                	ld	a0,8(sp)
   17b18:	0210                	add	a2,sp,256
   17b1a:	526020ef          	jal	1a040 <__ssprint_r>
   17b1e:	ba051b63          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17b22:	6d52                	ld	s10,272(sp)
   17b24:	0300                	add	s0,sp,384
   17b26:	d80ff06f          	j	170a6 <_svfprintf_r+0xbbc>
   17b2a:	4e19                	li	t3,6
   17b2c:	cfffe06f          	j	1682a <_svfprintf_r+0x340>
   17b30:	001e091b          	addw	s2,t3,1
   17b34:	4689                	li	a3,2
   17b36:	bd19                	j	1794c <_svfprintf_r+0x1462>
   17b38:	8972                	mv	s2,t3
   17b3a:	468d                	li	a3,3
   17b3c:	bd01                	j	1794c <_svfprintf_r+0x1462>
   17b3e:	85de                	mv	a1,s7
   17b40:	8562                	mv	a0,s8
   17b42:	f872                	sd	t3,48(sp)
   17b44:	f476                	sd	t4,40(sp)
   17b46:	45b040ef          	jal	1c7a0 <__trunctfdf2>
   17b4a:	09a8                	add	a0,sp,216
   17b4c:	dcafe0ef          	jal	16116 <frexp>
   17b50:	38d040ef          	jal	1c6dc <__extenddftf2>
   17b54:	00005717          	auipc	a4,0x5
   17b58:	19c70713          	add	a4,a4,412 # 1ccf0 <blanks.1+0x10>
   17b5c:	6310                	ld	a2,0(a4)
   17b5e:	6714                	ld	a3,8(a4)
   17b60:	33d030ef          	jal	1b69c <__multf3>
   17b64:	4601                	li	a2,0
   17b66:	4681                	li	a3,0
   17b68:	8d2a                	mv	s10,a0
   17b6a:	892e                	mv	s2,a1
   17b6c:	117030ef          	jal	1b482 <__eqtf2>
   17b70:	7ea2                	ld	t4,40(sp)
   17b72:	7e42                	ld	t3,48(sp)
   17b74:	e119                	bnez	a0,17b7a <_svfprintf_r+0x1690>
   17b76:	4705                	li	a4,1
   17b78:	cdba                	sw	a4,216(sp)
   17b7a:	00005797          	auipc	a5,0x5
   17b7e:	f1678793          	add	a5,a5,-234 # 1ca90 <__clzdi2+0x72>
   17b82:	f43e                	sd	a5,40(sp)
   17b84:	00005697          	auipc	a3,0x5
   17b88:	17c68693          	add	a3,a3,380 # 1cd00 <blanks.1+0x20>
   17b8c:	020e1713          	sll	a4,t3,0x20
   17b90:	629c                	ld	a5,0(a3)
   17b92:	9301                	srl	a4,a4,0x20
   17b94:	6694                	ld	a3,8(a3)
   17b96:	0705                	add	a4,a4,1
   17b98:	9756                	add	a4,a4,s5
   17b9a:	000e061b          	sext.w	a2,t3
   17b9e:	f84e                	sd	s3,48(sp)
   17ba0:	f122                	sd	s0,160(sp)
   17ba2:	f556                	sd	s5,168(sp)
   17ba4:	f952                	sd	s4,176(sp)
   17ba6:	7422                	ld	s0,40(sp)
   17ba8:	8a56                	mv	s4,s5
   17baa:	89ba                	mv	s3,a4
   17bac:	e0f6                	sd	t4,64(sp)
   17bae:	fd32                	sd	a2,184(sp)
   17bb0:	e926                	sd	s1,144(sp)
   17bb2:	ed72                	sd	t3,152(sp)
   17bb4:	8abe                	mv	s5,a5
   17bb6:	8b36                	mv	s6,a3
   17bb8:	a039                	j	17bc6 <_svfprintf_r+0x16dc>
   17bba:	4601                	li	a2,0
   17bbc:	4681                	li	a3,0
   17bbe:	0c5030ef          	jal	1b482 <__eqtf2>
   17bc2:	3e050563          	beqz	a0,17fac <_svfprintf_r+0x1ac2>
   17bc6:	8656                	mv	a2,s5
   17bc8:	86da                	mv	a3,s6
   17bca:	856a                	mv	a0,s10
   17bcc:	85ca                	mv	a1,s2
   17bce:	2cf030ef          	jal	1b69c <__multf3>
   17bd2:	84ae                	mv	s1,a1
   17bd4:	892a                	mv	s2,a0
   17bd6:	221040ef          	jal	1c5f6 <__fixtfsi>
   17bda:	00050b9b          	sext.w	s7,a0
   17bde:	855e                	mv	a0,s7
   17be0:	2a7040ef          	jal	1c686 <__floatsitf>
   17be4:	86ae                	mv	a3,a1
   17be6:	862a                	mv	a2,a0
   17be8:	85a6                	mv	a1,s1
   17bea:	854a                	mv	a0,s2
   17bec:	0d2040ef          	jal	1bcbe <__subtf3>
   17bf0:	01740733          	add	a4,s0,s7
   17bf4:	00074683          	lbu	a3,0(a4)
   17bf8:	84d2                	mv	s1,s4
   17bfa:	0a05                	add	s4,s4,1
   17bfc:	feda0fa3          	sb	a3,-1(s4)
   17c00:	8c2a                	mv	s8,a0
   17c02:	8d2a                	mv	s10,a0
   17c04:	892e                	mv	s2,a1
   17c06:	fb499ae3          	bne	s3,s4,17bba <_svfprintf_r+0x16d0>
   17c0a:	79c2                	ld	s3,48(sp)
   17c0c:	8b52                	mv	s6,s4
   17c0e:	f826                	sd	s1,48(sp)
   17c10:	6e86                	ld	t4,64(sp)
   17c12:	64ca                	ld	s1,144(sp)
   17c14:	6e6a                	ld	t3,152(sp)
   17c16:	740a                	ld	s0,160(sp)
   17c18:	7aaa                	ld	s5,168(sp)
   17c1a:	7a4a                	ld	s4,176(sp)
   17c1c:	8caa                	mv	s9,a0
   17c1e:	8c2e                	mv	s8,a1
   17c20:	597d                	li	s2,-1
   17c22:	00005697          	auipc	a3,0x5
   17c26:	0ee68693          	add	a3,a3,238 # 1cd10 <blanks.1+0x30>
   17c2a:	0086bd03          	ld	s10,8(a3)
   17c2e:	6290                	ld	a2,0(a3)
   17c30:	8566                	mv	a0,s9
   17c32:	86ea                	mv	a3,s10
   17c34:	85e2                	mv	a1,s8
   17c36:	e972                	sd	t3,144(sp)
   17c38:	e0f6                	sd	t4,64(sp)
   17c3a:	ed32                	sd	a2,152(sp)
   17c3c:	0e1030ef          	jal	1b51c <__getf2>
   17c40:	6e86                	ld	t4,64(sp)
   17c42:	6e4a                	ld	t3,144(sp)
   17c44:	26a04863          	bgtz	a0,17eb4 <_svfprintf_r+0x19ca>
   17c48:	666a                	ld	a2,152(sp)
   17c4a:	86ea                	mv	a3,s10
   17c4c:	8566                	mv	a0,s9
   17c4e:	85e2                	mv	a1,s8
   17c50:	033030ef          	jal	1b482 <__eqtf2>
   17c54:	6e86                	ld	t4,64(sp)
   17c56:	6e4a                	ld	t3,144(sp)
   17c58:	e509                	bnez	a0,17c62 <_svfprintf_r+0x1778>
   17c5a:	001bfb93          	and	s7,s7,1
   17c5e:	240b9b63          	bnez	s7,17eb4 <_svfprintf_r+0x19ca>
   17c62:	00190b9b          	addw	s7,s2,1
   17c66:	9bda                	add	s7,s7,s6
   17c68:	03000693          	li	a3,48
   17c6c:	28094463          	bltz	s2,17ef4 <_svfprintf_r+0x1a0a>
   17c70:	0b05                	add	s6,s6,1
   17c72:	fedb0fa3          	sb	a3,-1(s6)
   17c76:	ff6b9de3          	bne	s7,s6,17c70 <_svfprintf_r+0x1786>
   17c7a:	415b87bb          	subw	a5,s7,s5
   17c7e:	f83e                	sd	a5,48(sp)
   17c80:	fdfefd13          	and	s10,t4,-33
   17c84:	b381                	j	179c4 <_svfprintf_r+0x14da>
   17c86:	7bae                	ld	s7,232(sp)
   17c88:	466e                	lw	a2,216(sp)
   17c8a:	415b87bb          	subw	a5,s7,s5
   17c8e:	f83e                	sd	a5,48(sp)
   17c90:	5775                	li	a4,-3
   17c92:	f432                	sd	a2,40(sp)
   17c94:	00e64463          	blt	a2,a4,17c9c <_svfprintf_r+0x17b2>
   17c98:	02ce5263          	bge	t3,a2,17cbc <_svfprintf_r+0x17d2>
   17c9c:	fff6071b          	addw	a4,a2,-1
   17ca0:	3ef9                	addw	t4,t4,-2
   17ca2:	cdba                	sw	a4,216(sp)
   17ca4:	0ffef693          	zext.b	a3,t4
   17ca8:	4581                	li	a1,0
   17caa:	b3a9                	j	179f4 <_svfprintf_r+0x150a>
   17cac:	0cf14603          	lbu	a2,207(sp)
   17cb0:	4e01                	li	t3,0
   17cb2:	c219                	beqz	a2,17cb8 <_svfprintf_r+0x17ce>
   17cb4:	d01fe06f          	j	169b4 <_svfprintf_r+0x4ca>
   17cb8:	99dfe06f          	j	16654 <_svfprintf_r+0x16a>
   17cbc:	77c2                	ld	a5,48(sp)
   17cbe:	1af64663          	blt	a2,a5,17e6a <_svfprintf_r+0x1980>
   17cc2:	77e2                	ld	a5,56(sp)
   17cc4:	8cb2                	mv	s9,a2
   17cc6:	0017f713          	and	a4,a5,1
   17cca:	c701                	beqz	a4,17cd2 <_svfprintf_r+0x17e8>
   17ccc:	67a6                	ld	a5,72(sp)
   17cce:	00c78cbb          	addw	s9,a5,a2
   17cd2:	77e2                	ld	a5,56(sp)
   17cd4:	4007f713          	and	a4,a5,1024
   17cd8:	c319                	beqz	a4,17cde <_svfprintf_r+0x17f4>
   17cda:	2ec04d63          	bgtz	a2,17fd4 <_svfprintf_r+0x1aea>
   17cde:	fffcc713          	not	a4,s9
   17ce2:	977d                	sra	a4,a4,0x3f
   17ce4:	690a                	ld	s2,128(sp)
   17ce6:	00ecf733          	and	a4,s9,a4
   17cea:	00070b9b          	sext.w	s7,a4
   17cee:	06700e93          	li	t4,103
   17cf2:	e082                	sd	zero,64(sp)
   17cf4:	fc02                	sd	zero,56(sp)
   17cf6:	bb45                	j	17aa6 <_svfprintf_r+0x15bc>
   17cf8:	77e2                	ld	a5,56(sp)
   17cfa:	0017f713          	and	a4,a5,1
   17cfe:	d741                	beqz	a4,17c86 <_svfprintf_r+0x179c>
   17d00:	012a8cb3          	add	s9,s5,s2
   17d04:	04700d13          	li	s10,71
   17d08:	b151                	j	1798c <_svfprintf_r+0x14a2>
   17d0a:	0210                	add	a2,sp,256
   17d0c:	85a2                	mv	a1,s0
   17d0e:	8566                	mv	a0,s9
   17d10:	330020ef          	jal	1a040 <__ssprint_r>
   17d14:	9c051063          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17d18:	0009c603          	lbu	a2,0(s3)
   17d1c:	66d2                	ld	a3,272(sp)
   17d1e:	031c                	add	a5,sp,384
   17d20:	4841                	li	a6,16
   17d22:	489d                	li	a7,7
   17d24:	9a32                	add	s4,s4,a2
   17d26:	837ff06f          	j	1755c <_svfprintf_r+0x1072>
   17d2a:	07800713          	li	a4,120
   17d2e:	00296793          	or	a5,s2,2
   17d32:	03000693          	li	a3,48
   17d36:	2781                	sext.w	a5,a5
   17d38:	0ce108a3          	sb	a4,209(sp)
   17d3c:	0cd10823          	sb	a3,208(sp)
   17d40:	06300713          	li	a4,99
   17d44:	fc3e                	sd	a5,56(sp)
   17d46:	f002                	sd	zero,32(sp)
   17d48:	11810a93          	add	s5,sp,280
   17d4c:	1bc74c63          	blt	a4,t3,17f04 <_svfprintf_r+0x1a1a>
   17d50:	10296913          	or	s2,s2,258
   17d54:	7bee                	ld	s7,248(sp)
   17d56:	0009079b          	sext.w	a5,s2
   17d5a:	e13e                	sd	a5,128(sp)
   17d5c:	e502                	sd	zero,136(sp)
   17d5e:	7c4e                	ld	s8,240(sp)
   17d60:	040bcd63          	bltz	s7,17dba <_svfprintf_r+0x18d0>
   17d64:	06100713          	li	a4,97
   17d68:	00ee8463          	beq	t4,a4,17d70 <_svfprintf_r+0x1886>
   17d6c:	adbfe06f          	j	16846 <_svfprintf_r+0x35c>
   17d70:	85de                	mv	a1,s7
   17d72:	8562                	mv	a0,s8
   17d74:	f872                	sd	t3,48(sp)
   17d76:	f476                	sd	t4,40(sp)
   17d78:	229040ef          	jal	1c7a0 <__trunctfdf2>
   17d7c:	09a8                	add	a0,sp,216
   17d7e:	b98fe0ef          	jal	16116 <frexp>
   17d82:	15b040ef          	jal	1c6dc <__extenddftf2>
   17d86:	00005717          	auipc	a4,0x5
   17d8a:	f6a70713          	add	a4,a4,-150 # 1ccf0 <blanks.1+0x10>
   17d8e:	6310                	ld	a2,0(a4)
   17d90:	6714                	ld	a3,8(a4)
   17d92:	10b030ef          	jal	1b69c <__multf3>
   17d96:	4601                	li	a2,0
   17d98:	4681                	li	a3,0
   17d9a:	8d2a                	mv	s10,a0
   17d9c:	892e                	mv	s2,a1
   17d9e:	6e4030ef          	jal	1b482 <__eqtf2>
   17da2:	7ea2                	ld	t4,40(sp)
   17da4:	7e42                	ld	t3,48(sp)
   17da6:	e119                	bnez	a0,17dac <_svfprintf_r+0x18c2>
   17da8:	4705                	li	a4,1
   17daa:	cdba                	sw	a4,216(sp)
   17dac:	00005797          	auipc	a5,0x5
   17db0:	cfc78793          	add	a5,a5,-772 # 1caa8 <__clzdi2+0x8a>
   17db4:	f43e                	sd	a5,40(sp)
   17db6:	b3f9                	j	17b84 <_svfprintf_r+0x169a>
   17db8:	f002                	sd	zero,32(sp)
   17dba:	577d                	li	a4,-1
   17dbc:	177e                	sll	a4,a4,0x3f
   17dbe:	02d00793          	li	a5,45
   17dc2:	00ebcbb3          	xor	s7,s7,a4
   17dc6:	e53e                	sd	a5,136(sp)
   17dc8:	bf71                	j	17d64 <_svfprintf_r+0x187a>
   17dca:	65c2                	ld	a1,16(sp)
   17dcc:	6522                	ld	a0,8(sp)
   17dce:	0210                	add	a2,sp,256
   17dd0:	270020ef          	jal	1a040 <__ssprint_r>
   17dd4:	90051063          	bnez	a0,16ed4 <_svfprintf_r+0x9ea>
   17dd8:	46ee                	lw	a3,216(sp)
   17dda:	6652                	ld	a2,272(sp)
   17ddc:	0300                	add	s0,sp,384
   17dde:	b06ff06f          	j	170e4 <_svfprintf_r+0xbfa>
   17de2:	02d00793          	li	a5,45
   17de6:	0cf107a3          	sb	a5,207(sp)
   17dea:	02d00613          	li	a2,45
   17dee:	ba99                	j	17744 <_svfprintf_r+0x125a>
   17df0:	0cf14603          	lbu	a2,207(sp)
   17df4:	e082                	sd	zero,64(sp)
   17df6:	fc02                	sd	zero,56(sp)
   17df8:	f402                	sd	zero,40(sp)
   17dfa:	8bf2                	mv	s7,t3
   17dfc:	8cf2                	mv	s9,t3
   17dfe:	4e01                	li	t3,0
   17e00:	c219                	beqz	a2,17e06 <_svfprintf_r+0x191c>
   17e02:	bb3fe06f          	j	169b4 <_svfprintf_r+0x4ca>
   17e06:	84ffe06f          	j	16654 <_svfprintf_r+0x16a>
   17e0a:	00054683          	lbu	a3,0(a0)
   17e0e:	03000713          	li	a4,48
   17e12:	00e68563          	beq	a3,a4,17e1c <_svfprintf_r+0x1932>
   17e16:	46ee                	lw	a3,216(sp)
   17e18:	9cb6                	add	s9,s9,a3
   17e1a:	be8d                	j	1798c <_svfprintf_r+0x14a2>
   17e1c:	4601                	li	a2,0
   17e1e:	4681                	li	a3,0
   17e20:	8562                	mv	a0,s8
   17e22:	85de                	mv	a1,s7
   17e24:	f872                	sd	t3,48(sp)
   17e26:	f476                	sd	t4,40(sp)
   17e28:	65a030ef          	jal	1b482 <__eqtf2>
   17e2c:	7ea2                	ld	t4,40(sp)
   17e2e:	7e42                	ld	t3,48(sp)
   17e30:	d17d                	beqz	a0,17e16 <_svfprintf_r+0x192c>
   17e32:	4705                	li	a4,1
   17e34:	412706bb          	subw	a3,a4,s2
   17e38:	cdb6                	sw	a3,216(sp)
   17e3a:	9cb6                	add	s9,s9,a3
   17e3c:	be81                	j	1798c <_svfprintf_r+0x14a2>
   17e3e:	65c2                	ld	a1,16(sp)
   17e40:	6522                	ld	a0,8(sp)
   17e42:	0210                	add	a2,sp,256
   17e44:	1fc020ef          	jal	1a040 <__ssprint_r>
   17e48:	c119                	beqz	a0,17e4e <_svfprintf_r+0x1964>
   17e4a:	88aff06f          	j	16ed4 <_svfprintf_r+0x9ea>
   17e4e:	45ee                	lw	a1,216(sp)
   17e50:	77c2                	ld	a5,48(sp)
   17e52:	6652                	ld	a2,272(sp)
   17e54:	0300                	add	s0,sp,384
   17e56:	40b785bb          	subw	a1,a5,a1
   17e5a:	ac2ff06f          	j	1711c <_svfprintf_r+0xc32>
   17e5e:	8c4a                	mv	s8,s2
   17e60:	890ff06f          	j	16ef0 <_svfprintf_r+0xa06>
   17e64:	05800713          	li	a4,88
   17e68:	b5d9                	j	17d2e <_svfprintf_r+0x1844>
   17e6a:	67a6                	ld	a5,72(sp)
   17e6c:	7742                	ld	a4,48(sp)
   17e6e:	06700e93          	li	t4,103
   17e72:	00e78cbb          	addw	s9,a5,a4
   17e76:	77a2                	ld	a5,40(sp)
   17e78:	1cf05263          	blez	a5,1803c <_svfprintf_r+0x1b52>
   17e7c:	77e2                	ld	a5,56(sp)
   17e7e:	4007f713          	and	a4,a5,1024
   17e82:	14071b63          	bnez	a4,17fd8 <_svfprintf_r+0x1aee>
   17e86:	fffcc713          	not	a4,s9
   17e8a:	977d                	sra	a4,a4,0x3f
   17e8c:	00ecf733          	and	a4,s9,a4
   17e90:	690a                	ld	s2,128(sp)
   17e92:	00070b9b          	sext.w	s7,a4
   17e96:	bdb1                	j	17cf2 <_svfprintf_r+0x1808>
   17e98:	77e2                	ld	a5,56(sp)
   17e9a:	0017f713          	and	a4,a5,1
   17e9e:	77a2                	ld	a5,40(sp)
   17ea0:	00ee6733          	or	a4,t3,a4
   17ea4:	1ef05263          	blez	a5,18088 <_svfprintf_r+0x1b9e>
   17ea8:	1a071763          	bnez	a4,18056 <_svfprintf_r+0x1b6c>
   17eac:	7ca2                	ld	s9,40(sp)
   17eae:	06600e93          	li	t4,102
   17eb2:	b7e9                	j	17e7c <_svfprintf_r+0x1992>
   17eb4:	77c2                	ld	a5,48(sp)
   17eb6:	86da                	mv	a3,s6
   17eb8:	f5be                	sd	a5,232(sp)
   17eba:	77a2                	ld	a5,40(sp)
   17ebc:	fffb4603          	lbu	a2,-1(s6)
   17ec0:	00f7c583          	lbu	a1,15(a5)
   17ec4:	00c59e63          	bne	a1,a2,17ee0 <_svfprintf_r+0x19f6>
   17ec8:	03000513          	li	a0,48
   17ecc:	fea68fa3          	sb	a0,-1(a3)
   17ed0:	76ae                	ld	a3,232(sp)
   17ed2:	fff68793          	add	a5,a3,-1
   17ed6:	f5be                	sd	a5,232(sp)
   17ed8:	fff6c603          	lbu	a2,-1(a3)
   17edc:	fec588e3          	beq	a1,a2,17ecc <_svfprintf_r+0x19e2>
   17ee0:	0016059b          	addw	a1,a2,1
   17ee4:	03900513          	li	a0,57
   17ee8:	0ff5f593          	zext.b	a1,a1
   17eec:	00a60663          	beq	a2,a0,17ef8 <_svfprintf_r+0x1a0e>
   17ef0:	feb68fa3          	sb	a1,-1(a3)
   17ef4:	8bda                	mv	s7,s6
   17ef6:	b351                	j	17c7a <_svfprintf_r+0x1790>
   17ef8:	77a2                	ld	a5,40(sp)
   17efa:	00a7c583          	lbu	a1,10(a5)
   17efe:	feb68fa3          	sb	a1,-1(a3)
   17f02:	bfcd                	j	17ef4 <_svfprintf_r+0x1a0a>
   17f04:	6522                	ld	a0,8(sp)
   17f06:	001e059b          	addw	a1,t3,1
   17f0a:	f476                	sd	t4,40(sp)
   17f0c:	f072                	sd	t3,32(sp)
   17f0e:	ea3fc0ef          	jal	14db0 <_malloc_r>
   17f12:	7e02                	ld	t3,32(sp)
   17f14:	7ea2                	ld	t4,40(sp)
   17f16:	8aaa                	mv	s5,a0
   17f18:	1a050663          	beqz	a0,180c4 <_svfprintf_r+0x1bda>
   17f1c:	f02a                	sd	a0,32(sp)
   17f1e:	bd0d                	j	17d50 <_svfprintf_r+0x1866>
   17f20:	2585                	addw	a1,a1,1
   17f22:	9662                	add	a2,a2,s8
   17f24:	01a43023          	sd	s10,0(s0)
   17f28:	01843423          	sd	s8,8(s0)
   17f2c:	ea32                	sd	a2,272(sp)
   17f2e:	10b12423          	sw	a1,264(sp)
   17f32:	469d                	li	a3,7
   17f34:	f4b6d063          	bge	a3,a1,17674 <_svfprintf_r+0x118a>
   17f38:	65c2                	ld	a1,16(sp)
   17f3a:	6522                	ld	a0,8(sp)
   17f3c:	0210                	add	a2,sp,256
   17f3e:	102020ef          	jal	1a040 <__ssprint_r>
   17f42:	c119                	beqz	a0,17f48 <_svfprintf_r+0x1a5e>
   17f44:	f91fe06f          	j	16ed4 <_svfprintf_r+0x9ea>
   17f48:	6652                	ld	a2,272(sp)
   17f4a:	10812583          	lw	a1,264(sp)
   17f4e:	0300                	add	s0,sp,384
   17f50:	f26ff06f          	j	17676 <_svfprintf_r+0x118c>
   17f54:	0e210693          	add	a3,sp,226
   17f58:	e599                	bnez	a1,17f66 <_svfprintf_r+0x1a7c>
   17f5a:	03000693          	li	a3,48
   17f5e:	0ed10123          	sb	a3,226(sp)
   17f62:	0e310693          	add	a3,sp,227
   17f66:	041c                	add	a5,sp,512
   17f68:	40f68633          	sub	a2,a3,a5
   17f6c:	0307071b          	addw	a4,a4,48
   17f70:	1216079b          	addw	a5,a2,289
   17f74:	00e68023          	sb	a4,0(a3)
   17f78:	f0be                	sd	a5,96(sp)
   17f7a:	bcdd                	j	17a70 <_svfprintf_r+0x1586>
   17f7c:	c31c                	sw	a5,0(a4)
   17f7e:	0a21                	add	s4,s4,8
   17f80:	ceffe06f          	j	16c6e <_svfprintf_r+0x784>
   17f84:	6722                	ld	a4,8(sp)
   17f86:	47b1                	li	a5,12
   17f88:	c31c                	sw	a5,0(a4)
   17f8a:	57fd                	li	a5,-1
   17f8c:	ec3e                	sd	a5,24(sp)
   17f8e:	fc2fe06f          	j	16750 <_svfprintf_r+0x266>
   17f92:	77e2                	ld	a5,56(sp)
   17f94:	0017f613          	and	a2,a5,1
   17f98:	ae0607e3          	beqz	a2,17a86 <_svfprintf_r+0x159c>
   17f9c:	b4d5                	j	17a80 <_svfprintf_r+0x1596>
   17f9e:	000e0463          	beqz	t3,17fa6 <_svfprintf_r+0x1abc>
   17fa2:	889fe06f          	j	1682a <_svfprintf_r+0x340>
   17fa6:	4e05                	li	t3,1
   17fa8:	883fe06f          	j	1682a <_svfprintf_r+0x340>
   17fac:	766a                	ld	a2,184(sp)
   17fae:	7aaa                	ld	s5,168(sp)
   17fb0:	8b52                	mv	s6,s4
   17fb2:	79c2                	ld	s3,48(sp)
   17fb4:	00ca863b          	addw	a2,s5,a2
   17fb8:	f826                	sd	s1,48(sp)
   17fba:	8ce2                	mv	s9,s8
   17fbc:	6e86                	ld	t4,64(sp)
   17fbe:	8c4a                	mv	s8,s2
   17fc0:	64ca                	ld	s1,144(sp)
   17fc2:	6e6a                	ld	t3,152(sp)
   17fc4:	740a                	ld	s0,160(sp)
   17fc6:	7a4a                	ld	s4,176(sp)
   17fc8:	4166093b          	subw	s2,a2,s6
   17fcc:	b999                	j	17c22 <_svfprintf_r+0x1738>
   17fce:	8a3a                	mv	s4,a4
   17fd0:	f21fe06f          	j	16ef0 <_svfprintf_r+0xa06>
   17fd4:	06700e93          	li	t4,103
   17fd8:	76a6                	ld	a3,104(sp)
   17fda:	0ff00613          	li	a2,255
   17fde:	0006c703          	lbu	a4,0(a3)
   17fe2:	0cc70e63          	beq	a4,a2,180be <_svfprintf_r+0x1bd4>
   17fe6:	77a2                	ld	a5,40(sp)
   17fe8:	4801                	li	a6,0
   17fea:	4501                	li	a0,0
   17fec:	0ff00593          	li	a1,255
   17ff0:	0007061b          	sext.w	a2,a4
   17ff4:	00f75a63          	bge	a4,a5,18008 <_svfprintf_r+0x1b1e>
   17ff8:	0016c703          	lbu	a4,1(a3)
   17ffc:	9f91                	subw	a5,a5,a2
   17ffe:	cb1d                	beqz	a4,18034 <_svfprintf_r+0x1b4a>
   18000:	2505                	addw	a0,a0,1
   18002:	0685                	add	a3,a3,1
   18004:	feb716e3          	bne	a4,a1,17ff0 <_svfprintf_r+0x1b06>
   18008:	f4b6                	sd	a3,104(sp)
   1800a:	f43e                	sd	a5,40(sp)
   1800c:	fc2a                	sd	a0,56(sp)
   1800e:	e0c2                	sd	a6,64(sp)
   18010:	6786                	ld	a5,64(sp)
   18012:	7762                	ld	a4,56(sp)
   18014:	690a                	ld	s2,128(sp)
   18016:	9f3d                	addw	a4,a4,a5
   18018:	77c6                	ld	a5,112(sp)
   1801a:	02f7073b          	mulw	a4,a4,a5
   1801e:	0197073b          	addw	a4,a4,s9
   18022:	00070c9b          	sext.w	s9,a4
   18026:	fffcc613          	not	a2,s9
   1802a:	967d                	sra	a2,a2,0x3f
   1802c:	8f71                	and	a4,a4,a2
   1802e:	00070b9b          	sext.w	s7,a4
   18032:	bc95                	j	17aa6 <_svfprintf_r+0x15bc>
   18034:	0006c703          	lbu	a4,0(a3)
   18038:	2805                	addw	a6,a6,1
   1803a:	b7e9                	j	18004 <_svfprintf_r+0x1b1a>
   1803c:	40fc873b          	subw	a4,s9,a5
   18040:	2705                	addw	a4,a4,1
   18042:	00070c9b          	sext.w	s9,a4
   18046:	fffcc613          	not	a2,s9
   1804a:	967d                	sra	a2,a2,0x3f
   1804c:	8f71                	and	a4,a4,a2
   1804e:	690a                	ld	s2,128(sp)
   18050:	00070b9b          	sext.w	s7,a4
   18054:	b979                	j	17cf2 <_svfprintf_r+0x1808>
   18056:	6726                	ld	a4,72(sp)
   18058:	06600e93          	li	t4,102
   1805c:	00f706bb          	addw	a3,a4,a5
   18060:	01c68cbb          	addw	s9,a3,t3
   18064:	bd21                	j	17e7c <_svfprintf_r+0x1992>
   18066:	07000693          	li	a3,112
   1806a:	b261                	j	179f2 <_svfprintf_r+0x1508>
   1806c:	000a2703          	lw	a4,0(s4)
   18070:	0a21                	add	s4,s4,8
   18072:	8e3a                	mv	t3,a4
   18074:	00075363          	bgez	a4,1807a <_svfprintf_r+0x1b90>
   18078:	5e7d                	li	t3,-1
   1807a:	0019ce83          	lbu	t4,1(s3)
   1807e:	000e0b9b          	sext.w	s7,t3
   18082:	89be                	mv	s3,a5
   18084:	d56fe06f          	j	165da <_svfprintf_r+0xf0>
   18088:	e719                	bnez	a4,18096 <_svfprintf_r+0x1bac>
   1808a:	690a                	ld	s2,128(sp)
   1808c:	4b85                	li	s7,1
   1808e:	06600e93          	li	t4,102
   18092:	4c85                	li	s9,1
   18094:	b9b9                	j	17cf2 <_svfprintf_r+0x1808>
   18096:	67a6                	ld	a5,72(sp)
   18098:	690a                	ld	s2,128(sp)
   1809a:	06600e93          	li	t4,102
   1809e:	0017871b          	addw	a4,a5,1
   180a2:	01c7073b          	addw	a4,a4,t3
   180a6:	00070c9b          	sext.w	s9,a4
   180aa:	fffcc613          	not	a2,s9
   180ae:	967d                	sra	a2,a2,0x3f
   180b0:	8f71                	and	a4,a4,a2
   180b2:	00070b9b          	sext.w	s7,a4
   180b6:	b935                	j	17cf2 <_svfprintf_r+0x1808>
   180b8:	4789                	li	a5,2
   180ba:	f0be                	sd	a5,96(sp)
   180bc:	ba55                	j	17a70 <_svfprintf_r+0x1586>
   180be:	e082                	sd	zero,64(sp)
   180c0:	fc02                	sd	zero,56(sp)
   180c2:	b7b9                	j	18010 <_svfprintf_r+0x1b26>
   180c4:	6742                	ld	a4,16(sp)
   180c6:	01075783          	lhu	a5,16(a4)
   180ca:	0407e793          	or	a5,a5,64
   180ce:	00f71823          	sh	a5,16(a4)
   180d2:	e6efe06f          	j	16740 <_svfprintf_r+0x256>

00000000000180d6 <__sprint_r.part.0>:
   180d6:	0ac5a783          	lw	a5,172(a1)
   180da:	715d                	add	sp,sp,-80
   180dc:	ec56                	sd	s5,24(sp)
   180de:	83b5                	srl	a5,a5,0xd
   180e0:	e486                	sd	ra,72(sp)
   180e2:	e0a2                	sd	s0,64(sp)
   180e4:	fc26                	sd	s1,56(sp)
   180e6:	f84a                	sd	s2,48(sp)
   180e8:	f44e                	sd	s3,40(sp)
   180ea:	f052                	sd	s4,32(sp)
   180ec:	e85a                	sd	s6,16(sp)
   180ee:	e45e                	sd	s7,8(sp)
   180f0:	8b85                	and	a5,a5,1
   180f2:	8ab2                	mv	s5,a2
   180f4:	c3c1                	beqz	a5,18174 <__sprint_r.part.0+0x9e>
   180f6:	6a1c                	ld	a5,16(a2)
   180f8:	00063b03          	ld	s6,0(a2)
   180fc:	892e                	mv	s2,a1
   180fe:	89aa                	mv	s3,a0
   18100:	5a7d                	li	s4,-1
   18102:	c7bd                	beqz	a5,18170 <__sprint_r.part.0+0x9a>
   18104:	008b3483          	ld	s1,8(s6)
   18108:	000b3403          	ld	s0,0(s6)
   1810c:	8089                	srl	s1,s1,0x2
   1810e:	00048b9b          	sext.w	s7,s1
   18112:	05705863          	blez	s7,18162 <__sprint_r.part.0+0x8c>
   18116:	34fd                	addw	s1,s1,-1
   18118:	02049793          	sll	a5,s1,0x20
   1811c:	01e7d493          	srl	s1,a5,0x1e
   18120:	00440793          	add	a5,s0,4
   18124:	94be                	add	s1,s1,a5
   18126:	a019                	j	1812c <__sprint_r.part.0+0x56>
   18128:	02848b63          	beq	s1,s0,1815e <__sprint_r.part.0+0x88>
   1812c:	400c                	lw	a1,0(s0)
   1812e:	864a                	mv	a2,s2
   18130:	854e                	mv	a0,s3
   18132:	19c010ef          	jal	192ce <_fputwc_r>
   18136:	2501                	sext.w	a0,a0
   18138:	0411                	add	s0,s0,4
   1813a:	ff4517e3          	bne	a0,s4,18128 <__sprint_r.part.0+0x52>
   1813e:	557d                	li	a0,-1
   18140:	60a6                	ld	ra,72(sp)
   18142:	6406                	ld	s0,64(sp)
   18144:	000ab823          	sd	zero,16(s5)
   18148:	000aa423          	sw	zero,8(s5)
   1814c:	74e2                	ld	s1,56(sp)
   1814e:	7942                	ld	s2,48(sp)
   18150:	79a2                	ld	s3,40(sp)
   18152:	7a02                	ld	s4,32(sp)
   18154:	6ae2                	ld	s5,24(sp)
   18156:	6b42                	ld	s6,16(sp)
   18158:	6ba2                	ld	s7,8(sp)
   1815a:	6161                	add	sp,sp,80
   1815c:	8082                	ret
   1815e:	010ab783          	ld	a5,16(s5)
   18162:	0b8a                	sll	s7,s7,0x2
   18164:	417787b3          	sub	a5,a5,s7
   18168:	00fab823          	sd	a5,16(s5)
   1816c:	0b41                	add	s6,s6,16
   1816e:	fbd9                	bnez	a5,18104 <__sprint_r.part.0+0x2e>
   18170:	4501                	li	a0,0
   18172:	b7f9                	j	18140 <__sprint_r.part.0+0x6a>
   18174:	1fe010ef          	jal	19372 <__sfvwrite_r>
   18178:	b7e1                	j	18140 <__sprint_r.part.0+0x6a>

000000000001817a <__sprint_r>:
   1817a:	6a18                	ld	a4,16(a2)
   1817c:	c311                	beqz	a4,18180 <__sprint_r+0x6>
   1817e:	bfa1                	j	180d6 <__sprint_r.part.0>
   18180:	00062423          	sw	zero,8(a2)
   18184:	4501                	li	a0,0
   18186:	8082                	ret

0000000000018188 <_vfiprintf_r>:
   18188:	7105                	add	sp,sp,-480
   1818a:	fb52                	sd	s4,432(sp)
   1818c:	f756                	sd	s5,424(sp)
   1818e:	ef5e                	sd	s7,408(sp)
   18190:	feee                	sd	s11,376(sp)
   18192:	ef86                	sd	ra,472(sp)
   18194:	eba2                	sd	s0,464(sp)
   18196:	e7a6                	sd	s1,456(sp)
   18198:	e3ca                	sd	s2,448(sp)
   1819a:	ff4e                	sd	s3,440(sp)
   1819c:	f35a                	sd	s6,416(sp)
   1819e:	eb62                	sd	s8,400(sp)
   181a0:	e766                	sd	s9,392(sp)
   181a2:	e36a                	sd	s10,384(sp)
   181a4:	8aaa                	mv	s5,a0
   181a6:	8a2e                	mv	s4,a1
   181a8:	8db2                	mv	s11,a2
   181aa:	8bb6                	mv	s7,a3
   181ac:	c501                	beqz	a0,181b4 <_vfiprintf_r+0x2c>
   181ae:	493c                	lw	a5,80(a0)
   181b0:	3a078063          	beqz	a5,18550 <_vfiprintf_r+0x3c8>
   181b4:	010a1783          	lh	a5,16(s4)
   181b8:	03279713          	sll	a4,a5,0x32
   181bc:	02074163          	bltz	a4,181de <_vfiprintf_r+0x56>
   181c0:	0aca2703          	lw	a4,172(s4)
   181c4:	6689                	lui	a3,0x2
   181c6:	8fd5                	or	a5,a5,a3
   181c8:	76f9                	lui	a3,0xffffe
   181ca:	0107979b          	sllw	a5,a5,0x10
   181ce:	16fd                	add	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde48f>
   181d0:	4107d79b          	sraw	a5,a5,0x10
   181d4:	8f75                	and	a4,a4,a3
   181d6:	00fa1823          	sh	a5,16(s4)
   181da:	0aea2623          	sw	a4,172(s4)
   181de:	0087f713          	and	a4,a5,8
   181e2:	cb61                	beqz	a4,182b2 <_vfiprintf_r+0x12a>
   181e4:	018a3703          	ld	a4,24(s4)
   181e8:	c769                	beqz	a4,182b2 <_vfiprintf_r+0x12a>
   181ea:	8be9                	and	a5,a5,26
   181ec:	4729                	li	a4,10
   181ee:	0ce78e63          	beq	a5,a4,182ca <_vfiprintf_r+0x142>
   181f2:	0f010993          	add	s3,sp,240
   181f6:	4c81                	li	s9,0
   181f8:	8d66                	mv	s10,s9
   181fa:	f8ce                	sd	s3,112(sp)
   181fc:	e102                	sd	zero,128(sp)
   181fe:	dc82                	sw	zero,120(sp)
   18200:	844e                	mv	s0,s3
   18202:	e402                	sd	zero,8(sp)
   18204:	fc02                	sd	zero,56(sp)
   18206:	f802                	sd	zero,48(sp)
   18208:	e082                	sd	zero,64(sp)
   1820a:	00005c17          	auipc	s8,0x5
   1820e:	1dec0c13          	add	s8,s8,478 # 1d3e8 <blanks.1+0x10>
   18212:	4941                	li	s2,16
   18214:	00005b17          	auipc	s6,0x5
   18218:	344b0b13          	add	s6,s6,836 # 1d558 <zeroes.0>
   1821c:	8cde                	mv	s9,s7
   1821e:	000dc783          	lbu	a5,0(s11)
   18222:	24078f63          	beqz	a5,18480 <_vfiprintf_r+0x2f8>
   18226:	84ee                	mv	s1,s11
   18228:	02500713          	li	a4,37
   1822c:	2ae78763          	beq	a5,a4,184da <_vfiprintf_r+0x352>
   18230:	0014c783          	lbu	a5,1(s1)
   18234:	0485                	add	s1,s1,1
   18236:	fbfd                	bnez	a5,1822c <_vfiprintf_r+0xa4>
   18238:	41b48bbb          	subw	s7,s1,s11
   1823c:	240b8263          	beqz	s7,18480 <_vfiprintf_r+0x2f8>
   18240:	57e6                	lw	a5,120(sp)
   18242:	670a                	ld	a4,128(sp)
   18244:	01b43023          	sd	s11,0(s0)
   18248:	0017861b          	addw	a2,a5,1
   1824c:	975e                	add	a4,a4,s7
   1824e:	01743423          	sd	s7,8(s0)
   18252:	e13a                	sd	a4,128(sp)
   18254:	dcb2                	sw	a2,120(sp)
   18256:	479d                	li	a5,7
   18258:	0441                	add	s0,s0,16
   1825a:	00c7db63          	bge	a5,a2,18270 <_vfiprintf_r+0xe8>
   1825e:	120703e3          	beqz	a4,18b84 <_vfiprintf_r+0x9fc>
   18262:	1890                	add	a2,sp,112
   18264:	85d2                	mv	a1,s4
   18266:	8556                	mv	a0,s5
   18268:	e6fff0ef          	jal	180d6 <__sprint_r.part.0>
   1826c:	ed51                	bnez	a0,18308 <_vfiprintf_r+0x180>
   1826e:	844e                	mv	s0,s3
   18270:	0004c783          	lbu	a5,0(s1)
   18274:	017d0d3b          	addw	s10,s10,s7
   18278:	20078463          	beqz	a5,18480 <_vfiprintf_r+0x2f8>
   1827c:	0014c783          	lbu	a5,1(s1)
   18280:	00148d93          	add	s11,s1,1
   18284:	060103a3          	sb	zero,103(sp)
   18288:	54fd                	li	s1,-1
   1828a:	4881                	li	a7,0
   1828c:	4801                	li	a6,0
   1828e:	05a00b93          	li	s7,90
   18292:	0d85                	add	s11,s11,1
   18294:	2781                	sext.w	a5,a5
   18296:	fe07871b          	addw	a4,a5,-32
   1829a:	0007069b          	sext.w	a3,a4
   1829e:	0cdbe763          	bltu	s7,a3,1836c <_vfiprintf_r+0x1e4>
   182a2:	02071693          	sll	a3,a4,0x20
   182a6:	01e6d713          	srl	a4,a3,0x1e
   182aa:	9762                	add	a4,a4,s8
   182ac:	4318                	lw	a4,0(a4)
   182ae:	9762                	add	a4,a4,s8
   182b0:	8702                	jr	a4
   182b2:	85d2                	mv	a1,s4
   182b4:	8556                	mv	a0,s5
   182b6:	d6ff90ef          	jal	12024 <__swsetup_r>
   182ba:	3c0510e3          	bnez	a0,18e7a <_vfiprintf_r+0xcf2>
   182be:	010a1783          	lh	a5,16(s4)
   182c2:	4729                	li	a4,10
   182c4:	8be9                	and	a5,a5,26
   182c6:	f2e796e3          	bne	a5,a4,181f2 <_vfiprintf_r+0x6a>
   182ca:	012a1783          	lh	a5,18(s4)
   182ce:	f207c2e3          	bltz	a5,181f2 <_vfiprintf_r+0x6a>
   182d2:	645e                	ld	s0,464(sp)
   182d4:	60fe                	ld	ra,472(sp)
   182d6:	64be                	ld	s1,456(sp)
   182d8:	691e                	ld	s2,448(sp)
   182da:	79fa                	ld	s3,440(sp)
   182dc:	7b1a                	ld	s6,416(sp)
   182de:	6c5a                	ld	s8,400(sp)
   182e0:	6cba                	ld	s9,392(sp)
   182e2:	6d1a                	ld	s10,384(sp)
   182e4:	86de                	mv	a3,s7
   182e6:	866e                	mv	a2,s11
   182e8:	6bfa                	ld	s7,408(sp)
   182ea:	7df6                	ld	s11,376(sp)
   182ec:	85d2                	mv	a1,s4
   182ee:	8556                	mv	a0,s5
   182f0:	7a5a                	ld	s4,432(sp)
   182f2:	7aba                	ld	s5,424(sp)
   182f4:	613d                	add	sp,sp,480
   182f6:	3bd0006f          	j	18eb2 <__sbprintf>
   182fa:	1890                	add	a2,sp,112
   182fc:	85d2                	mv	a1,s4
   182fe:	8556                	mv	a0,s5
   18300:	dd7ff0ef          	jal	180d6 <__sprint_r.part.0>
   18304:	16050863          	beqz	a0,18474 <_vfiprintf_r+0x2ec>
   18308:	8cea                	mv	s9,s10
   1830a:	010a5783          	lhu	a5,16(s4)
   1830e:	0407f793          	and	a5,a5,64
   18312:	360794e3          	bnez	a5,18e7a <_vfiprintf_r+0xcf2>
   18316:	60fe                	ld	ra,472(sp)
   18318:	645e                	ld	s0,464(sp)
   1831a:	64be                	ld	s1,456(sp)
   1831c:	691e                	ld	s2,448(sp)
   1831e:	79fa                	ld	s3,440(sp)
   18320:	7a5a                	ld	s4,432(sp)
   18322:	7aba                	ld	s5,424(sp)
   18324:	7b1a                	ld	s6,416(sp)
   18326:	6bfa                	ld	s7,408(sp)
   18328:	6c5a                	ld	s8,400(sp)
   1832a:	6d1a                	ld	s10,384(sp)
   1832c:	7df6                	ld	s11,376(sp)
   1832e:	8566                	mv	a0,s9
   18330:	6cba                	ld	s9,392(sp)
   18332:	613d                	add	sp,sp,480
   18334:	8082                	ret
   18336:	4881                	li	a7,0
   18338:	4625                	li	a2,9
   1833a:	000dc683          	lbu	a3,0(s11)
   1833e:	0028971b          	sllw	a4,a7,0x2
   18342:	011708bb          	addw	a7,a4,a7
   18346:	fd07879b          	addw	a5,a5,-48
   1834a:	0018989b          	sllw	a7,a7,0x1
   1834e:	fd06871b          	addw	a4,a3,-48
   18352:	011788bb          	addw	a7,a5,a7
   18356:	0d85                	add	s11,s11,1
   18358:	0006879b          	sext.w	a5,a3
   1835c:	fce67fe3          	bgeu	a2,a4,1833a <_vfiprintf_r+0x1b2>
   18360:	fe07871b          	addw	a4,a5,-32
   18364:	0007069b          	sext.w	a3,a4
   18368:	f2dbfde3          	bgeu	s7,a3,182a2 <_vfiprintf_r+0x11a>
   1836c:	10078a63          	beqz	a5,18480 <_vfiprintf_r+0x2f8>
   18370:	08f10423          	sb	a5,136(sp)
   18374:	060103a3          	sb	zero,103(sp)
   18378:	4e05                	li	t3,1
   1837a:	4305                	li	t1,1
   1837c:	08810b93          	add	s7,sp,136
   18380:	4481                	li	s1,0
   18382:	00287f93          	and	t6,a6,2
   18386:	000f8363          	beqz	t6,1838c <_vfiprintf_r+0x204>
   1838a:	2e09                	addw	t3,t3,2
   1838c:	5666                	lw	a2,120(sp)
   1838e:	08487293          	and	t0,a6,132
   18392:	678a                	ld	a5,128(sp)
   18394:	0016051b          	addw	a0,a2,1
   18398:	85aa                	mv	a1,a0
   1839a:	00029663          	bnez	t0,183a6 <_vfiprintf_r+0x21e>
   1839e:	41c8873b          	subw	a4,a7,t3
   183a2:	64e04363          	bgtz	a4,189e8 <_vfiprintf_r+0x860>
   183a6:	06714703          	lbu	a4,103(sp)
   183aa:	cf19                	beqz	a4,183c8 <_vfiprintf_r+0x240>
   183ac:	06710713          	add	a4,sp,103
   183b0:	0785                	add	a5,a5,1
   183b2:	e018                	sd	a4,0(s0)
   183b4:	4705                	li	a4,1
   183b6:	e418                	sd	a4,8(s0)
   183b8:	e13e                	sd	a5,128(sp)
   183ba:	dcaa                	sw	a0,120(sp)
   183bc:	471d                	li	a4,7
   183be:	5aa74463          	blt	a4,a0,18966 <_vfiprintf_r+0x7de>
   183c2:	862a                	mv	a2,a0
   183c4:	0441                	add	s0,s0,16
   183c6:	2505                	addw	a0,a0,1
   183c8:	040f8363          	beqz	t6,1840e <_vfiprintf_r+0x286>
   183cc:	10b8                	add	a4,sp,104
   183ce:	0789                	add	a5,a5,2
   183d0:	e018                	sd	a4,0(s0)
   183d2:	4709                	li	a4,2
   183d4:	e418                	sd	a4,8(s0)
   183d6:	e13e                	sd	a5,128(sp)
   183d8:	dcaa                	sw	a0,120(sp)
   183da:	471d                	li	a4,7
   183dc:	5ca75763          	bge	a4,a0,189aa <_vfiprintf_r+0x822>
   183e0:	7a078663          	beqz	a5,18b8c <_vfiprintf_r+0xa04>
   183e4:	1890                	add	a2,sp,112
   183e6:	85d2                	mv	a1,s4
   183e8:	8556                	mv	a0,s5
   183ea:	e49a                	sd	t1,72(sp)
   183ec:	f472                	sd	t3,40(sp)
   183ee:	f046                	sd	a7,32(sp)
   183f0:	ec42                	sd	a6,24(sp)
   183f2:	e816                	sd	t0,16(sp)
   183f4:	ce3ff0ef          	jal	180d6 <__sprint_r.part.0>
   183f8:	f901                	bnez	a0,18308 <_vfiprintf_r+0x180>
   183fa:	5666                	lw	a2,120(sp)
   183fc:	678a                	ld	a5,128(sp)
   183fe:	6326                	ld	t1,72(sp)
   18400:	7e22                	ld	t3,40(sp)
   18402:	7882                	ld	a7,32(sp)
   18404:	6862                	ld	a6,24(sp)
   18406:	62c2                	ld	t0,16(sp)
   18408:	844e                	mv	s0,s3
   1840a:	0016051b          	addw	a0,a2,1
   1840e:	08000713          	li	a4,128
   18412:	3ee28863          	beq	t0,a4,18802 <_vfiprintf_r+0x67a>
   18416:	406484bb          	subw	s1,s1,t1
   1841a:	4a904963          	bgtz	s1,188cc <_vfiprintf_r+0x744>
   1841e:	979a                	add	a5,a5,t1
   18420:	01743023          	sd	s7,0(s0)
   18424:	00643423          	sd	t1,8(s0)
   18428:	e13e                	sd	a5,128(sp)
   1842a:	dcaa                	sw	a0,120(sp)
   1842c:	471d                	li	a4,7
   1842e:	3ca75863          	bge	a4,a0,187fe <_vfiprintf_r+0x676>
   18432:	66078063          	beqz	a5,18a92 <_vfiprintf_r+0x90a>
   18436:	1890                	add	a2,sp,112
   18438:	85d2                	mv	a1,s4
   1843a:	8556                	mv	a0,s5
   1843c:	f072                	sd	t3,32(sp)
   1843e:	ec46                	sd	a7,24(sp)
   18440:	e842                	sd	a6,16(sp)
   18442:	c95ff0ef          	jal	180d6 <__sprint_r.part.0>
   18446:	ec0511e3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   1844a:	678a                	ld	a5,128(sp)
   1844c:	7e02                	ld	t3,32(sp)
   1844e:	68e2                	ld	a7,24(sp)
   18450:	6842                	ld	a6,16(sp)
   18452:	844e                	mv	s0,s3
   18454:	00487813          	and	a6,a6,4
   18458:	00080663          	beqz	a6,18464 <_vfiprintf_r+0x2dc>
   1845c:	41c884bb          	subw	s1,a7,t3
   18460:	64904363          	bgtz	s1,18aa6 <_vfiprintf_r+0x91e>
   18464:	8746                	mv	a4,a7
   18466:	01c8d363          	bge	a7,t3,1846c <_vfiprintf_r+0x2e4>
   1846a:	8772                	mv	a4,t3
   1846c:	01a70d3b          	addw	s10,a4,s10
   18470:	e80795e3          	bnez	a5,182fa <_vfiprintf_r+0x172>
   18474:	000dc783          	lbu	a5,0(s11)
   18478:	dc82                	sw	zero,120(sp)
   1847a:	844e                	mv	s0,s3
   1847c:	da0795e3          	bnez	a5,18226 <_vfiprintf_r+0x9e>
   18480:	678a                	ld	a5,128(sp)
   18482:	8cea                	mv	s9,s10
   18484:	e80783e3          	beqz	a5,1830a <_vfiprintf_r+0x182>
   18488:	1890                	add	a2,sp,112
   1848a:	85d2                	mv	a1,s4
   1848c:	8556                	mv	a0,s5
   1848e:	c49ff0ef          	jal	180d6 <__sprint_r.part.0>
   18492:	bda5                	j	1830a <_vfiprintf_r+0x182>
   18494:	01086813          	or	a6,a6,16
   18498:	000dc783          	lbu	a5,0(s11)
   1849c:	2801                	sext.w	a6,a6
   1849e:	bbd5                	j	18292 <_vfiprintf_r+0x10a>
   184a0:	01086813          	or	a6,a6,16
   184a4:	2801                	sext.w	a6,a6
   184a6:	02087793          	and	a5,a6,32
   184aa:	008c8e93          	add	t4,s9,8
   184ae:	cf8d                	beqz	a5,184e8 <_vfiprintf_r+0x360>
   184b0:	000cb783          	ld	a5,0(s9)
   184b4:	8cbe                	mv	s9,a5
   184b6:	0407c963          	bltz	a5,18508 <_vfiprintf_r+0x380>
   184ba:	57fd                	li	a5,-1
   184bc:	06f48263          	beq	s1,a5,18520 <_vfiprintf_r+0x398>
   184c0:	f7f87813          	and	a6,a6,-129
   184c4:	2801                	sext.w	a6,a6
   184c6:	040c9d63          	bnez	s9,18520 <_vfiprintf_r+0x398>
   184ca:	180496e3          	bnez	s1,18e56 <_vfiprintf_r+0xcce>
   184ce:	4e01                	li	t3,0
   184d0:	4301                	li	t1,0
   184d2:	8cf6                	mv	s9,t4
   184d4:	0ec10b93          	add	s7,sp,236
   184d8:	a0b5                	j	18544 <_vfiprintf_r+0x3bc>
   184da:	41b48bbb          	subw	s7,s1,s11
   184de:	d60b91e3          	bnez	s7,18240 <_vfiprintf_r+0xb8>
   184e2:	0004c783          	lbu	a5,0(s1)
   184e6:	bb49                	j	18278 <_vfiprintf_r+0xf0>
   184e8:	01087793          	and	a5,a6,16
   184ec:	f3f1                	bnez	a5,184b0 <_vfiprintf_r+0x328>
   184ee:	04087793          	and	a5,a6,64
   184f2:	000cac83          	lw	s9,0(s9)
   184f6:	0e078ee3          	beqz	a5,18df2 <_vfiprintf_r+0xc6a>
   184fa:	010c9c9b          	sllw	s9,s9,0x10
   184fe:	410cdc9b          	sraw	s9,s9,0x10
   18502:	87e6                	mv	a5,s9
   18504:	fa07dbe3          	bgez	a5,184ba <_vfiprintf_r+0x332>
   18508:	02d00793          	li	a5,45
   1850c:	06f103a3          	sb	a5,103(sp)
   18510:	57fd                	li	a5,-1
   18512:	41900cb3          	neg	s9,s9
   18516:	00f48563          	beq	s1,a5,18520 <_vfiprintf_r+0x398>
   1851a:	f7f87813          	and	a6,a6,-129
   1851e:	2801                	sext.w	a6,a6
   18520:	47a5                	li	a5,9
   18522:	6b97ea63          	bltu	a5,s9,18bd6 <_vfiprintf_r+0xa4e>
   18526:	030c879b          	addw	a5,s9,48
   1852a:	0ff7f793          	zext.b	a5,a5
   1852e:	8cf6                	mv	s9,t4
   18530:	0ef105a3          	sb	a5,235(sp)
   18534:	00048e1b          	sext.w	t3,s1
   18538:	00904363          	bgtz	s1,1853e <_vfiprintf_r+0x3b6>
   1853c:	4e05                	li	t3,1
   1853e:	4305                	li	t1,1
   18540:	0eb10b93          	add	s7,sp,235
   18544:	06714783          	lbu	a5,103(sp)
   18548:	e2078de3          	beqz	a5,18382 <_vfiprintf_r+0x1fa>
   1854c:	2e05                	addw	t3,t3,1
   1854e:	bd15                	j	18382 <_vfiprintf_r+0x1fa>
   18550:	8e2fa0ef          	jal	12632 <__sinit>
   18554:	b185                	j	181b4 <_vfiprintf_r+0x2c>
   18556:	000cbb83          	ld	s7,0(s9)
   1855a:	060103a3          	sb	zero,103(sp)
   1855e:	0ca1                	add	s9,s9,8
   18560:	040b89e3          	beqz	s7,18db2 <_vfiprintf_r+0xc2a>
   18564:	57fd                	li	a5,-1
   18566:	ec46                	sd	a7,24(sp)
   18568:	e842                	sd	a6,16(sp)
   1856a:	7af48163          	beq	s1,a5,18d0c <_vfiprintf_r+0xb84>
   1856e:	8626                	mv	a2,s1
   18570:	4581                	li	a1,0
   18572:	855e                	mv	a0,s7
   18574:	e33fc0ef          	jal	153a6 <memchr>
   18578:	6842                	ld	a6,16(sp)
   1857a:	68e2                	ld	a7,24(sp)
   1857c:	0c0503e3          	beqz	a0,18e42 <_vfiprintf_r+0xcba>
   18580:	4175033b          	subw	t1,a0,s7
   18584:	fff34e13          	not	t3,t1
   18588:	43fe5e13          	sra	t3,t3,0x3f
   1858c:	006e7e33          	and	t3,t3,t1
   18590:	4481                	li	s1,0
   18592:	bf4d                	j	18544 <_vfiprintf_r+0x3bc>
   18594:	000ca783          	lw	a5,0(s9)
   18598:	060103a3          	sb	zero,103(sp)
   1859c:	0ca1                	add	s9,s9,8
   1859e:	08f10423          	sb	a5,136(sp)
   185a2:	4e05                	li	t3,1
   185a4:	4305                	li	t1,1
   185a6:	08810b93          	add	s7,sp,136
   185aa:	bbd9                	j	18380 <_vfiprintf_r+0x1f8>
   185ac:	000ca883          	lw	a7,0(s9)
   185b0:	0ca1                	add	s9,s9,8
   185b2:	0808db63          	bgez	a7,18648 <_vfiprintf_r+0x4c0>
   185b6:	411008bb          	negw	a7,a7
   185ba:	00486813          	or	a6,a6,4
   185be:	000dc783          	lbu	a5,0(s11)
   185c2:	2801                	sext.w	a6,a6
   185c4:	b1f9                	j	18292 <_vfiprintf_r+0x10a>
   185c6:	02b00713          	li	a4,43
   185ca:	000dc783          	lbu	a5,0(s11)
   185ce:	06e103a3          	sb	a4,103(sp)
   185d2:	b1c1                	j	18292 <_vfiprintf_r+0x10a>
   185d4:	08086813          	or	a6,a6,128
   185d8:	000dc783          	lbu	a5,0(s11)
   185dc:	2801                	sext.w	a6,a6
   185de:	b955                	j	18292 <_vfiprintf_r+0x10a>
   185e0:	000dc783          	lbu	a5,0(s11)
   185e4:	02a00613          	li	a2,42
   185e8:	001d8713          	add	a4,s11,1
   185ec:	08c78fe3          	beq	a5,a2,18e8a <_vfiprintf_r+0xd02>
   185f0:	fd07869b          	addw	a3,a5,-48
   185f4:	45a5                	li	a1,9
   185f6:	8dba                	mv	s11,a4
   185f8:	4481                	li	s1,0
   185fa:	4625                	li	a2,9
   185fc:	c8d5ede3          	bltu	a1,a3,18296 <_vfiprintf_r+0x10e>
   18600:	000dc783          	lbu	a5,0(s11)
   18604:	0024971b          	sllw	a4,s1,0x2
   18608:	9cb9                	addw	s1,s1,a4
   1860a:	0014949b          	sllw	s1,s1,0x1
   1860e:	9cb5                	addw	s1,s1,a3
   18610:	fd07869b          	addw	a3,a5,-48
   18614:	0d85                	add	s11,s11,1
   18616:	fed675e3          	bgeu	a2,a3,18600 <_vfiprintf_r+0x478>
   1861a:	b9b5                	j	18296 <_vfiprintf_r+0x10e>
   1861c:	8556                	mv	a0,s5
   1861e:	ec46                	sd	a7,24(sp)
   18620:	e842                	sd	a6,16(sp)
   18622:	de4fc0ef          	jal	14c06 <_localeconv_r>
   18626:	651c                	ld	a5,8(a0)
   18628:	853e                	mv	a0,a5
   1862a:	e0be                	sd	a5,64(sp)
   1862c:	daffd0ef          	jal	163da <strlen>
   18630:	87aa                	mv	a5,a0
   18632:	8556                	mv	a0,s5
   18634:	f83e                	sd	a5,48(sp)
   18636:	dd0fc0ef          	jal	14c06 <_localeconv_r>
   1863a:	6918                	ld	a4,16(a0)
   1863c:	77c2                	ld	a5,48(sp)
   1863e:	6842                	ld	a6,16(sp)
   18640:	fc3a                	sd	a4,56(sp)
   18642:	68e2                	ld	a7,24(sp)
   18644:	62079663          	bnez	a5,18c70 <_vfiprintf_r+0xae8>
   18648:	000dc783          	lbu	a5,0(s11)
   1864c:	b199                	j	18292 <_vfiprintf_r+0x10a>
   1864e:	00186813          	or	a6,a6,1
   18652:	000dc783          	lbu	a5,0(s11)
   18656:	2801                	sext.w	a6,a6
   18658:	b92d                	j	18292 <_vfiprintf_r+0x10a>
   1865a:	06714703          	lbu	a4,103(sp)
   1865e:	000dc783          	lbu	a5,0(s11)
   18662:	c20718e3          	bnez	a4,18292 <_vfiprintf_r+0x10a>
   18666:	02000713          	li	a4,32
   1866a:	06e103a3          	sb	a4,103(sp)
   1866e:	b115                	j	18292 <_vfiprintf_r+0x10a>
   18670:	01086793          	or	a5,a6,16
   18674:	2781                	sext.w	a5,a5
   18676:	0207f713          	and	a4,a5,32
   1867a:	008c8593          	add	a1,s9,8
   1867e:	e709                	bnez	a4,18688 <_vfiprintf_r+0x500>
   18680:	0107f713          	and	a4,a5,16
   18684:	5c070d63          	beqz	a4,18c5e <_vfiprintf_r+0xad6>
   18688:	000cb703          	ld	a4,0(s9)
   1868c:	bff7f813          	and	a6,a5,-1025
   18690:	060103a3          	sb	zero,103(sp)
   18694:	567d                	li	a2,-1
   18696:	2801                	sext.w	a6,a6
   18698:	8cae                	mv	s9,a1
   1869a:	08c48f63          	beq	s1,a2,18738 <_vfiprintf_r+0x5b0>
   1869e:	b7f7f793          	and	a5,a5,-1153
   186a2:	2781                	sext.w	a5,a5
   186a4:	6e071263          	bnez	a4,18d88 <_vfiprintf_r+0xc00>
   186a8:	8342                	mv	t1,a6
   186aa:	883e                	mv	a6,a5
   186ac:	ecbd                	bnez	s1,1872a <_vfiprintf_r+0x5a2>
   186ae:	50071f63          	bnez	a4,18bcc <_vfiprintf_r+0xa44>
   186b2:	00137313          	and	t1,t1,1
   186b6:	58030063          	beqz	t1,18c36 <_vfiprintf_r+0xaae>
   186ba:	03000793          	li	a5,48
   186be:	0ef105a3          	sb	a5,235(sp)
   186c2:	8e1a                	mv	t3,t1
   186c4:	0eb10b93          	add	s7,sp,235
   186c8:	bdb5                	j	18544 <_vfiprintf_r+0x3bc>
   186ca:	000dc783          	lbu	a5,0(s11)
   186ce:	06c00713          	li	a4,108
   186d2:	6ce78863          	beq	a5,a4,18da2 <_vfiprintf_r+0xc1a>
   186d6:	01086813          	or	a6,a6,16
   186da:	2801                	sext.w	a6,a6
   186dc:	be5d                	j	18292 <_vfiprintf_r+0x10a>
   186de:	000dc783          	lbu	a5,0(s11)
   186e2:	06800713          	li	a4,104
   186e6:	6ae78663          	beq	a5,a4,18d92 <_vfiprintf_r+0xc0a>
   186ea:	04086813          	or	a6,a6,64
   186ee:	2801                	sext.w	a6,a6
   186f0:	b64d                	j	18292 <_vfiprintf_r+0x10a>
   186f2:	01086313          	or	t1,a6,16
   186f6:	2301                	sext.w	t1,t1
   186f8:	02037793          	and	a5,t1,32
   186fc:	008c8e93          	add	t4,s9,8
   18700:	e789                	bnez	a5,1870a <_vfiprintf_r+0x582>
   18702:	01037793          	and	a5,t1,16
   18706:	54078263          	beqz	a5,18c4a <_vfiprintf_r+0xac2>
   1870a:	000cbc83          	ld	s9,0(s9)
   1870e:	060103a3          	sb	zero,103(sp)
   18712:	57fd                	li	a5,-1
   18714:	881a                	mv	a6,t1
   18716:	e0f485e3          	beq	s1,a5,18520 <_vfiprintf_r+0x398>
   1871a:	f7f37813          	and	a6,t1,-129
   1871e:	2801                	sext.w	a6,a6
   18720:	e00c90e3          	bnez	s9,18520 <_vfiprintf_r+0x398>
   18724:	8cf6                	mv	s9,t4
   18726:	4705                	li	a4,1
   18728:	d0d9                	beqz	s1,186ae <_vfiprintf_r+0x526>
   1872a:	4785                	li	a5,1
   1872c:	72f70663          	beq	a4,a5,18e58 <_vfiprintf_r+0xcd0>
   18730:	4789                	li	a5,2
   18732:	68f70c63          	beq	a4,a5,18dca <_vfiprintf_r+0xc42>
   18736:	4701                	li	a4,0
   18738:	0ec10313          	add	t1,sp,236
   1873c:	8b9a                	mv	s7,t1
   1873e:	00777793          	and	a5,a4,7
   18742:	03078793          	add	a5,a5,48
   18746:	fefb8fa3          	sb	a5,-1(s7)
   1874a:	830d                	srl	a4,a4,0x3
   1874c:	865e                	mv	a2,s7
   1874e:	1bfd                	add	s7,s7,-1
   18750:	f77d                	bnez	a4,1873e <_vfiprintf_r+0x5b6>
   18752:	00187713          	and	a4,a6,1
   18756:	28070063          	beqz	a4,189d6 <_vfiprintf_r+0x84e>
   1875a:	03000713          	li	a4,48
   1875e:	26e78c63          	beq	a5,a4,189d6 <_vfiprintf_r+0x84e>
   18762:	1679                	add	a2,a2,-2
   18764:	40c3033b          	subw	t1,t1,a2
   18768:	feeb8fa3          	sb	a4,-1(s7)
   1876c:	00030e1b          	sext.w	t3,t1
   18770:	52934263          	blt	t1,s1,18c94 <_vfiprintf_r+0xb0c>
   18774:	8bb2                	mv	s7,a2
   18776:	b3f9                	j	18544 <_vfiprintf_r+0x3bc>
   18778:	02086813          	or	a6,a6,32
   1877c:	000dc783          	lbu	a5,0(s11)
   18780:	2801                	sext.w	a6,a6
   18782:	be01                	j	18292 <_vfiprintf_r+0x10a>
   18784:	77e1                	lui	a5,0xffff8
   18786:	8307c793          	xor	a5,a5,-2000
   1878a:	00286813          	or	a6,a6,2
   1878e:	06f11423          	sh	a5,104(sp)
   18792:	00004797          	auipc	a5,0x4
   18796:	31678793          	add	a5,a5,790 # 1caa8 <__clzdi2+0x8a>
   1879a:	000cb703          	ld	a4,0(s9)
   1879e:	2801                	sext.w	a6,a6
   187a0:	0ca1                	add	s9,s9,8
   187a2:	e43e                	sd	a5,8(sp)
   187a4:	060103a3          	sb	zero,103(sp)
   187a8:	57fd                	li	a5,-1
   187aa:	20f48863          	beq	s1,a5,189ba <_vfiprintf_r+0x832>
   187ae:	f7f87793          	and	a5,a6,-129
   187b2:	2781                	sext.w	a5,a5
   187b4:	1e071f63          	bnez	a4,189b2 <_vfiprintf_r+0x82a>
   187b8:	8342                	mv	t1,a6
   187ba:	4709                	li	a4,2
   187bc:	883e                	mv	a6,a5
   187be:	b5fd                	j	186ac <_vfiprintf_r+0x524>
   187c0:	02087793          	and	a5,a6,32
   187c4:	000cb703          	ld	a4,0(s9)
   187c8:	e385                	bnez	a5,187e8 <_vfiprintf_r+0x660>
   187ca:	01087793          	and	a5,a6,16
   187ce:	ef89                	bnez	a5,187e8 <_vfiprintf_r+0x660>
   187d0:	04087793          	and	a5,a6,64
   187d4:	64079563          	bnez	a5,18e1e <_vfiprintf_r+0xc96>
   187d8:	20087813          	and	a6,a6,512
   187dc:	6a080263          	beqz	a6,18e80 <_vfiprintf_r+0xcf8>
   187e0:	01a70023          	sb	s10,0(a4)
   187e4:	0ca1                	add	s9,s9,8
   187e6:	bc25                	j	1821e <_vfiprintf_r+0x96>
   187e8:	01a73023          	sd	s10,0(a4)
   187ec:	0ca1                	add	s9,s9,8
   187ee:	bc05                	j	1821e <_vfiprintf_r+0x96>
   187f0:	4705                	li	a4,1
   187f2:	879a                	mv	a5,t1
   187f4:	f9de                	sd	s7,240(sp)
   187f6:	fd9a                	sd	t1,248(sp)
   187f8:	e11a                	sd	t1,128(sp)
   187fa:	dcba                	sw	a4,120(sp)
   187fc:	844e                	mv	s0,s3
   187fe:	0441                	add	s0,s0,16
   18800:	b991                	j	18454 <_vfiprintf_r+0x2cc>
   18802:	41c8873b          	subw	a4,a7,t3
   18806:	c0e058e3          	blez	a4,18416 <_vfiprintf_r+0x28e>
   1880a:	45c1                	li	a1,16
   1880c:	66e5d163          	bge	a1,a4,18e6e <_vfiprintf_r+0xce6>
   18810:	00005e97          	auipc	t4,0x5
   18814:	d48e8e93          	add	t4,t4,-696 # 1d558 <zeroes.0>
   18818:	f026                	sd	s1,32(sp)
   1881a:	86a2                	mv	a3,s0
   1881c:	4f41                	li	t5,16
   1881e:	4f9d                	li	t6,7
   18820:	e842                	sd	a6,16(sp)
   18822:	ec46                	sd	a7,24(sp)
   18824:	f472                	sd	t3,40(sp)
   18826:	e49a                	sd	t1,72(sp)
   18828:	843a                	mv	s0,a4
   1882a:	84f6                	mv	s1,t4
   1882c:	a801                	j	1883c <_vfiprintf_r+0x6b4>
   1882e:	0026059b          	addw	a1,a2,2
   18832:	06c1                	add	a3,a3,16
   18834:	862a                	mv	a2,a0
   18836:	3441                	addw	s0,s0,-16
   18838:	028f5f63          	bge	t5,s0,18876 <_vfiprintf_r+0x6ee>
   1883c:	0016051b          	addw	a0,a2,1
   18840:	07c1                	add	a5,a5,16
   18842:	e284                	sd	s1,0(a3)
   18844:	01e6b423          	sd	t5,8(a3)
   18848:	e13e                	sd	a5,128(sp)
   1884a:	dcaa                	sw	a0,120(sp)
   1884c:	feafd1e3          	bge	t6,a0,1882e <_vfiprintf_r+0x6a6>
   18850:	10078763          	beqz	a5,1895e <_vfiprintf_r+0x7d6>
   18854:	1890                	add	a2,sp,112
   18856:	85d2                	mv	a1,s4
   18858:	8556                	mv	a0,s5
   1885a:	87dff0ef          	jal	180d6 <__sprint_r.part.0>
   1885e:	aa0515e3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18862:	5666                	lw	a2,120(sp)
   18864:	4f41                	li	t5,16
   18866:	3441                	addw	s0,s0,-16
   18868:	678a                	ld	a5,128(sp)
   1886a:	86ce                	mv	a3,s3
   1886c:	0016059b          	addw	a1,a2,1
   18870:	4f9d                	li	t6,7
   18872:	fc8f45e3          	blt	t5,s0,1883c <_vfiprintf_r+0x6b4>
   18876:	8ea6                	mv	t4,s1
   18878:	6842                	ld	a6,16(sp)
   1887a:	68e2                	ld	a7,24(sp)
   1887c:	7e22                	ld	t3,40(sp)
   1887e:	6326                	ld	t1,72(sp)
   18880:	7482                	ld	s1,32(sp)
   18882:	8722                	mv	a4,s0
   18884:	8436                	mv	s0,a3
   18886:	97ba                	add	a5,a5,a4
   18888:	e418                	sd	a4,8(s0)
   1888a:	01d43023          	sd	t4,0(s0)
   1888e:	e13e                	sd	a5,128(sp)
   18890:	dcae                	sw	a1,120(sp)
   18892:	471d                	li	a4,7
   18894:	3ab75563          	bge	a4,a1,18c3e <_vfiprintf_r+0xab6>
   18898:	56078763          	beqz	a5,18e06 <_vfiprintf_r+0xc7e>
   1889c:	1890                	add	a2,sp,112
   1889e:	85d2                	mv	a1,s4
   188a0:	8556                	mv	a0,s5
   188a2:	f41a                	sd	t1,40(sp)
   188a4:	f072                	sd	t3,32(sp)
   188a6:	ec46                	sd	a7,24(sp)
   188a8:	e842                	sd	a6,16(sp)
   188aa:	82dff0ef          	jal	180d6 <__sprint_r.part.0>
   188ae:	a4051de3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   188b2:	7322                	ld	t1,40(sp)
   188b4:	5666                	lw	a2,120(sp)
   188b6:	678a                	ld	a5,128(sp)
   188b8:	406484bb          	subw	s1,s1,t1
   188bc:	7e02                	ld	t3,32(sp)
   188be:	68e2                	ld	a7,24(sp)
   188c0:	6842                	ld	a6,16(sp)
   188c2:	844e                	mv	s0,s3
   188c4:	0016051b          	addw	a0,a2,1
   188c8:	b4905be3          	blez	s1,1841e <_vfiprintf_r+0x296>
   188cc:	00005e97          	auipc	t4,0x5
   188d0:	c8ce8e93          	add	t4,t4,-884 # 1d558 <zeroes.0>
   188d4:	06995563          	bge	s2,s1,1893e <_vfiprintf_r+0x7b6>
   188d8:	8722                	mv	a4,s0
   188da:	4f1d                	li	t5,7
   188dc:	8426                	mv	s0,s1
   188de:	e842                	sd	a6,16(sp)
   188e0:	ec46                	sd	a7,24(sp)
   188e2:	f072                	sd	t3,32(sp)
   188e4:	f41a                	sd	t1,40(sp)
   188e6:	84da                	mv	s1,s6
   188e8:	a801                	j	188f8 <_vfiprintf_r+0x770>
   188ea:	0026051b          	addw	a0,a2,2
   188ee:	0741                	add	a4,a4,16
   188f0:	862e                	mv	a2,a1
   188f2:	3441                	addw	s0,s0,-16
   188f4:	02895e63          	bge	s2,s0,18930 <_vfiprintf_r+0x7a8>
   188f8:	0016059b          	addw	a1,a2,1
   188fc:	07c1                	add	a5,a5,16
   188fe:	01673023          	sd	s6,0(a4)
   18902:	01273423          	sd	s2,8(a4)
   18906:	e13e                	sd	a5,128(sp)
   18908:	dcae                	sw	a1,120(sp)
   1890a:	febf50e3          	bge	t5,a1,188ea <_vfiprintf_r+0x762>
   1890e:	c7a1                	beqz	a5,18956 <_vfiprintf_r+0x7ce>
   18910:	1890                	add	a2,sp,112
   18912:	85d2                	mv	a1,s4
   18914:	8556                	mv	a0,s5
   18916:	fc0ff0ef          	jal	180d6 <__sprint_r.part.0>
   1891a:	9e0517e3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   1891e:	5666                	lw	a2,120(sp)
   18920:	3441                	addw	s0,s0,-16
   18922:	678a                	ld	a5,128(sp)
   18924:	874e                	mv	a4,s3
   18926:	0016051b          	addw	a0,a2,1
   1892a:	4f1d                	li	t5,7
   1892c:	fc8946e3          	blt	s2,s0,188f8 <_vfiprintf_r+0x770>
   18930:	6842                	ld	a6,16(sp)
   18932:	68e2                	ld	a7,24(sp)
   18934:	7e02                	ld	t3,32(sp)
   18936:	7322                	ld	t1,40(sp)
   18938:	8ea6                	mv	t4,s1
   1893a:	84a2                	mv	s1,s0
   1893c:	843a                	mv	s0,a4
   1893e:	97a6                	add	a5,a5,s1
   18940:	01d43023          	sd	t4,0(s0)
   18944:	e404                	sd	s1,8(s0)
   18946:	e13e                	sd	a5,128(sp)
   18948:	dcaa                	sw	a0,120(sp)
   1894a:	471d                	li	a4,7
   1894c:	20a74663          	blt	a4,a0,18b58 <_vfiprintf_r+0x9d0>
   18950:	0441                	add	s0,s0,16
   18952:	2505                	addw	a0,a0,1
   18954:	b4e9                	j	1841e <_vfiprintf_r+0x296>
   18956:	4505                	li	a0,1
   18958:	4601                	li	a2,0
   1895a:	874e                	mv	a4,s3
   1895c:	bf59                	j	188f2 <_vfiprintf_r+0x76a>
   1895e:	4585                	li	a1,1
   18960:	4601                	li	a2,0
   18962:	86ce                	mv	a3,s3
   18964:	bdc9                	j	18836 <_vfiprintf_r+0x6ae>
   18966:	cb95                	beqz	a5,1899a <_vfiprintf_r+0x812>
   18968:	1890                	add	a2,sp,112
   1896a:	85d2                	mv	a1,s4
   1896c:	8556                	mv	a0,s5
   1896e:	e89a                	sd	t1,80(sp)
   18970:	e4f2                	sd	t3,72(sp)
   18972:	f446                	sd	a7,40(sp)
   18974:	f042                	sd	a6,32(sp)
   18976:	ec16                	sd	t0,24(sp)
   18978:	e87e                	sd	t6,16(sp)
   1897a:	f5cff0ef          	jal	180d6 <__sprint_r.part.0>
   1897e:	980515e3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18982:	5666                	lw	a2,120(sp)
   18984:	678a                	ld	a5,128(sp)
   18986:	6346                	ld	t1,80(sp)
   18988:	6e26                	ld	t3,72(sp)
   1898a:	78a2                	ld	a7,40(sp)
   1898c:	7802                	ld	a6,32(sp)
   1898e:	62e2                	ld	t0,24(sp)
   18990:	6fc2                	ld	t6,16(sp)
   18992:	844e                	mv	s0,s3
   18994:	0016051b          	addw	a0,a2,1
   18998:	bc05                	j	183c8 <_vfiprintf_r+0x240>
   1899a:	2e0f8863          	beqz	t6,18c8a <_vfiprintf_r+0xb02>
   1899e:	10bc                	add	a5,sp,104
   189a0:	f9be                	sd	a5,240(sp)
   189a2:	4789                	li	a5,2
   189a4:	fdbe                	sd	a5,248(sp)
   189a6:	4505                	li	a0,1
   189a8:	844e                	mv	s0,s3
   189aa:	862a                	mv	a2,a0
   189ac:	0441                	add	s0,s0,16
   189ae:	2505                	addw	a0,a0,1
   189b0:	bcb9                	j	1840e <_vfiprintf_r+0x286>
   189b2:	883e                	mv	a6,a5
   189b4:	4789                	li	a5,2
   189b6:	d80781e3          	beqz	a5,18738 <_vfiprintf_r+0x5b0>
   189ba:	66a2                	ld	a3,8(sp)
   189bc:	0ec10313          	add	t1,sp,236
   189c0:	8b9a                	mv	s7,t1
   189c2:	00f77793          	and	a5,a4,15
   189c6:	97b6                	add	a5,a5,a3
   189c8:	0007c783          	lbu	a5,0(a5)
   189cc:	8311                	srl	a4,a4,0x4
   189ce:	1bfd                	add	s7,s7,-1
   189d0:	00fb8023          	sb	a5,0(s7)
   189d4:	f77d                	bnez	a4,189c2 <_vfiprintf_r+0x83a>
   189d6:	4173033b          	subw	t1,t1,s7
   189da:	00030e1b          	sext.w	t3,t1
   189de:	b69353e3          	bge	t1,s1,18544 <_vfiprintf_r+0x3bc>
   189e2:	00048e1b          	sext.w	t3,s1
   189e6:	beb9                	j	18544 <_vfiprintf_r+0x3bc>
   189e8:	4ec1                	li	t4,16
   189ea:	46eed163          	bge	t4,a4,18e4c <_vfiprintf_r+0xcc4>
   189ee:	00005e97          	auipc	t4,0x5
   189f2:	b7ae8e93          	add	t4,t4,-1158 # 1d568 <blanks.1>
   189f6:	e4a6                	sd	s1,72(sp)
   189f8:	86a2                	mv	a3,s0
   189fa:	4f41                	li	t5,16
   189fc:	439d                	li	t2,7
   189fe:	e87e                	sd	t6,16(sp)
   18a00:	ec16                	sd	t0,24(sp)
   18a02:	f042                	sd	a6,32(sp)
   18a04:	f446                	sd	a7,40(sp)
   18a06:	e8f2                	sd	t3,80(sp)
   18a08:	ec9a                	sd	t1,88(sp)
   18a0a:	843a                	mv	s0,a4
   18a0c:	84f6                	mv	s1,t4
   18a0e:	a811                	j	18a22 <_vfiprintf_r+0x89a>
   18a10:	0026059b          	addw	a1,a2,2
   18a14:	06c1                	add	a3,a3,16
   18a16:	862a                	mv	a2,a0
   18a18:	3441                	addw	s0,s0,-16
   18a1a:	048f5063          	bge	t5,s0,18a5a <_vfiprintf_r+0x8d2>
   18a1e:	0016059b          	addw	a1,a2,1
   18a22:	07c1                	add	a5,a5,16
   18a24:	e284                	sd	s1,0(a3)
   18a26:	01e6b423          	sd	t5,8(a3)
   18a2a:	e13e                	sd	a5,128(sp)
   18a2c:	0005851b          	sext.w	a0,a1
   18a30:	dcae                	sw	a1,120(sp)
   18a32:	fca3dfe3          	bge	t2,a0,18a10 <_vfiprintf_r+0x888>
   18a36:	cbb1                	beqz	a5,18a8a <_vfiprintf_r+0x902>
   18a38:	1890                	add	a2,sp,112
   18a3a:	85d2                	mv	a1,s4
   18a3c:	8556                	mv	a0,s5
   18a3e:	e98ff0ef          	jal	180d6 <__sprint_r.part.0>
   18a42:	8c0513e3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18a46:	5666                	lw	a2,120(sp)
   18a48:	4f41                	li	t5,16
   18a4a:	3441                	addw	s0,s0,-16
   18a4c:	678a                	ld	a5,128(sp)
   18a4e:	86ce                	mv	a3,s3
   18a50:	0016059b          	addw	a1,a2,1
   18a54:	439d                	li	t2,7
   18a56:	fc8f44e3          	blt	t5,s0,18a1e <_vfiprintf_r+0x896>
   18a5a:	8ea6                	mv	t4,s1
   18a5c:	6fc2                	ld	t6,16(sp)
   18a5e:	62e2                	ld	t0,24(sp)
   18a60:	7802                	ld	a6,32(sp)
   18a62:	78a2                	ld	a7,40(sp)
   18a64:	6e46                	ld	t3,80(sp)
   18a66:	6366                	ld	t1,88(sp)
   18a68:	64a6                	ld	s1,72(sp)
   18a6a:	8722                	mv	a4,s0
   18a6c:	8436                	mv	s0,a3
   18a6e:	97ba                	add	a5,a5,a4
   18a70:	e418                	sd	a4,8(s0)
   18a72:	01d43023          	sd	t4,0(s0)
   18a76:	e13e                	sd	a5,128(sp)
   18a78:	dcae                	sw	a1,120(sp)
   18a7a:	471d                	li	a4,7
   18a7c:	10b74c63          	blt	a4,a1,18b94 <_vfiprintf_r+0xa0c>
   18a80:	0441                	add	s0,s0,16
   18a82:	0015851b          	addw	a0,a1,1
   18a86:	862e                	mv	a2,a1
   18a88:	ba39                	j	183a6 <_vfiprintf_r+0x21e>
   18a8a:	4601                	li	a2,0
   18a8c:	4585                	li	a1,1
   18a8e:	86ce                	mv	a3,s3
   18a90:	b761                	j	18a18 <_vfiprintf_r+0x890>
   18a92:	dc82                	sw	zero,120(sp)
   18a94:	00487813          	and	a6,a6,4
   18a98:	0a080963          	beqz	a6,18b4a <_vfiprintf_r+0x9c2>
   18a9c:	41c884bb          	subw	s1,a7,t3
   18aa0:	0a905563          	blez	s1,18b4a <_vfiprintf_r+0x9c2>
   18aa4:	844e                	mv	s0,s3
   18aa6:	4741                	li	a4,16
   18aa8:	5666                	lw	a2,120(sp)
   18aaa:	3a975b63          	bge	a4,s1,18e60 <_vfiprintf_r+0xcd8>
   18aae:	00005e97          	auipc	t4,0x5
   18ab2:	abae8e93          	add	t4,t4,-1350 # 1d568 <blanks.1>
   18ab6:	86a2                	mv	a3,s0
   18ab8:	4bc1                	li	s7,16
   18aba:	8426                	mv	s0,s1
   18abc:	481d                	li	a6,7
   18abe:	e846                	sd	a7,16(sp)
   18ac0:	ec72                	sd	t3,24(sp)
   18ac2:	84f6                	mv	s1,t4
   18ac4:	a801                	j	18ad4 <_vfiprintf_r+0x94c>
   18ac6:	0026071b          	addw	a4,a2,2
   18aca:	06c1                	add	a3,a3,16
   18acc:	862e                	mv	a2,a1
   18ace:	3441                	addw	s0,s0,-16
   18ad0:	028bdd63          	bge	s7,s0,18b0a <_vfiprintf_r+0x982>
   18ad4:	0016059b          	addw	a1,a2,1
   18ad8:	07c1                	add	a5,a5,16
   18ada:	e284                	sd	s1,0(a3)
   18adc:	0176b423          	sd	s7,8(a3)
   18ae0:	e13e                	sd	a5,128(sp)
   18ae2:	dcae                	sw	a1,120(sp)
   18ae4:	feb851e3          	bge	a6,a1,18ac6 <_vfiprintf_r+0x93e>
   18ae8:	cfa9                	beqz	a5,18b42 <_vfiprintf_r+0x9ba>
   18aea:	1890                	add	a2,sp,112
   18aec:	85d2                	mv	a1,s4
   18aee:	8556                	mv	a0,s5
   18af0:	de6ff0ef          	jal	180d6 <__sprint_r.part.0>
   18af4:	80051ae3          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18af8:	5666                	lw	a2,120(sp)
   18afa:	3441                	addw	s0,s0,-16
   18afc:	678a                	ld	a5,128(sp)
   18afe:	86ce                	mv	a3,s3
   18b00:	0016071b          	addw	a4,a2,1
   18b04:	481d                	li	a6,7
   18b06:	fc8bc7e3          	blt	s7,s0,18ad4 <_vfiprintf_r+0x94c>
   18b0a:	68c2                	ld	a7,16(sp)
   18b0c:	6e62                	ld	t3,24(sp)
   18b0e:	8ea6                	mv	t4,s1
   18b10:	84a2                	mv	s1,s0
   18b12:	8436                	mv	s0,a3
   18b14:	97a6                	add	a5,a5,s1
   18b16:	01d43023          	sd	t4,0(s0)
   18b1a:	e404                	sd	s1,8(s0)
   18b1c:	e13e                	sd	a5,128(sp)
   18b1e:	dcba                	sw	a4,120(sp)
   18b20:	461d                	li	a2,7
   18b22:	94e651e3          	bge	a2,a4,18464 <_vfiprintf_r+0x2dc>
   18b26:	c395                	beqz	a5,18b4a <_vfiprintf_r+0x9c2>
   18b28:	1890                	add	a2,sp,112
   18b2a:	85d2                	mv	a1,s4
   18b2c:	8556                	mv	a0,s5
   18b2e:	ec72                	sd	t3,24(sp)
   18b30:	e846                	sd	a7,16(sp)
   18b32:	da4ff0ef          	jal	180d6 <__sprint_r.part.0>
   18b36:	fc051963          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18b3a:	678a                	ld	a5,128(sp)
   18b3c:	6e62                	ld	t3,24(sp)
   18b3e:	68c2                	ld	a7,16(sp)
   18b40:	b215                	j	18464 <_vfiprintf_r+0x2dc>
   18b42:	4705                	li	a4,1
   18b44:	4601                	li	a2,0
   18b46:	86ce                	mv	a3,s3
   18b48:	b759                	j	18ace <_vfiprintf_r+0x946>
   18b4a:	87c6                	mv	a5,a7
   18b4c:	01c8d363          	bge	a7,t3,18b52 <_vfiprintf_r+0x9ca>
   18b50:	87f2                	mv	a5,t3
   18b52:	01a78d3b          	addw	s10,a5,s10
   18b56:	ba39                	j	18474 <_vfiprintf_r+0x2ec>
   18b58:	c8078ce3          	beqz	a5,187f0 <_vfiprintf_r+0x668>
   18b5c:	1890                	add	a2,sp,112
   18b5e:	85d2                	mv	a1,s4
   18b60:	8556                	mv	a0,s5
   18b62:	f41a                	sd	t1,40(sp)
   18b64:	f072                	sd	t3,32(sp)
   18b66:	ec46                	sd	a7,24(sp)
   18b68:	e842                	sd	a6,16(sp)
   18b6a:	d6cff0ef          	jal	180d6 <__sprint_r.part.0>
   18b6e:	f8051d63          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18b72:	5566                	lw	a0,120(sp)
   18b74:	678a                	ld	a5,128(sp)
   18b76:	7322                	ld	t1,40(sp)
   18b78:	7e02                	ld	t3,32(sp)
   18b7a:	68e2                	ld	a7,24(sp)
   18b7c:	6842                	ld	a6,16(sp)
   18b7e:	844e                	mv	s0,s3
   18b80:	2505                	addw	a0,a0,1
   18b82:	b871                	j	1841e <_vfiprintf_r+0x296>
   18b84:	dc82                	sw	zero,120(sp)
   18b86:	844e                	mv	s0,s3
   18b88:	ee8ff06f          	j	18270 <_vfiprintf_r+0xe8>
   18b8c:	4505                	li	a0,1
   18b8e:	4601                	li	a2,0
   18b90:	844e                	mv	s0,s3
   18b92:	b8b5                	j	1840e <_vfiprintf_r+0x286>
   18b94:	18078c63          	beqz	a5,18d2c <_vfiprintf_r+0xba4>
   18b98:	1890                	add	a2,sp,112
   18b9a:	85d2                	mv	a1,s4
   18b9c:	8556                	mv	a0,s5
   18b9e:	e89a                	sd	t1,80(sp)
   18ba0:	e4f2                	sd	t3,72(sp)
   18ba2:	f446                	sd	a7,40(sp)
   18ba4:	f042                	sd	a6,32(sp)
   18ba6:	ec16                	sd	t0,24(sp)
   18ba8:	e87e                	sd	t6,16(sp)
   18baa:	d2cff0ef          	jal	180d6 <__sprint_r.part.0>
   18bae:	f4051d63          	bnez	a0,18308 <_vfiprintf_r+0x180>
   18bb2:	5666                	lw	a2,120(sp)
   18bb4:	678a                	ld	a5,128(sp)
   18bb6:	6346                	ld	t1,80(sp)
   18bb8:	6e26                	ld	t3,72(sp)
   18bba:	78a2                	ld	a7,40(sp)
   18bbc:	7802                	ld	a6,32(sp)
   18bbe:	62e2                	ld	t0,24(sp)
   18bc0:	6fc2                	ld	t6,16(sp)
   18bc2:	844e                	mv	s0,s3
   18bc4:	0016051b          	addw	a0,a2,1
   18bc8:	fdeff06f          	j	183a6 <_vfiprintf_r+0x21e>
   18bcc:	4e01                	li	t3,0
   18bce:	4301                	li	t1,0
   18bd0:	0ec10b93          	add	s7,sp,236
   18bd4:	ba85                	j	18544 <_vfiprintf_r+0x3bc>
   18bd6:	0ec10313          	add	t1,sp,236
   18bda:	76e2                	ld	a3,56(sp)
   18bdc:	40087f13          	and	t5,a6,1024
   18be0:	4581                	li	a1,0
   18be2:	861a                	mv	a2,t1
   18be4:	4729                	li	a4,10
   18be6:	4e25                	li	t3,9
   18be8:	0ff00f93          	li	t6,255
   18bec:	a039                	j	18bfa <_vfiprintf_r+0xa72>
   18bee:	02ecd7b3          	divu	a5,s9,a4
   18bf2:	039e7763          	bgeu	t3,s9,18c20 <_vfiprintf_r+0xa98>
   18bf6:	8cbe                	mv	s9,a5
   18bf8:	865e                	mv	a2,s7
   18bfa:	fff60b93          	add	s7,a2,-1
   18bfe:	2585                	addw	a1,a1,1
   18c00:	02ecf7b3          	remu	a5,s9,a4
   18c04:	0307879b          	addw	a5,a5,48
   18c08:	fef60fa3          	sb	a5,-1(a2)
   18c0c:	fe0f01e3          	beqz	t5,18bee <_vfiprintf_r+0xa66>
   18c10:	0006c783          	lbu	a5,0(a3)
   18c14:	fcb79de3          	bne	a5,a1,18bee <_vfiprintf_r+0xa66>
   18c18:	fdf78be3          	beq	a5,t6,18bee <_vfiprintf_r+0xa66>
   18c1c:	139e6463          	bltu	t3,s9,18d44 <_vfiprintf_r+0xbbc>
   18c20:	4173033b          	subw	t1,t1,s7
   18c24:	fc36                	sd	a3,56(sp)
   18c26:	00030e1b          	sext.w	t3,t1
   18c2a:	00935463          	bge	t1,s1,18c32 <_vfiprintf_r+0xaaa>
   18c2e:	00048e1b          	sext.w	t3,s1
   18c32:	8cf6                	mv	s9,t4
   18c34:	ba01                	j	18544 <_vfiprintf_r+0x3bc>
   18c36:	4e01                	li	t3,0
   18c38:	0ec10b93          	add	s7,sp,236
   18c3c:	b221                	j	18544 <_vfiprintf_r+0x3bc>
   18c3e:	0441                	add	s0,s0,16
   18c40:	0015851b          	addw	a0,a1,1
   18c44:	862e                	mv	a2,a1
   18c46:	fd0ff06f          	j	18416 <_vfiprintf_r+0x28e>
   18c4a:	04037793          	and	a5,t1,64
   18c4e:	000cac83          	lw	s9,0(s9)
   18c52:	18078463          	beqz	a5,18dda <_vfiprintf_r+0xc52>
   18c56:	1cc2                	sll	s9,s9,0x30
   18c58:	030cdc93          	srl	s9,s9,0x30
   18c5c:	bc4d                	j	1870e <_vfiprintf_r+0x586>
   18c5e:	0407f613          	and	a2,a5,64
   18c62:	000ca703          	lw	a4,0(s9)
   18c66:	18060063          	beqz	a2,18de6 <_vfiprintf_r+0xc5e>
   18c6a:	1742                	sll	a4,a4,0x30
   18c6c:	9341                	srl	a4,a4,0x30
   18c6e:	bc39                	j	1868c <_vfiprintf_r+0x504>
   18c70:	000dc783          	lbu	a5,0(s11)
   18c74:	e0070f63          	beqz	a4,18292 <_vfiprintf_r+0x10a>
   18c78:	00074703          	lbu	a4,0(a4)
   18c7c:	e0070b63          	beqz	a4,18292 <_vfiprintf_r+0x10a>
   18c80:	40086813          	or	a6,a6,1024
   18c84:	2801                	sext.w	a6,a6
   18c86:	e0cff06f          	j	18292 <_vfiprintf_r+0x10a>
   18c8a:	4601                	li	a2,0
   18c8c:	4505                	li	a0,1
   18c8e:	844e                	mv	s0,s3
   18c90:	f7eff06f          	j	1840e <_vfiprintf_r+0x286>
   18c94:	00048e1b          	sext.w	t3,s1
   18c98:	8bb2                	mv	s7,a2
   18c9a:	b06d                	j	18544 <_vfiprintf_r+0x3bc>
   18c9c:	87c2                	mv	a5,a6
   18c9e:	bae1                	j	18676 <_vfiprintf_r+0x4ee>
   18ca0:	00004717          	auipc	a4,0x4
   18ca4:	df070713          	add	a4,a4,-528 # 1ca90 <__clzdi2+0x72>
   18ca8:	e43a                	sd	a4,8(sp)
   18caa:	02087713          	and	a4,a6,32
   18cae:	008c8613          	add	a2,s9,8
   18cb2:	eb31                	bnez	a4,18d06 <_vfiprintf_r+0xb7e>
   18cb4:	01087713          	and	a4,a6,16
   18cb8:	e739                	bnez	a4,18d06 <_vfiprintf_r+0xb7e>
   18cba:	04087593          	and	a1,a6,64
   18cbe:	000ca703          	lw	a4,0(s9)
   18cc2:	10058663          	beqz	a1,18dce <_vfiprintf_r+0xc46>
   18cc6:	1742                	sll	a4,a4,0x30
   18cc8:	9341                	srl	a4,a4,0x30
   18cca:	00187593          	and	a1,a6,1
   18cce:	c999                	beqz	a1,18ce4 <_vfiprintf_r+0xb5c>
   18cd0:	cb11                	beqz	a4,18ce4 <_vfiprintf_r+0xb5c>
   18cd2:	00286813          	or	a6,a6,2
   18cd6:	03000593          	li	a1,48
   18cda:	06b10423          	sb	a1,104(sp)
   18cde:	06f104a3          	sb	a5,105(sp)
   18ce2:	2801                	sext.w	a6,a6
   18ce4:	bff87813          	and	a6,a6,-1025
   18ce8:	2801                	sext.w	a6,a6
   18cea:	8cb2                	mv	s9,a2
   18cec:	bc65                	j	187a4 <_vfiprintf_r+0x61c>
   18cee:	8342                	mv	t1,a6
   18cf0:	b421                	j	186f8 <_vfiprintf_r+0x570>
   18cf2:	00004717          	auipc	a4,0x4
   18cf6:	db670713          	add	a4,a4,-586 # 1caa8 <__clzdi2+0x8a>
   18cfa:	e43a                	sd	a4,8(sp)
   18cfc:	02087713          	and	a4,a6,32
   18d00:	008c8613          	add	a2,s9,8
   18d04:	db45                	beqz	a4,18cb4 <_vfiprintf_r+0xb2c>
   18d06:	000cb703          	ld	a4,0(s9)
   18d0a:	b7c1                	j	18cca <_vfiprintf_r+0xb42>
   18d0c:	855e                	mv	a0,s7
   18d0e:	eccfd0ef          	jal	163da <strlen>
   18d12:	0005031b          	sext.w	t1,a0
   18d16:	fff34e13          	not	t3,t1
   18d1a:	43fe5e13          	sra	t3,t3,0x3f
   18d1e:	6842                	ld	a6,16(sp)
   18d20:	68e2                	ld	a7,24(sp)
   18d22:	006e7e33          	and	t3,t3,t1
   18d26:	4481                	li	s1,0
   18d28:	81dff06f          	j	18544 <_vfiprintf_r+0x3bc>
   18d2c:	06714703          	lbu	a4,103(sp)
   18d30:	c375                	beqz	a4,18e14 <_vfiprintf_r+0xc8c>
   18d32:	06710793          	add	a5,sp,103
   18d36:	f9be                	sd	a5,240(sp)
   18d38:	4785                	li	a5,1
   18d3a:	fdbe                	sd	a5,248(sp)
   18d3c:	4505                	li	a0,1
   18d3e:	844e                	mv	s0,s3
   18d40:	e82ff06f          	j	183c2 <_vfiprintf_r+0x23a>
   18d44:	77c2                	ld	a5,48(sp)
   18d46:	6586                	ld	a1,64(sp)
   18d48:	e49a                	sd	t1,72(sp)
   18d4a:	40fb8bb3          	sub	s7,s7,a5
   18d4e:	863e                	mv	a2,a5
   18d50:	855e                	mv	a0,s7
   18d52:	fc76                	sd	t4,56(sp)
   18d54:	f47a                	sd	t5,40(sp)
   18d56:	f046                	sd	a7,32(sp)
   18d58:	ec42                	sd	a6,24(sp)
   18d5a:	e836                	sd	a3,16(sp)
   18d5c:	f12fd0ef          	jal	1646e <strncpy>
   18d60:	66c2                	ld	a3,16(sp)
   18d62:	47a9                	li	a5,10
   18d64:	02fcd7b3          	divu	a5,s9,a5
   18d68:	0016c603          	lbu	a2,1(a3)
   18d6c:	6862                	ld	a6,24(sp)
   18d6e:	7882                	ld	a7,32(sp)
   18d70:	00c03633          	snez	a2,a2
   18d74:	7f22                	ld	t5,40(sp)
   18d76:	7ee2                	ld	t4,56(sp)
   18d78:	6326                	ld	t1,72(sp)
   18d7a:	96b2                	add	a3,a3,a2
   18d7c:	4581                	li	a1,0
   18d7e:	4729                	li	a4,10
   18d80:	4e25                	li	t3,9
   18d82:	0ff00f93          	li	t6,255
   18d86:	bd85                	j	18bf6 <_vfiprintf_r+0xa6e>
   18d88:	883e                	mv	a6,a5
   18d8a:	4781                	li	a5,0
   18d8c:	9a0786e3          	beqz	a5,18738 <_vfiprintf_r+0x5b0>
   18d90:	b12d                	j	189ba <_vfiprintf_r+0x832>
   18d92:	20086813          	or	a6,a6,512
   18d96:	001dc783          	lbu	a5,1(s11)
   18d9a:	2801                	sext.w	a6,a6
   18d9c:	0d85                	add	s11,s11,1
   18d9e:	cf4ff06f          	j	18292 <_vfiprintf_r+0x10a>
   18da2:	02086813          	or	a6,a6,32
   18da6:	001dc783          	lbu	a5,1(s11)
   18daa:	2801                	sext.w	a6,a6
   18dac:	0d85                	add	s11,s11,1
   18dae:	ce4ff06f          	j	18292 <_vfiprintf_r+0x10a>
   18db2:	4799                	li	a5,6
   18db4:	0004831b          	sext.w	t1,s1
   18db8:	0497ec63          	bltu	a5,s1,18e10 <_vfiprintf_r+0xc88>
   18dbc:	8e1a                	mv	t3,t1
   18dbe:	00004b97          	auipc	s7,0x4
   18dc2:	d02b8b93          	add	s7,s7,-766 # 1cac0 <__clzdi2+0xa2>
   18dc6:	dbaff06f          	j	18380 <_vfiprintf_r+0x1f8>
   18dca:	4701                	li	a4,0
   18dcc:	b6fd                	j	189ba <_vfiprintf_r+0x832>
   18dce:	20087593          	and	a1,a6,512
   18dd2:	c5ad                	beqz	a1,18e3c <_vfiprintf_r+0xcb4>
   18dd4:	0ff77713          	zext.b	a4,a4
   18dd8:	bdcd                	j	18cca <_vfiprintf_r+0xb42>
   18dda:	20037793          	and	a5,t1,512
   18dde:	cbb9                	beqz	a5,18e34 <_vfiprintf_r+0xcac>
   18de0:	0ffcfc93          	zext.b	s9,s9
   18de4:	b22d                	j	1870e <_vfiprintf_r+0x586>
   18de6:	2007f613          	and	a2,a5,512
   18dea:	c231                	beqz	a2,18e2e <_vfiprintf_r+0xca6>
   18dec:	0ff77713          	zext.b	a4,a4
   18df0:	b871                	j	1868c <_vfiprintf_r+0x504>
   18df2:	20087793          	and	a5,a6,512
   18df6:	cb8d                	beqz	a5,18e28 <_vfiprintf_r+0xca0>
   18df8:	018c9c9b          	sllw	s9,s9,0x18
   18dfc:	418cdc9b          	sraw	s9,s9,0x18
   18e00:	87e6                	mv	a5,s9
   18e02:	eb4ff06f          	j	184b6 <_vfiprintf_r+0x32e>
   18e06:	4505                	li	a0,1
   18e08:	4601                	li	a2,0
   18e0a:	844e                	mv	s0,s3
   18e0c:	e0aff06f          	j	18416 <_vfiprintf_r+0x28e>
   18e10:	4319                	li	t1,6
   18e12:	b76d                	j	18dbc <_vfiprintf_r+0xc34>
   18e14:	4601                	li	a2,0
   18e16:	4505                	li	a0,1
   18e18:	844e                	mv	s0,s3
   18e1a:	daeff06f          	j	183c8 <_vfiprintf_r+0x240>
   18e1e:	01a71023          	sh	s10,0(a4)
   18e22:	0ca1                	add	s9,s9,8
   18e24:	bfaff06f          	j	1821e <_vfiprintf_r+0x96>
   18e28:	87e6                	mv	a5,s9
   18e2a:	e8cff06f          	j	184b6 <_vfiprintf_r+0x32e>
   18e2e:	1702                	sll	a4,a4,0x20
   18e30:	9301                	srl	a4,a4,0x20
   18e32:	b8a9                	j	1868c <_vfiprintf_r+0x504>
   18e34:	1c82                	sll	s9,s9,0x20
   18e36:	020cdc93          	srl	s9,s9,0x20
   18e3a:	b8d1                	j	1870e <_vfiprintf_r+0x586>
   18e3c:	1702                	sll	a4,a4,0x20
   18e3e:	9301                	srl	a4,a4,0x20
   18e40:	b569                	j	18cca <_vfiprintf_r+0xb42>
   18e42:	8e26                	mv	t3,s1
   18e44:	8326                	mv	t1,s1
   18e46:	4481                	li	s1,0
   18e48:	efcff06f          	j	18544 <_vfiprintf_r+0x3bc>
   18e4c:	00004e97          	auipc	t4,0x4
   18e50:	71ce8e93          	add	t4,t4,1820 # 1d568 <blanks.1>
   18e54:	b929                	j	18a6e <_vfiprintf_r+0x8e6>
   18e56:	8cf6                	mv	s9,t4
   18e58:	03000793          	li	a5,48
   18e5c:	ed4ff06f          	j	18530 <_vfiprintf_r+0x3a8>
   18e60:	0016071b          	addw	a4,a2,1
   18e64:	00004e97          	auipc	t4,0x4
   18e68:	704e8e93          	add	t4,t4,1796 # 1d568 <blanks.1>
   18e6c:	b165                	j	18b14 <_vfiprintf_r+0x98c>
   18e6e:	85aa                	mv	a1,a0
   18e70:	00004e97          	auipc	t4,0x4
   18e74:	6e8e8e93          	add	t4,t4,1768 # 1d558 <zeroes.0>
   18e78:	b439                	j	18886 <_vfiprintf_r+0x6fe>
   18e7a:	5cfd                	li	s9,-1
   18e7c:	c9aff06f          	j	18316 <_vfiprintf_r+0x18e>
   18e80:	01a72023          	sw	s10,0(a4)
   18e84:	0ca1                	add	s9,s9,8
   18e86:	b98ff06f          	j	1821e <_vfiprintf_r+0x96>
   18e8a:	000ca783          	lw	a5,0(s9)
   18e8e:	0ca1                	add	s9,s9,8
   18e90:	0007849b          	sext.w	s1,a5
   18e94:	0007d363          	bgez	a5,18e9a <_vfiprintf_r+0xd12>
   18e98:	54fd                	li	s1,-1
   18e9a:	001dc783          	lbu	a5,1(s11)
   18e9e:	8dba                	mv	s11,a4
   18ea0:	bf2ff06f          	j	18292 <_vfiprintf_r+0x10a>

0000000000018ea4 <vfiprintf>:
   18ea4:	86b2                	mv	a3,a2
   18ea6:	862e                	mv	a2,a1
   18ea8:	85aa                	mv	a1,a0
   18eaa:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   18eae:	adaff06f          	j	18188 <_vfiprintf_r>

0000000000018eb2 <__sbprintf>:
   18eb2:	01059783          	lh	a5,16(a1)
   18eb6:	0125d703          	lhu	a4,18(a1)
   18eba:	0ac5a303          	lw	t1,172(a1)
   18ebe:	9bf5                	and	a5,a5,-3
   18ec0:	0107979b          	sllw	a5,a5,0x10
   18ec4:	0305b883          	ld	a7,48(a1)
   18ec8:	0405b803          	ld	a6,64(a1)
   18ecc:	0107171b          	sllw	a4,a4,0x10
   18ed0:	0107d79b          	srlw	a5,a5,0x10
   18ed4:	b3010113          	add	sp,sp,-1232
   18ed8:	8fd9                	or	a5,a5,a4
   18eda:	4c813023          	sd	s0,1216(sp)
   18ede:	40000713          	li	a4,1024
   18ee2:	c83e                	sw	a5,16(sp)
   18ee4:	842e                	mv	s0,a1
   18ee6:	191c                	add	a5,sp,176
   18ee8:	858a                	mv	a1,sp
   18eea:	4a913c23          	sd	s1,1208(sp)
   18eee:	4b213823          	sd	s2,1200(sp)
   18ef2:	4c113423          	sd	ra,1224(sp)
   18ef6:	892a                	mv	s2,a0
   18ef8:	d71a                	sw	t1,172(sp)
   18efa:	f846                	sd	a7,48(sp)
   18efc:	e0c2                	sd	a6,64(sp)
   18efe:	e03e                	sd	a5,0(sp)
   18f00:	ec3e                	sd	a5,24(sp)
   18f02:	c63a                	sw	a4,12(sp)
   18f04:	d03a                	sw	a4,32(sp)
   18f06:	d402                	sw	zero,40(sp)
   18f08:	a80ff0ef          	jal	18188 <_vfiprintf_r>
   18f0c:	84aa                	mv	s1,a0
   18f0e:	02055963          	bgez	a0,18f40 <__sbprintf+0x8e>
   18f12:	01015783          	lhu	a5,16(sp)
   18f16:	0407f793          	and	a5,a5,64
   18f1a:	c799                	beqz	a5,18f28 <__sbprintf+0x76>
   18f1c:	01045783          	lhu	a5,16(s0)
   18f20:	0407e793          	or	a5,a5,64
   18f24:	00f41823          	sh	a5,16(s0)
   18f28:	4c813083          	ld	ra,1224(sp)
   18f2c:	4c013403          	ld	s0,1216(sp)
   18f30:	4b013903          	ld	s2,1200(sp)
   18f34:	8526                	mv	a0,s1
   18f36:	4b813483          	ld	s1,1208(sp)
   18f3a:	4d010113          	add	sp,sp,1232
   18f3e:	8082                	ret
   18f40:	858a                	mv	a1,sp
   18f42:	854a                	mv	a0,s2
   18f44:	c0cf90ef          	jal	12350 <_fflush_r>
   18f48:	d569                	beqz	a0,18f12 <__sbprintf+0x60>
   18f4a:	54fd                	li	s1,-1
   18f4c:	b7d9                	j	18f12 <__sbprintf+0x60>

0000000000018f4e <_write_r>:
   18f4e:	1141                	add	sp,sp,-16
   18f50:	872e                	mv	a4,a1
   18f52:	e022                	sd	s0,0(sp)
   18f54:	85b2                	mv	a1,a2
   18f56:	842a                	mv	s0,a0
   18f58:	8636                	mv	a2,a3
   18f5a:	853a                	mv	a0,a4
   18f5c:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   18f60:	e406                	sd	ra,8(sp)
   18f62:	4a6020ef          	jal	1b408 <_write>
   18f66:	57fd                	li	a5,-1
   18f68:	00f50663          	beq	a0,a5,18f74 <_write_r+0x26>
   18f6c:	60a2                	ld	ra,8(sp)
   18f6e:	6402                	ld	s0,0(sp)
   18f70:	0141                	add	sp,sp,16
   18f72:	8082                	ret
   18f74:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   18f78:	dbf5                	beqz	a5,18f6c <_write_r+0x1e>
   18f7a:	60a2                	ld	ra,8(sp)
   18f7c:	c01c                	sw	a5,0(s0)
   18f7e:	6402                	ld	s0,0(sp)
   18f80:	0141                	add	sp,sp,16
   18f82:	8082                	ret

0000000000018f84 <__register_exitproc>:
   18f84:	7481b703          	ld	a4,1864(gp) # 1fab8 <_global_impure_ptr>
   18f88:	1f873783          	ld	a5,504(a4)
   18f8c:	c3b1                	beqz	a5,18fd0 <__register_exitproc+0x4c>
   18f8e:	4798                	lw	a4,8(a5)
   18f90:	487d                	li	a6,31
   18f92:	06e84263          	blt	a6,a4,18ff6 <__register_exitproc+0x72>
   18f96:	c505                	beqz	a0,18fbe <__register_exitproc+0x3a>
   18f98:	00371813          	sll	a6,a4,0x3
   18f9c:	983e                	add	a6,a6,a5
   18f9e:	10c83823          	sd	a2,272(a6)
   18fa2:	3107a883          	lw	a7,784(a5)
   18fa6:	4605                	li	a2,1
   18fa8:	00e6163b          	sllw	a2,a2,a4
   18fac:	00c8e8b3          	or	a7,a7,a2
   18fb0:	3117a823          	sw	a7,784(a5)
   18fb4:	20d83823          	sd	a3,528(a6)
   18fb8:	4689                	li	a3,2
   18fba:	02d50063          	beq	a0,a3,18fda <__register_exitproc+0x56>
   18fbe:	00270693          	add	a3,a4,2
   18fc2:	068e                	sll	a3,a3,0x3
   18fc4:	2705                	addw	a4,a4,1
   18fc6:	c798                	sw	a4,8(a5)
   18fc8:	97b6                	add	a5,a5,a3
   18fca:	e38c                	sd	a1,0(a5)
   18fcc:	4501                	li	a0,0
   18fce:	8082                	ret
   18fd0:	20070793          	add	a5,a4,512
   18fd4:	1ef73c23          	sd	a5,504(a4)
   18fd8:	bf5d                	j	18f8e <__register_exitproc+0xa>
   18fda:	3147a683          	lw	a3,788(a5)
   18fde:	4501                	li	a0,0
   18fe0:	8ed1                	or	a3,a3,a2
   18fe2:	30d7aa23          	sw	a3,788(a5)
   18fe6:	00270693          	add	a3,a4,2
   18fea:	068e                	sll	a3,a3,0x3
   18fec:	2705                	addw	a4,a4,1
   18fee:	c798                	sw	a4,8(a5)
   18ff0:	97b6                	add	a5,a5,a3
   18ff2:	e38c                	sd	a1,0(a5)
   18ff4:	8082                	ret
   18ff6:	557d                	li	a0,-1
   18ff8:	8082                	ret

0000000000018ffa <__assert_func>:
   18ffa:	1141                	add	sp,sp,-16
   18ffc:	87b6                	mv	a5,a3
   18ffe:	7581b703          	ld	a4,1880(gp) # 1fac8 <_impure_ptr>
   19002:	8832                	mv	a6,a2
   19004:	e406                	sd	ra,8(sp)
   19006:	01873883          	ld	a7,24(a4)
   1900a:	863e                	mv	a2,a5
   1900c:	86aa                	mv	a3,a0
   1900e:	872e                	mv	a4,a1
   19010:	00004797          	auipc	a5,0x4
   19014:	56878793          	add	a5,a5,1384 # 1d578 <blanks.1+0x10>
   19018:	00080b63          	beqz	a6,1902e <__assert_func+0x34>
   1901c:	00004597          	auipc	a1,0x4
   19020:	56c58593          	add	a1,a1,1388 # 1d588 <blanks.1+0x20>
   19024:	8546                	mv	a0,a7
   19026:	1d8000ef          	jal	191fe <fiprintf>
   1902a:	703010ef          	jal	1af2c <abort>
   1902e:	00004797          	auipc	a5,0x4
   19032:	a7278793          	add	a5,a5,-1422 # 1caa0 <__clzdi2+0x82>
   19036:	883e                	mv	a6,a5
   19038:	b7d5                	j	1901c <__assert_func+0x22>

000000000001903a <__assert>:
   1903a:	1141                	add	sp,sp,-16
   1903c:	86b2                	mv	a3,a2
   1903e:	4601                	li	a2,0
   19040:	e406                	sd	ra,8(sp)
   19042:	fb9ff0ef          	jal	18ffa <__assert_func>

0000000000019046 <_calloc_r>:
   19046:	02c5b7b3          	mulhu	a5,a1,a2
   1904a:	1141                	add	sp,sp,-16
   1904c:	e406                	sd	ra,8(sp)
   1904e:	e022                	sd	s0,0(sp)
   19050:	02c585b3          	mul	a1,a1,a2
   19054:	efb5                	bnez	a5,190d0 <_calloc_r+0x8a>
   19056:	d5bfb0ef          	jal	14db0 <_malloc_r>
   1905a:	842a                	mv	s0,a0
   1905c:	cd35                	beqz	a0,190d8 <_calloc_r+0x92>
   1905e:	ff853603          	ld	a2,-8(a0)
   19062:	04800713          	li	a4,72
   19066:	9a71                	and	a2,a2,-4
   19068:	1661                	add	a2,a2,-8
   1906a:	04c76263          	bltu	a4,a2,190ae <_calloc_r+0x68>
   1906e:	02700693          	li	a3,39
   19072:	87aa                	mv	a5,a0
   19074:	02c6f263          	bgeu	a3,a2,19098 <_calloc_r+0x52>
   19078:	00053023          	sd	zero,0(a0)
   1907c:	00053423          	sd	zero,8(a0)
   19080:	03700793          	li	a5,55
   19084:	02c7fd63          	bgeu	a5,a2,190be <_calloc_r+0x78>
   19088:	00053823          	sd	zero,16(a0)
   1908c:	00053c23          	sd	zero,24(a0)
   19090:	02050793          	add	a5,a0,32
   19094:	04e60863          	beq	a2,a4,190e4 <_calloc_r+0x9e>
   19098:	0007b023          	sd	zero,0(a5)
   1909c:	0007b423          	sd	zero,8(a5)
   190a0:	0007b823          	sd	zero,16(a5)
   190a4:	60a2                	ld	ra,8(sp)
   190a6:	8522                	mv	a0,s0
   190a8:	6402                	ld	s0,0(sp)
   190aa:	0141                	add	sp,sp,16
   190ac:	8082                	ret
   190ae:	4581                	li	a1,0
   190b0:	9aef70ef          	jal	1025e <memset>
   190b4:	60a2                	ld	ra,8(sp)
   190b6:	8522                	mv	a0,s0
   190b8:	6402                	ld	s0,0(sp)
   190ba:	0141                	add	sp,sp,16
   190bc:	8082                	ret
   190be:	01050793          	add	a5,a0,16
   190c2:	0007b023          	sd	zero,0(a5)
   190c6:	0007b423          	sd	zero,8(a5)
   190ca:	0007b823          	sd	zero,16(a5)
   190ce:	bfd9                	j	190a4 <_calloc_r+0x5e>
   190d0:	052000ef          	jal	19122 <__errno>
   190d4:	47b1                	li	a5,12
   190d6:	c11c                	sw	a5,0(a0)
   190d8:	4401                	li	s0,0
   190da:	60a2                	ld	ra,8(sp)
   190dc:	8522                	mv	a0,s0
   190de:	6402                	ld	s0,0(sp)
   190e0:	0141                	add	sp,sp,16
   190e2:	8082                	ret
   190e4:	02053023          	sd	zero,32(a0)
   190e8:	03050793          	add	a5,a0,48
   190ec:	02053423          	sd	zero,40(a0)
   190f0:	b765                	j	19098 <_calloc_r+0x52>

00000000000190f2 <_close_r>:
   190f2:	1141                	add	sp,sp,-16
   190f4:	e022                	sd	s0,0(sp)
   190f6:	842a                	mv	s0,a0
   190f8:	852e                	mv	a0,a1
   190fa:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   190fe:	e406                	sd	ra,8(sp)
   19100:	194020ef          	jal	1b294 <_close>
   19104:	57fd                	li	a5,-1
   19106:	00f50663          	beq	a0,a5,19112 <_close_r+0x20>
   1910a:	60a2                	ld	ra,8(sp)
   1910c:	6402                	ld	s0,0(sp)
   1910e:	0141                	add	sp,sp,16
   19110:	8082                	ret
   19112:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   19116:	dbf5                	beqz	a5,1910a <_close_r+0x18>
   19118:	60a2                	ld	ra,8(sp)
   1911a:	c01c                	sw	a5,0(s0)
   1911c:	6402                	ld	s0,0(sp)
   1911e:	0141                	add	sp,sp,16
   19120:	8082                	ret

0000000000019122 <__errno>:
   19122:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   19126:	8082                	ret

0000000000019128 <_fclose_r>:
   19128:	1101                	add	sp,sp,-32
   1912a:	ec06                	sd	ra,24(sp)
   1912c:	e822                	sd	s0,16(sp)
   1912e:	e426                	sd	s1,8(sp)
   19130:	e04a                	sd	s2,0(sp)
   19132:	c989                	beqz	a1,19144 <_fclose_r+0x1c>
   19134:	842e                	mv	s0,a1
   19136:	84aa                	mv	s1,a0
   19138:	c119                	beqz	a0,1913e <_fclose_r+0x16>
   1913a:	493c                	lw	a5,80(a0)
   1913c:	cfa5                	beqz	a5,191b4 <_fclose_r+0x8c>
   1913e:	01041783          	lh	a5,16(s0)
   19142:	eb89                	bnez	a5,19154 <_fclose_r+0x2c>
   19144:	60e2                	ld	ra,24(sp)
   19146:	6442                	ld	s0,16(sp)
   19148:	4901                	li	s2,0
   1914a:	64a2                	ld	s1,8(sp)
   1914c:	854a                	mv	a0,s2
   1914e:	6902                	ld	s2,0(sp)
   19150:	6105                	add	sp,sp,32
   19152:	8082                	ret
   19154:	85a2                	mv	a1,s0
   19156:	8526                	mv	a0,s1
   19158:	876f90ef          	jal	121ce <__sflush_r>
   1915c:	683c                	ld	a5,80(s0)
   1915e:	892a                	mv	s2,a0
   19160:	c791                	beqz	a5,1916c <_fclose_r+0x44>
   19162:	780c                	ld	a1,48(s0)
   19164:	8526                	mv	a0,s1
   19166:	9782                	jalr	a5
   19168:	04054c63          	bltz	a0,191c0 <_fclose_r+0x98>
   1916c:	01045783          	lhu	a5,16(s0)
   19170:	0807f793          	and	a5,a5,128
   19174:	efa1                	bnez	a5,191cc <_fclose_r+0xa4>
   19176:	6c2c                	ld	a1,88(s0)
   19178:	c991                	beqz	a1,1918c <_fclose_r+0x64>
   1917a:	07440793          	add	a5,s0,116
   1917e:	00f58563          	beq	a1,a5,19188 <_fclose_r+0x60>
   19182:	8526                	mv	a0,s1
   19184:	de6f90ef          	jal	1276a <_free_r>
   19188:	04043c23          	sd	zero,88(s0)
   1918c:	7c2c                	ld	a1,120(s0)
   1918e:	c591                	beqz	a1,1919a <_fclose_r+0x72>
   19190:	8526                	mv	a0,s1
   19192:	dd8f90ef          	jal	1276a <_free_r>
   19196:	06043c23          	sd	zero,120(s0)
   1919a:	ca0f90ef          	jal	1263a <__sfp_lock_acquire>
   1919e:	00041823          	sh	zero,16(s0)
   191a2:	c9af90ef          	jal	1263c <__sfp_lock_release>
   191a6:	60e2                	ld	ra,24(sp)
   191a8:	6442                	ld	s0,16(sp)
   191aa:	64a2                	ld	s1,8(sp)
   191ac:	854a                	mv	a0,s2
   191ae:	6902                	ld	s2,0(sp)
   191b0:	6105                	add	sp,sp,32
   191b2:	8082                	ret
   191b4:	c7ef90ef          	jal	12632 <__sinit>
   191b8:	01041783          	lh	a5,16(s0)
   191bc:	d7c1                	beqz	a5,19144 <_fclose_r+0x1c>
   191be:	bf59                	j	19154 <_fclose_r+0x2c>
   191c0:	01045783          	lhu	a5,16(s0)
   191c4:	597d                	li	s2,-1
   191c6:	0807f793          	and	a5,a5,128
   191ca:	d7d5                	beqz	a5,19176 <_fclose_r+0x4e>
   191cc:	6c0c                	ld	a1,24(s0)
   191ce:	8526                	mv	a0,s1
   191d0:	d9af90ef          	jal	1276a <_free_r>
   191d4:	b74d                	j	19176 <_fclose_r+0x4e>

00000000000191d6 <fclose>:
   191d6:	85aa                	mv	a1,a0
   191d8:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   191dc:	b7b1                	j	19128 <_fclose_r>

00000000000191de <_fiprintf_r>:
   191de:	715d                	add	sp,sp,-80
   191e0:	02810313          	add	t1,sp,40
   191e4:	f436                	sd	a3,40(sp)
   191e6:	869a                	mv	a3,t1
   191e8:	ec06                	sd	ra,24(sp)
   191ea:	f83a                	sd	a4,48(sp)
   191ec:	fc3e                	sd	a5,56(sp)
   191ee:	e0c2                	sd	a6,64(sp)
   191f0:	e4c6                	sd	a7,72(sp)
   191f2:	e41a                	sd	t1,8(sp)
   191f4:	f95fe0ef          	jal	18188 <_vfiprintf_r>
   191f8:	60e2                	ld	ra,24(sp)
   191fa:	6161                	add	sp,sp,80
   191fc:	8082                	ret

00000000000191fe <fiprintf>:
   191fe:	715d                	add	sp,sp,-80
   19200:	02010313          	add	t1,sp,32
   19204:	f032                	sd	a2,32(sp)
   19206:	f436                	sd	a3,40(sp)
   19208:	862e                	mv	a2,a1
   1920a:	869a                	mv	a3,t1
   1920c:	85aa                	mv	a1,a0
   1920e:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   19212:	ec06                	sd	ra,24(sp)
   19214:	f83a                	sd	a4,48(sp)
   19216:	fc3e                	sd	a5,56(sp)
   19218:	e0c2                	sd	a6,64(sp)
   1921a:	e4c6                	sd	a7,72(sp)
   1921c:	e41a                	sd	t1,8(sp)
   1921e:	f6bfe0ef          	jal	18188 <_vfiprintf_r>
   19222:	60e2                	ld	ra,24(sp)
   19224:	6161                	add	sp,sp,80
   19226:	8082                	ret

0000000000019228 <__fputwc>:
   19228:	7179                	add	sp,sp,-48
   1922a:	f022                	sd	s0,32(sp)
   1922c:	ec26                	sd	s1,24(sp)
   1922e:	e84a                	sd	s2,16(sp)
   19230:	f406                	sd	ra,40(sp)
   19232:	892a                	mv	s2,a0
   19234:	84ae                	mv	s1,a1
   19236:	8432                	mv	s0,a2
   19238:	4f0000ef          	jal	19728 <__locale_mb_cur_max>
   1923c:	4785                	li	a5,1
   1923e:	00f51b63          	bne	a0,a5,19254 <__fputwc+0x2c>
   19242:	fff4879b          	addw	a5,s1,-1
   19246:	0fe00713          	li	a4,254
   1924a:	00f76563          	bltu	a4,a5,19254 <__fputwc+0x2c>
   1924e:	00910423          	sb	s1,8(sp)
   19252:	a821                	j	1926a <__fputwc+0x42>
   19254:	0a440693          	add	a3,s0,164
   19258:	8626                	mv	a2,s1
   1925a:	002c                	add	a1,sp,8
   1925c:	854a                	mv	a0,s2
   1925e:	40f010ef          	jal	1ae6c <_wcrtomb_r>
   19262:	57fd                	li	a5,-1
   19264:	04f50d63          	beq	a0,a5,192be <__fputwc+0x96>
   19268:	c50d                	beqz	a0,19292 <__fputwc+0x6a>
   1926a:	445c                	lw	a5,12(s0)
   1926c:	00814583          	lbu	a1,8(sp)
   19270:	fff7871b          	addw	a4,a5,-1
   19274:	c458                	sw	a4,12(s0)
   19276:	00075863          	bgez	a4,19286 <__fputwc+0x5e>
   1927a:	541c                	lw	a5,40(s0)
   1927c:	02f74363          	blt	a4,a5,192a2 <__fputwc+0x7a>
   19280:	47a9                	li	a5,10
   19282:	02f58063          	beq	a1,a5,192a2 <__fputwc+0x7a>
   19286:	601c                	ld	a5,0(s0)
   19288:	00178713          	add	a4,a5,1
   1928c:	e018                	sd	a4,0(s0)
   1928e:	00b78023          	sb	a1,0(a5)
   19292:	70a2                	ld	ra,40(sp)
   19294:	7402                	ld	s0,32(sp)
   19296:	6942                	ld	s2,16(sp)
   19298:	0004851b          	sext.w	a0,s1
   1929c:	64e2                	ld	s1,24(sp)
   1929e:	6145                	add	sp,sp,48
   192a0:	8082                	ret
   192a2:	8622                	mv	a2,s0
   192a4:	854a                	mv	a0,s2
   192a6:	2c9010ef          	jal	1ad6e <__swbuf_r>
   192aa:	57fd                	li	a5,-1
   192ac:	fef513e3          	bne	a0,a5,19292 <__fputwc+0x6a>
   192b0:	557d                	li	a0,-1
   192b2:	70a2                	ld	ra,40(sp)
   192b4:	7402                	ld	s0,32(sp)
   192b6:	64e2                	ld	s1,24(sp)
   192b8:	6942                	ld	s2,16(sp)
   192ba:	6145                	add	sp,sp,48
   192bc:	8082                	ret
   192be:	01045783          	lhu	a5,16(s0)
   192c2:	557d                	li	a0,-1
   192c4:	0407e793          	or	a5,a5,64
   192c8:	00f41823          	sh	a5,16(s0)
   192cc:	b7dd                	j	192b2 <__fputwc+0x8a>

00000000000192ce <_fputwc_r>:
   192ce:	01061783          	lh	a5,16(a2)
   192d2:	03279713          	sll	a4,a5,0x32
   192d6:	00074c63          	bltz	a4,192ee <_fputwc_r+0x20>
   192da:	0ac62703          	lw	a4,172(a2)
   192de:	6689                	lui	a3,0x2
   192e0:	8fd5                	or	a5,a5,a3
   192e2:	6689                	lui	a3,0x2
   192e4:	8f55                	or	a4,a4,a3
   192e6:	00f61823          	sh	a5,16(a2)
   192ea:	0ae62623          	sw	a4,172(a2)
   192ee:	bf2d                	j	19228 <__fputwc>

00000000000192f0 <fputwc>:
   192f0:	1101                	add	sp,sp,-32
   192f2:	e822                	sd	s0,16(sp)
   192f4:	ec06                	sd	ra,24(sp)
   192f6:	7581b403          	ld	s0,1880(gp) # 1fac8 <_impure_ptr>
   192fa:	862e                	mv	a2,a1
   192fc:	85aa                	mv	a1,a0
   192fe:	c019                	beqz	s0,19304 <fputwc+0x14>
   19300:	483c                	lw	a5,80(s0)
   19302:	c795                	beqz	a5,1932e <fputwc+0x3e>
   19304:	01061783          	lh	a5,16(a2)
   19308:	03279713          	sll	a4,a5,0x32
   1930c:	00074c63          	bltz	a4,19324 <fputwc+0x34>
   19310:	0ac62703          	lw	a4,172(a2)
   19314:	6689                	lui	a3,0x2
   19316:	8fd5                	or	a5,a5,a3
   19318:	6689                	lui	a3,0x2
   1931a:	8f55                	or	a4,a4,a3
   1931c:	00f61823          	sh	a5,16(a2)
   19320:	0ae62623          	sw	a4,172(a2)
   19324:	8522                	mv	a0,s0
   19326:	6442                	ld	s0,16(sp)
   19328:	60e2                	ld	ra,24(sp)
   1932a:	6105                	add	sp,sp,32
   1932c:	bdf5                	j	19228 <__fputwc>
   1932e:	e02a                	sd	a0,0(sp)
   19330:	8522                	mv	a0,s0
   19332:	e432                	sd	a2,8(sp)
   19334:	afef90ef          	jal	12632 <__sinit>
   19338:	6622                	ld	a2,8(sp)
   1933a:	6582                	ld	a1,0(sp)
   1933c:	b7e1                	j	19304 <fputwc+0x14>

000000000001933e <_fstat_r>:
   1933e:	1141                	add	sp,sp,-16
   19340:	872e                	mv	a4,a1
   19342:	e022                	sd	s0,0(sp)
   19344:	85b2                	mv	a1,a2
   19346:	842a                	mv	s0,a0
   19348:	853a                	mv	a0,a4
   1934a:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   1934e:	e406                	sd	ra,8(sp)
   19350:	793010ef          	jal	1b2e2 <_fstat>
   19354:	57fd                	li	a5,-1
   19356:	00f50663          	beq	a0,a5,19362 <_fstat_r+0x24>
   1935a:	60a2                	ld	ra,8(sp)
   1935c:	6402                	ld	s0,0(sp)
   1935e:	0141                	add	sp,sp,16
   19360:	8082                	ret
   19362:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   19366:	dbf5                	beqz	a5,1935a <_fstat_r+0x1c>
   19368:	60a2                	ld	ra,8(sp)
   1936a:	c01c                	sw	a5,0(s0)
   1936c:	6402                	ld	s0,0(sp)
   1936e:	0141                	add	sp,sp,16
   19370:	8082                	ret

0000000000019372 <__sfvwrite_r>:
   19372:	6a1c                	ld	a5,16(a2)
   19374:	1a078a63          	beqz	a5,19528 <__sfvwrite_r+0x1b6>
   19378:	01059703          	lh	a4,16(a1)
   1937c:	711d                	add	sp,sp,-96
   1937e:	e8a2                	sd	s0,80(sp)
   19380:	f852                	sd	s4,48(sp)
   19382:	f05a                	sd	s6,32(sp)
   19384:	ec86                	sd	ra,88(sp)
   19386:	e4a6                	sd	s1,72(sp)
   19388:	e0ca                	sd	s2,64(sp)
   1938a:	fc4e                	sd	s3,56(sp)
   1938c:	f456                	sd	s5,40(sp)
   1938e:	ec5e                	sd	s7,24(sp)
   19390:	e862                	sd	s8,16(sp)
   19392:	e466                	sd	s9,8(sp)
   19394:	00877793          	and	a5,a4,8
   19398:	8b32                	mv	s6,a2
   1939a:	8a2a                	mv	s4,a0
   1939c:	842e                	mv	s0,a1
   1939e:	c3b5                	beqz	a5,19402 <__sfvwrite_r+0x90>
   193a0:	6d9c                	ld	a5,24(a1)
   193a2:	c3a5                	beqz	a5,19402 <__sfvwrite_r+0x90>
   193a4:	00277793          	and	a5,a4,2
   193a8:	000b3483          	ld	s1,0(s6)
   193ac:	cba5                	beqz	a5,1941c <__sfvwrite_r+0xaa>
   193ae:	603c                	ld	a5,64(s0)
   193b0:	780c                	ld	a1,48(s0)
   193b2:	80000ab7          	lui	s5,0x80000
   193b6:	4981                	li	s3,0
   193b8:	4901                	li	s2,0
   193ba:	c00aca93          	xor	s5,s5,-1024
   193be:	864e                	mv	a2,s3
   193c0:	8552                	mv	a0,s4
   193c2:	02090a63          	beqz	s2,193f6 <__sfvwrite_r+0x84>
   193c6:	86ca                	mv	a3,s2
   193c8:	012af363          	bgeu	s5,s2,193ce <__sfvwrite_r+0x5c>
   193cc:	86d6                	mv	a3,s5
   193ce:	2681                	sext.w	a3,a3
   193d0:	9782                	jalr	a5
   193d2:	14a05363          	blez	a0,19518 <__sfvwrite_r+0x1a6>
   193d6:	010b3783          	ld	a5,16(s6)
   193da:	99aa                	add	s3,s3,a0
   193dc:	40a90933          	sub	s2,s2,a0
   193e0:	8f89                	sub	a5,a5,a0
   193e2:	00fb3823          	sd	a5,16(s6)
   193e6:	10078663          	beqz	a5,194f2 <__sfvwrite_r+0x180>
   193ea:	603c                	ld	a5,64(s0)
   193ec:	780c                	ld	a1,48(s0)
   193ee:	864e                	mv	a2,s3
   193f0:	8552                	mv	a0,s4
   193f2:	fc091ae3          	bnez	s2,193c6 <__sfvwrite_r+0x54>
   193f6:	0004b983          	ld	s3,0(s1)
   193fa:	0084b903          	ld	s2,8(s1)
   193fe:	04c1                	add	s1,s1,16
   19400:	bf7d                	j	193be <__sfvwrite_r+0x4c>
   19402:	85a2                	mv	a1,s0
   19404:	8552                	mv	a0,s4
   19406:	c1ff80ef          	jal	12024 <__swsetup_r>
   1940a:	10051d63          	bnez	a0,19524 <__sfvwrite_r+0x1b2>
   1940e:	01041703          	lh	a4,16(s0)
   19412:	000b3483          	ld	s1,0(s6)
   19416:	00277793          	and	a5,a4,2
   1941a:	fbd1                	bnez	a5,193ae <__sfvwrite_r+0x3c>
   1941c:	00177793          	and	a5,a4,1
   19420:	eba5                	bnez	a5,19490 <__sfvwrite_r+0x11e>
   19422:	00c42b83          	lw	s7,12(s0)
   19426:	601c                	ld	a5,0(s0)
   19428:	80000ab7          	lui	s5,0x80000
   1942c:	4c01                	li	s8,0
   1942e:	4901                	li	s2,0
   19430:	fffaca93          	not	s5,s5
   19434:	853e                	mv	a0,a5
   19436:	04090763          	beqz	s2,19484 <__sfvwrite_r+0x112>
   1943a:	20077693          	and	a3,a4,512
   1943e:	12068963          	beqz	a3,19570 <__sfvwrite_r+0x1fe>
   19442:	19797863          	bgeu	s2,s7,195d2 <__sfvwrite_r+0x260>
   19446:	8cca                	mv	s9,s2
   19448:	8bca                	mv	s7,s2
   1944a:	865e                	mv	a2,s7
   1944c:	85e2                	mv	a1,s8
   1944e:	4fa000ef          	jal	19948 <memmove>
   19452:	4458                	lw	a4,12(s0)
   19454:	601c                	ld	a5,0(s0)
   19456:	89ca                	mv	s3,s2
   19458:	4197073b          	subw	a4,a4,s9
   1945c:	97de                	add	a5,a5,s7
   1945e:	c458                	sw	a4,12(s0)
   19460:	e01c                	sd	a5,0(s0)
   19462:	4901                	li	s2,0
   19464:	010b3783          	ld	a5,16(s6)
   19468:	9c4e                	add	s8,s8,s3
   1946a:	413787b3          	sub	a5,a5,s3
   1946e:	00fb3823          	sd	a5,16(s6)
   19472:	c3c1                	beqz	a5,194f2 <__sfvwrite_r+0x180>
   19474:	601c                	ld	a5,0(s0)
   19476:	01041703          	lh	a4,16(s0)
   1947a:	00c42b83          	lw	s7,12(s0)
   1947e:	853e                	mv	a0,a5
   19480:	fa091de3          	bnez	s2,1943a <__sfvwrite_r+0xc8>
   19484:	0004bc03          	ld	s8,0(s1)
   19488:	0084b903          	ld	s2,8(s1)
   1948c:	04c1                	add	s1,s1,16
   1948e:	b75d                	j	19434 <__sfvwrite_r+0xc2>
   19490:	4981                	li	s3,0
   19492:	4501                	li	a0,0
   19494:	4c81                	li	s9,0
   19496:	4c01                	li	s8,0
   19498:	080c0a63          	beqz	s8,1952c <__sfvwrite_r+0x1ba>
   1949c:	c145                	beqz	a0,1953c <__sfvwrite_r+0x1ca>
   1949e:	8bce                	mv	s7,s3
   194a0:	013c7363          	bgeu	s8,s3,194a6 <__sfvwrite_r+0x134>
   194a4:	8be2                	mv	s7,s8
   194a6:	6008                	ld	a0,0(s0)
   194a8:	6c18                	ld	a4,24(s0)
   194aa:	445c                	lw	a5,12(s0)
   194ac:	5014                	lw	a3,32(s0)
   194ae:	895e                	mv	s2,s7
   194b0:	00a77663          	bgeu	a4,a0,194bc <__sfvwrite_r+0x14a>
   194b4:	00d78abb          	addw	s5,a5,a3
   194b8:	097acd63          	blt	s5,s7,19552 <__sfvwrite_r+0x1e0>
   194bc:	18dbc763          	blt	s7,a3,1964a <__sfvwrite_r+0x2d8>
   194c0:	603c                	ld	a5,64(s0)
   194c2:	780c                	ld	a1,48(s0)
   194c4:	8666                	mv	a2,s9
   194c6:	8552                	mv	a0,s4
   194c8:	9782                	jalr	a5
   194ca:	892a                	mv	s2,a0
   194cc:	04a05663          	blez	a0,19518 <__sfvwrite_r+0x1a6>
   194d0:	0005079b          	sext.w	a5,a0
   194d4:	40f989bb          	subw	s3,s3,a5
   194d8:	4505                	li	a0,1
   194da:	02098a63          	beqz	s3,1950e <__sfvwrite_r+0x19c>
   194de:	010b3783          	ld	a5,16(s6)
   194e2:	9cca                	add	s9,s9,s2
   194e4:	412c0c33          	sub	s8,s8,s2
   194e8:	412787b3          	sub	a5,a5,s2
   194ec:	00fb3823          	sd	a5,16(s6)
   194f0:	f7c5                	bnez	a5,19498 <__sfvwrite_r+0x126>
   194f2:	4501                	li	a0,0
   194f4:	60e6                	ld	ra,88(sp)
   194f6:	6446                	ld	s0,80(sp)
   194f8:	64a6                	ld	s1,72(sp)
   194fa:	6906                	ld	s2,64(sp)
   194fc:	79e2                	ld	s3,56(sp)
   194fe:	7a42                	ld	s4,48(sp)
   19500:	7aa2                	ld	s5,40(sp)
   19502:	7b02                	ld	s6,32(sp)
   19504:	6be2                	ld	s7,24(sp)
   19506:	6c42                	ld	s8,16(sp)
   19508:	6ca2                	ld	s9,8(sp)
   1950a:	6125                	add	sp,sp,96
   1950c:	8082                	ret
   1950e:	85a2                	mv	a1,s0
   19510:	8552                	mv	a0,s4
   19512:	e3ff80ef          	jal	12350 <_fflush_r>
   19516:	d561                	beqz	a0,194de <__sfvwrite_r+0x16c>
   19518:	01041783          	lh	a5,16(s0)
   1951c:	0407e793          	or	a5,a5,64
   19520:	00f41823          	sh	a5,16(s0)
   19524:	557d                	li	a0,-1
   19526:	b7f9                	j	194f4 <__sfvwrite_r+0x182>
   19528:	4501                	li	a0,0
   1952a:	8082                	ret
   1952c:	0084bc03          	ld	s8,8(s1)
   19530:	87a6                	mv	a5,s1
   19532:	04c1                	add	s1,s1,16
   19534:	fe0c0ce3          	beqz	s8,1952c <__sfvwrite_r+0x1ba>
   19538:	0007bc83          	ld	s9,0(a5)
   1953c:	8662                	mv	a2,s8
   1953e:	45a9                	li	a1,10
   19540:	8566                	mv	a0,s9
   19542:	e65fb0ef          	jal	153a6 <memchr>
   19546:	14050463          	beqz	a0,1968e <__sfvwrite_r+0x31c>
   1954a:	0505                	add	a0,a0,1
   1954c:	419509bb          	subw	s3,a0,s9
   19550:	b7b9                	j	1949e <__sfvwrite_r+0x12c>
   19552:	85e6                	mv	a1,s9
   19554:	8656                	mv	a2,s5
   19556:	3f2000ef          	jal	19948 <memmove>
   1955a:	601c                	ld	a5,0(s0)
   1955c:	85a2                	mv	a1,s0
   1955e:	8552                	mv	a0,s4
   19560:	97d6                	add	a5,a5,s5
   19562:	e01c                	sd	a5,0(s0)
   19564:	dedf80ef          	jal	12350 <_fflush_r>
   19568:	f945                	bnez	a0,19518 <__sfvwrite_r+0x1a6>
   1956a:	87d6                	mv	a5,s5
   1956c:	8956                	mv	s2,s5
   1956e:	b79d                	j	194d4 <__sfvwrite_r+0x162>
   19570:	6c18                	ld	a4,24(s0)
   19572:	02f76763          	bltu	a4,a5,195a0 <__sfvwrite_r+0x22e>
   19576:	5018                	lw	a4,32(s0)
   19578:	02e96463          	bltu	s2,a4,195a0 <__sfvwrite_r+0x22e>
   1957c:	86ca                	mv	a3,s2
   1957e:	012af363          	bgeu	s5,s2,19584 <__sfvwrite_r+0x212>
   19582:	86d6                	mv	a3,s5
   19584:	02e6e73b          	remw	a4,a3,a4
   19588:	603c                	ld	a5,64(s0)
   1958a:	780c                	ld	a1,48(s0)
   1958c:	8662                	mv	a2,s8
   1958e:	8552                	mv	a0,s4
   19590:	9e99                	subw	a3,a3,a4
   19592:	9782                	jalr	a5
   19594:	89aa                	mv	s3,a0
   19596:	f8a051e3          	blez	a0,19518 <__sfvwrite_r+0x1a6>
   1959a:	41390933          	sub	s2,s2,s3
   1959e:	b5d9                	j	19464 <__sfvwrite_r+0xf2>
   195a0:	89de                	mv	s3,s7
   195a2:	01797363          	bgeu	s2,s7,195a8 <__sfvwrite_r+0x236>
   195a6:	89ca                	mv	s3,s2
   195a8:	853e                	mv	a0,a5
   195aa:	864e                	mv	a2,s3
   195ac:	85e2                	mv	a1,s8
   195ae:	39a000ef          	jal	19948 <memmove>
   195b2:	4458                	lw	a4,12(s0)
   195b4:	601c                	ld	a5,0(s0)
   195b6:	413706bb          	subw	a3,a4,s3
   195ba:	97ce                	add	a5,a5,s3
   195bc:	c454                	sw	a3,12(s0)
   195be:	e01c                	sd	a5,0(s0)
   195c0:	fee9                	bnez	a3,1959a <__sfvwrite_r+0x228>
   195c2:	85a2                	mv	a1,s0
   195c4:	8552                	mv	a0,s4
   195c6:	d8bf80ef          	jal	12350 <_fflush_r>
   195ca:	f539                	bnez	a0,19518 <__sfvwrite_r+0x1a6>
   195cc:	41390933          	sub	s2,s2,s3
   195d0:	bd51                	j	19464 <__sfvwrite_r+0xf2>
   195d2:	48077693          	and	a3,a4,1152
   195d6:	cac1                	beqz	a3,19666 <__sfvwrite_r+0x2f4>
   195d8:	5010                	lw	a2,32(s0)
   195da:	6c0c                	ld	a1,24(s0)
   195dc:	0016169b          	sllw	a3,a2,0x1
   195e0:	9eb1                	addw	a3,a3,a2
   195e2:	8f8d                	sub	a5,a5,a1
   195e4:	01f6d99b          	srlw	s3,a3,0x1f
   195e8:	00078b9b          	sext.w	s7,a5
   195ec:	00d989bb          	addw	s3,s3,a3
   195f0:	001b8693          	add	a3,s7,1
   195f4:	4019d99b          	sraw	s3,s3,0x1
   195f8:	96ca                	add	a3,a3,s2
   195fa:	00d9f563          	bgeu	s3,a3,19604 <__sfvwrite_r+0x292>
   195fe:	2785                	addw	a5,a5,1
   19600:	012789bb          	addw	s3,a5,s2
   19604:	40077713          	and	a4,a4,1024
   19608:	c32d                	beqz	a4,1966a <__sfvwrite_r+0x2f8>
   1960a:	85ce                	mv	a1,s3
   1960c:	8552                	mv	a0,s4
   1960e:	fa2fb0ef          	jal	14db0 <_malloc_r>
   19612:	8caa                	mv	s9,a0
   19614:	c141                	beqz	a0,19694 <__sfvwrite_r+0x322>
   19616:	6c0c                	ld	a1,24(s0)
   19618:	865e                	mv	a2,s7
   1961a:	1e8000ef          	jal	19802 <memcpy>
   1961e:	01045783          	lhu	a5,16(s0)
   19622:	b7f7f793          	and	a5,a5,-1153
   19626:	0807e793          	or	a5,a5,128
   1962a:	00f41823          	sh	a5,16(s0)
   1962e:	017c8533          	add	a0,s9,s7
   19632:	41798bbb          	subw	s7,s3,s7
   19636:	01943c23          	sd	s9,24(s0)
   1963a:	01742623          	sw	s7,12(s0)
   1963e:	e008                	sd	a0,0(s0)
   19640:	03342023          	sw	s3,32(s0)
   19644:	8cca                	mv	s9,s2
   19646:	8bca                	mv	s7,s2
   19648:	b509                	j	1944a <__sfvwrite_r+0xd8>
   1964a:	865e                	mv	a2,s7
   1964c:	85e6                	mv	a1,s9
   1964e:	2fa000ef          	jal	19948 <memmove>
   19652:	4454                	lw	a3,12(s0)
   19654:	6018                	ld	a4,0(s0)
   19656:	000b879b          	sext.w	a5,s7
   1965a:	417686bb          	subw	a3,a3,s7
   1965e:	975e                	add	a4,a4,s7
   19660:	c454                	sw	a3,12(s0)
   19662:	e018                	sd	a4,0(s0)
   19664:	bd85                	j	194d4 <__sfvwrite_r+0x162>
   19666:	8cde                	mv	s9,s7
   19668:	b3cd                	j	1944a <__sfvwrite_r+0xd8>
   1966a:	864e                	mv	a2,s3
   1966c:	8552                	mv	a0,s4
   1966e:	3e8000ef          	jal	19a56 <_realloc_r>
   19672:	8caa                	mv	s9,a0
   19674:	fd4d                	bnez	a0,1962e <__sfvwrite_r+0x2bc>
   19676:	6c0c                	ld	a1,24(s0)
   19678:	8552                	mv	a0,s4
   1967a:	8f0f90ef          	jal	1276a <_free_r>
   1967e:	01041783          	lh	a5,16(s0)
   19682:	4731                	li	a4,12
   19684:	00ea2023          	sw	a4,0(s4)
   19688:	f7f7f793          	and	a5,a5,-129
   1968c:	bd41                	j	1951c <__sfvwrite_r+0x1aa>
   1968e:	001c099b          	addw	s3,s8,1
   19692:	b531                	j	1949e <__sfvwrite_r+0x12c>
   19694:	4731                	li	a4,12
   19696:	01041783          	lh	a5,16(s0)
   1969a:	00ea2023          	sw	a4,0(s4)
   1969e:	bdbd                	j	1951c <__sfvwrite_r+0x1aa>

00000000000196a0 <_isatty_r>:
   196a0:	1141                	add	sp,sp,-16
   196a2:	e022                	sd	s0,0(sp)
   196a4:	842a                	mv	s0,a0
   196a6:	852e                	mv	a0,a1
   196a8:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   196ac:	e406                	sd	ra,8(sp)
   196ae:	479010ef          	jal	1b326 <_isatty>
   196b2:	57fd                	li	a5,-1
   196b4:	00f50663          	beq	a0,a5,196c0 <_isatty_r+0x20>
   196b8:	60a2                	ld	ra,8(sp)
   196ba:	6402                	ld	s0,0(sp)
   196bc:	0141                	add	sp,sp,16
   196be:	8082                	ret
   196c0:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   196c4:	dbf5                	beqz	a5,196b8 <_isatty_r+0x18>
   196c6:	60a2                	ld	ra,8(sp)
   196c8:	c01c                	sw	a5,0(s0)
   196ca:	6402                	ld	s0,0(sp)
   196cc:	0141                	add	sp,sp,16
   196ce:	8082                	ret

00000000000196d0 <_setlocale_r>:
   196d0:	c60d                	beqz	a2,196fa <_setlocale_r+0x2a>
   196d2:	1141                	add	sp,sp,-16
   196d4:	00004597          	auipc	a1,0x4
   196d8:	eec58593          	add	a1,a1,-276 # 1d5c0 <blanks.1+0x58>
   196dc:	8532                	mv	a0,a2
   196de:	e022                	sd	s0,0(sp)
   196e0:	e406                	sd	ra,8(sp)
   196e2:	8432                	mv	s0,a2
   196e4:	073000ef          	jal	19f56 <strcmp>
   196e8:	ed11                	bnez	a0,19704 <_setlocale_r+0x34>
   196ea:	00004517          	auipc	a0,0x4
   196ee:	ece50513          	add	a0,a0,-306 # 1d5b8 <blanks.1+0x50>
   196f2:	60a2                	ld	ra,8(sp)
   196f4:	6402                	ld	s0,0(sp)
   196f6:	0141                	add	sp,sp,16
   196f8:	8082                	ret
   196fa:	00004517          	auipc	a0,0x4
   196fe:	ebe50513          	add	a0,a0,-322 # 1d5b8 <blanks.1+0x50>
   19702:	8082                	ret
   19704:	00004597          	auipc	a1,0x4
   19708:	eb458593          	add	a1,a1,-332 # 1d5b8 <blanks.1+0x50>
   1970c:	8522                	mv	a0,s0
   1970e:	049000ef          	jal	19f56 <strcmp>
   19712:	dd61                	beqz	a0,196ea <_setlocale_r+0x1a>
   19714:	00003597          	auipc	a1,0x3
   19718:	38c58593          	add	a1,a1,908 # 1caa0 <__clzdi2+0x82>
   1971c:	8522                	mv	a0,s0
   1971e:	039000ef          	jal	19f56 <strcmp>
   19722:	d561                	beqz	a0,196ea <_setlocale_r+0x1a>
   19724:	4501                	li	a0,0
   19726:	b7f1                	j	196f2 <_setlocale_r+0x22>

0000000000019728 <__locale_mb_cur_max>:
   19728:	6c81c503          	lbu	a0,1736(gp) # 1fa38 <__global_locale+0x160>
   1972c:	8082                	ret

000000000001972e <setlocale>:
   1972e:	c58d                	beqz	a1,19758 <setlocale+0x2a>
   19730:	1141                	add	sp,sp,-16
   19732:	e022                	sd	s0,0(sp)
   19734:	842e                	mv	s0,a1
   19736:	8522                	mv	a0,s0
   19738:	00004597          	auipc	a1,0x4
   1973c:	e8858593          	add	a1,a1,-376 # 1d5c0 <blanks.1+0x58>
   19740:	e406                	sd	ra,8(sp)
   19742:	015000ef          	jal	19f56 <strcmp>
   19746:	ed11                	bnez	a0,19762 <setlocale+0x34>
   19748:	00004517          	auipc	a0,0x4
   1974c:	e7050513          	add	a0,a0,-400 # 1d5b8 <blanks.1+0x50>
   19750:	60a2                	ld	ra,8(sp)
   19752:	6402                	ld	s0,0(sp)
   19754:	0141                	add	sp,sp,16
   19756:	8082                	ret
   19758:	00004517          	auipc	a0,0x4
   1975c:	e6050513          	add	a0,a0,-416 # 1d5b8 <blanks.1+0x50>
   19760:	8082                	ret
   19762:	00004597          	auipc	a1,0x4
   19766:	e5658593          	add	a1,a1,-426 # 1d5b8 <blanks.1+0x50>
   1976a:	8522                	mv	a0,s0
   1976c:	7ea000ef          	jal	19f56 <strcmp>
   19770:	dd61                	beqz	a0,19748 <setlocale+0x1a>
   19772:	00003597          	auipc	a1,0x3
   19776:	32e58593          	add	a1,a1,814 # 1caa0 <__clzdi2+0x82>
   1977a:	8522                	mv	a0,s0
   1977c:	7da000ef          	jal	19f56 <strcmp>
   19780:	d561                	beqz	a0,19748 <setlocale+0x1a>
   19782:	4501                	li	a0,0
   19784:	b7f1                	j	19750 <setlocale+0x22>

0000000000019786 <_lseek_r>:
   19786:	1141                	add	sp,sp,-16
   19788:	872e                	mv	a4,a1
   1978a:	e022                	sd	s0,0(sp)
   1978c:	85b2                	mv	a1,a2
   1978e:	842a                	mv	s0,a0
   19790:	8636                	mv	a2,a3
   19792:	853a                	mv	a0,a4
   19794:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   19798:	e406                	sd	ra,8(sp)
   1979a:	3c7010ef          	jal	1b360 <_lseek>
   1979e:	57fd                	li	a5,-1
   197a0:	00f50663          	beq	a0,a5,197ac <_lseek_r+0x26>
   197a4:	60a2                	ld	ra,8(sp)
   197a6:	6402                	ld	s0,0(sp)
   197a8:	0141                	add	sp,sp,16
   197aa:	8082                	ret
   197ac:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   197b0:	dbf5                	beqz	a5,197a4 <_lseek_r+0x1e>
   197b2:	60a2                	ld	ra,8(sp)
   197b4:	c01c                	sw	a5,0(s0)
   197b6:	6402                	ld	s0,0(sp)
   197b8:	0141                	add	sp,sp,16
   197ba:	8082                	ret

00000000000197bc <_mbtowc_r>:
   197bc:	6501b783          	ld	a5,1616(gp) # 1f9c0 <__global_locale+0xe8>
   197c0:	8782                	jr	a5

00000000000197c2 <__ascii_mbtowc>:
   197c2:	c999                	beqz	a1,197d8 <__ascii_mbtowc+0x16>
   197c4:	c61d                	beqz	a2,197f2 <__ascii_mbtowc+0x30>
   197c6:	ca95                	beqz	a3,197fa <__ascii_mbtowc+0x38>
   197c8:	00064783          	lbu	a5,0(a2)
   197cc:	c19c                	sw	a5,0(a1)
   197ce:	00064503          	lbu	a0,0(a2)
   197d2:	00a03533          	snez	a0,a0
   197d6:	8082                	ret
   197d8:	1141                	add	sp,sp,-16
   197da:	006c                	add	a1,sp,12
   197dc:	ce09                	beqz	a2,197f6 <__ascii_mbtowc+0x34>
   197de:	c285                	beqz	a3,197fe <__ascii_mbtowc+0x3c>
   197e0:	00064783          	lbu	a5,0(a2)
   197e4:	c19c                	sw	a5,0(a1)
   197e6:	00064503          	lbu	a0,0(a2)
   197ea:	00a03533          	snez	a0,a0
   197ee:	0141                	add	sp,sp,16
   197f0:	8082                	ret
   197f2:	4501                	li	a0,0
   197f4:	8082                	ret
   197f6:	4501                	li	a0,0
   197f8:	bfdd                	j	197ee <__ascii_mbtowc+0x2c>
   197fa:	5579                	li	a0,-2
   197fc:	8082                	ret
   197fe:	5579                	li	a0,-2
   19800:	b7fd                	j	197ee <__ascii_mbtowc+0x2c>

0000000000019802 <memcpy>:
   19802:	00b547b3          	xor	a5,a0,a1
   19806:	8b9d                	and	a5,a5,7
   19808:	00c508b3          	add	a7,a0,a2
   1980c:	e7b1                	bnez	a5,19858 <memcpy+0x56>
   1980e:	479d                	li	a5,7
   19810:	04c7f463          	bgeu	a5,a2,19858 <memcpy+0x56>
   19814:	00757793          	and	a5,a0,7
   19818:	872a                	mv	a4,a0
   1981a:	ebb9                	bnez	a5,19870 <memcpy+0x6e>
   1981c:	ff88f613          	and	a2,a7,-8
   19820:	40e606b3          	sub	a3,a2,a4
   19824:	04000793          	li	a5,64
   19828:	06d7c863          	blt	a5,a3,19898 <memcpy+0x96>
   1982c:	86ae                	mv	a3,a1
   1982e:	87ba                	mv	a5,a4
   19830:	02c77163          	bgeu	a4,a2,19852 <memcpy+0x50>
   19834:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   19838:	07a1                	add	a5,a5,8
   1983a:	06a1                	add	a3,a3,8
   1983c:	ff07bc23          	sd	a6,-8(a5)
   19840:	fec7eae3          	bltu	a5,a2,19834 <memcpy+0x32>
   19844:	fff60793          	add	a5,a2,-1
   19848:	8f99                	sub	a5,a5,a4
   1984a:	9be1                	and	a5,a5,-8
   1984c:	07a1                	add	a5,a5,8
   1984e:	973e                	add	a4,a4,a5
   19850:	95be                	add	a1,a1,a5
   19852:	01176663          	bltu	a4,a7,1985e <memcpy+0x5c>
   19856:	8082                	ret
   19858:	872a                	mv	a4,a0
   1985a:	03157e63          	bgeu	a0,a7,19896 <memcpy+0x94>
   1985e:	0005c783          	lbu	a5,0(a1)
   19862:	0705                	add	a4,a4,1
   19864:	0585                	add	a1,a1,1
   19866:	fef70fa3          	sb	a5,-1(a4)
   1986a:	fee89ae3          	bne	a7,a4,1985e <memcpy+0x5c>
   1986e:	8082                	ret
   19870:	0005c683          	lbu	a3,0(a1)
   19874:	0705                	add	a4,a4,1
   19876:	00777793          	and	a5,a4,7
   1987a:	fed70fa3          	sb	a3,-1(a4)
   1987e:	0585                	add	a1,a1,1
   19880:	dfd1                	beqz	a5,1981c <memcpy+0x1a>
   19882:	0005c683          	lbu	a3,0(a1)
   19886:	0705                	add	a4,a4,1
   19888:	00777793          	and	a5,a4,7
   1988c:	fed70fa3          	sb	a3,-1(a4)
   19890:	0585                	add	a1,a1,1
   19892:	fff9                	bnez	a5,19870 <memcpy+0x6e>
   19894:	b761                	j	1981c <memcpy+0x1a>
   19896:	8082                	ret
   19898:	1141                	add	sp,sp,-16
   1989a:	e422                	sd	s0,8(sp)
   1989c:	04000413          	li	s0,64
   198a0:	0005b383          	ld	t2,0(a1)
   198a4:	0085b283          	ld	t0,8(a1)
   198a8:	0105bf83          	ld	t6,16(a1)
   198ac:	0185bf03          	ld	t5,24(a1)
   198b0:	0205be83          	ld	t4,32(a1)
   198b4:	0285be03          	ld	t3,40(a1)
   198b8:	0305b303          	ld	t1,48(a1)
   198bc:	0385b803          	ld	a6,56(a1)
   198c0:	61b4                	ld	a3,64(a1)
   198c2:	04870713          	add	a4,a4,72
   198c6:	40e607b3          	sub	a5,a2,a4
   198ca:	fa773c23          	sd	t2,-72(a4)
   198ce:	fc573023          	sd	t0,-64(a4)
   198d2:	fdf73423          	sd	t6,-56(a4)
   198d6:	fde73823          	sd	t5,-48(a4)
   198da:	fdd73c23          	sd	t4,-40(a4)
   198de:	ffc73023          	sd	t3,-32(a4)
   198e2:	fe673423          	sd	t1,-24(a4)
   198e6:	ff073823          	sd	a6,-16(a4)
   198ea:	fed73c23          	sd	a3,-8(a4)
   198ee:	04858593          	add	a1,a1,72
   198f2:	faf447e3          	blt	s0,a5,198a0 <memcpy+0x9e>
   198f6:	86ae                	mv	a3,a1
   198f8:	87ba                	mv	a5,a4
   198fa:	02c77163          	bgeu	a4,a2,1991c <memcpy+0x11a>
   198fe:	0006b803          	ld	a6,0(a3)
   19902:	07a1                	add	a5,a5,8
   19904:	06a1                	add	a3,a3,8
   19906:	ff07bc23          	sd	a6,-8(a5)
   1990a:	fec7eae3          	bltu	a5,a2,198fe <memcpy+0xfc>
   1990e:	fff60793          	add	a5,a2,-1
   19912:	8f99                	sub	a5,a5,a4
   19914:	9be1                	and	a5,a5,-8
   19916:	07a1                	add	a5,a5,8
   19918:	973e                	add	a4,a4,a5
   1991a:	95be                	add	a1,a1,a5
   1991c:	01176563          	bltu	a4,a7,19926 <memcpy+0x124>
   19920:	6422                	ld	s0,8(sp)
   19922:	0141                	add	sp,sp,16
   19924:	8082                	ret
   19926:	0005c783          	lbu	a5,0(a1)
   1992a:	0705                	add	a4,a4,1
   1992c:	0585                	add	a1,a1,1
   1992e:	fef70fa3          	sb	a5,-1(a4)
   19932:	fee887e3          	beq	a7,a4,19920 <memcpy+0x11e>
   19936:	0005c783          	lbu	a5,0(a1)
   1993a:	0705                	add	a4,a4,1
   1993c:	0585                	add	a1,a1,1
   1993e:	fef70fa3          	sb	a5,-1(a4)
   19942:	fee892e3          	bne	a7,a4,19926 <memcpy+0x124>
   19946:	bfe9                	j	19920 <memcpy+0x11e>

0000000000019948 <memmove>:
   19948:	02a5f263          	bgeu	a1,a0,1996c <memmove+0x24>
   1994c:	00c58733          	add	a4,a1,a2
   19950:	00e57e63          	bgeu	a0,a4,1996c <memmove+0x24>
   19954:	00c507b3          	add	a5,a0,a2
   19958:	ca1d                	beqz	a2,1998e <memmove+0x46>
   1995a:	fff74683          	lbu	a3,-1(a4)
   1995e:	17fd                	add	a5,a5,-1
   19960:	177d                	add	a4,a4,-1
   19962:	00d78023          	sb	a3,0(a5)
   19966:	fef51ae3          	bne	a0,a5,1995a <memmove+0x12>
   1996a:	8082                	ret
   1996c:	47fd                	li	a5,31
   1996e:	02c7e163          	bltu	a5,a2,19990 <memmove+0x48>
   19972:	87aa                	mv	a5,a0
   19974:	fff60693          	add	a3,a2,-1
   19978:	c24d                	beqz	a2,19a1a <memmove+0xd2>
   1997a:	0685                	add	a3,a3,1
   1997c:	96be                	add	a3,a3,a5
   1997e:	0005c703          	lbu	a4,0(a1)
   19982:	0785                	add	a5,a5,1
   19984:	0585                	add	a1,a1,1
   19986:	fee78fa3          	sb	a4,-1(a5)
   1998a:	fed79ae3          	bne	a5,a3,1997e <memmove+0x36>
   1998e:	8082                	ret
   19990:	00b567b3          	or	a5,a0,a1
   19994:	8b9d                	and	a5,a5,7
   19996:	efb5                	bnez	a5,19a12 <memmove+0xca>
   19998:	fe060893          	add	a7,a2,-32
   1999c:	fe08f893          	and	a7,a7,-32
   199a0:	02088893          	add	a7,a7,32
   199a4:	011507b3          	add	a5,a0,a7
   199a8:	86ae                	mv	a3,a1
   199aa:	872a                	mv	a4,a0
   199ac:	0006b803          	ld	a6,0(a3)
   199b0:	02068693          	add	a3,a3,32
   199b4:	02070713          	add	a4,a4,32
   199b8:	ff073023          	sd	a6,-32(a4)
   199bc:	fe86b803          	ld	a6,-24(a3)
   199c0:	ff073423          	sd	a6,-24(a4)
   199c4:	ff06b803          	ld	a6,-16(a3)
   199c8:	ff073823          	sd	a6,-16(a4)
   199cc:	ff86b803          	ld	a6,-8(a3)
   199d0:	ff073c23          	sd	a6,-8(a4)
   199d4:	fcf71ce3          	bne	a4,a5,199ac <memmove+0x64>
   199d8:	01867713          	and	a4,a2,24
   199dc:	95c6                	add	a1,a1,a7
   199de:	01f67813          	and	a6,a2,31
   199e2:	cf0d                	beqz	a4,19a1c <memmove+0xd4>
   199e4:	86ae                	mv	a3,a1
   199e6:	873e                	mv	a4,a5
   199e8:	01078eb3          	add	t4,a5,a6
   199ec:	4e1d                	li	t3,7
   199ee:	0006b303          	ld	t1,0(a3)
   199f2:	0721                	add	a4,a4,8
   199f4:	40ee88b3          	sub	a7,t4,a4
   199f8:	fe673c23          	sd	t1,-8(a4)
   199fc:	06a1                	add	a3,a3,8
   199fe:	ff1e68e3          	bltu	t3,a7,199ee <memmove+0xa6>
   19a02:	ff880713          	add	a4,a6,-8
   19a06:	9b61                	and	a4,a4,-8
   19a08:	0721                	add	a4,a4,8
   19a0a:	8a1d                	and	a2,a2,7
   19a0c:	97ba                	add	a5,a5,a4
   19a0e:	95ba                	add	a1,a1,a4
   19a10:	b795                	j	19974 <memmove+0x2c>
   19a12:	fff60693          	add	a3,a2,-1
   19a16:	87aa                	mv	a5,a0
   19a18:	b78d                	j	1997a <memmove+0x32>
   19a1a:	8082                	ret
   19a1c:	8642                	mv	a2,a6
   19a1e:	bf99                	j	19974 <memmove+0x2c>

0000000000019a20 <_read_r>:
   19a20:	1141                	add	sp,sp,-16
   19a22:	872e                	mv	a4,a1
   19a24:	e022                	sd	s0,0(sp)
   19a26:	85b2                	mv	a1,a2
   19a28:	842a                	mv	s0,a0
   19a2a:	8636                	mv	a2,a3
   19a2c:	853a                	mv	a0,a4
   19a2e:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   19a32:	e406                	sd	ra,8(sp)
   19a34:	159010ef          	jal	1b38c <_read>
   19a38:	57fd                	li	a5,-1
   19a3a:	00f50663          	beq	a0,a5,19a46 <_read_r+0x26>
   19a3e:	60a2                	ld	ra,8(sp)
   19a40:	6402                	ld	s0,0(sp)
   19a42:	0141                	add	sp,sp,16
   19a44:	8082                	ret
   19a46:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   19a4a:	dbf5                	beqz	a5,19a3e <_read_r+0x1e>
   19a4c:	60a2                	ld	ra,8(sp)
   19a4e:	c01c                	sw	a5,0(s0)
   19a50:	6402                	ld	s0,0(sp)
   19a52:	0141                	add	sp,sp,16
   19a54:	8082                	ret

0000000000019a56 <_realloc_r>:
   19a56:	715d                	add	sp,sp,-80
   19a58:	f84a                	sd	s2,48(sp)
   19a5a:	e486                	sd	ra,72(sp)
   19a5c:	e0a2                	sd	s0,64(sp)
   19a5e:	fc26                	sd	s1,56(sp)
   19a60:	f44e                	sd	s3,40(sp)
   19a62:	f052                	sd	s4,32(sp)
   19a64:	ec56                	sd	s5,24(sp)
   19a66:	e85a                	sd	s6,16(sp)
   19a68:	e45e                	sd	s7,8(sp)
   19a6a:	e062                	sd	s8,0(sp)
   19a6c:	8932                	mv	s2,a2
   19a6e:	14058963          	beqz	a1,19bc0 <_realloc_r+0x16a>
   19a72:	842e                	mv	s0,a1
   19a74:	89aa                	mv	s3,a0
   19a76:	9c7fb0ef          	jal	1543c <__malloc_lock>
   19a7a:	ff843783          	ld	a5,-8(s0)
   19a7e:	01790493          	add	s1,s2,23
   19a82:	02e00713          	li	a4,46
   19a86:	ff040a93          	add	s5,s0,-16
   19a8a:	ffc7fa13          	and	s4,a5,-4
   19a8e:	0a977e63          	bgeu	a4,s1,19b4a <_realloc_r+0xf4>
   19a92:	80000737          	lui	a4,0x80000
   19a96:	98c1                	and	s1,s1,-16
   19a98:	fff74713          	not	a4,a4
   19a9c:	0a976b63          	bltu	a4,s1,19b52 <_realloc_r+0xfc>
   19aa0:	0b24e963          	bltu	s1,s2,19b52 <_realloc_r+0xfc>
   19aa4:	0c9a5163          	bge	s4,s1,19b66 <_realloc_r+0x110>
   19aa8:	00005c17          	auipc	s8,0x5
   19aac:	620c0c13          	add	s8,s8,1568 # 1f0c8 <__malloc_av_>
   19ab0:	010c3603          	ld	a2,16(s8)
   19ab4:	014a86b3          	add	a3,s5,s4
   19ab8:	6698                	ld	a4,8(a3)
   19aba:	14d60263          	beq	a2,a3,19bfe <_realloc_r+0x1a8>
   19abe:	ffe77613          	and	a2,a4,-2
   19ac2:	9636                	add	a2,a2,a3
   19ac4:	6610                	ld	a2,8(a2)
   19ac6:	8a05                	and	a2,a2,1
   19ac8:	e275                	bnez	a2,19bac <_realloc_r+0x156>
   19aca:	9b71                	and	a4,a4,-4
   19acc:	00ea0633          	add	a2,s4,a4
   19ad0:	08965663          	bge	a2,s1,19b5c <_realloc_r+0x106>
   19ad4:	8b85                	and	a5,a5,1
   19ad6:	e38d                	bnez	a5,19af8 <_realloc_r+0xa2>
   19ad8:	ff043b83          	ld	s7,-16(s0)
   19adc:	417a8bb3          	sub	s7,s5,s7
   19ae0:	008bb783          	ld	a5,8(s7)
   19ae4:	9bf1                	and	a5,a5,-4
   19ae6:	973e                	add	a4,a4,a5
   19ae8:	01470b33          	add	s6,a4,s4
   19aec:	249b5163          	bge	s6,s1,19d2e <_realloc_r+0x2d8>
   19af0:	00fa0b33          	add	s6,s4,a5
   19af4:	1c9b5663          	bge	s6,s1,19cc0 <_realloc_r+0x26a>
   19af8:	85ca                	mv	a1,s2
   19afa:	854e                	mv	a0,s3
   19afc:	ab4fb0ef          	jal	14db0 <_malloc_r>
   19b00:	892a                	mv	s2,a0
   19b02:	2e050563          	beqz	a0,19dec <_realloc_r+0x396>
   19b06:	ff843783          	ld	a5,-8(s0)
   19b0a:	ff050713          	add	a4,a0,-16
   19b0e:	9bf9                	and	a5,a5,-2
   19b10:	97d6                	add	a5,a5,s5
   19b12:	1ae78263          	beq	a5,a4,19cb6 <_realloc_r+0x260>
   19b16:	ff8a0613          	add	a2,s4,-8
   19b1a:	04800793          	li	a5,72
   19b1e:	20c7e463          	bltu	a5,a2,19d26 <_realloc_r+0x2d0>
   19b22:	02700713          	li	a4,39
   19b26:	16c76b63          	bltu	a4,a2,19c9c <_realloc_r+0x246>
   19b2a:	87aa                	mv	a5,a0
   19b2c:	8722                	mv	a4,s0
   19b2e:	6314                	ld	a3,0(a4)
   19b30:	e394                	sd	a3,0(a5)
   19b32:	6714                	ld	a3,8(a4)
   19b34:	e794                	sd	a3,8(a5)
   19b36:	6b18                	ld	a4,16(a4)
   19b38:	eb98                	sd	a4,16(a5)
   19b3a:	854e                	mv	a0,s3
   19b3c:	85a2                	mv	a1,s0
   19b3e:	c2df80ef          	jal	1276a <_free_r>
   19b42:	854e                	mv	a0,s3
   19b44:	8fbfb0ef          	jal	1543e <__malloc_unlock>
   19b48:	a0a9                	j	19b92 <_realloc_r+0x13c>
   19b4a:	02000493          	li	s1,32
   19b4e:	f524fbe3          	bgeu	s1,s2,19aa4 <_realloc_r+0x4e>
   19b52:	47b1                	li	a5,12
   19b54:	00f9a023          	sw	a5,0(s3)
   19b58:	4901                	li	s2,0
   19b5a:	a825                	j	19b92 <_realloc_r+0x13c>
   19b5c:	6e9c                	ld	a5,24(a3)
   19b5e:	6a98                	ld	a4,16(a3)
   19b60:	8a32                	mv	s4,a2
   19b62:	ef1c                	sd	a5,24(a4)
   19b64:	eb98                	sd	a4,16(a5)
   19b66:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffe0498>
   19b6a:	409a06b3          	sub	a3,s4,s1
   19b6e:	467d                	li	a2,31
   19b70:	8b85                	and	a5,a5,1
   19b72:	014a8733          	add	a4,s5,s4
   19b76:	06d66363          	bltu	a2,a3,19bdc <_realloc_r+0x186>
   19b7a:	0147e7b3          	or	a5,a5,s4
   19b7e:	00fab423          	sd	a5,8(s5)
   19b82:	671c                	ld	a5,8(a4)
   19b84:	0017e793          	or	a5,a5,1
   19b88:	e71c                	sd	a5,8(a4)
   19b8a:	854e                	mv	a0,s3
   19b8c:	8b3fb0ef          	jal	1543e <__malloc_unlock>
   19b90:	8922                	mv	s2,s0
   19b92:	60a6                	ld	ra,72(sp)
   19b94:	6406                	ld	s0,64(sp)
   19b96:	74e2                	ld	s1,56(sp)
   19b98:	79a2                	ld	s3,40(sp)
   19b9a:	7a02                	ld	s4,32(sp)
   19b9c:	6ae2                	ld	s5,24(sp)
   19b9e:	6b42                	ld	s6,16(sp)
   19ba0:	6ba2                	ld	s7,8(sp)
   19ba2:	6c02                	ld	s8,0(sp)
   19ba4:	854a                	mv	a0,s2
   19ba6:	7942                	ld	s2,48(sp)
   19ba8:	6161                	add	sp,sp,80
   19baa:	8082                	ret
   19bac:	8b85                	and	a5,a5,1
   19bae:	f7a9                	bnez	a5,19af8 <_realloc_r+0xa2>
   19bb0:	ff043b83          	ld	s7,-16(s0)
   19bb4:	417a8bb3          	sub	s7,s5,s7
   19bb8:	008bb783          	ld	a5,8(s7)
   19bbc:	9bf1                	and	a5,a5,-4
   19bbe:	bf0d                	j	19af0 <_realloc_r+0x9a>
   19bc0:	6406                	ld	s0,64(sp)
   19bc2:	60a6                	ld	ra,72(sp)
   19bc4:	74e2                	ld	s1,56(sp)
   19bc6:	7942                	ld	s2,48(sp)
   19bc8:	79a2                	ld	s3,40(sp)
   19bca:	7a02                	ld	s4,32(sp)
   19bcc:	6ae2                	ld	s5,24(sp)
   19bce:	6b42                	ld	s6,16(sp)
   19bd0:	6ba2                	ld	s7,8(sp)
   19bd2:	6c02                	ld	s8,0(sp)
   19bd4:	85b2                	mv	a1,a2
   19bd6:	6161                	add	sp,sp,80
   19bd8:	9d8fb06f          	j	14db0 <_malloc_r>
   19bdc:	8fc5                	or	a5,a5,s1
   19bde:	00fab423          	sd	a5,8(s5)
   19be2:	009a85b3          	add	a1,s5,s1
   19be6:	0016e693          	or	a3,a3,1
   19bea:	e594                	sd	a3,8(a1)
   19bec:	671c                	ld	a5,8(a4)
   19bee:	05c1                	add	a1,a1,16
   19bf0:	854e                	mv	a0,s3
   19bf2:	0017e793          	or	a5,a5,1
   19bf6:	e71c                	sd	a5,8(a4)
   19bf8:	b73f80ef          	jal	1276a <_free_r>
   19bfc:	b779                	j	19b8a <_realloc_r+0x134>
   19bfe:	9b71                	and	a4,a4,-4
   19c00:	014706b3          	add	a3,a4,s4
   19c04:	02048613          	add	a2,s1,32
   19c08:	1ac6da63          	bge	a3,a2,19dbc <_realloc_r+0x366>
   19c0c:	8b85                	and	a5,a5,1
   19c0e:	ee0795e3          	bnez	a5,19af8 <_realloc_r+0xa2>
   19c12:	ff043b83          	ld	s7,-16(s0)
   19c16:	417a8bb3          	sub	s7,s5,s7
   19c1a:	008bb783          	ld	a5,8(s7)
   19c1e:	9bf1                	and	a5,a5,-4
   19c20:	973e                	add	a4,a4,a5
   19c22:	01470b33          	add	s6,a4,s4
   19c26:	eccb45e3          	blt	s6,a2,19af0 <_realloc_r+0x9a>
   19c2a:	018bb783          	ld	a5,24(s7)
   19c2e:	010bb703          	ld	a4,16(s7)
   19c32:	ff8a0613          	add	a2,s4,-8
   19c36:	04800693          	li	a3,72
   19c3a:	ef1c                	sd	a5,24(a4)
   19c3c:	eb98                	sd	a4,16(a5)
   19c3e:	010b8913          	add	s2,s7,16
   19c42:	1cc6e363          	bltu	a3,a2,19e08 <_realloc_r+0x3b2>
   19c46:	02700713          	li	a4,39
   19c4a:	87ca                	mv	a5,s2
   19c4c:	00c77f63          	bgeu	a4,a2,19c6a <_realloc_r+0x214>
   19c50:	6018                	ld	a4,0(s0)
   19c52:	03700793          	li	a5,55
   19c56:	00ebb823          	sd	a4,16(s7)
   19c5a:	6418                	ld	a4,8(s0)
   19c5c:	00ebbc23          	sd	a4,24(s7)
   19c60:	1ac7e963          	bltu	a5,a2,19e12 <_realloc_r+0x3bc>
   19c64:	0441                	add	s0,s0,16
   19c66:	020b8793          	add	a5,s7,32
   19c6a:	6018                	ld	a4,0(s0)
   19c6c:	e398                	sd	a4,0(a5)
   19c6e:	6418                	ld	a4,8(s0)
   19c70:	e798                	sd	a4,8(a5)
   19c72:	6818                	ld	a4,16(s0)
   19c74:	eb98                	sd	a4,16(a5)
   19c76:	009b8733          	add	a4,s7,s1
   19c7a:	409b07b3          	sub	a5,s6,s1
   19c7e:	00ec3823          	sd	a4,16(s8)
   19c82:	0017e793          	or	a5,a5,1
   19c86:	e71c                	sd	a5,8(a4)
   19c88:	008bb783          	ld	a5,8(s7)
   19c8c:	854e                	mv	a0,s3
   19c8e:	8b85                	and	a5,a5,1
   19c90:	8fc5                	or	a5,a5,s1
   19c92:	00fbb423          	sd	a5,8(s7)
   19c96:	fa8fb0ef          	jal	1543e <__malloc_unlock>
   19c9a:	bde5                	j	19b92 <_realloc_r+0x13c>
   19c9c:	6014                	ld	a3,0(s0)
   19c9e:	03700713          	li	a4,55
   19ca2:	e114                	sd	a3,0(a0)
   19ca4:	6414                	ld	a3,8(s0)
   19ca6:	e514                	sd	a3,8(a0)
   19ca8:	0ec76f63          	bltu	a4,a2,19da6 <_realloc_r+0x350>
   19cac:	01040713          	add	a4,s0,16
   19cb0:	01050793          	add	a5,a0,16
   19cb4:	bdad                	j	19b2e <_realloc_r+0xd8>
   19cb6:	ff853783          	ld	a5,-8(a0)
   19cba:	9bf1                	and	a5,a5,-4
   19cbc:	9a3e                	add	s4,s4,a5
   19cbe:	b565                	j	19b66 <_realloc_r+0x110>
   19cc0:	018bb783          	ld	a5,24(s7)
   19cc4:	010bb703          	ld	a4,16(s7)
   19cc8:	ff8a0613          	add	a2,s4,-8
   19ccc:	04800693          	li	a3,72
   19cd0:	ef1c                	sd	a5,24(a4)
   19cd2:	eb98                	sd	a4,16(a5)
   19cd4:	010b8913          	add	s2,s7,16
   19cd8:	0cc6e263          	bltu	a3,a2,19d9c <_realloc_r+0x346>
   19cdc:	02700713          	li	a4,39
   19ce0:	87ca                	mv	a5,s2
   19ce2:	02c77863          	bgeu	a4,a2,19d12 <_realloc_r+0x2bc>
   19ce6:	6018                	ld	a4,0(s0)
   19ce8:	03700793          	li	a5,55
   19cec:	00ebb823          	sd	a4,16(s7)
   19cf0:	6418                	ld	a4,8(s0)
   19cf2:	00ebbc23          	sd	a4,24(s7)
   19cf6:	0ec7f763          	bgeu	a5,a2,19de4 <_realloc_r+0x38e>
   19cfa:	681c                	ld	a5,16(s0)
   19cfc:	02fbb023          	sd	a5,32(s7)
   19d00:	6c1c                	ld	a5,24(s0)
   19d02:	02fbb423          	sd	a5,40(s7)
   19d06:	06d60f63          	beq	a2,a3,19d84 <_realloc_r+0x32e>
   19d0a:	02040413          	add	s0,s0,32
   19d0e:	030b8793          	add	a5,s7,48
   19d12:	6018                	ld	a4,0(s0)
   19d14:	e398                	sd	a4,0(a5)
   19d16:	6418                	ld	a4,8(s0)
   19d18:	e798                	sd	a4,8(a5)
   19d1a:	6818                	ld	a4,16(s0)
   19d1c:	eb98                	sd	a4,16(a5)
   19d1e:	844a                	mv	s0,s2
   19d20:	8a5a                	mv	s4,s6
   19d22:	8ade                	mv	s5,s7
   19d24:	b589                	j	19b66 <_realloc_r+0x110>
   19d26:	85a2                	mv	a1,s0
   19d28:	c21ff0ef          	jal	19948 <memmove>
   19d2c:	b539                	j	19b3a <_realloc_r+0xe4>
   19d2e:	6e9c                	ld	a5,24(a3)
   19d30:	6a98                	ld	a4,16(a3)
   19d32:	ff8a0613          	add	a2,s4,-8
   19d36:	04800693          	li	a3,72
   19d3a:	ef1c                	sd	a5,24(a4)
   19d3c:	eb98                	sd	a4,16(a5)
   19d3e:	010bb703          	ld	a4,16(s7)
   19d42:	018bb783          	ld	a5,24(s7)
   19d46:	010b8913          	add	s2,s7,16
   19d4a:	ef1c                	sd	a5,24(a4)
   19d4c:	eb98                	sd	a4,16(a5)
   19d4e:	04c6e763          	bltu	a3,a2,19d9c <_realloc_r+0x346>
   19d52:	02700713          	li	a4,39
   19d56:	87ca                	mv	a5,s2
   19d58:	fac77de3          	bgeu	a4,a2,19d12 <_realloc_r+0x2bc>
   19d5c:	6018                	ld	a4,0(s0)
   19d5e:	03700793          	li	a5,55
   19d62:	00ebb823          	sd	a4,16(s7)
   19d66:	6418                	ld	a4,8(s0)
   19d68:	00ebbc23          	sd	a4,24(s7)
   19d6c:	06c7fc63          	bgeu	a5,a2,19de4 <_realloc_r+0x38e>
   19d70:	6818                	ld	a4,16(s0)
   19d72:	04800793          	li	a5,72
   19d76:	02ebb023          	sd	a4,32(s7)
   19d7a:	6c18                	ld	a4,24(s0)
   19d7c:	02ebb423          	sd	a4,40(s7)
   19d80:	f8f615e3          	bne	a2,a5,19d0a <_realloc_r+0x2b4>
   19d84:	7018                	ld	a4,32(s0)
   19d86:	040b8793          	add	a5,s7,64
   19d8a:	03040413          	add	s0,s0,48
   19d8e:	02ebb823          	sd	a4,48(s7)
   19d92:	ff843703          	ld	a4,-8(s0)
   19d96:	02ebbc23          	sd	a4,56(s7)
   19d9a:	bfa5                	j	19d12 <_realloc_r+0x2bc>
   19d9c:	85a2                	mv	a1,s0
   19d9e:	854a                	mv	a0,s2
   19da0:	ba9ff0ef          	jal	19948 <memmove>
   19da4:	bfad                	j	19d1e <_realloc_r+0x2c8>
   19da6:	6818                	ld	a4,16(s0)
   19da8:	e918                	sd	a4,16(a0)
   19daa:	6c18                	ld	a4,24(s0)
   19dac:	ed18                	sd	a4,24(a0)
   19dae:	04f60463          	beq	a2,a5,19df6 <_realloc_r+0x3a0>
   19db2:	02040713          	add	a4,s0,32
   19db6:	02050793          	add	a5,a0,32
   19dba:	bb95                	j	19b2e <_realloc_r+0xd8>
   19dbc:	9aa6                	add	s5,s5,s1
   19dbe:	409687b3          	sub	a5,a3,s1
   19dc2:	015c3823          	sd	s5,16(s8)
   19dc6:	0017e793          	or	a5,a5,1
   19dca:	00fab423          	sd	a5,8(s5)
   19dce:	ff843783          	ld	a5,-8(s0)
   19dd2:	854e                	mv	a0,s3
   19dd4:	8922                	mv	s2,s0
   19dd6:	8b85                	and	a5,a5,1
   19dd8:	8fc5                	or	a5,a5,s1
   19dda:	fef43c23          	sd	a5,-8(s0)
   19dde:	e60fb0ef          	jal	1543e <__malloc_unlock>
   19de2:	bb45                	j	19b92 <_realloc_r+0x13c>
   19de4:	0441                	add	s0,s0,16
   19de6:	020b8793          	add	a5,s7,32
   19dea:	b725                	j	19d12 <_realloc_r+0x2bc>
   19dec:	854e                	mv	a0,s3
   19dee:	e50fb0ef          	jal	1543e <__malloc_unlock>
   19df2:	4901                	li	s2,0
   19df4:	bb79                	j	19b92 <_realloc_r+0x13c>
   19df6:	7014                	ld	a3,32(s0)
   19df8:	03040713          	add	a4,s0,48
   19dfc:	03050793          	add	a5,a0,48
   19e00:	f114                	sd	a3,32(a0)
   19e02:	7414                	ld	a3,40(s0)
   19e04:	f514                	sd	a3,40(a0)
   19e06:	b325                	j	19b2e <_realloc_r+0xd8>
   19e08:	85a2                	mv	a1,s0
   19e0a:	854a                	mv	a0,s2
   19e0c:	b3dff0ef          	jal	19948 <memmove>
   19e10:	b59d                	j	19c76 <_realloc_r+0x220>
   19e12:	681c                	ld	a5,16(s0)
   19e14:	02fbb023          	sd	a5,32(s7)
   19e18:	6c1c                	ld	a5,24(s0)
   19e1a:	02fbb423          	sd	a5,40(s7)
   19e1e:	00d60763          	beq	a2,a3,19e2c <_realloc_r+0x3d6>
   19e22:	02040413          	add	s0,s0,32
   19e26:	030b8793          	add	a5,s7,48
   19e2a:	b581                	j	19c6a <_realloc_r+0x214>
   19e2c:	7018                	ld	a4,32(s0)
   19e2e:	040b8793          	add	a5,s7,64
   19e32:	03040413          	add	s0,s0,48
   19e36:	02ebb823          	sd	a4,48(s7)
   19e3a:	ff843703          	ld	a4,-8(s0)
   19e3e:	02ebbc23          	sd	a4,56(s7)
   19e42:	b525                	j	19c6a <_realloc_r+0x214>

0000000000019e44 <cleanup_glue>:
   19e44:	7179                	add	sp,sp,-48
   19e46:	e84a                	sd	s2,16(sp)
   19e48:	0005b903          	ld	s2,0(a1)
   19e4c:	f022                	sd	s0,32(sp)
   19e4e:	ec26                	sd	s1,24(sp)
   19e50:	f406                	sd	ra,40(sp)
   19e52:	e44e                	sd	s3,8(sp)
   19e54:	e052                	sd	s4,0(sp)
   19e56:	842e                	mv	s0,a1
   19e58:	84aa                	mv	s1,a0
   19e5a:	02090b63          	beqz	s2,19e90 <cleanup_glue+0x4c>
   19e5e:	00093983          	ld	s3,0(s2)
   19e62:	02098363          	beqz	s3,19e88 <cleanup_glue+0x44>
   19e66:	0009ba03          	ld	s4,0(s3)
   19e6a:	000a0b63          	beqz	s4,19e80 <cleanup_glue+0x3c>
   19e6e:	000a3583          	ld	a1,0(s4)
   19e72:	c199                	beqz	a1,19e78 <cleanup_glue+0x34>
   19e74:	fd1ff0ef          	jal	19e44 <cleanup_glue>
   19e78:	85d2                	mv	a1,s4
   19e7a:	8526                	mv	a0,s1
   19e7c:	8eff80ef          	jal	1276a <_free_r>
   19e80:	85ce                	mv	a1,s3
   19e82:	8526                	mv	a0,s1
   19e84:	8e7f80ef          	jal	1276a <_free_r>
   19e88:	85ca                	mv	a1,s2
   19e8a:	8526                	mv	a0,s1
   19e8c:	8dff80ef          	jal	1276a <_free_r>
   19e90:	85a2                	mv	a1,s0
   19e92:	7402                	ld	s0,32(sp)
   19e94:	70a2                	ld	ra,40(sp)
   19e96:	6942                	ld	s2,16(sp)
   19e98:	69a2                	ld	s3,8(sp)
   19e9a:	6a02                	ld	s4,0(sp)
   19e9c:	8526                	mv	a0,s1
   19e9e:	64e2                	ld	s1,24(sp)
   19ea0:	6145                	add	sp,sp,48
   19ea2:	8c9f806f          	j	1276a <_free_r>

0000000000019ea6 <_reclaim_reent>:
   19ea6:	7581b783          	ld	a5,1880(gp) # 1fac8 <_impure_ptr>
   19eaa:	0aa78563          	beq	a5,a0,19f54 <_reclaim_reent+0xae>
   19eae:	7d2c                	ld	a1,120(a0)
   19eb0:	7179                	add	sp,sp,-48
   19eb2:	ec26                	sd	s1,24(sp)
   19eb4:	f406                	sd	ra,40(sp)
   19eb6:	f022                	sd	s0,32(sp)
   19eb8:	e84a                	sd	s2,16(sp)
   19eba:	e44e                	sd	s3,8(sp)
   19ebc:	84aa                	mv	s1,a0
   19ebe:	c58d                	beqz	a1,19ee8 <_reclaim_reent+0x42>
   19ec0:	4901                	li	s2,0
   19ec2:	20000993          	li	s3,512
   19ec6:	012587b3          	add	a5,a1,s2
   19eca:	6380                	ld	s0,0(a5)
   19ecc:	c801                	beqz	s0,19edc <_reclaim_reent+0x36>
   19ece:	85a2                	mv	a1,s0
   19ed0:	6000                	ld	s0,0(s0)
   19ed2:	8526                	mv	a0,s1
   19ed4:	897f80ef          	jal	1276a <_free_r>
   19ed8:	f87d                	bnez	s0,19ece <_reclaim_reent+0x28>
   19eda:	7cac                	ld	a1,120(s1)
   19edc:	0921                	add	s2,s2,8
   19ede:	ff3914e3          	bne	s2,s3,19ec6 <_reclaim_reent+0x20>
   19ee2:	8526                	mv	a0,s1
   19ee4:	887f80ef          	jal	1276a <_free_r>
   19ee8:	70ac                	ld	a1,96(s1)
   19eea:	c581                	beqz	a1,19ef2 <_reclaim_reent+0x4c>
   19eec:	8526                	mv	a0,s1
   19eee:	87df80ef          	jal	1276a <_free_r>
   19ef2:	1f84b403          	ld	s0,504(s1)
   19ef6:	cc01                	beqz	s0,19f0e <_reclaim_reent+0x68>
   19ef8:	20048913          	add	s2,s1,512
   19efc:	01240963          	beq	s0,s2,19f0e <_reclaim_reent+0x68>
   19f00:	85a2                	mv	a1,s0
   19f02:	6000                	ld	s0,0(s0)
   19f04:	8526                	mv	a0,s1
   19f06:	865f80ef          	jal	1276a <_free_r>
   19f0a:	fe891be3          	bne	s2,s0,19f00 <_reclaim_reent+0x5a>
   19f0e:	64cc                	ld	a1,136(s1)
   19f10:	c581                	beqz	a1,19f18 <_reclaim_reent+0x72>
   19f12:	8526                	mv	a0,s1
   19f14:	857f80ef          	jal	1276a <_free_r>
   19f18:	48bc                	lw	a5,80(s1)
   19f1a:	c795                	beqz	a5,19f46 <_reclaim_reent+0xa0>
   19f1c:	6cbc                	ld	a5,88(s1)
   19f1e:	8526                	mv	a0,s1
   19f20:	9782                	jalr	a5
   19f22:	5204b403          	ld	s0,1312(s1)
   19f26:	c005                	beqz	s0,19f46 <_reclaim_reent+0xa0>
   19f28:	600c                	ld	a1,0(s0)
   19f2a:	c581                	beqz	a1,19f32 <_reclaim_reent+0x8c>
   19f2c:	8526                	mv	a0,s1
   19f2e:	f17ff0ef          	jal	19e44 <cleanup_glue>
   19f32:	85a2                	mv	a1,s0
   19f34:	7402                	ld	s0,32(sp)
   19f36:	70a2                	ld	ra,40(sp)
   19f38:	6942                	ld	s2,16(sp)
   19f3a:	69a2                	ld	s3,8(sp)
   19f3c:	8526                	mv	a0,s1
   19f3e:	64e2                	ld	s1,24(sp)
   19f40:	6145                	add	sp,sp,48
   19f42:	829f806f          	j	1276a <_free_r>
   19f46:	70a2                	ld	ra,40(sp)
   19f48:	7402                	ld	s0,32(sp)
   19f4a:	64e2                	ld	s1,24(sp)
   19f4c:	6942                	ld	s2,16(sp)
   19f4e:	69a2                	ld	s3,8(sp)
   19f50:	6145                	add	sp,sp,48
   19f52:	8082                	ret
   19f54:	8082                	ret

0000000000019f56 <strcmp>:
   19f56:	00b56733          	or	a4,a0,a1
   19f5a:	53fd                	li	t2,-1
   19f5c:	8b1d                	and	a4,a4,7
   19f5e:	eb4d                	bnez	a4,1a010 <strcmp+0xba>
   19f60:	00006797          	auipc	a5,0x6
   19f64:	b487b783          	ld	a5,-1208(a5) # 1faa8 <mask>
   19f68:	6110                	ld	a2,0(a0)
   19f6a:	6194                	ld	a3,0(a1)
   19f6c:	00f672b3          	and	t0,a2,a5
   19f70:	00f66333          	or	t1,a2,a5
   19f74:	92be                	add	t0,t0,a5
   19f76:	0062e2b3          	or	t0,t0,t1
   19f7a:	0a729963          	bne	t0,t2,1a02c <strcmp+0xd6>
   19f7e:	02d61e63          	bne	a2,a3,19fba <strcmp+0x64>
   19f82:	6510                	ld	a2,8(a0)
   19f84:	6594                	ld	a3,8(a1)
   19f86:	00f672b3          	and	t0,a2,a5
   19f8a:	00f66333          	or	t1,a2,a5
   19f8e:	92be                	add	t0,t0,a5
   19f90:	0062e2b3          	or	t0,t0,t1
   19f94:	08729a63          	bne	t0,t2,1a028 <strcmp+0xd2>
   19f98:	02d61163          	bne	a2,a3,19fba <strcmp+0x64>
   19f9c:	6910                	ld	a2,16(a0)
   19f9e:	6994                	ld	a3,16(a1)
   19fa0:	00f672b3          	and	t0,a2,a5
   19fa4:	00f66333          	or	t1,a2,a5
   19fa8:	92be                	add	t0,t0,a5
   19faa:	0062e2b3          	or	t0,t0,t1
   19fae:	08729363          	bne	t0,t2,1a034 <strcmp+0xde>
   19fb2:	0561                	add	a0,a0,24
   19fb4:	05e1                	add	a1,a1,24
   19fb6:	fad609e3          	beq	a2,a3,19f68 <strcmp+0x12>
   19fba:	03061713          	sll	a4,a2,0x30
   19fbe:	03069793          	sll	a5,a3,0x30
   19fc2:	02f71863          	bne	a4,a5,19ff2 <strcmp+0x9c>
   19fc6:	02061713          	sll	a4,a2,0x20
   19fca:	02069793          	sll	a5,a3,0x20
   19fce:	02f71263          	bne	a4,a5,19ff2 <strcmp+0x9c>
   19fd2:	01061713          	sll	a4,a2,0x10
   19fd6:	01069793          	sll	a5,a3,0x10
   19fda:	00f71c63          	bne	a4,a5,19ff2 <strcmp+0x9c>
   19fde:	03065713          	srl	a4,a2,0x30
   19fe2:	0306d793          	srl	a5,a3,0x30
   19fe6:	40f70533          	sub	a0,a4,a5
   19fea:	0ff57593          	zext.b	a1,a0
   19fee:	e991                	bnez	a1,1a002 <strcmp+0xac>
   19ff0:	8082                	ret
   19ff2:	9341                	srl	a4,a4,0x30
   19ff4:	93c1                	srl	a5,a5,0x30
   19ff6:	40f70533          	sub	a0,a4,a5
   19ffa:	0ff57593          	zext.b	a1,a0
   19ffe:	e191                	bnez	a1,1a002 <strcmp+0xac>
   1a000:	8082                	ret
   1a002:	0ff77713          	zext.b	a4,a4
   1a006:	0ff7f793          	zext.b	a5,a5
   1a00a:	40f70533          	sub	a0,a4,a5
   1a00e:	8082                	ret
   1a010:	00054603          	lbu	a2,0(a0)
   1a014:	0005c683          	lbu	a3,0(a1)
   1a018:	0505                	add	a0,a0,1
   1a01a:	0585                	add	a1,a1,1
   1a01c:	00d61363          	bne	a2,a3,1a022 <strcmp+0xcc>
   1a020:	fa65                	bnez	a2,1a010 <strcmp+0xba>
   1a022:	40d60533          	sub	a0,a2,a3
   1a026:	8082                	ret
   1a028:	0521                	add	a0,a0,8
   1a02a:	05a1                	add	a1,a1,8
   1a02c:	fed612e3          	bne	a2,a3,1a010 <strcmp+0xba>
   1a030:	4501                	li	a0,0
   1a032:	8082                	ret
   1a034:	0541                	add	a0,a0,16
   1a036:	05c1                	add	a1,a1,16
   1a038:	fcd61ce3          	bne	a2,a3,1a010 <strcmp+0xba>
   1a03c:	4501                	li	a0,0
   1a03e:	8082                	ret

000000000001a040 <__ssprint_r>:
   1a040:	6a1c                	ld	a5,16(a2)
   1a042:	715d                	add	sp,sp,-80
   1a044:	f44e                	sd	s3,40(sp)
   1a046:	ec56                	sd	s5,24(sp)
   1a048:	e486                	sd	ra,72(sp)
   1a04a:	e0a2                	sd	s0,64(sp)
   1a04c:	fc26                	sd	s1,56(sp)
   1a04e:	f84a                	sd	s2,48(sp)
   1a050:	f052                	sd	s4,32(sp)
   1a052:	e85a                	sd	s6,16(sp)
   1a054:	e45e                	sd	s7,8(sp)
   1a056:	e062                	sd	s8,0(sp)
   1a058:	00063983          	ld	s3,0(a2)
   1a05c:	8ab2                	mv	s5,a2
   1a05e:	10078d63          	beqz	a5,1a178 <__ssprint_r+0x138>
   1a062:	45d8                	lw	a4,12(a1)
   1a064:	619c                	ld	a5,0(a1)
   1a066:	8b2a                	mv	s6,a0
   1a068:	84ae                	mv	s1,a1
   1a06a:	4a01                	li	s4,0
   1a06c:	4401                	li	s0,0
   1a06e:	893a                	mv	s2,a4
   1a070:	853e                	mv	a0,a5
   1a072:	c029                	beqz	s0,1a0b4 <__ssprint_r+0x74>
   1a074:	04e47663          	bgeu	s0,a4,1a0c0 <__ssprint_r+0x80>
   1a078:	0004071b          	sext.w	a4,s0
   1a07c:	893a                	mv	s2,a4
   1a07e:	8bba                	mv	s7,a4
   1a080:	853e                	mv	a0,a5
   1a082:	85d2                	mv	a1,s4
   1a084:	864a                	mv	a2,s2
   1a086:	8c3ff0ef          	jal	19948 <memmove>
   1a08a:	44d4                	lw	a3,12(s1)
   1a08c:	609c                	ld	a5,0(s1)
   1a08e:	010ab703          	ld	a4,16(s5)
   1a092:	412686bb          	subw	a3,a3,s2
   1a096:	97ca                	add	a5,a5,s2
   1a098:	c4d4                	sw	a3,12(s1)
   1a09a:	e09c                	sd	a5,0(s1)
   1a09c:	41770733          	sub	a4,a4,s7
   1a0a0:	00eab823          	sd	a4,16(s5)
   1a0a4:	9a5e                	add	s4,s4,s7
   1a0a6:	41740433          	sub	s0,s0,s7
   1a0aa:	c779                	beqz	a4,1a178 <__ssprint_r+0x138>
   1a0ac:	44d8                	lw	a4,12(s1)
   1a0ae:	853e                	mv	a0,a5
   1a0b0:	893a                	mv	s2,a4
   1a0b2:	f069                	bnez	s0,1a074 <__ssprint_r+0x34>
   1a0b4:	0009ba03          	ld	s4,0(s3)
   1a0b8:	0089b403          	ld	s0,8(s3)
   1a0bc:	09c1                	add	s3,s3,16
   1a0be:	bf45                	j	1a06e <__ssprint_r+0x2e>
   1a0c0:	01049703          	lh	a4,16(s1)
   1a0c4:	00040b9b          	sext.w	s7,s0
   1a0c8:	48077693          	and	a3,a4,1152
   1a0cc:	dadd                	beqz	a3,1a082 <__ssprint_r+0x42>
   1a0ce:	5090                	lw	a2,32(s1)
   1a0d0:	6c8c                	ld	a1,24(s1)
   1a0d2:	0016169b          	sllw	a3,a2,0x1
   1a0d6:	9eb1                	addw	a3,a3,a2
   1a0d8:	8f8d                	sub	a5,a5,a1
   1a0da:	01f6d91b          	srlw	s2,a3,0x1f
   1a0de:	00078b9b          	sext.w	s7,a5
   1a0e2:	00d9093b          	addw	s2,s2,a3
   1a0e6:	001b8693          	add	a3,s7,1
   1a0ea:	4019591b          	sraw	s2,s2,0x1
   1a0ee:	96a2                	add	a3,a3,s0
   1a0f0:	00d97563          	bgeu	s2,a3,1a0fa <__ssprint_r+0xba>
   1a0f4:	2785                	addw	a5,a5,1
   1a0f6:	0087893b          	addw	s2,a5,s0
   1a0fa:	40077713          	and	a4,a4,1024
   1a0fe:	c731                	beqz	a4,1a14a <__ssprint_r+0x10a>
   1a100:	85ca                	mv	a1,s2
   1a102:	855a                	mv	a0,s6
   1a104:	cadfa0ef          	jal	14db0 <_malloc_r>
   1a108:	8c2a                	mv	s8,a0
   1a10a:	c931                	beqz	a0,1a15e <__ssprint_r+0x11e>
   1a10c:	6c8c                	ld	a1,24(s1)
   1a10e:	865e                	mv	a2,s7
   1a110:	ef2ff0ef          	jal	19802 <memcpy>
   1a114:	0104d783          	lhu	a5,16(s1)
   1a118:	b7f7f793          	and	a5,a5,-1153
   1a11c:	0807e793          	or	a5,a5,128
   1a120:	00f49823          	sh	a5,16(s1)
   1a124:	017c0533          	add	a0,s8,s7
   1a128:	41790bbb          	subw	s7,s2,s7
   1a12c:	0004071b          	sext.w	a4,s0
   1a130:	0324a023          	sw	s2,32(s1)
   1a134:	0174a623          	sw	s7,12(s1)
   1a138:	0184bc23          	sd	s8,24(s1)
   1a13c:	e088                	sd	a0,0(s1)
   1a13e:	893a                	mv	s2,a4
   1a140:	8bba                	mv	s7,a4
   1a142:	87aa                	mv	a5,a0
   1a144:	f2e47fe3          	bgeu	s0,a4,1a082 <__ssprint_r+0x42>
   1a148:	bf15                	j	1a07c <__ssprint_r+0x3c>
   1a14a:	864a                	mv	a2,s2
   1a14c:	855a                	mv	a0,s6
   1a14e:	909ff0ef          	jal	19a56 <_realloc_r>
   1a152:	8c2a                	mv	s8,a0
   1a154:	f961                	bnez	a0,1a124 <__ssprint_r+0xe4>
   1a156:	6c8c                	ld	a1,24(s1)
   1a158:	855a                	mv	a0,s6
   1a15a:	e10f80ef          	jal	1276a <_free_r>
   1a15e:	0104d783          	lhu	a5,16(s1)
   1a162:	4731                	li	a4,12
   1a164:	00eb2023          	sw	a4,0(s6)
   1a168:	0407e793          	or	a5,a5,64
   1a16c:	00f49823          	sh	a5,16(s1)
   1a170:	000ab823          	sd	zero,16(s5)
   1a174:	557d                	li	a0,-1
   1a176:	a011                	j	1a17a <__ssprint_r+0x13a>
   1a178:	4501                	li	a0,0
   1a17a:	60a6                	ld	ra,72(sp)
   1a17c:	6406                	ld	s0,64(sp)
   1a17e:	000aa423          	sw	zero,8(s5)
   1a182:	74e2                	ld	s1,56(sp)
   1a184:	7942                	ld	s2,48(sp)
   1a186:	79a2                	ld	s3,40(sp)
   1a188:	7a02                	ld	s4,32(sp)
   1a18a:	6ae2                	ld	s5,24(sp)
   1a18c:	6b42                	ld	s6,16(sp)
   1a18e:	6ba2                	ld	s7,8(sp)
   1a190:	6c02                	ld	s8,0(sp)
   1a192:	6161                	add	sp,sp,80
   1a194:	8082                	ret

000000000001a196 <_svfiprintf_r>:
   1a196:	0105d703          	lhu	a4,16(a1)
   1a19a:	7105                	add	sp,sp,-480
   1a19c:	fb52                	sd	s4,432(sp)
   1a19e:	f35a                	sd	s6,416(sp)
   1a1a0:	eb62                	sd	s8,400(sp)
   1a1a2:	feee                	sd	s11,376(sp)
   1a1a4:	ef86                	sd	ra,472(sp)
   1a1a6:	eba2                	sd	s0,464(sp)
   1a1a8:	e7a6                	sd	s1,456(sp)
   1a1aa:	e3ca                	sd	s2,448(sp)
   1a1ac:	ff4e                	sd	s3,440(sp)
   1a1ae:	f756                	sd	s5,424(sp)
   1a1b0:	ef5e                	sd	s7,408(sp)
   1a1b2:	e766                	sd	s9,392(sp)
   1a1b4:	e36a                	sd	s10,384(sp)
   1a1b6:	08077713          	and	a4,a4,128
   1a1ba:	8a2e                	mv	s4,a1
   1a1bc:	8b2a                	mv	s6,a0
   1a1be:	8db2                	mv	s11,a2
   1a1c0:	8c36                	mv	s8,a3
   1a1c2:	c701                	beqz	a4,1a1ca <_svfiprintf_r+0x34>
   1a1c4:	6d98                	ld	a4,24(a1)
   1a1c6:	22070fe3          	beqz	a4,1ac04 <_svfiprintf_r+0xa6e>
   1a1ca:	0f010a93          	add	s5,sp,240
   1a1ce:	f8d6                	sd	s5,112(sp)
   1a1d0:	e102                	sd	zero,128(sp)
   1a1d2:	dc82                	sw	zero,120(sp)
   1a1d4:	4481                	li	s1,0
   1a1d6:	8456                	mv	s0,s5
   1a1d8:	e402                	sd	zero,8(sp)
   1a1da:	fc02                	sd	zero,56(sp)
   1a1dc:	f802                	sd	zero,48(sp)
   1a1de:	e082                	sd	zero,64(sp)
   1a1e0:	4d01                	li	s10,0
   1a1e2:	00003c97          	auipc	s9,0x3
   1a1e6:	3eac8c93          	add	s9,s9,1002 # 1d5cc <blanks.1+0x64>
   1a1ea:	49c1                	li	s3,16
   1a1ec:	00003b97          	auipc	s7,0x3
   1a1f0:	54cb8b93          	add	s7,s7,1356 # 1d738 <zeroes.0>
   1a1f4:	8ee2                	mv	t4,s8
   1a1f6:	000dc783          	lbu	a5,0(s11)
   1a1fa:	16078663          	beqz	a5,1a366 <_svfiprintf_r+0x1d0>
   1a1fe:	896e                	mv	s2,s11
   1a200:	02500713          	li	a4,37
   1a204:	1ee78863          	beq	a5,a4,1a3f4 <_svfiprintf_r+0x25e>
   1a208:	00194783          	lbu	a5,1(s2)
   1a20c:	0905                	add	s2,s2,1
   1a20e:	fbfd                	bnez	a5,1a204 <_svfiprintf_r+0x6e>
   1a210:	41b90c3b          	subw	s8,s2,s11
   1a214:	140c0963          	beqz	s8,1a366 <_svfiprintf_r+0x1d0>
   1a218:	57e6                	lw	a5,120(sp)
   1a21a:	94e2                	add	s1,s1,s8
   1a21c:	01b43023          	sd	s11,0(s0)
   1a220:	0017871b          	addw	a4,a5,1
   1a224:	01843423          	sd	s8,8(s0)
   1a228:	e126                	sd	s1,128(sp)
   1a22a:	dcba                	sw	a4,120(sp)
   1a22c:	479d                	li	a5,7
   1a22e:	0441                	add	s0,s0,16
   1a230:	1ce7c963          	blt	a5,a4,1a402 <_svfiprintf_r+0x26c>
   1a234:	00094783          	lbu	a5,0(s2)
   1a238:	018d0d3b          	addw	s10,s10,s8
   1a23c:	12078563          	beqz	a5,1a366 <_svfiprintf_r+0x1d0>
   1a240:	00194683          	lbu	a3,1(s2)
   1a244:	00190d93          	add	s11,s2,1
   1a248:	060103a3          	sb	zero,103(sp)
   1a24c:	597d                	li	s2,-1
   1a24e:	4701                	li	a4,0
   1a250:	4781                	li	a5,0
   1a252:	05a00c13          	li	s8,90
   1a256:	0d85                	add	s11,s11,1
   1a258:	2681                	sext.w	a3,a3
   1a25a:	fe06861b          	addw	a2,a3,-32
   1a25e:	0006059b          	sext.w	a1,a2
   1a262:	04bc6363          	bltu	s8,a1,1a2a8 <_svfiprintf_r+0x112>
   1a266:	02061593          	sll	a1,a2,0x20
   1a26a:	01e5d613          	srl	a2,a1,0x1e
   1a26e:	9666                	add	a2,a2,s9
   1a270:	4210                	lw	a2,0(a2)
   1a272:	9666                	add	a2,a2,s9
   1a274:	8602                	jr	a2
   1a276:	4701                	li	a4,0
   1a278:	4525                	li	a0,9
   1a27a:	000dc583          	lbu	a1,0(s11)
   1a27e:	0027161b          	sllw	a2,a4,0x2
   1a282:	9f31                	addw	a4,a4,a2
   1a284:	fd06869b          	addw	a3,a3,-48
   1a288:	0017171b          	sllw	a4,a4,0x1
   1a28c:	fd05861b          	addw	a2,a1,-48
   1a290:	9f35                	addw	a4,a4,a3
   1a292:	0d85                	add	s11,s11,1
   1a294:	0005869b          	sext.w	a3,a1
   1a298:	fec571e3          	bgeu	a0,a2,1a27a <_svfiprintf_r+0xe4>
   1a29c:	fe06861b          	addw	a2,a3,-32
   1a2a0:	0006059b          	sext.w	a1,a2
   1a2a4:	fcbc71e3          	bgeu	s8,a1,1a266 <_svfiprintf_r+0xd0>
   1a2a8:	cedd                	beqz	a3,1a366 <_svfiprintf_r+0x1d0>
   1a2aa:	08d10423          	sb	a3,136(sp)
   1a2ae:	060103a3          	sb	zero,103(sp)
   1a2b2:	4885                	li	a7,1
   1a2b4:	4805                	li	a6,1
   1a2b6:	08810c13          	add	s8,sp,136
   1a2ba:	4901                	li	s2,0
   1a2bc:	0027ff93          	and	t6,a5,2
   1a2c0:	000f8363          	beqz	t6,1a2c6 <_svfiprintf_r+0x130>
   1a2c4:	2889                	addw	a7,a7,2
   1a2c6:	0847ff13          	and	t5,a5,132
   1a2ca:	5666                	lw	a2,120(sp)
   1a2cc:	000f1663          	bnez	t5,1a2d8 <_svfiprintf_r+0x142>
   1a2d0:	411706bb          	subw	a3,a4,a7
   1a2d4:	64d04363          	bgtz	a3,1a91a <_svfiprintf_r+0x784>
   1a2d8:	06714683          	lbu	a3,103(sp)
   1a2dc:	ce91                	beqz	a3,1a2f8 <_svfiprintf_r+0x162>
   1a2de:	06710593          	add	a1,sp,103
   1a2e2:	e00c                	sd	a1,0(s0)
   1a2e4:	2605                	addw	a2,a2,1
   1a2e6:	0485                	add	s1,s1,1
   1a2e8:	4585                	li	a1,1
   1a2ea:	e40c                	sd	a1,8(s0)
   1a2ec:	e126                	sd	s1,128(sp)
   1a2ee:	dcb2                	sw	a2,120(sp)
   1a2f0:	469d                	li	a3,7
   1a2f2:	0441                	add	s0,s0,16
   1a2f4:	12c6c263          	blt	a3,a2,1a418 <_svfiprintf_r+0x282>
   1a2f8:	000f8e63          	beqz	t6,1a314 <_svfiprintf_r+0x17e>
   1a2fc:	10ac                	add	a1,sp,104
   1a2fe:	e00c                	sd	a1,0(s0)
   1a300:	2605                	addw	a2,a2,1
   1a302:	0489                	add	s1,s1,2
   1a304:	4589                	li	a1,2
   1a306:	e40c                	sd	a1,8(s0)
   1a308:	e126                	sd	s1,128(sp)
   1a30a:	dcb2                	sw	a2,120(sp)
   1a30c:	469d                	li	a3,7
   1a30e:	0441                	add	s0,s0,16
   1a310:	6cc6c563          	blt	a3,a2,1a9da <_svfiprintf_r+0x844>
   1a314:	08000693          	li	a3,128
   1a318:	42df0363          	beq	t5,a3,1a73e <_svfiprintf_r+0x5a8>
   1a31c:	4109093b          	subw	s2,s2,a6
   1a320:	4d204e63          	bgtz	s2,1a7fc <_svfiprintf_r+0x666>
   1a324:	0016059b          	addw	a1,a2,1
   1a328:	94c2                	add	s1,s1,a6
   1a32a:	01843023          	sd	s8,0(s0)
   1a32e:	01043423          	sd	a6,8(s0)
   1a332:	e126                	sd	s1,128(sp)
   1a334:	dcae                	sw	a1,120(sp)
   1a336:	469d                	li	a3,7
   1a338:	0441                	add	s0,s0,16
   1a33a:	56b6c863          	blt	a3,a1,1a8aa <_svfiprintf_r+0x714>
   1a33e:	8b91                	and	a5,a5,4
   1a340:	c789                	beqz	a5,1a34a <_svfiprintf_r+0x1b4>
   1a342:	4117093b          	subw	s2,a4,a7
   1a346:	6d204163          	bgtz	s2,1aa08 <_svfiprintf_r+0x872>
   1a34a:	87ba                	mv	a5,a4
   1a34c:	01175363          	bge	a4,a7,1a352 <_svfiprintf_r+0x1bc>
   1a350:	87c6                	mv	a5,a7
   1a352:	01a78d3b          	addw	s10,a5,s10
   1a356:	56049c63          	bnez	s1,1a8ce <_svfiprintf_r+0x738>
   1a35a:	000dc783          	lbu	a5,0(s11)
   1a35e:	dc82                	sw	zero,120(sp)
   1a360:	8456                	mv	s0,s5
   1a362:	e8079ee3          	bnez	a5,1a1fe <_svfiprintf_r+0x68>
   1a366:	1a049be3          	bnez	s1,1ad1c <_svfiprintf_r+0xb86>
   1a36a:	010a5783          	lhu	a5,16(s4)
   1a36e:	0407f793          	and	a5,a5,64
   1a372:	1c079ee3          	bnez	a5,1ad4e <_svfiprintf_r+0xbb8>
   1a376:	60fe                	ld	ra,472(sp)
   1a378:	645e                	ld	s0,464(sp)
   1a37a:	64be                	ld	s1,456(sp)
   1a37c:	691e                	ld	s2,448(sp)
   1a37e:	79fa                	ld	s3,440(sp)
   1a380:	7a5a                	ld	s4,432(sp)
   1a382:	7aba                	ld	s5,424(sp)
   1a384:	7b1a                	ld	s6,416(sp)
   1a386:	6bfa                	ld	s7,408(sp)
   1a388:	6c5a                	ld	s8,400(sp)
   1a38a:	6cba                	ld	s9,392(sp)
   1a38c:	7df6                	ld	s11,376(sp)
   1a38e:	856a                	mv	a0,s10
   1a390:	6d1a                	ld	s10,384(sp)
   1a392:	613d                	add	sp,sp,480
   1a394:	8082                	ret
   1a396:	0107e793          	or	a5,a5,16
   1a39a:	000dc683          	lbu	a3,0(s11)
   1a39e:	2781                	sext.w	a5,a5
   1a3a0:	bd5d                	j	1a256 <_svfiprintf_r+0xc0>
   1a3a2:	0107e793          	or	a5,a5,16
   1a3a6:	2781                	sext.w	a5,a5
   1a3a8:	0207f693          	and	a3,a5,32
   1a3ac:	008e8313          	add	t1,t4,8
   1a3b0:	cec1                	beqz	a3,1a448 <_svfiprintf_r+0x2b2>
   1a3b2:	000eb603          	ld	a2,0(t4)
   1a3b6:	86b2                	mv	a3,a2
   1a3b8:	0a064863          	bltz	a2,1a468 <_svfiprintf_r+0x2d2>
   1a3bc:	567d                	li	a2,-1
   1a3be:	0cc90163          	beq	s2,a2,1a480 <_svfiprintf_r+0x2ea>
   1a3c2:	f7f7f793          	and	a5,a5,-129
   1a3c6:	2781                	sext.w	a5,a5
   1a3c8:	eec5                	bnez	a3,1a480 <_svfiprintf_r+0x2ea>
   1a3ca:	160915e3          	bnez	s2,1ad34 <_svfiprintf_r+0xb9e>
   1a3ce:	4881                	li	a7,0
   1a3d0:	4801                	li	a6,0
   1a3d2:	8e9a                	mv	t4,t1
   1a3d4:	0ec10c13          	add	s8,sp,236
   1a3d8:	a0f1                	j	1a4a4 <_svfiprintf_r+0x30e>
   1a3da:	000ea703          	lw	a4,0(t4)
   1a3de:	0ea1                	add	t4,t4,8
   1a3e0:	2c075f63          	bgez	a4,1a6be <_svfiprintf_r+0x528>
   1a3e4:	40e0073b          	negw	a4,a4
   1a3e8:	0047e793          	or	a5,a5,4
   1a3ec:	000dc683          	lbu	a3,0(s11)
   1a3f0:	2781                	sext.w	a5,a5
   1a3f2:	b595                	j	1a256 <_svfiprintf_r+0xc0>
   1a3f4:	41b90c3b          	subw	s8,s2,s11
   1a3f8:	e20c10e3          	bnez	s8,1a218 <_svfiprintf_r+0x82>
   1a3fc:	00094783          	lbu	a5,0(s2)
   1a400:	bd35                	j	1a23c <_svfiprintf_r+0xa6>
   1a402:	1890                	add	a2,sp,112
   1a404:	85d2                	mv	a1,s4
   1a406:	855a                	mv	a0,s6
   1a408:	e876                	sd	t4,16(sp)
   1a40a:	c37ff0ef          	jal	1a040 <__ssprint_r>
   1a40e:	fd31                	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a410:	648a                	ld	s1,128(sp)
   1a412:	6ec2                	ld	t4,16(sp)
   1a414:	8456                	mv	s0,s5
   1a416:	bd39                	j	1a234 <_svfiprintf_r+0x9e>
   1a418:	1890                	add	a2,sp,112
   1a41a:	85d2                	mv	a1,s4
   1a41c:	855a                	mv	a0,s6
   1a41e:	ecf6                	sd	t4,88(sp)
   1a420:	e8c2                	sd	a6,80(sp)
   1a422:	e4c6                	sd	a7,72(sp)
   1a424:	f43a                	sd	a4,40(sp)
   1a426:	f07a                	sd	t5,32(sp)
   1a428:	ec7e                	sd	t6,24(sp)
   1a42a:	e83e                	sd	a5,16(sp)
   1a42c:	c15ff0ef          	jal	1a040 <__ssprint_r>
   1a430:	fd0d                	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a432:	648a                	ld	s1,128(sp)
   1a434:	5666                	lw	a2,120(sp)
   1a436:	6ee6                	ld	t4,88(sp)
   1a438:	6846                	ld	a6,80(sp)
   1a43a:	68a6                	ld	a7,72(sp)
   1a43c:	7722                	ld	a4,40(sp)
   1a43e:	7f02                	ld	t5,32(sp)
   1a440:	6fe2                	ld	t6,24(sp)
   1a442:	67c2                	ld	a5,16(sp)
   1a444:	8456                	mv	s0,s5
   1a446:	bd4d                	j	1a2f8 <_svfiprintf_r+0x162>
   1a448:	0107f693          	and	a3,a5,16
   1a44c:	f2bd                	bnez	a3,1a3b2 <_svfiprintf_r+0x21c>
   1a44e:	0407f613          	and	a2,a5,64
   1a452:	000ea683          	lw	a3,0(t4)
   1a456:	080604e3          	beqz	a2,1acde <_svfiprintf_r+0xb48>
   1a45a:	0106969b          	sllw	a3,a3,0x10
   1a45e:	4106d69b          	sraw	a3,a3,0x10
   1a462:	8636                	mv	a2,a3
   1a464:	f4065ce3          	bgez	a2,1a3bc <_svfiprintf_r+0x226>
   1a468:	02d00613          	li	a2,45
   1a46c:	06c103a3          	sb	a2,103(sp)
   1a470:	567d                	li	a2,-1
   1a472:	40d006b3          	neg	a3,a3
   1a476:	00c90563          	beq	s2,a2,1a480 <_svfiprintf_r+0x2ea>
   1a47a:	f7f7f793          	and	a5,a5,-129
   1a47e:	2781                	sext.w	a5,a5
   1a480:	4625                	li	a2,9
   1a482:	64d66063          	bltu	a2,a3,1aac2 <_svfiprintf_r+0x92c>
   1a486:	0306869b          	addw	a3,a3,48
   1a48a:	0ff6f693          	zext.b	a3,a3
   1a48e:	8e9a                	mv	t4,t1
   1a490:	0ed105a3          	sb	a3,235(sp)
   1a494:	0009089b          	sext.w	a7,s2
   1a498:	01204363          	bgtz	s2,1a49e <_svfiprintf_r+0x308>
   1a49c:	4885                	li	a7,1
   1a49e:	4805                	li	a6,1
   1a4a0:	0eb10c13          	add	s8,sp,235
   1a4a4:	06714683          	lbu	a3,103(sp)
   1a4a8:	e0068ae3          	beqz	a3,1a2bc <_svfiprintf_r+0x126>
   1a4ac:	2885                	addw	a7,a7,1
   1a4ae:	b539                	j	1a2bc <_svfiprintf_r+0x126>
   1a4b0:	000ebc03          	ld	s8,0(t4)
   1a4b4:	060103a3          	sb	zero,103(sp)
   1a4b8:	0ea1                	add	t4,t4,8
   1a4ba:	7e0c0163          	beqz	s8,1ac9c <_svfiprintf_r+0xb06>
   1a4be:	56fd                	li	a3,-1
   1a4c0:	f076                	sd	t4,32(sp)
   1a4c2:	ec3a                	sd	a4,24(sp)
   1a4c4:	e83e                	sd	a5,16(sp)
   1a4c6:	70d90f63          	beq	s2,a3,1abe4 <_svfiprintf_r+0xa4e>
   1a4ca:	864a                	mv	a2,s2
   1a4cc:	4581                	li	a1,0
   1a4ce:	8562                	mv	a0,s8
   1a4d0:	ed7fa0ef          	jal	153a6 <memchr>
   1a4d4:	67c2                	ld	a5,16(sp)
   1a4d6:	6762                	ld	a4,24(sp)
   1a4d8:	7e82                	ld	t4,32(sp)
   1a4da:	040508e3          	beqz	a0,1ad2a <_svfiprintf_r+0xb94>
   1a4de:	4185083b          	subw	a6,a0,s8
   1a4e2:	fff84893          	not	a7,a6
   1a4e6:	43f8d893          	sra	a7,a7,0x3f
   1a4ea:	0108f8b3          	and	a7,a7,a6
   1a4ee:	4901                	li	s2,0
   1a4f0:	bf55                	j	1a4a4 <_svfiprintf_r+0x30e>
   1a4f2:	000ea683          	lw	a3,0(t4)
   1a4f6:	060103a3          	sb	zero,103(sp)
   1a4fa:	0ea1                	add	t4,t4,8
   1a4fc:	08d10423          	sb	a3,136(sp)
   1a500:	4885                	li	a7,1
   1a502:	4805                	li	a6,1
   1a504:	08810c13          	add	s8,sp,136
   1a508:	bb4d                	j	1a2ba <_svfiprintf_r+0x124>
   1a50a:	0207e793          	or	a5,a5,32
   1a50e:	000dc683          	lbu	a3,0(s11)
   1a512:	2781                	sext.w	a5,a5
   1a514:	b389                	j	1a256 <_svfiprintf_r+0xc0>
   1a516:	76e1                	lui	a3,0xffff8
   1a518:	8306c693          	xor	a3,a3,-2000
   1a51c:	0027e793          	or	a5,a5,2
   1a520:	06d11423          	sh	a3,104(sp)
   1a524:	00002697          	auipc	a3,0x2
   1a528:	58468693          	add	a3,a3,1412 # 1caa8 <__clzdi2+0x8a>
   1a52c:	000eb603          	ld	a2,0(t4)
   1a530:	2781                	sext.w	a5,a5
   1a532:	0ea1                	add	t4,t4,8
   1a534:	e436                	sd	a3,8(sp)
   1a536:	060103a3          	sb	zero,103(sp)
   1a53a:	56fd                	li	a3,-1
   1a53c:	3ad90863          	beq	s2,a3,1a8ec <_svfiprintf_r+0x756>
   1a540:	f7f7f693          	and	a3,a5,-129
   1a544:	2681                	sext.w	a3,a3
   1a546:	38061f63          	bnez	a2,1a8e4 <_svfiprintf_r+0x74e>
   1a54a:	883e                	mv	a6,a5
   1a54c:	4609                	li	a2,2
   1a54e:	87b6                	mv	a5,a3
   1a550:	06091063          	bnez	s2,1a5b0 <_svfiprintf_r+0x41a>
   1a554:	56061263          	bnez	a2,1aab8 <_svfiprintf_r+0x922>
   1a558:	00187813          	and	a6,a6,1
   1a55c:	5c080163          	beqz	a6,1ab1e <_svfiprintf_r+0x988>
   1a560:	03000693          	li	a3,48
   1a564:	0ed105a3          	sb	a3,235(sp)
   1a568:	88c2                	mv	a7,a6
   1a56a:	0eb10c13          	add	s8,sp,235
   1a56e:	bf1d                	j	1a4a4 <_svfiprintf_r+0x30e>
   1a570:	0107e693          	or	a3,a5,16
   1a574:	2681                	sext.w	a3,a3
   1a576:	0206f793          	and	a5,a3,32
   1a57a:	008e8513          	add	a0,t4,8
   1a57e:	e789                	bnez	a5,1a588 <_svfiprintf_r+0x3f2>
   1a580:	0106f793          	and	a5,a3,16
   1a584:	5c078763          	beqz	a5,1ab52 <_svfiprintf_r+0x9bc>
   1a588:	000eb603          	ld	a2,0(t4)
   1a58c:	bff6f793          	and	a5,a3,-1025
   1a590:	060103a3          	sb	zero,103(sp)
   1a594:	55fd                	li	a1,-1
   1a596:	2781                	sext.w	a5,a5
   1a598:	8eaa                	mv	t4,a0
   1a59a:	02b90263          	beq	s2,a1,1a5be <_svfiprintf_r+0x428>
   1a59e:	b7f6f693          	and	a3,a3,-1153
   1a5a2:	2681                	sext.w	a3,a3
   1a5a4:	6c061463          	bnez	a2,1ac6c <_svfiprintf_r+0xad6>
   1a5a8:	883e                	mv	a6,a5
   1a5aa:	87b6                	mv	a5,a3
   1a5ac:	fa0904e3          	beqz	s2,1a554 <_svfiprintf_r+0x3be>
   1a5b0:	4685                	li	a3,1
   1a5b2:	78d60263          	beq	a2,a3,1ad36 <_svfiprintf_r+0xba0>
   1a5b6:	4689                	li	a3,2
   1a5b8:	6ed60f63          	beq	a2,a3,1acb6 <_svfiprintf_r+0xb20>
   1a5bc:	4601                	li	a2,0
   1a5be:	0ec10813          	add	a6,sp,236
   1a5c2:	8c42                	mv	s8,a6
   1a5c4:	00767693          	and	a3,a2,7
   1a5c8:	03068693          	add	a3,a3,48
   1a5cc:	fedc0fa3          	sb	a3,-1(s8)
   1a5d0:	820d                	srl	a2,a2,0x3
   1a5d2:	85e2                	mv	a1,s8
   1a5d4:	1c7d                	add	s8,s8,-1
   1a5d6:	f67d                	bnez	a2,1a5c4 <_svfiprintf_r+0x42e>
   1a5d8:	0017f613          	and	a2,a5,1
   1a5dc:	4c060563          	beqz	a2,1aaa6 <_svfiprintf_r+0x910>
   1a5e0:	03000613          	li	a2,48
   1a5e4:	4cc68163          	beq	a3,a2,1aaa6 <_svfiprintf_r+0x910>
   1a5e8:	15f9                	add	a1,a1,-2
   1a5ea:	40b8083b          	subw	a6,a6,a1
   1a5ee:	fecc0fa3          	sb	a2,-1(s8)
   1a5f2:	0008089b          	sext.w	a7,a6
   1a5f6:	57284763          	blt	a6,s2,1ab64 <_svfiprintf_r+0x9ce>
   1a5fa:	8c2e                	mv	s8,a1
   1a5fc:	b565                	j	1a4a4 <_svfiprintf_r+0x30e>
   1a5fe:	0107e813          	or	a6,a5,16
   1a602:	2801                	sext.w	a6,a6
   1a604:	02087793          	and	a5,a6,32
   1a608:	008e8313          	add	t1,t4,8
   1a60c:	e789                	bnez	a5,1a616 <_svfiprintf_r+0x480>
   1a60e:	01087793          	and	a5,a6,16
   1a612:	52078763          	beqz	a5,1ab40 <_svfiprintf_r+0x9aa>
   1a616:	000eb683          	ld	a3,0(t4)
   1a61a:	060103a3          	sb	zero,103(sp)
   1a61e:	57fd                	li	a5,-1
   1a620:	64f90b63          	beq	s2,a5,1ac76 <_svfiprintf_r+0xae0>
   1a624:	f7f87793          	and	a5,a6,-129
   1a628:	2781                	sext.w	a5,a5
   1a62a:	e4069be3          	bnez	a3,1a480 <_svfiprintf_r+0x2ea>
   1a62e:	8e9a                	mv	t4,t1
   1a630:	4605                	li	a2,1
   1a632:	bf39                	j	1a550 <_svfiprintf_r+0x3ba>
   1a634:	0807e793          	or	a5,a5,128
   1a638:	000dc683          	lbu	a3,0(s11)
   1a63c:	2781                	sext.w	a5,a5
   1a63e:	b921                	j	1a256 <_svfiprintf_r+0xc0>
   1a640:	000dc683          	lbu	a3,0(s11)
   1a644:	02a00513          	li	a0,42
   1a648:	001d8613          	add	a2,s11,1
   1a64c:	70a68463          	beq	a3,a0,1ad54 <_svfiprintf_r+0xbbe>
   1a650:	fd06859b          	addw	a1,a3,-48
   1a654:	4825                	li	a6,9
   1a656:	8db2                	mv	s11,a2
   1a658:	4901                	li	s2,0
   1a65a:	4525                	li	a0,9
   1a65c:	beb86fe3          	bltu	a6,a1,1a25a <_svfiprintf_r+0xc4>
   1a660:	000dc683          	lbu	a3,0(s11)
   1a664:	0029161b          	sllw	a2,s2,0x2
   1a668:	0126093b          	addw	s2,a2,s2
   1a66c:	0019191b          	sllw	s2,s2,0x1
   1a670:	00b9093b          	addw	s2,s2,a1
   1a674:	fd06859b          	addw	a1,a3,-48
   1a678:	0d85                	add	s11,s11,1
   1a67a:	feb573e3          	bgeu	a0,a1,1a660 <_svfiprintf_r+0x4ca>
   1a67e:	bef1                	j	1a25a <_svfiprintf_r+0xc4>
   1a680:	02b00613          	li	a2,43
   1a684:	000dc683          	lbu	a3,0(s11)
   1a688:	06c103a3          	sb	a2,103(sp)
   1a68c:	b6e9                	j	1a256 <_svfiprintf_r+0xc0>
   1a68e:	855a                	mv	a0,s6
   1a690:	f076                	sd	t4,32(sp)
   1a692:	ec3a                	sd	a4,24(sp)
   1a694:	e83e                	sd	a5,16(sp)
   1a696:	d70fa0ef          	jal	14c06 <_localeconv_r>
   1a69a:	651c                	ld	a5,8(a0)
   1a69c:	853e                	mv	a0,a5
   1a69e:	e0be                	sd	a5,64(sp)
   1a6a0:	d3bfb0ef          	jal	163da <strlen>
   1a6a4:	86aa                	mv	a3,a0
   1a6a6:	855a                	mv	a0,s6
   1a6a8:	f836                	sd	a3,48(sp)
   1a6aa:	d5cfa0ef          	jal	14c06 <_localeconv_r>
   1a6ae:	6910                	ld	a2,16(a0)
   1a6b0:	76c2                	ld	a3,48(sp)
   1a6b2:	67c2                	ld	a5,16(sp)
   1a6b4:	fc32                	sd	a2,56(sp)
   1a6b6:	6762                	ld	a4,24(sp)
   1a6b8:	7e82                	ld	t4,32(sp)
   1a6ba:	46069663          	bnez	a3,1ab26 <_svfiprintf_r+0x990>
   1a6be:	000dc683          	lbu	a3,0(s11)
   1a6c2:	be51                	j	1a256 <_svfiprintf_r+0xc0>
   1a6c4:	0017e793          	or	a5,a5,1
   1a6c8:	000dc683          	lbu	a3,0(s11)
   1a6cc:	2781                	sext.w	a5,a5
   1a6ce:	b661                	j	1a256 <_svfiprintf_r+0xc0>
   1a6d0:	06714603          	lbu	a2,103(sp)
   1a6d4:	000dc683          	lbu	a3,0(s11)
   1a6d8:	b6061fe3          	bnez	a2,1a256 <_svfiprintf_r+0xc0>
   1a6dc:	02000613          	li	a2,32
   1a6e0:	06c103a3          	sb	a2,103(sp)
   1a6e4:	be8d                	j	1a256 <_svfiprintf_r+0xc0>
   1a6e6:	0207f713          	and	a4,a5,32
   1a6ea:	000eb683          	ld	a3,0(t4)
   1a6ee:	e305                	bnez	a4,1a70e <_svfiprintf_r+0x578>
   1a6f0:	0107f713          	and	a4,a5,16
   1a6f4:	ef09                	bnez	a4,1a70e <_svfiprintf_r+0x578>
   1a6f6:	0407f713          	and	a4,a5,64
   1a6fa:	60071c63          	bnez	a4,1ad12 <_svfiprintf_r+0xb7c>
   1a6fe:	2007f793          	and	a5,a5,512
   1a702:	62078e63          	beqz	a5,1ad3e <_svfiprintf_r+0xba8>
   1a706:	01a68023          	sb	s10,0(a3)
   1a70a:	0ea1                	add	t4,t4,8
   1a70c:	b4ed                	j	1a1f6 <_svfiprintf_r+0x60>
   1a70e:	01a6b023          	sd	s10,0(a3)
   1a712:	0ea1                	add	t4,t4,8
   1a714:	b4cd                	j	1a1f6 <_svfiprintf_r+0x60>
   1a716:	000dc683          	lbu	a3,0(s11)
   1a71a:	06c00613          	li	a2,108
   1a71e:	56c68763          	beq	a3,a2,1ac8c <_svfiprintf_r+0xaf6>
   1a722:	0107e793          	or	a5,a5,16
   1a726:	2781                	sext.w	a5,a5
   1a728:	b63d                	j	1a256 <_svfiprintf_r+0xc0>
   1a72a:	000dc683          	lbu	a3,0(s11)
   1a72e:	06800613          	li	a2,104
   1a732:	54c68563          	beq	a3,a2,1ac7c <_svfiprintf_r+0xae6>
   1a736:	0407e793          	or	a5,a5,64
   1a73a:	2781                	sext.w	a5,a5
   1a73c:	be29                	j	1a256 <_svfiprintf_r+0xc0>
   1a73e:	411706bb          	subw	a3,a4,a7
   1a742:	bcd05de3          	blez	a3,1a31c <_svfiprintf_r+0x186>
   1a746:	45c1                	li	a1,16
   1a748:	00003e17          	auipc	t3,0x3
   1a74c:	ff0e0e13          	add	t3,t3,-16 # 1d738 <zeroes.0>
   1a750:	06d5d363          	bge	a1,a3,1a7b6 <_svfiprintf_r+0x620>
   1a754:	e83e                	sd	a5,16(sp)
   1a756:	ec3a                	sd	a4,24(sp)
   1a758:	87a2                	mv	a5,s0
   1a75a:	8726                	mv	a4,s1
   1a75c:	4341                	li	t1,16
   1a75e:	4f1d                	li	t5,7
   1a760:	f046                	sd	a7,32(sp)
   1a762:	f442                	sd	a6,40(sp)
   1a764:	8436                	mv	s0,a3
   1a766:	e4f6                	sd	t4,72(sp)
   1a768:	84f2                	mv	s1,t3
   1a76a:	a021                	j	1a772 <_svfiprintf_r+0x5dc>
   1a76c:	3441                	addw	s0,s0,-16
   1a76e:	02835b63          	bge	t1,s0,1a7a4 <_svfiprintf_r+0x60e>
   1a772:	2605                	addw	a2,a2,1
   1a774:	0741                	add	a4,a4,16 # ffffffff80000010 <__BSS_END__+0xffffffff7ffe04a0>
   1a776:	e384                	sd	s1,0(a5)
   1a778:	0067b423          	sd	t1,8(a5)
   1a77c:	e13a                	sd	a4,128(sp)
   1a77e:	dcb2                	sw	a2,120(sp)
   1a780:	07c1                	add	a5,a5,16
   1a782:	fecf55e3          	bge	t5,a2,1a76c <_svfiprintf_r+0x5d6>
   1a786:	1890                	add	a2,sp,112
   1a788:	85d2                	mv	a1,s4
   1a78a:	855a                	mv	a0,s6
   1a78c:	8b5ff0ef          	jal	1a040 <__ssprint_r>
   1a790:	bc051de3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a794:	4341                	li	t1,16
   1a796:	3441                	addw	s0,s0,-16
   1a798:	670a                	ld	a4,128(sp)
   1a79a:	5666                	lw	a2,120(sp)
   1a79c:	87d6                	mv	a5,s5
   1a79e:	4f1d                	li	t5,7
   1a7a0:	fc8349e3          	blt	t1,s0,1a772 <_svfiprintf_r+0x5dc>
   1a7a4:	86a2                	mv	a3,s0
   1a7a6:	8e26                	mv	t3,s1
   1a7a8:	843e                	mv	s0,a5
   1a7aa:	84ba                	mv	s1,a4
   1a7ac:	7882                	ld	a7,32(sp)
   1a7ae:	7822                	ld	a6,40(sp)
   1a7b0:	67c2                	ld	a5,16(sp)
   1a7b2:	6ea6                	ld	t4,72(sp)
   1a7b4:	6762                	ld	a4,24(sp)
   1a7b6:	94b6                	add	s1,s1,a3
   1a7b8:	2605                	addw	a2,a2,1
   1a7ba:	e414                	sd	a3,8(s0)
   1a7bc:	01c43023          	sd	t3,0(s0)
   1a7c0:	e126                	sd	s1,128(sp)
   1a7c2:	dcb2                	sw	a2,120(sp)
   1a7c4:	469d                	li	a3,7
   1a7c6:	0441                	add	s0,s0,16
   1a7c8:	b4c6dae3          	bge	a3,a2,1a31c <_svfiprintf_r+0x186>
   1a7cc:	1890                	add	a2,sp,112
   1a7ce:	85d2                	mv	a1,s4
   1a7d0:	855a                	mv	a0,s6
   1a7d2:	e4f6                	sd	t4,72(sp)
   1a7d4:	f442                	sd	a6,40(sp)
   1a7d6:	f046                	sd	a7,32(sp)
   1a7d8:	ec3a                	sd	a4,24(sp)
   1a7da:	e83e                	sd	a5,16(sp)
   1a7dc:	865ff0ef          	jal	1a040 <__ssprint_r>
   1a7e0:	b80515e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a7e4:	7822                	ld	a6,40(sp)
   1a7e6:	648a                	ld	s1,128(sp)
   1a7e8:	5666                	lw	a2,120(sp)
   1a7ea:	4109093b          	subw	s2,s2,a6
   1a7ee:	6ea6                	ld	t4,72(sp)
   1a7f0:	7882                	ld	a7,32(sp)
   1a7f2:	6762                	ld	a4,24(sp)
   1a7f4:	67c2                	ld	a5,16(sp)
   1a7f6:	8456                	mv	s0,s5
   1a7f8:	b32056e3          	blez	s2,1a324 <_svfiprintf_r+0x18e>
   1a7fc:	00003e17          	auipc	t3,0x3
   1a800:	f3ce0e13          	add	t3,t3,-196 # 1d738 <zeroes.0>
   1a804:	0729d263          	bge	s3,s2,1a868 <_svfiprintf_r+0x6d2>
   1a808:	e83e                	sd	a5,16(sp)
   1a80a:	ec3a                	sd	a4,24(sp)
   1a80c:	87a2                	mv	a5,s0
   1a80e:	8726                	mv	a4,s1
   1a810:	844a                	mv	s0,s2
   1a812:	431d                	li	t1,7
   1a814:	f046                	sd	a7,32(sp)
   1a816:	f442                	sd	a6,40(sp)
   1a818:	84f6                	mv	s1,t4
   1a81a:	895e                	mv	s2,s7
   1a81c:	a021                	j	1a824 <_svfiprintf_r+0x68e>
   1a81e:	3441                	addw	s0,s0,-16
   1a820:	0289db63          	bge	s3,s0,1a856 <_svfiprintf_r+0x6c0>
   1a824:	2605                	addw	a2,a2,1
   1a826:	0741                	add	a4,a4,16
   1a828:	0177b023          	sd	s7,0(a5)
   1a82c:	0137b423          	sd	s3,8(a5)
   1a830:	e13a                	sd	a4,128(sp)
   1a832:	dcb2                	sw	a2,120(sp)
   1a834:	07c1                	add	a5,a5,16
   1a836:	fec354e3          	bge	t1,a2,1a81e <_svfiprintf_r+0x688>
   1a83a:	1890                	add	a2,sp,112
   1a83c:	85d2                	mv	a1,s4
   1a83e:	855a                	mv	a0,s6
   1a840:	801ff0ef          	jal	1a040 <__ssprint_r>
   1a844:	b20513e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a848:	3441                	addw	s0,s0,-16
   1a84a:	670a                	ld	a4,128(sp)
   1a84c:	5666                	lw	a2,120(sp)
   1a84e:	87d6                	mv	a5,s5
   1a850:	431d                	li	t1,7
   1a852:	fc89c9e3          	blt	s3,s0,1a824 <_svfiprintf_r+0x68e>
   1a856:	8ea6                	mv	t4,s1
   1a858:	8e4a                	mv	t3,s2
   1a85a:	84ba                	mv	s1,a4
   1a85c:	8922                	mv	s2,s0
   1a85e:	7882                	ld	a7,32(sp)
   1a860:	843e                	mv	s0,a5
   1a862:	7822                	ld	a6,40(sp)
   1a864:	6762                	ld	a4,24(sp)
   1a866:	67c2                	ld	a5,16(sp)
   1a868:	2605                	addw	a2,a2,1
   1a86a:	94ca                	add	s1,s1,s2
   1a86c:	01c43023          	sd	t3,0(s0)
   1a870:	01243423          	sd	s2,8(s0)
   1a874:	e126                	sd	s1,128(sp)
   1a876:	dcb2                	sw	a2,120(sp)
   1a878:	469d                	li	a3,7
   1a87a:	0441                	add	s0,s0,16
   1a87c:	aac6d4e3          	bge	a3,a2,1a324 <_svfiprintf_r+0x18e>
   1a880:	1890                	add	a2,sp,112
   1a882:	85d2                	mv	a1,s4
   1a884:	855a                	mv	a0,s6
   1a886:	e4f6                	sd	t4,72(sp)
   1a888:	f442                	sd	a6,40(sp)
   1a88a:	f046                	sd	a7,32(sp)
   1a88c:	ec3a                	sd	a4,24(sp)
   1a88e:	e83e                	sd	a5,16(sp)
   1a890:	fb0ff0ef          	jal	1a040 <__ssprint_r>
   1a894:	ac051be3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a898:	648a                	ld	s1,128(sp)
   1a89a:	5666                	lw	a2,120(sp)
   1a89c:	6ea6                	ld	t4,72(sp)
   1a89e:	7822                	ld	a6,40(sp)
   1a8a0:	7882                	ld	a7,32(sp)
   1a8a2:	6762                	ld	a4,24(sp)
   1a8a4:	67c2                	ld	a5,16(sp)
   1a8a6:	8456                	mv	s0,s5
   1a8a8:	bcb5                	j	1a324 <_svfiprintf_r+0x18e>
   1a8aa:	1890                	add	a2,sp,112
   1a8ac:	85d2                	mv	a1,s4
   1a8ae:	855a                	mv	a0,s6
   1a8b0:	f476                	sd	t4,40(sp)
   1a8b2:	f046                	sd	a7,32(sp)
   1a8b4:	ec3a                	sd	a4,24(sp)
   1a8b6:	e83e                	sd	a5,16(sp)
   1a8b8:	f88ff0ef          	jal	1a040 <__ssprint_r>
   1a8bc:	aa0517e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a8c0:	648a                	ld	s1,128(sp)
   1a8c2:	7ea2                	ld	t4,40(sp)
   1a8c4:	7882                	ld	a7,32(sp)
   1a8c6:	6762                	ld	a4,24(sp)
   1a8c8:	67c2                	ld	a5,16(sp)
   1a8ca:	8456                	mv	s0,s5
   1a8cc:	bc8d                	j	1a33e <_svfiprintf_r+0x1a8>
   1a8ce:	1890                	add	a2,sp,112
   1a8d0:	85d2                	mv	a1,s4
   1a8d2:	855a                	mv	a0,s6
   1a8d4:	e876                	sd	t4,16(sp)
   1a8d6:	f6aff0ef          	jal	1a040 <__ssprint_r>
   1a8da:	a80518e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a8de:	648a                	ld	s1,128(sp)
   1a8e0:	6ec2                	ld	t4,16(sp)
   1a8e2:	bca5                	j	1a35a <_svfiprintf_r+0x1c4>
   1a8e4:	87b6                	mv	a5,a3
   1a8e6:	4689                	li	a3,2
   1a8e8:	cc068be3          	beqz	a3,1a5be <_svfiprintf_r+0x428>
   1a8ec:	65a2                	ld	a1,8(sp)
   1a8ee:	0ec10813          	add	a6,sp,236
   1a8f2:	8c42                	mv	s8,a6
   1a8f4:	00f67693          	and	a3,a2,15
   1a8f8:	96ae                	add	a3,a3,a1
   1a8fa:	0006c683          	lbu	a3,0(a3)
   1a8fe:	8211                	srl	a2,a2,0x4
   1a900:	1c7d                	add	s8,s8,-1
   1a902:	00dc0023          	sb	a3,0(s8)
   1a906:	f67d                	bnez	a2,1a8f4 <_svfiprintf_r+0x75e>
   1a908:	4188083b          	subw	a6,a6,s8
   1a90c:	0009089b          	sext.w	a7,s2
   1a910:	b9095ae3          	bge	s2,a6,1a4a4 <_svfiprintf_r+0x30e>
   1a914:	0008089b          	sext.w	a7,a6
   1a918:	b671                	j	1a4a4 <_svfiprintf_r+0x30e>
   1a91a:	45c1                	li	a1,16
   1a91c:	00003317          	auipc	t1,0x3
   1a920:	e2c30313          	add	t1,t1,-468 # 1d748 <blanks.1>
   1a924:	06d5d763          	bge	a1,a3,1a992 <_svfiprintf_r+0x7fc>
   1a928:	e83e                	sd	a5,16(sp)
   1a92a:	f43a                	sd	a4,40(sp)
   1a92c:	87a2                	mv	a5,s0
   1a92e:	8726                	mv	a4,s1
   1a930:	4e41                	li	t3,16
   1a932:	439d                	li	t2,7
   1a934:	ec7e                	sd	t6,24(sp)
   1a936:	f07a                	sd	t5,32(sp)
   1a938:	e4c6                	sd	a7,72(sp)
   1a93a:	e8c2                	sd	a6,80(sp)
   1a93c:	8436                	mv	s0,a3
   1a93e:	ecf6                	sd	t4,88(sp)
   1a940:	849a                	mv	s1,t1
   1a942:	a021                	j	1a94a <_svfiprintf_r+0x7b4>
   1a944:	3441                	addw	s0,s0,-16
   1a946:	028e5b63          	bge	t3,s0,1a97c <_svfiprintf_r+0x7e6>
   1a94a:	2605                	addw	a2,a2,1
   1a94c:	0741                	add	a4,a4,16
   1a94e:	e384                	sd	s1,0(a5)
   1a950:	01c7b423          	sd	t3,8(a5)
   1a954:	e13a                	sd	a4,128(sp)
   1a956:	dcb2                	sw	a2,120(sp)
   1a958:	07c1                	add	a5,a5,16
   1a95a:	fec3d5e3          	bge	t2,a2,1a944 <_svfiprintf_r+0x7ae>
   1a95e:	1890                	add	a2,sp,112
   1a960:	85d2                	mv	a1,s4
   1a962:	855a                	mv	a0,s6
   1a964:	edcff0ef          	jal	1a040 <__ssprint_r>
   1a968:	a00511e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a96c:	4e41                	li	t3,16
   1a96e:	3441                	addw	s0,s0,-16
   1a970:	670a                	ld	a4,128(sp)
   1a972:	5666                	lw	a2,120(sp)
   1a974:	87d6                	mv	a5,s5
   1a976:	439d                	li	t2,7
   1a978:	fc8e49e3          	blt	t3,s0,1a94a <_svfiprintf_r+0x7b4>
   1a97c:	86a2                	mv	a3,s0
   1a97e:	8326                	mv	t1,s1
   1a980:	843e                	mv	s0,a5
   1a982:	84ba                	mv	s1,a4
   1a984:	6fe2                	ld	t6,24(sp)
   1a986:	7f02                	ld	t5,32(sp)
   1a988:	68a6                	ld	a7,72(sp)
   1a98a:	6846                	ld	a6,80(sp)
   1a98c:	67c2                	ld	a5,16(sp)
   1a98e:	6ee6                	ld	t4,88(sp)
   1a990:	7722                	ld	a4,40(sp)
   1a992:	94b6                	add	s1,s1,a3
   1a994:	2605                	addw	a2,a2,1
   1a996:	e414                	sd	a3,8(s0)
   1a998:	00643023          	sd	t1,0(s0)
   1a99c:	e126                	sd	s1,128(sp)
   1a99e:	dcb2                	sw	a2,120(sp)
   1a9a0:	469d                	li	a3,7
   1a9a2:	0441                	add	s0,s0,16
   1a9a4:	92c6dae3          	bge	a3,a2,1a2d8 <_svfiprintf_r+0x142>
   1a9a8:	1890                	add	a2,sp,112
   1a9aa:	85d2                	mv	a1,s4
   1a9ac:	855a                	mv	a0,s6
   1a9ae:	ecf6                	sd	t4,88(sp)
   1a9b0:	e8c2                	sd	a6,80(sp)
   1a9b2:	e4c6                	sd	a7,72(sp)
   1a9b4:	f43a                	sd	a4,40(sp)
   1a9b6:	f07a                	sd	t5,32(sp)
   1a9b8:	ec7e                	sd	t6,24(sp)
   1a9ba:	e83e                	sd	a5,16(sp)
   1a9bc:	e84ff0ef          	jal	1a040 <__ssprint_r>
   1a9c0:	9a0515e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a9c4:	648a                	ld	s1,128(sp)
   1a9c6:	5666                	lw	a2,120(sp)
   1a9c8:	6ee6                	ld	t4,88(sp)
   1a9ca:	6846                	ld	a6,80(sp)
   1a9cc:	68a6                	ld	a7,72(sp)
   1a9ce:	7722                	ld	a4,40(sp)
   1a9d0:	7f02                	ld	t5,32(sp)
   1a9d2:	6fe2                	ld	t6,24(sp)
   1a9d4:	67c2                	ld	a5,16(sp)
   1a9d6:	8456                	mv	s0,s5
   1a9d8:	b201                	j	1a2d8 <_svfiprintf_r+0x142>
   1a9da:	1890                	add	a2,sp,112
   1a9dc:	85d2                	mv	a1,s4
   1a9de:	855a                	mv	a0,s6
   1a9e0:	e8f6                	sd	t4,80(sp)
   1a9e2:	e4c2                	sd	a6,72(sp)
   1a9e4:	f446                	sd	a7,40(sp)
   1a9e6:	f03a                	sd	a4,32(sp)
   1a9e8:	ec7a                	sd	t5,24(sp)
   1a9ea:	e83e                	sd	a5,16(sp)
   1a9ec:	e54ff0ef          	jal	1a040 <__ssprint_r>
   1a9f0:	96051de3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1a9f4:	648a                	ld	s1,128(sp)
   1a9f6:	5666                	lw	a2,120(sp)
   1a9f8:	6ec6                	ld	t4,80(sp)
   1a9fa:	6826                	ld	a6,72(sp)
   1a9fc:	78a2                	ld	a7,40(sp)
   1a9fe:	7702                	ld	a4,32(sp)
   1aa00:	6f62                	ld	t5,24(sp)
   1aa02:	67c2                	ld	a5,16(sp)
   1aa04:	8456                	mv	s0,s5
   1aa06:	b239                	j	1a314 <_svfiprintf_r+0x17e>
   1aa08:	46c1                	li	a3,16
   1aa0a:	57e6                	lw	a5,120(sp)
   1aa0c:	00003317          	auipc	t1,0x3
   1aa10:	d3c30313          	add	t1,t1,-708 # 1d748 <blanks.1>
   1aa14:	0526de63          	bge	a3,s2,1aa70 <_svfiprintf_r+0x8da>
   1aa18:	e83a                	sd	a4,16(sp)
   1aa1a:	86a6                	mv	a3,s1
   1aa1c:	8722                	mv	a4,s0
   1aa1e:	4c41                	li	s8,16
   1aa20:	844a                	mv	s0,s2
   1aa22:	481d                	li	a6,7
   1aa24:	ec46                	sd	a7,24(sp)
   1aa26:	8976                	mv	s2,t4
   1aa28:	849a                	mv	s1,t1
   1aa2a:	a021                	j	1aa32 <_svfiprintf_r+0x89c>
   1aa2c:	3441                	addw	s0,s0,-16
   1aa2e:	028c5a63          	bge	s8,s0,1aa62 <_svfiprintf_r+0x8cc>
   1aa32:	2785                	addw	a5,a5,1
   1aa34:	06c1                	add	a3,a3,16
   1aa36:	e304                	sd	s1,0(a4)
   1aa38:	01873423          	sd	s8,8(a4)
   1aa3c:	e136                	sd	a3,128(sp)
   1aa3e:	dcbe                	sw	a5,120(sp)
   1aa40:	0741                	add	a4,a4,16
   1aa42:	fef855e3          	bge	a6,a5,1aa2c <_svfiprintf_r+0x896>
   1aa46:	1890                	add	a2,sp,112
   1aa48:	85d2                	mv	a1,s4
   1aa4a:	855a                	mv	a0,s6
   1aa4c:	df4ff0ef          	jal	1a040 <__ssprint_r>
   1aa50:	90051de3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1aa54:	3441                	addw	s0,s0,-16
   1aa56:	668a                	ld	a3,128(sp)
   1aa58:	57e6                	lw	a5,120(sp)
   1aa5a:	8756                	mv	a4,s5
   1aa5c:	481d                	li	a6,7
   1aa5e:	fc8c4ae3          	blt	s8,s0,1aa32 <_svfiprintf_r+0x89c>
   1aa62:	8eca                	mv	t4,s2
   1aa64:	68e2                	ld	a7,24(sp)
   1aa66:	8922                	mv	s2,s0
   1aa68:	843a                	mv	s0,a4
   1aa6a:	6742                	ld	a4,16(sp)
   1aa6c:	8326                	mv	t1,s1
   1aa6e:	84b6                	mv	s1,a3
   1aa70:	0017869b          	addw	a3,a5,1
   1aa74:	94ca                	add	s1,s1,s2
   1aa76:	00643023          	sd	t1,0(s0)
   1aa7a:	01243423          	sd	s2,8(s0)
   1aa7e:	e126                	sd	s1,128(sp)
   1aa80:	dcb6                	sw	a3,120(sp)
   1aa82:	479d                	li	a5,7
   1aa84:	8cd7d3e3          	bge	a5,a3,1a34a <_svfiprintf_r+0x1b4>
   1aa88:	1890                	add	a2,sp,112
   1aa8a:	85d2                	mv	a1,s4
   1aa8c:	855a                	mv	a0,s6
   1aa8e:	f076                	sd	t4,32(sp)
   1aa90:	ec46                	sd	a7,24(sp)
   1aa92:	e83a                	sd	a4,16(sp)
   1aa94:	dacff0ef          	jal	1a040 <__ssprint_r>
   1aa98:	8c0519e3          	bnez	a0,1a36a <_svfiprintf_r+0x1d4>
   1aa9c:	648a                	ld	s1,128(sp)
   1aa9e:	7e82                	ld	t4,32(sp)
   1aaa0:	68e2                	ld	a7,24(sp)
   1aaa2:	6742                	ld	a4,16(sp)
   1aaa4:	b05d                	j	1a34a <_svfiprintf_r+0x1b4>
   1aaa6:	4188083b          	subw	a6,a6,s8
   1aaaa:	0008089b          	sext.w	a7,a6
   1aaae:	9f285be3          	bge	a6,s2,1a4a4 <_svfiprintf_r+0x30e>
   1aab2:	0009089b          	sext.w	a7,s2
   1aab6:	b2fd                	j	1a4a4 <_svfiprintf_r+0x30e>
   1aab8:	4881                	li	a7,0
   1aaba:	4801                	li	a6,0
   1aabc:	0ec10c13          	add	s8,sp,236
   1aac0:	b2d5                	j	1a4a4 <_svfiprintf_r+0x30e>
   1aac2:	0ec10813          	add	a6,sp,236
   1aac6:	7fe2                	ld	t6,56(sp)
   1aac8:	4007fe93          	and	t4,a5,1024
   1aacc:	4501                	li	a0,0
   1aace:	85c2                	mv	a1,a6
   1aad0:	48a9                	li	a7,10
   1aad2:	4e25                	li	t3,9
   1aad4:	0ff00f13          	li	t5,255
   1aad8:	a039                	j	1aae6 <_svfiprintf_r+0x950>
   1aada:	0316d633          	divu	a2,a3,a7
   1aade:	02de7763          	bgeu	t3,a3,1ab0c <_svfiprintf_r+0x976>
   1aae2:	86b2                	mv	a3,a2
   1aae4:	85e2                	mv	a1,s8
   1aae6:	fff58c13          	add	s8,a1,-1
   1aaea:	2505                	addw	a0,a0,1
   1aaec:	0316f633          	remu	a2,a3,a7
   1aaf0:	0306061b          	addw	a2,a2,48
   1aaf4:	fec58fa3          	sb	a2,-1(a1)
   1aaf8:	fe0e81e3          	beqz	t4,1aada <_svfiprintf_r+0x944>
   1aafc:	000fc603          	lbu	a2,0(t6)
   1ab00:	fca61de3          	bne	a2,a0,1aada <_svfiprintf_r+0x944>
   1ab04:	fde60be3          	beq	a2,t5,1aada <_svfiprintf_r+0x944>
   1ab08:	10de6e63          	bltu	t3,a3,1ac24 <_svfiprintf_r+0xa8e>
   1ab0c:	4188083b          	subw	a6,a6,s8
   1ab10:	fc7e                	sd	t6,56(sp)
   1ab12:	0008089b          	sext.w	a7,a6
   1ab16:	0d284363          	blt	a6,s2,1abdc <_svfiprintf_r+0xa46>
   1ab1a:	8e9a                	mv	t4,t1
   1ab1c:	b261                	j	1a4a4 <_svfiprintf_r+0x30e>
   1ab1e:	4881                	li	a7,0
   1ab20:	0ec10c13          	add	s8,sp,236
   1ab24:	b241                	j	1a4a4 <_svfiprintf_r+0x30e>
   1ab26:	000dc683          	lbu	a3,0(s11)
   1ab2a:	f2060663          	beqz	a2,1a256 <_svfiprintf_r+0xc0>
   1ab2e:	00064603          	lbu	a2,0(a2)
   1ab32:	f2060263          	beqz	a2,1a256 <_svfiprintf_r+0xc0>
   1ab36:	4007e793          	or	a5,a5,1024
   1ab3a:	2781                	sext.w	a5,a5
   1ab3c:	f1aff06f          	j	1a256 <_svfiprintf_r+0xc0>
   1ab40:	04087793          	and	a5,a6,64
   1ab44:	000ea683          	lw	a3,0(t4)
   1ab48:	16078f63          	beqz	a5,1acc6 <_svfiprintf_r+0xb30>
   1ab4c:	16c2                	sll	a3,a3,0x30
   1ab4e:	92c1                	srl	a3,a3,0x30
   1ab50:	b4e9                	j	1a61a <_svfiprintf_r+0x484>
   1ab52:	0406f793          	and	a5,a3,64
   1ab56:	000ea603          	lw	a2,0(t4)
   1ab5a:	16078c63          	beqz	a5,1acd2 <_svfiprintf_r+0xb3c>
   1ab5e:	1642                	sll	a2,a2,0x30
   1ab60:	9241                	srl	a2,a2,0x30
   1ab62:	b42d                	j	1a58c <_svfiprintf_r+0x3f6>
   1ab64:	0009089b          	sext.w	a7,s2
   1ab68:	8c2e                	mv	s8,a1
   1ab6a:	ba2d                	j	1a4a4 <_svfiprintf_r+0x30e>
   1ab6c:	00002617          	auipc	a2,0x2
   1ab70:	f2460613          	add	a2,a2,-220 # 1ca90 <__clzdi2+0x72>
   1ab74:	e432                	sd	a2,8(sp)
   1ab76:	0207f613          	and	a2,a5,32
   1ab7a:	008e8513          	add	a0,t4,8
   1ab7e:	ee21                	bnez	a2,1abd6 <_svfiprintf_r+0xa40>
   1ab80:	0107f613          	and	a2,a5,16
   1ab84:	ea29                	bnez	a2,1abd6 <_svfiprintf_r+0xa40>
   1ab86:	0407f593          	and	a1,a5,64
   1ab8a:	000ea603          	lw	a2,0(t4)
   1ab8e:	12058663          	beqz	a1,1acba <_svfiprintf_r+0xb24>
   1ab92:	1642                	sll	a2,a2,0x30
   1ab94:	9241                	srl	a2,a2,0x30
   1ab96:	0017f593          	and	a1,a5,1
   1ab9a:	c999                	beqz	a1,1abb0 <_svfiprintf_r+0xa1a>
   1ab9c:	ca11                	beqz	a2,1abb0 <_svfiprintf_r+0xa1a>
   1ab9e:	0027e793          	or	a5,a5,2
   1aba2:	03000593          	li	a1,48
   1aba6:	06b10423          	sb	a1,104(sp)
   1abaa:	06d104a3          	sb	a3,105(sp)
   1abae:	2781                	sext.w	a5,a5
   1abb0:	bff7f793          	and	a5,a5,-1025
   1abb4:	2781                	sext.w	a5,a5
   1abb6:	8eaa                	mv	t4,a0
   1abb8:	babd                	j	1a536 <_svfiprintf_r+0x3a0>
   1abba:	86be                	mv	a3,a5
   1abbc:	ba6d                	j	1a576 <_svfiprintf_r+0x3e0>
   1abbe:	883e                	mv	a6,a5
   1abc0:	b491                	j	1a604 <_svfiprintf_r+0x46e>
   1abc2:	00002617          	auipc	a2,0x2
   1abc6:	ee660613          	add	a2,a2,-282 # 1caa8 <__clzdi2+0x8a>
   1abca:	e432                	sd	a2,8(sp)
   1abcc:	0207f613          	and	a2,a5,32
   1abd0:	008e8513          	add	a0,t4,8
   1abd4:	d655                	beqz	a2,1ab80 <_svfiprintf_r+0x9ea>
   1abd6:	000eb603          	ld	a2,0(t4)
   1abda:	bf75                	j	1ab96 <_svfiprintf_r+0xa00>
   1abdc:	0009089b          	sext.w	a7,s2
   1abe0:	8e9a                	mv	t4,t1
   1abe2:	b0c9                	j	1a4a4 <_svfiprintf_r+0x30e>
   1abe4:	8562                	mv	a0,s8
   1abe6:	ff4fb0ef          	jal	163da <strlen>
   1abea:	0005081b          	sext.w	a6,a0
   1abee:	fff84893          	not	a7,a6
   1abf2:	43f8d893          	sra	a7,a7,0x3f
   1abf6:	7e82                	ld	t4,32(sp)
   1abf8:	67c2                	ld	a5,16(sp)
   1abfa:	6762                	ld	a4,24(sp)
   1abfc:	0108f8b3          	and	a7,a7,a6
   1ac00:	4901                	li	s2,0
   1ac02:	b04d                	j	1a4a4 <_svfiprintf_r+0x30e>
   1ac04:	04000593          	li	a1,64
   1ac08:	9a8fa0ef          	jal	14db0 <_malloc_r>
   1ac0c:	00aa3023          	sd	a0,0(s4)
   1ac10:	00aa3c23          	sd	a0,24(s4)
   1ac14:	12050a63          	beqz	a0,1ad48 <_svfiprintf_r+0xbb2>
   1ac18:	04000713          	li	a4,64
   1ac1c:	02ea2023          	sw	a4,32(s4)
   1ac20:	daaff06f          	j	1a1ca <_svfiprintf_r+0x34>
   1ac24:	e83e                	sd	a5,16(sp)
   1ac26:	77c2                	ld	a5,48(sp)
   1ac28:	6586                	ld	a1,64(sp)
   1ac2a:	e8c2                	sd	a6,80(sp)
   1ac2c:	40fc0c33          	sub	s8,s8,a5
   1ac30:	863e                	mv	a2,a5
   1ac32:	8562                	mv	a0,s8
   1ac34:	e4b6                	sd	a3,72(sp)
   1ac36:	fc1a                	sd	t1,56(sp)
   1ac38:	f476                	sd	t4,40(sp)
   1ac3a:	f03a                	sd	a4,32(sp)
   1ac3c:	ec7e                	sd	t6,24(sp)
   1ac3e:	831fb0ef          	jal	1646e <strncpy>
   1ac42:	6fe2                	ld	t6,24(sp)
   1ac44:	66a6                	ld	a3,72(sp)
   1ac46:	4629                	li	a2,10
   1ac48:	001fc583          	lbu	a1,1(t6)
   1ac4c:	02c6d633          	divu	a2,a3,a2
   1ac50:	67c2                	ld	a5,16(sp)
   1ac52:	00b036b3          	snez	a3,a1
   1ac56:	7702                	ld	a4,32(sp)
   1ac58:	7ea2                	ld	t4,40(sp)
   1ac5a:	7362                	ld	t1,56(sp)
   1ac5c:	6846                	ld	a6,80(sp)
   1ac5e:	9fb6                	add	t6,t6,a3
   1ac60:	4501                	li	a0,0
   1ac62:	48a9                	li	a7,10
   1ac64:	4e25                	li	t3,9
   1ac66:	0ff00f13          	li	t5,255
   1ac6a:	bda5                	j	1aae2 <_svfiprintf_r+0x94c>
   1ac6c:	87b6                	mv	a5,a3
   1ac6e:	4681                	li	a3,0
   1ac70:	940687e3          	beqz	a3,1a5be <_svfiprintf_r+0x428>
   1ac74:	b9a5                	j	1a8ec <_svfiprintf_r+0x756>
   1ac76:	87c2                	mv	a5,a6
   1ac78:	809ff06f          	j	1a480 <_svfiprintf_r+0x2ea>
   1ac7c:	2007e793          	or	a5,a5,512
   1ac80:	001dc683          	lbu	a3,1(s11)
   1ac84:	2781                	sext.w	a5,a5
   1ac86:	0d85                	add	s11,s11,1
   1ac88:	dceff06f          	j	1a256 <_svfiprintf_r+0xc0>
   1ac8c:	0207e793          	or	a5,a5,32
   1ac90:	001dc683          	lbu	a3,1(s11)
   1ac94:	2781                	sext.w	a5,a5
   1ac96:	0d85                	add	s11,s11,1
   1ac98:	dbeff06f          	j	1a256 <_svfiprintf_r+0xc0>
   1ac9c:	4699                	li	a3,6
   1ac9e:	0009081b          	sext.w	a6,s2
   1aca2:	0126f363          	bgeu	a3,s2,1aca8 <_svfiprintf_r+0xb12>
   1aca6:	4819                	li	a6,6
   1aca8:	88c2                	mv	a7,a6
   1acaa:	00002c17          	auipc	s8,0x2
   1acae:	e16c0c13          	add	s8,s8,-490 # 1cac0 <__clzdi2+0xa2>
   1acb2:	e08ff06f          	j	1a2ba <_svfiprintf_r+0x124>
   1acb6:	4601                	li	a2,0
   1acb8:	b915                	j	1a8ec <_svfiprintf_r+0x756>
   1acba:	2007f593          	and	a1,a5,512
   1acbe:	c5b9                	beqz	a1,1ad0c <_svfiprintf_r+0xb76>
   1acc0:	0ff67613          	zext.b	a2,a2
   1acc4:	bdc9                	j	1ab96 <_svfiprintf_r+0xa00>
   1acc6:	20087793          	and	a5,a6,512
   1acca:	cf95                	beqz	a5,1ad06 <_svfiprintf_r+0xb70>
   1accc:	0ff6f693          	zext.b	a3,a3
   1acd0:	b2a9                	j	1a61a <_svfiprintf_r+0x484>
   1acd2:	2006f793          	and	a5,a3,512
   1acd6:	c78d                	beqz	a5,1ad00 <_svfiprintf_r+0xb6a>
   1acd8:	0ff67613          	zext.b	a2,a2
   1acdc:	b845                	j	1a58c <_svfiprintf_r+0x3f6>
   1acde:	2007f613          	and	a2,a5,512
   1ace2:	ca11                	beqz	a2,1acf6 <_svfiprintf_r+0xb60>
   1ace4:	0186969b          	sllw	a3,a3,0x18
   1ace8:	4186d69b          	sraw	a3,a3,0x18
   1acec:	8636                	mv	a2,a3
   1acee:	ec065763          	bgez	a2,1a3bc <_svfiprintf_r+0x226>
   1acf2:	f76ff06f          	j	1a468 <_svfiprintf_r+0x2d2>
   1acf6:	8636                	mv	a2,a3
   1acf8:	ec065263          	bgez	a2,1a3bc <_svfiprintf_r+0x226>
   1acfc:	f6cff06f          	j	1a468 <_svfiprintf_r+0x2d2>
   1ad00:	1602                	sll	a2,a2,0x20
   1ad02:	9201                	srl	a2,a2,0x20
   1ad04:	b061                	j	1a58c <_svfiprintf_r+0x3f6>
   1ad06:	1682                	sll	a3,a3,0x20
   1ad08:	9281                	srl	a3,a3,0x20
   1ad0a:	ba01                	j	1a61a <_svfiprintf_r+0x484>
   1ad0c:	1602                	sll	a2,a2,0x20
   1ad0e:	9201                	srl	a2,a2,0x20
   1ad10:	b559                	j	1ab96 <_svfiprintf_r+0xa00>
   1ad12:	01a69023          	sh	s10,0(a3)
   1ad16:	0ea1                	add	t4,t4,8
   1ad18:	cdeff06f          	j	1a1f6 <_svfiprintf_r+0x60>
   1ad1c:	1890                	add	a2,sp,112
   1ad1e:	85d2                	mv	a1,s4
   1ad20:	855a                	mv	a0,s6
   1ad22:	b1eff0ef          	jal	1a040 <__ssprint_r>
   1ad26:	e44ff06f          	j	1a36a <_svfiprintf_r+0x1d4>
   1ad2a:	88ca                	mv	a7,s2
   1ad2c:	884a                	mv	a6,s2
   1ad2e:	4901                	li	s2,0
   1ad30:	f74ff06f          	j	1a4a4 <_svfiprintf_r+0x30e>
   1ad34:	8e9a                	mv	t4,t1
   1ad36:	03000693          	li	a3,48
   1ad3a:	f56ff06f          	j	1a490 <_svfiprintf_r+0x2fa>
   1ad3e:	01a6a023          	sw	s10,0(a3)
   1ad42:	0ea1                	add	t4,t4,8
   1ad44:	cb2ff06f          	j	1a1f6 <_svfiprintf_r+0x60>
   1ad48:	47b1                	li	a5,12
   1ad4a:	00fb2023          	sw	a5,0(s6)
   1ad4e:	5d7d                	li	s10,-1
   1ad50:	e26ff06f          	j	1a376 <_svfiprintf_r+0x1e0>
   1ad54:	000ea683          	lw	a3,0(t4)
   1ad58:	0ea1                	add	t4,t4,8
   1ad5a:	0006891b          	sext.w	s2,a3
   1ad5e:	0006d363          	bgez	a3,1ad64 <_svfiprintf_r+0xbce>
   1ad62:	597d                	li	s2,-1
   1ad64:	001dc683          	lbu	a3,1(s11)
   1ad68:	8db2                	mv	s11,a2
   1ad6a:	cecff06f          	j	1a256 <_svfiprintf_r+0xc0>

000000000001ad6e <__swbuf_r>:
   1ad6e:	7179                	add	sp,sp,-48
   1ad70:	f022                	sd	s0,32(sp)
   1ad72:	ec26                	sd	s1,24(sp)
   1ad74:	e84a                	sd	s2,16(sp)
   1ad76:	f406                	sd	ra,40(sp)
   1ad78:	e44e                	sd	s3,8(sp)
   1ad7a:	892a                	mv	s2,a0
   1ad7c:	84ae                	mv	s1,a1
   1ad7e:	8432                	mv	s0,a2
   1ad80:	c119                	beqz	a0,1ad86 <__swbuf_r+0x18>
   1ad82:	493c                	lw	a5,80(a0)
   1ad84:	cbf9                	beqz	a5,1ae5a <__swbuf_r+0xec>
   1ad86:	541c                	lw	a5,40(s0)
   1ad88:	01041703          	lh	a4,16(s0)
   1ad8c:	c45c                	sw	a5,12(s0)
   1ad8e:	00877793          	and	a5,a4,8
   1ad92:	cbb9                	beqz	a5,1ade8 <__swbuf_r+0x7a>
   1ad94:	6c1c                	ld	a5,24(s0)
   1ad96:	cba9                	beqz	a5,1ade8 <__swbuf_r+0x7a>
   1ad98:	0ff4f993          	zext.b	s3,s1
   1ad9c:	03271693          	sll	a3,a4,0x32
   1ada0:	84ce                	mv	s1,s3
   1ada2:	0606d263          	bgez	a3,1ae06 <__swbuf_r+0x98>
   1ada6:	6018                	ld	a4,0(s0)
   1ada8:	5014                	lw	a3,32(s0)
   1adaa:	40f707bb          	subw	a5,a4,a5
   1adae:	06d7dd63          	bge	a5,a3,1ae28 <__swbuf_r+0xba>
   1adb2:	4454                	lw	a3,12(s0)
   1adb4:	00170613          	add	a2,a4,1
   1adb8:	e010                	sd	a2,0(s0)
   1adba:	36fd                	addw	a3,a3,-1
   1adbc:	c454                	sw	a3,12(s0)
   1adbe:	01370023          	sb	s3,0(a4)
   1adc2:	5018                	lw	a4,32(s0)
   1adc4:	2785                	addw	a5,a5,1
   1adc6:	08f70363          	beq	a4,a5,1ae4c <__swbuf_r+0xde>
   1adca:	01045783          	lhu	a5,16(s0)
   1adce:	8b85                	and	a5,a5,1
   1add0:	c781                	beqz	a5,1add8 <__swbuf_r+0x6a>
   1add2:	47a9                	li	a5,10
   1add4:	06f48c63          	beq	s1,a5,1ae4c <__swbuf_r+0xde>
   1add8:	70a2                	ld	ra,40(sp)
   1adda:	7402                	ld	s0,32(sp)
   1addc:	6942                	ld	s2,16(sp)
   1adde:	69a2                	ld	s3,8(sp)
   1ade0:	8526                	mv	a0,s1
   1ade2:	64e2                	ld	s1,24(sp)
   1ade4:	6145                	add	sp,sp,48
   1ade6:	8082                	ret
   1ade8:	85a2                	mv	a1,s0
   1adea:	854a                	mv	a0,s2
   1adec:	a38f70ef          	jal	12024 <__swsetup_r>
   1adf0:	e13d                	bnez	a0,1ae56 <__swbuf_r+0xe8>
   1adf2:	01041703          	lh	a4,16(s0)
   1adf6:	0ff4f993          	zext.b	s3,s1
   1adfa:	6c1c                	ld	a5,24(s0)
   1adfc:	03271693          	sll	a3,a4,0x32
   1ae00:	84ce                	mv	s1,s3
   1ae02:	fa06c2e3          	bltz	a3,1ada6 <__swbuf_r+0x38>
   1ae06:	0ac42683          	lw	a3,172(s0)
   1ae0a:	6609                	lui	a2,0x2
   1ae0c:	8f51                	or	a4,a4,a2
   1ae0e:	7679                	lui	a2,0xffffe
   1ae10:	167d                	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffde48f>
   1ae12:	8ef1                	and	a3,a3,a2
   1ae14:	00e41823          	sh	a4,16(s0)
   1ae18:	6018                	ld	a4,0(s0)
   1ae1a:	0ad42623          	sw	a3,172(s0)
   1ae1e:	5014                	lw	a3,32(s0)
   1ae20:	40f707bb          	subw	a5,a4,a5
   1ae24:	f8d7c7e3          	blt	a5,a3,1adb2 <__swbuf_r+0x44>
   1ae28:	85a2                	mv	a1,s0
   1ae2a:	854a                	mv	a0,s2
   1ae2c:	d24f70ef          	jal	12350 <_fflush_r>
   1ae30:	e11d                	bnez	a0,1ae56 <__swbuf_r+0xe8>
   1ae32:	6018                	ld	a4,0(s0)
   1ae34:	4454                	lw	a3,12(s0)
   1ae36:	4785                	li	a5,1
   1ae38:	00170613          	add	a2,a4,1
   1ae3c:	36fd                	addw	a3,a3,-1
   1ae3e:	e010                	sd	a2,0(s0)
   1ae40:	c454                	sw	a3,12(s0)
   1ae42:	01370023          	sb	s3,0(a4)
   1ae46:	5018                	lw	a4,32(s0)
   1ae48:	f8f711e3          	bne	a4,a5,1adca <__swbuf_r+0x5c>
   1ae4c:	85a2                	mv	a1,s0
   1ae4e:	854a                	mv	a0,s2
   1ae50:	d00f70ef          	jal	12350 <_fflush_r>
   1ae54:	d151                	beqz	a0,1add8 <__swbuf_r+0x6a>
   1ae56:	54fd                	li	s1,-1
   1ae58:	b741                	j	1add8 <__swbuf_r+0x6a>
   1ae5a:	fd8f70ef          	jal	12632 <__sinit>
   1ae5e:	b725                	j	1ad86 <__swbuf_r+0x18>

000000000001ae60 <__swbuf>:
   1ae60:	862e                	mv	a2,a1
   1ae62:	85aa                	mv	a1,a0
   1ae64:	7581b503          	ld	a0,1880(gp) # 1fac8 <_impure_ptr>
   1ae68:	f07ff06f          	j	1ad6e <__swbuf_r>

000000000001ae6c <_wcrtomb_r>:
   1ae6c:	7179                	add	sp,sp,-48
   1ae6e:	f022                	sd	s0,32(sp)
   1ae70:	ec26                	sd	s1,24(sp)
   1ae72:	f406                	sd	ra,40(sp)
   1ae74:	842a                	mv	s0,a0
   1ae76:	84b6                	mv	s1,a3
   1ae78:	6481b783          	ld	a5,1608(gp) # 1f9b8 <__global_locale+0xe0>
   1ae7c:	c991                	beqz	a1,1ae90 <_wcrtomb_r+0x24>
   1ae7e:	9782                	jalr	a5
   1ae80:	57fd                	li	a5,-1
   1ae82:	00f50d63          	beq	a0,a5,1ae9c <_wcrtomb_r+0x30>
   1ae86:	70a2                	ld	ra,40(sp)
   1ae88:	7402                	ld	s0,32(sp)
   1ae8a:	64e2                	ld	s1,24(sp)
   1ae8c:	6145                	add	sp,sp,48
   1ae8e:	8082                	ret
   1ae90:	4601                	li	a2,0
   1ae92:	858a                	mv	a1,sp
   1ae94:	9782                	jalr	a5
   1ae96:	57fd                	li	a5,-1
   1ae98:	fef517e3          	bne	a0,a5,1ae86 <_wcrtomb_r+0x1a>
   1ae9c:	0004a023          	sw	zero,0(s1)
   1aea0:	08a00793          	li	a5,138
   1aea4:	70a2                	ld	ra,40(sp)
   1aea6:	c01c                	sw	a5,0(s0)
   1aea8:	7402                	ld	s0,32(sp)
   1aeaa:	64e2                	ld	s1,24(sp)
   1aeac:	6145                	add	sp,sp,48
   1aeae:	8082                	ret

000000000001aeb0 <wcrtomb>:
   1aeb0:	7179                	add	sp,sp,-48
   1aeb2:	f022                	sd	s0,32(sp)
   1aeb4:	ec26                	sd	s1,24(sp)
   1aeb6:	f406                	sd	ra,40(sp)
   1aeb8:	8432                	mv	s0,a2
   1aeba:	7581b483          	ld	s1,1880(gp) # 1fac8 <_impure_ptr>
   1aebe:	6481b783          	ld	a5,1608(gp) # 1f9b8 <__global_locale+0xe0>
   1aec2:	cd11                	beqz	a0,1aede <wcrtomb+0x2e>
   1aec4:	862e                	mv	a2,a1
   1aec6:	86a2                	mv	a3,s0
   1aec8:	85aa                	mv	a1,a0
   1aeca:	8526                	mv	a0,s1
   1aecc:	9782                	jalr	a5
   1aece:	57fd                	li	a5,-1
   1aed0:	00f50f63          	beq	a0,a5,1aeee <wcrtomb+0x3e>
   1aed4:	70a2                	ld	ra,40(sp)
   1aed6:	7402                	ld	s0,32(sp)
   1aed8:	64e2                	ld	s1,24(sp)
   1aeda:	6145                	add	sp,sp,48
   1aedc:	8082                	ret
   1aede:	86b2                	mv	a3,a2
   1aee0:	858a                	mv	a1,sp
   1aee2:	4601                	li	a2,0
   1aee4:	8526                	mv	a0,s1
   1aee6:	9782                	jalr	a5
   1aee8:	57fd                	li	a5,-1
   1aeea:	fef515e3          	bne	a0,a5,1aed4 <wcrtomb+0x24>
   1aeee:	00042023          	sw	zero,0(s0)
   1aef2:	70a2                	ld	ra,40(sp)
   1aef4:	7402                	ld	s0,32(sp)
   1aef6:	08a00793          	li	a5,138
   1aefa:	c09c                	sw	a5,0(s1)
   1aefc:	64e2                	ld	s1,24(sp)
   1aefe:	6145                	add	sp,sp,48
   1af00:	8082                	ret

000000000001af02 <_wctomb_r>:
   1af02:	6481b783          	ld	a5,1608(gp) # 1f9b8 <__global_locale+0xe0>
   1af06:	8782                	jr	a5

000000000001af08 <__ascii_wctomb>:
   1af08:	0006079b          	sext.w	a5,a2
   1af0c:	cd91                	beqz	a1,1af28 <__ascii_wctomb+0x20>
   1af0e:	0ff00713          	li	a4,255
   1af12:	00f76663          	bltu	a4,a5,1af1e <__ascii_wctomb+0x16>
   1af16:	00c58023          	sb	a2,0(a1)
   1af1a:	4505                	li	a0,1
   1af1c:	8082                	ret
   1af1e:	08a00793          	li	a5,138
   1af22:	c11c                	sw	a5,0(a0)
   1af24:	557d                	li	a0,-1
   1af26:	8082                	ret
   1af28:	4501                	li	a0,0
   1af2a:	8082                	ret

000000000001af2c <abort>:
   1af2c:	1141                	add	sp,sp,-16
   1af2e:	4519                	li	a0,6
   1af30:	e406                	sd	ra,8(sp)
   1af32:	196000ef          	jal	1b0c8 <raise>
   1af36:	4505                	li	a0,1
   1af38:	388000ef          	jal	1b2c0 <_exit>

000000000001af3c <_init_signal_r>:
   1af3c:	51853783          	ld	a5,1304(a0)
   1af40:	c399                	beqz	a5,1af46 <_init_signal_r+0xa>
   1af42:	4501                	li	a0,0
   1af44:	8082                	ret
   1af46:	1141                	add	sp,sp,-16
   1af48:	10000593          	li	a1,256
   1af4c:	e022                	sd	s0,0(sp)
   1af4e:	e406                	sd	ra,8(sp)
   1af50:	842a                	mv	s0,a0
   1af52:	e5ff90ef          	jal	14db0 <_malloc_r>
   1af56:	50a43c23          	sd	a0,1304(s0)
   1af5a:	cd09                	beqz	a0,1af74 <_init_signal_r+0x38>
   1af5c:	10050793          	add	a5,a0,256
   1af60:	00053023          	sd	zero,0(a0)
   1af64:	0521                	add	a0,a0,8
   1af66:	fef51de3          	bne	a0,a5,1af60 <_init_signal_r+0x24>
   1af6a:	4501                	li	a0,0
   1af6c:	60a2                	ld	ra,8(sp)
   1af6e:	6402                	ld	s0,0(sp)
   1af70:	0141                	add	sp,sp,16
   1af72:	8082                	ret
   1af74:	557d                	li	a0,-1
   1af76:	bfdd                	j	1af6c <_init_signal_r+0x30>

000000000001af78 <_signal_r>:
   1af78:	7179                	add	sp,sp,-48
   1af7a:	ec26                	sd	s1,24(sp)
   1af7c:	f406                	sd	ra,40(sp)
   1af7e:	f022                	sd	s0,32(sp)
   1af80:	47fd                	li	a5,31
   1af82:	84aa                	mv	s1,a0
   1af84:	00b7ef63          	bltu	a5,a1,1afa2 <_signal_r+0x2a>
   1af88:	51853783          	ld	a5,1304(a0)
   1af8c:	842e                	mv	s0,a1
   1af8e:	cf91                	beqz	a5,1afaa <_signal_r+0x32>
   1af90:	040e                	sll	s0,s0,0x3
   1af92:	97a2                	add	a5,a5,s0
   1af94:	6388                	ld	a0,0(a5)
   1af96:	e390                	sd	a2,0(a5)
   1af98:	70a2                	ld	ra,40(sp)
   1af9a:	7402                	ld	s0,32(sp)
   1af9c:	64e2                	ld	s1,24(sp)
   1af9e:	6145                	add	sp,sp,48
   1afa0:	8082                	ret
   1afa2:	47d9                	li	a5,22
   1afa4:	c11c                	sw	a5,0(a0)
   1afa6:	557d                	li	a0,-1
   1afa8:	bfc5                	j	1af98 <_signal_r+0x20>
   1afaa:	10000593          	li	a1,256
   1afae:	e432                	sd	a2,8(sp)
   1afb0:	e01f90ef          	jal	14db0 <_malloc_r>
   1afb4:	50a4bc23          	sd	a0,1304(s1)
   1afb8:	6622                	ld	a2,8(sp)
   1afba:	87aa                	mv	a5,a0
   1afbc:	872a                	mv	a4,a0
   1afbe:	10050693          	add	a3,a0,256
   1afc2:	d175                	beqz	a0,1afa6 <_signal_r+0x2e>
   1afc4:	00073023          	sd	zero,0(a4)
   1afc8:	0721                	add	a4,a4,8
   1afca:	fed71de3          	bne	a4,a3,1afc4 <_signal_r+0x4c>
   1afce:	b7c9                	j	1af90 <_signal_r+0x18>

000000000001afd0 <_raise_r>:
   1afd0:	1101                	add	sp,sp,-32
   1afd2:	e426                	sd	s1,8(sp)
   1afd4:	ec06                	sd	ra,24(sp)
   1afd6:	e822                	sd	s0,16(sp)
   1afd8:	47fd                	li	a5,31
   1afda:	84aa                	mv	s1,a0
   1afdc:	04b7ee63          	bltu	a5,a1,1b038 <_raise_r+0x68>
   1afe0:	51853783          	ld	a5,1304(a0)
   1afe4:	842e                	mv	s0,a1
   1afe6:	c795                	beqz	a5,1b012 <_raise_r+0x42>
   1afe8:	00359713          	sll	a4,a1,0x3
   1afec:	97ba                	add	a5,a5,a4
   1afee:	6398                	ld	a4,0(a5)
   1aff0:	c30d                	beqz	a4,1b012 <_raise_r+0x42>
   1aff2:	4685                	li	a3,1
   1aff4:	00d70963          	beq	a4,a3,1b006 <_raise_r+0x36>
   1aff8:	56fd                	li	a3,-1
   1affa:	02d70763          	beq	a4,a3,1b028 <_raise_r+0x58>
   1affe:	0007b023          	sd	zero,0(a5)
   1b002:	852e                	mv	a0,a1
   1b004:	9702                	jalr	a4
   1b006:	4501                	li	a0,0
   1b008:	60e2                	ld	ra,24(sp)
   1b00a:	6442                	ld	s0,16(sp)
   1b00c:	64a2                	ld	s1,8(sp)
   1b00e:	6105                	add	sp,sp,32
   1b010:	8082                	ret
   1b012:	8526                	mv	a0,s1
   1b014:	27e000ef          	jal	1b292 <_getpid_r>
   1b018:	8622                	mv	a2,s0
   1b01a:	6442                	ld	s0,16(sp)
   1b01c:	60e2                	ld	ra,24(sp)
   1b01e:	85aa                	mv	a1,a0
   1b020:	8526                	mv	a0,s1
   1b022:	64a2                	ld	s1,8(sp)
   1b024:	6105                	add	sp,sp,32
   1b026:	ac25                	j	1b25e <_kill_r>
   1b028:	60e2                	ld	ra,24(sp)
   1b02a:	6442                	ld	s0,16(sp)
   1b02c:	47d9                	li	a5,22
   1b02e:	c11c                	sw	a5,0(a0)
   1b030:	64a2                	ld	s1,8(sp)
   1b032:	4505                	li	a0,1
   1b034:	6105                	add	sp,sp,32
   1b036:	8082                	ret
   1b038:	47d9                	li	a5,22
   1b03a:	c11c                	sw	a5,0(a0)
   1b03c:	557d                	li	a0,-1
   1b03e:	b7e9                	j	1b008 <_raise_r+0x38>

000000000001b040 <__sigtramp_r>:
   1b040:	47fd                	li	a5,31
   1b042:	08b7e163          	bltu	a5,a1,1b0c4 <__sigtramp_r+0x84>
   1b046:	51853783          	ld	a5,1304(a0)
   1b04a:	1101                	add	sp,sp,-32
   1b04c:	e822                	sd	s0,16(sp)
   1b04e:	e426                	sd	s1,8(sp)
   1b050:	ec06                	sd	ra,24(sp)
   1b052:	842e                	mv	s0,a1
   1b054:	84aa                	mv	s1,a0
   1b056:	c7a1                	beqz	a5,1b09e <__sigtramp_r+0x5e>
   1b058:	00341713          	sll	a4,s0,0x3
   1b05c:	97ba                	add	a5,a5,a4
   1b05e:	6398                	ld	a4,0(a5)
   1b060:	c30d                	beqz	a4,1b082 <__sigtramp_r+0x42>
   1b062:	56fd                	li	a3,-1
   1b064:	02d70b63          	beq	a4,a3,1b09a <__sigtramp_r+0x5a>
   1b068:	4685                	li	a3,1
   1b06a:	02d70263          	beq	a4,a3,1b08e <__sigtramp_r+0x4e>
   1b06e:	8522                	mv	a0,s0
   1b070:	0007b023          	sd	zero,0(a5)
   1b074:	9702                	jalr	a4
   1b076:	4501                	li	a0,0
   1b078:	60e2                	ld	ra,24(sp)
   1b07a:	6442                	ld	s0,16(sp)
   1b07c:	64a2                	ld	s1,8(sp)
   1b07e:	6105                	add	sp,sp,32
   1b080:	8082                	ret
   1b082:	60e2                	ld	ra,24(sp)
   1b084:	6442                	ld	s0,16(sp)
   1b086:	64a2                	ld	s1,8(sp)
   1b088:	4505                	li	a0,1
   1b08a:	6105                	add	sp,sp,32
   1b08c:	8082                	ret
   1b08e:	60e2                	ld	ra,24(sp)
   1b090:	6442                	ld	s0,16(sp)
   1b092:	64a2                	ld	s1,8(sp)
   1b094:	450d                	li	a0,3
   1b096:	6105                	add	sp,sp,32
   1b098:	8082                	ret
   1b09a:	4509                	li	a0,2
   1b09c:	bff1                	j	1b078 <__sigtramp_r+0x38>
   1b09e:	10000593          	li	a1,256
   1b0a2:	d0ff90ef          	jal	14db0 <_malloc_r>
   1b0a6:	50a4bc23          	sd	a0,1304(s1)
   1b0aa:	87aa                	mv	a5,a0
   1b0ac:	c911                	beqz	a0,1b0c0 <__sigtramp_r+0x80>
   1b0ae:	872a                	mv	a4,a0
   1b0b0:	10050693          	add	a3,a0,256
   1b0b4:	00073023          	sd	zero,0(a4)
   1b0b8:	0721                	add	a4,a4,8
   1b0ba:	fee69de3          	bne	a3,a4,1b0b4 <__sigtramp_r+0x74>
   1b0be:	bf69                	j	1b058 <__sigtramp_r+0x18>
   1b0c0:	557d                	li	a0,-1
   1b0c2:	bf5d                	j	1b078 <__sigtramp_r+0x38>
   1b0c4:	557d                	li	a0,-1
   1b0c6:	8082                	ret

000000000001b0c8 <raise>:
   1b0c8:	1101                	add	sp,sp,-32
   1b0ca:	e426                	sd	s1,8(sp)
   1b0cc:	ec06                	sd	ra,24(sp)
   1b0ce:	e822                	sd	s0,16(sp)
   1b0d0:	47fd                	li	a5,31
   1b0d2:	7581b483          	ld	s1,1880(gp) # 1fac8 <_impure_ptr>
   1b0d6:	04a7ed63          	bltu	a5,a0,1b130 <raise+0x68>
   1b0da:	5184b783          	ld	a5,1304(s1)
   1b0de:	842a                	mv	s0,a0
   1b0e0:	c78d                	beqz	a5,1b10a <raise+0x42>
   1b0e2:	00351713          	sll	a4,a0,0x3
   1b0e6:	97ba                	add	a5,a5,a4
   1b0e8:	6398                	ld	a4,0(a5)
   1b0ea:	c305                	beqz	a4,1b10a <raise+0x42>
   1b0ec:	4685                	li	a3,1
   1b0ee:	00d70863          	beq	a4,a3,1b0fe <raise+0x36>
   1b0f2:	56fd                	li	a3,-1
   1b0f4:	02d70663          	beq	a4,a3,1b120 <raise+0x58>
   1b0f8:	0007b023          	sd	zero,0(a5)
   1b0fc:	9702                	jalr	a4
   1b0fe:	4501                	li	a0,0
   1b100:	60e2                	ld	ra,24(sp)
   1b102:	6442                	ld	s0,16(sp)
   1b104:	64a2                	ld	s1,8(sp)
   1b106:	6105                	add	sp,sp,32
   1b108:	8082                	ret
   1b10a:	8526                	mv	a0,s1
   1b10c:	186000ef          	jal	1b292 <_getpid_r>
   1b110:	8622                	mv	a2,s0
   1b112:	6442                	ld	s0,16(sp)
   1b114:	60e2                	ld	ra,24(sp)
   1b116:	85aa                	mv	a1,a0
   1b118:	8526                	mv	a0,s1
   1b11a:	64a2                	ld	s1,8(sp)
   1b11c:	6105                	add	sp,sp,32
   1b11e:	a281                	j	1b25e <_kill_r>
   1b120:	60e2                	ld	ra,24(sp)
   1b122:	6442                	ld	s0,16(sp)
   1b124:	47d9                	li	a5,22
   1b126:	c09c                	sw	a5,0(s1)
   1b128:	4505                	li	a0,1
   1b12a:	64a2                	ld	s1,8(sp)
   1b12c:	6105                	add	sp,sp,32
   1b12e:	8082                	ret
   1b130:	47d9                	li	a5,22
   1b132:	c09c                	sw	a5,0(s1)
   1b134:	557d                	li	a0,-1
   1b136:	b7e9                	j	1b100 <raise+0x38>

000000000001b138 <signal>:
   1b138:	1101                	add	sp,sp,-32
   1b13a:	e04a                	sd	s2,0(sp)
   1b13c:	ec06                	sd	ra,24(sp)
   1b13e:	e822                	sd	s0,16(sp)
   1b140:	e426                	sd	s1,8(sp)
   1b142:	47fd                	li	a5,31
   1b144:	7581b903          	ld	s2,1880(gp) # 1fac8 <_impure_ptr>
   1b148:	02a7e263          	bltu	a5,a0,1b16c <signal+0x34>
   1b14c:	842a                	mv	s0,a0
   1b14e:	51893503          	ld	a0,1304(s2)
   1b152:	84ae                	mv	s1,a1
   1b154:	c10d                	beqz	a0,1b176 <signal+0x3e>
   1b156:	040e                	sll	s0,s0,0x3
   1b158:	008507b3          	add	a5,a0,s0
   1b15c:	6388                	ld	a0,0(a5)
   1b15e:	e384                	sd	s1,0(a5)
   1b160:	60e2                	ld	ra,24(sp)
   1b162:	6442                	ld	s0,16(sp)
   1b164:	64a2                	ld	s1,8(sp)
   1b166:	6902                	ld	s2,0(sp)
   1b168:	6105                	add	sp,sp,32
   1b16a:	8082                	ret
   1b16c:	47d9                	li	a5,22
   1b16e:	00f92023          	sw	a5,0(s2)
   1b172:	557d                	li	a0,-1
   1b174:	b7f5                	j	1b160 <signal+0x28>
   1b176:	10000593          	li	a1,256
   1b17a:	854a                	mv	a0,s2
   1b17c:	c35f90ef          	jal	14db0 <_malloc_r>
   1b180:	50a93c23          	sd	a0,1304(s2)
   1b184:	87aa                	mv	a5,a0
   1b186:	10050713          	add	a4,a0,256
   1b18a:	d565                	beqz	a0,1b172 <signal+0x3a>
   1b18c:	0007b023          	sd	zero,0(a5)
   1b190:	07a1                	add	a5,a5,8
   1b192:	fee79de3          	bne	a5,a4,1b18c <signal+0x54>
   1b196:	b7c1                	j	1b156 <signal+0x1e>

000000000001b198 <_init_signal>:
   1b198:	1141                	add	sp,sp,-16
   1b19a:	e022                	sd	s0,0(sp)
   1b19c:	7581b403          	ld	s0,1880(gp) # 1fac8 <_impure_ptr>
   1b1a0:	51843783          	ld	a5,1304(s0)
   1b1a4:	e406                	sd	ra,8(sp)
   1b1a6:	c791                	beqz	a5,1b1b2 <_init_signal+0x1a>
   1b1a8:	4501                	li	a0,0
   1b1aa:	60a2                	ld	ra,8(sp)
   1b1ac:	6402                	ld	s0,0(sp)
   1b1ae:	0141                	add	sp,sp,16
   1b1b0:	8082                	ret
   1b1b2:	10000593          	li	a1,256
   1b1b6:	8522                	mv	a0,s0
   1b1b8:	bf9f90ef          	jal	14db0 <_malloc_r>
   1b1bc:	50a43c23          	sd	a0,1304(s0)
   1b1c0:	c909                	beqz	a0,1b1d2 <_init_signal+0x3a>
   1b1c2:	10050793          	add	a5,a0,256
   1b1c6:	00053023          	sd	zero,0(a0)
   1b1ca:	0521                	add	a0,a0,8
   1b1cc:	fef51de3          	bne	a0,a5,1b1c6 <_init_signal+0x2e>
   1b1d0:	bfe1                	j	1b1a8 <_init_signal+0x10>
   1b1d2:	557d                	li	a0,-1
   1b1d4:	bfd9                	j	1b1aa <_init_signal+0x12>

000000000001b1d6 <__sigtramp>:
   1b1d6:	1101                	add	sp,sp,-32
   1b1d8:	e426                	sd	s1,8(sp)
   1b1da:	ec06                	sd	ra,24(sp)
   1b1dc:	e822                	sd	s0,16(sp)
   1b1de:	47fd                	li	a5,31
   1b1e0:	7581b483          	ld	s1,1880(gp) # 1fac8 <_impure_ptr>
   1b1e4:	06a7eb63          	bltu	a5,a0,1b25a <__sigtramp+0x84>
   1b1e8:	5184b783          	ld	a5,1304(s1)
   1b1ec:	842a                	mv	s0,a0
   1b1ee:	c7a1                	beqz	a5,1b236 <__sigtramp+0x60>
   1b1f0:	00341713          	sll	a4,s0,0x3
   1b1f4:	97ba                	add	a5,a5,a4
   1b1f6:	6398                	ld	a4,0(a5)
   1b1f8:	c30d                	beqz	a4,1b21a <__sigtramp+0x44>
   1b1fa:	56fd                	li	a3,-1
   1b1fc:	02d70b63          	beq	a4,a3,1b232 <__sigtramp+0x5c>
   1b200:	4685                	li	a3,1
   1b202:	02d70263          	beq	a4,a3,1b226 <__sigtramp+0x50>
   1b206:	8522                	mv	a0,s0
   1b208:	0007b023          	sd	zero,0(a5)
   1b20c:	9702                	jalr	a4
   1b20e:	4501                	li	a0,0
   1b210:	60e2                	ld	ra,24(sp)
   1b212:	6442                	ld	s0,16(sp)
   1b214:	64a2                	ld	s1,8(sp)
   1b216:	6105                	add	sp,sp,32
   1b218:	8082                	ret
   1b21a:	60e2                	ld	ra,24(sp)
   1b21c:	6442                	ld	s0,16(sp)
   1b21e:	64a2                	ld	s1,8(sp)
   1b220:	4505                	li	a0,1
   1b222:	6105                	add	sp,sp,32
   1b224:	8082                	ret
   1b226:	60e2                	ld	ra,24(sp)
   1b228:	6442                	ld	s0,16(sp)
   1b22a:	64a2                	ld	s1,8(sp)
   1b22c:	450d                	li	a0,3
   1b22e:	6105                	add	sp,sp,32
   1b230:	8082                	ret
   1b232:	4509                	li	a0,2
   1b234:	bff1                	j	1b210 <__sigtramp+0x3a>
   1b236:	10000593          	li	a1,256
   1b23a:	8526                	mv	a0,s1
   1b23c:	b75f90ef          	jal	14db0 <_malloc_r>
   1b240:	50a4bc23          	sd	a0,1304(s1)
   1b244:	87aa                	mv	a5,a0
   1b246:	c911                	beqz	a0,1b25a <__sigtramp+0x84>
   1b248:	872a                	mv	a4,a0
   1b24a:	10050693          	add	a3,a0,256
   1b24e:	00073023          	sd	zero,0(a4)
   1b252:	0721                	add	a4,a4,8
   1b254:	fee69de3          	bne	a3,a4,1b24e <__sigtramp+0x78>
   1b258:	bf61                	j	1b1f0 <__sigtramp+0x1a>
   1b25a:	557d                	li	a0,-1
   1b25c:	bf55                	j	1b210 <__sigtramp+0x3a>

000000000001b25e <_kill_r>:
   1b25e:	1141                	add	sp,sp,-16
   1b260:	872e                	mv	a4,a1
   1b262:	e022                	sd	s0,0(sp)
   1b264:	85b2                	mv	a1,a2
   1b266:	842a                	mv	s0,a0
   1b268:	853a                	mv	a0,a4
   1b26a:	7801a823          	sw	zero,1936(gp) # 1fb00 <errno>
   1b26e:	e406                	sd	ra,8(sp)
   1b270:	0dc000ef          	jal	1b34c <_kill>
   1b274:	57fd                	li	a5,-1
   1b276:	00f50663          	beq	a0,a5,1b282 <_kill_r+0x24>
   1b27a:	60a2                	ld	ra,8(sp)
   1b27c:	6402                	ld	s0,0(sp)
   1b27e:	0141                	add	sp,sp,16
   1b280:	8082                	ret
   1b282:	7901a783          	lw	a5,1936(gp) # 1fb00 <errno>
   1b286:	dbf5                	beqz	a5,1b27a <_kill_r+0x1c>
   1b288:	60a2                	ld	ra,8(sp)
   1b28a:	c01c                	sw	a5,0(s0)
   1b28c:	6402                	ld	s0,0(sp)
   1b28e:	0141                	add	sp,sp,16
   1b290:	8082                	ret

000000000001b292 <_getpid_r>:
   1b292:	a841                	j	1b322 <_getpid>

000000000001b294 <_close>:
   1b294:	1141                	add	sp,sp,-16
   1b296:	e406                	sd	ra,8(sp)
   1b298:	e022                	sd	s0,0(sp)
   1b29a:	03900893          	li	a7,57
   1b29e:	00000073          	ecall
   1b2a2:	842a                	mv	s0,a0
   1b2a4:	00054763          	bltz	a0,1b2b2 <_close+0x1e>
   1b2a8:	2501                	sext.w	a0,a0
   1b2aa:	60a2                	ld	ra,8(sp)
   1b2ac:	6402                	ld	s0,0(sp)
   1b2ae:	0141                	add	sp,sp,16
   1b2b0:	8082                	ret
   1b2b2:	e71fd0ef          	jal	19122 <__errno>
   1b2b6:	4080043b          	negw	s0,s0
   1b2ba:	c100                	sw	s0,0(a0)
   1b2bc:	557d                	li	a0,-1
   1b2be:	b7f5                	j	1b2aa <_close+0x16>

000000000001b2c0 <_exit>:
   1b2c0:	05d00893          	li	a7,93
   1b2c4:	00000073          	ecall
   1b2c8:	00054363          	bltz	a0,1b2ce <_exit+0xe>
   1b2cc:	a001                	j	1b2cc <_exit+0xc>
   1b2ce:	1141                	add	sp,sp,-16
   1b2d0:	e022                	sd	s0,0(sp)
   1b2d2:	842a                	mv	s0,a0
   1b2d4:	e406                	sd	ra,8(sp)
   1b2d6:	4080043b          	negw	s0,s0
   1b2da:	e49fd0ef          	jal	19122 <__errno>
   1b2de:	c100                	sw	s0,0(a0)
   1b2e0:	a001                	j	1b2e0 <_exit+0x20>

000000000001b2e2 <_fstat>:
   1b2e2:	7135                	add	sp,sp,-160
   1b2e4:	e526                	sd	s1,136(sp)
   1b2e6:	ed06                	sd	ra,152(sp)
   1b2e8:	84ae                	mv	s1,a1
   1b2ea:	e922                	sd	s0,144(sp)
   1b2ec:	05000893          	li	a7,80
   1b2f0:	858a                	mv	a1,sp
   1b2f2:	00000073          	ecall
   1b2f6:	842a                	mv	s0,a0
   1b2f8:	00054e63          	bltz	a0,1b314 <_fstat+0x32>
   1b2fc:	0005041b          	sext.w	s0,a0
   1b300:	8526                	mv	a0,s1
   1b302:	858a                	mv	a1,sp
   1b304:	130000ef          	jal	1b434 <_conv_stat>
   1b308:	60ea                	ld	ra,152(sp)
   1b30a:	8522                	mv	a0,s0
   1b30c:	644a                	ld	s0,144(sp)
   1b30e:	64aa                	ld	s1,136(sp)
   1b310:	610d                	add	sp,sp,160
   1b312:	8082                	ret
   1b314:	4080043b          	negw	s0,s0
   1b318:	e0bfd0ef          	jal	19122 <__errno>
   1b31c:	c100                	sw	s0,0(a0)
   1b31e:	547d                	li	s0,-1
   1b320:	b7c5                	j	1b300 <_fstat+0x1e>

000000000001b322 <_getpid>:
   1b322:	4505                	li	a0,1
   1b324:	8082                	ret

000000000001b326 <_isatty>:
   1b326:	7119                	add	sp,sp,-128
   1b328:	002c                	add	a1,sp,8
   1b32a:	fc86                	sd	ra,120(sp)
   1b32c:	fb7ff0ef          	jal	1b2e2 <_fstat>
   1b330:	57fd                	li	a5,-1
   1b332:	00f50963          	beq	a0,a5,1b344 <_isatty+0x1e>
   1b336:	4532                	lw	a0,12(sp)
   1b338:	70e6                	ld	ra,120(sp)
   1b33a:	40d5551b          	sraw	a0,a0,0xd
   1b33e:	8905                	and	a0,a0,1
   1b340:	6109                	add	sp,sp,128
   1b342:	8082                	ret
   1b344:	70e6                	ld	ra,120(sp)
   1b346:	4501                	li	a0,0
   1b348:	6109                	add	sp,sp,128
   1b34a:	8082                	ret

000000000001b34c <_kill>:
   1b34c:	1141                	add	sp,sp,-16
   1b34e:	e406                	sd	ra,8(sp)
   1b350:	dd3fd0ef          	jal	19122 <__errno>
   1b354:	60a2                	ld	ra,8(sp)
   1b356:	47d9                	li	a5,22
   1b358:	c11c                	sw	a5,0(a0)
   1b35a:	557d                	li	a0,-1
   1b35c:	0141                	add	sp,sp,16
   1b35e:	8082                	ret

000000000001b360 <_lseek>:
   1b360:	1141                	add	sp,sp,-16
   1b362:	e406                	sd	ra,8(sp)
   1b364:	e022                	sd	s0,0(sp)
   1b366:	03e00893          	li	a7,62
   1b36a:	00000073          	ecall
   1b36e:	842a                	mv	s0,a0
   1b370:	00054763          	bltz	a0,1b37e <_lseek+0x1e>
   1b374:	60a2                	ld	ra,8(sp)
   1b376:	8522                	mv	a0,s0
   1b378:	6402                	ld	s0,0(sp)
   1b37a:	0141                	add	sp,sp,16
   1b37c:	8082                	ret
   1b37e:	4080043b          	negw	s0,s0
   1b382:	da1fd0ef          	jal	19122 <__errno>
   1b386:	c100                	sw	s0,0(a0)
   1b388:	547d                	li	s0,-1
   1b38a:	b7ed                	j	1b374 <_lseek+0x14>

000000000001b38c <_read>:
   1b38c:	1141                	add	sp,sp,-16
   1b38e:	e406                	sd	ra,8(sp)
   1b390:	e022                	sd	s0,0(sp)
   1b392:	03f00893          	li	a7,63
   1b396:	00000073          	ecall
   1b39a:	842a                	mv	s0,a0
   1b39c:	00054763          	bltz	a0,1b3aa <_read+0x1e>
   1b3a0:	60a2                	ld	ra,8(sp)
   1b3a2:	8522                	mv	a0,s0
   1b3a4:	6402                	ld	s0,0(sp)
   1b3a6:	0141                	add	sp,sp,16
   1b3a8:	8082                	ret
   1b3aa:	4080043b          	negw	s0,s0
   1b3ae:	d75fd0ef          	jal	19122 <__errno>
   1b3b2:	c100                	sw	s0,0(a0)
   1b3b4:	547d                	li	s0,-1
   1b3b6:	b7ed                	j	1b3a0 <_read+0x14>

000000000001b3b8 <_sbrk>:
   1b3b8:	79818693          	add	a3,gp,1944 # 1fb08 <heap_end.0>
   1b3bc:	6298                	ld	a4,0(a3)
   1b3be:	1141                	add	sp,sp,-16
   1b3c0:	e406                	sd	ra,8(sp)
   1b3c2:	87aa                	mv	a5,a0
   1b3c4:	eb19                	bnez	a4,1b3da <_sbrk+0x22>
   1b3c6:	0d600893          	li	a7,214
   1b3ca:	4501                	li	a0,0
   1b3cc:	00000073          	ecall
   1b3d0:	567d                	li	a2,-1
   1b3d2:	872a                	mv	a4,a0
   1b3d4:	02c50263          	beq	a0,a2,1b3f8 <_sbrk+0x40>
   1b3d8:	e288                	sd	a0,0(a3)
   1b3da:	0d600893          	li	a7,214
   1b3de:	00e78533          	add	a0,a5,a4
   1b3e2:	00000073          	ecall
   1b3e6:	6298                	ld	a4,0(a3)
   1b3e8:	97ba                	add	a5,a5,a4
   1b3ea:	00f51763          	bne	a0,a5,1b3f8 <_sbrk+0x40>
   1b3ee:	60a2                	ld	ra,8(sp)
   1b3f0:	e288                	sd	a0,0(a3)
   1b3f2:	853a                	mv	a0,a4
   1b3f4:	0141                	add	sp,sp,16
   1b3f6:	8082                	ret
   1b3f8:	d2bfd0ef          	jal	19122 <__errno>
   1b3fc:	60a2                	ld	ra,8(sp)
   1b3fe:	47b1                	li	a5,12
   1b400:	c11c                	sw	a5,0(a0)
   1b402:	557d                	li	a0,-1
   1b404:	0141                	add	sp,sp,16
   1b406:	8082                	ret

000000000001b408 <_write>:
   1b408:	1141                	add	sp,sp,-16
   1b40a:	e406                	sd	ra,8(sp)
   1b40c:	e022                	sd	s0,0(sp)
   1b40e:	04000893          	li	a7,64
   1b412:	00000073          	ecall
   1b416:	842a                	mv	s0,a0
   1b418:	00054763          	bltz	a0,1b426 <_write+0x1e>
   1b41c:	60a2                	ld	ra,8(sp)
   1b41e:	8522                	mv	a0,s0
   1b420:	6402                	ld	s0,0(sp)
   1b422:	0141                	add	sp,sp,16
   1b424:	8082                	ret
   1b426:	4080043b          	negw	s0,s0
   1b42a:	cf9fd0ef          	jal	19122 <__errno>
   1b42e:	c100                	sw	s0,0(a0)
   1b430:	547d                	li	s0,-1
   1b432:	b7ed                	j	1b41c <_write+0x14>

000000000001b434 <_conv_stat>:
   1b434:	0185d703          	lhu	a4,24(a1)
   1b438:	0145d783          	lhu	a5,20(a1)
   1b43c:	4dd0                	lw	a2,28(a1)
   1b43e:	7194                	ld	a3,32(a1)
   1b440:	0005b303          	ld	t1,0(a1)
   1b444:	0085b883          	ld	a7,8(a1)
   1b448:	0105a803          	lw	a6,16(a1)
   1b44c:	0107171b          	sllw	a4,a4,0x10
   1b450:	8fd9                	or	a5,a5,a4
   1b452:	00c51623          	sh	a2,12(a0)
   1b456:	00d51723          	sh	a3,14(a0)
   1b45a:	00651023          	sh	t1,0(a0)
   1b45e:	01151123          	sh	a7,2(a0)
   1b462:	01052223          	sw	a6,4(a0)
   1b466:	c51c                	sw	a5,8(a0)
   1b468:	7998                	ld	a4,48(a1)
   1b46a:	65bc                	ld	a5,72(a1)
   1b46c:	61b0                	ld	a2,64(a1)
   1b46e:	5d94                	lw	a3,56(a1)
   1b470:	e918                	sd	a4,16(a0)
   1b472:	ed1c                	sd	a5,24(a0)
   1b474:	6db8                	ld	a4,88(a1)
   1b476:	75bc                	ld	a5,104(a1)
   1b478:	e930                	sd	a2,80(a0)
   1b47a:	e534                	sd	a3,72(a0)
   1b47c:	f518                	sd	a4,40(a0)
   1b47e:	fd1c                	sd	a5,56(a0)
   1b480:	8082                	ret

000000000001b482 <__eqtf2>:
   1b482:	002027f3          	frrm	a5
   1b486:	67a1                	lui	a5,0x8
   1b488:	0305d813          	srl	a6,a1,0x30
   1b48c:	17fd                	add	a5,a5,-1 # 7fff <exit-0x80e9>
   1b48e:	5e7d                	li	t3,-1
   1b490:	010e5713          	srl	a4,t3,0x10
   1b494:	0306d313          	srl	t1,a3,0x30
   1b498:	00f87833          	and	a6,a6,a5
   1b49c:	00e5f8b3          	and	a7,a1,a4
   1b4a0:	00f37333          	and	t1,t1,a5
   1b4a4:	8f75                	and	a4,a4,a3
   1b4a6:	91fd                	srl	a1,a1,0x3f
   1b4a8:	92fd                	srl	a3,a3,0x3f
   1b4aa:	00f81f63          	bne	a6,a5,1b4c8 <__eqtf2+0x46>
   1b4ae:	00a8e533          	or	a0,a7,a0
   1b4b2:	e90d                	bnez	a0,1b4e4 <__eqtf2+0x62>
   1b4b4:	4785                	li	a5,1
   1b4b6:	01031763          	bne	t1,a6,1b4c4 <__eqtf2+0x42>
   1b4ba:	8e59                	or	a2,a2,a4
   1b4bc:	ea19                	bnez	a2,1b4d2 <__eqtf2+0x50>
   1b4be:	8d95                	sub	a1,a1,a3
   1b4c0:	00b037b3          	snez	a5,a1
   1b4c4:	853e                	mv	a0,a5
   1b4c6:	a805                	j	1b4f6 <__eqtf2+0x74>
   1b4c8:	02f31863          	bne	t1,a5,1b4f8 <__eqtf2+0x76>
   1b4cc:	8e59                	or	a2,a2,a4
   1b4ce:	4785                	li	a5,1
   1b4d0:	da75                	beqz	a2,1b4c4 <__eqtf2+0x42>
   1b4d2:	57fd                	li	a5,-1
   1b4d4:	83c5                	srl	a5,a5,0x11
   1b4d6:	4505                	li	a0,1
   1b4d8:	00e7ef63          	bltu	a5,a4,1b4f6 <__eqtf2+0x74>
   1b4dc:	00186073          	csrs	fflags,16
   1b4e0:	4505                	li	a0,1
   1b4e2:	8082                	ret
   1b4e4:	011e5e13          	srl	t3,t3,0x11
   1b4e8:	ff1e7ae3          	bgeu	t3,a7,1b4dc <__eqtf2+0x5a>
   1b4ec:	4505                	li	a0,1
   1b4ee:	01031463          	bne	t1,a6,1b4f6 <__eqtf2+0x74>
   1b4f2:	8e59                	or	a2,a2,a4
   1b4f4:	fe79                	bnez	a2,1b4d2 <__eqtf2+0x50>
   1b4f6:	8082                	ret
   1b4f8:	4785                	li	a5,1
   1b4fa:	fc6815e3          	bne	a6,t1,1b4c4 <__eqtf2+0x42>
   1b4fe:	fce893e3          	bne	a7,a4,1b4c4 <__eqtf2+0x42>
   1b502:	fcc511e3          	bne	a0,a2,1b4c4 <__eqtf2+0x42>
   1b506:	00d58963          	beq	a1,a3,1b518 <__eqtf2+0x96>
   1b50a:	fa081de3          	bnez	a6,1b4c4 <__eqtf2+0x42>
   1b50e:	00a8e8b3          	or	a7,a7,a0
   1b512:	011037b3          	snez	a5,a7
   1b516:	b77d                	j	1b4c4 <__eqtf2+0x42>
   1b518:	4781                	li	a5,0
   1b51a:	b76d                	j	1b4c4 <__eqtf2+0x42>

000000000001b51c <__getf2>:
   1b51c:	832a                	mv	t1,a0
   1b51e:	002027f3          	frrm	a5
   1b522:	6e21                	lui	t3,0x8
   1b524:	0305d893          	srl	a7,a1,0x30
   1b528:	1e7d                	add	t3,t3,-1 # 7fff <exit-0x80e9>
   1b52a:	577d                	li	a4,-1
   1b52c:	8341                	srl	a4,a4,0x10
   1b52e:	0306d793          	srl	a5,a3,0x30
   1b532:	01c8f8b3          	and	a7,a7,t3
   1b536:	00e5f833          	and	a6,a1,a4
   1b53a:	01c7f533          	and	a0,a5,t3
   1b53e:	8f75                	and	a4,a4,a3
   1b540:	91fd                	srl	a1,a1,0x3f
   1b542:	92fd                	srl	a3,a3,0x3f
   1b544:	03c89263          	bne	a7,t3,1b568 <__getf2+0x4c>
   1b548:	00686833          	or	a6,a6,t1
   1b54c:	08081463          	bnez	a6,1b5d4 <__getf2+0xb8>
   1b550:	01150663          	beq	a0,a7,1b55c <__getf2+0x40>
   1b554:	4505                	li	a0,1
   1b556:	cdb5                	beqz	a1,1b5d2 <__getf2+0xb6>
   1b558:	557d                	li	a0,-1
   1b55a:	8082                	ret
   1b55c:	8f51                	or	a4,a4,a2
   1b55e:	eb3d                	bnez	a4,1b5d4 <__getf2+0xb8>
   1b560:	fed59ae3          	bne	a1,a3,1b554 <__getf2+0x38>
   1b564:	4501                	li	a0,0
   1b566:	8082                	ret
   1b568:	03c51463          	bne	a0,t3,1b590 <__getf2+0x74>
   1b56c:	8f51                	or	a4,a4,a2
   1b56e:	e33d                	bnez	a4,1b5d4 <__getf2+0xb8>
   1b570:	00088863          	beqz	a7,1b580 <__getf2+0x64>
   1b574:	fed590e3          	bne	a1,a3,1b554 <__getf2+0x38>
   1b578:	557d                	li	a0,-1
   1b57a:	cda1                	beqz	a1,1b5d2 <__getf2+0xb6>
   1b57c:	852e                	mv	a0,a1
   1b57e:	8082                	ret
   1b580:	00686833          	or	a6,a6,t1
   1b584:	fe0818e3          	bnez	a6,1b574 <__getf2+0x58>
   1b588:	557d                	li	a0,-1
   1b58a:	c6a1                	beqz	a3,1b5d2 <__getf2+0xb6>
   1b58c:	8536                	mv	a0,a3
   1b58e:	8082                	ret
   1b590:	02088363          	beqz	a7,1b5b6 <__getf2+0x9a>
   1b594:	d161                	beqz	a0,1b554 <__getf2+0x38>
   1b596:	fad59fe3          	bne	a1,a3,1b554 <__getf2+0x38>
   1b59a:	fb154de3          	blt	a0,a7,1b554 <__getf2+0x38>
   1b59e:	fca8cde3          	blt	a7,a0,1b578 <__getf2+0x5c>
   1b5a2:	fb0769e3          	bltu	a4,a6,1b554 <__getf2+0x38>
   1b5a6:	fce819e3          	bne	a6,a4,1b578 <__getf2+0x5c>
   1b5aa:	fa6665e3          	bltu	a2,t1,1b554 <__getf2+0x38>
   1b5ae:	4501                	li	a0,0
   1b5b0:	02c37163          	bgeu	t1,a2,1b5d2 <__getf2+0xb6>
   1b5b4:	b7d1                	j	1b578 <__getf2+0x5c>
   1b5b6:	006867b3          	or	a5,a6,t1
   1b5ba:	c119                	beqz	a0,1b5c0 <__getf2+0xa4>
   1b5bc:	d7f1                	beqz	a5,1b588 <__getf2+0x6c>
   1b5be:	bf5d                	j	1b574 <__getf2+0x58>
   1b5c0:	00c768b3          	or	a7,a4,a2
   1b5c4:	00088663          	beqz	a7,1b5d0 <__getf2+0xb4>
   1b5c8:	d3e1                	beqz	a5,1b588 <__getf2+0x6c>
   1b5ca:	fcd58ce3          	beq	a1,a3,1b5a2 <__getf2+0x86>
   1b5ce:	b759                	j	1b554 <__getf2+0x38>
   1b5d0:	f3d1                	bnez	a5,1b554 <__getf2+0x38>
   1b5d2:	8082                	ret
   1b5d4:	00186073          	csrs	fflags,16
   1b5d8:	5579                	li	a0,-2
   1b5da:	8082                	ret

000000000001b5dc <__letf2>:
   1b5dc:	832a                	mv	t1,a0
   1b5de:	002027f3          	frrm	a5
   1b5e2:	6e21                	lui	t3,0x8
   1b5e4:	0305d893          	srl	a7,a1,0x30
   1b5e8:	1e7d                	add	t3,t3,-1 # 7fff <exit-0x80e9>
   1b5ea:	577d                	li	a4,-1
   1b5ec:	8341                	srl	a4,a4,0x10
   1b5ee:	0306d793          	srl	a5,a3,0x30
   1b5f2:	01c8f8b3          	and	a7,a7,t3
   1b5f6:	00e5f833          	and	a6,a1,a4
   1b5fa:	01c7f533          	and	a0,a5,t3
   1b5fe:	8f75                	and	a4,a4,a3
   1b600:	91fd                	srl	a1,a1,0x3f
   1b602:	92fd                	srl	a3,a3,0x3f
   1b604:	03c89263          	bne	a7,t3,1b628 <__letf2+0x4c>
   1b608:	00686833          	or	a6,a6,t1
   1b60c:	08081463          	bnez	a6,1b694 <__letf2+0xb8>
   1b610:	01150663          	beq	a0,a7,1b61c <__letf2+0x40>
   1b614:	4505                	li	a0,1
   1b616:	cdb5                	beqz	a1,1b692 <__letf2+0xb6>
   1b618:	557d                	li	a0,-1
   1b61a:	8082                	ret
   1b61c:	8f51                	or	a4,a4,a2
   1b61e:	eb3d                	bnez	a4,1b694 <__letf2+0xb8>
   1b620:	fed59ae3          	bne	a1,a3,1b614 <__letf2+0x38>
   1b624:	4501                	li	a0,0
   1b626:	8082                	ret
   1b628:	03c51463          	bne	a0,t3,1b650 <__letf2+0x74>
   1b62c:	8f51                	or	a4,a4,a2
   1b62e:	e33d                	bnez	a4,1b694 <__letf2+0xb8>
   1b630:	00088863          	beqz	a7,1b640 <__letf2+0x64>
   1b634:	fed590e3          	bne	a1,a3,1b614 <__letf2+0x38>
   1b638:	557d                	li	a0,-1
   1b63a:	cda1                	beqz	a1,1b692 <__letf2+0xb6>
   1b63c:	852e                	mv	a0,a1
   1b63e:	8082                	ret
   1b640:	00686833          	or	a6,a6,t1
   1b644:	fe0818e3          	bnez	a6,1b634 <__letf2+0x58>
   1b648:	557d                	li	a0,-1
   1b64a:	c6a1                	beqz	a3,1b692 <__letf2+0xb6>
   1b64c:	8536                	mv	a0,a3
   1b64e:	8082                	ret
   1b650:	02088363          	beqz	a7,1b676 <__letf2+0x9a>
   1b654:	d161                	beqz	a0,1b614 <__letf2+0x38>
   1b656:	fad59fe3          	bne	a1,a3,1b614 <__letf2+0x38>
   1b65a:	fb154de3          	blt	a0,a7,1b614 <__letf2+0x38>
   1b65e:	fca8cde3          	blt	a7,a0,1b638 <__letf2+0x5c>
   1b662:	fb0769e3          	bltu	a4,a6,1b614 <__letf2+0x38>
   1b666:	fce819e3          	bne	a6,a4,1b638 <__letf2+0x5c>
   1b66a:	fa6665e3          	bltu	a2,t1,1b614 <__letf2+0x38>
   1b66e:	4501                	li	a0,0
   1b670:	02c37163          	bgeu	t1,a2,1b692 <__letf2+0xb6>
   1b674:	b7d1                	j	1b638 <__letf2+0x5c>
   1b676:	006867b3          	or	a5,a6,t1
   1b67a:	c119                	beqz	a0,1b680 <__letf2+0xa4>
   1b67c:	d7f1                	beqz	a5,1b648 <__letf2+0x6c>
   1b67e:	bf5d                	j	1b634 <__letf2+0x58>
   1b680:	00c768b3          	or	a7,a4,a2
   1b684:	00088663          	beqz	a7,1b690 <__letf2+0xb4>
   1b688:	d3e1                	beqz	a5,1b648 <__letf2+0x6c>
   1b68a:	fcd58ce3          	beq	a1,a3,1b662 <__letf2+0x86>
   1b68e:	b759                	j	1b614 <__letf2+0x38>
   1b690:	f3d1                	bnez	a5,1b614 <__letf2+0x38>
   1b692:	8082                	ret
   1b694:	00186073          	csrs	fflags,16
   1b698:	4509                	li	a0,2
   1b69a:	8082                	ret

000000000001b69c <__multf3>:
   1b69c:	711d                	add	sp,sp,-96
   1b69e:	e8a2                	sd	s0,80(sp)
   1b6a0:	f852                	sd	s4,48(sp)
   1b6a2:	e862                	sd	s8,16(sp)
   1b6a4:	ec86                	sd	ra,88(sp)
   1b6a6:	e4a6                	sd	s1,72(sp)
   1b6a8:	e0ca                	sd	s2,64(sp)
   1b6aa:	fc4e                	sd	s3,56(sp)
   1b6ac:	f456                	sd	s5,40(sp)
   1b6ae:	f05a                	sd	s6,32(sp)
   1b6b0:	ec5e                	sd	s7,24(sp)
   1b6b2:	e466                	sd	s9,8(sp)
   1b6b4:	842a                	mv	s0,a0
   1b6b6:	8c32                	mv	s8,a2
   1b6b8:	8a36                	mv	s4,a3
   1b6ba:	002029f3          	frrm	s3
   1b6be:	6721                	lui	a4,0x8
   1b6c0:	0305d793          	srl	a5,a1,0x30
   1b6c4:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1b6c6:	01059913          	sll	s2,a1,0x10
   1b6ca:	8ff9                	and	a5,a5,a4
   1b6cc:	2981                	sext.w	s3,s3
   1b6ce:	01095913          	srl	s2,s2,0x10
   1b6d2:	03f5da93          	srl	s5,a1,0x3f
   1b6d6:	c795                	beqz	a5,1b702 <__multf3+0x66>
   1b6d8:	00078c9b          	sext.w	s9,a5
   1b6dc:	08e78463          	beq	a5,a4,1b764 <__multf3+0xc8>
   1b6e0:	090e                	sll	s2,s2,0x3
   1b6e2:	03d55713          	srl	a4,a0,0x3d
   1b6e6:	01276733          	or	a4,a4,s2
   1b6ea:	7cf1                	lui	s9,0xffffc
   1b6ec:	4905                	li	s2,1
   1b6ee:	194e                	sll	s2,s2,0x33
   1b6f0:	0c85                	add	s9,s9,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc491>
   1b6f2:	01276933          	or	s2,a4,s2
   1b6f6:	00351b13          	sll	s6,a0,0x3
   1b6fa:	9cbe                	add	s9,s9,a5
   1b6fc:	4b81                	li	s7,0
   1b6fe:	4481                	li	s1,0
   1b700:	a8b5                	j	1b77c <__multf3+0xe0>
   1b702:	00a96b33          	or	s6,s2,a0
   1b706:	0e0b0b63          	beqz	s6,1b7fc <__multf3+0x160>
   1b70a:	02090e63          	beqz	s2,1b746 <__multf3+0xaa>
   1b70e:	854a                	mv	a0,s2
   1b710:	30e010ef          	jal	1ca1e <__clzdi2>
   1b714:	0005071b          	sext.w	a4,a0
   1b718:	ff170793          	add	a5,a4,-15
   1b71c:	03d00693          	li	a3,61
   1b720:	0037861b          	addw	a2,a5,3
   1b724:	40f687bb          	subw	a5,a3,a5
   1b728:	00c91933          	sll	s2,s2,a2
   1b72c:	00f457b3          	srl	a5,s0,a5
   1b730:	0127e7b3          	or	a5,a5,s2
   1b734:	00c41933          	sll	s2,s0,a2
   1b738:	7cf1                	lui	s9,0xffffc
   1b73a:	0cc5                	add	s9,s9,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc4a1>
   1b73c:	8b4a                	mv	s6,s2
   1b73e:	40ec8cb3          	sub	s9,s9,a4
   1b742:	893e                	mv	s2,a5
   1b744:	bf65                	j	1b6fc <__multf3+0x60>
   1b746:	2d8010ef          	jal	1ca1e <__clzdi2>
   1b74a:	0405071b          	addw	a4,a0,64
   1b74e:	ff170793          	add	a5,a4,-15
   1b752:	03c00693          	li	a3,60
   1b756:	fcf6d3e3          	bge	a3,a5,1b71c <__multf3+0x80>
   1b75a:	fc37879b          	addw	a5,a5,-61
   1b75e:	00f417b3          	sll	a5,s0,a5
   1b762:	bfd9                	j	1b738 <__multf3+0x9c>
   1b764:	00a96b33          	or	s6,s2,a0
   1b768:	080b0e63          	beqz	s6,1b804 <__multf3+0x168>
   1b76c:	4485                	li	s1,1
   1b76e:	14be                	sll	s1,s1,0x2f
   1b770:	009934b3          	sltu	s1,s2,s1
   1b774:	0044949b          	sllw	s1,s1,0x4
   1b778:	8b2a                	mv	s6,a0
   1b77a:	4b8d                	li	s7,3
   1b77c:	65a1                	lui	a1,0x8
   1b77e:	030a5613          	srl	a2,s4,0x30
   1b782:	56fd                	li	a3,-1
   1b784:	15fd                	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1b786:	0106d413          	srl	s0,a3,0x10
   1b78a:	8e6d                	and	a2,a2,a1
   1b78c:	008a7433          	and	s0,s4,s0
   1b790:	87e2                	mv	a5,s8
   1b792:	03fa5a13          	srl	s4,s4,0x3f
   1b796:	ca35                	beqz	a2,1b80a <__multf3+0x16e>
   1b798:	0006071b          	sext.w	a4,a2
   1b79c:	0cb60563          	beq	a2,a1,1b866 <__multf3+0x1ca>
   1b7a0:	040e                	sll	s0,s0,0x3
   1b7a2:	03dc5713          	srl	a4,s8,0x3d
   1b7a6:	8f41                	or	a4,a4,s0
   1b7a8:	4405                	li	s0,1
   1b7aa:	144e                	sll	s0,s0,0x33
   1b7ac:	8c59                	or	s0,s0,a4
   1b7ae:	7771                	lui	a4,0xffffc
   1b7b0:	0705                	add	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdc491>
   1b7b2:	003c1793          	sll	a5,s8,0x3
   1b7b6:	9732                	add	a4,a4,a2
   1b7b8:	4881                	li	a7,0
   1b7ba:	002b9693          	sll	a3,s7,0x2
   1b7be:	01970833          	add	a6,a4,s9
   1b7c2:	0116e6b3          	or	a3,a3,a7
   1b7c6:	4729                	li	a4,10
   1b7c8:	014ac633          	xor	a2,s5,s4
   1b7cc:	00180593          	add	a1,a6,1
   1b7d0:	2cd74163          	blt	a4,a3,1ba92 <__multf3+0x3f6>
   1b7d4:	4709                	li	a4,2
   1b7d6:	0ad74a63          	blt	a4,a3,1b88a <__multf3+0x1ee>
   1b7da:	16fd                	add	a3,a3,-1
   1b7dc:	4705                	li	a4,1
   1b7de:	0cd76563          	bltu	a4,a3,1b8a8 <__multf3+0x20c>
   1b7e2:	8bc6                	mv	s7,a7
   1b7e4:	4709                	li	a4,2
   1b7e6:	4ceb8063          	beq	s7,a4,1bca6 <__multf3+0x60a>
   1b7ea:	470d                	li	a4,3
   1b7ec:	4ceb8263          	beq	s7,a4,1bcb0 <__multf3+0x614>
   1b7f0:	4705                	li	a4,1
   1b7f2:	26eb9263          	bne	s7,a4,1ba56 <__multf3+0x3ba>
   1b7f6:	4701                	li	a4,0
   1b7f8:	4501                	li	a0,0
   1b7fa:	a179                	j	1bc88 <__multf3+0x5ec>
   1b7fc:	4901                	li	s2,0
   1b7fe:	4c81                	li	s9,0
   1b800:	4b85                	li	s7,1
   1b802:	bdf5                	j	1b6fe <__multf3+0x62>
   1b804:	4901                	li	s2,0
   1b806:	4b89                	li	s7,2
   1b808:	bddd                	j	1b6fe <__multf3+0x62>
   1b80a:	008c67b3          	or	a5,s8,s0
   1b80e:	c7ad                	beqz	a5,1b878 <__multf3+0x1dc>
   1b810:	c81d                	beqz	s0,1b846 <__multf3+0x1aa>
   1b812:	8522                	mv	a0,s0
   1b814:	20a010ef          	jal	1ca1e <__clzdi2>
   1b818:	2501                	sext.w	a0,a0
   1b81a:	ff150793          	add	a5,a0,-15
   1b81e:	03d00713          	li	a4,61
   1b822:	0037861b          	addw	a2,a5,3
   1b826:	40f707bb          	subw	a5,a4,a5
   1b82a:	00c41433          	sll	s0,s0,a2
   1b82e:	00fc57b3          	srl	a5,s8,a5
   1b832:	0087e6b3          	or	a3,a5,s0
   1b836:	00cc1433          	sll	s0,s8,a2
   1b83a:	7771                	lui	a4,0xffffc
   1b83c:	0745                	add	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc4a1>
   1b83e:	87a2                	mv	a5,s0
   1b840:	8f09                	sub	a4,a4,a0
   1b842:	8436                	mv	s0,a3
   1b844:	bf95                	j	1b7b8 <__multf3+0x11c>
   1b846:	8562                	mv	a0,s8
   1b848:	1d6010ef          	jal	1ca1e <__clzdi2>
   1b84c:	0405051b          	addw	a0,a0,64
   1b850:	ff150793          	add	a5,a0,-15
   1b854:	03c00713          	li	a4,60
   1b858:	fcf753e3          	bge	a4,a5,1b81e <__multf3+0x182>
   1b85c:	fc37879b          	addw	a5,a5,-61
   1b860:	00fc16b3          	sll	a3,s8,a5
   1b864:	bfd9                	j	1b83a <__multf3+0x19e>
   1b866:	008c6633          	or	a2,s8,s0
   1b86a:	ce01                	beqz	a2,1b882 <__multf3+0x1e6>
   1b86c:	82c5                	srl	a3,a3,0x11
   1b86e:	488d                	li	a7,3
   1b870:	f486e5e3          	bltu	a3,s0,1b7ba <__multf3+0x11e>
   1b874:	44c1                	li	s1,16
   1b876:	b791                	j	1b7ba <__multf3+0x11e>
   1b878:	4401                	li	s0,0
   1b87a:	4781                	li	a5,0
   1b87c:	4701                	li	a4,0
   1b87e:	4885                	li	a7,1
   1b880:	bf2d                	j	1b7ba <__multf3+0x11e>
   1b882:	4401                	li	s0,0
   1b884:	4781                	li	a5,0
   1b886:	4889                	li	a7,2
   1b888:	bf0d                	j	1b7ba <__multf3+0x11e>
   1b88a:	4705                	li	a4,1
   1b88c:	00d716b3          	sll	a3,a4,a3
   1b890:	5306f513          	and	a0,a3,1328
   1b894:	20051863          	bnez	a0,1baa4 <__multf3+0x408>
   1b898:	2406f313          	and	t1,a3,576
   1b89c:	3e031f63          	bnez	t1,1bc9a <__multf3+0x5fe>
   1b8a0:	0886f693          	and	a3,a3,136
   1b8a4:	1e069e63          	bnez	a3,1baa0 <__multf3+0x404>
   1b8a8:	56fd                	li	a3,-1
   1b8aa:	9281                	srl	a3,a3,0x20
   1b8ac:	00878f33          	add	t5,a5,s0
   1b8b0:	020b5513          	srl	a0,s6,0x20
   1b8b4:	0207d313          	srl	t1,a5,0x20
   1b8b8:	01690fb3          	add	t6,s2,s6
   1b8bc:	00ff3eb3          	sltu	t4,t5,a5
   1b8c0:	00db7b33          	and	s6,s6,a3
   1b8c4:	8ff5                	and	a5,a5,a3
   1b8c6:	036782b3          	mul	t0,a5,s6
   1b8ca:	012fbe33          	sltu	t3,t6,s2
   1b8ce:	88f2                	mv	a7,t3
   1b8d0:	8776                	mv	a4,t4
   1b8d2:	02f507b3          	mul	a5,a0,a5
   1b8d6:	026506b3          	mul	a3,a0,t1
   1b8da:	0202d513          	srl	a0,t0,0x20
   1b8de:	03630333          	mul	t1,t1,s6
   1b8e2:	933e                	add	t1,t1,a5
   1b8e4:	951a                	add	a0,a0,t1
   1b8e6:	00f57563          	bgeu	a0,a5,1b8f0 <__multf3+0x254>
   1b8ea:	4785                	li	a5,1
   1b8ec:	1782                	sll	a5,a5,0x20
   1b8ee:	96be                	add	a3,a3,a5
   1b8f0:	57fd                	li	a5,-1
   1b8f2:	9381                	srl	a5,a5,0x20
   1b8f4:	02055313          	srl	t1,a0,0x20
   1b8f8:	8d7d                	and	a0,a0,a5
   1b8fa:	00f2f2b3          	and	t0,t0,a5
   1b8fe:	1502                	sll	a0,a0,0x20
   1b900:	00fff3b3          	and	t2,t6,a5
   1b904:	9336                	add	t1,t1,a3
   1b906:	00ff77b3          	and	a5,t5,a5
   1b90a:	020f5693          	srl	a3,t5,0x20
   1b90e:	9516                	add	a0,a0,t0
   1b910:	020fd293          	srl	t0,t6,0x20
   1b914:	02778ab3          	mul	s5,a5,t2
   1b918:	02f287b3          	mul	a5,t0,a5
   1b91c:	020ada13          	srl	s4,s5,0x20
   1b920:	02d282b3          	mul	t0,t0,a3
   1b924:	027686b3          	mul	a3,a3,t2
   1b928:	96be                	add	a3,a3,a5
   1b92a:	9a36                	add	s4,s4,a3
   1b92c:	00fa7563          	bgeu	s4,a5,1b936 <__multf3+0x29a>
   1b930:	4785                	li	a5,1
   1b932:	1782                	sll	a5,a5,0x20
   1b934:	92be                	add	t0,t0,a5
   1b936:	57fd                	li	a5,-1
   1b938:	9381                	srl	a5,a5,0x20
   1b93a:	020a5393          	srl	t2,s4,0x20
   1b93e:	00fa7a33          	and	s4,s4,a5
   1b942:	00fafab3          	and	s5,s5,a5
   1b946:	1a02                	sll	s4,s4,0x20
   1b948:	02045693          	srl	a3,s0,0x20
   1b94c:	9a56                	add	s4,s4,s5
   1b94e:	02095a93          	srl	s5,s2,0x20
   1b952:	00f97933          	and	s2,s2,a5
   1b956:	8fe1                	and	a5,a5,s0
   1b958:	02f90b33          	mul	s6,s2,a5
   1b95c:	02fa87b3          	mul	a5,s5,a5
   1b960:	020b5413          	srl	s0,s6,0x20
   1b964:	02da8ab3          	mul	s5,s5,a3
   1b968:	032686b3          	mul	a3,a3,s2
   1b96c:	96be                	add	a3,a3,a5
   1b96e:	9436                	add	s0,s0,a3
   1b970:	00f47563          	bgeu	s0,a5,1b97a <__multf3+0x2de>
   1b974:	4785                	li	a5,1
   1b976:	1782                	sll	a5,a5,0x20
   1b978:	9abe                	add	s5,s5,a5
   1b97a:	597d                	li	s2,-1
   1b97c:	02095913          	srl	s2,s2,0x20
   1b980:	02045693          	srl	a3,s0,0x20
   1b984:	012477b3          	and	a5,s0,s2
   1b988:	40e00733          	neg	a4,a4
   1b98c:	006a0433          	add	s0,s4,t1
   1b990:	01f77733          	and	a4,a4,t6
   1b994:	411008b3          	neg	a7,a7
   1b998:	01443fb3          	sltu	t6,s0,s4
   1b99c:	01e8f8b3          	and	a7,a7,t5
   1b9a0:	01f38f33          	add	t5,t2,t6
   1b9a4:	9f16                	add	t5,t5,t0
   1b9a6:	01de7e33          	and	t3,t3,t4
   1b9aa:	01ff3fb3          	sltu	t6,t5,t6
   1b9ae:	977a                	add	a4,a4,t5
   1b9b0:	9ff2                	add	t6,t6,t3
   1b9b2:	01e73f33          	sltu	t5,a4,t5
   1b9b6:	9746                	add	a4,a4,a7
   1b9b8:	9f7e                	add	t5,t5,t6
   1b9ba:	011738b3          	sltu	a7,a4,a7
   1b9be:	40a40eb3          	sub	t4,s0,a0
   1b9c2:	40670e33          	sub	t3,a4,t1
   1b9c6:	1782                	sll	a5,a5,0x20
   1b9c8:	012b7b33          	and	s6,s6,s2
   1b9cc:	98fa                	add	a7,a7,t5
   1b9ce:	01d43f33          	sltu	t5,s0,t4
   1b9d2:	01c73fb3          	sltu	t6,a4,t3
   1b9d6:	96d6                	add	a3,a3,s5
   1b9d8:	41ee0e33          	sub	t3,t3,t5
   1b9dc:	97da                	add	a5,a5,s6
   1b9de:	4f01                	li	t5,0
   1b9e0:	01d47663          	bgeu	s0,t4,1b9ec <__multf3+0x350>
   1b9e4:	40e30333          	sub	t1,t1,a4
   1b9e8:	00133f13          	seqz	t5,t1
   1b9ec:	01ff6f33          	or	t5,t5,t6
   1b9f0:	40fe8fb3          	sub	t6,t4,a5
   1b9f4:	98b6                	add	a7,a7,a3
   1b9f6:	01feb733          	sltu	a4,t4,t6
   1b9fa:	40de06b3          	sub	a3,t3,a3
   1b9fe:	00de3e33          	sltu	t3,t3,a3
   1ba02:	40e78733          	sub	a4,a5,a4
   1ba06:	4301                	li	t1,0
   1ba08:	01fef463          	bgeu	t4,t6,1ba10 <__multf3+0x374>
   1ba0c:	0016b313          	seqz	t1,a3
   1ba10:	96ba                	add	a3,a3,a4
   1ba12:	00f6b733          	sltu	a4,a3,a5
   1ba16:	9746                	add	a4,a4,a7
   1ba18:	41e70733          	sub	a4,a4,t5
   1ba1c:	01c36333          	or	t1,t1,t3
   1ba20:	40670733          	sub	a4,a4,t1
   1ba24:	00df9793          	sll	a5,t6,0xd
   1ba28:	0736                	sll	a4,a4,0xd
   1ba2a:	0336d413          	srl	s0,a3,0x33
   1ba2e:	8fc9                	or	a5,a5,a0
   1ba30:	8c59                	or	s0,s0,a4
   1ba32:	00f037b3          	snez	a5,a5
   1ba36:	033fd513          	srl	a0,t6,0x33
   1ba3a:	9351                	srl	a4,a4,0x34
   1ba3c:	8fc9                	or	a5,a5,a0
   1ba3e:	06b6                	sll	a3,a3,0xd
   1ba40:	8b05                	and	a4,a4,1
   1ba42:	8fd5                	or	a5,a5,a3
   1ba44:	c33d                	beqz	a4,1baaa <__multf3+0x40e>
   1ba46:	0017d713          	srl	a4,a5,0x1
   1ba4a:	8b85                	and	a5,a5,1
   1ba4c:	8f5d                	or	a4,a4,a5
   1ba4e:	03f41793          	sll	a5,s0,0x3f
   1ba52:	8fd9                	or	a5,a5,a4
   1ba54:	8005                	srl	s0,s0,0x1
   1ba56:	6691                	lui	a3,0x4
   1ba58:	16fd                	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   1ba5a:	96ae                	add	a3,a3,a1
   1ba5c:	0ed05063          	blez	a3,1bb3c <__multf3+0x4a0>
   1ba60:	0077f713          	and	a4,a5,7
   1ba64:	cb31                	beqz	a4,1bab8 <__multf3+0x41c>
   1ba66:	4709                	li	a4,2
   1ba68:	0014e493          	or	s1,s1,1
   1ba6c:	04e98563          	beq	s3,a4,1bab6 <__multf3+0x41a>
   1ba70:	470d                	li	a4,3
   1ba72:	02e98e63          	beq	s3,a4,1baae <__multf3+0x412>
   1ba76:	04099163          	bnez	s3,1bab8 <__multf3+0x41c>
   1ba7a:	00f7f713          	and	a4,a5,15
   1ba7e:	4511                	li	a0,4
   1ba80:	02a70c63          	beq	a4,a0,1bab8 <__multf3+0x41c>
   1ba84:	00478713          	add	a4,a5,4
   1ba88:	00f73533          	sltu	a0,a4,a5
   1ba8c:	942a                	add	s0,s0,a0
   1ba8e:	87ba                	mv	a5,a4
   1ba90:	a025                	j	1bab8 <__multf3+0x41c>
   1ba92:	473d                	li	a4,15
   1ba94:	20e68e63          	beq	a3,a4,1bcb0 <__multf3+0x614>
   1ba98:	472d                	li	a4,11
   1ba9a:	8656                	mv	a2,s5
   1ba9c:	00e69463          	bne	a3,a4,1baa4 <__multf3+0x408>
   1baa0:	8652                	mv	a2,s4
   1baa2:	b381                	j	1b7e2 <__multf3+0x146>
   1baa4:	844a                	mv	s0,s2
   1baa6:	87da                	mv	a5,s6
   1baa8:	bb35                	j	1b7e4 <__multf3+0x148>
   1baaa:	85c2                	mv	a1,a6
   1baac:	b76d                	j	1ba56 <__multf3+0x3ba>
   1baae:	e609                	bnez	a2,1bab8 <__multf3+0x41c>
   1bab0:	00878713          	add	a4,a5,8
   1bab4:	bfd1                	j	1ba88 <__multf3+0x3ec>
   1bab6:	fe6d                	bnez	a2,1bab0 <__multf3+0x414>
   1bab8:	03445713          	srl	a4,s0,0x34
   1babc:	8b05                	and	a4,a4,1
   1babe:	c719                	beqz	a4,1bacc <__multf3+0x430>
   1bac0:	577d                	li	a4,-1
   1bac2:	1752                	sll	a4,a4,0x34
   1bac4:	177d                	add	a4,a4,-1
   1bac6:	6691                	lui	a3,0x4
   1bac8:	8c79                	and	s0,s0,a4
   1baca:	96ae                	add	a3,a3,a1
   1bacc:	65a1                	lui	a1,0x8
   1bace:	ffe58713          	add	a4,a1,-2 # 7ffe <exit-0x80ea>
   1bad2:	04d74063          	blt	a4,a3,1bb12 <__multf3+0x476>
   1bad6:	838d                	srl	a5,a5,0x3
   1bad8:	03d41513          	sll	a0,s0,0x3d
   1badc:	8d5d                	or	a0,a0,a5
   1bade:	00345713          	srl	a4,s0,0x3
   1bae2:	00f6161b          	sllw	a2,a2,0xf
   1bae6:	01071593          	sll	a1,a4,0x10
   1baea:	8ed1                	or	a3,a3,a2
   1baec:	16c2                	sll	a3,a3,0x30
   1baee:	81c1                	srl	a1,a1,0x10
   1baf0:	8dd5                	or	a1,a1,a3
   1baf2:	c099                	beqz	s1,1baf8 <__multf3+0x45c>
   1baf4:	0014a073          	csrs	fflags,s1
   1baf8:	60e6                	ld	ra,88(sp)
   1bafa:	6446                	ld	s0,80(sp)
   1bafc:	64a6                	ld	s1,72(sp)
   1bafe:	6906                	ld	s2,64(sp)
   1bb00:	79e2                	ld	s3,56(sp)
   1bb02:	7a42                	ld	s4,48(sp)
   1bb04:	7aa2                	ld	s5,40(sp)
   1bb06:	7b02                	ld	s6,32(sp)
   1bb08:	6be2                	ld	s7,24(sp)
   1bb0a:	6c42                	ld	s8,16(sp)
   1bb0c:	6ca2                	ld	s9,8(sp)
   1bb0e:	6125                	add	sp,sp,96
   1bb10:	8082                	ret
   1bb12:	4789                	li	a5,2
   1bb14:	02f98263          	beq	s3,a5,1bb38 <__multf3+0x49c>
   1bb18:	478d                	li	a5,3
   1bb1a:	00f98763          	beq	s3,a5,1bb28 <__multf3+0x48c>
   1bb1e:	00098663          	beqz	s3,1bb2a <__multf3+0x48e>
   1bb22:	557d                	li	a0,-1
   1bb24:	86ba                	mv	a3,a4
   1bb26:	a029                	j	1bb30 <__multf3+0x494>
   1bb28:	fe6d                	bnez	a2,1bb22 <__multf3+0x486>
   1bb2a:	4501                	li	a0,0
   1bb2c:	fff58693          	add	a3,a1,-1
   1bb30:	0054e493          	or	s1,s1,5
   1bb34:	872a                	mv	a4,a0
   1bb36:	b775                	j	1bae2 <__multf3+0x446>
   1bb38:	d66d                	beqz	a2,1bb22 <__multf3+0x486>
   1bb3a:	bfc5                	j	1bb2a <__multf3+0x48e>
   1bb3c:	e2c5                	bnez	a3,1bbdc <__multf3+0x540>
   1bb3e:	0077f693          	and	a3,a5,7
   1bb42:	8722                	mv	a4,s0
   1bb44:	ce8d                	beqz	a3,1bb7e <__multf3+0x4e2>
   1bb46:	4689                	li	a3,2
   1bb48:	0014e493          	or	s1,s1,1
   1bb4c:	02d98863          	beq	s3,a3,1bb7c <__multf3+0x4e0>
   1bb50:	468d                	li	a3,3
   1bb52:	02d98163          	beq	s3,a3,1bb74 <__multf3+0x4d8>
   1bb56:	02099463          	bnez	s3,1bb7e <__multf3+0x4e2>
   1bb5a:	00f7f693          	and	a3,a5,15
   1bb5e:	4591                	li	a1,4
   1bb60:	00b68f63          	beq	a3,a1,1bb7e <__multf3+0x4e2>
   1bb64:	ffc7b713          	sltiu	a4,a5,-4
   1bb68:	00174713          	xor	a4,a4,1
   1bb6c:	1702                	sll	a4,a4,0x20
   1bb6e:	9301                	srl	a4,a4,0x20
   1bb70:	9722                	add	a4,a4,s0
   1bb72:	a031                	j	1bb7e <__multf3+0x4e2>
   1bb74:	e609                	bnez	a2,1bb7e <__multf3+0x4e2>
   1bb76:	ff87b713          	sltiu	a4,a5,-8
   1bb7a:	b7fd                	j	1bb68 <__multf3+0x4cc>
   1bb7c:	fe6d                	bnez	a2,1bb76 <__multf3+0x4da>
   1bb7e:	9351                	srl	a4,a4,0x34
   1bb80:	00174713          	xor	a4,a4,1
   1bb84:	00177593          	and	a1,a4,1
   1bb88:	4705                	li	a4,1
   1bb8a:	04000693          	li	a3,64
   1bb8e:	9e99                	subw	a3,a3,a4
   1bb90:	00d41533          	sll	a0,s0,a3
   1bb94:	00e7d833          	srl	a6,a5,a4
   1bb98:	00d796b3          	sll	a3,a5,a3
   1bb9c:	01056533          	or	a0,a0,a6
   1bba0:	00d036b3          	snez	a3,a3
   1bba4:	8d55                	or	a0,a0,a3
   1bba6:	00e45733          	srl	a4,s0,a4
   1bbaa:	00757793          	and	a5,a0,7
   1bbae:	cfbd                	beqz	a5,1bc2c <__multf3+0x590>
   1bbb0:	4789                	li	a5,2
   1bbb2:	0014e493          	or	s1,s1,1
   1bbb6:	06f98a63          	beq	s3,a5,1bc2a <__multf3+0x58e>
   1bbba:	478d                	li	a5,3
   1bbbc:	06f98363          	beq	s3,a5,1bc22 <__multf3+0x586>
   1bbc0:	06099663          	bnez	s3,1bc2c <__multf3+0x590>
   1bbc4:	00f57793          	and	a5,a0,15
   1bbc8:	4691                	li	a3,4
   1bbca:	06d78163          	beq	a5,a3,1bc2c <__multf3+0x590>
   1bbce:	00450793          	add	a5,a0,4
   1bbd2:	00a7b6b3          	sltu	a3,a5,a0
   1bbd6:	9736                	add	a4,a4,a3
   1bbd8:	853e                	mv	a0,a5
   1bbda:	a889                	j	1bc2c <__multf3+0x590>
   1bbdc:	4705                	li	a4,1
   1bbde:	8f15                	sub	a4,a4,a3
   1bbe0:	07400693          	li	a3,116
   1bbe4:	06e6cf63          	blt	a3,a4,1bc62 <__multf3+0x5c6>
   1bbe8:	03f00693          	li	a3,63
   1bbec:	0007059b          	sext.w	a1,a4
   1bbf0:	00e6c463          	blt	a3,a4,1bbf8 <__multf3+0x55c>
   1bbf4:	4585                	li	a1,1
   1bbf6:	bf51                	j	1bb8a <__multf3+0x4ee>
   1bbf8:	fc05851b          	addw	a0,a1,-64
   1bbfc:	04000813          	li	a6,64
   1bc00:	00a45533          	srl	a0,s0,a0
   1bc04:	4681                	li	a3,0
   1bc06:	01070763          	beq	a4,a6,1bc14 <__multf3+0x578>
   1bc0a:	08000693          	li	a3,128
   1bc0e:	9e8d                	subw	a3,a3,a1
   1bc10:	00d416b3          	sll	a3,s0,a3
   1bc14:	8edd                	or	a3,a3,a5
   1bc16:	00d036b3          	snez	a3,a3
   1bc1a:	8d55                	or	a0,a0,a3
   1bc1c:	4585                	li	a1,1
   1bc1e:	4701                	li	a4,0
   1bc20:	b769                	j	1bbaa <__multf3+0x50e>
   1bc22:	e609                	bnez	a2,1bc2c <__multf3+0x590>
   1bc24:	00850793          	add	a5,a0,8
   1bc28:	b76d                	j	1bbd2 <__multf3+0x536>
   1bc2a:	fe6d                	bnez	a2,1bc24 <__multf3+0x588>
   1bc2c:	03375793          	srl	a5,a4,0x33
   1bc30:	8b85                	and	a5,a5,1
   1bc32:	cb99                	beqz	a5,1bc48 <__multf3+0x5ac>
   1bc34:	0014e493          	or	s1,s1,1
   1bc38:	4701                	li	a4,0
   1bc3a:	4501                	li	a0,0
   1bc3c:	4685                	li	a3,1
   1bc3e:	ea0582e3          	beqz	a1,1bae2 <__multf3+0x446>
   1bc42:	0024e493          	or	s1,s1,2
   1bc46:	bd71                	j	1bae2 <__multf3+0x446>
   1bc48:	03d71793          	sll	a5,a4,0x3d
   1bc4c:	810d                	srl	a0,a0,0x3
   1bc4e:	8d5d                	or	a0,a0,a5
   1bc50:	830d                	srl	a4,a4,0x3
   1bc52:	4681                	li	a3,0
   1bc54:	e80587e3          	beqz	a1,1bae2 <__multf3+0x446>
   1bc58:	0014f793          	and	a5,s1,1
   1bc5c:	e80783e3          	beqz	a5,1bae2 <__multf3+0x446>
   1bc60:	b7cd                	j	1bc42 <__multf3+0x5a6>
   1bc62:	0087e533          	or	a0,a5,s0
   1bc66:	cd11                	beqz	a0,1bc82 <__multf3+0x5e6>
   1bc68:	4789                	li	a5,2
   1bc6a:	0014e493          	or	s1,s1,1
   1bc6e:	02f98363          	beq	s3,a5,1bc94 <__multf3+0x5f8>
   1bc72:	478d                	li	a5,3
   1bc74:	00f98c63          	beq	s3,a5,1bc8c <__multf3+0x5f0>
   1bc78:	4515                	li	a0,5
   1bc7a:	00098363          	beqz	s3,1bc80 <__multf3+0x5e4>
   1bc7e:	4505                	li	a0,1
   1bc80:	810d                	srl	a0,a0,0x3
   1bc82:	0024e493          	or	s1,s1,2
   1bc86:	4701                	li	a4,0
   1bc88:	4681                	li	a3,0
   1bc8a:	bda1                	j	1bae2 <__multf3+0x446>
   1bc8c:	4505                	li	a0,1
   1bc8e:	fa6d                	bnez	a2,1bc80 <__multf3+0x5e4>
   1bc90:	4525                	li	a0,9
   1bc92:	b7fd                	j	1bc80 <__multf3+0x5e4>
   1bc94:	4505                	li	a0,1
   1bc96:	d66d                	beqz	a2,1bc80 <__multf3+0x5e4>
   1bc98:	bfe5                	j	1bc90 <__multf3+0x5f4>
   1bc9a:	66a1                	lui	a3,0x8
   1bc9c:	173e                	sll	a4,a4,0x2f
   1bc9e:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   1bca0:	4601                	li	a2,0
   1bca2:	44c1                	li	s1,16
   1bca4:	bd3d                	j	1bae2 <__multf3+0x446>
   1bca6:	66a1                	lui	a3,0x8
   1bca8:	4701                	li	a4,0
   1bcaa:	4501                	li	a0,0
   1bcac:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   1bcae:	bd15                	j	1bae2 <__multf3+0x446>
   1bcb0:	4705                	li	a4,1
   1bcb2:	66a1                	lui	a3,0x8
   1bcb4:	173e                	sll	a4,a4,0x2f
   1bcb6:	4501                	li	a0,0
   1bcb8:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   1bcba:	4601                	li	a2,0
   1bcbc:	b51d                	j	1bae2 <__multf3+0x446>

000000000001bcbe <__subtf3>:
   1bcbe:	7179                	add	sp,sp,-48
   1bcc0:	f406                	sd	ra,40(sp)
   1bcc2:	f022                	sd	s0,32(sp)
   1bcc4:	ec26                	sd	s1,24(sp)
   1bcc6:	e84a                	sd	s2,16(sp)
   1bcc8:	e44e                	sd	s3,8(sp)
   1bcca:	e052                	sd	s4,0(sp)
   1bccc:	00202973          	frrm	s2
   1bcd0:	537d                	li	t1,-1
   1bcd2:	01035313          	srl	t1,t1,0x10
   1bcd6:	0305d413          	srl	s0,a1,0x30
   1bcda:	68a1                	lui	a7,0x8
   1bcdc:	03f5d493          	srl	s1,a1,0x3f
   1bce0:	0065f5b3          	and	a1,a1,t1
   1bce4:	00359793          	sll	a5,a1,0x3
   1bce8:	18fd                	add	a7,a7,-1 # 7fff <exit-0x80e9>
   1bcea:	03d55593          	srl	a1,a0,0x3d
   1bcee:	0306d713          	srl	a4,a3,0x30
   1bcf2:	03f6d813          	srl	a6,a3,0x3f
   1bcf6:	0066f6b3          	and	a3,a3,t1
   1bcfa:	8ddd                	or	a1,a1,a5
   1bcfc:	01177733          	and	a4,a4,a7
   1bd00:	00369793          	sll	a5,a3,0x3
   1bd04:	03d65693          	srl	a3,a2,0x3d
   1bd08:	2901                	sext.w	s2,s2
   1bd0a:	01147433          	and	s0,s0,a7
   1bd0e:	050e                	sll	a0,a0,0x3
   1bd10:	8edd                	or	a3,a3,a5
   1bd12:	060e                	sll	a2,a2,0x3
   1bd14:	05171863          	bne	a4,a7,1bd64 <__subtf3+0xa6>
   1bd18:	77e1                	lui	a5,0xffff8
   1bd1a:	2785                	addw	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd8491>
   1bd1c:	00c6e8b3          	or	a7,a3,a2
   1bd20:	9fa1                	addw	a5,a5,s0
   1bd22:	02088763          	beqz	a7,1bd50 <__subtf3+0x92>
   1bd26:	8342                	mv	t1,a6
   1bd28:	4b049363          	bne	s1,a6,1c1ce <__subtf3+0x510>
   1bd2c:	24078d63          	beqz	a5,1bf86 <__subtf3+0x2c8>
   1bd30:	4a041263          	bnez	s0,1c1d4 <__subtf3+0x516>
   1bd34:	00a5e833          	or	a6,a1,a0
   1bd38:	1e081763          	bnez	a6,1bf26 <__subtf3+0x268>
   1bd3c:	65a1                	lui	a1,0x8
   1bd3e:	15fd                	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1bd40:	4781                	li	a5,0
   1bd42:	0ab71463          	bne	a4,a1,1bdea <__subtf3+0x12c>
   1bd46:	00c6e833          	or	a6,a3,a2
   1bd4a:	2c080563          	beqz	a6,1c014 <__subtf3+0x356>
   1bd4e:	a159                	j	1c1d4 <__subtf3+0x516>
   1bd50:	00184313          	xor	t1,a6,1
   1bd54:	48649763          	bne	s1,t1,1c1e2 <__subtf3+0x524>
   1bd58:	22078763          	beqz	a5,1bf86 <__subtf3+0x2c8>
   1bd5c:	dc61                	beqz	s0,1bd34 <__subtf3+0x76>
   1bd5e:	4801                	li	a6,0
   1bd60:	4581                	li	a1,0
   1bd62:	abb5                	j	1c2de <__subtf3+0x620>
   1bd64:	00184313          	xor	t1,a6,1
   1bd68:	40e407bb          	subw	a5,s0,a4
   1bd6c:	883e                	mv	a6,a5
   1bd6e:	38649963          	bne	s1,t1,1c100 <__subtf3+0x442>
   1bd72:	16f05063          	blez	a5,1bed2 <__subtf3+0x214>
   1bd76:	eb69                	bnez	a4,1be48 <__subtf3+0x18a>
   1bd78:	00c6e7b3          	or	a5,a3,a2
   1bd7c:	e791                	bnez	a5,1bd88 <__subtf3+0xca>
   1bd7e:	05140963          	beq	s0,a7,1bdd0 <__subtf3+0x112>
   1bd82:	86ae                	mv	a3,a1
   1bd84:	862a                	mv	a2,a0
   1bd86:	aca1                	j	1bfde <__subtf3+0x320>
   1bd88:	fff8079b          	addw	a5,a6,-1
   1bd8c:	e3a1                	bnez	a5,1bdcc <__subtf3+0x10e>
   1bd8e:	962a                	add	a2,a2,a0
   1bd90:	96ae                	add	a3,a3,a1
   1bd92:	00a63533          	sltu	a0,a2,a0
   1bd96:	96aa                	add	a3,a3,a0
   1bd98:	8722                	mv	a4,s0
   1bd9a:	0336d793          	srl	a5,a3,0x33
   1bd9e:	8b85                	and	a5,a5,1
   1bda0:	22078763          	beqz	a5,1bfce <__subtf3+0x310>
   1bda4:	67a1                	lui	a5,0x8
   1bda6:	0705                	add	a4,a4,1
   1bda8:	fff78593          	add	a1,a5,-1 # 7fff <exit-0x80e9>
   1bdac:	32b70363          	beq	a4,a1,1c0d2 <__subtf3+0x414>
   1bdb0:	57fd                	li	a5,-1
   1bdb2:	17ce                	sll	a5,a5,0x33
   1bdb4:	17fd                	add	a5,a5,-1
   1bdb6:	8ff5                	and	a5,a5,a3
   1bdb8:	00165693          	srl	a3,a2,0x1
   1bdbc:	8a05                	and	a2,a2,1
   1bdbe:	8ed1                	or	a3,a3,a2
   1bdc0:	03f79613          	sll	a2,a5,0x3f
   1bdc4:	8e55                	or	a2,a2,a3
   1bdc6:	0017d693          	srl	a3,a5,0x1
   1bdca:	a411                	j	1bfce <__subtf3+0x310>
   1bdcc:	0d141563          	bne	s0,a7,1be96 <__subtf3+0x1d8>
   1bdd0:	00a5e833          	or	a6,a1,a0
   1bdd4:	7e080263          	beqz	a6,1c5b8 <__subtf3+0x8fa>
   1bdd8:	0325d793          	srl	a5,a1,0x32
   1bddc:	0017c793          	xor	a5,a5,1
   1bde0:	8b85                	and	a5,a5,1
   1bde2:	0792                	sll	a5,a5,0x4
   1bde4:	86ae                	mv	a3,a1
   1bde6:	862a                	mv	a2,a0
   1bde8:	8722                	mv	a4,s0
   1bdea:	00767593          	and	a1,a2,7
   1bdee:	78059063          	bnez	a1,1c56e <__subtf3+0x8b0>
   1bdf2:	85b6                	mv	a1,a3
   1bdf4:	8532                	mv	a0,a2
   1bdf6:	0335d693          	srl	a3,a1,0x33
   1bdfa:	8a85                	and	a3,a3,1
   1bdfc:	7c068163          	beqz	a3,1c5be <__subtf3+0x900>
   1be00:	66a1                	lui	a3,0x8
   1be02:	0705                	add	a4,a4,1
   1be04:	fff68613          	add	a2,a3,-1 # 7fff <exit-0x80e9>
   1be08:	78c70063          	beq	a4,a2,1c588 <__subtf3+0x8ca>
   1be0c:	56fd                	li	a3,-1
   1be0e:	16ce                	sll	a3,a3,0x33
   1be10:	16fd                	add	a3,a3,-1
   1be12:	8df5                	and	a1,a1,a3
   1be14:	00355693          	srl	a3,a0,0x3
   1be18:	03d59513          	sll	a0,a1,0x3d
   1be1c:	8d55                	or	a0,a0,a3
   1be1e:	818d                	srl	a1,a1,0x3
   1be20:	1746                	sll	a4,a4,0x31
   1be22:	00f4949b          	sllw	s1,s1,0xf
   1be26:	9345                	srl	a4,a4,0x31
   1be28:	05c2                	sll	a1,a1,0x10
   1be2a:	8f45                	or	a4,a4,s1
   1be2c:	1742                	sll	a4,a4,0x30
   1be2e:	81c1                	srl	a1,a1,0x10
   1be30:	8dd9                	or	a1,a1,a4
   1be32:	c399                	beqz	a5,1be38 <__subtf3+0x17a>
   1be34:	0017a073          	csrs	fflags,a5
   1be38:	70a2                	ld	ra,40(sp)
   1be3a:	7402                	ld	s0,32(sp)
   1be3c:	64e2                	ld	s1,24(sp)
   1be3e:	6942                	ld	s2,16(sp)
   1be40:	69a2                	ld	s3,8(sp)
   1be42:	6a02                	ld	s4,0(sp)
   1be44:	6145                	add	sp,sp,48
   1be46:	8082                	ret
   1be48:	f91404e3          	beq	s0,a7,1bdd0 <__subtf3+0x112>
   1be4c:	07400713          	li	a4,116
   1be50:	04f74763          	blt	a4,a5,1be9e <__subtf3+0x1e0>
   1be54:	4705                	li	a4,1
   1be56:	174e                	sll	a4,a4,0x33
   1be58:	8ed9                	or	a3,a3,a4
   1be5a:	03f00713          	li	a4,63
   1be5e:	04f74363          	blt	a4,a5,1bea4 <__subtf3+0x1e6>
   1be62:	04000813          	li	a6,64
   1be66:	40f8083b          	subw	a6,a6,a5
   1be6a:	01069733          	sll	a4,a3,a6
   1be6e:	00f658b3          	srl	a7,a2,a5
   1be72:	01061833          	sll	a6,a2,a6
   1be76:	01176733          	or	a4,a4,a7
   1be7a:	01003833          	snez	a6,a6
   1be7e:	01076733          	or	a4,a4,a6
   1be82:	00f6d7b3          	srl	a5,a3,a5
   1be86:	00a70633          	add	a2,a4,a0
   1be8a:	97ae                	add	a5,a5,a1
   1be8c:	00e63733          	sltu	a4,a2,a4
   1be90:	00e786b3          	add	a3,a5,a4
   1be94:	b711                	j	1bd98 <__subtf3+0xda>
   1be96:	07400713          	li	a4,116
   1be9a:	fcf750e3          	bge	a4,a5,1be5a <__subtf3+0x19c>
   1be9e:	4781                	li	a5,0
   1bea0:	4705                	li	a4,1
   1bea2:	b7d5                	j	1be86 <__subtf3+0x1c8>
   1bea4:	fc07871b          	addw	a4,a5,-64
   1bea8:	04000893          	li	a7,64
   1beac:	00e6d733          	srl	a4,a3,a4
   1beb0:	4801                	li	a6,0
   1beb2:	01178863          	beq	a5,a7,1bec2 <__subtf3+0x204>
   1beb6:	08000813          	li	a6,128
   1beba:	40f8083b          	subw	a6,a6,a5
   1bebe:	01069833          	sll	a6,a3,a6
   1bec2:	00c86833          	or	a6,a6,a2
   1bec6:	01003833          	snez	a6,a6
   1beca:	01076733          	or	a4,a4,a6
   1bece:	4781                	li	a5,0
   1bed0:	bf5d                	j	1be86 <__subtf3+0x1c8>
   1bed2:	cbd5                	beqz	a5,1bf86 <__subtf3+0x2c8>
   1bed4:	e60400e3          	beqz	s0,1bd34 <__subtf3+0x76>
   1bed8:	f8c00893          	li	a7,-116
   1bedc:	0717cb63          	blt	a5,a7,1bf52 <__subtf3+0x294>
   1bee0:	4805                	li	a6,1
   1bee2:	184e                	sll	a6,a6,0x33
   1bee4:	40f007bb          	negw	a5,a5
   1bee8:	0105e5b3          	or	a1,a1,a6
   1beec:	03f00813          	li	a6,63
   1bef0:	06f84463          	blt	a6,a5,1bf58 <__subtf3+0x29a>
   1bef4:	04000893          	li	a7,64
   1bef8:	40f888bb          	subw	a7,a7,a5
   1befc:	00f55333          	srl	t1,a0,a5
   1bf00:	01159833          	sll	a6,a1,a7
   1bf04:	011518b3          	sll	a7,a0,a7
   1bf08:	00686833          	or	a6,a6,t1
   1bf0c:	011038b3          	snez	a7,a7
   1bf10:	01186533          	or	a0,a6,a7
   1bf14:	00f5d7b3          	srl	a5,a1,a5
   1bf18:	962a                	add	a2,a2,a0
   1bf1a:	97b6                	add	a5,a5,a3
   1bf1c:	00a63533          	sltu	a0,a2,a0
   1bf20:	00a786b3          	add	a3,a5,a0
   1bf24:	bd9d                	j	1bd9a <__subtf3+0xdc>
   1bf26:	fff7c793          	not	a5,a5
   1bf2a:	e799                	bnez	a5,1bf38 <__subtf3+0x27a>
   1bf2c:	962a                	add	a2,a2,a0
   1bf2e:	96ae                	add	a3,a3,a1
   1bf30:	00a63533          	sltu	a0,a2,a0
   1bf34:	96aa                	add	a3,a3,a0
   1bf36:	b595                	j	1bd9a <__subtf3+0xdc>
   1bf38:	6821                	lui	a6,0x8
   1bf3a:	187d                	add	a6,a6,-1 # 7fff <exit-0x80e9>
   1bf3c:	01071763          	bne	a4,a6,1bf4a <__subtf3+0x28c>
   1bf40:	00c6e833          	or	a6,a3,a2
   1bf44:	e0080ee3          	beqz	a6,1bd60 <__subtf3+0xa2>
   1bf48:	a471                	j	1c1d4 <__subtf3+0x516>
   1bf4a:	07400813          	li	a6,116
   1bf4e:	f8f85fe3          	bge	a6,a5,1beec <__subtf3+0x22e>
   1bf52:	4781                	li	a5,0
   1bf54:	4505                	li	a0,1
   1bf56:	b7c9                	j	1bf18 <__subtf3+0x25a>
   1bf58:	fc07881b          	addw	a6,a5,-64
   1bf5c:	04000313          	li	t1,64
   1bf60:	0105d833          	srl	a6,a1,a6
   1bf64:	4881                	li	a7,0
   1bf66:	00678863          	beq	a5,t1,1bf76 <__subtf3+0x2b8>
   1bf6a:	08000893          	li	a7,128
   1bf6e:	40f888bb          	subw	a7,a7,a5
   1bf72:	011598b3          	sll	a7,a1,a7
   1bf76:	00a8e8b3          	or	a7,a7,a0
   1bf7a:	011038b3          	snez	a7,a7
   1bf7e:	01186533          	or	a0,a6,a7
   1bf82:	4781                	li	a5,0
   1bf84:	bf51                	j	1bf18 <__subtf3+0x25a>
   1bf86:	68a1                	lui	a7,0x8
   1bf88:	ffe88813          	add	a6,a7,-2 # 7ffe <exit-0x80ea>
   1bf8c:	00140793          	add	a5,s0,1
   1bf90:	0107f333          	and	t1,a5,a6
   1bf94:	18fd                	add	a7,a7,-1
   1bf96:	0c031963          	bnez	t1,1c068 <__subtf3+0x3aa>
   1bf9a:	00a5e833          	or	a6,a1,a0
   1bf9e:	e815                	bnez	s0,1bfd2 <__subtf3+0x314>
   1bfa0:	54080063          	beqz	a6,1c4e0 <__subtf3+0x822>
   1bfa4:	00c6e7b3          	or	a5,a3,a2
   1bfa8:	46078b63          	beqz	a5,1c41e <__subtf3+0x760>
   1bfac:	962a                	add	a2,a2,a0
   1bfae:	00a637b3          	sltu	a5,a2,a0
   1bfb2:	96ae                	add	a3,a3,a1
   1bfb4:	00f685b3          	add	a1,a3,a5
   1bfb8:	0335d793          	srl	a5,a1,0x33
   1bfbc:	8b85                	and	a5,a5,1
   1bfbe:	8532                	mv	a0,a2
   1bfc0:	44078f63          	beqz	a5,1c41e <__subtf3+0x760>
   1bfc4:	56fd                	li	a3,-1
   1bfc6:	16ce                	sll	a3,a3,0x33
   1bfc8:	16fd                	add	a3,a3,-1
   1bfca:	8eed                	and	a3,a3,a1
   1bfcc:	4705                	li	a4,1
   1bfce:	4781                	li	a5,0
   1bfd0:	bd29                	j	1bdea <__subtf3+0x12c>
   1bfd2:	03141863          	bne	s0,a7,1c002 <__subtf3+0x344>
   1bfd6:	00081663          	bnez	a6,1bfe2 <__subtf3+0x324>
   1bfda:	f68703e3          	beq	a4,s0,1bf40 <__subtf3+0x282>
   1bfde:	8722                	mv	a4,s0
   1bfe0:	b7fd                	j	1bfce <__subtf3+0x310>
   1bfe2:	4885                	li	a7,1
   1bfe4:	18ca                	sll	a7,a7,0x32
   1bfe6:	0115f7b3          	and	a5,a1,a7
   1bfea:	00c6e333          	or	t1,a3,a2
   1bfee:	5c078a63          	beqz	a5,1c5c2 <__subtf3+0x904>
   1bff2:	4781                	li	a5,0
   1bff4:	06871363          	bne	a4,s0,1c05a <__subtf3+0x39c>
   1bff8:	02031063          	bnez	t1,1c018 <__subtf3+0x35a>
   1bffc:	86ae                	mv	a3,a1
   1bffe:	862a                	mv	a2,a0
   1c000:	b3ed                	j	1bdea <__subtf3+0x12c>
   1c002:	4781                	li	a5,0
   1c004:	05171963          	bne	a4,a7,1c056 <__subtf3+0x398>
   1c008:	00c6e8b3          	or	a7,a3,a2
   1c00c:	5c089063          	bnez	a7,1c5cc <__subtf3+0x90e>
   1c010:	fe0816e3          	bnez	a6,1bffc <__subtf3+0x33e>
   1c014:	4581                	li	a1,0
   1c016:	a819                	j	1c02c <__subtf3+0x36e>
   1c018:	0116f8b3          	and	a7,a3,a7
   1c01c:	04088463          	beqz	a7,1c064 <__subtf3+0x3a6>
   1c020:	4585                	li	a1,1
   1c022:	6721                	lui	a4,0x8
   1c024:	4481                	li	s1,0
   1c026:	15ca                	sll	a1,a1,0x32
   1c028:	4801                	li	a6,0
   1c02a:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1c02c:	66a1                	lui	a3,0x8
   1c02e:	03d59513          	sll	a0,a1,0x3d
   1c032:	00385813          	srl	a6,a6,0x3
   1c036:	16fd                	add	a3,a3,-1 # 7fff <exit-0x80e9>
   1c038:	01056533          	or	a0,a0,a6
   1c03c:	818d                	srl	a1,a1,0x3
   1c03e:	ded711e3          	bne	a4,a3,1be20 <__subtf3+0x162>
   1c042:	8d4d                	or	a0,a0,a1
   1c044:	4581                	li	a1,0
   1c046:	dc050de3          	beqz	a0,1be20 <__subtf3+0x162>
   1c04a:	4585                	li	a1,1
   1c04c:	15be                	sll	a1,a1,0x2f
   1c04e:	4501                	li	a0,0
   1c050:	4481                	li	s1,0
   1c052:	b3f9                	j	1be20 <__subtf3+0x162>
   1c054:	47c1                	li	a5,16
   1c056:	58080263          	beqz	a6,1c5da <__subtf3+0x91c>
   1c05a:	8ed1                	or	a3,a3,a2
   1c05c:	f2f1                	bnez	a3,1c020 <__subtf3+0x362>
   1c05e:	86ae                	mv	a3,a1
   1c060:	862a                	mv	a2,a0
   1c062:	aba5                	j	1c5da <__subtf3+0x91c>
   1c064:	47c1                	li	a5,16
   1c066:	bfd5                	j	1c05a <__subtf3+0x39c>
   1c068:	01178e63          	beq	a5,a7,1c084 <__subtf3+0x3c6>
   1c06c:	962a                	add	a2,a2,a0
   1c06e:	00a63533          	sltu	a0,a2,a0
   1c072:	96ae                	add	a3,a3,a1
   1c074:	96aa                	add	a3,a3,a0
   1c076:	03f69713          	sll	a4,a3,0x3f
   1c07a:	8205                	srl	a2,a2,0x1
   1c07c:	8e59                	or	a2,a2,a4
   1c07e:	8285                	srl	a3,a3,0x1
   1c080:	873e                	mv	a4,a5
   1c082:	b7b1                	j	1bfce <__subtf3+0x310>
   1c084:	52090563          	beqz	s2,1c5ae <__subtf3+0x8f0>
   1c088:	470d                	li	a4,3
   1c08a:	02e91a63          	bne	s2,a4,1c0be <__subtf3+0x400>
   1c08e:	52048063          	beqz	s1,1c5ae <__subtf3+0x8f0>
   1c092:	4681                	li	a3,0
   1c094:	55fd                	li	a1,-1
   1c096:	557d                	li	a0,-1
   1c098:	8742                	mv	a4,a6
   1c09a:	4795                	li	a5,5
   1c09c:	460d                	li	a2,3
   1c09e:	4cc90e63          	beq	s2,a2,1c57a <__subtf3+0x8bc>
   1c0a2:	4c091d63          	bnez	s2,1c57c <__subtf3+0x8be>
   1c0a6:	00f57613          	and	a2,a0,15
   1c0aa:	4811                	li	a6,4
   1c0ac:	4d060863          	beq	a2,a6,1c57c <__subtf3+0x8be>
   1c0b0:	00450613          	add	a2,a0,4
   1c0b4:	00a63833          	sltu	a6,a2,a0
   1c0b8:	95c2                	add	a1,a1,a6
   1c0ba:	8532                	mv	a0,a2
   1c0bc:	a1c1                	j	1c57c <__subtf3+0x8be>
   1c0be:	4709                	li	a4,2
   1c0c0:	00e91463          	bne	s2,a4,1c0c8 <__subtf3+0x40a>
   1c0c4:	4e049563          	bnez	s1,1c5ae <__subtf3+0x8f0>
   1c0c8:	55fd                	li	a1,-1
   1c0ca:	557d                	li	a0,-1
   1c0cc:	8742                	mv	a4,a6
   1c0ce:	4795                	li	a5,5
   1c0d0:	b31d                	j	1bdf6 <__subtf3+0x138>
   1c0d2:	4c090f63          	beqz	s2,1c5b0 <__subtf3+0x8f2>
   1c0d6:	468d                	li	a3,3
   1c0d8:	00d91a63          	bne	s2,a3,1c0ec <__subtf3+0x42e>
   1c0dc:	4c048a63          	beqz	s1,1c5b0 <__subtf3+0x8f2>
   1c0e0:	4681                	li	a3,0
   1c0e2:	55fd                	li	a1,-1
   1c0e4:	557d                	li	a0,-1
   1c0e6:	ffe78713          	add	a4,a5,-2
   1c0ea:	bf45                	j	1c09a <__subtf3+0x3dc>
   1c0ec:	4689                	li	a3,2
   1c0ee:	00d91463          	bne	s2,a3,1c0f6 <__subtf3+0x438>
   1c0f2:	4a049f63          	bnez	s1,1c5b0 <__subtf3+0x8f2>
   1c0f6:	55fd                	li	a1,-1
   1c0f8:	557d                	li	a0,-1
   1c0fa:	ffe78713          	add	a4,a5,-2
   1c0fe:	bfc1                	j	1c0ce <__subtf3+0x410>
   1c100:	10f05463          	blez	a5,1c208 <__subtf3+0x54a>
   1c104:	e729                	bnez	a4,1c14e <__subtf3+0x490>
   1c106:	00c6e7b3          	or	a5,a3,a2
   1c10a:	c6078ae3          	beqz	a5,1bd7e <__subtf3+0xc0>
   1c10e:	fff8079b          	addw	a5,a6,-1
   1c112:	e78d                	bnez	a5,1c13c <__subtf3+0x47e>
   1c114:	40c50633          	sub	a2,a0,a2
   1c118:	40d586b3          	sub	a3,a1,a3
   1c11c:	00c53533          	sltu	a0,a0,a2
   1c120:	8e89                	sub	a3,a3,a0
   1c122:	8722                	mv	a4,s0
   1c124:	0336d793          	srl	a5,a3,0x33
   1c128:	8b85                	and	a5,a5,1
   1c12a:	ea0782e3          	beqz	a5,1bfce <__subtf3+0x310>
   1c12e:	00d69993          	sll	s3,a3,0xd
   1c132:	00d9d993          	srl	s3,s3,0xd
   1c136:	8a32                	mv	s4,a2
   1c138:	843a                	mv	s0,a4
   1c13a:	ac69                	j	1c3d4 <__subtf3+0x716>
   1c13c:	c9140ae3          	beq	s0,a7,1bdd0 <__subtf3+0x112>
   1c140:	07400713          	li	a4,116
   1c144:	00f75e63          	bge	a4,a5,1c160 <__subtf3+0x4a2>
   1c148:	4781                	li	a5,0
   1c14a:	4705                	li	a4,1
   1c14c:	a081                	j	1c18c <__subtf3+0x4ce>
   1c14e:	c91401e3          	beq	s0,a7,1bdd0 <__subtf3+0x112>
   1c152:	07400713          	li	a4,116
   1c156:	fef749e3          	blt	a4,a5,1c148 <__subtf3+0x48a>
   1c15a:	4705                	li	a4,1
   1c15c:	174e                	sll	a4,a4,0x33
   1c15e:	8ed9                	or	a3,a3,a4
   1c160:	03f00713          	li	a4,63
   1c164:	02f74e63          	blt	a4,a5,1c1a0 <__subtf3+0x4e2>
   1c168:	04000813          	li	a6,64
   1c16c:	40f8083b          	subw	a6,a6,a5
   1c170:	01069733          	sll	a4,a3,a6
   1c174:	00f658b3          	srl	a7,a2,a5
   1c178:	01061833          	sll	a6,a2,a6
   1c17c:	01176733          	or	a4,a4,a7
   1c180:	01003833          	snez	a6,a6
   1c184:	01076733          	or	a4,a4,a6
   1c188:	00f6d7b3          	srl	a5,a3,a5
   1c18c:	40e50733          	sub	a4,a0,a4
   1c190:	40f587b3          	sub	a5,a1,a5
   1c194:	00e536b3          	sltu	a3,a0,a4
   1c198:	863a                	mv	a2,a4
   1c19a:	40d786b3          	sub	a3,a5,a3
   1c19e:	b751                	j	1c122 <__subtf3+0x464>
   1c1a0:	fc07871b          	addw	a4,a5,-64
   1c1a4:	04000893          	li	a7,64
   1c1a8:	00e6d733          	srl	a4,a3,a4
   1c1ac:	4801                	li	a6,0
   1c1ae:	01178863          	beq	a5,a7,1c1be <__subtf3+0x500>
   1c1b2:	08000813          	li	a6,128
   1c1b6:	40f8083b          	subw	a6,a6,a5
   1c1ba:	01069833          	sll	a6,a3,a6
   1c1be:	00c86833          	or	a6,a6,a2
   1c1c2:	01003833          	snez	a6,a6
   1c1c6:	01076733          	or	a4,a4,a6
   1c1ca:	4781                	li	a5,0
   1c1cc:	b7c1                	j	1c18c <__subtf3+0x4ce>
   1c1ce:	c3e5                	beqz	a5,1c2ae <__subtf3+0x5f0>
   1c1d0:	84c2                	mv	s1,a6
   1c1d2:	cc01                	beqz	s0,1c1ea <__subtf3+0x52c>
   1c1d4:	0326d793          	srl	a5,a3,0x32
   1c1d8:	0017c793          	xor	a5,a5,1
   1c1dc:	8b85                	and	a5,a5,1
   1c1de:	0792                	sll	a5,a5,0x4
   1c1e0:	b129                	j	1bdea <__subtf3+0x12c>
   1c1e2:	c7f1                	beqz	a5,1c2ae <__subtf3+0x5f0>
   1c1e4:	849a                	mv	s1,t1
   1c1e6:	b6041ce3          	bnez	s0,1bd5e <__subtf3+0xa0>
   1c1ea:	00a5e833          	or	a6,a1,a0
   1c1ee:	b40807e3          	beqz	a6,1bd3c <__subtf3+0x7e>
   1c1f2:	fff7c793          	not	a5,a5
   1c1f6:	ef89                	bnez	a5,1c210 <__subtf3+0x552>
   1c1f8:	40a60533          	sub	a0,a2,a0
   1c1fc:	00a637b3          	sltu	a5,a2,a0
   1c200:	8e8d                	sub	a3,a3,a1
   1c202:	862a                	mv	a2,a0
   1c204:	8e9d                	sub	a3,a3,a5
   1c206:	bf39                	j	1c124 <__subtf3+0x466>
   1c208:	c3dd                	beqz	a5,1c2ae <__subtf3+0x5f0>
   1c20a:	ec11                	bnez	s0,1c226 <__subtf3+0x568>
   1c20c:	849a                	mv	s1,t1
   1c20e:	bff1                	j	1c1ea <__subtf3+0x52c>
   1c210:	6821                	lui	a6,0x8
   1c212:	187d                	add	a6,a6,-1 # 7fff <exit-0x80e9>
   1c214:	d30706e3          	beq	a4,a6,1bf40 <__subtf3+0x282>
   1c218:	07400813          	li	a6,116
   1c21c:	02f85063          	bge	a6,a5,1c23c <__subtf3+0x57e>
   1c220:	4781                	li	a5,0
   1c222:	4505                	li	a0,1
   1c224:	a091                	j	1c268 <__subtf3+0x5aa>
   1c226:	f8c00893          	li	a7,-116
   1c22a:	0917c063          	blt	a5,a7,1c2aa <__subtf3+0x5ec>
   1c22e:	4805                	li	a6,1
   1c230:	184e                	sll	a6,a6,0x33
   1c232:	40f007bb          	negw	a5,a5
   1c236:	0105e5b3          	or	a1,a1,a6
   1c23a:	849a                	mv	s1,t1
   1c23c:	03f00813          	li	a6,63
   1c240:	02f84e63          	blt	a6,a5,1c27c <__subtf3+0x5be>
   1c244:	04000893          	li	a7,64
   1c248:	40f888bb          	subw	a7,a7,a5
   1c24c:	00f55333          	srl	t1,a0,a5
   1c250:	01159833          	sll	a6,a1,a7
   1c254:	011518b3          	sll	a7,a0,a7
   1c258:	00686833          	or	a6,a6,t1
   1c25c:	011038b3          	snez	a7,a7
   1c260:	01186533          	or	a0,a6,a7
   1c264:	00f5d7b3          	srl	a5,a1,a5
   1c268:	40a60533          	sub	a0,a2,a0
   1c26c:	00a635b3          	sltu	a1,a2,a0
   1c270:	40f687b3          	sub	a5,a3,a5
   1c274:	862a                	mv	a2,a0
   1c276:	40b786b3          	sub	a3,a5,a1
   1c27a:	b56d                	j	1c124 <__subtf3+0x466>
   1c27c:	fc07881b          	addw	a6,a5,-64
   1c280:	04000313          	li	t1,64
   1c284:	0105d833          	srl	a6,a1,a6
   1c288:	4881                	li	a7,0
   1c28a:	00678863          	beq	a5,t1,1c29a <__subtf3+0x5dc>
   1c28e:	08000893          	li	a7,128
   1c292:	40f888bb          	subw	a7,a7,a5
   1c296:	011598b3          	sll	a7,a1,a7
   1c29a:	00a8e8b3          	or	a7,a7,a0
   1c29e:	011038b3          	snez	a7,a7
   1c2a2:	01186533          	or	a0,a6,a7
   1c2a6:	4781                	li	a5,0
   1c2a8:	b7c1                	j	1c268 <__subtf3+0x5aa>
   1c2aa:	849a                	mv	s1,t1
   1c2ac:	bf95                	j	1c220 <__subtf3+0x562>
   1c2ae:	6e21                	lui	t3,0x8
   1c2b0:	00140793          	add	a5,s0,1
   1c2b4:	ffee0813          	add	a6,t3,-2 # 7ffe <exit-0x80ea>
   1c2b8:	0107f7b3          	and	a5,a5,a6
   1c2bc:	e7f5                	bnez	a5,1c3a8 <__subtf3+0x6ea>
   1c2be:	00c6e833          	or	a6,a3,a2
   1c2c2:	00a5e8b3          	or	a7,a1,a0
   1c2c6:	ec29                	bnez	s0,1c320 <__subtf3+0x662>
   1c2c8:	00089d63          	bnez	a7,1c2e2 <__subtf3+0x624>
   1c2cc:	20081d63          	bnez	a6,1c4e6 <__subtf3+0x828>
   1c2d0:	ffe90493          	add	s1,s2,-2
   1c2d4:	0014b493          	seqz	s1,s1
   1c2d8:	4581                	li	a1,0
   1c2da:	4801                	li	a6,0
   1c2dc:	4701                	li	a4,0
   1c2de:	4781                	li	a5,0
   1c2e0:	b3b1                	j	1c02c <__subtf3+0x36e>
   1c2e2:	12080e63          	beqz	a6,1c41e <__subtf3+0x760>
   1c2e6:	40c50733          	sub	a4,a0,a2
   1c2ea:	00e53833          	sltu	a6,a0,a4
   1c2ee:	40d587b3          	sub	a5,a1,a3
   1c2f2:	410787b3          	sub	a5,a5,a6
   1c2f6:	0337d813          	srl	a6,a5,0x33
   1c2fa:	00187813          	and	a6,a6,1
   1c2fe:	00080b63          	beqz	a6,1c314 <__subtf3+0x656>
   1c302:	40a60533          	sub	a0,a2,a0
   1c306:	8e8d                	sub	a3,a3,a1
   1c308:	00a63633          	sltu	a2,a2,a0
   1c30c:	40c685b3          	sub	a1,a3,a2
   1c310:	849a                	mv	s1,t1
   1c312:	a231                	j	1c41e <__subtf3+0x760>
   1c314:	00f766b3          	or	a3,a4,a5
   1c318:	dec5                	beqz	a3,1c2d0 <__subtf3+0x612>
   1c31a:	85be                	mv	a1,a5
   1c31c:	853a                	mv	a0,a4
   1c31e:	a201                	j	1c41e <__subtf3+0x760>
   1c320:	1e7d                	add	t3,t3,-1
   1c322:	05c41063          	bne	s0,t3,1c362 <__subtf3+0x6a4>
   1c326:	00089e63          	bnez	a7,1c342 <__subtf3+0x684>
   1c32a:	4781                	li	a5,0
   1c32c:	06871363          	bne	a4,s0,1c392 <__subtf3+0x6d4>
   1c330:	4585                	li	a1,1
   1c332:	15ca                	sll	a1,a1,0x32
   1c334:	4481                	li	s1,0
   1c336:	04080063          	beqz	a6,1c376 <__subtf3+0x6b8>
   1c33a:	8df5                	and	a1,a1,a3
   1c33c:	c5a5                	beqz	a1,1c3a4 <__subtf3+0x6e6>
   1c33e:	849a                	mv	s1,t1
   1c340:	b46d                	j	1bdea <__subtf3+0x12c>
   1c342:	4605                	li	a2,1
   1c344:	164a                	sll	a2,a2,0x32
   1c346:	00c5f7b3          	and	a5,a1,a2
   1c34a:	28078b63          	beqz	a5,1c5e0 <__subtf3+0x922>
   1c34e:	4781                	li	a5,0
   1c350:	2a871063          	bne	a4,s0,1c5f0 <__subtf3+0x932>
   1c354:	d00805e3          	beqz	a6,1c05e <__subtf3+0x3a0>
   1c358:	8e75                	and	a2,a2,a3
   1c35a:	cc0613e3          	bnez	a2,1c020 <__subtf3+0x362>
   1c35e:	47c1                	li	a5,16
   1c360:	ac41                	j	1c5f0 <__subtf3+0x932>
   1c362:	4781                	li	a5,0
   1c364:	03c71563          	bne	a4,t3,1c38e <__subtf3+0x6d0>
   1c368:	00081963          	bnez	a6,1c37a <__subtf3+0x6bc>
   1c36c:	ce0899e3          	bnez	a7,1c05e <__subtf3+0x3a0>
   1c370:	4585                	li	a1,1
   1c372:	4481                	li	s1,0
   1c374:	15ca                	sll	a1,a1,0x32
   1c376:	47c1                	li	a5,16
   1c378:	b955                	j	1c02c <__subtf3+0x36e>
   1c37a:	0326de13          	srl	t3,a3,0x32
   1c37e:	001e7e13          	and	t3,t3,1
   1c382:	000e0563          	beqz	t3,1c38c <__subtf3+0x6ce>
   1c386:	c8089de3          	bnez	a7,1c020 <__subtf3+0x362>
   1c38a:	bf55                	j	1c33e <__subtf3+0x680>
   1c38c:	47c1                	li	a5,16
   1c38e:	26089163          	bnez	a7,1c5f0 <__subtf3+0x932>
   1c392:	849a                	mv	s1,t1
   1c394:	24081363          	bnez	a6,1c5da <__subtf3+0x91c>
   1c398:	4585                	li	a1,1
   1c39a:	6721                	lui	a4,0x8
   1c39c:	4481                	li	s1,0
   1c39e:	15ca                	sll	a1,a1,0x32
   1c3a0:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1c3a2:	bfd1                	j	1c376 <__subtf3+0x6b8>
   1c3a4:	47c1                	li	a5,16
   1c3a6:	b7f5                	j	1c392 <__subtf3+0x6d4>
   1c3a8:	40c507b3          	sub	a5,a0,a2
   1c3ac:	00f53733          	sltu	a4,a0,a5
   1c3b0:	40d589b3          	sub	s3,a1,a3
   1c3b4:	40e989b3          	sub	s3,s3,a4
   1c3b8:	0339d713          	srl	a4,s3,0x33
   1c3bc:	8b05                	and	a4,a4,1
   1c3be:	8a3e                	mv	s4,a5
   1c3c0:	cf45                	beqz	a4,1c478 <__subtf3+0x7ba>
   1c3c2:	40a60a33          	sub	s4,a2,a0
   1c3c6:	40b689b3          	sub	s3,a3,a1
   1c3ca:	01463633          	sltu	a2,a2,s4
   1c3ce:	40c989b3          	sub	s3,s3,a2
   1c3d2:	849a                	mv	s1,t1
   1c3d4:	0a098663          	beqz	s3,1c480 <__subtf3+0x7c2>
   1c3d8:	854e                	mv	a0,s3
   1c3da:	644000ef          	jal	1ca1e <__clzdi2>
   1c3de:	ff45071b          	addw	a4,a0,-12
   1c3e2:	04000693          	li	a3,64
   1c3e6:	9e99                	subw	a3,a3,a4
   1c3e8:	00e999b3          	sll	s3,s3,a4
   1c3ec:	00da56b3          	srl	a3,s4,a3
   1c3f0:	0136e6b3          	or	a3,a3,s3
   1c3f4:	00ea19b3          	sll	s3,s4,a4
   1c3f8:	0c874c63          	blt	a4,s0,1c4d0 <__subtf3+0x812>
   1c3fc:	9f01                	subw	a4,a4,s0
   1c3fe:	2705                	addw	a4,a4,1
   1c400:	04000793          	li	a5,64
   1c404:	9f99                	subw	a5,a5,a4
   1c406:	00f69533          	sll	a0,a3,a5
   1c40a:	00e9d633          	srl	a2,s3,a4
   1c40e:	00f997b3          	sll	a5,s3,a5
   1c412:	8d51                	or	a0,a0,a2
   1c414:	00f037b3          	snez	a5,a5
   1c418:	8d5d                	or	a0,a0,a5
   1c41a:	00e6d5b3          	srl	a1,a3,a4
   1c41e:	00b567b3          	or	a5,a0,a1
   1c422:	ea078be3          	beqz	a5,1c2d8 <__subtf3+0x61a>
   1c426:	03f55793          	srl	a5,a0,0x3f
   1c42a:	00159713          	sll	a4,a1,0x1
   1c42e:	973e                	add	a4,a4,a5
   1c430:	00151793          	sll	a5,a0,0x1
   1c434:	0077f613          	and	a2,a5,7
   1c438:	00757693          	and	a3,a0,7
   1c43c:	0e060f63          	beqz	a2,1c53a <__subtf3+0x87c>
   1c440:	4609                	li	a2,2
   1c442:	0cc90763          	beq	s2,a2,1c510 <__subtf3+0x852>
   1c446:	4605                	li	a2,1
   1c448:	480d                	li	a6,3
   1c44a:	1652                	sll	a2,a2,0x34
   1c44c:	0b090063          	beq	s2,a6,1c4ec <__subtf3+0x82e>
   1c450:	08091f63          	bnez	s2,1c4ee <__subtf3+0x830>
   1c454:	00f7f813          	and	a6,a5,15
   1c458:	4891                	li	a7,4
   1c45a:	09180a63          	beq	a6,a7,1c4ee <__subtf3+0x830>
   1c45e:	ffc7b793          	sltiu	a5,a5,-4
   1c462:	0017c793          	xor	a5,a5,1
   1c466:	1782                	sll	a5,a5,0x20
   1c468:	9381                	srl	a5,a5,0x20
   1c46a:	97ba                	add	a5,a5,a4
   1c46c:	8ff1                	and	a5,a5,a2
   1c46e:	e3e5                	bnez	a5,1c54e <__subtf3+0x890>
   1c470:	c2f9                	beqz	a3,1c536 <__subtf3+0x878>
   1c472:	4685                	li	a3,1
   1c474:	4701                	li	a4,0
   1c476:	a201                	j	1c576 <__subtf3+0x8b8>
   1c478:	0137e7b3          	or	a5,a5,s3
   1c47c:	ffa1                	bnez	a5,1c3d4 <__subtf3+0x716>
   1c47e:	bd89                	j	1c2d0 <__subtf3+0x612>
   1c480:	8552                	mv	a0,s4
   1c482:	59c000ef          	jal	1ca1e <__clzdi2>
   1c486:	0345071b          	addw	a4,a0,52
   1c48a:	03f00593          	li	a1,63
   1c48e:	f4e5dae3          	bge	a1,a4,1c3e2 <__subtf3+0x724>
   1c492:	ff45069b          	addw	a3,a0,-12
   1c496:	00da16b3          	sll	a3,s4,a3
   1c49a:	02874b63          	blt	a4,s0,1c4d0 <__subtf3+0x812>
   1c49e:	408707bb          	subw	a5,a4,s0
   1c4a2:	0017871b          	addw	a4,a5,1
   1c4a6:	f4e5dde3          	bge	a1,a4,1c400 <__subtf3+0x742>
   1c4aa:	fc17879b          	addw	a5,a5,-63
   1c4ae:	04000593          	li	a1,64
   1c4b2:	00f6d7b3          	srl	a5,a3,a5
   1c4b6:	4501                	li	a0,0
   1c4b8:	00b70763          	beq	a4,a1,1c4c6 <__subtf3+0x808>
   1c4bc:	08000513          	li	a0,128
   1c4c0:	9d19                	subw	a0,a0,a4
   1c4c2:	00a69533          	sll	a0,a3,a0
   1c4c6:	00a03533          	snez	a0,a0
   1c4ca:	8d5d                	or	a0,a0,a5
   1c4cc:	4581                	li	a1,0
   1c4ce:	bf81                	j	1c41e <__subtf3+0x760>
   1c4d0:	57fd                	li	a5,-1
   1c4d2:	17ce                	sll	a5,a5,0x33
   1c4d4:	17fd                	add	a5,a5,-1
   1c4d6:	40e40733          	sub	a4,s0,a4
   1c4da:	8efd                	and	a3,a3,a5
   1c4dc:	864e                	mv	a2,s3
   1c4de:	bcc5                	j	1bfce <__subtf3+0x310>
   1c4e0:	85b6                	mv	a1,a3
   1c4e2:	8532                	mv	a0,a2
   1c4e4:	bf2d                	j	1c41e <__subtf3+0x760>
   1c4e6:	85b6                	mv	a1,a3
   1c4e8:	8532                	mv	a0,a2
   1c4ea:	b51d                	j	1c310 <__subtf3+0x652>
   1c4ec:	c489                	beqz	s1,1c4f6 <__subtf3+0x838>
   1c4ee:	8f71                	and	a4,a4,a2
   1c4f0:	ef39                	bnez	a4,1c54e <__subtf3+0x890>
   1c4f2:	f2c1                	bnez	a3,1c472 <__subtf3+0x7b4>
   1c4f4:	a821                	j	1c50c <__subtf3+0x84e>
   1c4f6:	ff87b793          	sltiu	a5,a5,-8
   1c4fa:	0017c793          	xor	a5,a5,1
   1c4fe:	1782                	sll	a5,a5,0x20
   1c500:	9381                	srl	a5,a5,0x20
   1c502:	97ba                	add	a5,a5,a4
   1c504:	8ff1                	and	a5,a5,a2
   1c506:	e7a1                	bnez	a5,1c54e <__subtf3+0x890>
   1c508:	4701                	li	a4,0
   1c50a:	e6ad                	bnez	a3,1c574 <__subtf3+0x8b6>
   1c50c:	4785                	li	a5,1
   1c50e:	a031                	j	1c51a <__subtf3+0x85c>
   1c510:	e881                	bnez	s1,1c520 <__subtf3+0x862>
   1c512:	9351                	srl	a4,a4,0x34
   1c514:	8b05                	and	a4,a4,1
   1c516:	4785                	li	a5,1
   1c518:	ef05                	bnez	a4,1c550 <__subtf3+0x892>
   1c51a:	0027e793          	or	a5,a5,2
   1c51e:	b8e1                	j	1bdf6 <__subtf3+0x138>
   1c520:	ff87b793          	sltiu	a5,a5,-8
   1c524:	0017c793          	xor	a5,a5,1
   1c528:	1782                	sll	a5,a5,0x20
   1c52a:	9381                	srl	a5,a5,0x20
   1c52c:	97ba                	add	a5,a5,a4
   1c52e:	93d1                	srl	a5,a5,0x34
   1c530:	8b85                	and	a5,a5,1
   1c532:	ef91                	bnez	a5,1c54e <__subtf3+0x890>
   1c534:	e6b1                	bnez	a3,1c580 <__subtf3+0x8c2>
   1c536:	4701                	li	a4,0
   1c538:	bfd1                	j	1c50c <__subtf3+0x84e>
   1c53a:	9351                	srl	a4,a4,0x34
   1c53c:	8b05                	and	a4,a4,1
   1c53e:	e715                	bnez	a4,1c56a <__subtf3+0x8ac>
   1c540:	4781                	li	a5,0
   1c542:	8a068ae3          	beqz	a3,1bdf6 <__subtf3+0x138>
   1c546:	4685                	li	a3,1
   1c548:	4701                	li	a4,0
   1c54a:	4781                	li	a5,0
   1c54c:	a031                	j	1c558 <__subtf3+0x89a>
   1c54e:	4785                	li	a5,1
   1c550:	4701                	li	a4,0
   1c552:	8a0682e3          	beqz	a3,1bdf6 <__subtf3+0x138>
   1c556:	4681                	li	a3,0
   1c558:	4609                	li	a2,2
   1c55a:	0017e793          	or	a5,a5,1
   1c55e:	b2c91fe3          	bne	s2,a2,1c09c <__subtf3+0x3de>
   1c562:	cc89                	beqz	s1,1c57c <__subtf3+0x8be>
   1c564:	00850613          	add	a2,a0,8
   1c568:	b6b1                	j	1c0b4 <__subtf3+0x3f6>
   1c56a:	4781                	li	a5,0
   1c56c:	b7d5                	j	1c550 <__subtf3+0x892>
   1c56e:	85b6                	mv	a1,a3
   1c570:	8532                	mv	a0,a2
   1c572:	b7d5                	j	1c556 <__subtf3+0x898>
   1c574:	4685                	li	a3,1
   1c576:	4785                	li	a5,1
   1c578:	b615                	j	1c09c <__subtf3+0x3de>
   1c57a:	d4ed                	beqz	s1,1c564 <__subtf3+0x8a6>
   1c57c:	fed9                	bnez	a3,1c51a <__subtf3+0x85c>
   1c57e:	b8a5                	j	1bdf6 <__subtf3+0x138>
   1c580:	4685                	li	a3,1
   1c582:	4701                	li	a4,0
   1c584:	4785                	li	a5,1
   1c586:	bff1                	j	1c562 <__subtf3+0x8a4>
   1c588:	4801                	li	a6,0
   1c58a:	00090663          	beqz	s2,1c596 <__subtf3+0x8d8>
   1c58e:	460d                	li	a2,3
   1c590:	00c91763          	bne	s2,a2,1c59e <__subtf3+0x8e0>
   1c594:	e889                	bnez	s1,1c5a6 <__subtf3+0x8e8>
   1c596:	0057e793          	or	a5,a5,5
   1c59a:	85c2                	mv	a1,a6
   1c59c:	bc41                	j	1c02c <__subtf3+0x36e>
   1c59e:	4609                	li	a2,2
   1c5a0:	00c91363          	bne	s2,a2,1c5a6 <__subtf3+0x8e8>
   1c5a4:	f8ed                	bnez	s1,1c596 <__subtf3+0x8d8>
   1c5a6:	587d                	li	a6,-1
   1c5a8:	ffe68713          	add	a4,a3,-2
   1c5ac:	b7ed                	j	1c596 <__subtf3+0x8d8>
   1c5ae:	873e                	mv	a4,a5
   1c5b0:	4581                	li	a1,0
   1c5b2:	4801                	li	a6,0
   1c5b4:	4795                	li	a5,5
   1c5b6:	bc9d                	j	1c02c <__subtf3+0x36e>
   1c5b8:	4581                	li	a1,0
   1c5ba:	8722                	mv	a4,s0
   1c5bc:	b30d                	j	1c2de <__subtf3+0x620>
   1c5be:	882a                	mv	a6,a0
   1c5c0:	b4b5                	j	1c02c <__subtf3+0x36e>
   1c5c2:	47c1                	li	a5,16
   1c5c4:	a8871be3          	bne	a4,s0,1c05a <__subtf3+0x39c>
   1c5c8:	a2030ae3          	beqz	t1,1bffc <__subtf3+0x33e>
   1c5cc:	0326d713          	srl	a4,a3,0x32
   1c5d0:	8b05                	and	a4,a4,1
   1c5d2:	a80701e3          	beqz	a4,1c054 <__subtf3+0x396>
   1c5d6:	a40815e3          	bnez	a6,1c020 <__subtf3+0x362>
   1c5da:	6721                	lui	a4,0x8
   1c5dc:	177d                	add	a4,a4,-1 # 7fff <exit-0x80e9>
   1c5de:	b031                	j	1bdea <__subtf3+0x12c>
   1c5e0:	47c1                	li	a5,16
   1c5e2:	00871763          	bne	a4,s0,1c5f0 <__subtf3+0x932>
   1c5e6:	a6080ce3          	beqz	a6,1c05e <__subtf3+0x3a0>
   1c5ea:	8e75                	and	a2,a2,a3
   1c5ec:	a2061ae3          	bnez	a2,1c020 <__subtf3+0x362>
   1c5f0:	a20818e3          	bnez	a6,1c020 <__subtf3+0x362>
   1c5f4:	b4ad                	j	1c05e <__subtf3+0x3a0>

000000000001c5f6 <__fixtfsi>:
   1c5f6:	862a                	mv	a2,a0
   1c5f8:	002027f3          	frrm	a5
   1c5fc:	6811                	lui	a6,0x4
   1c5fe:	00159693          	sll	a3,a1,0x1
   1c602:	01059793          	sll	a5,a1,0x10
   1c606:	92c5                	srl	a3,a3,0x31
   1c608:	ffe80713          	add	a4,a6,-2 # 3ffe <exit-0xc0ea>
   1c60c:	83c1                	srl	a5,a5,0x10
   1c60e:	91fd                	srl	a1,a1,0x3f
   1c610:	00d74763          	blt	a4,a3,1c61e <__fixtfsi+0x28>
   1c614:	e2bd                	bnez	a3,1c67a <__fixtfsi+0x84>
   1c616:	8fc9                	or	a5,a5,a0
   1c618:	4501                	li	a0,0
   1c61a:	efb1                	bnez	a5,1c676 <__fixtfsi+0x80>
   1c61c:	8082                	ret
   1c61e:	01d80713          	add	a4,a6,29
   1c622:	02d75463          	bge	a4,a3,1c64a <__fixtfsi+0x54>
   1c626:	80000737          	lui	a4,0x80000
   1c62a:	fff74713          	not	a4,a4
   1c62e:	00b7053b          	addw	a0,a4,a1
   1c632:	c5b1                	beqz	a1,1c67e <__fixtfsi+0x88>
   1c634:	0879                	add	a6,a6,30
   1c636:	4741                	li	a4,16
   1c638:	05069463          	bne	a3,a6,1c680 <__fixtfsi+0x8a>
   1c63c:	0117d693          	srl	a3,a5,0x11
   1c640:	e2a1                	bnez	a3,1c680 <__fixtfsi+0x8a>
   1c642:	17be                	sll	a5,a5,0x2f
   1c644:	8fd1                	or	a5,a5,a2
   1c646:	eb85                	bnez	a5,1c676 <__fixtfsi+0x80>
   1c648:	8082                	ret
   1c64a:	4705                	li	a4,1
   1c64c:	1742                	sll	a4,a4,0x30
   1c64e:	8fd9                	or	a5,a5,a4
   1c650:	6611                	lui	a2,0x4
   1c652:	7771                	lui	a4,0xffffc
   1c654:	2745                	addw	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdc4a1>
   1c656:	02f6061b          	addw	a2,a2,47 # 402f <exit-0xc0b9>
   1c65a:	9f35                	addw	a4,a4,a3
   1c65c:	40d606bb          	subw	a3,a2,a3
   1c660:	00e79733          	sll	a4,a5,a4
   1c664:	00d7d7b3          	srl	a5,a5,a3
   1c668:	8f49                	or	a4,a4,a0
   1c66a:	0007851b          	sext.w	a0,a5
   1c66e:	c199                	beqz	a1,1c674 <__fixtfsi+0x7e>
   1c670:	40a0053b          	negw	a0,a0
   1c674:	cb01                	beqz	a4,1c684 <__fixtfsi+0x8e>
   1c676:	4705                	li	a4,1
   1c678:	a021                	j	1c680 <__fixtfsi+0x8a>
   1c67a:	4501                	li	a0,0
   1c67c:	bfed                	j	1c676 <__fixtfsi+0x80>
   1c67e:	4741                	li	a4,16
   1c680:	00172073          	csrs	fflags,a4
   1c684:	8082                	ret

000000000001c686 <__floatsitf>:
   1c686:	1101                	add	sp,sp,-32
   1c688:	ec06                	sd	ra,24(sp)
   1c68a:	e822                	sd	s0,16(sp)
   1c68c:	e426                	sd	s1,8(sp)
   1c68e:	c139                	beqz	a0,1c6d4 <__floatsitf+0x4e>
   1c690:	0005079b          	sext.w	a5,a0
   1c694:	03f55493          	srl	s1,a0,0x3f
   1c698:	00055463          	bgez	a0,1c6a0 <__floatsitf+0x1a>
   1c69c:	40f007bb          	negw	a5,a5
   1c6a0:	02079413          	sll	s0,a5,0x20
   1c6a4:	9001                	srl	s0,s0,0x20
   1c6a6:	8522                	mv	a0,s0
   1c6a8:	376000ef          	jal	1ca1e <__clzdi2>
   1c6ac:	6591                	lui	a1,0x4
   1c6ae:	03e5859b          	addw	a1,a1,62 # 403e <exit-0xc0aa>
   1c6b2:	9d89                	subw	a1,a1,a0
   1c6b4:	3545                	addw	a0,a0,-15
   1c6b6:	00a417b3          	sll	a5,s0,a0
   1c6ba:	60e2                	ld	ra,24(sp)
   1c6bc:	6442                	ld	s0,16(sp)
   1c6be:	00f4949b          	sllw	s1,s1,0xf
   1c6c2:	8dc5                	or	a1,a1,s1
   1c6c4:	07c2                	sll	a5,a5,0x10
   1c6c6:	15c2                	sll	a1,a1,0x30
   1c6c8:	83c1                	srl	a5,a5,0x10
   1c6ca:	64a2                	ld	s1,8(sp)
   1c6cc:	4501                	li	a0,0
   1c6ce:	8ddd                	or	a1,a1,a5
   1c6d0:	6105                	add	sp,sp,32
   1c6d2:	8082                	ret
   1c6d4:	4781                	li	a5,0
   1c6d6:	4581                	li	a1,0
   1c6d8:	4481                	li	s1,0
   1c6da:	b7c5                	j	1c6ba <__floatsitf+0x34>

000000000001c6dc <__extenddftf2>:
   1c6dc:	1101                	add	sp,sp,-32
   1c6de:	e20507d3          	fmv.x.d	a5,fa0
   1c6e2:	ec06                	sd	ra,24(sp)
   1c6e4:	e822                	sd	s0,16(sp)
   1c6e6:	e426                	sd	s1,8(sp)
   1c6e8:	00202773          	frrm	a4
   1c6ec:	0347d513          	srl	a0,a5,0x34
   1c6f0:	7ff57513          	and	a0,a0,2047
   1c6f4:	00c79413          	sll	s0,a5,0xc
   1c6f8:	03f7d493          	srl	s1,a5,0x3f
   1c6fc:	00150793          	add	a5,a0,1
   1c700:	7fe7f793          	and	a5,a5,2046
   1c704:	8031                	srl	s0,s0,0xc
   1c706:	cb91                	beqz	a5,1c71a <__extenddftf2+0x3e>
   1c708:	6791                	lui	a5,0x4
   1c70a:	c0078793          	add	a5,a5,-1024 # 3c00 <exit-0xc4e8>
   1c70e:	953e                	add	a0,a0,a5
   1c710:	00445793          	srl	a5,s0,0x4
   1c714:	1472                	sll	s0,s0,0x3c
   1c716:	4701                	li	a4,0
   1c718:	a8b9                	j	1c776 <__extenddftf2+0x9a>
   1c71a:	ed1d                	bnez	a0,1c758 <__extenddftf2+0x7c>
   1c71c:	4781                	li	a5,0
   1c71e:	dc65                	beqz	s0,1c716 <__extenddftf2+0x3a>
   1c720:	8522                	mv	a0,s0
   1c722:	2fc000ef          	jal	1ca1e <__clzdi2>
   1c726:	0005071b          	sext.w	a4,a0
   1c72a:	47b9                	li	a5,14
   1c72c:	02e7c063          	blt	a5,a4,1c74c <__extenddftf2+0x70>
   1c730:	47bd                	li	a5,15
   1c732:	9f89                	subw	a5,a5,a0
   1c734:	0315071b          	addw	a4,a0,49
   1c738:	00f457b3          	srl	a5,s0,a5
   1c73c:	00e41433          	sll	s0,s0,a4
   1c740:	6711                	lui	a4,0x4
   1c742:	c0c7071b          	addw	a4,a4,-1012 # 3c0c <exit-0xc4dc>
   1c746:	40a7053b          	subw	a0,a4,a0
   1c74a:	b7f1                	j	1c716 <__extenddftf2+0x3a>
   1c74c:	ff15079b          	addw	a5,a0,-15
   1c750:	00f417b3          	sll	a5,s0,a5
   1c754:	4401                	li	s0,0
   1c756:	b7ed                	j	1c740 <__extenddftf2+0x64>
   1c758:	c021                	beqz	s0,1c798 <__extenddftf2+0xbc>
   1c75a:	4685                	li	a3,1
   1c75c:	03369713          	sll	a4,a3,0x33
   1c760:	00e43733          	sltu	a4,s0,a4
   1c764:	00445793          	srl	a5,s0,0x4
   1c768:	16be                	sll	a3,a3,0x2f
   1c76a:	6521                	lui	a0,0x8
   1c76c:	0047171b          	sllw	a4,a4,0x4
   1c770:	8fd5                	or	a5,a5,a3
   1c772:	1472                	sll	s0,s0,0x3c
   1c774:	157d                	add	a0,a0,-1 # 7fff <exit-0x80e9>
   1c776:	01079593          	sll	a1,a5,0x10
   1c77a:	00f4979b          	sllw	a5,s1,0xf
   1c77e:	8d5d                	or	a0,a0,a5
   1c780:	1542                	sll	a0,a0,0x30
   1c782:	81c1                	srl	a1,a1,0x10
   1c784:	8dc9                	or	a1,a1,a0
   1c786:	c319                	beqz	a4,1c78c <__extenddftf2+0xb0>
   1c788:	00186073          	csrs	fflags,16
   1c78c:	60e2                	ld	ra,24(sp)
   1c78e:	8522                	mv	a0,s0
   1c790:	6442                	ld	s0,16(sp)
   1c792:	64a2                	ld	s1,8(sp)
   1c794:	6105                	add	sp,sp,32
   1c796:	8082                	ret
   1c798:	6521                	lui	a0,0x8
   1c79a:	4781                	li	a5,0
   1c79c:	157d                	add	a0,a0,-1 # 7fff <exit-0x80e9>
   1c79e:	bfa5                	j	1c716 <__extenddftf2+0x3a>

000000000001c7a0 <__trunctfdf2>:
   1c7a0:	00202873          	frrm	a6
   1c7a4:	68a1                	lui	a7,0x8
   1c7a6:	0305d713          	srl	a4,a1,0x30
   1c7aa:	fff88e13          	add	t3,a7,-1 # 7fff <exit-0x80e9>
   1c7ae:	57fd                	li	a5,-1
   1c7b0:	0107d693          	srl	a3,a5,0x10
   1c7b4:	01c77733          	and	a4,a4,t3
   1c7b8:	03f5d613          	srl	a2,a1,0x3f
   1c7bc:	00170313          	add	t1,a4,1
   1c7c0:	8df5                	and	a1,a1,a3
   1c7c2:	18f9                	add	a7,a7,-2
   1c7c4:	058e                	sll	a1,a1,0x3
   1c7c6:	03d55693          	srl	a3,a0,0x3d
   1c7ca:	011378b3          	and	a7,t1,a7
   1c7ce:	8ecd                	or	a3,a3,a1
   1c7d0:	2801                	sext.w	a6,a6
   1c7d2:	00351593          	sll	a1,a0,0x3
   1c7d6:	10088163          	beqz	a7,1c8d8 <__trunctfdf2+0x138>
   1c7da:	78f1                	lui	a7,0xffffc
   1c7dc:	40088893          	add	a7,a7,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffdc890>
   1c7e0:	9746                	add	a4,a4,a7
   1c7e2:	7fe00893          	li	a7,2046
   1c7e6:	02e8d463          	bge	a7,a4,1c80e <__trunctfdf2+0x6e>
   1c7ea:	20080763          	beqz	a6,1c9f8 <__trunctfdf2+0x258>
   1c7ee:	470d                	li	a4,3
   1c7f0:	00e81863          	bne	a6,a4,1c800 <__trunctfdf2+0x60>
   1c7f4:	22060163          	beqz	a2,1ca16 <__trunctfdf2+0x276>
   1c7f8:	7fe00713          	li	a4,2046
   1c7fc:	4515                	li	a0,5
   1c7fe:	a259                	j	1c984 <__trunctfdf2+0x1e4>
   1c800:	4709                	li	a4,2
   1c802:	00e81463          	bne	a6,a4,1c80a <__trunctfdf2+0x6a>
   1c806:	20061a63          	bnez	a2,1ca1a <__trunctfdf2+0x27a>
   1c80a:	57fd                	li	a5,-1
   1c80c:	b7f5                	j	1c7f8 <__trunctfdf2+0x58>
   1c80e:	0ae04763          	bgtz	a4,1c8bc <__trunctfdf2+0x11c>
   1c812:	fcc00793          	li	a5,-52
   1c816:	0cf74663          	blt	a4,a5,1c8e2 <__trunctfdf2+0x142>
   1c81a:	4785                	li	a5,1
   1c81c:	17ce                	sll	a5,a5,0x33
   1c81e:	03d00893          	li	a7,61
   1c822:	8edd                	or	a3,a3,a5
   1c824:	40e888b3          	sub	a7,a7,a4
   1c828:	03f00793          	li	a5,63
   1c82c:	2701                	sext.w	a4,a4
   1c82e:	0717c563          	blt	a5,a7,1c898 <__trunctfdf2+0xf8>
   1c832:	03d00793          	li	a5,61
   1c836:	0037051b          	addw	a0,a4,3
   1c83a:	9f99                	subw	a5,a5,a4
   1c83c:	00f5d7b3          	srl	a5,a1,a5
   1c840:	00a595b3          	sll	a1,a1,a0
   1c844:	00b035b3          	snez	a1,a1
   1c848:	8fcd                	or	a5,a5,a1
   1c84a:	00a696b3          	sll	a3,a3,a0
   1c84e:	8fd5                	or	a5,a5,a3
   1c850:	00179713          	sll	a4,a5,0x1
   1c854:	00777693          	and	a3,a4,7
   1c858:	e6d9                	bnez	a3,1c8e6 <__trunctfdf2+0x146>
   1c85a:	0077f593          	and	a1,a5,7
   1c85e:	4701                	li	a4,0
   1c860:	4685                	li	a3,1
   1c862:	4501                	li	a0,0
   1c864:	c185                	beqz	a1,1c884 <__trunctfdf2+0xe4>
   1c866:	4589                	li	a1,2
   1c868:	12b80f63          	beq	a6,a1,1c9a6 <__trunctfdf2+0x206>
   1c86c:	458d                	li	a1,3
   1c86e:	10b80863          	beq	a6,a1,1c97e <__trunctfdf2+0x1de>
   1c872:	12081d63          	bnez	a6,1c9ac <__trunctfdf2+0x20c>
   1c876:	00f7f593          	and	a1,a5,15
   1c87a:	4511                	li	a0,4
   1c87c:	0ea59b63          	bne	a1,a0,1c972 <__trunctfdf2+0x1d2>
   1c880:	4505                	li	a0,1
   1c882:	e6e9                	bnez	a3,1c94c <__trunctfdf2+0x1ac>
   1c884:	7ff00693          	li	a3,2047
   1c888:	838d                	srl	a5,a5,0x3
   1c88a:	08d71b63          	bne	a4,a3,1c920 <__trunctfdf2+0x180>
   1c88e:	cbc9                	beqz	a5,1c920 <__trunctfdf2+0x180>
   1c890:	4785                	li	a5,1
   1c892:	17ce                	sll	a5,a5,0x33
   1c894:	4601                	li	a2,0
   1c896:	a069                	j	1c920 <__trunctfdf2+0x180>
   1c898:	5575                	li	a0,-3
   1c89a:	9d19                	subw	a0,a0,a4
   1c89c:	04000313          	li	t1,64
   1c8a0:	00a6d533          	srl	a0,a3,a0
   1c8a4:	4781                	li	a5,0
   1c8a6:	00688663          	beq	a7,t1,1c8b2 <__trunctfdf2+0x112>
   1c8aa:	0437071b          	addw	a4,a4,67
   1c8ae:	00e697b3          	sll	a5,a3,a4
   1c8b2:	8fcd                	or	a5,a5,a1
   1c8b4:	00f037b3          	snez	a5,a5
   1c8b8:	8fc9                	or	a5,a5,a0
   1c8ba:	bf59                	j	1c850 <__trunctfdf2+0xb0>
   1c8bc:	051e                	sll	a0,a0,0x7
   1c8be:	00a03533          	snez	a0,a0
   1c8c2:	91f1                	srl	a1,a1,0x3c
   1c8c4:	8d4d                	or	a0,a0,a1
   1c8c6:	00469793          	sll	a5,a3,0x4
   1c8ca:	8fc9                	or	a5,a5,a0
   1c8cc:	891d                	and	a0,a0,7
   1c8ce:	4681                	li	a3,0
   1c8d0:	f959                	bnez	a0,1c866 <__trunctfdf2+0xc6>
   1c8d2:	838d                	srl	a5,a5,0x3
   1c8d4:	4501                	li	a0,0
   1c8d6:	a0a9                	j	1c920 <__trunctfdf2+0x180>
   1c8d8:	8dd5                	or	a1,a1,a3
   1c8da:	e705                	bnez	a4,1c902 <__trunctfdf2+0x162>
   1c8dc:	03f61793          	sll	a5,a2,0x3f
   1c8e0:	c9b1                	beqz	a1,1c934 <__trunctfdf2+0x194>
   1c8e2:	4785                	li	a5,1
   1c8e4:	4709                	li	a4,2
   1c8e6:	4689                	li	a3,2
   1c8e8:	0077f513          	and	a0,a5,7
   1c8ec:	08d80163          	beq	a6,a3,1c96e <__trunctfdf2+0x1ce>
   1c8f0:	468d                	li	a3,3
   1c8f2:	04d80f63          	beq	a6,a3,1c950 <__trunctfdf2+0x1b0>
   1c8f6:	04080263          	beqz	a6,1c93a <__trunctfdf2+0x19a>
   1c8fa:	4701                	li	a4,0
   1c8fc:	4685                	li	a3,1
   1c8fe:	f525                	bnez	a0,1c866 <__trunctfdf2+0xc6>
   1c900:	a0b1                	j	1c94c <__trunctfdf2+0x1ac>
   1c902:	10058363          	beqz	a1,1ca08 <__trunctfdf2+0x268>
   1c906:	4501                	li	a0,0
   1c908:	01c71763          	bne	a4,t3,1c916 <__trunctfdf2+0x176>
   1c90c:	92c9                	srl	a3,a3,0x32
   1c90e:	0016c693          	xor	a3,a3,1
   1c912:	00469513          	sll	a0,a3,0x4
   1c916:	4785                	li	a5,1
   1c918:	4601                	li	a2,0
   1c91a:	7ff00713          	li	a4,2047
   1c91e:	17ce                	sll	a5,a5,0x33
   1c920:	7ff77713          	and	a4,a4,2047
   1c924:	07b2                	sll	a5,a5,0xc
   1c926:	83b1                	srl	a5,a5,0xc
   1c928:	1752                	sll	a4,a4,0x34
   1c92a:	8f5d                	or	a4,a4,a5
   1c92c:	03f61793          	sll	a5,a2,0x3f
   1c930:	8fd9                	or	a5,a5,a4
   1c932:	e94d                	bnez	a0,1c9e4 <__trunctfdf2+0x244>
   1c934:	f2078553          	fmv.d.x	fa0,a5
   1c938:	8082                	ret
   1c93a:	00f77593          	and	a1,a4,15
   1c93e:	4691                	li	a3,4
   1c940:	0711                	add	a4,a4,4
   1c942:	00d59963          	bne	a1,a3,1c954 <__trunctfdf2+0x1b4>
   1c946:	4685                	li	a3,1
   1c948:	4701                	li	a4,0
   1c94a:	f10d                	bnez	a0,1c86c <__trunctfdf2+0xcc>
   1c94c:	450d                	li	a0,3
   1c94e:	bf1d                	j	1c884 <__trunctfdf2+0xe4>
   1c950:	f64d                	bnez	a2,1c8fa <__trunctfdf2+0x15a>
   1c952:	0721                	add	a4,a4,8
   1c954:	4685                	li	a3,1
   1c956:	16e2                	sll	a3,a3,0x38
   1c958:	00d775b3          	and	a1,a4,a3
   1c95c:	0015b693          	seqz	a3,a1
   1c960:	4701                	li	a4,0
   1c962:	f111                	bnez	a0,1c866 <__trunctfdf2+0xc6>
   1c964:	450d                	li	a0,3
   1c966:	dd99                	beqz	a1,1c884 <__trunctfdf2+0xe4>
   1c968:	838d                	srl	a5,a5,0x3
   1c96a:	4505                	li	a0,1
   1c96c:	bf55                	j	1c920 <__trunctfdf2+0x180>
   1c96e:	f275                	bnez	a2,1c952 <__trunctfdf2+0x1b2>
   1c970:	b769                	j	1c8fa <__trunctfdf2+0x15a>
   1c972:	0791                	add	a5,a5,4
   1c974:	4505                	li	a0,1
   1c976:	c699                	beqz	a3,1c984 <__trunctfdf2+0x1e4>
   1c978:	0026e513          	or	a0,a3,2
   1c97c:	a021                	j	1c984 <__trunctfdf2+0x1e4>
   1c97e:	c60d                	beqz	a2,1c9a8 <__trunctfdf2+0x208>
   1c980:	4505                	li	a0,1
   1c982:	ea85                	bnez	a3,1c9b2 <__trunctfdf2+0x212>
   1c984:	0377d693          	srl	a3,a5,0x37
   1c988:	8a85                	and	a3,a3,1
   1c98a:	ee068de3          	beqz	a3,1c884 <__trunctfdf2+0xe4>
   1c98e:	0705                	add	a4,a4,1
   1c990:	7ff00693          	li	a3,2047
   1c994:	02d70163          	beq	a4,a3,1c9b6 <__trunctfdf2+0x216>
   1c998:	1ff00693          	li	a3,511
   1c99c:	16d2                	sll	a3,a3,0x34
   1c99e:	838d                	srl	a5,a5,0x3
   1c9a0:	16fd                	add	a3,a3,-1
   1c9a2:	8ff5                	and	a5,a5,a3
   1c9a4:	bfb5                	j	1c920 <__trunctfdf2+0x180>
   1c9a6:	d679                	beqz	a2,1c974 <__trunctfdf2+0x1d4>
   1c9a8:	07a1                	add	a5,a5,8
   1c9aa:	b7e9                	j	1c974 <__trunctfdf2+0x1d4>
   1c9ac:	4505                	li	a0,1
   1c9ae:	f6e9                	bnez	a3,1c978 <__trunctfdf2+0x1d8>
   1c9b0:	bfd1                	j	1c984 <__trunctfdf2+0x1e4>
   1c9b2:	4685                	li	a3,1
   1c9b4:	b7d1                	j	1c978 <__trunctfdf2+0x1d8>
   1c9b6:	00556513          	or	a0,a0,5
   1c9ba:	02080863          	beqz	a6,1c9ea <__trunctfdf2+0x24a>
   1c9be:	478d                	li	a5,3
   1c9c0:	00f81a63          	bne	a6,a5,1c9d4 <__trunctfdf2+0x234>
   1c9c4:	c21d                	beqz	a2,1c9ea <__trunctfdf2+0x24a>
   1c9c6:	7ff00713          	li	a4,2047
   1c9ca:	1752                	sll	a4,a4,0x34
   1c9cc:	03f61793          	sll	a5,a2,0x3f
   1c9d0:	177d                	add	a4,a4,-1
   1c9d2:	a00d                	j	1c9f4 <__trunctfdf2+0x254>
   1c9d4:	4789                	li	a5,2
   1c9d6:	fef818e3          	bne	a6,a5,1c9c6 <__trunctfdf2+0x226>
   1c9da:	ea01                	bnez	a2,1c9ea <__trunctfdf2+0x24a>
   1c9dc:	00003797          	auipc	a5,0x3
   1c9e0:	0d47b783          	ld	a5,212(a5) # 1fab0 <mask+0x8>
   1c9e4:	00152073          	csrs	fflags,a0
   1c9e8:	b7b1                	j	1c934 <__trunctfdf2+0x194>
   1c9ea:	7ff00713          	li	a4,2047
   1c9ee:	03f61793          	sll	a5,a2,0x3f
   1c9f2:	1752                	sll	a4,a4,0x34
   1c9f4:	8fd9                	or	a5,a5,a4
   1c9f6:	b7fd                	j	1c9e4 <__trunctfdf2+0x244>
   1c9f8:	7ff00713          	li	a4,2047
   1c9fc:	03f61793          	sll	a5,a2,0x3f
   1ca00:	1752                	sll	a4,a4,0x34
   1ca02:	8fd9                	or	a5,a5,a4
   1ca04:	4515                	li	a0,5
   1ca06:	bff9                	j	1c9e4 <__trunctfdf2+0x244>
   1ca08:	7ff00793          	li	a5,2047
   1ca0c:	03f61713          	sll	a4,a2,0x3f
   1ca10:	17d2                	sll	a5,a5,0x34
   1ca12:	8fd9                	or	a5,a5,a4
   1ca14:	b705                	j	1c934 <__trunctfdf2+0x194>
   1ca16:	7ff00793          	li	a5,2047
   1ca1a:	17d2                	sll	a5,a5,0x34
   1ca1c:	b7e5                	j	1ca04 <__trunctfdf2+0x264>

000000000001ca1e <__clzdi2>:
   1ca1e:	03855793          	srl	a5,a0,0x38
   1ca22:	eb8d                	bnez	a5,1ca54 <__clzdi2+0x36>
   1ca24:	03800793          	li	a5,56
   1ca28:	17e1                	add	a5,a5,-8
   1ca2a:	c791                	beqz	a5,1ca36 <__clzdi2+0x18>
   1ca2c:	00f55733          	srl	a4,a0,a5
   1ca30:	0ff77713          	zext.b	a4,a4
   1ca34:	db75                	beqz	a4,1ca28 <__clzdi2+0xa>
   1ca36:	04000713          	li	a4,64
   1ca3a:	8f1d                	sub	a4,a4,a5
   1ca3c:	00f55533          	srl	a0,a0,a5
   1ca40:	00001797          	auipc	a5,0x1
   1ca44:	e2078793          	add	a5,a5,-480 # 1d860 <__clz_tab>
   1ca48:	97aa                	add	a5,a5,a0
   1ca4a:	0007c503          	lbu	a0,0(a5)
   1ca4e:	40a7053b          	subw	a0,a4,a0
   1ca52:	8082                	ret
   1ca54:	03800793          	li	a5,56
   1ca58:	bff9                	j	1ca36 <__clzdi2+0x18>
