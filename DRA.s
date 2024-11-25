;=============================================
;  Filename DRA.X
;  Time Stamp Mon Nov 25 07:55:12 2024
;
;  Base address $00000000
;  Exec address $00000000
;  Text size    $000463ee byte(s)
;  Data size    $0000025c byte(s)
;  Bss  size    $00043b92 byte(s)
;  10112 Labels
;  Code Generate date Mon Nov 25 08:02:20 2024
;  Commandline ../dis/src/build/dis --include-doscall-mac=include/doscall.mac --include-iocscall-mac=include/iocscall.mac --include-fefunc-mac=include/fefunc.mac -gDRA.lab DRA.X DRA.s
;          dis version 4.03
;=============================================

	.include	include/doscall.mac
	.include	include/iocscall.mac
	.include	include/fefunc.mac

	.cpu	68000

	.text

L000000:
	bsr	L0011a0
	lea.l	(L08a1dc),a7
	suba.l	a1,a1
	IOCS	_B_SUPER
	lea.l	(L08a0dc),a7
	move.l	d0,(L00240e)
	move.b	($00e88007),(L002412)
	move.b	($00e88009),(L002413)
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000006bc).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$0002,-(a7)
	DOS	_BREAKCK
	addq.l	#2,a7
	bsr	L0011c8
	bsr	L0011da
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000640).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000700).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000704).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	jsr	(L0034ca)
	cmpi.b	#$01,(L00354c)
L000096:
	beq	L000096
	jsr	(L001212)
	jsr	(L001326)
	jsr	(L0013b4)
	jsr	(L0016a4)
	lea.l	(L04e512),a5
	lea.l	(L0492bc),a6
	jsr	(L03d632)
	lea.l	(L04455a),a5
	lea.l	(L04664a),a6
	jsr	(L03d632)
	jsr	(L0492bc)
	lea.l	(L04512e),a5
	lea.l	(L0492bc),a6
	jsr	(L03d632)
	moveq.l	#$f0,d0
	trap	#0
L0000f0:
	tst.w	d7
	beq	L00010c
L0000f4:
	btst.b	#$04,($00e88001)
	beq	L0000f4
L0000fe:
	btst.b	#$04,($00e88001)
	bne	L0000fe
	subq.b	#1,d7
	bra	L0000f0
L00010c:
	bsr	L001744
	move.w	sr,-(a7)
	ori.w	#$0600,sr
	move.b	#$7e,($00e88007)
	move.w	(a7)+,sr
	bra	L000128
L000122:
	clr.w	(L047320)
L000128:
	move.w	(L04731e),d0
	beq	L000122
	move.w	#$0001,(L047320)
	add.w	d0,d0
	move.w	(L000142,pc,d0.w),d0
	jmp	(L000142,pc,d0.w)

L000142:
	.dc.w	L000128-L000142
	.dc.w	L0001a8-L000142
	.dc.w	L000292-L000142
	.dc.w	L0001f2-L000142
	.dc.w	L000184-L000142
	.dc.w	L0003e6-L000142
	.dc.w	L000416-L000142
	.dc.w	L0004c0-L000142
	.dc.w	L00059a-L000142
	.dc.w	L0005aa-L000142
	.dc.w	L0005c0-L000142
	.dc.w	L0005f0-L000142
	.dc.w	L000774-L000142
	.dc.w	L0007de-L000142
	.dc.w	L0008a6-L000142
	.dc.w	L00092c-L000142
	.dc.w	L0009e8-L000142
	.dc.w	L000a34-L000142
	.dc.w	L000a4e-L000142
	.dc.w	L000a8e-L000142
	.dc.w	L000abe-L000142
	.dc.w	L000b60-L000142
	.dc.w	L000b7a-L000142
	.dc.w	L000b8a-L000142
	.dc.w	L000d1e-L000142
	.dc.w	L000e1a-L000142
	.dc.w	L000e96-L000142
	.dc.w	L000f7e-L000142
	.dc.w	L000f62-L000142
	.dc.w	L000f32-L000142
	.dc.w	L00107e-L000142
	.dc.w	L001140-L000142
	.dc.w	L00109e-L000142

L000184:
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	lsl.w	#2,d0
	lea.l	(L020310),a6
	movea.l	(a6,d0.w),a6
	jsr	(a6)
	clr.w	(L04731e)
	bra	L000128
L0001a8:
	cmpi.w	#$0001,(L047322)
	bcs	L0001ee
	bne	L0001bc
	lea.l	($00c90000),a5
	bra	L0001c2
L0001bc:
	lea.l	($00cd0000),a5
L0001c2:
	lea.l	($00760000),a1
	lea.l	($01760000),a2
	move.w	(L047324),d0
	andi.w	#$00ff,d0
	jsr	(L03e808)
	move.w	#$007f,d7
	jsr	(L03e86e)
	clr.w	(L047322)
L0001ee:
	bra	L000128
L0001f2:
	jsr	(L028406)
	lea.l	($00c40280),a0
	lea.l	($00cd8000),a1
	move.w	#$007f,d0
L000208:
	jsr	(L003850)
	lea.l	($0300,a0),a0
	lea.l	($0300,a1),a1
	dbra	d0,L000208
	lea.l	($00c60280),a0
	lea.l	($00cd8200),a1
	move.w	#$007f,d0
L00022a:
	jsr	(L003850)
	lea.l	($0300,a0),a0
	lea.l	($0300,a1),a1
	dbra	d0,L00022a
	lea.l	(L049a8e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc600),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L000292:
	move.l	(L047322),d0
	cmp.l	(L047332),d0
	beq	L0002ae
	move.l	d0,(L047332)
	move.w	d0,d4
	beq	L0002ae
	swap.w	d0
	bsr	L000306
L0002ae:
	move.l	(L047326),d0
	cmp.l	(L047336),d0
	beq	L0002ca
	move.l	d0,(L047336)
	move.w	d0,d4
	beq	L0002ca
	swap.w	d0
	bsr	L000306
L0002ca:
	move.l	(L04732a),d0
	cmp.l	(L04733a),d0
	beq	L0002e6
	move.l	d0,(L04733a)
	move.w	d0,d4
	beq	L0002e6
	swap.w	d0
	bsr	L000306
L0002e6:
	move.l	(L04732e),d0
	cmp.l	(L04733e),d0
	beq	L000302
	move.l	d0,(L04733e)
	move.w	d0,d4
	beq	L000302
	swap.w	d0
	bsr	L000306
L000302:
	bra	L000128
L000306:
	moveq.l	#$00,d3
	move.w	d0,d3
	andi.w	#$0300,d3
	tst.w	d0
	bmi	L00037c
	andi.w	#$00ff,d0
	andi.l	#$000001ff,d4
	asl.l	#8,d4
	asl.l	#2,d4
	lea.l	($00bf8000),a5
	lea.l	(a5,d4.l),a5
	lea.l	(a5,d3.l),a5
	lea.l	($00400000),a1
	lea.l	($038a0000),a2
	jsr	(L03e808)
	move.l	d2,d7
	asl.l	#3,d7
	add.l	d7,d0
	add.l	d7,d7
	add.l	d7,d0
	move.l	d3,d7
	asl.l	#3,d7
	add.l	d7,d1
	add.l	d7,d7
	add.l	d7,d1
	move.w	#$0047,d7
	move.l	a5,d4
	lsr.l	#3,d4
	lsr.w	#7,d4
	add.w	d7,d4
	subi.w	#$0100,d4
	bcs	L00036a
	sub.w	d4,d7
	bmi	L00037a
L00036a:
	move.w	#$0008,d5
	jsr	(L03eb88)
	jsr	(L03e86e)
L00037a:
	rts

L00037c:
	andi.w	#$00ff,d0
	andi.l	#$000001ff,d4
	asl.l	#8,d4
	asl.l	#2,d4
	lea.l	($00bf8000),a5
	lea.l	(a5,d4.l),a5
	lea.l	(a5,d3.l),a5
	lea.l	($01400000),a1
	lea.l	($038a0000),a2
	jsr	(L03e808)
	move.l	d2,d7
	asl.l	#3,d7
	add.l	d7,d0
	add.l	d7,d7
	add.l	d7,d0
	move.l	d3,d7
	asl.l	#3,d7
	add.l	d7,d1
	add.l	d7,d7
	add.l	d7,d1
	move.w	#$0067,d7
	move.l	a5,d4
	lsr.l	#3,d4
	lsr.w	#7,d4
	add.w	d7,d4
	subi.w	#$0100,d4
	bcs	L0003d4
	sub.w	d4,d7
	bmi	L00037a
L0003d4:
	move.w	#$0008,d5
	jsr	(L03eb88)
	jsr	(L03e86e)
	rts

L0003e6:
	lea.l	(L04ab6e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L000416:
	lea.l	(L069bdc),a3
	lea.l	(L061bdc),a4
	lea.l	($00ebf000),a6
	move.l	#$00000600,d6
	clr.w	d3
	jsr	(L028de4)
	lea.l	(L04b4bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8e20),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04dc80),a5
	lea.l	($00e70000),a6
	jsr	(L03d632)
	lea.l	(L04eb04),a5
	lea.l	($00e72000),a6
	jsr	(L03d632)
	lea.l	(L04fbce),a5
	lea.l	($00e74000),a6
	jsr	(L03d632)
	lea.l	(L05082c),a5
	lea.l	($00e76000),a6
	jsr	(L03d632)
	lea.l	(L050e96),a5
	lea.l	($00e78000),a6
	jsr	(L03d632)
	clr.w	(L04731e)
	bra	L000128
L0004c0:
	lea.l	(L04b432),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c3aa),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L048080),a5
	lea.l	($00e82300),a4
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4),(a5)+
	lea.l	($00e822a0),a4
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4)+,(a5)+
	move.l	(a4),(a5)
	lea.l	(L0480e0),a4
	lea.l	($00e82320),a5
	lea.l	($00e82340),a6
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)+
	move.l	(a4)+,(a6)+
	move.l	(a4),(a5)
	move.l	(a4),(a6)
	clr.w	(L04731e)
	bra	L000128
L00059a:
	jsr	(L02d97a)
	clr.w	(L04731e)
	bra	L000128
L0005aa:
	btst.b	#$00,(L0472b1)
	bne	L000128
	jsr	(L01a842)
	bra	L000128
L0005c0:
	lea.l	(L04cf96),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebfc00),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L0005f0:
	move.w	(L047322),d0
	beq	L000770
	cmpi.w	#$0080,d0
	bcc	L00060e
	subq.w	#1,d0
	beq	L000626
	subq.w	#1,d0
	beq	L000674
	subq.w	#1,d0
	beq	L0006c2
L00060e:
	subi.w	#$0080,d0
	beq	L000770
	subq.w	#1,d0
	beq	L000656
	subq.w	#1,d0
	beq	L0006a4
	subq.w	#1,d0
	beq	L000724
L000626:
	lea.l	($00c280d0),a5
	lea.l	($01600000),a1
	lea.l	($00600000),a2
	move.w	(L047324),d0
	andi.w	#$00ff,d0
	jsr	(L03e808)
	move.w	#$007f,d7
	jsr	(L03e86e)
	bra	L00076a
L000656:
	moveq.l	#$00,d0
	lea.l	($00c280d0),a1
	move.w	#$007f,d1
L000662:
	jsr	(L0038d2)
	lea.l	($0300,a1),a1
	dbra	d1,L000662
	bra	L000764
L000674:
	lea.l	($00c500c0),a5
	lea.l	($01600000),a1
	lea.l	($00600000),a2
	move.w	(L047324),d0
	andi.w	#$00ff,d0
	jsr	(L03e808)
	move.w	#$007f,d7
	jsr	(L03e86e)
	bra	L00076a
L0006a4:
	moveq.l	#$00,d0
	lea.l	($00c500c0),a1
	move.w	#$007f,d1
L0006b0:
	jsr	(L0038d2)
	lea.l	($0300,a1),a1
	dbra	d1,L0006b0
	bra	L000764
L0006c2:
	lea.l	($00ca5c60),a5
	lea.l	($00600000),a1
	lea.l	($01600000),a2
	move.w	(L047324),d0
	andi.w	#$00ff,d0
	jsr	(L03e808)
	move.w	#$0067,d7
	jsr	(L03e86e)
	lea.l	($00c1a0f0),a5
	lea.l	($00cd0000),a1
	lea.l	($01cd0000),a2
	move.w	(L047324),d0
	add.w	d0,d0
	subi.w	#$0002.w,d0
	neg.w	d0
	andi.w	#$00ff,d0
	jsr	(L03ec22)
	move.w	#$003f,d7
	jsr	(L03ec88)
	bra	L00076a
L000724:
	moveq.l	#$00,d0
	lea.l	($00ca5c60),a1
	move.w	#$0067,d1
L000730:
	jsr	(L0038d2)
	lea.l	($0300,a1),a1
	dbra	d1,L000730
	lea.l	($00c1a270),a0
	lea.l	($00c1a0f0),a1
	move.w	#$003f,d0
L00074e:
	jsr	(L003890)
	lea.l	($0380,a0),a0
	lea.l	($0380,a1),a1
	dbra	d0,L00074e
	bra.w	L000764
L000764:
	clr.w	(L04731e)
L00076a:
	clr.w	(L047322)
L000770:
	bra	L000128
L000774:
	tst.w	(L047322)
	beq	L0007b6
	lea.l	($01800000),a1
	lea.l	($01800000),a2
	move.w	(L047324),d0
	move.w	(L047326),d2
	cmpi.w	#$4000,d2
	bcc	L0007ba
	lea.l	($00c12080),a5
	jsr	(L03e7f0)
	move.w	#$007f,d7
	jsr	(L03e86e)
L0007b0:
	clr.w	(L047322)
L0007b6:
	bra	L000128
L0007ba:
	lea.l	($00c1a080),a5
	jsr	(L03e7f0)
	move.l	d2,d7
	asl.l	#5,d7
	add.l	d7,d0
	move.l	d3,d7
	asl.l	#5,d7
	add.l	d7,d1
	move.w	#$003f,d7
	jsr	(L03e86e)
	bra	L0007b0
L0007de:
	lea.l	(L051c02),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcd80),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0518de),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L0008a6:
	tst.w	(L047322)
	beq	L0008f6
	cmpi.w	#$0080,(L047322)
	bcc	L0008fa
	lea.l	($00c862d0),a5
	lea.l	($00500000),a1
	lea.l	($01d00000),a2
	move.w	(L047324),d0
	andi.w	#$00ff,d0
	jsr	(L03e808)
	move.l	d2,d7
	asl.l	#5,d7
	add.l	d7,d0
	move.l	d3,d7
	asl.l	#5,d7
	add.l	d7,d1
	move.w	#$003f,d7
	jsr	(L03e86e)
	clr.w	(L047322)
L0008f6:
	bra	L000128
L0008fa:
	lea.l	($00c85ed0),a0
	lea.l	($00c862d0),a1
	move.w	#$003f,d0
L00090a:
	jsr	(L003850)
	lea.l	($0300,a0),a0
	lea.l	($0300,a1),a1
	dbra	d0,L00090a
	clr.w	(L04731e)
	clr.w	(L047320)
	bra	L000128
L00092c:
	lea.l	(L04d70c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04e4ee),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04f35c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	($00c40000),a1
	moveq.l	#$00,d0
	move.w	#$00ff,d2
L0009aa:
	move.w	#$003f,d1
L0009ae:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	dbra	d1,L0009ae
	lea.l	($0200,a1),a1
	dbra	d2,L0009aa
	lea.l	($00c12200),a1
	moveq.l	#$00,d0
	move.w	#$0081,d2
L0009ca:
	move.w	#$003f,d1
L0009ce:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	dbra	d1,L0009ce
	lea.l	($0200,a1),a1
	dbra	d2,L0009ca
	clr.w	(L04731e)
	bra	L000128
L0009e8:
	move.w	(L047322),d1
	beq	L000a00
	move.w	#$0000,d0
	jsr	(L01a260)
	clr.w	(L047322)
L000a00:
	move.w	(L047324),d1
	beq	L000a18
	move.w	#$0080,d0
	jsr	(L01a260)
	clr.w	(L047324)
L000a18:
	move.w	(L047326),d1
	beq	L000a30
	move.w	#$0100,d0
	jsr	(L01a260)
	clr.w	(L047326)
L000a30:
	bra	L000128
L000a34:
	tst.w	(L047322)
	beq	L000128
	jsr	(L01ead0)
	clr.w	(L047322)
	bra	L000128
L000a4e:
	tst.w	(L047322)
	beq	L000128
	lea.l	($00c80000),a5
	lea.l	($00800000),a1
	lea.l	($01800000),a2
	move.w	(L047324),d0
	andi.w	#$00ff,d0
	jsr	(L03e808)
	move.w	#$007f,d7
	jsr	(L03e86e)
	clr.w	(L047322)
	bra	L000128
L000a8e:
	lea.l	(L04bda2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L000abe:
	lea.l	(L050186),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05160a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L051e1e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L052b0c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	(L05fbdc),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L000b60:
	tst.w	(L047322)
	beq	L000128
	jsr	(L01e6cc)
	clr.w	(L047322)
	bra	L000128
L000b7a:
	jsr	(L02aaf0)
	clr.w	(L04731e)
	bra	L000128
L000b8a:
	move.w	(L047322),d0
	add.w	d0,d0
	move.w	(L000ba4,pc,d0.w),d0
	jsr	(L000ba4,pc,d0.w)
	clr.w	(L04731e)
	bra	L000128

L000ba4:
	.dc.w	L000bb4-L000ba4
	.dc.w	L000bdc-L000ba4
	.dc.w	L000c2a-L000ba4
	.dc.w	L000c52-L000ba4
	.dc.w	L000c7a-L000ba4
	.dc.w	L000ca2-L000ba4
	.dc.w	L000cca-L000ba4
	.dc.w	L000cf4-L000ba4

L000bb4:
	lea.l	(L053886),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc300),a4
	move.w	a6,d2
	jsr	(L003954)
	rts

L000bdc:
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	rts

L000c2a:
	lea.l	(L05586e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc200),a4
	move.w	a6,d2
	jsr	(L003954)
	rts

L000c52:
	lea.l	(L055c0a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	rts

L000c7a:
	lea.l	(L053f86),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	rts

L000ca2:
	lea.l	(L04b2e0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	rts

L000cca:
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	bra	L000c2a
L000cf4:
	lea.l	(L052ee6),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	bra	L000bb4
L000d1e:
	lea.l	(L0555fe),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L054692),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0010,d7
	jsr	(L0239da)
	move.w	#$0012,(L047124)
L000d66:
	cmpi.w	#$0012,(L047126)
	bne	L000d66
	move.w	#$0000,($00e82400)
	move.w	#$18e4,($00e82500)
	move.w	#$1f61,($00e82600)
	move.w	#$0010,($00e80028)
	move.w	#$0100,(L0470ee)
	move.w	#$0000,(L0470f2)
	move.w	#$0001,(L047f70)
	lea.l	($00d80001),a2
	lea.l	($00e56000),a6
	jsr	(L028a36)
	move.w	#$181b,($00e82500)
	move.w	#$0100,(L047106)
	move.w	#$0000,(L04710a)
	move.w	#$000f,(L047fd0)
	lea.l	($00c00001),a2
	lea.l	($00e50000),a6
	jsr	(L028a36)
	lea.l	($00c80001),a2
	lea.l	($00e52000),a6
	jsr	(L028a36)
	lea.l	($00d00001),a2
	lea.l	($00e54000),a6
	jsr	(L028a36)
	clr.w	(L04731e)
	bra	L000128
L000e1a:
	lea.l	(L052d6e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0510a2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L052080),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L000e96:
	lea.l	(L055bb8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L053a5e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L054c1c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	($00c00001),a1
	lea.l	($00c80001),a2
	move.w	#$7fff,d0
L000f18:
	movep.l	($0000,a1),d1
	movep.l	d1,($0000,a2)
	addq.w	#8,a1
	addq.w	#8,a2
	dbra	d0,L000f18
	clr.w	(L04731e)
	bra	L000128
L000f32:
	lea.l	(L056140),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8b80),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L000f62:
	lea.l	(L05bbdc),a0
	move.w	#$3fff,d0
	moveq.l	#$00,d1
L000f6e:
	move.l	d1,(a0)+
	dbra	d0,L000f6e
	clr.w	(L04731e)
	bra	L000128
L000f7e:
	lea.l	(L05bbdc),a0
	lea.l	($00c00001),a1
	lea.l	($00c80001),a4
	move.w	#$0000,(L047322)
	moveq.l	#$00,d7
	move.w	(L0472f4),d0
	add.w	d0,(L047324)
L000fa6:
	lea.l	(a0,d7.l),a2
	addq.w	#4,d7
	move.b	(a2),d0
	bne	L001006
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.b	($0001,a2),d0
	move.b	($0002,a2),d1
	add.w	d1,d1
	asl.l	#8,d1
	add.l	d0,d1
	add.l	d1,d1
	move.b	#$00,(a1,d1.l)
	moveq.l	#$00,d1
	moveq.l	#$00,d2
	bsr	L001062
	move.b	d0,($0001,a2)
	move.b	d0,d1
	jsr	(L001062)
	andi.b	#$1f,d0
	addi.b	#$04.b,d0
	move.b	d0,($0000.w,a2)
	bsr	L001062
	ror.w	#8,d0
	move.b	d0,($0002,a2)
	move.b	d0,d2
	add.w	d2,d2
	asl.l	#8,d2
	add.l	d1,d2
	add.l	d2,d2
	move.b	(a4,d2.l),($0003,a2)
	move.b	($0000.w,a2),d0
L001006:
	subq.b	#1,d0
	move.b	d0,(a2)+
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.b	(a2)+,d0
	move.b	(a2),d1
	tst.w	d7
	bpl	L00103c
	addq.b	#1,(a2)+
	add.w	d1,d1
	asl.l	#8,d1
	add.l	d0,d1
	add.l	d1,d1
	lea.l	(a1,d1.l),a3
	move.b	#$00,(a3)
	move.b	(a2)+,($0400,a3)
	cmpi.w	#$001b,(L04731e)
	beq	L000fa6
	bra	L000128
L00103c:
	addq.b	#2,(a2)+
	add.w	d1,d1
	asl.l	#8,d1
	add.l	d0,d1
	add.l	d1,d1
	lea.l	(a1,d1.l),a3
	move.b	#$00,(a3)
	move.b	(a2)+,($0800,a3)
	cmpi.w	#$001b,(L04731e)
	beq	L000fa6
	bra	L000128
L001062:
	move.w	(L047324),d0
	add.w	d0,d0
	add.w	d0,d0
	add.w	(L047324),d0
	addi.w	#$43c3,d0
	move.w	d0,(L047324)
	rts

L00107e:
	lea.l	($00c00001),a1
	move.w	#$7fff,d0
	moveq.l	#$00,d1
L00108a:
	movep.l	d1,($0000,a1)
	addq.w	#8,a1
	dbra	d0,L00108a
	clr.w	(L04731e)
	bra	L000128
L00109e:
	lea.l	(L04aa62),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b672),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eba000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c0c6),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c976),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	clr.w	(L04731e)
	bra	L000128
L001140:
	lea.l	($00c26800),a0
	lea.l	($00cc0000),a1
	moveq.l	#$07,d7
L00114e:
	jsr	(L01024e)
	moveq.l	#$00,d0
	jsr	(L01024e)
	move.l	d0,d1
	add.l	d1,d1
	jsr	(L01024e)
	andi.w	#$800e,d0
	bmi	L001182
	move.w	(L001190,pc,d0.w),d0
	ext.l	d0
	add.l	d1,d0
	move.w	(a1,d1.l),(a0,d0.l)
	dbra	d7,L00114e
	bra	L000128
L001182:
	move.w	(a1,d1.l),(a0,d1.l)
	dbra	d7,L00114e
	bra	L000128

L001190:
	.dc.w	$fbfe,$fc00,$fc02,$fffe
	.dc.w	$0002,$03fe,$0400,$0402

L0011a0:
	move.l	a1,(L0470ea)
	trap	#4
	tst.l	d0
	beq	L0011c0
	move.l	(L0470ea),d1
	move.l	($0008,a0),d0
	sub.l	d1,d0
	cmp.l	#$00103000,d0
	bcc	L0011c6
L0011c0:
	clr.l	(L0470ea)
L0011c6:
	rts

L0011c8:
	lea.l	(L0470ee),a0
L0011ce:
	clr.w	(a0)+
	cmpa.l	(L0895dc),a0
	bcs	L0011ce
	rts

L0011da:
	move.w	#$010a,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000440).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$0000,(L04711e)
	move.w	#$0300,($00e80014)
	move.w	#$0000,($00e80016)
	move.w	#$0000,($00e82200)
	rts

L001212:
	jsr	(L03cb02)
	tst.b	(L00354c)
	bne	L001226
	jsr	(L03cbac)
L001226:
	tst.l	(L0470ea)
	beq	L001234
	jsr	(L00319c)
L001234:
	moveq.l	#$fe,d0
	trap	#0
	move.w	#$00f0,d0
L00123c:
	bsr	L001310
	dbra	d0,L00123c
	moveq.l	#$f0,d0
	trap	#0
	bsr	L001310
	lea.l	(L00376b),a0
	lea.l	(L0492bc),a2
	jsr	(L0031f4)
	lea.l	(L0492bc),a5
	lea.l	(L06c3dc),a6
	jsr	(L03d632)
	lea.l	(L00375c),a0
	lea.l	(L0492bc),a2
	jsr	(L0031f4)
	lea.l	($0000.w,a2),a5
	lea.l	($00e48000),a6
	jsr	(L03d632)
	lea.l	($0ecc,a2),a5
	lea.l	($00e4a000),a6
	jsr	(L03d632)
	lea.l	($1ee2,a2),a5
	lea.l	($00e4c000),a6
	jsr	(L03d632)
	lea.l	($2ed6,a2),a5
	lea.l	($00e4e000),a6
	jsr	(L03d632)
	lea.l	($3e86,a2),a5
	lea.l	($00e68000),a6
	jsr	(L03d632)
	lea.l	($4c08,a2),a5
	lea.l	($00e6a000),a6
	jsr	(L03d632)
	lea.l	($5704,a2),a5
	lea.l	($00e6c000),a6
	jsr	(L03d632)
	lea.l	($5c90,a2),a5
	lea.l	($00e6e000),a6
	jsr	(L03d632)
	jsr	(L0241be)
	jsr	(L0436d8)
	rts

L001310:
	btst.b	#$04,($00e88001)
	beq	L001310
L00131a:
	btst.b	#$04,($00e88001)
	bne	L00131a
	rts

L001326:
	moveq.l	#$f0,d0
	trap	#0
	moveq.l	#$50,d7
L00132c:
	btst.b	#$04,($00e88001)
	bne	L00132c
L001336:
	btst.b	#$04,($00e88001)
	beq	L001336
	dbra	d7,L00132c
	ori.w	#$0700,sr
	move.b	#$11,($00e88007)
	move.b	#$08,($00e88009)
	move.w	#$0001,d1
	suba.l	a1,a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005b0).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$0101,d1
	suba.l	a1,a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005ac).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	clr.l	d1
	suba.l	a1,a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005b4).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	suba.l	a1,a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005b8).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	rts

L0013b4:
	move.w	#$0040,d1
	lea.l	(L00230c),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L00230c+$000002)
	move.w	#$0041,d1
	lea.l	(L002316),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002316+$000002)
	move.w	#$0042,d1
	lea.l	(L002320),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002320+$000002)
	move.w	#$0043,d1
	lea.l	(L00232a),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L00232a+$000002)
	move.w	#$0045,d1
	lea.l	(L00233e),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L00233e+$000002)
	move.w	#$0046,d1
	lea.l	(L002348),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002348+$000002)
	move.w	#$0047,d1
	lea.l	(L002352),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002352+$000002)
	move.w	#$0048,d1
	lea.l	(L00235c),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L00235c+$000002)
	move.w	#$0049,d1
	lea.l	(L002366),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002366+$000002)
	move.w	#$004a,d1
	lea.l	(L002370),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002370+$000002)
	move.w	#$004b,d1
	lea.l	(L00237a),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L00237a+$000002)
	move.w	#$004c,d1
	lea.l	(L002384),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002384+$000002)
	move.w	#$0018,d1
	lea.l	(L00238e),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L002390+$000002)
	move.w	#$001f,d1
	lea.l	(L00239a),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023a4+$000002)
	move.w	#$0028,d1
	lea.l	(L0023ae),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023b0+$000002)
	move.w	#$0029,d1
	lea.l	(L0023ba),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023bc+$000002)
	move.w	#$002b,d1
	lea.l	(L0023c6),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023c8+$000002)
	move.w	#$002c,d1
	lea.l	(L0023d2),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023d4+$000002)
	move.w	#$002d,d1
	lea.l	(L0023de),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023e0+$000002)
	move.w	#$002e,d1
	lea.l	(L03ccae),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023ee)
	move.w	#$0054,d1
	lea.l	(L0023f6),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023f8+$000002)
	move.w	#$0055,d1
	lea.l	(L002402),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000600).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.l	d0,(L0023f8+$000002)
	rts

L0016a2:
	rts

L0016a4:
	moveq.l	#$01,d1
	lea.l	(L00178e),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005b0).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$0101,d1
	lea.l	(L001814),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005ac).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.b	#$f0,($00e8801d)
	move.w	#$0000,(L047124)
	move.w	#$0000,(L047126)
	move.w	#$0064,d1
	lea.l	(L001a0e),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005b4).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	lea.l	(L001950),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000005b8).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.b	#$5e,($00e88007)
	move.b	#$3c,($00e88009)
	andi.b	#$f7,($00e88017)
	andi.w	#$f8ff,sr
	rts

L001744:
	tst.b	(L00354c)
	bne	L001754
	tst.l	(L0470ea)
	beq	L00176c
L001754:
	moveq.l	#$4f,d0
	move.w	#$9000,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($0000053c).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
L00176c:
	tst.b	(L00354c)
	beq	L00178c
	moveq.l	#$4f,d0
	move.w	#$9100,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($0000053c).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
L00178c:
	rts

L00178e:
	movem.l	d0/a0-a1,-(a7)
	tst.w	(L0472f8)
	bne	L0017c8
	move.w	(L047124),(L047126)
	bsr	L0018da
	andi.w	#$f8ff,sr
	trap	#1
	ori.w	#$0600,sr
	movem.l	(a7)+,d0/a0-a1
	move.b	#$02,($00e88025)
	ori.b	#$01,($00e8801d)
	rte

L0017c8:
	bsr	L0018da
	btst.b	#$03,($00e88009)
	beq	L00180e
	andi.w	#$f8ff,sr
	trap	#1
	move.w	(L047faa),d0
	beq	L00180e
	subq.w	#1,d0
	move.w	d0,(L047faa)
	lsr.w	#1,d0
	andi.w	#$0003,d0
	asl.w	#5,d0
	lea.l	(L06ea8e),a0
	lea.l	(a0,d0.w),a0
	lea.l	($00e82220),a1
	move.w	#$0007,d0
L001808:
	move.l	(a0)+,(a1)+
	dbra	d0,L001808
L00180e:
	movem.l	(a7)+,d0/a0-a1
	rte

L001814:
	andi.b	#$f0,($00e8801d)
	bclr.b	#$04,($00e8800d)
	move.w	#$0001,(L0472f8)
	andi.w	#$f8ff,sr
	movem.l	d0-d7/a0-a6,-(a7)
	bsr	L002272
	bsr	L00224c
	jsr	(L041728)
	jsr	(L03d698)
	tst.w	(L0482b2)
	bne	L0018a8
	tst.w	(L0472b0)
	bpl	L0018a8
	btst.b	#$00,(L0472b1)
	bne	L001888
	btst.b	#$06,(L0481e4)
	beq	L0018a8
	move.b	#$01,(L0472b1)
	tst.w	(L047fac)
	bne	L001882
	moveq.l	#$f1,d0
	trap	#0
	bra	L0018c0
L001882:
	moveq.l	#$71,d0
	trap	#0
	bra	L0018c0
L001888:
	btst.b	#$06,(L0481e4)
	beq	L0018c0
	move.b	#$00,(L0472b1)
	tst.w	(L047fac)
	bne	L0018a6
	moveq.l	#$f2,d0
	trap	#0
L0018a6:
	bra	L0018c0
L0018a8:
	jsr	(L0253f8)
	jsr	(L041bfc)
	jsr	(L025608)
	jsr	(L0415ec)
L0018c0:
	addq.w	#1,(L0472f4)
	movem.l	(a7)+,d0-d7/a0-a6
	ori.w	#$0600,sr
	andi.w	#$feff,sr
	clr.w	(L0472f8)
	rte

L0018da:
	move.w	(L047126),d0
	beq	L0018fe
	cmpi.w	#$0015,d0
	beq	L0018f0
	move.b	#$60,($00e82601)
L0018f0:
	clr.w	($00e80014)
	move.w	#$0068,($00e80012)
L0018fe:
	clr.w	(L047128)
	lea.l	(L0470ee),a0
	lea.l	($00e80018),a1
	move.w	(a0),(a1)+
	move.w	($0004,a0),(a1)+
	move.w	($0008,a0),(a1)+
	move.w	($000c,a0),(a1)+
	move.w	($0010,a0),(a1)+
	move.w	($0014,a0),(a1)+
	move.w	($0018,a0),(a1)+
	move.w	($001c,a0),(a1)+
	move.w	($0020,a0),($00eb0800)
	move.w	($0024,a0),($00eb0802)
	move.w	($0028,a0),($00eb0804)
	move.w	($002c,a0),($00eb0806)
	rts

L001950:
	rte

L001952:
	clr.w	($00e80018)
	clr.w	($00e8001c)
L00195e:
	bclr.b	#$07,($00e88007)
	move.l	#L001950,($0000013c).l
	ori.b	#$20,($00e88009)
	movem.l	(a7)+,d0/a0
	rte

L00197e:
	move.w	(L0472ac),($00e80014)
	movem.l	d0/a0,-(a7)
	move.w	(L0471aa),d0
	subq.w	#1,d0
	move.w	d0,(L0471aa)
	beq	L00195e
	btst.l	#$00,d0
	bne	L0019c4
	lea.l	(L0471ae),a0
	tst.b	(L0472b1)
	bne	L0019b4
	add.w	d0,(a0,d0.w)
L0019b4:
	move.w	(a0,d0.w),d0
	lsr.w	#5,d0
	andi.w	#$01ff,d0
	move.w	d0,(L0472ac)
L0019c4:
	movem.l	(a7)+,d0/a0
	rte

L0019ca:
	move.w	(L0472ac),($00e80018)
	move.w	(L0472ac),($00e8001c)
	movem.l	d0/a0,-(a7)
	move.w	(L0471aa),d0
	subq.w	#1,d0
	move.w	d0,(L0471aa)
	beq	L001952
	btst.l	#$00,d0
	bne	L001a08
	lea.l	(L0471ae),a0
	move.w	(a0,d0.w),(L0472ac)
L001a08:
	movem.l	(a7)+,d0/a0
	rte

L001a0e:
	movem.l	d0/a0-a1,-(a7)
	move.w	(L047126),d0
	add.w	d0,d0
	move.w	(L001a22,pc,d0.w),d0
	jmp	(L001a22,pc,d0.w)

L001a22:
	.dc.w	L002240-L001a22
	.dc.w	L001a4e-L001a22
	.dc.w	L001b22-L001a22
	.dc.w	L001bc0-L001a22
	.dc.w	L001bfa-L001a22
	.dc.w	L001ca2-L001a22
	.dc.w	L001cc0-L001a22
	.dc.w	L001cfa-L001a22
	.dc.w	L001d44-L001a22
	.dc.w	L001bf2-L001a22
	.dc.w	L001d8e-L001a22
	.dc.w	L001dd8-L001a22
	.dc.w	L001e1e-L001a22
	.dc.w	L001e70-L001a22
	.dc.w	L001ec4-L001a22
	.dc.w	L001ee0-L001a22
	.dc.w	L001f1a-L001a22
	.dc.w	L001f8e-L001a22
	.dc.w	L002062-L001a22
	.dc.w	L002120-L001a22
	.dc.w	L00213e-L001a22
	.dc.w	L002178-L001a22

L001a4e:
	cmpi.w	#$0003,(L047128)
	beq	L001b16
	cmpi.w	#$0001,(L047128)
	beq	L001ada
	bcc	L001af8
	move.w	(L0472f6),d0
	move.w	d0,(L04712a)
	and.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$0096,($00e80012)
	move.w	#$0028,(L0471aa)
	move.l	#L00197e,($0000013c).l
	andi.b	#$df,($00e88009)
	bset.b	#$07,($00e88007)
L001aa8:
	tst.b	($00e88001)
	bpl	L001aa8
	move.w	#$094e,($00e82500)
	cmpi.w	#$0100,(L047f7a)
	bcs	L001ace
	move.w	#$006f,($00e82600)
	bra	L002240
L001ace:
	move.w	#$006c,($00e82600)
	bra	L002240
L001ada:
	move.w	(L0470ee),d0
	lsr.w	#2,d0
	and.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$0118,($00e80012)
	bra	L002240
L001af8:
	move.w	(L0470ee),d0
	lsr.w	#1,d0
	and.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$01d8,($00e80012)
	bra	L002240
L001b16:
	move.w	#$006c,($00e82600)
	bra	L002240
L001b22:
	cmpi.w	#$0001,(L047128)
	beq	L001b84
	bcc	L001ba2
L001b2e:
	tst.b	($00e88001)
	bpl	L001b2e
	move.b	#$6f,($00e82601)
	move.w	#$09e4,($00e82500)
	move.w	(L0472f6),d0
	and.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$00c6,($00e80012)
	move.w	#$0058,(L0471aa)
	move.l	#L00197e,($0000013c).l
	andi.b	#$df,($00e88009)
	bset.b	#$07,($00e88007)
	bra	L002240
L001b84:
	move.w	(L0470ee),d0
	lsr.w	#2,d0
	and.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$0148,($00e80012)
	bra	L002240
L001ba2:
	move.w	(L0470ee),d0
	lsr.w	#1,d0
	and.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$0208,($00e80012)
	bra	L002240
L001bc0:
	cmpi.w	#$0001,(L047128)
	beq	L001bee
L001bca:
	tst.b	($00e88001)
	bpl	L001bca
	move.w	#$1f6f,($00e82600)
	move.w	#$18e4,($00e82500)
	move.w	#$01e6,($00e80012)
	bra	L002240
L001bee:
	bra	L002240
L001bf2:
	lea.l	(L076912),a0
	bra	L001c00
L001bfa:
	lea.l	(L07ab78),a0
L001c00:
	cmpi.w	#$0001,(L047128)
	beq	L001c7a
L001c0a:
	tst.b	($00e88001)
	bpl	L001c0a
	move.w	#$006f,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$0100,($00e80014)
	cmpi.w	#$0009,(L0472ee)
	bne	L001c56
	lea.l	($00e82200),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	#$0226,($00e80012)
	bra	L002240
L001c56:
	moveq.l	#$00,d0
	lea.l	($00e82200),a1
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.w	#$0226,($00e80012)
	bra	L002240
L001c7a:
	move.w	#$0000,($00e80014)
	lea.l	(L06c46a),a0
	lea.l	($00e82200),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	bra	L002240
L001ca2:
	move.w	#$006f,d0
	lea.l	($00e82600),a0
L001cac:
	tst.b	($00e88001)
	bpl	L001cac
	move.w	d0,(a0)
	move.w	#$09e4,(-$0100,a0)
	bra	L002240
L001cc0:
	cmpi.w	#$0001,(L047128)
	beq	L001cee
L001cca:
	tst.b	($00e88001)
	bpl	L001cca
	move.w	#$006f,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$0226,($00e80012)
	bra	L002240
L001cee:
	move.w	#$12e4,($00e82500)
	bra	L002240
L001cfa:
	cmpi.w	#$0001,(L047128)
	beq	L001d28
L001d04:
	tst.b	($00e88001)
	bpl	L001d04
	move.w	#$0000,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$0228,($00e80012)
	bra	L002240
L001d28:
	tst.b	($00e88001)
	bpl	L001d28
	move.w	#$12e4,($00e82500)
	move.w	#$0060,($00e82600)
	bra	L002240
L001d44:
	cmpi.w	#$0001,(L047128)
	beq	L001d72
L001d4e:
	tst.b	($00e88001)
	bpl	L001d4e
	move.w	#$004f,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$0228,($00e80012)
	bra	L002240
L001d72:
	tst.b	($00e88001)
	bpl	L001d72
	move.w	#$12e4,($00e82500)
	move.w	#$006f,($00e82600)
	bra	L002240
L001d8e:
	cmpi.w	#$0001,(L047128)
	beq	L001dbc
L001d98:
	tst.b	($00e88001)
	bpl	L001d98
	move.w	#$0043,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$0228,($00e80012)
	bra	L002240
L001dbc:
	tst.b	($00e88001)
	bpl	L001dbc
	move.w	#$12e4,($00e82500)
	move.w	#$0063,($00e82600)
	bra	L002240
L001dd8:
	cmpi.w	#$0001,(L047128)
	beq	L001e06
L001de2:
	tst.b	($00e88001)
	bpl	L001de2
	move.w	#$006f,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$01c8,($00e80012)
	bra	L002240
L001e06:
	btst.b	#$00,(L0472f7)
	beq	L002240
	move.w	#$002f,($00e82600)
	bra	L002240
L001e1e:
	cmpi.w	#$0001,(L047128)
	beq	L001e54
L001e28:
	tst.b	($00e88001)
	bpl	L001e28
	move.w	#$006f,($00e82600)
	bset.b	#$00,($00eb0809)
	bset.b	#$03,($00eb0809)
	move.w	#$0228,($00e80012)
	bra	L002240
L001e54:
	tst.b	($00e88001)
	bpl	L001e54
	bclr.b	#$00,($00eb0809)
	bclr.b	#$03,($00eb0809)
	bra	L002240
L001e70:
	cmpi.w	#$0001,(L047128)
	beq	L001e9e
L001e7a:
	tst.b	($00e88001)
	bpl	L001e7a
	move.w	#$006f,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$00b8,($00e80012)
	bra	L002240
L001e9e:
	move.w	#$00fe,(L0471aa)
	move.l	#L0019ca,($0000013c).l
	andi.b	#$df,($00e88009)
	bset.b	#$07,($00e88007)
	bra	L002240
L001ec4:
	tst.b	($00e88001)
	bpl	L001ec4
	move.w	#$006f,($00e82600)
	move.w	#$094e,($00e82500)
	bra	L002240
L001ee0:
	cmpi.w	#$0001,(L047128)
	beq	L001f0e
L001eea:
	tst.b	($00e88001)
	bpl	L001eea
	move.w	#$006f,($00e82600)
	move.w	#$09e4,($00e82500)
	move.w	#$01f8,($00e80012)
	bra	L002240
L001f0e:
	move.w	#$002f,($00e82600)
	bra	L002240
L001f1a:
	cmpi.w	#$0001,(L047128)
	beq	L001f6a
L001f24:
	tst.b	($00e88001)
	bpl	L001f24
	move.w	#$1f63,($00e82600)
	move.w	#$18e4,($00e82500)
	bset.b	#$00,($00eb0809)
	bset.b	#$03,($00eb0809)
	move.w	(L047f7a),d0
	lsr.w	#3,d0
	andi.w	#$01ff,d0
	move.w	d0,($00e80014)
	move.w	#$0228,($00e80012)
	bra	L002240
L001f6a:
	tst.b	($00e88001)
	bmi	L001f6a
L001f72:
	tst.b	($00e88001)
	bpl	L001f72
	bclr.b	#$00,($00eb0809)
	bclr.b	#$03,($00eb0809)
	bra	L002240
L001f8e:
	move.w	(L047128),d0
	bne	L001fc2
L001f96:
	tst.b	($00e88001)
	bpl	L001f96
	bset.b	#$00,($00eb0809)
	move.w	#$0063,($00e82600)
	move.w	#$18e4,($00e82500)
	move.w	#$0170,($00e80012)
	bra	L002240
L001fc2:
	cmpi.w	#$0018,d0
	beq	L001ffc
	asl.w	#3,d0
	add.w	#$0170,d0
	move.w	d0,($00e80012)
	sub.w	#$0170,d0
	lsr.w	#2,d0
	lea.l	(L04712a),a0
	move.w	(a0,d0.w),d0
L001fe4:
	tst.b	($00e88001)
	bpl	L001fe4
	move.w	d0,($00e80018)
	move.w	d0,($00e8001c)
	bra	L002240
L001ffc:
	move.w	(L0470ee),d0
	bclr.b	#$00,($00eb0809)
L00200a:
	tst.b	($00e88001)
	bpl	L00200a
	move.w	d0,($00e80018)
	move.w	d0,($00e8001c)
	move.w	(L0472f6),d0
	andi.w	#$00ff,d0
	add.w	d0,d0
	lea.l	(L010458),a0
	lea.l	(L04712a),a1
	movem.l	d1-d2,-(a7)
	move.w	#$0018,d2
L00203e:
	move.b	(a0,d0.w),d1
	ext.w	d1
	asr.w	#4,d1
	add.w	(L0470ee),d1
	move.w	d1,(a1)+
	add.w	#$0010,d0
	andi.w	#$01ff,d0
	dbra	d2,L00203e
	movem.l	(a7)+,d1-d2
	bra	L002240
L002062:
	cmpi.w	#$0001,(L047128)
	beq	L0020aa
	bcc	L0020f0
	bset.b	#$00,($00eb0809)
	move.w	(L047fda),d0
	cmpi.w	#$0021,d0
	blt	L0020aa
	move.w	#$181b,($00e82500)
	move.w	#$1f61,($00e82600)
	cmpi.w	#$0100,d0
	bcc	L0020dc
	add.w	d0,d0
	add.w	#$0028,d0
	move.w	d0,($00e80012)
	bra	L002240
L0020aa:
	move.w	(L047fd8),d0
	asl.w	#4,d0
	andi.w	#$01f0,d0
	lea.l	(L004f52),a1
	move.w	(a1,d0.w),($00e82500)
	move.w	($02,a1,d0.w),($00e82600)
	move.w	#$0000,($00e82400)
	move.w	#$0010,($00e80028)
L0020dc:
	move.w	#$0228,($00e80012)
	move.w	#$0001,(L047128)
	bra	L002240
L0020f0:
	tst.b	($00e88001)
	bmi	L0020f0
L0020f8:
	tst.b	($00e88001)
	bpl	L0020f8
	bclr.b	#$00,($00eb0809)
	move.w	(L047fd0),(L047fd8)
	move.w	(L047fd4),(L047fda)
	bra	L002240
L002120:
	move.w	#$006f,d0
	lea.l	($00e82600),a0
L00212a:
	tst.b	($00e88001)
	bpl	L00212a
	move.w	d0,(a0)
	move.w	#$094e,(-$0100,a0)
	bra	L002240
L00213e:
	cmpi.w	#$0001,(L047128)
	beq	L002164
L002148:
	tst.b	($00e88001)
	bpl	L002148
	bset.b	#$00,($00eb0809)
	move.w	#$0228,($00e80012)
	bra	L002240
L002164:
	tst.b	($00e88001)
	bpl	L002164
	bclr.b	#$00,($00eb0809)
	bra	L002240
L002178:
	move.w	(L047128),d0
	beq	L002194
	subq.w	#1,d0
	beq	L0021b4
	subq.w	#1,d0
	beq	L0021d2
	subq.w	#1,d0
	beq	L0021f0
	subq.w	#1,d0
	beq	L00220e
	bra	L00222a
L002194:
	move.w	(L0472f6),d0
	lsr.w	#3,d0
	neg.w	d0
	and.w	#$00ff,d0
	move.w	d0,($00e80014)
	move.w	#$00b8,($00e80012)
	bra	L002240
L0021b4:
	move.w	(L0472f6),d0
	lsr.w	#4,d0
	neg.w	d0
	and.w	#$00ff,d0
	move.w	d0,($00e80014)
	move.w	#$00f8,($00e80012)
	bra	L002240
L0021d2:
	move.w	(L0472f6),d0
	lsr.w	#1,d0
	neg.w	d0
	and.w	#$00ff,d0
	move.w	d0,($00e80014)
	move.w	#$0128,($00e80012)
	bra	L002240
L0021f0:
	move.w	(L0472f6),d0
	lsr.w	#2,d0
	neg.w	d0
	and.w	#$00ff,d0
	move.w	d0,($00e80014)
	move.w	#$0168,($00e80012)
	bra	L002240
L00220e:
	move.w	(L0472f6),d0
	lsr.w	#2,d0
	and.w	#$00ff,d0
	move.w	d0,($00e80014)
	move.w	#$01c8,($00e80012)
	bra	L002240
L00222a:
	move.w	(L0472f6),d0
	lsr.w	#1,d0
	and.w	#$00ff,d0
	move.w	d0,($00e80014)
	bra.w	L002240
L002240:
	addq.w	#1,(L047128)
	movem.l	(a7)+,d0/a0-a1
	rte

L00224c:
	lea.l	(L0482bc),a0
	lea.l	($00eb0000),a1
	jsr	(L0039ba)
	jsr	(L0039ba)
	jsr	(L0039ba)
	jsr	(L0039ba)
	rts

L002272:
	move.w	(L0472fa),d0
	bmi	L0022a6
	lsl.w	#2,d0
	lea.l	(L0022a8),a0
	movea.l	(a0,d0.w),a0
	move.w	($0000.w,a0),($00e82400)
	move.w	($0002,a0),($00e82500)
	move.w	($0004,a0),($00e82600)
	ori.w	#$8000,(L0472fa)
L0022a6:
	rts

L0022a8:
	.dc.l	L0022d0
	.dc.l	L0022d6
	.dc.l	L0022dc
	.dc.l	L0022e2
	.dc.l	L0022e8
	.dc.l	L0022ee
	.dc.l	L0022f4
	.dc.l	L0022fa
	.dc.l	L002300
	.dc.l	L002306
L0022d0:
	.dc.b	$00,$01,$12,$4e,$00,$00
L0022d6:
	.dc.b	$00,$01,$12,$4e,$00,$6f
L0022dc:
	.dc.b	$00,$01,$06,$e4,$00,$6f
L0022e2:
	.dc.b	$00,$01,$06,$4e,$00,$6f
L0022e8:
	.dc.b	$00,$03,$06,$e4,$00,$6f
L0022ee:
	.dc.b	$00,$01,$12,$4e,$00,$60
L0022f4:
	.dc.b	$00,$03,$12,$e4,$00,$6f
L0022fa:
	.dc.b	$00,$01,$09,$e4,$00,$6f
L002300:
	.dc.b	$00,$01,$09,$e4,$1e,$4f
L002306:
	.dc.b	$00,$01,$12,$4e,$00,$6f

L00230c:
	jmp	($00000000).l

L002312:
	.dc.b	$00,$00,$00,$00

L002316:
	jmp	($00000000).l

L00231c:
	.dc.b	$00,$00,$00,$00

L002320:
	jmp	($00000000).l

L002326:
	.dc.b	$00,$00,$00,$00

L00232a:
	jmp	($00000000).l

L002330:
	.dc.b	$00,$00,$00,$00,$4e,$f9,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00

L00233e:
	jmp	($00000000).l

L002344:
	.dc.b	$00,$00,$00,$00

L002348:
	jmp	($00000000).l

L00234e:
	.dc.b	$00,$00,$00,$00

L002352:
	jmp	($00000000).l

L002358:
	.dc.b	$00,$00,$00,$00

L00235c:
	jmp	($00000000).l

L002362:
	.dc.b	$00,$00,$00,$00

L002366:
	jmp	($00000000).l

L00236c:
	.dc.b	$00,$00,$00,$00

L002370:
	jmp	($00000000).l

L002376:
	.dc.b	$00,$00,$00,$00

L00237a:
	jmp	($00000000).l

L002380:
	.dc.b	$00,$00,$00,$00

L002384:
	jmp	($00000000).l

L00238a:
	.dc.b	$00,$00,$00,$00

L00238e:
	rte

L002390:
	jmp	($00000000).l

L002396:
	.dc.b	$00,$00,$00,$00

L00239a:
	ori.b	#$04,($00e8e007)
	rte

L0023a4:
	jmp	($00000000).l

L0023aa:
	.dc.b	$00,$00,$00,$00

L0023ae:
	rte

L0023b0:
	jmp	($00000000).l

L0023b6:
	.dc.b	$00,$00,$00,$00

L0023ba:
	rte

L0023bc:
	jmp	($00000000).l

L0023c2:
	.dc.b	$00,$00,$00,$00

L0023c6:
	rte

L0023c8:
	jmp	($00000000).l

L0023ce:
	.dc.b	$00,$00,$00,$00

L0023d2:
	rte

L0023d4:
	jmp	($00000000).l

L0023da:
	.dc.b	$00,$00,$00,$00

L0023de:
	rte

L0023e0:
	jmp	($00000000).l

L0023e6:
	.dc.b	$00,$00,$00,$00,$4e,$73,$4e,$f9
L0023ee:
	.dc.l	$00000000,$00000000

L0023f6:
	rte

L0023f8:
	jmp	($00000000).l

L0023fe:
	.dc.b	$00,$00,$00,$00

L002402:
	rte

L002404:
	jmp	($00000000).l

L00240a:
	.dc.b	$00,$00,$00,$00
L00240e:
	.dc.l	$00000000
L002412:
	.dc.b	$00
L002413:
	.dc.b	$00

L002414:
	movea.l	#L002614,a0
L00241a:
	move.w	($0000.w,a0),d1
	bne	L002424
	bsr	L00245e
	rts

L002424:
	move.w	($0002,a0),d0
	lsl.w	#2,d1
	movea.l	(L00243e,pc,d1.w),a1
	jsr	(a1)
	addq.l	#8,a0
	cmpa.l	(L002610),a0
	bcs	L00241a
	bsr	L00245e
	rts

L00243e:
	.dc.l	$00000000
	.dc.l	L002470
	.dc.l	L00247a
	.dc.l	L0024aa
	.dc.l	L002512
	.dc.l	L00252c
	.dc.l	L002532
	.dc.l	L002542

L00245e:
	movea.l	#L002614,a0
	move.l	a0,(L002610)
	clr.w	($0000.w,a0)
	rts

L002470:
	move.b	($0004,a0),d1
	bsr	L002548
	rts

L00247a:
	movea.l	($0004,a0),a6
	move.w	(a6)+,d0
L002480:
	clr.w	d1
	move.b	(a6)+,d1
	cmpi.b	#$fd,d1
	bne	L00248e
	addq.w	#1,d0
	bra	L002480
L00248e:
	cmpi.b	#$ff,d1
	beq	L0024a8
	cmpi.b	#$fe,d1
	bne	L0024a2
	move.b	(a6)+,d0
	lsl.w	#8,d0
	move.b	(a6)+,d0
	move.b	(a6)+,d1
L0024a2:
	bsr	L002548
	bra	L002480
L0024a8:
	rts

L0024aa:
	move.l	($0004,a0),d2
	swap.w	d2
	move.w	d2,d1
	andi.w	#$f000,d1
	rol.w	#4,d1
	addq.w	#1,d1
	bsr	L002548
	move.w	d2,d1
	andi.w	#$0f00,d1
	lsr.w	#8,d1
	addq.w	#1,d1
	bsr	L002548
L0024ca:
	move.b	d2,d1
	andi.w	#$00f0,d1
	lsr.w	#4,d1
	addq.w	#1,d1
	bsr	L002548
	move.b	d2,d1
	andi.w	#$000f,d1
	addq.w	#1,d1
	bsr	L002548
	swap.w	d2
L0024e2:
	move.w	d2,d1
	andi.w	#$f000,d1
	rol.w	#4,d1
	addq.w	#1,d1
	bsr	L002548
L0024ee:
	move.w	d2,d1
	andi.w	#$0f00,d1
	lsr.w	#8,d1
	addq.w	#1,d1
	bsr	L002548
L0024fa:
	move.b	d2,d1
	andi.w	#$00f0,d1
	lsr.w	#4,d1
	addq.w	#1,d1
	bsr	L002548
	move.b	d2,d1
	andi.w	#$000f,d1
	addq.w	#1,d1
	bsr	L002548
	rts

L002512:
	move.l	($0004,a0),d2
L002516:
	swap.w	d2
	move.w	d2,d1
	andi.w	#$0f00,d1
	bne	L002524
	addq.w	#1,d0
	bra	L0024ca
L002524:
	lsr.w	#8,d1
	addq.w	#1,d1
	bsr	L002548
	bra	L0024ca
L00252c:
	move.w	($0004,a0),d2
	bra	L0024ee
L002532:
	move.b	($0004,a0),d2
L002536:
	cmpi.b	#$99,d2
	bls	L002540
	move.b	#$99,d2
L002540:
	bra	L0024fa
L002542:
	move.w	($0004,a0),d2
	bra	L0024e2
L002548:
	move.w	d0,-(a7)
	lea.l	($00e00000),a2
	lea.l	($00e20000),a3
	lea.l	($00e40000),a4
	lea.l	($00e60000),a5
	lsl.w	#5,d1
	lea.l	(L04664a),a1
	lea.l	(a1,d1.w),a1
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	add.w	#$0080,d0
	move.b	(a1)+,(a2,d0.w)
	move.b	(a1)+,(a3,d0.w)
	move.b	(a1)+,(a4,d0.w)
	move.b	(a1)+,(a5,d0.w)
	move.w	(a7)+,d0
	addq.w	#1,d0
	rts

L002610:
	.dc.l	L002a14
L002614:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
L002a14:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
L002a1c:
	.dc.b	$01,$95,$2f,$94,$41,$00,$03,$00
	.dc.b	$25,$ff,$f8,$2a,$08,$ff,$f8,$1c
	.dc.b	$28,$ff,$f8,$0b,$4f,$fe,$a8,$1d
	.dc.b	$ff,$f8,$0f,$18,$ff,$12,$1a,$1a
	.dc.b	$0a,$ff,$f8,$0b,$2a,$ff,$f8,$14
	.dc.b	$52,$0a,$fd,$80,$23,$fa,$8c,$04
	.dc.b	$ff,$f8,$19,$45,$14,$ff,$fd,$16
	.dc.b	$06,$ff,$f8,$12,$4e,$fe,$40,$1a
	.dc.b	$fd,$70,$1f,$16,$ff,$95,$fd,$b0
	.dc.b	$09,$26,$ff,$f8,$0c,$fd,$10,$17
	.dc.b	$5d,$f5,$15,$f7,$dc,$ff,$54,$f6
	.dc.b	$18,$2d,$f4,$d0,$2e,$fe,$28,$34
	.dc.b	$ef,$a8,$10,$10,$aa,$ff,$f8,$0b
	.dc.b	$ee,$d0,$17,$f9,$70,$09,$fc,$4d
	.dc.b	$a7,$ed,$38,$17,$fd,$cc,$30,$2a
	.dc.b	$ff,$20,$ff,$f8,$09,$ec,$78,$0e
	.dc.b	$f1,$60,$0a,$a9,$f4,$9c,$f2,$c0
	.dc.b	$34,$ff,$f8,$0d,$05,$82,$ff,$25
	.dc.b	$25,$21,$ff,$f8,$09,$66,$01,$ff
	.dc.b	$55,$ee,$fd,$70,$3c,$ed,$36,$fb
	.dc.b	$00,$1b,$55,$fe,$f0,$21,$ef,$4d
	.dc.b	$f5,$b8,$10,$ef,$30,$56,$55,$ee
	.dc.b	$40,$23,$fc,$20,$09,$e0,$b8,$0c
	.dc.b	$e0,$78,$34,$75,$fd,$70,$24,$ac
	.dc.b	$ed,$f0,$0b,$55,$f8,$08,$46,$eb
	.dc.b	$f0,$15,$ec,$48,$0a,$ec,$3a,$55
	.dc.b	$ff,$48,$14,$ff,$30,$0b,$ff,$40
	.dc.b	$13,$ee,$19,$55,$ff,$fc,$ed,$78
	.dc.b	$0a,$ed,$6b,$ff,$f8,$0c,$55,$ff
	.dc.b	$18,$0c,$ff,$00,$0e,$fe,$38,$19
	.dc.b	$fe,$60,$18,$52,$fd,$98,$26,$fe
	.dc.b	$58,$1b,$fa,$e0,$0f,$09,$f5,$78
	.dc.b	$2d,$aa,$f2,$8f,$f6,$18,$0f,$f6
	.dc.b	$c8,$10,$f4,$78,$22,$aa,$fe,$68
	.dc.b	$18,$f3,$b8,$16,$ee,$00,$11,$ff
	.dc.b	$17,$aa,$fa,$f8,$0c,$fe,$18,$13
	.dc.b	$f8,$e0,$2d,$f9,$a8,$18,$aa,$fb
	.dc.b	$30,$10,$f3,$18,$23,$f3,$08,$2a
	.dc.b	$fe,$60,$19,$aa,$fd,$98,$2a,$fa
	.dc.b	$40,$20,$c0,$c8,$24,$e3,$88,$0e
	.dc.b	$2a,$18,$38,$e2,$38,$16,$df,$60
	.dc.b	$12,$de,$80,$37,$15,$09,$29,$29
	.dc.b	$e9,$e0,$2a,$e2,$58,$1b,$39,$f9
	.dc.b	$50,$1a,$19,$ff,$09,$d9,$ff,$92
	.dc.b	$7d,$ff,$f8,$09,$ef,$ff,$f8,$11
	.dc.b	$55,$db,$70,$12,$eb,$08,$18,$e1
	.dc.b	$58,$1c,$f9,$f0,$0f,$55,$fe,$5e
	.dc.b	$cf,$b8,$1a,$d4,$f0,$2f,$fb,$05
	.dc.b	$59,$d2,$88,$39,$f0,$a0,$0a,$ff
	.dc.b	$55,$fd,$f0,$17,$e7,$20,$0e,$df
	.dc.b	$d8,$0f,$f4,$30,$1b,$55,$d1,$30
	.dc.b	$33,$ab,$10,$19,$ce,$90,$3e,$a8
	.dc.b	$40,$1e,$5f,$e8,$10,$0f,$cb,$58
	.dc.b	$39,$c8,$1c,$b8,$63,$12,$02,$ff
	.dc.b	$22,$aa,$ff,$f8,$12,$f2,$d0,$14
	.dc.b	$c4,$58,$3b,$fb,$18,$2a,$55,$1a
	.dc.b	$ff,$fc,$a3,$d8,$0b,$fc,$88,$44
	.dc.b	$55,$fd,$28,$0c,$a0,$f8,$0e,$fd
	.dc.b	$00,$42,$9d,$dc,$59,$ff,$ff,$9d
	.dc.b	$f0,$10,$8d,$55,$eb,$b0,$1f,$9b
	.dc.b	$ef,$fb,$20,$10,$f4,$a0,$55,$55
	.dc.b	$b9,$b8,$51,$ff,$f8,$ff,$89,$c8
	.dc.b	$40,$e0,$a0,$14,$55,$aa,$b8,$1a
	.dc.b	$d5,$b0,$31,$de,$68,$0d,$f9,$d0
	.dc.b	$37,$24,$99,$b0,$11,$05,$c8,$0c
	.dc.b	$08,$85,$d8,$1e,$0a,$aa,$dc,$79
	.dc.b	$96,$28,$42,$9a,$68,$16,$b5,$38
	.dc.b	$2d,$aa,$f5,$b0,$16,$d8,$c8,$63
	.dc.b	$f1,$68,$18,$96,$50,$4d,$b1,$92
	.dc.b	$58,$4e,$b2,$11,$32,$ff,$ff,$31
	.dc.b	$ff,$be,$4a,$aa,$ba,$90,$15,$8f
	.dc.b	$d0,$57,$f9,$88,$37,$c6,$18,$16
	.dc.b	$aa,$c5,$a8,$2e,$fe,$98,$14,$8b
	.dc.b	$80,$41,$6d,$80,$2b,$ae,$71,$30
	.dc.b	$12,$70,$78,$17,$e7,$be,$c1,$00
	.dc.b	$13,$ec,$ff,$f8,$0b,$aa,$68,$40
	.dc.b	$0c,$e2,$58,$10,$67,$58,$21,$fe
	.dc.b	$c8,$09,$aa,$f3,$20,$3c,$83,$90
	.dc.b	$1d,$f5,$48,$33,$8f,$30,$0c,$aa
	.dc.b	$af,$48,$09,$ae,$80,$18,$ad,$c8
	.dc.b	$18,$ad,$00,$35,$aa,$c4,$70,$ff
	.dc.b	$ff,$f8,$ff,$ff,$f8,$ff,$ff,$f8
	.dc.b	$ff,$aa,$ff,$f8,$ff,$ff,$f8,$ff
	.dc.b	$ff,$f8,$ff,$ff,$f8,$ff,$aa,$ff
	.dc.b	$f8,$ff,$ff,$f8,$ff,$ff,$f8,$ff
	.dc.b	$ff,$f8,$0c,$80,$00,$00,$00,$00
L002ccc:
	.dc.b	$01,$65,$02,$b0,$c9,$00,$0a,$00
	.dc.b	$25,$ff,$f8,$2e,$04,$ff,$f8,$10
	.dc.b	$14,$ff,$f8,$09,$8a,$f3,$24,$ff
	.dc.b	$f8,$11,$fe,$70,$11,$aa,$ff,$f8
	.dc.b	$ff,$ff,$f8,$29,$f5,$20,$0a,$f5
	.dc.b	$12,$a5,$ff,$f8,$2d,$f4,$1a,$20
	.dc.b	$ff,$f8,$0d,$56,$f1,$d6,$ff,$48
	.dc.b	$0e,$ff,$47,$b5,$ff,$02,$ff,$22
	.dc.b	$72,$ff,$f8,$10,$ea,$02,$ef,$b8
	.dc.b	$0c,$55,$10,$ff,$f8,$0b,$fd,$70
	.dc.b	$11,$fd,$10,$16,$24,$ff,$f8,$1a
	.dc.b	$08,$ff,$f8,$2a,$09,$ff,$f8,$11
	.dc.b	$01,$aa,$ff,$f8,$7f,$fb,$be,$f9
	.dc.b	$c0,$2b,$ff,$f8,$36,$55,$18,$ff
	.dc.b	$fe,$fd,$f0,$38,$e1,$b5,$53,$e0
	.dc.b	$10,$2f,$ff,$f8,$1d,$ef,$ab,$30
	.dc.b	$6a,$ff,$f0,$28,$1c,$f2,$b8,$80
	.dc.b	$ff,$f8,$12,$54,$05,$ff,$f8,$0d
	.dc.b	$e2,$18,$45,$e9,$63,$28,$fa,$ff
	.dc.b	$e7,$90,$0f,$f0,$00,$42,$6b,$1a
	.dc.b	$ff,$0a,$97,$ff,$2a,$ff,$f8,$0d
	.dc.b	$d7,$ec,$f0,$10,$21,$d1,$a8,$10
	.dc.b	$d1,$07,$e5,$d8,$86,$e7,$c0,$2f
	.dc.b	$38,$38,$55,$f4,$cc,$ff,$fd,$fe
	.dc.b	$80,$20,$da,$73,$55,$c9,$a0,$10
	.dc.b	$eb,$08,$99,$ea,$68,$17,$eb,$58
	.dc.b	$32,$55,$cf,$58,$12,$e2,$d0,$0a
	.dc.b	$cc,$90,$3a,$fc,$a0,$16,$55,$bf
	.dc.b	$90,$2c,$be,$18,$5e,$f9,$18,$3b
	.dc.b	$fe,$28,$09,$55,$fa,$d8,$22,$c2
	.dc.b	$50,$10,$f7,$b0,$13,$f8,$f8,$35
	.dc.b	$15,$fd,$30,$0a,$34,$34,$fd,$b8
	.dc.b	$1d,$fc,$80,$30,$3d,$fd,$4c,$16
	.dc.b	$ff,$06,$8a,$ff,$26,$ff,$f8,$0f
	.dc.b	$b1,$a8,$54,$ad,$f6,$b0,$0c,$f0
	.dc.b	$08,$53,$a6,$2a,$10,$10,$c6,$78
	.dc.b	$0a,$d6,$fb,$d6,$50,$0f,$f1,$ff
	.dc.b	$22,$22,$20,$55,$fc,$58,$0f,$fb
	.dc.b	$2d,$de,$82,$fe,$36,$4e,$fe,$08
	.dc.b	$16,$b6,$d2,$20,$c0,$aa,$af,$28
	.dc.b	$66,$c2,$28,$4d,$a1,$20,$16,$e5
	.dc.b	$a0,$4b,$aa,$a9,$a8,$3b,$e2,$08
	.dc.b	$40,$ff,$f8,$25,$cf,$41,$a5,$ee
	.dc.b	$d6,$cd,$78,$0c,$28,$c6,$74,$55
	.dc.b	$9e,$90,$9f,$ef,$68,$52,$ff,$f8
	.dc.b	$dc,$93,$28,$52,$55,$d4,$78,$11
	.dc.b	$c5,$08,$0b,$9f,$f0,$49,$eb,$08
	.dc.b	$0d,$55,$b8,$70,$19,$a0,$70,$10
	.dc.b	$ff,$f8,$ae,$c6,$80,$40,$55,$ef
	.dc.b	$a0,$59,$78,$a8,$45,$84,$83,$ff
	.dc.b	$f8,$25,$52,$dc,$b0,$8e,$83,$bc
	.dc.b	$ab,$50,$0e,$21,$ff,$f8,$0a,$aa
	.dc.b	$94,$b8,$22,$ff,$f8,$11,$fb,$28
	.dc.b	$41,$f6,$9c,$aa,$7a,$10,$11,$ff
	.dc.b	$fd,$79,$40,$12,$ff,$fe,$aa,$e5
	.dc.b	$d8,$21,$9f,$18,$a7,$79,$d8,$6e
	.dc.b	$7b,$87,$aa,$7b,$70,$22,$fe,$b0
	.dc.b	$10,$d9,$a8,$0e,$d9,$90,$25,$aa
	.dc.b	$78,$98,$2f,$ff,$f8,$29,$f8,$c8
	.dc.b	$46,$ff,$f8,$12,$aa,$ae,$08,$0a
	.dc.b	$ff,$f8,$2c,$f8,$38,$39,$fc,$d0
	.dc.b	$2b,$aa,$dc,$a0,$0d,$f7,$a8,$10
	.dc.b	$f8,$40,$29,$fe,$b5,$ba,$7b,$02
	.dc.b	$ff,$7b,$08,$13,$aa,$f9,$47,$fe
	.dc.b	$b0,$0a,$f8,$98,$2d,$5f,$f8,$12
	.dc.b	$aa,$ff,$f8,$1b,$e5,$68,$7b,$ba
	.dc.b	$c0,$41,$55,$68,$14,$aa,$e8,$e8
	.dc.b	$18,$ae,$40,$49,$51,$68,$40,$b4
	.dc.b	$b8,$44,$aa,$be,$08,$4b,$62,$c0
	.dc.b	$19,$ff,$f8,$4e,$4b,$78,$83,$aa
	.dc.b	$e9,$80,$98,$ff,$f8,$ff,$ff,$f8
	.dc.b	$ff,$ff,$f8,$ff,$aa,$ff,$f8,$ff
	.dc.b	$ff,$f8,$ff,$ff,$f8,$75,$00,$00
	.dc.b	$00,$00
L002f16:
	.dc.b	$01,$fe,$e2,$32,$f1,$00,$0f,$00
	.dc.b	$27,$ff,$f8,$20,$08,$ff,$ff,$18
	.dc.b	$95,$ff,$38,$28,$ff,$f8,$09,$ff
	.dc.b	$20,$09,$55,$ff,$f8,$21,$fe,$15
	.dc.b	$fe,$08,$09,$fe,$68,$27,$52,$ff
	.dc.b	$fe,$fe,$d8,$16,$fa,$70,$11,$04
	.dc.b	$ff,$f8,$34,$aa,$f8,$90,$0b,$f8
	.dc.b	$e8,$0a,$f8,$d8,$2d,$fb,$60,$0b
	.dc.b	$95,$fc,$60,$22,$14,$ff,$fe,$fb
	.dc.b	$f8,$09,$22,$ff,$f8,$10,$10,$ff
	.dc.b	$fc,$30,$20,$ff,$f8,$0c,$a9,$fe
	.dc.b	$a8,$16,$fd,$80,$0b,$fc,$68,$1b
	.dc.b	$16,$c9,$ff,$06,$ff,$f8,$0d,$26
	.dc.b	$65,$ff,$f8,$1f,$dd,$fa,$d0,$12
	.dc.b	$56,$f3,$98,$1f,$ff,$f8,$1c,$f9
	.dc.b	$2c,$24,$f8,$02,$ff,$f8,$09,$0a
	.dc.b	$ff,$f8,$09,$2a,$be,$ff,$f8,$25
	.dc.b	$d4,$f3,$40,$26,$ee,$91,$00,$15
	.dc.b	$34,$34,$24,$ff,$f8,$0a,$ef,$b0
	.dc.b	$14,$55,$e7,$60,$25,$ea,$28,$1e
	.dc.b	$f9,$90,$0a,$f9,$70,$1b,$75,$ec
	.dc.b	$d1,$a9,$f0,$e8,$0d,$54,$f0,$bf
	.dc.b	$fc,$98,$27,$f4,$10,$13,$f5,$71
	.dc.b	$22,$aa,$ff,$f8,$0b,$f1,$a6,$f8
	.dc.b	$58,$10,$f8,$4e,$aa,$fc,$30,$0c
	.dc.b	$f3,$6c,$fd,$f8,$0c,$ff,$f8,$0e
	.dc.b	$aa,$f2,$4e,$fc,$88,$09,$ff,$f8
	.dc.b	$10,$fe,$20,$1b,$aa,$ef,$bf,$e7
	.dc.b	$c8,$18,$f7,$60,$13,$e8,$00,$17
	.dc.b	$aa,$df,$c8,$43,$e2,$a8,$24,$ee
	.dc.b	$b8,$16,$de,$b0,$32,$aa,$ff,$f8
	.dc.b	$49,$ef,$dd,$d4,$f8,$0a,$da,$18
	.dc.b	$26,$a9,$d4,$d8,$23,$fd,$f8,$26
	.dc.b	$fe,$58,$2a,$09,$55,$ff,$f8,$a8
	.dc.b	$e3,$38,$19,$f0,$78,$1c,$f7,$58
	.dc.b	$15,$55,$d7,$20,$29,$eb,$e0,$12
	.dc.b	$e5,$88,$13,$e4,$b0,$0b,$d5,$ca
	.dc.b	$ea,$c7,$cf,$d8,$1b,$55,$c7,$c8
	.dc.b	$1d,$ef,$20,$16,$ea,$c0,$4d,$da
	.dc.b	$68,$19,$55,$e5,$98,$38,$be,$88
	.dc.b	$24,$ff,$f8,$ff,$ea,$d8,$23,$51
	.dc.b	$fc,$38,$db,$da,$60,$2b,$ed,$90
	.dc.b	$0a,$12,$12,$55,$c7,$b0,$1f,$b7
	.dc.b	$1a,$ad,$20,$1d,$b8,$6d,$55,$ea
	.dc.b	$c8,$85,$b2,$b0,$2e,$ff,$f8,$ff
	.dc.b	$ff,$f8,$ff,$55,$ff,$f8,$ff,$ff
	.dc.b	$f8,$ff,$ff,$f8,$ff,$ff,$f8,$ff
	.dc.b	$55,$ff,$f8,$ff,$ff,$f8,$ff,$ff
	.dc.b	$f8,$ff,$ff,$f8,$ff,$55,$ff,$f8
	.dc.b	$ff,$ff,$f8,$ff,$ff,$f8,$ff,$ff
	.dc.b	$f8,$ff,$55,$ff,$f8,$ff,$ff,$f8
	.dc.b	$ff,$ff,$f8,$ff,$ff,$f8,$ff,$50
	.dc.b	$ff,$f8,$ff,$ff,$f8,$c1,$00,$00
	.dc.b	$00,$00

L0030c0:
	moveq.l	#$00,d0
	move.b	(a6),d0
	cmpi.b	#$ff,d0
	beq	L003118
	asl.w	#3,d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	lea.l	(L003562),a0
	lea.l	(a0,d0.w),a0
	tst.l	($0010,a0)
	bne	L0030f6
	move.l	a0,-(a7)
	lea.l	($0001,a0),a0
	lea.l	(L0492bc),a2
	bsr	L0031f4
	movea.l	(a7)+,a0
	bra	L0030fe
L0030f6:
	movea.l	($0010,a0),a2
	move.l	($0014,a0),d2
L0030fe:
	move.l	(a6)+,d1
	andi.l	#$00ffffff,d1
	movea.l	d1,a1
	move.b	(a0),d0
	ext.w	d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L00311a,pc,d0.w),a5
	jsr	(a5)
	bra	L0030c0
L003118:
	rts

L00311a:
	.dc.l	L00312a
	.dc.l	L003132
	.dc.l	L00315e
	.dc.l	L00316e

L00312a:
	tst.l	(L0470ea)
	beq	L00315c
L003132:
	movea.l	a2,a0
	move.l	a6,-(a7)
L003136:
	cmpi.l	#$00000100,d2
	bcs	L003150
	move.l	d2,-(a7)
	jsr	(L0039ba)
	move.l	(a7)+,d2
	subi.l	#$00000100,d2
	bne	L003136
L003150:
	movea.l	(a7)+,a6
	tst.w	d2
	beq	L00315c
L003156:
	move.b	(a0)+,(a1)+
	subq.w	#1,d2
	bne	L003156
L00315c:
	rts

L00315e:
	move.l	a6,-(a7)
	movea.l	a2,a5
	movea.l	a1,a6
	jsr	(L03d632)
	movea.l	(a7)+,a6
	rts

L00316e:
	movea.l	a2,a0
	movem.l	d0-d1/a0-a1,-(a7)
L003174:
	move.b	(a0)+,d0
	beq	L003196
	move.b	d0,d1
	andi.b	#$7f,d0
	cmp.b	d0,d1
	beq	L00318c
	move.b	d0,d1
L003184:
	move.b	(a0)+,(a1)+
	subq.b	#1,d1
	bne	L003184
	bra	L003174
L00318c:
	move.b	(a0)+,d0
L00318e:
	move.b	d0,(a1)+
	subq.b	#1,d1
	bne	L00318e
	bra	L003174
L003196:
	movem.l	(a7)+,d0-d1/a0-a1
	rts

L00319c:
	lea.l	(L003562),a1
	movea.l	(L0470ea),a2
	move.w	#$0001,(L0472ae)
	moveq.l	#$00,d0
L0031b2:
	cmpi.b	#$ff,(a1)
	beq	L0031d8
	move.l	a2,($0010,a1)
	movem.l	d0/a1,-(a7)
	bsr	L0031e2
	movem.l	(a7)+,d0/a1
	move.l	d2,($0014,a1)
	beq	L0031e0
	lea.l	($0018,a1),a1
	lea.l	(a2,d2.l),a2
	addq.w	#1,d0
	bra	L0031b2
L0031d8:
	clr.w	(L0472ae)
	rts

L0031e0:
	bra	L0031e0
L0031e2:
	asl.w	#3,d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	lea.l	(L003562),a0
	lea.l	($01,a0,d0.w),a0
L0031f4:
	move.l	a0,(L0481e8)
	tst.b	(L00354c)
	beq	L003218
	lea.l	($0002,a0),a0
	lea.l	(L003555),a1
	bsr	L0034b6
	lea.l	(L00354c),a0
	bra	L00322c
L003218:
	lea.l	(L00354d),a1
	bsr	L0034b6
	lea.l	(L00354d),a0
	bra.w	L00322c
L00322c:
	tst.w	(L0472ae)
	bne	L003272
	move.w	sr,-(a7)
	ori.w	#$0600,sr
	move.b	($00e88007),(L047346)
	move.b	($00e88009),(L047347)
	bclr.b	#$07,($00e88007)
	bclr.b	#$03,($00e88009)
	bclr.b	#$04,($00e88009)
	clr.w	(L03d630)
	move.w	(a7)+,sr
	bsr	L00348c
L003272:
	move.w	#$0020,-(a7)
	move.l	a0,-(a7)
	pea.l	(L048214)
	DOS	_FILES
	lea.l	($000a,a7),a7
	tst.l	d0
	bmi	L0033ce
	move.w	#$0000,-(a7)
	move.l	a0,-(a7)
	DOS	_OPEN
	addq.l	#6,a7
	tst.l	d0
	bmi	L0033ce
	move.l	d0,d1
	move.l	(L04822e),-(a7)
	move.l	a2,-(a7)
	move.w	d1,-(a7)
	DOS	_READ
	lea.l	($000a,a7),a7
	tst.l	d0
	bmi	L0033ce
	move.l	d0,d2
	move.w	d1,-(a7)
	DOS	_CLOSE
	addq.l	#2,a7
	tst.l	d0
	bmi	L0033ce
	btst.l	#$00,d2
	beq	L0032c8
	addq.l	#1,d2
L0032c8:
	tst.w	(L0472ae)
	bne	L0032e4
	move.b	(L047346),($00e88007)
	move.b	(L047347),($00e88009)
L0032e4:
	rts

L0032e6:
	move.l	#$00001ff0,d7
	bra	L0032f0
L0032ee:
	moveq.l	#$30,d7
L0032f0:
	move.l	a0,(L0481e8)
	tst.b	(L00354c)
	beq	L003314
	lea.l	($0002,a0),a0
	lea.l	(L003555),a1
	bsr	L0034b6
	lea.l	(L00354c),a0
	bra	L003328
L003314:
	lea.l	(L00354d),a1
	bsr	L0034b6
	lea.l	(L00354d),a0
	bra.w	L003328
L003328:
	move.w	sr,-(a7)
	ori.w	#$0600,sr
	move.b	($00e88007),(L047346)
	move.b	($00e88009),(L047347)
	bclr.b	#$07,($00e88007)
	bclr.b	#$03,($00e88009)
	bclr.b	#$04,($00e88009)
	clr.w	(L03d630)
	move.w	(a7)+,sr
	bsr	L00348c
	move.w	#$0020,-(a7)
	move.l	a0,-(a7)
	pea.l	(L048214)
	DOS	_FILES
	lea.l	($000a,a7),a7
	tst.l	d0
	bmi	L003438
	move.w	#$0002,-(a7)
	move.l	a0,-(a7)
	DOS	_OPEN
	addq.l	#6,a7
	tst.l	d0
	bmi	L003438
	move.l	d0,d1
	move.l	d7,-(a7)
	move.l	a2,-(a7)
	move.w	d1,-(a7)
	DOS	_WRITE
	lea.l	($000a,a7),a7
	tst.l	d0
	bmi	L003438
	move.l	d0,d2
	move.w	d1,-(a7)
	DOS	_CLOSE
	addq.l	#2,a7
	tst.l	d0
	bmi	L003438
	btst.l	#$00,d2
	beq	L0033b8
	addq.l	#1,d2
L0033b8:
	move.b	(L047346),($00e88007)
	move.b	(L047347),($00e88009)
	rts

L0033ce:
	move.b	(L047346),($00e88007)
	move.b	(L047347),($00e88009)
	tst.b	(L00354c)
	beq	L003400
	move.w	#$0002,(L03d5c0)
	move.l	a0,(L03d5c2)
	jsr	(L03ca5a)
	bra	L00342e
L003400:
	movea.l	(L0481e8),a0
	cmpi.b	#$41,(a0)
	bne	L003416
	move.w	#$0000,(L03d5c0)
	bra	L00341e
L003416:
	move.w	#$0001,(L03d5c0)
L00341e:
	move.l	a0,(L03d5c2)
	jsr	(L03ca5a)
	bra.w	L00342e
L00342e:
	movea.l	(L0481e8),a0
	bra	L0031f4
L003438:
	move.b	(L047346),($00e88007)
	move.b	(L047347),($00e88009)
	tst.b	(L00354c)
	beq	L00346a
	move.w	#$0005,(L03d5c0)
	move.l	a0,(L03d5c2)
	jsr	(L03ca5a)
	bra	L003482
L00346a:
	move.w	#$0004,(L03d5c0)
	move.l	a0,(L03d5c2)
	jsr	(L03ca5a)
	bra.w	L003482
L003482:
	movea.l	(L0481e8),a0
	bra	L0032ee
L00348c:
	btst.b	#$04,($00e88001)
	beq	L00348c
L003496:
	btst.b	#$04,($00e88001)
	bne	L003496
L0034a0:
	btst.b	#$04,($00e88001)
	beq	L0034a0
L0034aa:
	btst.b	#$04,($00e88001)
	bne	L0034aa
	rts

L0034b6:
	move.b	(a0)+,d0
	beq	L0034c4
	cmpi.b	#$20,d0
	beq	L0034c4
	move.b	d0,(a1)+
	bra	L0034b6
L0034c4:
	move.b	#$00,(a1)
	rts

L0034ca:
	move.b	#$00,(L003554)
	move.w	#$0000,d2
L0034d6:
	addq.w	#1,d2
	cmpi.w	#$001b,d2
	bcc	L003542
	pea.l	(L048254)
	move.w	d2,-(a7)
	DOS	_GETDPB
	addq.l	#6,a7
	tst.l	d0
	bmi	L0034d6
	cmpi.b	#$f8,(L04826a)
	beq	L00350e
	cmpi.b	#$f7,(L04826a)
	beq	L00350e
	cmpi.b	#$f6,(L04826a)
	beq	L00350e
	bra	L0034d6
L00350e:
	move.b	(L048254),d0
	add.b	#$41,d0
	move.b	d0,(L00354c)
	move.w	#$0010,-(a7)
	pea.l	(L00354c)
	pea.l	(L048214)
	DOS	_FILES
	lea.l	($000a,a7),a7
	tst.l	d0
	bne	L0034d6
	move.b	#$5c,(L003554)
	rts

L003542:
	move.b	#$00,(L00354c)
	rts

L00354c:
	.dc.b	$43
L00354d:
	.dc.b	':¥RA960'
L003554:
	.dc.b	$5c
L003555:
	.dc.b	'            ',$00
L003562:
	.dc.b	$00,$41,$3a,$54,$49,$54,$4c,$45
	.dc.b	$5f,$56,$2e,$44,$41,$54,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$41,$3a,$54,$49,$54,$4c,$45
	.dc.b	$5f,$53,$2e,$44,$41,$54,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$31,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$31,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$32,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$32,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$33,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$33,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$34,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$34,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$35,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$35,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$36,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$36,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$37,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$37,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$38,$5f
	.dc.b	$56,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$42,$4c,$4b,$38,$5f
	.dc.b	$53,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$4d,$41,$50,$2e,$44
	.dc.b	$41,$54,$20,$20,$20,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$42,$3a,$45,$4e,$44,$49,$4e
	.dc.b	$47,$2e,$44,$41,$54,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$03,$42,$3a,$43,$49,$5f,$30,$2e
	.dc.b	$46,$4f,$4e,$20,$20,$20,$20,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$ff,$00
L00375c:
	.dc.b	'B:BLK0_V.DAT  ',$00
L00376b:
	.dc.b	'B:BLK0_S.DAT  ',$00
L00377a:
	.dc.b	'B:SAVEDATA.DRA',$00
L003789:
	.dc.b	'A:DRA.X       ',$00
L003798:
	.dc.b	'B:DEMODAT0.DAT',$00,$00
L0037a8:
	.dc.l	L08a1dc+$13fc70e0
	.dc.b	$ff,$00,$00,$00
L0037b0:
	.dc.l	L08a1dc+$01fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037b8:
	.dc.l	L08a1dc+$02fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037c0:
	.dc.l	L08a1dc+$03fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037c8:
	.dc.l	L08a1dc+$04fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037d0:
	.dc.l	L08a1dc+$05fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037d8:
	.dc.l	L08a1dc+$06fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037e0:
	.dc.l	L08a1dc+$07fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037e8:
	.dc.l	L08a1dc+$08fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037f0:
	.dc.l	L08a1dc+$09fbf0e0
	.dc.b	$ff,$00,$00,$00
L0037f8:
	.dc.l	L08a1dc+$0afbf0e0
	.dc.b	$ff,$00,$00,$00
L003800:
	.dc.l	L08a1dc+$0bfbf0e0
	.dc.b	$ff,$00,$00,$00
L003808:
	.dc.l	L08a1dc+$0cfbf0e0
	.dc.b	$ff,$00,$00,$00
L003810:
	.dc.l	L08a1dc+$0dfbf0e0
	.dc.b	$ff,$00,$00,$00
L003818:
	.dc.l	L08a1dc+$0efbf0e0
	.dc.b	$ff,$00,$00,$00
L003820:
	.dc.l	L08a1dc+$0ffbf0e0
	.dc.b	$ff,$00,$00,$00
L003828:
	.dc.l	L08a1dc+$10fbf0e0
	.dc.b	$ff,$00,$00,$00
L003830:
	.dc.l	L08a1dc+$11fbf0e0
	.dc.b	$ff,$00,$00,$00
L003838:
	.dc.l	L0492bc
	.dc.b	$ff,$00,$00,$00
L003840:
	.dc.l	L08a1dc+$fbf0e0
	.dc.b	$ff,$00,$00,$00
L003848:
	.dc.l	L08a1dc+$12fbf0e0
	.dc.b	$ff,$00,$00,$00

L003850:
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L003890:
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L0038b0:
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L0038c0:
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L0038c8:
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	rts

L0038d2:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
L003912:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
L003932:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
L003942:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	rts

L003954:
	movea.l	a3,a0
	movea.l	a4,a1
L003958:
	subi.w	#$0100,d2
	bcs	L003964
	bsr	L003850
	bra	L003958
L003964:
	addi.w	#$0100,d2
	beq	L003996
	rol.b	#1,d2
	bcc	L003972
	bsr	L003890
L003972:
	rol.b	#1,d2
	bcc	L00397a
	bsr	L0038b0
L00397a:
	rol.b	#1,d2
	bcc	L003982
	bsr	L0038c0
L003982:
	rol.b	#1,d2
	bcc	L00398a
	bsr	L0038c8
L00398a:
	lsr.b	#4,d2
	tst.w	d2
	beq	L003996
L003990:
	move.b	(a0)+,(a1)+
	subq.w	#1,d2
	bne	L003990
L003996:
	rts

L003998:
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	bsr	L0039ba
	rts

L0039ba:
	movem.l	(a0)+,d0-d7/a2-a6
	movem.l	d0-d7/a2-a6,(a1)
	movem.l	(a0)+,d0-d7/a2-a6
	movem.l	d0-d7/a2-a6,($0034,a1)
	movem.l	(a0)+,d0-d7/a2-a6
	movem.l	d0-d7/a2-a6,($0068,a1)
	movem.l	(a0)+,d0-d7/a2-a6
	movem.l	d0-d7/a2-a6,($009c,a1)
	movem.l	(a0)+,d0-d7/a2-a5
	movem.l	d0-d7/a2-a5,($00d0,a1)
	lea.l	($0100,a1),a1
	rts

L0039f0:
	lea.l	(L0474e0),a1
	moveq.l	#$00,d0
	move.w	#$001f,d1
L0039fc:
	move.l	d0,(a1)
	lea.l	($0030,a1),a1
	dbra	d1,L0039fc
	rts

L003a08:
	jsr	(L0039f0)
	lea.l	(L047ab0),a0
	move.w	#$002a,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$001f,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L070b6a,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	clr.w	($0022,a0)
	clr.w	($0024,a0)
	clr.w	($0026,a0)
	clr.l	($0028,a0)
	clr.w	($002c,a0)
	move.w	($0004,a0),d5
	move.w	($0008,a0),d6
	lea.l	(L0474e0),a0
	move.w	#$0011,d7
L003a7a:
	move.w	#$002a,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0003,($001a,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	subi.w	#$0018,d0
	add.w	d5,d0
	move.w	d0,($0004,a0)
	move.w	#$0027,($0008,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L070b6a,($0014,a0)
	move.w	#$8000,($001c,a0)
	clr.w	($001e,a0)
	move.w	d7,d0
	neg.w	d0
	addi.w	#$0011,d0
	move.w	d0,($0020,a0)
	clr.w	($0022,a0)
	lea.l	($0030,a0),a0
	dbra	d7,L003a7a
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a64)
	movem.l	(a7)+,d0-d7/a0-a6
	rts

L003ae6:
	move.w	($001c,a0),d0
	bmi	L003afa
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a38)
	movem.l	(a7)+,d0-d7/a0-a6
L003afa:
	move.w	($002c,a0),d0
	beq	L003b0a
	subq.w	#1,d0
	move.w	d0,($002c,a0)
	clr.b	($001a,a0)
L003b0a:
	move.w	($001c,a0),d0
	bmi	L0040d2
	add.w	d0,d0
	move.w	(L003b1c,pc,d0.w),d0
	jmp	(L003b1c,pc,d0.w)

L003b1c:
	.dc.w	L003bf2-L003b1c
	.dc.w	L003c58-L003b1c
	.dc.w	L003c84-L003b1c
	.dc.w	L003cae-L003b1c
	.dc.w	L003cbe-L003b1c
	.dc.w	L003f3e-L003b1c
	.dc.w	L003f9a-L003b1c
	.dc.w	L003bae-L003b1c

L003b2c:
	movea.l	a0,a1
L003b2e:
	jsr	(L0298a6)
	bcs	L003baa
	move.w	#$002a,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d1
	move.w	d1,($0008,a0)
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	jsr	(L01032e)
	move.w	#$0002,d2
	cmpi.w	#$0003,(L047354)
	bcs	L003b82
	move.w	#$0003,d2
L003b82:
	ext.l	d0
	ext.l	d1
	asl.l	d2,d0
	asl.l	d2,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.w	#$0007,($001c,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L070bca,($0014,a0)
L003baa:
	movea.l	a1,a0
	rts

L003bae:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	bcs	L003bbc
	moveq.l	#$00,d0
L003bbc:
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	move.w	d0,($0018,a0)
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L003bda
	jmp	(L029cca)

L003bda:
	jsr	(L025416)
	rts

L003be2:
	jsr	(L025416)
	rts

L003bea:
	jsr	(L0039f0)
	rts

L003bf2:
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L003bea
	cmpi.w	#$1600,(L047f7a)
	bne	L003c56
	move.w	#$0000,(L04735a)
	addq.w	#1,($001c,a0)
	move.w	#$0090,($001e,a0)
	move.w	#$0005,(L04731e)
	jsr	(L018c0e)
	move.b	(L070440),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L070442),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$001f,d7
L003c4c:
	move.l	(a5)+,(a6)+
	dbra	d7,L003c4c
	moveq.l	#$fe,d0
	trap	#0
L003c56:
	rts

L003c58:
	subq.w	#1,($001e,a0)
	tst.w	(L04731e)
	bne	L003c82
	tst.w	($001e,a0)
	bpl	L003c82
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	move.l	#L070b32,($0014,a0)
	moveq.l	#$b6,d0
	trap	#0
L003c82:
	rts

L003c84:
	tst.w	(L047fac)
	bne	L003cac
	move.w	($0020,a0),d0
	addq.w	#1,d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0040,d0
	bne	L003cac
	addq.w	#1,($001c,a0)
	clr.w	($0020,a0)
	clr.w	($0024,a0)
	clr.w	($0026,a0)
L003cac:
	rts

L003cae:
	addq.w	#1,($001c,a0)
	clr.w	($0020,a0)
	move.b	#$03,($0002,a0)
	rts

L003cbe:
	tst.w	(L047fac)
	bne	L003e92
	move.w	($0026,a0),d0
	addq.w	#1,d0
	move.w	d0,($0026,a0)
	subq.w	#1,d0
	move.w	($0024,a0),d1
	cmpi.w	#$0001,d1
	beq	L003daa
	bcc	L003dbe
	cmpi.w	#$0100,d0
	bcc	L003d94
	tst.w	d0
	bne	L003d2c
	moveq.l	#$00,d0
	jsr	(L01024e)
	and.w	#$3fff,d0
	add.w	#$5000,d0
	tst.b	($0005,a0)
	bpl	L003d08
	neg.l	d0
L003d08:
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.l	#$00001fff,d0
	addi.w	#$1000,d0
	move.b	($0009,a0),d1
	cmpi.b	#$60,d1
	bcs	L003d28
	neg.l	d0
L003d28:
	move.l	d0,($0010,a0)
L003d2c:
	move.w	(L047354),d1
	bne	L003d40
	cmpi.w	#$00d8,(L0473f8)
	bcc	L003e16
L003d40:
	andi.w	#$007f,d0
	beq	L003d7e
	subq.w	#1,d1
	bcs	L003e16
	beq	L003e16
	andi.w	#$003f,d0
	beq	L003d7e
	subq.w	#1,d1
	beq	L003e16
	andi.w	#$001f,d0
	beq	L003d7e
	subq.w	#1,d1
	beq	L003e16
	andi.w	#$000f,d0
	beq	L003d7e
	subq.w	#1,d1
	beq	L003e16
	andi.w	#$0007,d0
	beq	L003d7e
	bra	L003e16
L003d7e:
	jsr	(L01024e)
	andi.w	#$0003,d0
	bne	L003e16
	bsr	L003b2c
	bra	L003e16
L003d94:
	addq.w	#1,($0024,a0)
	clr.w	($0026,a0)
	clr.l	($000c,a0)
	move.l	#$00001000,($0010,a0)
	bra	L003e16
L003daa:
	cmpi.w	#$0080,d0
	bcs	L003e16
	addq.w	#1,($0024,a0)
	clr.w	($0026,a0)
	clr.l	($0028,a0)
	bra	L003e16
L003dbe:
	cmpi.w	#$0070,d0
	bcc	L003e02
	tst.w	d0
	beq	L003dd2
	move.l	($0028,a0),d0
	add.l	d0,($0010,a0)
	bra	L003e16
L003dd2:
	move.l	(L0473f4),d0
	sub.l	($0004,a0),d0
	asr.l	#6,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.w	#$3fff,d0
	addi.w	#$4000,d0
	ext.l	d0
	asl.l	#3,d0
	move.l	d0,($0010,a0)
	asr.l	#6,d0
	neg.l	d0
	move.l	d0,($0028,a0)
	bra	L003e16
L003e02:
	clr.w	($0024,a0)
	clr.w	($0026,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	bra.w	L003e16
L003e16:
	move.l	($0004,a0),d0
	add.l	($000c,a0),d0
	move.l	d0,($0004,a0)
	swap.w	d0
	cmpi.w	#$0020,d0
	bcc	L003e3c
	tst.w	($000c,a0)
	bpl	L003e3c
	move.l	($000c,a0),d1
	neg.l	d1
	asr.l	#1,d1
	move.l	d1,($000c,a0)
L003e3c:
	cmpi.w	#$00e0,d0
	bcs	L003e54
	tst.w	($000c,a0)
	bmi	L003e54
	move.l	($000c,a0),d1
	neg.l	d1
	asr.l	#1,d1
	move.l	d1,($000c,a0)
L003e54:
	move.l	($0008,a0),d0
	add.l	($0010,a0),d0
	move.l	d0,($0008,a0)
	swap.w	d0
	cmpi.w	#$0020,d0
	bcc	L003e7a
	tst.w	($0010,a0)
	bpl	L003e7a
	move.l	($0010,a0),d1
	neg.l	d1
	asr.l	#1,d1
	move.l	d1,($0010,a0)
L003e7a:
	cmpi.w	#$00e0,d0
	bcs	L003e92
	tst.w	($0010,a0)
	bmi	L003e92
	move.l	($0010,a0),d1
	neg.l	d1
	asr.l	#1,d1
	move.l	d1,($0010,a0)
L003e92:
	move.b	($001a,a0),d7
	move.b	d7,d0
	andi.b	#$0f,d0
	cmpi.b	#$01,d0
	bne	L003ea8
	bclr.b	#$00,($001a,a0)
L003ea8:
	jsr	(L029a3e)
	bcc	L003eee
	beq	L003fb4
	moveq.l	#$48,d0
	trap	#0
	andi.b	#$40,d7
	rol.b	#2,d7
	move.b	d7,($0022,a0)
	move.w	#$0020,($002c,a0)
	move.w	($001a,a0),d7
	andi.w	#$00ff,d7
	lsr.w	#1,d7
	addq.w	#1,d7
	move.w	d7,(L047fbe)
	tst.w	(L047fac)
	bne	L003f36
	addq.w	#1,($001c,a0)
	clr.w	($0020,a0)
	clr.b	($0002,a0)
L003eee:
	tst.w	(L047fac)
	bne	L003f36
	cmpi.w	#$0001,($0024,a0)
	bne	L003f0e
	cmpi.w	#$0050,($0026,a0)
	bcs	L003f0e
	cmpi.w	#$0004,($0018,a0)
	beq	L003f36
L003f0e:
	cmpi.w	#$0002,($0024,a0)
	bne	L003f26
	cmpi.w	#$0030,($0026,a0)
	bcc	L003f26
	cmpi.w	#$0000,($0018,a0)
	beq	L003f36
L003f26:
	lea.l	(L00449c),a1
	move.w	#$0007,d1
	jsr	(L029d28)
L003f36:
	jsr	(L025416)
	rts

L003f3e:
	tst.w	(L047fac)
	bne	L003f5e
	move.w	($0020,a0),d0
	addq.w	#1,d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0040,d0
	bne	L003f5e
	tst.w	($0022,a0)
	beq	L003f60
	bra	L003f90
L003f5e:
	rts

L003f60:
	move.w	#$0002,($001c,a0)
	clr.w	($0020,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	addi.w	#$0040,d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	addi.w	#$0040,d0
	move.w	d0,($0008,a0)
	rts

L003f90:
	addq.w	#1,($001c,a0)
	clr.w	($0020,a0)
	rts

L003f9a:
	tst.w	(L047fac)
	bne	L003fb2
	move.w	($0020,a0),d0
	addq.w	#1,d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0070,d0
	beq	L003f60
L003fb2:
	rts

L003fb4:
	moveq.l	#$f0,d0
	trap	#0
	moveq.l	#$82,d0
	trap	#0
	movem.l	a0,-(a7)
	bsr	L003fd0
	movem.l	(a7)+,a0
	clr.w	($0002,a0)
	jmp	(L029b9e)

L003fd0:
	lea.l	(L044936),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebdc80),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L070440),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L070442),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$0007,d7
L004020:
	move.l	(a5)+,(a6)+
	dbra	d7,L004020
	jsr	(L0298e2)
	bcc	L004034
	lea.l	(L047ae0),a0
L004034:
	moveq.l	#$00,d0
	move.w	#$002b,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	d0,($001a,a0)
	move.w	#$0080,($0004,a0)
	move.w	#$0030,($0008,a0)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.w	d0,($001c,a0)
	move.w	#$0080,($0020,a0)
	move.w	#$0000,($0022,a0)
	move.w	#$0000,($001e,a0)
	move.l	#L070b92,($0014,a0)
	move.w	#$0000,($0018,a0)
	rts

L004080:
	move.w	($0022,a0),d0
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	beq	L0040b0
	lsr.w	#1,d0
	add.w	d0,d0
	lea.l	(L01366e),a1
	move.w	(a1,d0.w),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L06e442),a5
	jsr	(L025426)
	rts

L0040b0:
	move.w	#$fff0,($0008,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	addi.w	#$0040,d0
	move.w	d0,($0004,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	rts

L0040d2:
	tst.w	($0022,a0)
	bne	L004080
	move.b	($001a,a0),d0
	andi.b	#$0f,d0
	beq	L00410a
	cmpi.b	#$01,d0
	bne	L0040f0
	bclr.b	#$00,($001a,a0)
	bra	L00410a
L0040f0:
	move.b	#$00,($0002,a0)
	move.w	#$0003,($001a,a0)
	move.w	#$0014,($0022,a0)
	moveq.l	#$23,d0
	trap	#0
	bra	L004080
L00410a:
	cmpi.w	#$002a,(L047ab0)
	bne	L004162
	move.w	(L047acc),d0
	beq	L004124
	tst.w	(L047fac)
	bne	L004150
L004124:
	add.w	d0,d0
	move.w	(L00412e,pc,d0.w),d0
	jmp	(L00412e,pc,d0.w)

L00412e:
	.dc.w	L00419c-L00412e
	.dc.w	L0041aa-L00412e
	.dc.w	L0041b2-L00412e
	.dc.w	L004220-L00412e
	.dc.w	L004224-L00412e
	.dc.w	L004226-L00412e
	.dc.w	L0042c6-L00412e

L00413c:
	lea.l	(L029d6e),a1
	move.w	#$0004,d1
	move.w	#$0001,d2
	jsr	(L029d2c)
L004150:
	cmpi.w	#$0004,(L047acc)
	beq	L004160
	jsr	(L025416)
L004160:
	rts

L004162:
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.w	($0020,a0),d2
	add.w	d2,d2
	lea.l	(L0044aa),a1
	move.b	(a1,d2.w),d0
	move.b	($01,a1,d2.w),d1
	ext.w	d0
	ext.w	d1
	add.w	(L047ab4),d0
	add.w	(L047ab8),d1
	move.w	d0,($0004,a0)
	move.w	d1,($0008,a0)
	clr.w	($0000.w,a0)
	jmp	(L029b82)

L00419c:
	jsr	(L02993c)
	jsr	(L025416)
	rts

L0041aa:
	jsr	(L025416)
	rts

L0041b2:
	tst.w	(L047ad0)
	beq	L0041d6
	move.l	($0004,a0),d0
	add.l	($000c,a0),d0
	move.l	d0,($0004,a0)
	move.l	($0008,a0),d0
	add.l	($0010,a0),d0
	move.l	d0,($0008,a0)
	bra	L00413c
L0041d6:
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.w	($0020,a0),d2
	add.w	d2,d2
	lea.l	(L0044aa),a1
	move.b	(a1,d2.w),d0
	move.b	($01,a1,d2.w),d1
	ext.w	d0
	ext.w	d1
	swap.w	d0
	swap.w	d1
	add.l	(L047ab4),d0
	add.l	(L047ab8),d1
	sub.l	($0004,a0),d0
	sub.l	($0008,a0),d1
	asr.l	#6,d0
	asr.l	#6,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.b	#$00,($0002,a0)
	bra	L00413c
L004220:
	bra	L00413c
L004224:
	rts

L004226:
	tst.w	(L047ad0)
	beq	L00425e
	move.l	($000c,a0),d0
	move.l	d0,d1
	asr.l	#5,d1
	sub.l	d1,d0
	move.l	d0,($000c,a0)
	add.l	($0004,a0),d0
	move.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	move.l	d0,d1
	asr.l	#5,d1
	sub.l	d1,d0
	move.l	d0,($0010,a0)
	add.l	($0008,a0),d0
	move.l	d0,($0008,a0)
	bra	L00413c
L00425e:
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.w	($0020,a0),d2
	add.w	d2,d2
	lea.l	(L0044aa),a1
	move.b	(a1,d2.w),d0
	move.b	($01,a1,d2.w),d1
	ext.w	d0
	ext.w	d1
	swap.w	d0
	swap.w	d1
	add.l	(L047ab4),d0
	add.l	(L047ab8),d1
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	swap.w	d0
	swap.w	d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	add.b	#$80,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	bra	L00413c
L0042c6:
	tst.w	(L047ad0)
	beq	L004338
	move.l	($000c,a0),d0
	add.l	($0024,a0),d0
	move.l	d0,($000c,a0)
	add.l	($0004,a0),d0
	move.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	($0028,a0),d0
	move.l	d0,($0010,a0)
	add.l	($0008,a0),d0
	move.l	d0,($0008,a0)
	cmpi.w	#$0050,(L047ad0)
	beq	L00430c
	cmpi.w	#$0060,(L047ad0)
	bne	L00413c
L00430c:
	move.l	($000c,a0),d0
	asr.l	#1,d0
	move.l	d0,($000c,a0)
	move.l	($0010,a0),d0
	asr.l	#1,d0
	move.l	d0,($0010,a0)
	move.l	($0024,a0),d0
	asr.l	#1,d0
	move.l	d0,($0024,a0)
	move.l	($0028,a0),d0
	asr.l	#1,d0
	move.l	d0,($0028,a0)
	bra	L00413c
L004338:
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	swap.w	d0
	add.l	(L0473f8),d0
	move.l	d0,d1
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	swap.w	d0
	add.l	(L0473f4),d0
	sub.l	($0004,a0),d0
	sub.l	($0008,a0),d1
	asr.l	#5,d0
	asr.l	#5,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	neg.l	d0
	neg.l	d1
	asr.l	#6,d0
	asr.l	#6,d1
	move.l	d0,d2
	jsr	(L01024e)
	andi.w	#$03ff,d0
	subi.w	#$0200,d0
	ext.l	d0
	add.l	d0,d2
	move.l	d2,($0024,a0)
	jsr	(L01024e)
	andi.w	#$03ff,d0
	subi.w	#$0200,d0
	ext.l	d0
	add.l	d0,d1
	move.l	d1,($0028,a0)
	move.b	#$03,($0002,a0)
	bra	L00413c
L0043ba:
	move.w	(L0472f6),d0
	andi.w	#$003f,d0
	bne	L0043ca
	moveq.l	#$06,d0
	trap	#0
L0043ca:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L0043d8,pc,d0.w),d0
	jmp	(L0043d8,pc,d0.w)

L0043d8:
	.dc.w	L0043de-L0043d8
	.dc.w	L004402-L0043d8
	.dc.w	L004468-L0043d8

L0043de:
	clr.w	(L047fbe)
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a38)
	movem.l	(a7)+,d0-d7/a0-a6
	subq.w	#1,($0020,a0)
	bne	L004476
	addq.w	#1,($001c,a0)
	andi.w	#$bfff,($0018,a0)
L004402:
	jsr	(L029954)
	jsr	(L029a3e)
	bcs	L00448e
	addi.l	#$00004000,($0010,a0)
	cmpi.w	#$0001,($0022,a0)
	bne	L004434
	cmpi.w	#$00d6,($0008,a0)
	bcs	L004476
	move.w	#$00d6,($0008,a0)
	addq.w	#1,($001c,a0)
	bra	L004476
L004434:
	move.w	#$0004,d0
	jsr	(L0257f2)
	tst.b	d0
	beq	L004476
	andi.w	#$fff8,($0008,a0)
	addi.w	#$0008.w,($0008,a0)
L00444e:
	subi.w	#$0008.w,($0008,a0)
	move.w	#$0004,d0
	jsr	(L0257f2)
	tst.b	d0
	bne	L00444e
	addq.w	#1,($001c,a0)
	bra	L004476
L004468:
	jsr	(L02993c)
	jsr	(L029a3e)
	bcs	L00448e
L004476:
	lea.l	(L0044a3),a1
	move.w	#$0007,d1
	jsr	(L029d28)
	jsr	(L025416)
	rts

L00448e:
	bset.b	#$00,(L047fb3)
	jmp	(L029cca)

L00449c:
	.dc.b	$0a,$04,$04,$04,$06,$07,$07
L0044a3:
	.dc.b	$02,$02,$03,$03,$04,$03,$04
L0044aa:
	.dc.b	$00,$f6,$00,$00,$00,$08,$00,$0e
	.dc.b	$08,$06,$10,$f8,$10,$00,$18,$f0
	.dc.b	$18,$06,$20,$f8,$20,$00,$f8,$06
	.dc.b	$f0,$f8,$f0,$00,$e8,$f0,$e8,$06
	.dc.b	$e0,$f8,$e0,$00

L0044ce:
	jsr	(L0298a6)
	bcc	L0044dc
	lea.l	(L0474e0),a0
L0044dc:
	move.w	#$0081,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$001f,($001a,a0)
	move.l	#$00800000,($0004,a0)
	move.l	#$00600000,($0008,a0)
	move.l	($0004,a0),($000c,a0)
	move.l	($0008,a0),($0010,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07221c,($0014,a0)
	move.w	#$0003,($001c,a0)
	move.w	#$0040,($001e,a0)
	clr.w	($0020,a0)
	clr.w	($0022,a0)
	clr.w	($0024,a0)
	clr.w	($0026,a0)
	clr.w	($0028,a0)
	clr.w	($002a,a0)
	move.w	#$00f0,(L047fcc)
	lea.l	(L04cc0c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb9000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04bbe2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc080),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L0719c8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0719ca),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0007,d7
L0045bc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0045bc
	clr.w	($00e82372)
	clr.w	($00e82376)
	clr.w	(L04735a)
	moveq.l	#$b6,d0
	trap	#0
	move.w	#$00a0,d0
	move.w	d0,(L048042)
	move.w	d0,(L04804a)
	move.w	d0,(L048052)
	move.w	d0,(L04805a)
	move.w	d0,(L048062)
	move.w	d0,(L04806a)
	move.l	a0,-(a7)
	jsr	(L041a64)
	movea.l	(a7)+,a0
	rts

L00460c:
	movem.l	a0,-(a7)
	bsr	L003fd0
	move.w	#$0048,($0004,a0)
	move.w	#$0001,($0022,a0)
	movem.l	(a7)+,a0
	jmp	(L029cca)

L00462a:
	moveq.l	#$f0,d0
	trap	#0
	moveq.l	#$82,d0
	trap	#0
	move.l	#$00010000,d0
	jsr	(L029a68)
	move.w	#$0002,($001c,a0)
	move.w	#$0000,($0002,a0)
	clr.w	(L047fbe)
	clr.w	($002a,a0)
	lea.l	(L048068),a4
	move.w	-(a4),d2
	move.w	-(a4),d1
	move.w	-(a4),d0
	move.w	-(a4),d4
	move.w	d1,($0004,a0)
	move.w	d2,($0008,a0)
	lea.l	(L07221c),a5
	move.w	#$0002,d1
	move.l	#L07221c,d2
	jsr	(L0196fc)
	move.w	#$0003,d7
L004684:
	move.w	-(a4),d2
	move.w	-(a4),d1
	move.w	-(a4),d0
	move.w	-(a4),d4
	andi.w	#$007f,d0
	lsr.w	#3,d0
	beq	L004698
	subi.w	#$0001.w,d0
L004698:
	move.w	d1,($0004,a0)
	move.w	d2,($0008,a0)
	move.w	d0,d1
	move.l	#L072104,d2
	jsr	(L0196fc)
	dbra	d7,L004684
	lea.l	(L048068),a4
	move.w	-(a4),($0008,a0)
	move.w	-(a4),($0004,a0)
	bra	L004734
L0046c2:
	move.w	($002a,a0),d0
	beq	L0046e4
	btst.b	#$00,(L0472f7)
	beq	L004712
	subq.w	#1,d0
	move.w	d0,($002a,a0)
	bne	L004712
	clr.b	($001a,a0)
	move.b	#$03,($0002,a0)
L0046e4:
	jsr	(L029a3e)
	bcc	L004712
	beq	L00462a
	moveq.l	#$48,d0
	trap	#0
	move.w	#$0020,($002a,a0)
	move.b	#$00,($0002,a0)
	move.w	($001a,a0),d7
	andi.w	#$00ff,d7
	lsr.w	#1,d7
	addq.w	#1,d7
	move.w	d7,(L047fbe)
L004712:
	move.l	a0,-(a7)
	jsr	(L041a38)
	movea.l	(a7)+,a0
	cmpi.w	#$0003,($001c,a0)
	beq	L0047c4
	cmpi.w	#$0001,($001c,a0)
	beq	L00482e
	bcs	L0047da
L004734:
	move.w	(L047fcc),d0
	addi.w	#$0002.w,d0
	move.w	d0,(L047fcc)
	cmpi.w	#$0100,d0
	bgt	L00460c
	addi.w	#$0060,d0
	move.w	d0,($0010,a0)
	subi.w	#$0050,d0
	move.w	d0,(L047fd4)
	cmpi.w	#$0080,d0
	bgt	L0047a4
	move.l	($000c,a0),d5
	addi.l	#$00640000,d5
	move.l	($0010,a0),d6
	addi.l	#$00480000,d6
	move.w	#$006c,d7
	swap.w	d7
	move.w	($0024,a0),d7
	asr.w	#1,d7
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
L0047a4:
	bsr	L004e68
	move.w	#$0006,d7
L0047ac:
	bsr	L004dd6
	dbra	d7,L0047ac
	move.w	#$000e,(L047fd0)
	move.w	#$00e0,d0
	bra	L004bea
L0047c4:
	subq.w	#1,($001e,a0)
	bne	L0047d0
	move.w	#$0000,($001c,a0)
L0047d0:
	bsr	L004e68
	bsr	L004e68
	rts

L0047da:
	bsr	L004e68
	bsr	L004e68
	cmpi.w	#$00e0,(L047fcc)
	bgt	L0047f6
	tst.w	(L047fac)
	bne	L004904
L0047f6:
	move.w	(L047fcc),d0
	subi.w	#$0001.w,d0
	move.w	d0,(L047fcc)
	cmpi.w	#$0008,d0
	bne	L004818
	move.w	#$0001,($001c,a0)
	move.b	#$03,($0002,a0)
L004818:
	addi.w	#$0060,d0
	move.w	d0,($0010,a0)
	subi.w	#$0050,d0
	move.w	d0,(L047fd4)
	bra	L004904
L00482e:
	tst.w	(L047fac)
	bne	L004904
	move.w	($0026,a0),d0
	andi.w	#$003f,d0
	cmpi.w	#$0020,d0
	bcs	L00484c
	neg.w	d0
	addi.w	#$0040,d0
L00484c:
	addi.w	#$0008.w,d0
	move.w	(L071b20),d1
	jsr	(L018b34)
	move.w	d2,($00e82372)
	move.w	(L071b24),d1
	jsr	(L018b34)
	move.w	d2,($00e82376)
	move.w	($0026,a0),d0
	addq.b	#1,d0
	move.w	d0,($0026,a0)
	jsr	(L010440)
	asr.w	#8,d0
	asr.w	#2,d0
	addq.w	#8,d0
	move.w	d0,(L047fcc)
	addi.w	#$0060,d0
	move.w	d0,($0010,a0)
	subi.w	#$0050,d0
	move.w	d0,(L047fd4)
	move.w	#$0007,d1
	sub.w	(L047354),d1
	asl.w	#5,d1
	move.w	($0028,a0),d0
	addq.w	#1,d0
	move.w	d0,($0028,a0)
	cmp.w	d1,d0
	bne	L004904
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L004902
	move.w	#$009c,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$00ff,($001a,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07224c,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	move.l	a1,($002c,a0)
L004902:
	movea.l	a1,a0
L004904:
	lea.l	(L048040),a4
	move.l	($000c,a0),d5
	move.l	($0010,a0),d6
	move.w	#$0000,(a4)+
	move.w	#$00a0,(a4)+
	swap.w	d5
	swap.w	d6
	move.w	d5,(a4)+
	move.w	d6,(a4)+
	swap.w	d5
	swap.w	d6
	cmpi.w	#$00e0,(L047fcc)
	bgt	L004938
	tst.w	(L047fac)
	bne	L00499a
L004938:
	move.w	#$0003,d7
L00493c:
	jsr	(L01024e)
	andi.w	#$0003,d0
	addq.w	#7,d0
	sub.w	d7,d0
	add.w	(a4),d0
	move.w	d0,(a4)+
	lsr.w	#2,d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	asr.w	#8,d0
	asr.w	#2,d0
	addi.w	#$00a0,d0
	move.w	d0,(a4)+
	jsr	(L01032e)
	move.w	($002a,a0),d2
	cmpi.w	#$0010,d2
	bcs	L00497a
	neg.w	d2
	add.w	#$0020,d2
L00497a:
	neg.w	d2
	add.w	#$0018,d2
	add.w	d2,d2
	muls.w	d2,d0
	muls.w	d2,d1
	add.l	d0,d5
	add.l	d1,d6
	swap.w	d5
	swap.w	d6
	move.w	d5,(a4)+
	move.w	d6,(a4)+
	swap.w	d5
	swap.w	d6
	dbra	d7,L00493c
L00499a:
	lea.l	(L048068),a4
	move.w	-(a4),d2
	move.w	-(a4),d1
	move.w	-(a4),d0
	move.w	-(a4),d4
	move.w	d1,($0004,a0)
	move.w	d2,($0008,a0)
	move.w	($0018,a0),d0
	lea.l	(L07221c),a5
	jsr	(L025426)
	move.w	#$0003,d7
L0049c4:
	move.w	-(a4),d2
	move.w	-(a4),d1
	move.w	-(a4),d0
	move.w	-(a4),d4
	andi.w	#$007f,d0
	lsr.w	#3,d0
	beq	L0049d8
	subi.w	#$0001.w,d0
L0049d8:
	lea.l	(L072104),a5
	jsr	(L025426)
	dbra	d7,L0049c4
	move.w	($0022,a0),d0
	cmpi.b	#$18,($001b,a0)
	bcc	L004a0a
	tst.w	(L047fac)
	bne	L004a0a
	addq.w	#1,d0
	andi.w	#$007f,d0
	ori.w	#$0080,d0
	move.w	d0,($0022,a0)
L004a0a:
	cmpi.w	#$00c0,d0
	bcs	L004a30
	cmpi.w	#$00e2,d0
	bcs	L004a68
	cmpi.w	#$00f0,d0
	bcs	L004ad6
	cmpi.w	#$00f8,d0
	bcs	L004a7c
	cmpi.w	#$00ff,d0
	bcs	L004ae8
	bra	L004b58
L004a30:
	tst.w	(L047fac)
	bne	L004b80
	move.w	(L0472f6),d0
	andi.w	#$0003,d0
	bne	L004b80
	move.w	($0024,a0),d0
	cmpi.w	#$0004,d0
	beq	L004b80
	blt	L004a5c
	subi.w	#$0001.w,d0
	bra	L004a60
L004a5c:
	addi.w	#$0001.w,d0
L004a60:
	move.w	d0,($0024,a0)
	bra	L004b80
L004a68:
	tst.w	(L047fac)
	bne	L004b80
	subi.w	#$0001.w,($0024,a0)
	bra	L004b80
L004a7c:
	move.l	($000c,a0),d5
	addi.l	#$00100000,d5
	move.l	($0010,a0),d6
	addi.l	#$00a40000,d6
	move.w	#$00c0,d7
	swap.w	d7
	subi.w	#$00f0,d0
	move.w	d0,d4
	ext.l	d4
	swap.w	d4
	sub.l	d4,d5
	add.w	d0,d0
	move.w	d0,d7
	move.w	#$0000,d4
	bsr	L004c94
	move.w	#$0000,d4
	bsr	L004c94
	move.w	#$0004,d4
	bsr	L004c94
	move.w	#$0008,d4
	bsr	L004c94
	move.w	#$000c,d4
	bsr	L004c94
	move.w	#$0010,d4
	bsr	L004c94
L004ad6:
	tst.w	(L047fac)
	bne	L004b80
	addq.w	#2,($0024,a0)
	bra	L004b80
L004ae8:
	move.l	($000c,a0),d5
	addi.l	#$00080000,d5
	move.l	($0010,a0),d6
	addi.l	#$00a40000,d6
	move.w	#$00c0,d7
	swap.w	d7
	subi.w	#$00f8,d0
	move.w	d0,d4
	ext.l	d4
	swap.w	d4
	sub.l	d4,d5
	neg.w	d0
	addq.w	#8,d0
	add.w	d0,d0
	move.w	d0,d7
	move.w	#$0000,d4
	bsr	L004c94
	move.w	#$0000,d4
	bsr	L004c94
	move.w	#$0004,d4
	bsr	L004c94
	move.w	#$0008,d4
	bsr	L004c94
	move.w	#$000c,d4
	bsr	L004c94
	move.w	#$0010,d4
	bsr	L004c94
	tst.w	(L047fac)
	bne	L004b80
	bsr	L004ef2
	bsr	L004ef2
	bra	L004b80
L004b58:
	movea.l	#L047ae0,a1
L004b5e:
	cmpi.w	#$0082,(a1)
	beq	L004b6a
	lea.l	($0030,a1),a1
	bra	L004b5e
L004b6a:
	tst.w	($0024,a1)
	bne	L004b80
	move.w	#$0200,($0022,a1)
	move.w	#$0050,($0024,a1)
	moveq.l	#$43,d0
	trap	#0
L004b80:
	move.l	($000c,a0),d5
	addi.l	#$00640000,d5
	move.l	($0010,a0),d6
	addi.l	#$00480000,d6
	move.w	#$006c,d7
	swap.w	d7
	move.w	($0024,a0),d7
	asr.w	#1,d7
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	bsr	L004c42
	tst.w	(L047fac)
	bne	L004c40
	move.w	($0020,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0070,d0
	bcs	L004bd6
	moveq.l	#$00,d0
L004bd6:
	move.w	d0,($0020,a0)
	move.w	d0,d1
	lsr.w	#3,d1
	move.w	d1,(L047fd0)
	asl.w	#1,d0
	andi.w	#$00f0,d0
L004bea:
	lea.l	(L004f52),a1
	move.w	($04,a1,d0.w),(L0470ee)
	move.w	($06,a1,d0.w),(L0470f2)
	move.w	($08,a1,d0.w),(L0470f6)
	move.w	($0a,a1,d0.w),(L0470fa)
	move.w	($0c,a1,d0.w),(L0470fe)
	move.w	($0e,a1,d0.w),(L047102)
	move.w	#$0001,(L047f70)
	move.w	(L047fcc),d0
	sub.w	d0,(L0470f2)
	sub.w	d0,(L0470fa)
	sub.w	d0,(L047102)
L004c40:
	rts

L004c42:
	move.w	d7,d0
	swap.w	d7
	add.w	d0,d7
	move.w	d7,d0
	swap.w	d7
	andi.w	#$00ff,d0
	move.w	d0,-(a7)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	add.l	d0,d5
	add.l	d1,d6
	asl.l	#1,d0
	asl.l	#1,d1
	add.l	d0,d5
	add.l	d1,d6
	swap.w	d5
	swap.w	d6
	move.w	d5,d1
	move.w	d6,d2
	swap.w	d5
	swap.w	d6
	move.w	(a7)+,d0
	andi.w	#$007f,d0
	lsr.w	#3,d0
	beq	L004c86
	subi.w	#$0001.w,d0
L004c86:
	lea.l	(L072104),a5
	jsr	(L025426)
	rts

L004c94:
	move.w	d7,d0
	swap.w	d7
	add.w	d0,d7
	move.w	d7,d0
	swap.w	d7
	andi.w	#$00ff,d0
	move.w	d0,-(a7)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	add.l	d0,d5
	add.l	d1,d6
	asl.l	#1,d0
	asl.l	#1,d1
	add.l	d0,d5
	add.l	d1,d6
	swap.w	d5
	swap.w	d6
	move.w	d5,d1
	move.w	d6,d2
	swap.w	d5
	swap.w	d6
	move.w	(a7)+,d0
	tst.b	d0
	bmi	L004cd4
	move.w	#$003f,d0
L004cd4:
	lsr.w	#4,d0
	andi.w	#$0003,d0
	add.w	d4,d0
	lea.l	(L07217c),a5
	jsr	(L025426)
	rts

L004cea:
	movea.l	($002c,a0),a1
	cmpi.w	#$0081,($0000.w,a1)
	beq	L004cfc
	jmp	(L029cca)

L004cfc:
	cmpi.w	#$0001,($001c,a1)
	beq	L004d0a
	jmp	(L029cca)

L004d0a:
	move.w	($0004,a1),d0
	addi.w	#$0002.w,d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d0
	addi.w	#$000e,d0
	move.w	d0,($0008,a0)
	cmpi.w	#$0001,($001c,a0)
	beq	L004d62
	move.w	($001e,a0),d0
	tst.w	(L047fac)
	bne	L004d3c
	addq.w	#1,d0
	move.w	d0,($001e,a0)
L004d3c:
	move.w	d0,d1
	lsr.w	#4,d1
	move.w	d1,($0018,a1)
	cmpi.w	#$001f,d0
	bcs	L004dd4
	moveq.l	#$22,d0
	trap	#0
	move.w	#$0001,($001c,a0)
	move.w	#$0002,($0018,a1)
	clr.w	($001e,a0)
	bra	L004dd4
L004d62:
	move.w	($001e,a0),d0
	tst.w	(L047fac)
	bne	L004d74
	addq.w	#1,d0
	move.w	d0,($001e,a0)
L004d74:
	cmpi.w	#$0010,d0
	bcc	L004d88
	lsr.w	#3,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	bra	L004dd4
L004d88:
	cmpi.w	#$0030,d0
	bcc	L004da0
	andi.w	#$0001,d0
	addq.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	bra	L004dd4
L004da0:
	cmpi.w	#$0034,d0
	bcc	L004dba
	move.w	#$0004,($0018,a0)
	jsr	(L025416)
	move.w	#$0001,($0018,a1)
	bra	L004dd4
L004dba:
	move.w	#$0000,($0018,a1)
	jsr	(L01024e)
	andi.w	#$003f,d0
	move.w	d0,($0028,a1)
	jmp	(L029cca)

L004dd4:
	rts

L004dd6:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcc	L004de8
	jsr	(L0298e2)
	bcs	L004e64
L004de8:
	move.w	#$0083,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#6,d0
	move.l	d0,d1
	addi.l	#$00b00000,d0
	move.l	d0,($0004,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#5,d0
	add.l	d0,($0004,a0)
	tst.l	d1
	bmi	L004e20
	neg.l	d1
L004e20:
	asr.l	#8,d1
	subi.l	#$00006000,d1
	jsr	(L01024e)
	andi.w	#$3fff,d0
	ext.l	d0
	sub.l	d0,d1
	asl.l	#4,d1
	move.l	d1,($0010,a0)
	move.l	#$00ff0000,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	move.l	d0,($000c,a0)
	move.w	#$0002,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L0722ac,($0014,a0)
L004e64:
	movea.l	a1,a0
	rts

L004e68:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcc	L004e7a
	jsr	(L0298e2)
	bcs	L004eee
L004e7a:
	move.w	#$0083,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#6,d0
	addi.l	#$00b00000,d0
	move.l	d0,($0004,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#5,d0
	add.l	d0,($0004,a0)
	move.l	#$00ff0000,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.l	#$0000ffff,d0
	subi.l	#$0001c000,d0
	move.l	d0,($0010,a0)
	move.w	#$0003,($001c,a0)
	move.w	#$0000,($001e,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L0722ac,($0014,a0)
L004eee:
	movea.l	a1,a0
	rts

L004ef2:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L004f4e
	move.w	#$0083,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	#$0068,($0004,a0)
	move.w	#$00e0,($0008,a0)
	jsr	(L01024e)
	andi.l	#$0000ffff,d0
	asl.l	#1,d0
	move.l	d0,($000c,a0)
	move.l	#$ffff0000,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,($0010,a0)
	move.w	#$0002,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L0722ac,($0014,a0)
L004f4e:
	movea.l	a1,a0
	rts

L004f52:
	.dc.b	$18,$63,$1f,$63,$01,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$63,$1f,$63,$00,$00,$01,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$63,$1f,$63,$01,$00,$01,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$67,$1f,$63,$00,$00,$00,$00
	.dc.b	$01,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$27,$1f,$63,$00,$00,$00,$00
	.dc.b	$00,$00,$01,$00,$00,$00,$00,$00
	.dc.b	$18,$27,$1f,$63,$00,$00,$00,$00
	.dc.b	$01,$00,$01,$00,$00,$00,$00,$00
	.dc.b	$18,$1b,$1f,$63,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$01,$00,$00,$00
	.dc.b	$18,$1b,$1f,$63,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$01,$00
	.dc.b	$18,$1b,$1f,$63,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$01,$00,$01,$00
	.dc.b	$18,$27,$1f,$63,$00,$00,$00,$00
	.dc.b	$01,$00,$01,$00,$00,$00,$00,$00
	.dc.b	$18,$27,$1f,$63,$00,$00,$00,$00
	.dc.b	$00,$00,$01,$00,$00,$00,$00,$00
	.dc.b	$18,$67,$1f,$63,$00,$00,$00,$00
	.dc.b	$01,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$63,$1f,$63,$01,$00,$01,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$63,$1f,$63,$00,$00,$01,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$1b,$1f,$63,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$01,$00
	.dc.b	$18,$1b,$1f,$61,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$18,$e4,$1f,$61,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00

L005062:
	jsr	(L0039f0)
	lea.l	(L047ab0),a0
	move.w	#$0056,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$001f,($001a,a0)
	clr.w	($001c,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	lea.l	(L0474e0),a0
	move.w	#$0056,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.w	#$0009,($001c,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	(L047fc2)
	clr.w	(L047fc4)
	clr.w	(L047fc6)
	clr.w	(L047fc8)
	lea.l	(L05bbdc),a1
	moveq.l	#$00,d0
	move.w	#$0fff,d1
L0050ee:
	move.l	d0,(a1)+
	dbra	d1,L0050ee
	clr.l	(L047fd0)
	clr.l	(L047fd4)
	rts

L005102:
	move.w	($001c,a0),d0
	bmi	L00513a
	beq	L005118
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a38)
	movem.l	(a7)+,d0-d7/a0-a6
L005118:
	add.w	d0,d0
	move.w	(L005122,pc,d0.w),d0
	jmp	(L005122,pc,d0.w)

L005122:
	.dc.w	L005158-L005122
	.dc.w	L00521a-L005122
	.dc.w	L005248-L005122
	.dc.w	L005280-L005122
	.dc.w	L005400-L005122
	.dc.w	L00546c-L005122
	.dc.w	L005536-L005122
	.dc.w	L0055ee-L005122
	.dc.w	L0056a2-L005122
	.dc.w	L00604e-L005122
	.dc.w	L0062fc-L005122
	.dc.w	L0059a6-L005122

L00513a:
	andi.w	#$7fff,d0
	add.w	d0,d0
	move.w	(L005148,pc,d0.w),d0
	jmp	(L005148,pc,d0.w)

L005148:
	.dc.w	L005ace-L005148
	.dc.w	L005b8a-L005148
	.dc.w	L00612c-L005148
	.dc.w	L00622a-L005148
	.dc.w	L0063e8-L005148
	.dc.w	L0064c6-L005148
	.dc.w	L00669a-L005148
	.dc.w	L0067d2-L005148

L005158:
	jsr	(L02993c)
	move.w	(L047f7a),d0
	cmpi.w	#$0980,d0
	bcc	L005170
	jmp	(L029cca)

L005170:
	cmpi.w	#$0a00,d0
	bne	L005218
	move.w	#$0000,(L04735a)
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a64)
	movem.l	(a7)+,d0-d7/a0-a6
	jsr	(L018c0e)
	move.b	(L0733a8),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L0733aa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$002f,d7
L0051b6:
	move.l	(a5)+,(a6)+
	dbra	d7,L0051b6
	jsr	(L018c0e)
	move.b	(L07346a),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L07346c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e820a0),a6
	move.w	#$0017,d7
L0051e4:
	move.l	(a5)+,(a6)+
	dbra	d7,L0051e4
	moveq.l	#$fe,d0
	trap	#0
	move.w	#$0090,($001e,a0)
	move.w	#$000f,(L04731e)
	move.w	#$0002,(L0471ac)
	move.w	#$0040,d0
	bsr	L00640c
	move.w	#$00c0,d0
	bsr	L00640c
	addq.w	#1,($001c,a0)
L005218:
	rts

L00521a:
	subq.w	#1,($001e,a0)
	bne	L005246
	tst.w	(L04731e)
	bne	L005246
	moveq.l	#$b6,d0
	trap	#0
L00522c:
	move.w	#$0002,($001c,a0)
	move.w	#$0010,($001e,a0)
	clr.w	(L047322)
	move.w	#$000c,(L04731e)
L005246:
	rts

L005248:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L00526a
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	move.b	#$03,($0002,a0)
	clr.b	($001a,a0)
L00526a:
	lsr.w	#2,d0
	move.b	d0,($0019,a0)
	move.l	#L0757ec,($0014,a0)
	jsr	(L025416)
	rts

L005280:
	bsr	L0053cc
	jsr	(L029a3e)
	bcc	L00529a
	beq	L005382
	bsr	L0053e2
	move.w	#$0080,($001e,a0)
L00529a:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0020,d0
	beq	L005306
	cmpi.w	#$0080,d0
	bcs	L0052c2
L0052b0:
	move.w	#$0004,($001c,a0)
	move.w	#$0000,($001e,a0)
	move.b	#$00,($0002,a0)
L0052c2:
	bsr	L0053a0
	move.w	d0,d7
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075404),a5
	jsr	(L025426)
	move.w	d7,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075424),a5
	jsr	(L025426)
	move.w	d7,($0018,a0)
	move.l	#L0753e4,($0014,a0)
	jsr	(L025416)
	rts

L005306:
	tst.w	(L047fc8)
	bne	L005316
	cmpi.b	#$08,($001b,a0)
	bcs	L005358
L005316:
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L005358
	subq.w	#1,d0
	beq	L005348
	subq.w	#1,d0
	beq	L005338
	move.w	#$0006,($001c,a0)
	move.w	#$0000,($001e,a0)
	bra	L0052c2
L005338:
	move.w	#$0005,($001c,a0)
	move.w	#$0000,($001e,a0)
	bra	L0052c2
L005348:
	move.w	#$0007,($001c,a0)
	move.w	#$0000,($001e,a0)
	bra	L0052c2
L005358:
	cmpi.b	#$10,($001b,a0)
	bcc	L005306
	move.w	#$0008,($001c,a0)
	move.w	#$0000,($001e,a0)
	clr.w	($0002,a0)
	ori.w	#$4000,($0018,a0)
	move.w	#$0001,(L047fc8)
	bra	L0052c2
L005382:
	moveq.l	#$f0,d0
	trap	#0
	clr.w	(L047fbe)
	clr.w	($0002,a0)
	move.w	#$000b,($001c,a0)
	move.w	#$0000,($001e,a0)
	bra	L0052c2
L0053a0:
	move.b	($0020,a0),d0
	addq.b	#1,d0
	cmpi.b	#$06,d0
	bcs	L0053be
	move.b	($0021,a0),d0
	addq.b	#1,d0
	andi.b	#$03,d0
	move.b	d0,($0021,a0)
	move.b	#$00,d0
L0053be:
	move.b	d0,($0020,a0)
	move.w	($0018,a0),d0
	move.b	($0021,a0),d0
	rts

L0053cc:
	move.b	($001a,a0),d0
	andi.b	#$0f,d0
	cmpi.b	#$01,d0
	bne	L0053e0
	bclr.b	#$00,($001a,a0)
L0053e0:
	rts

L0053e2:
	moveq.l	#$48,d0
	trap	#0
	move.w	($001a,a0),d7
	andi.w	#$00ff,d7
	lsr.w	#1,d7
	addq.w	#1,d7
	move.w	d7,(L047fbe)
	clr.w	(L047fc6)
	rts

L005400:
	bsr	L005a5c
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0010,d0
	bcs	L00526a
	jsr	(L01024e)
	andi.w	#$001f,d0
	addi.w	#$0050,d0
	eori.w	#$0001,(L047fc6)
	bne	L005432
	addi.w	#$0040,d0
L005432:
	move.w	d0,($0008,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$0020,d0
	tst.b	(L0473f5)
	bmi	L005450
	addi.w	#$0080,d0
L005450:
	move.w	d0,($0004,a0)
	move.w	#$0000,($0018,a0)
	cmp.w	(L0473f4),d0
	bcc	L005468
	move.w	#$8000,($0018,a0)
L005468:
	bra	L00522c
L00546c:
	bsr	L0053cc
	jsr	(L029a3e)
	bcc	L005486
	beq	L005382
	bsr	L0053e2
	move.w	#$0078,($001e,a0)
L005486:
	move.w	($001e,a0),d1
	addq.w	#1,d1
	move.w	d1,($001e,a0)
	cmpi.w	#$0020,d1
	beq	L0054b0
	bcs	L0054ec
	cmpi.w	#$0060,d1
	bcs	L0054e6
	cmpi.w	#$0068,d1
	bcs	L0054da
	cmpi.w	#$0078,d1
	bcs	L0052c2
	bra	L0052b0
L0054b0:
	move.w	#$0000,d0
	move.w	#$0000,d1
	bsr	L005b36
	move.w	#$ffe8,d0
	move.w	#$0010,d1
	bsr	L005b36
	move.w	#$0018,d0
	move.w	#$0020,d1
	bsr	L005b36
	move.w	#$0020,d1
	bra	L0054ee
L0054da:
	subi.w	#$0060,d1
	lsr.w	#1,d1
	neg.w	d1
	addq.w	#3,d1
	bra	L0054ee
L0054e6:
	move.w	#$0003,d1
	bra	L0054ee
L0054ec:
	lsr.w	#3,d1
L0054ee:
	move.w	($0018,a0),d0
	move.b	d1,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075444),a5
	jsr	(L025426)
	bsr	L0053a0
	move.w	d0,d7
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075424),a5
	jsr	(L025426)
	move.w	d7,($0018,a0)
	move.l	#L0753e4,($0014,a0)
	jsr	(L025416)
	rts

L005536:
	bsr	L0053cc
	jsr	(L029a3e)
	bcc	L005550
	beq	L005382
	bsr	L0053e2
	move.w	#$0068,($001e,a0)
L005550:
	move.w	($001e,a0),d1
	addq.w	#1,d1
	move.w	d1,($001e,a0)
	cmpi.w	#$0020,d1
	bcs	L0055a4
	cmpi.w	#$0040,d1
	bcs	L005590
	cmpi.w	#$0050,d1
	bcs	L005584
	cmpi.w	#$0060,d1
	bcs	L00557e
	cmpi.w	#$0068,d1
	bcs	L0052c2
	bra	L0052b0
L00557e:
	move.w	#$0003,d1
	bra	L0055a6
L005584:
	subi.w	#$0040,d1
	lsr.w	#3,d1
	addi.w	#$0002.w,d1
	bra	L0055a6
L005590:
	subi.w	#$0020,d1
	bne	L00559e
	bsr	L005cb4
	moveq.l	#$0d,d0
	trap	#0
L00559e:
	move.w	#$0001,d1
	bra	L0055a6
L0055a4:
	lsr.w	#4,d1
L0055a6:
	move.w	($0018,a0),d0
	move.b	d1,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075464),a5
	jsr	(L025426)
	bsr	L0053a0
	move.w	d0,d7
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075424),a5
	jsr	(L025426)
	move.w	d7,($0018,a0)
	move.l	#L0753e4,($0014,a0)
	jsr	(L025416)
	rts

L0055ee:
	bsr	L0053cc
	jsr	(L029a3e)
	bcc	L005608
	beq	L005382
	bsr	L0053e2
	move.w	#$00a0,($001e,a0)
L005608:
	move.w	($001e,a0),d1
	addq.w	#1,d1
	move.w	d1,($001e,a0)
	cmpi.w	#$0020,d1
	bcs	L005658
	cmpi.w	#$0060,d1
	bcs	L005648
	cmpi.w	#$0068,d1
	bcs	L00563c
	cmpi.w	#$0090,d1
	bcs	L005636
	cmpi.w	#$00a0,d1
	bcs	L0052c2
	bra	L0052b0
L005636:
	move.w	#$0003,d1
	bra	L00565a
L00563c:
	subi.w	#$0060,d1
	lsr.w	#2,d1
	addi.w	#$0002.w,d1
	bra	L00565a
L005648:
	subi.w	#$0020,d1
	bne	L005652
	bsr	L0060d0
L005652:
	move.w	#$0001,d1
	bra	L00565a
L005658:
	lsr.w	#4,d1
L00565a:
	move.w	($0018,a0),d0
	move.b	d1,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075484),a5
	jsr	(L025426)
	bsr	L0053a0
	move.w	d0,d7
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075404),a5
	jsr	(L025426)
	move.w	d7,($0018,a0)
	move.l	#L0753e4,($0014,a0)
	jsr	(L025416)
	rts

L0056a2:
	move.w	($001e,a0),d1
	addq.w	#1,d1
	move.w	d1,($001e,a0)
	cmpi.w	#$0020,d1
	bcs	L005972
	cmpi.w	#$0050,d1
	bcs	L005944
	cmpi.w	#$0060,d1
	bcs	L005902
	cmpi.w	#$00d0,d1
	bcs	L0058a4
	cmpi.w	#$00f0,d1
	beq	L0057c0
	bcs	L005836
	cmpi.w	#$0140,d1
	bcs	L0057c4
	cmpi.w	#$0150,d1
	bcs	L00596c
	cmpi.w	#$0190,d1
	bcs	L005732
	cmpi.w	#$01a0,d1
	bcs	L0052c2
	move.w	(L073146),($00e82020)
	move.w	#$0005,(L047124)
	movea.l	a0,a2
	lea.l	($00c11c80),a0
	lea.l	($00c12080),a1
	move.w	#$007f,d0
L00571a:
	jsr	(L003850)
	lea.l	($0300,a0),a0
	lea.l	($0300,a1),a1
	dbra	d0,L00571a
	movea.l	a2,a0
	bra	L0052b0
L005732:
	subi.w	#$0150,d1
	bne	L005740
	move.w	#$000d,(L047124)
L005740:
	lea.l	(L0471ae),a1
	move.w	#$003f,d7
	asl.w	#2,d1
	move.w	(L0472f6),d6
	lsl.w	#2,d6
	andi.w	#$00ff,d6
	lea.l	(L010458),a2
L00575e:
	addq.b	#8,d6
	move.w	d6,d0
	add.w	d0,d0
	move.b	(a2,d0.w),d0
	ext.w	d0
	asr.w	#1,d0
	move.w	d1,d2
	add.w	d0,d2
	move.w	d2,(a1)+
	neg.w	d2
	move.w	d2,(a1)+
	dbra	d7,L00575e
	tst.b	(L047fc5)
	beq	L005792
	bmi	L00578c
	subq.b	#1,(L047fc5)
	bra	L005792
L00578c:
	addq.b	#1,(L047fc5)
L005792:
	tst.w	(L047322)
	bne	L00596c
	move.w	#$2000,(L047326)
	move.w	(L047fc4),d0
	andi.w	#$00ff,d0
	move.w	d0,(L047324)
	move.w	#$0001,(L047322)
	bra	L00596c
L0057c0:
	moveq.l	#$0e,d0
	trap	#0
L0057c4:
	bsr	L00662c
	move.w	(L0472f6),d0
	andi.w	#$0003,d0
	bne	L005808
	move.w	#$0080,d0
	move.w	#$0080,d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	add.b	#$80,d0
	cmp.b	(L047fc5),d0
	bmi	L005802
	addq.b	#1,(L047fc5)
	bra	L005808
L005802:
	subq.b	#1,(L047fc5)
L005808:
	tst.w	(L047322)
	bne	L00596c
	move.w	#$1fff,(L047326)
	move.w	(L047fc4),d0
	andi.w	#$00ff,d0
	move.w	d0,(L047324)
	move.w	#$0001,(L047322)
	bra	L00596c
L005836:
	move.w	(L0472f6),d0
	andi.w	#$0003,d0
	bne	L005876
	move.w	#$0080,d0
	move.w	#$0080,d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	add.b	#$80,d0
	cmp.b	(L047fc5),d0
	bmi	L005870
	addq.b	#1,(L047fc5)
	bra	L005876
L005870:
	subq.b	#1,(L047fc5)
L005876:
	tst.w	(L047322)
	bne	L00596c
	move.w	#$2000,(L047326)
	move.w	(L047fc4),d0
	andi.w	#$00ff,d0
	move.w	d0,(L047324)
	move.w	#$0001,(L047322)
	bra	L00596c
L0058a4:
	tst.w	(L047322)
	bne	L00596c
	subi.w	#$0060,d1
	move.w	d1,d0
	cmpi.w	#$0060,d1
	bcs	L0058be
	move.w	#$0060,d1
L0058be:
	neg.w	d1
	add.w	#$007f,d1
	asl.l	#8,d1
	move.w	d1,(L047326)
	move.w	#$0000,d1
	subi.w	#$0050,d0
	bcs	L0058ee
	move.w	(L047fc4),d1
	cmpi.w	#$0010,d0
	bcc	L0058ee
	tst.b	(L047fc5)
	bpl	L0058ec
	neg.b	d0
L0058ec:
	move.w	d0,d1
L0058ee:
	move.w	d1,(L047324)
	move.w	#$0001,(L047322)
	move.w	#$0003,d1
	bra	L005974
L005902:
	cmpi.w	#$005f,d1
	bne	L00590c
	moveq.l	#$0f,d0
	trap	#0
L00590c:
	subi.w	#$0050,d1
	move.w	d1,d0
	add.w	d0,d0
	move.w	d0,d3
	neg.w	d3
	addi.w	#$001e,d3
	neg.w	d1
	addi.w	#$001f,d1
	move.w	d1,d2
	asl.w	#8,d1
	asl.w	#3,d1
	asl.w	#6,d2
	asl.w	#1,d3
	add.w	d3,d1
	add.w	d2,d1
	neg.w	d0
	add.w	#$001f,d0
	jsr	(L018b34)
	move.w	d2,($00e82020)
	bra	L00596c
L005944:
	cmpi.w	#$0020,d1
	bne	L005964
	move.w	#$0010,d1
	jsr	(L01024e)
	ror.w	#1,d0
	bcs	L00595a
	neg.b	d1
L00595a:
	move.w	d1,(L047fc4)
	bsr	L0067f6
L005964:
	bsr	L006824
	bsr	L006824
L00596c:
	move.w	#$0003,d1
	bra	L005974
L005972:
	lsr.w	#3,d1
L005974:
	move.w	($0018,a0),d0
	move.b	d1,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L0754a4),a5
	jsr	(L025426)
	bsr	L0053a0
	move.w	d0,($0018,a0)
	move.l	#L0753e4,($0014,a0)
	jsr	(L025416)
	rts

L0059a6:
	move.w	($001e,a0),d1
	addq.w	#1,d1
	move.w	d1,($001e,a0)
	cmpi.w	#$0080,d1
	bcs	L0059fa
	lea.l	(L0474e0),a1
	move.w	#$001f,d7
L0059c0:
	cmpi.w	#$0056,($0000.w,a1)
	bne	L0059e0
	cmpi.w	#$8005,($001c,a1)
	bne	L0059e0
	cmpi.w	#$0002,($0020,a1)
	beq	L0059e0
	subi.w	#$0010,($001e,a0)
	bra	L0059fa
L0059e0:
	lea.l	($0030,a1),a1
	dbra	d7,L0059c0
	move.l	#$00020000,d0
	jsr	(L029a68)
	jmp	(L003fb4)

L0059fa:
	jsr	(L01024e)
	andi.w	#$0001,d0
	beq	L005a0a
	bsr	L005a5c
	bra	L005a0e
L005a0a:
	bsr	L006772
L005a0e:
	move.w	($0018,a0),d0
	move.b	#$00,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075424),a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	move.b	#$00,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L075404),a5
	jsr	(L025426)
	move.b	#$00,($0019,a0)
	move.l	#L0753e4,($0014,a0)
	jsr	(L025416)
	rts

L005a5c:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L005aca
	move.w	#$0056,($0000.w,a0)
	move.w	#$8000,($001c,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	add.w	($0008,a1),d0
	move.w	d0,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	move.l	d0,($000c,a0)
	move.w	#$ffff,($0010,a0)
	jsr	(L01024e)
	move.w	d0,($0012,a0)
	move.w	#$0040,($001e,a0)
	move.l	#L07580c,($0014,a0)
	move.w	#$0000,($0018,a0)
L005aca:
	movea.l	a1,a0
	rts

L005ace:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L005ae2
	jmp	(L029cca)

L005ae2:
	addi.l	#$00000800,($0010,a0)
	move.l	($000c,a0),d0
	bmi	L005afc
	sub.l	#$00000200,d0
	move.l	d0,($000c,a0)
	bra	L005b06
L005afc:
	add.l	#$00000200,d0
	move.l	d0,($000c,a0)
L005b06:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L005b18
	jmp	(L029cca)

L005b18:
	cmpi.w	#$0020,d0
	bne	L005b24
	move.w	#$4000,($0018,a0)
L005b24:
	lsr.w	#1,d0
	andi.w	#$0003,d0
	move.b	d0,($0019,a0)
	jsr	(L025416)
	rts

L005b36:
	movea.l	a0,a1
	jsr	(L0298e2)
	bcs	L005b86
	move.w	#$0056,($0000.w,a0)
	move.w	#$8001,($001c,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0001,($001a,a0)
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	add.w	($0008,a1),d1
	move.w	d1,($0008,a0)
	clr.l	($000c,a0)
	move.l	#$fffc0000,($0010,a0)
	clr.w	($001e,a0)
	move.l	#L0754c4,($0014,a0)
	move.w	#$0000,($0018,a0)
L005b86:
	movea.l	a1,a0
	rts

L005b8a:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L005b9e
	jmp	(L029cca)

L005b9e:
	jsr	(L029a3e)
	bcc	L005bb0
	clr.w	($0002,a0)
	jmp	(L029b82)

L005bb0:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0018,d0
	bcs	L005ca4
	cmpi.w	#$0020,d0
	bcs	L005c92
	cmpi.w	#$0030,d0
	bcs	L005c6a
	cmpi.w	#$0040,d0
	bcs	L005c08
	bne	L005c00
	move.w	($0022,a0),d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#3,d0
	move.l	d0,d2
	add.l	d0,d0
	add.l	d2,d0
	asl.l	#3,d1
	move.l	d1,d2
	add.l	d1,d1
	add.l	d2,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
L005c00:
	jsr	(L025416)
	rts

L005c08:
	subi.w	#$0030,d0
	bne	L005c4a
	jsr	(L01026c)
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	jsr	(L01024e)
	cmpi.w	#$0003,(L047354)
	bcc	L005c36
	andi.w	#$000f,d0
	subi.w	#$0008.w,d0
	bra	L005c3e
L005c36:
	andi.w	#$001f,d0
	subi.w	#$0010,d0
L005c3e:
	add.b	d0,($0023,a0)
	move.w	#$0000,d0
	move.w	d0,($0020,a0)
L005c4a:
	move.w	($0020,a0),d0
	cmp.w	($0022,a0),d0
	bcc	L005c5c
	addi.w	#$0010,d0
	move.w	d0,($0020,a0)
L005c5c:
	lsr.b	#4,d0
	move.b	d0,($0019,a0)
	jsr	(L025416)
	rts

L005c6a:
	subi.w	#$0020,d0
	bne	L005c86
	move.l	#L0754e4,($0014,a0)
	move.w	#$0300,($0002,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
L005c86:
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L005c92:
	subi.w	#$0018,d0
	lsr.w	#1,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L005ca4:
	addi.l	#$00002000,($0010,a0)
	jsr	(L025416)
	rts

L005cb4:
	movea.l	a0,a1
	jsr	(L01026c)
	move.w	d0,d7
	jsr	(L0298a6)
	bcs	L005cf4
	move.w	#$0010,d1
	bsr	L005cf8
	move.w	d7,d0
	subi.b	#$30,d0
	jsr	(L0298a6)
	bcs	L005cf4
	move.w	#$0080,d1
	bsr	L005cf8
	move.w	d7,d0
	addi.b	#$30,d0
	jsr	(L0298a6)
	bcs	L005cf4
	move.w	#$0100,d1
	bsr	L005cf8
L005cf4:
	movea.l	a1,a0
	rts

L005cf8:
	move.w	#$0057,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	tst.w	($0018,a1)
	bmi	L005d24
	subi.w	#$0008.w,($0004,a0)
	bra	L005d2a
L005d24:
	addi.w	#$0008.w,($0004,a0)
L005d2a:
	move.b	d0,($000c,a0)
	move.w	d1,($0010,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07559c,($0014,a0)
	rts

L005d4a:
	.dc.b	$21,$68,$00,$28,$00,$2c,$21,$68
	.dc.b	$00,$24,$00,$28,$21,$68,$00,$20
	.dc.b	$00,$24,$31,$68,$00,$04,$00,$20
	.dc.b	$11,$68
L005d64:
	.dc.b	$00,$09,$00,$22,$11,$68,$00,$0c
	.dc.b	$00,$23,$4a,$68,$00,$1c,$66,$56
	.dc.b	$30,$28,$00,$1e,$52,$40,$31,$40
	.dc.b	$00,$1e,$0c,$40,$00,$20,$64,$3a
	.dc.b	$e6,$48,$32,$28,$00,$04,$34,$28
	.dc.b	$00,$08,$4b,$f9
	.dc.l	L07557c
	.dc.b	$4e,$b9
	.dc.l	L025426
	.dc.b	$70,$00,$30,$28,$00,$1e,$e2,$48
	.dc.b	$80,$fc,$00,$03,$48,$40,$32,$28
	.dc.b	$00,$04,$34,$28,$00,$08,$4b,$f9
	.dc.l	L075564
	.dc.b	$4e,$b9
	.dc.l	L025426
	.dc.b	$4e,$75

L005dbe:
	move.b	#$01,($0002,a0)
	move.w	#$0001,($001c,a0)
L005dca:
	jsr	(L02997c)
	tst.b	($001a,a0)
	beq	L005de8
	move.w	#$0000,($001a,a0)
	move.w	#$0000,($0002,a0)
	addi.b	#$80,($000c,a0)
L005de8:
	move.w	($0008,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$ff00,d0
	bcc	L005dfc
	jmp	(L029cca)

L005dfc:
	move.w	($0004,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$ff00,d0
	bcc	L005e10
	jmp	(L029cca)

L005e10:
	move.b	($000c,a0),d0
	subi.b	#$08.b,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.b	d0,($0019,a0)
	jsr	(L025416)
	move.b	($0023,a0),d0
	subi.b	#$08.b,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0020,a0),d1
	move.b	($0022,a0),d2
	andi.w	#$00ff,d2
	lea.l	(L07561c),a5
	jsr	(L025426)
	move.b	($0027,a0),d0
	subi.b	#$08.b,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0024,a0),d1
	move.b	($0026,a0),d2
	andi.w	#$00ff,d2
	lea.l	(L07561c),a5
	jsr	(L025426)
	move.b	($002b,a0),d0
	subi.b	#$08.b,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0028,a0),d1
	move.b	($002a,a0),d2
	andi.w	#$00ff,d2
	lea.l	(L07561c),a5
	jsr	(L025426)
	move.b	($002f,a0),d0
	subi.b	#$08.b,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($002c,a0),d1
	move.b	($002e,a0),d2
	andi.w	#$00ff,d2
	lea.l	(L07569c),a5
	jsr	(L025426)
	addi.w	#$0020,($0010,a0)
	move.w	#$0200,d5
	jsr	(L0102fe)
	move.w	#$0003,d7
	move.w	(L0470ee),d3
	andi.w	#$01ff,d3
	add.w	($0004,a0),d3
	move.w	(L0470f2),d4
	andi.w	#$01ff,d4
	add.w	($0008,a0),d4
L005ef0:
	jsr	(L01024e)
	andi.w	#$000f,d0
	subi.w	#$0008.w,d0
	add.w	d3,d0
	move.w	d0,d1
	jsr	(L01024e)
	andi.w	#$000f,d0
	subi.w	#$0008.w,d0
	add.w	d4,d0
	move.w	d0,d2
	jsr	(L006018)
	dbra	d7,L005ef0
	cmpi.b	#$07,(L04740d)
	bcc	L005f88
	tst.b	($001b,a0)
	beq	L005f88
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L005f3c
	neg.w	d0
L005f3c:
	cmpi.w	#$0010,d0
	bcc	L005f88
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	bpl	L005f50
	neg.w	d0
L005f50:
	cmpi.w	#$0010,d0
	bcc	L005f88
	clr.b	($001b,a0)
	bsr	L005fa0
	tst.w	(L047f66)
	beq	L005f8a
	move.w	#$0002,d7
	add.w	(L047354),d7
L005f6e:
	subq.w	#1,(L047f66)
	bsr	L00627a
	tst.w	(L047f66)
	dbeq	d7,L005f6e
	jsr	(L0135da)
L005f88:
	rts

L005f8a:
	move.b	(L04741d),d0
	beq	L005f9e
	subq.b	#1,d0
	move.b	d0,(L04741d)
	bsr	L006298
L005f9e:
	rts

L005fa0:
	lea.l	(L0473f0),a1
	move.w	($0004,a0),d0
	cmp.w	($0004,a1),d0
	bcc	L005fbe
	move.w	#$0000,($0018,a1)
	move.w	#$0108,($001e,a1)
	bra	L005fca
L005fbe:
	move.w	#$8000,($0018,a1)
	move.w	#$0208,($001e,a1)
L005fca:
	clr.b	($001a,a0)
	move.w	#$0007,($001c,a1)
	move.l	#L06c56a,($0014,a1)
	clr.w	($0020,a1)
	move.w	#$0000,($0030,a1)
	move.w	#$0000,($0032,a1)
	move.b	(L06ea6a),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L0734ce),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L00600e:
	move.l	(a5)+,d0
	move.l	d0,(a6)+
	dbra	d7,L00600e
	rts

L006018:
	move.w	(L047fc2),d0
	addq.w	#4,d0
	andi.w	#$3fff,d0
	move.w	d0,(L047fc2)
	lea.l	(L05bbdc),a6
	move.b	#$10,(a6,d0.w)
	move.b	d1,($01,a6,d0.w)
	move.b	d2,($02,a6,d0.w)
	move.w	d0,d1
	lsr.w	#2,d1
	andi.w	#$0003,d1
	addq.w	#1,d1
	move.b	d1,($03,a6,d0.w)
	rts

L00604e:
	move.l	a0,-(a7)
	bsr	L006056
	movea.l	(a7)+,a0
	rts

L006056:
	move.w	(L0472f6),d0
	andi.w	#$0001,d0
	add.w	d0,d0
	add.w	d0,d0
	add.w	(L047fc2),d0
	lea.l	(L05bbdc),a5
	lea.l	($00c00001),a6
	move.w	#$3fff,d5
L00607a:
	subq.w	#8,d0
	and.w	d5,d0
	move.b	(a5,d0.w),d3
	beq	L0060ce
	moveq.l	#$00,d2
	move.b	($01,a5,d0.w),d1
	move.w	($02,a5,d0.w),d2
	move.b	d2,d4
	add.l	d2,d2
	move.b	d1,d2
	add.l	d2,d2
	move.b	(a6,d2.l),d6
	andi.w	#$000f,d6
	bne	L0060a6
	bclr.b	#$04,(a6,d2.l)
L0060a6:
	subq.b	#1,d3
	move.b	d3,(a5,d0.w)
	beq	L00607a
	add.b	d4,($02,a5,d0.w)
	bcs	L0060c8
	moveq.l	#$00,d2
	move.w	($02,a5,d0.w),d2
	add.l	d2,d2
	move.b	d1,d2
	add.l	d2,d2
	bset.b	#$04,(a6,d2.l)
	bra	L00607a
L0060c8:
	sub.b	d4,($02,a5,d0.w)
	bra	L00607a
L0060ce:
	rts

L0060d0:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L006102
	move.w	#$0056,($0000.w,a0)
	move.w	#$8002,($001c,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.w	($0004,a1),d0
	tst.w	($0018,a1)
	bmi	L006102
	addi.w	#$0005.w,d0
	bra	L006106
L006102:
	subi.w	#$0005.w,d0
L006106:
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d0
	subi.w	#$0021,d0
	move.w	d0,($0008,a0)
	clr.w	($001e,a0)
	move.l	#L07571c,($0014,a0)
	move.w	#$0001,($0018,a0)
	movea.l	a1,a0
	rts

L00612c:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0030,d0
	bcs	L0061a4
	cmpi.w	#$0040,d0
	bcs	L0061b0
	addi.w	#$0004.w,($0008,a0)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L0256ce)
	cmpi.b	#$01,d0
	beq	L006178
	move.w	($001e,a0),d0
	andi.b	#$03,d0
	move.b	d0,($0019,a0)
	move.l	#L07572c,($0014,a0)
	jsr	(L025416)
	rts

L006178:
	cmpi.w	#$000b,(L047acc)
	beq	L006192
	bsr	L00643c
	bsr	L00643c
	bsr	L00643c
	moveq.l	#$4d,d0
	trap	#0
L006192:
	move.w	#$0010,d7
L006196:
	bsr	L006320
	dbra	d7,L006196
	jmp	(L029cca)

L0061a4:
	move.w	#$3fff,d2
	bsr	L0061c8
	move.w	#$1fff,d2
	bsr	L0061c8
L0061b0:
	move.w	(L0472f6),d0
	lsr.w	#1,d0
	andi.w	#$0001,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L0061c8:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L006226
	move.w	#$0056,($0000.w,a0)
	move.w	#$8003,($001c,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d1
	move.w	d1,($0008,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	move.w	d0,($000c,a0)
	jsr	(L01024e)
	and.w	d2,d0
	addi.w	#$4000,d0
	move.w	d0,($0010,a0)
	move.l	#L07571c,($0014,a0)
	move.w	#$0000,($0018,a0)
L006226:
	movea.l	a1,a0
	rts

L00622a:
	move.w	($0010,a0),d2
	subi.w	#$0800,d2
	bcc	L00623a
	jmp	(L029cca)

L00623a:
	move.w	d2,($0010,a0)
	move.w	($000c,a0),d0
	addi.w	#$0002.w,d0
	move.w	d0,($000c,a0)
	jsr	(L01032e)
	muls.w	d2,d0
	muls.w	d2,d1
	swap.w	d0
	swap.w	d1
	asr.w	#7,d0
	asr.w	#7,d1
	add.w	($0004,a0),d0
	add.w	($0008,a0),d1
	move.w	d1,d2
	move.w	d0,d1
	move.w	#$0000,d0
	lea.l	(L07571c),a5
	jsr	(L025426)
	rts

L00627a:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L006294
	bsr	L0062b6
	move.l	#L06e2e2,($0014,a0)
	move.w	#$000d,($0018,a0)
L006294:
	movea.l	a1,a0
	rts

L006298:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L0062b2
	bsr	L0062b6
	move.l	#L06e2e2,($0014,a0)
	move.w	#$0012,($0018,a0)
L0062b2:
	movea.l	a1,a0
	rts

L0062b6:
	move.w	#$0056,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$000a,($001c,a0)
	move.w	(L0473f4),($0004,a0)
	move.w	(L0473f8),($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.l	#$0000ffff,d0
	add.l	#$fffe0000,d0
	move.l	d0,($0010,a0)
	rts

L0062fc:
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L006310
	jmp	(L029cca)

L006310:
	addi.l	#$00001000,($0010,a0)
	jsr	(L025416)
	rts

L006320:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00637a
	move.w	#$0056,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$8004,($001c,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.l	#$0001ffff,d0
	add.l	#$fffd0000,d0
	move.l	d0,($0010,a0)
	move.l	#L07571c,($0014,a0)
	move.w	#$0000,($0018,a0)
L00637a:
	movea.l	a1,a0
	rts

L00637e:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L0063e4
	move.w	#$0056,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$8004,($001c,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	#$00e0,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asr.l	#1,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.l	#$0000ffff,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	move.l	#L07571c,($0014,a0)
	move.w	#$0000,($0018,a0)
L0063e4:
	movea.l	a1,a0
	rts

L0063e8:
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L0063fc
	jmp	(L029cca)

L0063fc:
	addi.l	#$00002000,($0010,a0)
	jsr	(L025416)
	rts

L00640c:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L006438
	move.w	d0,($0004,a0)
	move.w	#$00d8,($0008,a0)
	move.w	#$0056,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$8005,($001c,a0)
	move.w	#$0002,($0020,a0)
L006438:
	movea.l	a1,a0
	rts

L00643c:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L0064c2
L006446:
	jsr	(L01024e)
	andi.w	#$0007,d0
	beq	L006446
	lea.l	(L047fd0),a2
	tst.b	(a2,d0.w)
	bne	L0064c2
	move.b	#$01,(a2,d0.w)
	move.w	d0,($0024,a0)
	asl.w	#5,d0
	subi.w	#$0010,d0
	move.w	d0,($0004,a0)
	move.w	#$00f0,($0008,a0)
	move.w	#$0056,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$8005,($001c,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$0050,d0
	move.w	d0,($001e,a0)
	move.w	#$0000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$0003,d0
	addi.w	#$0002.w,d0
	move.w	d0,($0022,a0)
	move.l	#L07574c,($0014,a0)
	move.w	#$0000,($0018,a0)
L0064c2:
	movea.l	a1,a0
	rts

L0064c6:
	cmpi.w	#$0001,($0020,a0)
	beq	L006514
	bcc	L0065b2
	move.w	($0022,a0),d0
	move.w	($0008,a0),d1
	sub.w	d0,d1
	move.w	d1,($0008,a0)
	sub.w	d0,($001e,a0)
	bcc	L0064f8
	addq.w	#1,($0020,a0)
	clr.w	(L0470ee)
	clr.w	(L0470f6)
	bra	L006560
L0064f8:
	bsr	L00637e
	move.w	(L0472f6),d0
	andi.w	#$0001,d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	bra	L006560
L006514:
	lea.l	(L047ab0),a1
	cmpi.w	#$0056,($0000.w,a1)
	bne	L006532
	cmpi.w	#$000b,($001c,a1)
	bne	L006532
	addi.l	#$00004000,($0008,a0)
L006532:
	move.l	($0008,a0),d0
	addi.l	#$00004000,d0
	move.l	d0,($0008,a0)
	swap.w	d0
	cmpi.w	#$0108,d0
	bcc	L00654a
	bra	L006560
L00654a:
	move.w	($0024,a0),d0
	lea.l	(L047fd0),a1
	move.b	#$00,(a1,d0.w)
	jmp	(L029cca)

L006560:
	move.w	($0004,a0),d1
	move.w	#$00f0,d2
	move.w	#$0003,d0
	lea.l	(L07574c),a5
	jsr	(L025426)
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	#$0000,d0
	lea.l	(L07574c),a5
	jsr	(L025426)
	move.w	#$0002,d7
L006594:
	cmpi.w	#$0108,d2
	bcc	L0065b2
	subi.w	#$0010,d1
	eori.w	#$0003,d7
	move.w	d7,d0
	lea.l	(L07574c),a5
	jsr	(L025426)
	bra	L006594
L0065b2:
	move.w	(L0473f8),d0
	addi.w	#$0021,d0
	sub.w	($0008,a0),d0
	bcs	L00662a
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L0065d0
	neg.w	d0
L0065d0:
	cmpi.w	#$0017,d0
	beq	L0065fa
	bcc	L00662a
	cmpi.w	#$00c9,(L0473f8)
	bcc	L006622
	move.w	($0008,a0),d0
	subi.w	#$0020,d0
	move.w	d0,(L0473f8)
	bset.b	#$07,(L0473f2)
	bra	L00662a
L0065fa:
	move.w	(L0473f4),d0
	cmp.w	($0004,a0),d0
	bcs	L006614
	addq.w	#1,(L0473f4)
	clr.l	(L047fa6)
	bra	L00662a
L006614:
	subq.w	#1,(L0473f4)
	clr.l	(L047fa6)
	bra	L00662a
L006622:
	move.w	#$00c8,(L0473f8)
L00662a:
	rts

L00662c:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L006696
	move.w	#$0056,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.w	#$8006,($001c,a0)
	move.w	#$0080,($0004,a0)
	move.w	#$0080,($0008,a0)
	move.w	(L047fc4),d0
	addi.w	#$0080,d0
	andi.w	#$00ff,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0020,a0)
	move.l	#L07576c,($0014,a0)
	move.w	#$0000,($0018,a0)
L006696:
	movea.l	a1,a0
	rts

L00669a:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L0066ae
	jmp	(L029cca)

L0066ae:
	tst.w	($0020,a0)
	bne	L006738
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0010,d0
	bcs	L0066c6
	move.w	#$000c,d0
L0066c6:
	move.w	d0,($001e,a0)
	move.w	d0,($0018,a0)
	jsr	(L025416)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L0256ce)
	cmpi.b	#$01,d0
	bne	L006736
	move.w	#$0001,($0020,a0)
	jsr	(L01024e)
	andi.w	#$000c,d0
	move.w	d0,($0022,a0)
	jsr	(L01024e)
	andi.w	#$000f,d0
	add.w	#$000c,d0
	move.w	d0,($001e,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	subi.l	#$00010000,d0
	move.l	d0,($0010,a0)
	move.w	#$0000,($0002,a0)
L006736:
	rts

L006738:
	addi.l	#$00001000,($0010,a0)
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L006752
	jmp	(L029cca)

L006752:
	cmpi.w	#$0006,d0
	bcc	L00675e
	ori.w	#$4000,($0022,a0)
L00675e:
	andi.w	#$0003,d0
	or.w	($0022,a0),d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L006772:
	movea.l	a0,a1
	jsr	(L0298e2)
	bcs	L0067ce
	move.w	#$0056,($0000.w,a0)
	move.w	#$8007,($001c,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	#$0110,($0008,a0)
	clr.l	($000c,a0)
	jsr	(L01024e)
	ext.l	d0
	move.l	d0,($0010,a0)
	move.l	#L0754c4,($0014,a0)
	move.w	#$0000,($0018,a0)
L0067ce:
	movea.l	a1,a0
	rts

L0067d2:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L0067e6
	jmp	(L029cca)

L0067e6:
	subi.l	#$00003000,($0010,a0)
	jsr	(L025416)
	rts

L0067f6:
	move.w	#$0001,(L047fe0)
	move.w	#$0072,(L047fe2)
	move.w	#$0006,(L047fe4)
	move.l	#$00810000,(L047ff0)
	move.l	#$00a00000,(L047ff4)
L006822:
	rts

L006824:
	tst.w	(L047fe4)
	beq	L006822
	subq.w	#1,(L047fe0)
	bne	L00686e
	subq.w	#1,(L047fe4)
	beq	L006878
	move.w	#$000f,(L047fe0)
	move.w	(L047fe2),d0
	subi.b	#$66,d0
	move.w	d0,(L047fe2)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#2,d0
	asl.l	#2,d1
	move.l	d0,(L047fe8)
	move.l	d1,(L047fec)
L00686e:
	bsr	L0068e6
	bsr	L0068e6
	bsr	L0068e6
	bsr	L0068e6
	rts

L006878:
	move.b	#$00,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000006c4).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$0080,(L047fe0)
	move.w	#$0080,(L047fe2)
	move.w	#$0020,(L047fe4)
	move.w	#$0010,(L047fe6)
	move.w	#$0000,(L047fe8)
	move.w	#$0168,(L047fea)
	move.w	#$0100,(L047fec)
	lea.l	(L047fe0),a1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($000006ec).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	clr.w	(L047fe4)
	rts

L0068e6:
	move.l	(L047ff0),d0
	add.l	(L047fe8),d0
	move.l	d0,(L047ff0)
	move.l	(L047ff4),d1
	add.l	(L047fec),d1
	move.l	d1,(L047ff4)
	clr.w	d1
	swap.w	d0
	swap.w	d1
	asl.l	#8,d1
	add.l	d1,d1
	move.b	d0,d1
	add.l	d1,d1
	lea.l	($00c00001),a1
	move.b	#$10,(a1,d1.l)
	rts

L006926:
	move.w	d0,-(a7)
	jsr	(L0039f0)
	lea.l	(L047840),a0
	jsr	(L041a64)
	move.w	(a7)+,d0
	movea.l	#L05dbdc,a2
	move.w	#$00cf,d7
L006946:
	clr.l	(a2)+
	dbra	d7,L006946
	lea.l	(L00914c),a2
	move.l	a0,(a2)+
	move.w	#$0054,($0000.w,a0)
	andi.w	#$fcff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	subi.l	#$00e00000,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	addq.w	#1,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L07768a,($0014,a0)
	move.w	#$8000,($0018,a0)
	clr.l	($001c,a0)
	clr.l	($0020,a0)
	clr.l	($0024,a0)
	move.w	#$10ef,($0028,a0)
	move.w	#$0018,($002a,a0)
	move.w	#$e700,($002c,a0)
	clr.w	($002e,a0)
	lea.l	(L009236),a3
	move.l	($0004,a0),d0
	move.l	($0008,a0),d1
	add.l	#$001d0000,d1
	move.l	#$0000b000,d2
	moveq.l	#$40,d3
	swap.w	d3
	lea.l	(L047870),a1
	move.w	#$000b,d7
L0069da:
	move.l	a1,(a2)+
	move.w	#$000b,($0000.w,a1)
	move.w	#$0100,($0002,a1)
	move.l	d0,($0004,a1)
	move.l	d1,($0008,a1)
	clr.l	($000c,a1)
	clr.l	($0010,a1)
	move.l	#L07772a,($0014,a1)
	clr.w	($0018,a1)
	move.b	(a3)+,($0019,a1)
	move.w	#$00ff,($001a,a1)
	clr.l	($001c,a1)
	move.l	d2,($0020,a1)
	move.l	d3,($0024,a1)
	addi.w	#$0200,d2
	addi.w	#$0c00,d3
	move.w	#$10ef,($0028,a1)
	move.w	#$0018,($002a,a1)
	move.w	#$e700,($002c,a1)
	clr.w	($002e,a1)
	lea.l	($0030,a1),a1
	dbra	d7,L0069da
	clr.w	(L009146)
	move.w	#$0100,(L009142)
	move.w	#$0100,(L009144)
	clr.w	(L0091d0)
	moveq.l	#$00,d0
	lea.l	(L047fc0),a3
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	move.l	d0,(a3)+
	lea.l	(L047fc0),a3
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	move.w	#$000b,($000a,a3)
	move.w	#$0040,($000c,a3)
	move.w	#$0020,($0016,a3)
	move.l	#L006b84,($0018,a3)
	move.w	#$0004,($007e,a3)
	move.w	#$0040,($0026,a3)
	move.w	#$7fff,($0034,a3)
	move.w	#$0001,($0036,a3)
	clr.w	d0
	move.b	(L04741d),d0
	bsr	L006b02
	clr.w	d0
	bsr	L006b9c
	move.l	#L0091d4,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0010,($003e,a3)
	move.w	#$0018,($0040,a3)
	move.l	a0,-(a7)
	bsr	L008e9a
	movea.l	(a7)+,a0
	rts

L006b02:
	lsl.w	#4,d0
	lea.l	(L006b2a,pc,d0.w),a2
	move.w	(a2)+,($0080,a3)
	move.w	(a2)+,($0082,a3)
	move.w	(a2)+,($0084,a3)
	move.w	(a2)+,($0086,a3)
	move.w	(a2)+,($008a,a3)
	move.w	(a2)+,($008c,a3)
	move.w	(a2)+,($008e,a3)
	move.w	(a2),($0090,a3)
	rts

L006b2a:
	.dc.b	$ff,$c0,$00,$48,$ff,$b0,$00,$60
	.dc.b	$30,$38,$00,$20,$00,$58,$00,$90
	.dc.b	$ff,$c0,$00,$50,$ff,$b0,$00,$68
	.dc.b	$30,$38,$00,$20,$00,$58,$00,$90
	.dc.b	$ff,$c0,$00,$58,$ff,$b0,$00,$78
	.dc.b	$40,$20,$00,$20,$00,$68,$00,$90
L006b5a:
	.dc.b	$00,$20,$00,$58,$00,$50,$00,$90
	.dc.b	$00,$90,$00,$30,$00,$80,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$1c,$00,$80,$00,$20,$00,$38
	.dc.b	$00,$50,$00,$60,$00,$70,$00,$1c
	.dc.b	$00,$80
L006b84:
	.dc.b	$00,$80,$00,$c4,$00,$90,$00,$40
L006b8c:
	.dc.b	$00,$30,$00,$60,$ff,$f0,$00,$c4

L006b94:
	ori.w	#$0020,(a2)+
	ori.w	#$ffd0,d0
L006b9c:
	move.w	d0,d1
	lsl.w	#4,d0
	add.w	d1,d1
	sub.w	d1,d0
	move.w	(L047354),d1
	add.w	d1,d1
	lea.l	(L006b5a,pc,d0.w),a2
	move.w	(a2)+,d0
	beq	L006bb6
	sub.w	d1,d0
L006bb6:
	move.w	d0,($00a0,a3)
	move.w	(a2)+,d0
	beq	L006bc0
	sub.w	d1,d0
L006bc0:
	move.w	d0,($00a2,a3)
	move.w	(a2)+,d0
	beq	L006bca
	sub.w	d1,d0
L006bca:
	move.w	d0,($00a4,a3)
	move.w	(a2)+,d0
	beq	L006bd4
	sub.w	d1,d0
L006bd4:
	move.w	d0,($00a6,a3)
	move.w	(a2)+,d0
	beq	L006bde
	sub.w	d1,d0
L006bde:
	move.w	d0,($00a8,a3)
	move.w	(a2)+,d0
	beq	L006be8
	sub.w	d1,d0
L006be8:
	move.w	d0,($00aa,a3)
	move.w	(a2)+,d0
	beq	L006bf2
	sub.w	d1,d0
L006bf2:
	move.w	d0,($00ac,a3)
	rts

L006bf8:
	move.w	($0004,a0),d0
	sub.w	($0004,a1),d0
	move.w	d0,d1
	bpl	L006c06
	neg.w	d1
L006c06:
	move.w	($0034,a3),d2
	bpl	L006c0e
	neg.w	d2
L006c0e:
	cmp.w	d2,d1
	bhi	L006c16
	move.w	d0,($0034,a3)
L006c16:
	rts

L006c18:
	lea.l	(L047870),a1
	move.w	#$000b,d7
L006c22:
	move.b	d0,($0002,a1)
	lea.l	($0030,a1),a1
	dbra	d7,L006c22
	rts

L006c30:
	lea.l	(L047840),a1
	move.w	#$000c,d7
L006c3a:
	clr.l	($0000.w,a1)
	lea.l	($0030,a1),a1
	dbra	d7,L006c3a
	rts

L006c48:
	move.w	d0,d5
	clr.w	d6
	move.w	(a4),d1
	move.w	(a1)+,d2
	move.w	d1,d3
	move.w	d2,d4
	andi.w	#$003e,d3
	andi.w	#$003e,d4
	add.w	d5,d5
	cmp.w	d4,d3
	beq	L006c6a
	bhi	L006c68
	add.w	d5,d3
	bra	L006c6a
L006c68:
	sub.w	d5,d3
L006c6a:
	or.w	d3,d6
	move.w	d1,d3
	move.w	d2,d4
	andi.w	#$07c0,d3
	andi.w	#$07c0,d4
	lsl.w	#5,d5
	cmp.w	d4,d3
	beq	L006c86
	bhi	L006c84
	add.w	d5,d3
	bra	L006c86
L006c84:
	sub.w	d5,d3
L006c86:
	or.w	d3,d6
	andi.w	#$f800,d1
	andi.w	#$f800,d2
	lsl.w	#5,d5
	cmp.w	d2,d1
	beq	L006c9e
	bhi	L006c9c
	add.w	d5,d1
	bra	L006c9e
L006c9c:
	sub.w	d5,d1
L006c9e:
	or.w	d1,d6
	move.w	d6,(a4)+
	move.w	d6,(a2)+
	dbra	d7,L006c48
	rts

L006caa:
	subq.b	#1,($003f,a3)
	bne	L006cd2
	movea.l	($003a,a3),a2
	move.w	($0038,a3),d0
	addq.w	#2,d0
	cmp.w	($0040,a3),d0
	bne	L006cc2
	clr.w	d0
L006cc2:
	move.w	d0,($0038,a3)
	move.b	(a2,d0.w),($0019,a0)
	move.b	($01,a2,d0.w),($003f,a3)
L006cd2:
	rts

L006cd4:
	move.l	($000c,a0),d0
	add.l	($0004,a0),d0
	move.l	d0,d1
	swap.w	d1
	subi.w	#$00f0,d1
	bpl	L006cf4
	cmpi.w	#$ff20,d1
	bhi	L006cfe
	move.l	#$00100000,d0
	bra	L006cfa
L006cf4:
	move.l	#$00f00000,d0
L006cfa:
	addq.w	#1,($002e,a3)
L006cfe:
	move.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	rts

L006d0c:
	move.l	a0,-(a7)
	lea.l	(L047870),a0
	move.w	#$000b,d7
L006d18:
	move.w	d7,-(a7)
	bsr	L00860c
	move.w	(a7)+,d7
	lea.l	($0030,a0),a0
	dbra	d7,L006d18
	movea.l	(a7)+,a0
	rts

L006d2c:
	lea.l	($00e822e0),a1
	lea.l	(L048ebc),a2
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	lea.l	($00e82320),a1
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	rts

L006d70:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	tst.w	($0018,a0)
	bpl	L006d82
	neg.w	d0
L006d82:
	rts

L006d84:
	move.l	a0,-(a7)
	jsr	(L041a38)
	movea.l	(a7)+,a0
	lea.l	(L047fc0),a3
	move.w	($0014,a3),d0
	lsl.w	#2,d0
	movea.l	(L006daa,pc,d0.w),a1
	jsr	(a1)
	move.l	a0,-(a7)
	bsr	L008eda
	movea.l	(a7)+,a0
	rts

L006daa:
	.dc.l	L006dce
	.dc.l	L006e34
	.dc.l	L006e90
	.dc.l	L007116
	.dc.l	L006f20
	.dc.l	L00701c
	.dc.l	L007060
	.dc.l	L0070c0
	.dc.l	L007100

L006dce:
	jsr	(L02993c)
	tst.w	(L04731e)
	bne	L006e32
	cmpi.w	#$0140,(L047f7a)
	bcc	L008e02
	cmpi.w	#$00c0,(L047f7a)
	bge	L006e32
	addq.w	#1,($0014,a3)
	jsr	(L018c0e)
	move.b	(L0775c8),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L0775ca),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$005f,d7
L006e24:
	move.w	(a5)+,(a6)+
	dbra	d7,L006e24
	move.w	#$0007,(L04731e)
L006e32:
	rts

L006e34:
	jsr	(L02993c)
	tst.w	(L04731e)
	bne	L006e8e
	cmpi.w	#$0140,(L047f7a)
	bcc	L008e02
	cmpi.w	#$0080,(L047f7a)
	bge	L006e8e
	bsr	L008740
	bsr	L008784
	bsr	L00882c
	bsr	L008906
	tst.w	(L047f7a)
	bne	L006e8e
	move.w	#$0000,(L04735a)
	addq.w	#1,($0014,a3)
	clr.w	($0044,a3)
	jsr	(L018c0e)
	bsr	L006d2c
	moveq.l	#$ff,d0
	trap	#0
L006e8e:
	rts

L006e90:
	addi.w	#$0020,($0044,a3)
	addi.w	#$0020,($001e,a0)
	clr.w	d0
	move.b	($0044,a3),d0
	lea.l	($00e82340),a2
	lea.l	(L048efc),a4
	lea.l	($0100,a3),a1
	move.w	#$000f,d7
	bsr	L006c48
	clr.w	d0
	move.b	($0044,a3),d0
	lea.l	($00e82320),a2
	lea.l	(L048edc),a4
	lea.l	($00e0,a3),a1
	move.w	#$000f,d7
	bsr	L006c48
	clr.b	($0044,a3)
	cmpi.w	#$1f00,($001e,a0)
	bcs	L006efc
	ori.w	#$0100,($0002,a0)
	move.w	#$0040,($001a,a0)
	addq.w	#1,($0014,a3)
	clr.w	($001e,a0)
	moveq.l	#$b6,d0
	trap	#0
L006efc:
	cmpi.w	#$1000,($001e,a0)
	bne	L006f08
	moveq.l	#$9c,d0
	trap	#0
L006f08:
	jsr	(L02993c)
	bsr	L008740
	bsr	L008784
	bsr	L00882c
	bsr	L008906
	rts

L006f20:
	jsr	(L02993c)
	bsr	L006cd4
	btst.b	#$00,($001d,a0)
	bne	L006f4e
	bsr	L008694
	bpl	L006f42
	addi.l	#$00004400,($0010,a0)
	bra	L006f4e
L006f42:
	clr.l	($0010,a0)
	clr.l	($000c,a0)
	addq.w	#1,($001c,a0)
L006f4e:
	btst.b	#$01,($001d,a0)
	bne	L006f68
	bsr	L006caa
	tst.w	($0038,a3)
	bne	L006f68
	addq.w	#2,($001c,a0)
	clr.b	($0019,a0)
L006f68:
	cmpi.w	#$0003,($001c,a0)
	beq	L006f86
	bsr	L008740
	bsr	L008784
	bsr	L006d0c
	bsr	L00882c
	bsr	L008906
	rts

L006f86:
	addi.w	#$0020,($0044,a3)
	addi.w	#$0020,($001e,a0)
	clr.w	d0
	move.b	($0044,a3),d0
	lea.l	($00e82340),a2
	lea.l	(L048efc),a4
	lea.l	($0120,a3),a1
	move.w	#$000f,d7
	bsr	L006c48
	clr.w	d0
	move.b	($0044,a3),d0
	lea.l	($00e82320),a2
	lea.l	(L048edc),a4
	lea.l	($0120,a3),a1
	move.w	#$000f,d7
	bsr	L006c48
	clr.w	d0
	move.b	($0044,a3),d0
	lea.l	($00e822e0),a2
	lea.l	(L048ebc),a4
	lea.l	($0120,a3),a1
	move.w	#$000f,d7
	bsr	L006c48
	clr.b	($0044,a3)
	cmpi.w	#$1f00,($001e,a0)
	bcs	L007012
	addq.w	#1,($0014,a3)
	move.l	#$00000010,($001c,a0)
	move.w	#$000a,(L04731e)
	move.w	#$0001,($0050,a3)
L007012:
	bsr	L00882c
	bsr	L008906
	rts

L00701c:
	bsr	L008740
	bsr	L008784
	bsr	L006d0c
	bsr	L00882c
	bsr	L008906
	tst.w	(L04731e)
	bne	L00705e
	jsr	(L0313d0)
	move.l	#L0777d2,($0014,a0)
	clr.b	($0019,a0)
	addq.w	#1,($0014,a3)
	move.l	($0004,a0),d2
	move.l	($0008,a0),d3
	subi.w	#$0010,d3
	bsr	L008ffa
L00705e:
	rts

L007060:
	bsr	L00909c
	subq.w	#1,($001e,a0)
	bne	L007092
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.b	#$04,d0
	beq	L0070a8
	move.w	d0,($0018,a0)
	move.w	#$0010,($001e,a0)
	move.l	($0004,a0),d2
	move.l	($0008,a0),d3
	add.w	d0,d0
	add.w	(L0070ba,pc,d0.w),d3
	bsr	L008ffa
L007092:
	bsr	L008740
	bsr	L008784
	bsr	L006d0c
	bsr	L00882c
	bsr	L008906
	rts

L0070a8:
	addq.w	#1,($0014,a3)
	move.w	#$0060,($001e,a0)
	move.w	#$0000,($0050,a3)
	bra	L007092

L0070ba:
	.dc.w	$0000,$0010,$0020

L0070c0:
	bsr	L00909c
	subq.w	#1,($001e,a0)
	bne	L007092
	lea.l	(L047ab0),a1
	move.w	#$0002,($001c,a1)
	move.l	a0,-(a7)
	bsr	L008eda
	movea.l	(a7)+,a0
	bsr	L009100
	move.w	#$0054,($0000.w,a0)
	move.l	#$00020000,d0
	jsr	(L029a68)
	addq.w	#1,($0014,a3)
	move.w	#$00a0,($0010,a3)
	bra	L007092
L007100:
	subq.w	#1,($0010,a3)
	bne	L007110
	clr.l	($0000.w,a0)
	jmp	(L003fd0)

L007110:
	bsr	L00909c
	rts

L007116:
	jsr	(L02993c)
	cmpi.w	#$000b,($000a,a3)
	beq	L007136
	subq.w	#1,($000c,a3)
	bne	L007136
	move.w	#$000b,($000a,a3)
	move.w	#$0040,($000c,a3)
L007136:
	tst.w	($000e,a3)
	beq	L00715e
	subq.w	#1,($000e,a3)
	bne	L00715e
	lea.l	(L00914c),a1
	move.w	#$000c,d7
L00714c:
	movea.l	(a1)+,a2
	andi.w	#$bfff,($0018,a2)
	ori.w	#$0100,($0002,a2)
	dbra	d7,L00714c
L00715e:
	tst.w	($0010,a3)
	beq	L007168
	subq.w	#1,($0010,a3)
L007168:
	bsr	L006d70
	move.w	d0,($0012,a3)
	cmpi.b	#$02,($0022,a3)
	bcs	L0071be
	movea.l	($0018,a3),a1
	move.w	($001c,a3),d0
	addq.w	#1,d0
	andi.w	#$0003,d0
	move.w	d0,($001c,a3)
	add.w	d0,d0
	move.w	(a1,d0.w),d0
	tst.w	($0018,a0)
	bpl	L007198
	neg.w	d0
L007198:
	add.w	(L0473f4),d0
	move.w	d0,d1
	subi.w	#$00f0,d1
	bpl	L0071b2
	cmpi.w	#$ff20,d1
	bhi	L0071b6
	move.w	#$0010,d0
	bra	L0071b6
L0071b2:
	move.w	#$00f0,d0
L0071b6:
	move.w	d0,($0016,a3)
	clr.b	($0022,a3)
L0071be:
	subq.w	#1,($001e,a3)
	bpl	L0071d4
	move.b	($0021,a3),($0020,a3)
	clr.b	($0021,a3)
	move.w	#$0080,($001e,a3)
L0071d4:
	tst.w	(L0481e4)
	beq	L0071e0
	addq.b	#1,($0021,a3)
L0071e0:
	move.b	(L0481e2),d1
	andi.b	#$0c,d1
	beq	L0071f2
	clr.w	($0024,a3)
	bra	L0071f6
L0071f2:
	addq.w	#1,($0024,a3)
L0071f6:
	move.b	($0028,a3),d0
	beq	L007214
	cmp.b	($0029,a3),d0
	bne	L007208
	addq.w	#1,($002a,a3)
	bra	L007214
L007208:
	clr.w	($002a,a3)
	move.b	d0,($0029,a3)
	clr.b	($0028,a3)
L007214:
	move.w	($002c,a3),d0
	beq	L007232
	subq.w	#1,d0
	move.w	d0,($002c,a3)
	lsr.w	#1,d0
	bcc	L007226
	clr.w	d0
L007226:
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
L007232:
	clr.b	(L0091d2)
	jsr	(L01024e)
	andi.w	#$0007,d0
	bne	L00724c
	move.b	#$01,(L0091d2)
L00724c:
	move.b	($0033,a3),d0
	beq	L007266
	subq.b	#1,d0
	move.b	d0,($0033,a3)
	bne	L00728a
	move.b	($0032,a3),($0031,a3)
	move.w	($0030,a3),d0
	bra	L007286
L007266:
	cmpi.b	#$06,($002e,a3)
	bls	L00728a
	move.b	#$ff,($0033,a3)
	move.b	($0031,a3),($0032,a3)
	clr.w	($002e,a3)
	move.w	#$0001,d0
	move.w	d0,($0030,a3)
L007286:
	bsr	L006b9c
L00728a:
	cmpi.b	#$06,(L04741f)
	bne	L0072e0
	move.w	#$7fff,($0034,a3)
	lea.l	(L047450),a1
	cmpi.b	#$06,($0001,a1)
	bne	L0072ac
	bsr	L006bf8
L0072ac:
	cmpi.b	#$01,(L04741e)
	bcs	L0072e0
	lea.l	($0030,a1),a1
	cmpi.b	#$06,($0001,a1)
	bne	L0072c6
	bsr	L006bf8
L0072c6:
	cmpi.b	#$02,(L04741e)
	bcs	L0072e0
	lea.l	($0030,a1),a1
	cmpi.b	#$06,($0001,a1)
	bne	L0072e0
	bsr	L006bf8
L0072e0:
	move.w	($0036,a3),d0
	beq	L007302
	cmpi.b	#$24,($001b,a0)
	bge	L007302
	move.w	#$0002,d0
	move.w	d0,($0030,a3)
	move.b	d0,($0032,a3)
	bsr	L006b9c
	clr.w	($0036,a3)
L007302:
	move.b	($001a,a0),d2
	andi.b	#$0f,d2
	ext.w	d2
	move.w	d2,($0046,a3)
	jsr	(L029a3e)
	bcc	L0073e6
	bne	L007392
	addq.w	#1,($0014,a3)
	lea.l	(L047840),a1
	move.w	#$000c,d7
L00732a:
	andi.w	#$fcff,($0002,a1)
	lea.l	($0030,a1),a1
	dbra	d7,L00732a
	lea.l	($00e82320),a2
	lea.l	($00e0,a3),a1
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	clr.w	($001c,a0)
	tst.l	($0010,a0)
	bne	L007364
	addq.w	#1,($001c,a0)
	clr.l	($000c,a0)
L007364:
	tst.w	($0038,a3)
	bne	L007372
	addq.w	#2,($001c,a0)
	clr.b	($0019,a0)
L007372:
	clr.w	($0044,a3)
	clr.w	($001e,a0)
	lea.l	(L047ab0),a1
	move.w	#$0001,($001c,a1)
	clr.w	(L047fbe)
	moveq.l	#$f0,d0
	trap	#0
	rts

L007392:
	addi.w	#$0080,($002e,a3)
	clr.w	d0
	move.b	($001b,a0),d0
	move.b	d0,d1
	lsr.w	#2,d0
	andi.b	#$03,d1
	beq	L0073aa
	addq.w	#1,d0
L0073aa:
	move.w	d0,(L047fbe)
	cmpi.w	#$0009,d0
	bge	L0073c0
	move.l	#L006b94,($0018,a3)
	bra	L0073ce
L0073c0:
	cmpi.w	#$000c,d0
	bge	L0073ce
	move.l	#L006b8c,($0018,a3)
L0073ce:
	sub.w	d2,($000a,a3)
	bmi	L008336
	moveq.l	#$30,d0
	trap	#0
	andi.w	#$fcff,($0002,a0)
	move.w	#$000c,($0008,a3)
L0073e6:
	tst.w	($0008,a3)
	beq	L007410
	subq.w	#1,($0008,a3)
	bne	L0073fa
	ori.w	#$0100,($0002,a0)
	bra	L007410
L0073fa:
	bsr	L008740
	bsr	L008784
	bsr	L006d0c
	bsr	L00882c
	bsr	L008906
	rts

L007410:
	bsr	L006caa
	move.b	($0042,a3),d0
	beq	L007452
	subq.b	#1,($0043,a3)
	bne	L00744e
	move.b	#$02,($0043,a3)
	lea.l	($00e82320),a2
	subq.b	#1,d0
	btst.l	#$00,d0
	beq	L00743a
	lea.l	($00c0,a3),a1
	bra	L00743e
L00743a:
	lea.l	($00e0,a3),a1
L00743e:
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
	move.l	(a1)+,(a2)+
L00744e:
	move.b	d0,($0042,a3)
L007452:
	bsr	L006cd4
	clr.w	(L008690)
	bsr	L00747c
	bsr	L007514
	bsr	L0086a6
	bsr	L008740
	bsr	L008784
	bsr	L00849a
	bsr	L00882c
	bsr	L008906
	rts

L00747c:
	move.w	(L009144),d0
	cmp.w	(L009142),d0
	beq	L00749e
	blt	L007496
	addi.w	#$0040,(L009142)
	bra	L00749e
L007496:
	subi.w	#$0080,(L009142)
L00749e:
	clr.w	d1
	move.b	(L009146),d1
	move.w	(L009146),d0
	add.w	(L009142),d0
	andi.w	#$07ff,d0
	move.w	d0,(L009146)
	clr.w	d0
	move.b	(L009146),d0
	move.w	d1,d2
	cmpi.w	#$0800,(L009142)
	bge	L0074d4
L0074d0:
	cmp.w	d2,d0
	beq	L007512
L0074d4:
	move.w	d2,d1
	add.w	d1,d1
	add.w	d1,d1
	movea.l	#L05dbdc,a2
	lea.l	(a2,d1.w),a2
	move.w	($0022,a0),(a2)+
	move.w	($0026,a0),(a2)+
	lea.l	(L047870),a1
	move.w	#$000b,d7
L0074f6:
	lea.l	($003c,a2),a2
	move.w	($0022,a1),(a2)+
	move.w	($0026,a1),(a2)+
	lea.l	($0030,a1),a1
	dbra	d7,L0074f6
	addq.w	#1,d2
	andi.w	#$0007,d2
	bra	L0074d0
L007512:
	rts

L007514:
	lea.l	(L047fc0),a3
	move.b	($002e,a0),d0
	subq.b	#2,d0
	move.b	d0,($002e,a0)
	move.b	($002f,a0),d1
	subq.b	#4,d1
	move.b	d1,($002f,a0)
	move.b	($002a,a0),d2
	move.b	($002d,a0),d3
	tst.w	($0018,a0)
	bpl	L007546
	sub.b	#$40,d2
	neg.b	d2
	add.b	#$40,d2
L007546:
	lea.l	(L047870),a1
	move.w	#$000b,d7
L007550:
	add.b	#$10,d0
	addq.b	#4,d1
	move.b	d0,($002e,a1)
	move.b	d1,($002f,a1)
	tst.w	(L0091d0)
	bne	L00756e
	move.b	d2,($002a,a1)
	move.b	d3,($002d,a1)
L00756e:
	lea.l	($0030,a1),a1
	dbra	d7,L007550
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L0075f2),a2
	movea.l	(a2,d0.w),a2
	jsr	(a2)
	move.b	($002a,a0),d0
	btst.l	#$00,d0
	beq	L0075b6
	andi.b	#$fe,d0
	tst.w	(L0091d0)
	bne	L0075b2
	tst.w	($0018,a0)
	bpl	L0075b2
	subi.b	#$40,d0
	neg.b	d0
	addi.b	#$40,d0
L0075b2:
	move.b	d0,($0022,a0)
L0075b6:
	move.b	($002d,a0),d0
	btst.l	#$00,d0
	beq	L0075c8
	andi.b	#$fe,d0
	move.b	d0,($0026,a0)
L0075c8:
	move.w	($0000.w,a3),d2
	add.w	d2,d2
	add.w	d2,d2
	lea.l	(L007d20),a2
	movea.l	(a2,d2.w),a2
	jsr	(a2)
	bsr	L0088c8
	move.w	($0020,a0),d0
	add.w	d0,($0022,a0)
	move.w	($0024,a0),d0
	add.w	d0,($0026,a0)
	rts

L0075f2:
	.dc.l	L00761e
	.dc.l	L007624
	.dc.l	L0077f0
	.dc.l	L0078e6
	.dc.l	L007ac0
	.dc.l	L007af8
	.dc.l	L007b30
	.dc.l	L007c0e
	.dc.l	L007c72
	.dc.l	L007c94
	.dc.l	L007cfe

L00761e:
	bsr	L007d7a
	rts

L007624:
	move.b	($001c,a0),d0
	beq	L007644
	subq.b	#1,d0
	beq	L007680
	subq.b	#1,d0
	beq	L0076da
	subq.b	#1,d0
	beq	L007720
	subq.b	#1,d0
	beq	L007738
	bra	L00779a
L007644:
	subq.b	#1,($001f,a0)
	beq	L00764c
	rts

L00764c:
	addq.b	#1,($001c,a0)
	move.b	#$04,($001f,a0)
	move.w	#$0700,(L009142)
	move.w	#$0700,(L009144)
	move.w	#$1800,($0004,a3)
	move.w	#$1800,($0006,a3)
	move.b	#$31,($002a,a0)
	move.b	#$01,($002d,a0)
	rts

L007680:
	subq.b	#1,($001f,a0)
	bne	L0076d8
	addq.b	#1,($001c,a0)
	move.w	#$0800,(L009144)
	move.b	#$31,($002a,a0)
	andi.b	#$fe,($002d,a0)
	move.l	#$fffa0000,($0010,a0)
	move.l	(L009148),($000c,a0)
	cmpi.b	#$01,($001d,a0)
	bne	L0076d4
	move.b	#$06,($0019,a0)
	move.w	#$0006,($003e,a3)
	move.l	#L0091f2,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0006,($0040,a3)
L0076d4:
	moveq.l	#$01,d0
	trap	#0
L0076d8:
	rts

L0076da:
	subi.w	#$0040,($0004,a3)
	subi.w	#$0040,($0006,a3)
	move.l	($0010,a0),d0
	addi.l	#$00004400,d0
	move.l	d0,($0010,a0)
	bmi	L00771e
	addq.b	#1,($001c,a0)
	move.b	#$04,($001f,a0)
	clr.l	($0010,a0)
	move.w	#$0400,(L009144)
	move.w	#$0800,($0004,a3)
	move.w	#$0400,($0006,a3)
	move.b	#$d1,($002a,a0)
L00771e:
	rts

L007720:
	subq.b	#1,($001f,a0)
	bne	L007736
	addq.b	#1,($001c,a0)
	move.b	#$09,($0019,a0)
	move.w	#$00ff,($003e,a3)
L007736:
	rts

L007738:
	bsr	L008694
	bpl	L007748
	addi.l	#$00004400,($0010,a0)
	rts

L007748:
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	addq.b	#1,($001c,a0)
	move.b	#$10,($001f,a0)
	move.w	#$0800,(L009142)
	move.w	#$0700,(L009144)
	move.w	#$0a00,($0004,a3)
	move.b	#$21,($002a,a0)
	move.w	#$000a,($002c,a3)
	move.l	#L0091ec,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0001,($003e,a3)
	move.w	#$0006,($0040,a3)
	moveq.l	#$02,d0
	trap	#0
	rts

L00779a:
	subq.b	#1,($001f,a0)
	bne	L0077ee
	clr.w	($001c,a0)
	move.w	#$0100,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	clr.b	($002a,a0)
	clr.b	($002d,a0)
	move.w	#$0030,($002e,a0)
	clr.w	($0000.w,a3)
	clr.b	($0019,a0)
	move.w	#$0006,($003e,a3)
	move.l	#L0091d4,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0018,($0040,a3)
	move.b	#$01,d0
	bsr	L006c18
L0077ee:
	rts

L0077f0:
	move.b	($001c,a0),d0
	beq	L0077fe
	subq.b	#1,d0
	beq	L007844
	bra	L0078ac
L0077fe:
	subq.b	#1,($001f,a0)
	bne	L007842
	move.b	#$01,($001c,a0)
	move.b	#$10,($001f,a0)
	move.w	#$0800,(L009142)
	move.w	#$0800,(L009144)
	move.w	#$0c00,($0004,a3)
	move.w	#$1300,($0006,a3)
	moveq.l	#$50,d0
	trap	#0
	tst.b	(L0091d2)
	beq	L007842
	not.b	(L0091d3)
	subq.b	#6,($001f,a0)
L007842:
	rts

L007844:
	subq.b	#1,($001f,a0)
	bne	L00787e
	tst.b	(L0091d3)
	bne	L007880
	move.b	#$02,($001c,a0)
	move.b	#$10,($001f,a0)
	move.w	#$0300,(L009144)
	move.b	#$01,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0800,($0004,a3)
	move.w	#$0c00,($0006,a3)
L00787e:
	rts

L007880:
	clr.b	(L0091d3)
	move.b	#$0c,($001f,a0)
	move.w	#$0800,(L009142)
	move.w	#$0800,(L009144)
	move.w	#$0c00,($0004,a3)
	move.w	#$0c00,($0006,a3)
	bra	L008190
L0078ac:
	subq.b	#1,($001f,a0)
	bne	L0078e4
	clr.w	($001c,a0)
	move.w	#$0100,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	clr.b	($002a,a0)
	clr.b	($002d,a0)
	move.w	#$0030,($002e,a0)
	clr.w	($0000.w,a3)
	move.b	#$01,d0
	bsr	L006c18
L0078e4:
	rts

L0078e6:
	move.b	($001c,a0),d0
	beq	L0078fc
	subq.b	#1,d0
	beq	L0079a2
	subq.b	#1,d0
	beq	L007a02
	bra	L00779a
L0078fc:
	subq.b	#1,($001f,a0)
	bne	L0078e4
	move.b	#$01,($001c,a0)
	move.l	(L009148),($000c,a0)
	move.l	#$fffc0000,($0010,a0)
	move.w	#$0380,(L009144)
	move.w	#$0c00,($0004,a3)
	move.w	#$0600,($0006,a3)
	move.b	#$81,($002d,a0)
	move.b	#$06,($001f,a0)
	move.w	(L0473f4),d0
	move.w	(L0473f8),d1
	move.w	($0004,a0),d2
	move.w	($0008,a0),d3
	addi.w	#$0014,d3
	subi.w	#$0020,d1
	cmpi.b	#$03,(L04740d)
	bne	L00796c
	cmpi.b	#$18,(L04740f)
	bcs	L00796c
	addi.w	#$0010,d1
L00796c:
	jsr	(L010280)
	subi.w	#$0040,d0
	ori.w	#$0001,d0
	move.b	d0,($002a,a0)
	move.b	#$0d,($0019,a0)
	move.w	#$0003,($003e,a3)
	move.l	#L0091f8,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0010,($0040,a3)
	moveq.l	#$01,d0
	trap	#0
	rts

L0079a2:
	move.b	($001f,a0),d0
	beq	L0079ea
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	bne	L0079ea
	tst.b	(L0091d2)
	beq	L0079c0
	not.b	(L0091d3)
	bra	L0079ea
L0079c0:
	move.w	#$0800,(L009142)
	move.w	#$0800,(L009144)
	move.w	#$0800,($0004,a3)
	move.w	#$1400,($0006,a3)
	tst.w	($000e,a3)
	bne	L0079ea
	move.b	#$03,d0
	bsr	L006c18
L0079ea:
	addi.l	#$00004400,($0010,a0)
	bmi	L007a00
	move.b	#$02,($001c,a0)
	move.b	#$0c,($001f,a0)
L007a00:
	rts

L007a02:
	move.b	($001f,a0),d0
	beq	L007a30
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	bne	L007a30
	move.w	#$0280,(L009144)
	move.w	#$0800,($0004,a3)
	move.w	#$0800,($0006,a3)
	clr.w	(L0091d0)
	move.b	#$01,($002d,a0)
L007a30:
	bsr	L008694
	bpl	L007a40
	addi.l	#$00004400,($0010,a0)
	rts

L007a40:
	moveq.l	#$02,d0
	trap	#0
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	tst.b	(L0091d3)
	bne	L007a76
	move.b	#$03,($001c,a0)
	move.b	#$10,($001f,a0)
	move.w	#$0700,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0006,($002c,a3)
	rts

L007a76:
	clr.b	(L0091d3)
	move.b	#$01,($001f,a0)
	move.w	#$0005,($001c,a0)
	move.w	#$0001,($0000.w,a3)
	move.b	#$0c,($0019,a0)
	move.w	#$0001,($003e,a3)
	move.l	#L00920a,($003a,a3)
	move.w	#$000a,($0038,a3)
	move.w	#$001e,($0040,a3)
	move.b	#$01,d0
	bsr	L006c18
	move.w	#$0102,($0042,a3)
	bra	L007644
L007ac0:
	subq.b	#1,($001f,a0)
	bne	L007ae2
	clr.w	($001c,a0)
	move.w	#$0100,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	bra	L007d7a
L007ae2:
	move.b	($002e,a0),d0
	subq.b	#8,d0
	move.b	d0,($002e,a0)
	move.b	($002f,a0),d1
	subq.b	#8,d1
	move.b	d1,($002f,a0)
	rts

L007af8:
	move.b	($001c,a0),d0
	beq	L007644
	subq.b	#1,d0
	beq	L007680
	subq.b	#1,d0
	beq	L0076da
	subq.b	#1,d0
	beq	L007b1a
	subq.b	#1,d0
	beq	L007738
	bra	L00779a
L007b1a:
	cmpi.w	#$0014,($0038,a3)
	bne	L007b2e
	bsr	L008ad2
	addq.b	#1,($001c,a0)
	moveq.l	#$46,d0
	trap	#0
L007b2e:
	rts

L007b30:
	move.b	($001c,a0),d0
	beq	L007b3e
	subq.b	#1,d0
	beq	L007bb0
	bra	L0078ac
L007b3e:
	subq.b	#1,($001f,a0)
	bne	L007bae
	move.b	#$01,($001c,a0)
	move.w	#$0800,(L009142)
	move.w	#$0800,(L009144)
	move.w	#$1000,($0004,a3)
	move.w	#$1000,($0006,a3)
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	addi.w	#$0010,d1
	jsr	(L010280)
	tst.w	d0
	bpl	L007b8a
	neg.w	d0
L007b8a:
	subi.w	#$0040,d0
	ori.w	#$0001,d0
	move.b	d0,($002a,a0)
	move.b	#$01,($002d,a0)
	move.b	#$0c,($001f,a0)
	move.b	#$03,d0
	bsr	L006c18
	bsr	L00847e
L007bae:
	rts

L007bb0:
	subq.b	#1,($001f,a0)
	bne	L007bde
	move.w	#$0400,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	clr.b	($002a,a0)
	clr.b	($002d,a0)
	move.b	#$02,($001c,a0)
	move.b	#$08,($001f,a0)
L007bde:
	rts

L007be0:
	subq.b	#1,($001f,a0)
	bne	L007c0c
	move.w	#$0280,(L009144)
	move.w	#$0800,($0004,a3)
	move.w	#$0800,($0006,a3)
	move.b	#$01,($002d,a0)
	move.b	#$03,($001c,a0)
	move.b	#$10,($001f,a0)
L007c0c:
	rts

L007c0e:
	move.b	($001c,a0),d0
	beq.w	L007c16
L007c16:
	bsr	L008694
	bpl	L007c26
	addi.l	#$00004400,($0010,a0)
	rts

L007c26:
	clr.l	($0010,a0)
	clr.w	($001c,a0)
	clr.w	($0000.w,a3)
	clr.b	($002a,a0)
	clr.b	($002d,a0)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	move.w	#$0100,(L009144)
	move.w	#$0004,($002c,a3)
	clr.b	($0019,a0)
	move.w	#$0006,($003e,a3)
	move.l	#L0091d4,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0018,($0040,a3)
	rts

L007c72:
	cmpi.w	#$0001,($003e,a3)
	bne	L007c92
	clr.w	($001c,a0)
	eori.w	#$8000,($0018,a0)
	clr.b	($0019,a0)
	move.w	#$0006,($003e,a3)
	clr.w	($0038,a3)
L007c92:
	rts

L007c94:
	move.b	($001c,a0),d0
	beq	L007c9e
	subq.b	#1,d0
	beq	L007cd6
L007c9e:
	cmpi.w	#$0004,($0038,a3)
	bne	L007cd4
	bsr	L008bf2
	addq.b	#1,($001c,a0)
	move.b	#$20,($001f,a0)
	clr.w	($0000.w,a3)
	clr.b	($002a,a0)
	clr.b	($002d,a0)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	move.w	#$0100,(L009144)
L007cd4:
	rts

L007cd6:
	tst.w	($0038,a3)
	bne	L007cd4
	clr.w	($001c,a0)
	clr.b	($0019,a0)
	move.w	#$0006,($003e,a3)
	move.l	#L0091d4,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0018,($0040,a3)
	rts

L007cfe:
	subq.b	#1,($001f,a0)
	beq	L007d1a
	move.w	($0012,a3),d0
	cmp.w	($0082,a3),d0
	bcs	L007d16
	tst.w	($0046,a3)
	bne	L007d16
	rts

L007d16:
	clr.b	($001f,a0)
L007d1a:
	clr.w	($001c,a0)
	rts

L007d20:
	.dc.l	L007d2c
	.dc.l	L007d78
	.dc.l	L007d78

L007d2c:
	clr.w	d0
	move.b	($002e,a0),d0
	jsr	(L010440)
	asr.w	#3,d0
	btst.b	#$00,($002a,a0)
	bne	L007d52
	clr.w	($0022,a0)
	tst.w	($0018,a0)
	bpl	L007d52
	move.w	#$8000,($0022,a0)
L007d52:
	add.w	d0,($0022,a0)
	clr.w	d0
	move.b	($002f,a0),d0
	jsr	(L010440)
	asr.w	#3,d0
	btst.b	#$00,($002d,a0)
	bne	L007d72
	move.w	d0,($0026,a0)
	bra	L007d76
L007d72:
	add.w	d0,($0026,a0)
L007d76:
	rts

L007d78:
	rts

L007d7a:
	clr.w	d2
	move.w	($0012,a3),d0
	tst.w	(L047f9c)
	beq	L007dc2
	tst.w	d0
	bpl	L007d94
	ori.w	#$0002,d2
	bra	L007f5a
L007d94:
	cmpi.w	#$0050,d0
	bgt	L007daa
	jsr	(L01024e)
	andi.w	#$00b0,d0
	move.w	d0,d2
	bra	L007f5a
L007daa:
	cmpi.w	#$0068,d0
	bgt	L007dba
	move.w	(L0473f4),d0
	bra	L007f36
L007dba:
	ori.w	#$0040,d2
	bra	L007f5a
L007dc2:
	tst.w	($0010,a3)
	bne	L007f32
	tst.b	($002e,a3)
	beq	L007dec
	move.w	($0004,a0),d1
	subi.w	#$00f0,d1
	bpl	L007de0
	cmpi.w	#$ff20,d1
	bhi	L007dec
L007de0:
	clr.b	($002e,a3)
	ori.w	#$0040,d2
	bra	L007f5a
L007dec:
	cmp.w	($0080,a3),d0
	bge	L007e06
	cmpi.b	#$06,($0029,a3)
	bne	L007dfe
	clr.b	($0029,a3)
L007dfe:
	ori.w	#$0002,d2
	bra	L007f5a
L007e06:
	tst.w	($000c,a0)
	beq	L007e36
	cmpi.b	#$01,($0029,a3)
	beq	L007e36
	cmp.w	($008c,a3),d0
	bcc	L007e36
	move.w	($0004,a0),d1
	sub.w	($0016,a3),d1
	tst.w	($0018,a0)
	bpl	L007e2a
	neg.w	d1
L007e2a:
	cmp.w	d1,d0
	bcc	L007e36
	ori.w	#$0001,d2
	bra	L007f5a
L007e36:
	cmpi.b	#$02,($0029,a3)
	bne	L007e4e
	cmpi.w	#$0004,($002a,a3)
	bcs	L007e4e
	move.b	#$01,(L0091d3)
L007e4e:
	cmp.w	($0082,a3),d0
	bhi	L007e6e
	cmpi.b	#$03,(L04740d)
	bne	L007e66
	ori.w	#$0020,d2
	bra	L007f5a
L007e66:
	ori.w	#$0010,d2
	bra	L007f5a
L007e6e:
	cmp.w	($0086,a3),d0
	bhi	L007ea4
	cmpi.b	#$03,(L04740d)
	bne	L007e90
	cmpi.b	#$30,(L04740f)
	bhi	L007ea4
	ori.w	#$0020,d2
	bra	L007f5a
L007e90:
	jsr	(L01024e)
	andi.w	#$000f,d0
	bne	L007ea4
	ori.w	#$0020,d2
	bra	L007f5a
L007ea4:
	move.w	($0012,a3),d0
	cmpi.b	#$06,($0029,a3)
	bne	L007ebc
	clr.b	($0029,a3)
	ori.w	#$0002,d2
	bra	L007f5a
L007ebc:
	cmp.w	($0084,a3),d0
	bcs	L007eca
	ori.w	#$0100,d2
	bra	L007f5a
L007eca:
	cmpi.b	#$05,($0029,a3)
	bne	L007eda
	cmpi.w	#$0002,($002a,a3)
	bcc	L007ef4
L007eda:
	move.b	($0020,a3),d1
	cmp.b	($007f,a3),d1
	bcs	L007eee
	move.w	($0024,a3),d1
	cmp.w	($0026,a3),d1
	bcs	L007ef4
L007eee:
	ori.w	#$0080,d2
	bra	L007f5a
L007ef4:
	move.b	d0,d1
	sub.b	($008b,a3),d1
	cmp.b	($008a,a3),d1
	bhi	L007f1e
	move.w	($0034,a3),d3
	tst.w	($0018,a0)
	bpl	L007f0c
	neg.w	d3
L007f0c:
	cmpi.w	#$0030,d3
	bhi	L007f18
	ori.w	#$0001,d2
	bra	L007f5a
L007f18:
	ori.w	#$0040,d2
	bra	L007f5a
L007f1e:
	cmpi.b	#$09,($0029,a3)
	beq	L007f32
	cmp.w	($008e,a3),d0
	ble	L007f32
	ori.w	#$0200,d2
	bra	L007f5a
L007f32:
	move.w	($0016,a3),d0
L007f36:
	move.w	($0034,a3),d1
	cmp.w	($0004,a0),d0
	beq	L007f5a
	bge	L007f4e
	cmpi.w	#$0020,d1
	bcs	L007f54
L007f48:
	ori.w	#$0004,d2
	bra	L007f5e
L007f4e:
	cmpi.w	#$ffe0,d1
	bhi	L007f48
L007f54:
	ori.w	#$0008,d2
	bra	L007f5e
L007f5a:
	addq.b	#1,($0022,a3)
L007f5e:
	btst.l	#$01,d2
	bne	L008036
	btst.l	#$02,d2
	bne	L007fce
	btst.l	#$03,d2
	bne	L008002
	btst.l	#$05,d2
	bne	L008158
	btst.l	#$04,d2
	bne	L0080c6
	btst.l	#$08,d2
	bne	L0082dc
	btst.l	#$06,d2
	bne	L00820a
	btst.l	#$07,d2
	bne	L008268
	btst.l	#$00,d2
	bne	L008058
	btst.l	#$09,d2
	bne	L0083cc
	btst.l	#$0a,d2
	bne	L008436
	clr.l	($000c,a0)
	andi.b	#$fe,($002a,a0)
	andi.b	#$fe,($002d,a0)
	clr.w	($001c,a0)
	clr.w	($0000.w,a3)
	rts

L007fce:
	btst.b	#$07,($0018,a0)
	bne	L007fec
	move.l	#$fffee000,($000c,a0)
	move.b	#$01,($002a,a0)
	andi.b	#$fe,($002d,a0)
	rts

L007fec:
	move.l	#$ffff4000,($000c,a0)
	move.b	#$59,($002d,a0)
	andi.b	#$fe,($002a,a0)
	rts

L008002:
	btst.b	#$07,($0018,a0)
	beq	L008020
	move.l	#$00012000,($000c,a0)
	move.b	#$01,($002a,a0)
	andi.b	#$fe,($002d,a0)
	rts

L008020:
	move.l	#$0000c000,($000c,a0)
	move.b	#$59,($002d,a0)
	andi.b	#$fe,($002a,a0)
	rts

L008036:
	move.b	#$08,($001d,a0)
	move.w	($00a0,a3),($0010,a3)
	move.w	#$0100,(L009144)
	move.b	#$11,($0019,a0)
	move.w	#$0005,($003e,a3)
	rts

L008058:
	move.l	($000c,a0),(L009148)
	clr.l	($000c,a0)
	move.w	#$02a0,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0380,($0006,a3)
	move.b	#$20,($001f,a0)
	move.w	#$0001,($001c,a0)
	move.b	#$01,($0028,a3)
	move.b	#$d1,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0001,($0000.w,a3)
	move.b	#$28,($002f,a0)
	move.b	#$09,($0019,a0)
	move.w	#$0004,($003e,a3)
	move.l	#L0091ec,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0006,($0040,a3)
	bsr	L00847e
	rts

L0080c6:
	clr.b	($0019,a0)
	move.w	($00a2,a3),($0010,a3)
	move.w	#$0002,($001c,a0)
	move.b	#$02,($0028,a3)
	move.l	($000c,a0),(L009148)
	clr.l	($000c,a0)
	move.w	#$0400,(L009144)
	move.w	#$0100,($0004,a3)
	move.w	#$0100,($0006,a3)
	move.w	#$0002,($0000.w,a3)
	move.b	#$08,($001f,a0)
	move.w	(L0473f4),d0
	move.w	(L0473f8),d1
	move.w	($0004,a0),d2
	move.w	($0008,a0),d3
	addi.w	#$0010,d3
	jsr	(L010280)
	tst.w	d0
	bpl	L00812c
	neg.w	d0
L00812c:
	subi.w	#$0040,d0
	ori.w	#$0001,d0
	move.b	d0,($002a,a0)
	move.b	#$81,($002d,a0)
	bsr	L00847e
	tst.w	($000e,a3)
	bne	L008156
	move.b	#$03,d0
	bsr	L006c18
	move.w	#$1402,($0042,a3)
L008156:
	rts

L008158:
	move.l	#$00012000,d0
	move.w	($0012,a3),d1
	move.w	($0018,a0),d2
	eor.w	d2,d1
	bmi	L00816c
	neg.l	d0
L00816c:
	move.l	d0,(L009148)
	clr.l	($000c,a0)
	move.b	#$0c,($001f,a0)
	move.w	#$0280,(L009144)
	move.w	#$0c00,($0004,a3)
	move.w	#$0c00,($0006,a3)
L008190:
	move.w	($00a6,a3),($0010,a3)
	move.w	#$0003,($001c,a0)
	move.b	#$03,($0028,a3)
	move.w	(L0473f4),d0
	move.w	(L0473f8),d1
	move.w	($0004,a0),d2
	move.w	($0008,a0),d3
	addi.w	#$0010,d3
	jsr	(L010280)
	subi.w	#$0040,d0
	ori.w	#$0001,d0
	move.b	d0,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0002,($0000.w,a3)
	move.w	#$0001,(L0091d0)
	move.b	#$09,($0019,a0)
	move.w	#$0004,($003e,a3)
	move.l	#L0091ec,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$0006,($0040,a3)
	move.w	#$1c02,($0042,a3)
	bsr	L00847e
	rts

L00820a:
	move.w	($00aa,a3),($0010,a3)
	move.w	#$0004,($001c,a0)
	move.b	#$04,($0028,a3)
	jsr	(L01024e)
	andi.b	#$07,d0
	addi.b	#$10,d0
	move.b	d0,($001f,a0)
	clr.b	($002a,a0)
	clr.b	($002d,a0)
	move.w	#$0280,(L009144)
	move.w	#$0800,($0004,a3)
	move.w	#$0800,($0006,a3)
	clr.w	($0000.w,a3)
	tst.w	($0018,a0)
	bmi	L00825e
	move.l	#$fffe4000,($000c,a0)
	rts

L00825e:
	move.l	#$0001c000,($000c,a0)
	rts

L008268:
	move.w	($00a8,a3),($0010,a3)
	move.w	#$0005,($001c,a0)
	move.b	#$05,($0028,a3)
	move.l	($000c,a0),(L009148)
	clr.l	($000c,a0)
	move.w	#$02a0,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0380,($0006,a3)
	move.b	#$20,($001f,a0)
	move.b	#$d1,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0001,($0000.w,a3)
	move.b	#$28,($002f,a0)
	move.b	#$09,($0019,a0)
	move.w	#$0004,($003e,a3)
	move.l	#L00920a,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$001e,($0040,a3)
	bsr	L00847e
	rts

L0082dc:
	move.w	($00a4,a3),($0010,a3)
	clr.l	($000c,a0)
	move.w	#$02a0,(L009144)
	move.w	#$0600,($0004,a3)
	move.w	#$0380,($0006,a3)
	move.b	#$20,($001f,a0)
	move.w	#$0006,($001c,a0)
	move.b	#$06,($0028,a3)
	move.b	#$d1,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0001,($0000.w,a3)
	move.b	#$28,($002f,a0)
	bsr	L00847e
	tst.w	($000e,a3)
	bne	L008334
	move.w	#$1c02,($0042,a3)
L008334:
	rts

L008336:
	moveq.l	#$48,d0
	trap	#0
	move.w	#$0038,($000e,a3)
	move.w	#$000b,($000a,a3)
	move.w	#$0040,($000c,a3)
	lea.l	(L00914c),a1
	move.w	#$000c,d7
L008356:
	movea.l	(a1)+,a2
	andi.w	#$fcff,($0002,a2)
	ori.w	#$4000,($0018,a2)
	dbra	d7,L008356
	move.w	#$0007,($001c,a0)
	move.l	#$fffc0000,($0010,a0)
	move.l	#$00012000,d0
	tst.b	($001a,a0)
	bpl	L008384
	neg.l	d0
L008384:
	move.l	d0,($000c,a0)
	move.w	#$02a0,(L009144)
	move.w	#$0700,($0004,a3)
	move.w	#$0380,($0006,a3)
	move.b	#$d1,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0001,($0000.w,a3)
	move.b	#$28,($002f,a0)
	clr.w	(L0091d0)
	move.b	#$0d,($0019,a0)
	move.w	#$ffff,($003e,a0)
	bsr	L00847e
	rts

L0083cc:
	move.w	($00ac,a3),($0010,a3)
	clr.l	($000c,a0)
	move.w	#$0800,(L009144)
	move.w	#$0800,(L009142)
	move.w	#$1000,($0004,a3)
	move.w	#$1000,($0006,a3)
	move.b	#$20,($001f,a0)
	move.w	#$0009,($001c,a0)
	move.b	#$09,($0028,a3)
	move.b	#$d9,($002a,a0)
	move.b	#$01,($002d,a0)
	move.w	#$0002,($0000.w,a3)
	move.b	#$09,($0019,a0)
	move.w	#$0004,($003e,a3)
	move.l	#L009228,($003a,a3)
	clr.w	($0038,a3)
	move.w	#$000e,($0040,a3)
	rts

L008436:
	clr.w	($0010,a3)
	clr.l	($000c,a0)
	move.w	#$0100,(L009144)
	move.w	#$0100,(L009142)
	move.w	#$0600,($0004,a3)
	move.w	#$0600,($0006,a3)
	move.b	#$40,($001f,a0)
	move.w	#$000a,($001c,a0)
	move.b	#$0a,($0028,a3)
	andi.b	#$fe,($002a,a0)
	andi.b	#$fe,($002d,a0)
	clr.w	($0000.w,a3)
	rts

L00847e:
	lea.l	(L047870),a1
	move.w	#$000b,d7
L008488:
	clr.w	($0020,a1)
	clr.w	($0024,a1)
	lea.l	($0030,a1),a1
	dbra	d7,L008488
	rts

L00849a:
	move.w	($0000.w,a3),d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L0084aa,pc,d0.w),a2
	jsr	(a2)
	rts

L0084aa:
	.dc.l	L0084b6
	.dc.l	L008504
	.dc.l	L0085e4

L0084b6:
	move.l	a0,-(a7)
	lea.l	(L047870),a0
	move.w	#$000b,d7
L0084c2:
	clr.w	d0
	move.b	($002e,a0),d0
	jsr	(L010440)
	asr.w	#4,d0
	move.w	d0,($0020,a0)
	clr.w	d0
	move.b	($002f,a0),d0
	jsr	(L010440)
	move.w	d0,d1
	asr.w	#4,d0
	asr.w	#5,d1
	add.w	d1,d0
	move.w	d0,($0024,a0)
	move.w	d7,-(a7)
	bsr	L00860c
	move.w	(a7)+,d7
	bsr	L0088c8
	lea.l	($0030,a0),a0
	dbra	d7,L0084c2
	movea.l	(a7)+,a0
	rts

L008504:
	tst.b	($001c,a0)
	bne	L008574
	move.l	a0,-(a7)
	lea.l	(L047870),a0
	move.w	#$000b,d7
L008516:
	move.w	#$000b,d1
	sub.w	d7,d1
	add.w	d1,d1
	add.w	d1,d1
	move.b	($002a,a0),d0
	cmp.b	($0022,a0),d0
	bmi	L008530
	sub.w	d1,($0020,a0)
	bra	L008534
L008530:
	add.w	d1,($0020,a0)
L008534:
	cmpi.w	#$000b,d7
	beq	L008550
	clr.w	d0
	move.b	($002f,a0),d0
	add.w	d1,d0
	jsr	(L010440)
	asr.w	#3,d0
	move.w	d0,($0024,a0)
	bra	L008560
L008550:
	move.b	($002d,a0),d0
	cmp.b	($0026,a0),d0
	bpl	L00855c
	neg.w	d1
L00855c:
	add.w	d1,($0024,a0)
L008560:
	move.w	d7,-(a7)
	bsr	L00860c
	move.w	(a7)+,d7
	lea.l	($0030,a0),a0
	dbra	d7,L008516
	movea.l	(a7)+,a0
	rts

L008574:
	move.l	a0,-(a7)
	lea.l	(L047870),a0
	move.w	#$000b,d7
L008580:
	move.w	#$000b,d1
	sub.w	d7,d1
	move.w	d1,d2
	add.w	d1,d1
	add.w	d1,d1
	add.w	d2,d1
	move.b	($002a,a0),d0
	btst.l	#$00,d0
	beq	L0085a8
	cmp.b	($0022,a0),d0
	bmi	L0085a4
	add.w	d1,($0020,a0)
	bra	L0085a8
L0085a4:
	sub.w	d1,($0020,a0)
L0085a8:
	move.b	($002d,a0),d0
	btst.l	#$00,d0
	bne	L0085c6
	clr.w	d0
	move.b	($002f,a0),d0
	jsr	(L010440)
	asr.w	#4,d0
	move.w	d0,($0024,a0)
	bra	L0085d2
L0085c6:
	cmp.b	($0026,a0),d0
	bpl	L0085ce
	neg.w	d1
L0085ce:
	add.w	d1,($0024,a0)
L0085d2:
	move.w	d7,-(a7)
	bsr	L00860c
	move.w	(a7)+,d7
	lea.l	($0030,a0),a0
	dbra	d7,L008580
	movea.l	(a7)+,a0
	rts

L0085e4:
	move.l	a0,-(a7)
	lea.l	(L047870),a0
	move.w	#$000b,d7
L0085f0:
	move.w	d7,-(a7)
	bsr	L00860c
	move.w	(a7)+,d7
	lea.l	($0030,a0),a0
	dbra	d7,L0085f0
	movea.l	(a7)+,a0
	rts

L008602:
	.dc.w	$00c8,$00ca,$00ca,$00ca
	.dc.w	$00cd

L00860c:
	clr.w	d1
	move.b	($0019,a0),d1
	add.w	d1,d1
	move.w	(L008602,pc,d1.w),d1
	move.w	($0008,a0),d0
	sub.w	d1,d0
	ble	L00868e
	move.w	d1,($0008,a0)
	move.w	d0,(L008690)
	bra	L008672
L00862c:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	bne	L00868e
	move.w	(L008690),(L008692)
	clr.w	(L008690)
L008656:
	subq.w	#1,($0008,a0)
	subq.w	#1,d2
	addq.w	#1,(L008690)
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L008656
L008672:
	movea.l	a0,a1
	move.w	($0004,a7),d0
	move.w	(L008690),d1
	subq.w	#1,d0
	bmi	L00868e
L008682:
	lea.l	($0030,a1),a1
	sub.w	d1,($0008,a1)
	dbra	d0,L008682
L00868e:
	rts

L008690:
	.dc.w	$0000
L008692:
	.dc.w	$0000

L008694:
	move.w	($0008,a0),d7
	subi.w	#$00ab,d7
	bmi	L0086a4
	move.w	#$00ab,($0008,a0)
L0086a4:
	rts

L0086a6:
	movea.l	#L05dbdc,a2
	clr.w	d0
	move.b	(L009146),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(a2,d0.w),a2
	lea.l	(L047870),a1
	move.w	($0004,a3),d6
	move.w	($0006,a3),d5
	move.w	#$000b,d7
L0086ce:
	move.w	(a2)+,d1
	move.w	($0022,a1),d0
	sub.w	d1,d0
	bmi	L0086e4
	sub.w	d6,d0
	bpl	L0086ee
	clr.w	d0
	addi.w	#$0010,d6
	bra	L0086ee
L0086e4:
	add.w	d6,d0
	bmi	L0086ee
	clr.w	d0
	addi.w	#$0010,d6
L0086ee:
	add.w	d1,d0
	add.w	($0020,a1),d0
	move.w	d0,($0022,a1)
	move.w	(a2)+,d1
	move.w	($0026,a1),d0
	sub.w	d1,d0
	bmi	L00870e
	sub.w	d5,d0
	bpl	L008718
	clr.w	d0
	addi.w	#$0010,d5
	bra	L008718
L00870e:
	add.w	d5,d0
	bmi	L008718
	clr.w	d0
	addi.w	#$0010,d5
L008718:
	add.w	d1,d0
	add.w	($0024,a1),d0
	move.w	d0,($0026,a1)
	tst.w	d6
	beq	L00872a
	subi.w	#$0010,d6
L00872a:
	tst.w	d5
	beq	L008732
	subi.w	#$0010,d5
L008732:
	lea.l	($003c,a2),a2
	lea.l	($0030,a1),a1
	dbra	d7,L0086ce
	rts

L008740:
	lea.l	(L047870),a1
	move.w	#$000b,d7
L00874a:
	move.w	d7,-(a7)
	clr.w	d0
	move.b	($0022,a1),d0
	jsr	(L010448)
	move.w	d0,d2
	asr.w	#3,d2
	sub.w	d2,d0
	move.w	d1,d2
	asr.w	#3,d2
	sub.w	d2,d1
	bsr	L008974
	tst.w	d7
	bpl	L008770
	neg.l	d0
	neg.l	d1
L008770:
	move.l	d0,($000c,a1)
	move.l	d1,($0010,a1)
	lea.l	($0030,a1),a1
	move.w	(a7)+,d7
	dbra	d7,L00874a
	rts

L008784:
	clr.w	d0
	move.b	($0019,a0),d0
	lsl.w	#2,d0
	move.l	(L0087dc,pc,d0.w),d1
	add.w	d1,($0008,a0)
	swap.w	d1
	tst.w	($0018,a0)
	bpl	L00879e
	neg.w	d1
L00879e:
	add.w	d1,($0004,a0)
	lea.l	(L047870),a1
	movea.l	a0,a2
	move.w	#$000b,d7
L0087ae:
	move.l	($0004,a2),d0
	add.l	($000c,a1),d0
	move.l	d0,($0004,a1)
	move.l	($0008,a2),d0
	add.l	($0010,a1),d0
	move.l	d0,($0008,a1)
	movea.l	a1,a2
	lea.l	($0030,a1),a1
	dbra	d7,L0087ae
	sub.w	d1,($0004,a0)
	swap.w	d1
	sub.w	d1,($0008,a0)
	rts

L0087dc:
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0000001e,$0000001e
	.dc.l	$0004001e,$0004001e
	.dc.l	$0004001e,$0004001e

L00882c:
	clr.w	d4
	clr.w	d3
	clr.w	d2
	clr.l	d1
	lea.l	(L009180),a2
	move.w	d2,(a2,d3.w)
	clr.w	d0
	move.b	($0026,a0),d0
	jsr	(L010440)
	ext.l	d0
	add.l	d0,d1
	move.l	d1,($1a,a2,d4.w)
	addq.w	#1,d2
	addq.w	#2,d3
	addq.w	#4,d4
	lea.l	(L047870),a1
	move.w	#$000b,d7
L008862:
	move.w	d2,(a2,d3.w)
	clr.w	d0
	move.b	($0026,a1),d0
	jsr	(L010440)
	ext.l	d0
	add.l	d0,d1
	move.l	d1,($1a,a2,d4.w)
	lea.l	($0030,a1),a1
	addq.w	#1,d2
	addq.w	#2,d3
	addq.w	#4,d4
	dbra	d7,L008862
	lea.l	(L009180),a1
	move.w	#$000b,d6
L008892:
	clr.w	d5
	clr.w	d4
	move.w	d6,d7
L008898:
	move.l	($1a,a1,d5.w),d0
	cmp.l	($1e,a1,d5.w),d0
	bge	L0088ba
	move.l	($1e,a1,d5.w),($1a,a1,d5.w)
	move.l	d0,($1e,a1,d5.w)
	move.w	(a1,d4.w),d0
	move.w	($02,a1,d4.w),(a1,d4.w)
	move.w	d0,($02,a1,d4.w)
L0088ba:
	addq.w	#4,d5
	addq.w	#2,d4
	dbra	d7,L008898
	dbra	d6,L008892
	rts

L0088c8:
	move.b	($0020,a0),d0
	cmp.b	($0028,a0),d0
	ble	L0088da
	move.b	($0028,a0),($0020,a0)
	bra	L0088e6
L0088da:
	cmp.b	($0029,a0),d0
	bge	L0088e6
	move.b	($0029,a0),($0020,a0)
L0088e6:
	move.b	($0024,a0),d0
	cmp.b	($002b,a0),d0
	ble	L0088f8
	move.b	($002b,a0),($0024,a0)
	rts

L0088f8:
	cmp.b	($002c,a0),d0
	bge	L008904
	move.b	($002c,a0),($0024,a0)
L008904:
	rts

L008906:
	move.l	a0,-(a7)
	lea.l	(L009180),a1
	move.w	#$000c,d7
	tst.w	($0050,a3)
	bne	L008936
L008918:
	move.w	(a1)+,d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L00914c),a0
	movea.l	(a0,d0.w),a0
	jsr	(L025416)
	dbra	d7,L008918
	movea.l	(a7)+,a0
	rts

L008936:
	move.w	(a1)+,d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L00914c),a0
	movea.l	(a0,d0.w),a0
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L008954
	subq.w	#2,d0
L008954:
	add.w	($0004,a0),d0
	move.w	d0,d1
	move.w	($0008,a0),d2
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	dbra	d7,L008936
	movea.l	(a7)+,a0
	rts

L008974:
	move.w	d0,d2
	clr.w	d0
	move.b	($0026,a1),d0
	addi.b	#$40,d0
	jsr	(L010440)
	move.w	d0,d7
	tst.w	d0
	bpl	L00898e
	neg.w	d0
L00898e:
	lsr.w	#8,d0
	lsr.w	#1,d0
	muls.w	d0,d2
	muls.w	d0,d1
	move.l	d2,d0
	rts

L00899a:
	.dc.l	L008acc
	.dc.l	L008aca
	.dc.l	L008ac4
	.dc.l	L008ab6
	.dc.l	L008ab0
	.dc.l	L008aa2
	.dc.l	L008a90
	.dc.l	L008a82
	.dc.l	L008a7c
	.dc.l	L008a6e
	.dc.l	L008a5c
	.dc.l	L008a50
	.dc.l	L008a3e
	.dc.l	L008a28
	.dc.l	L008a16
	.dc.l	L008a08
	.dc.l	L008a02

L0089de:
	asl.l	#5,d0
	asl.l	#5,d1
	rts

	move.l	d0,d2
L0089e6:
	asl.l	#5,d0
	sub.l	d2,d0
	move.l	d1,d3
	asl.l	#5,d1
	sub.l	d3,d1
	rts

L0089f2:
	add.l	d0,d0
	add.l	d1,d1
	bsr	L008a08
	rts

L0089fa:
	add.l	d0,d0
	add.l	d1,d1
	bsr	L008a08
	rts

L008a02:
	asl.l	#4,d0
	asl.l	#4,d1
	rts

L008a08:
	move.l	d0,d2
	asl.l	#4,d0
	sub.l	d2,d0
	move.l	d1,d3
	asl.l	#4,d1
	sub.l	d3,d1
	rts

L008a16:
	move.l	d0,d2
	asl.l	#4,d0
	sub.l	d2,d0
	sub.l	d2,d0
	move.l	d1,d2
	asl.l	#4,d1
	sub.l	d2,d1
	sub.l	d2,d1
	rts

L008a28:
	move.l	d0,d2
	asl.l	#4,d0
	sub.l	d2,d0
	sub.l	d2,d0
	sub.l	d2,d0
	move.l	d1,d2
	asl.l	#4,d1
	sub.l	d2,d1
	sub.l	d2,d1
	sub.l	d2,d1
	rts

L008a3e:
	asl.l	#2,d0
	move.l	d0,d2
	add.l	d0,d0
	add.l	d2,d0
	asl.l	#2,d1
	move.l	d1,d2
	add.l	d1,d1
	add.l	d2,d1
	rts

L008a50:
	bsr	L008aa2
	add.l	d0,d0
	add.l	d2,d0
	add.l	d1,d1
	add.l	d3,d1
	rts

L008a5c:
	add.l	d0,d0
	move.l	d0,d2
	asl.l	#2,d0
	add.l	d2,d0
	add.l	d1,d1
	move.l	d1,d3
	asl.l	#2,d1
	add.l	d3,d1
	rts

L008a6e:
	move.l	d0,d2
	asl.l	#3,d0
	add.l	d2,d0
	move.l	d1,d2
	asl.l	#3,d1
	add.l	d2,d1
	rts

L008a7c:
	asl.l	#3,d0
	asl.l	#3,d1
	rts

L008a82:
	move.l	d0,d2
	asl.l	#3,d0
	sub.l	d2,d0
	move.l	d1,d3
	asl.l	#3,d1
	sub.l	d3,d1
	rts

L008a90:
	move.l	d0,d2
	asl.l	#2,d0
	add.l	d2,d0
	add.l	d2,d0
	move.l	d1,d3
	asl.l	#2,d1
	add.l	d3,d1
	add.l	d3,d1
	rts

L008aa2:
	move.l	d0,d2
	asl.l	#2,d0
	add.l	d2,d0
	move.l	d1,d3
	asl.l	#2,d1
	add.l	d3,d1
	rts

L008ab0:
	asl.l	#2,d0
	asl.l	#2,d1
	rts

L008ab6:
	move.l	d0,d2
	add.l	d0,d0
	add.l	d2,d0
	move.l	d1,d2
	add.l	d1,d1
	add.l	d2,d1
	rts

L008ac4:
	add.l	d0,d0
	add.l	d1,d1
	rts

L008aca:
	rts

L008acc:
	clr.l	d0
	clr.l	d1
	rts

L008ad2:
	movea.l	a0,a1
	move.w	#$0000,d0
	move.w	#$ffe0,d1
	tst.w	($0018,a0)
	bmi	L008ae4
	neg.w	d0
L008ae4:
	add.w	($0004,a0),d0
	add.w	($0008,a0),d1
	move.w	d0,d5
	move.w	d1,d6
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	move.w	#$0016,d4
	tst.b	d0
	bmi	L008b0c
	neg.b	d4
L008b0c:
	add.b	d0,d4
	clr.w	d3
	move.w	#$0003,d7
L008b14:
	jsr	(L0298a6)
	bcs	L008b72
	move.w	#$005b,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.l	#L077752,($0014,a0)
	move.w	d3,($0018,a0)
	addq.w	#1,d3
	andi.w	#$0003,d3
	move.w	d5,($0004,a0)
	move.w	d6,($0008,a0)
	move.w	d4,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	move.l	d1,($0010,a0)
	move.l	d0,($000c,a0)
	bmi	L008b62
	ori.w	#$8000,($0018,a0)
L008b62:
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	move.b	#$03,($001e,a0)
L008b72:
	tst.b	d4
	bmi	L008b7a
	add.b	#$1c,d4
L008b7a:
	sub.b	#$0e,d4
	dbra	d7,L008b14
	movea.l	a1,a0
	rts

L008b86:
	jsr	(L029a3e)
	bcc	L008b9c
	moveq.l	#$31,d0
	trap	#0
	clr.b	($0002,a0)
	jmp	(L029b20)

L008b9c:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L008bb0
	jmp	(L029cca)

L008bb0:
	addi.l	#$00000600,($0010,a0)
	subq.b	#1,($001e,a0)
	bne	L008bce
	move.b	#$03,($001e,a0)
	addq.b	#1,($0019,a0)
	andi.b	#$03,($0019,a0)
L008bce:
	cmpi.w	#$00c8,($0008,a0)
	bgt	L008bde
	jsr	(L025416)
	rts

L008bde:
	moveq.l	#$31,d0
	trap	#0
	move.w	#$00c8,($0008,a0)
	clr.b	($0002,a0)
	jmp	(L029b82)

L008bf2:
	movea.l	a0,a1
	move.w	#$0003,d0
	move.w	#$0008,d1
	tst.w	($0018,a0)
	bmi	L008c04
	neg.w	d0
L008c04:
	add.w	($0004,a0),d0
	add.w	($0008,a0),d1
	jsr	(L0298a6)
	bcs	L008c68
	move.w	#$0064,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	d0,($0004,a0)
	move.w	d1,($0008,a0)
	clr.w	($0006,a0)
	clr.w	($000a,a0)
	move.l	#L077772,($0014,a0)
	move.w	($0018,a1),d0
	clr.b	d0
	eori.w	#$8000,d0
	move.w	d0,($0018,a0)
	clr.l	($0010,a0)
	clr.l	($000c,a0)
	clr.w	($001a,a0)
	clr.w	($001c,a0)
	clr.b	($0019,a0)
	move.w	#$000a,($001e,a0)
	clr.l	($0024,a0)
	moveq.l	#$45,d0
	trap	#0
L008c68:
	movea.l	a1,a0
	rts

L008c6c:
	jsr	(L029a3e)
	bcc	L008c86
	moveq.l	#$36,d0
	trap	#0
	jsr	(L025f66)
	andi.w	#$fcff,($0002,a0)
	rts

L008c86:
	lea.l	(L047fc0),a3
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L008ca0
	clr.l	($0000.w,a0)
	rts

L008ca0:
	move.w	($001c,a0),d0
	lsl.w	#2,d0
	movea.l	(L008cac,pc,d0.w),a1
	jmp	(a1)

L008cac:
	.dc.l	L008cb4
	.dc.l	L008d3e

L008cb4:
	tst.w	($0008,a3)
	bne	L008d36
	tst.w	($000e,a3)
	beq	L008cc6
	clr.l	($0000.w,a0)
	rts

L008cc6:
	subq.w	#1,($001e,a0)
	bne	L008d36
	move.w	#$000a,($001e,a0)
	move.b	($0019,a0),d0
	addq.b	#1,d0
	cmpi.b	#$03,d0
	bne	L008d32
	addq.w	#1,($001c,a0)
	clr.l	($0024,a0)
	move.w	#$0003,($001e,a0)
	tst.w	($0018,a0)
	bmi	L008cfa
	addi.w	#$0018,($0004,a0)
	bra	L008d00
L008cfa:
	subi.w	#$0018,($0004,a0)
L008d00:
	subi.w	#$0008.w,($0008,a0)
	moveq.l	#$49,d0
	trap	#0
	moveq.l	#$03,d0
	move.l	#$ffffa000,($0020,a0)
	move.l	#$ffff4000,($0024,a0)
	move.l	#$00058000,($000c,a0)
	tst.w	($0018,a0)
	bpl	L008d32
	neg.l	($000c,a0)
	neg.l	($0020,a0)
L008d32:
	move.b	d0,($0019,a0)
L008d36:
	jsr	(L025416)
	rts

L008d3e:
	subq.w	#1,($001e,a0)
	bne	L008d50
	move.w	#$0003,($001e,a0)
	eori.w	#$0007,($0018,a0)
L008d50:
	move.l	($0020,a0),d7
	add.l	($0024,a0),d7
	move.l	d7,($0024,a0)
	lea.l	(L077772),a4
	move.l	($0004,a0),d5
	move.l	($0008,a0),d6
	move.w	($0018,a0),d0
	move.l	d5,d1
	move.l	d6,d2
	swap.w	d1
	swap.w	d2
	movea.l	a4,a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	move.b	#$05,d0
	add.l	d7,d5
	move.l	d5,d1
	move.l	d6,d2
	swap.w	d1
	swap.w	d2
	movea.l	a4,a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	move.b	#$06,d0
	add.l	d7,d5
	move.l	d5,d1
	move.l	d6,d2
	swap.w	d1
	swap.w	d2
	movea.l	a4,a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	move.b	#$07,d0
	add.l	d7,d5
	move.l	d5,d1
	move.l	d6,d2
	swap.w	d1
	swap.w	d2
	movea.l	a4,a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	move.b	#$07,d0
	add.l	d7,d5
	move.l	d5,d1
	move.l	d6,d2
	swap.w	d1
	swap.w	d2
	movea.l	a4,a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	move.b	#$08,d0
	add.l	d7,d5
	move.l	d5,d1
	move.l	d6,d2
	swap.w	d1
	swap.w	d2
	movea.l	a4,a5
	jsr	(L025426)
	rts

L008e02:
	move.w	#$000d,(L04731e)
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L008e32:
	move.l	(a5)+,(a6)+
	dbra	d7,L008e32
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L008e62:
	move.l	(a5)+,(a6)+
	dbra	d7,L008e62
	jsr	(L018c0e)
	move.b	(L07680e),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L076810),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L008e90:
	move.l	(a5)+,(a6)+
	dbra	d7,L008e90
	bra	L006c30
L008e9a:
	lea.l	(L047ab0),a0
	move.w	#$000b,($0000.w,a0)
	clr.w	($0002,a0)
	move.l	#$ff610000,($0004,a0)
	move.l	#$00600000,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L0777ba,($0014,a0)
	clr.w	($0018,a0)
	moveq.l	#$08,d0
	move.w	d0,($001e,a0)
	clr.w	($0020,a0)
	rts

L008eda:
	lea.l	(L047ab0),a0
	move.w	($001c,a0),d0
	lsl.w	#2,d0
	movea.l	(L008eec,pc,d0.w),a1
	jmp	(a1)

L008eec:
	.dc.l	L008efc
	.dc.l	L008efc
	.dc.l	L008f68
	.dc.l	L008ff8

L008efc:
	jsr	(L02993c)
	cmpi.w	#$0140,(L047f7a)
	bcs	L008f12
	clr.l	($0000.w,a0)
	rts

L008f12:
	subq.w	#1,($001e,a0)
	bne	L008f48
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0003,d0
	bne	L008f26
	clr.w	d0
L008f26:
	move.w	d0,($0018,a0)
	tst.w	($001c,a0)
	bne	L008f50
	cmpi.b	#$07,(L04740d)
	beq	L008f42
	move.w	#$000a,($001e,a0)
	bra	L008f48
L008f42:
	move.w	#$0004,($001e,a0)
L008f48:
	jsr	(L025416)
	rts

L008f50:
	move.w	($0020,a0),d0
	addi.w	#$0100,d0
	move.w	d0,($0020,a0)
	lsr.w	#3,d0
	addi.w	#$0008.w,d0
	move.w	d0,($001e,a0)
	bra	L008f48
L008f68:
	move.l	#$00780000,d2
	move.l	#$00540000,d3
	moveq.l	#$ff,d4
	move.w	#$0000,d5
	move.l	#$00030008,d6
	moveq.l	#$06,d7
	lea.l	(L0777f2),a2
	bsr	L009016
	move.l	#$008a0000,d2
	move.l	#$00540000,d3
	moveq.l	#$ff,d4
	move.w	#$0000,d5
	move.l	#$00030008,d6
	moveq.l	#$06,d7
	lea.l	(L0777f2),a2
	bsr	L009016
	move.l	#$008a0000,d2
	move.l	#$00700000,d3
	moveq.l	#$ff,d4
	move.w	#$0000,d5
	move.l	#$00030008,d6
	moveq.l	#$06,d7
	lea.l	(L0777f2),a2
	bsr	L009016
	move.l	#$00760000,d2
	move.l	#$00700000,d3
	moveq.l	#$ff,d4
	move.w	#$0000,d5
	move.l	#$00030008,d6
	moveq.l	#$06,d7
	lea.l	(L0777f2),a2
	bsr	L009016
	addq.w	#1,($001c,a0)
	rts

L008ff8:
	rts

L008ffa:
	moveq.l	#$3f,d0
	trap	#0
	moveq.l	#$7f,d4
	move.w	#$00c0,d5
	move.l	#$00030005,d6
	moveq.l	#$09,d7
	lea.l	(L0777f2),a2
	bsr	L009016
	rts

L009016:
	lea.l	(L05bbdc),a1
L00901c:
	tst.w	($0000.w,a1)
	beq	L009030
	lea.l	($0030,a1),a1
	cmpa.l	#L05c7dc,a1
	beq	L009094
	bra	L00901c
L009030:
	move.w	#$000b,($0000.w,a1)
	clr.w	($0002,a1)
	move.l	d2,($0004,a1)
	move.l	d3,($0008,a1)
	move.w	d6,(L00909a)
	swap.w	d6
	jsr	(L01024e)
	and.w	d6,d0
	add.w	d0,(L00909a)
	swap.w	d6
	jsr	(L01024e)
	and.w	d4,d0
	add.b	d5,d0
	jsr	(L01032e)
	muls.w	(L00909a),d0
	muls.w	(L00909a),d1
	move.l	d0,($000c,a1)
	move.l	d1,($0010,a1)
	move.l	a2,($0014,a1)
	andi.w	#$8001,d1
	move.w	d1,($0018,a1)
	clr.w	($001c,a1)
	move.w	#$0008,($001e,a1)
L009094:
	dbra	d7,L009016
	rts

L00909a:
	.dc.w	$0000

L00909c:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a0
L0090a4:
	cmpi.w	#$000b,($0000.w,a0)
	bne	L0090ae
	bsr	L0090be
L0090ae:
	lea.l	($0030,a0),a0
	cmpa.l	#L05c7dc,a0
	bne	L0090a4
	movea.l	(a7)+,a0
	rts

L0090be:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L0090d2
	clr.l	($0000.w,a0)
	rts

L0090d2:
	addi.l	#$00002000,($0010,a0)
	subq.w	#1,($001e,a0)
	bne	L0090f8
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.b	#$03,d0
	bcs	L0090ee
	clr.b	d0
L0090ee:
	move.w	d0,($0018,a0)
	move.w	#$0004,($001e,a0)
L0090f8:
	jsr	(L025416)
	rts

L009100:
	moveq.l	#$82,d0
	trap	#0
	lea.l	(L047870),a4
	move.w	#$000b,d7
L00910e:
	swap.w	d7
	move.l	($0004,a4),d2
	move.l	($0008,a4),d3
	moveq.l	#$ff,d4
	move.w	#$0000,d5
	move.l	#$00030005,d6
	move.w	#$0002,d7
	lea.l	(L0777f2),a2
	bsr	L009016
	lea.l	($0030,a4),a4
	swap.w	d7
	dbra	d7,L00910e
	bsr	L006c30
	rts

L009142:
	.dc.w	$0000
L009144:
	.dc.w	$0000
L009146:
	.dc.b	$00,$00
L009148:
	.dc.l	$00000000
L00914c:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00
L009180:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
L0091d0:
	.dc.w	$0000
L0091d2:
	.dc.b	$00
L0091d3:
	.dc.b	$00
L0091d4:
	.dc.b	$00,$04,$01,$04,$02,$04,$03,$04
	.dc.b	$04,$04,$05,$04,$00,$04,$01,$04
	.dc.b	$02,$04,$06,$04,$07,$04,$08,$04
L0091ec:
	.dc.b	$0a,$06,$0b,$06,$0c,$06
L0091f2:
	.dc.b	$06,$04,$07,$04,$08,$04
L0091f8:
	.dc.b	$0d,$02,$0e,$02,$0f,$02,$10,$10
	.dc.b	$11,$06,$09,$04,$0a,$06,$0b,$06
	.dc.b	$0c,$06
L00920a:
	.dc.b	$09,$04,$0a,$06,$0b,$06,$0c,$06
	.dc.b	$0a,$06,$0b,$06,$0c,$06,$0d,$04
	.dc.b	$0e,$04,$0f,$16,$0e,$02,$0d,$02
	.dc.b	$00,$04,$09,$04,$0a,$63
L009228:
	.dc.b	$09,$08,$0a,$14,$12,$1e,$13,$30
	.dc.b	$12,$04,$0b,$04,$09,$06
L009236:
	.dc.b	$00,$00,$00,$00,$00,$01,$01,$01
	.dc.b	$02,$02,$03,$04

L009242:
	move.w	d0,-(a7)
	jsr	(L0039f0)
	lea.l	(L047a80),a0
	move.w	#$000b,($0000.w,a0)
	moveq.l	#$00,d0
	move.w	d0,($0002,a0)
	move.l	d0,($0004,a0)
	move.l	d0,($0008,a0)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.l	#L0798c6,($0014,a0)
	move.w	d0,($0018,a0)
	move.w	#$007f,($001a,a0)
	lea.l	(L047ab0),a0
	jsr	(L041a64)
	move.w	(a7)+,d0
	move.w	#$0075,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L07975e,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0020,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$00c0,($001e,a0)
	move.w	#$0000,($0020,a0)
	lea.l	(L047fc0),a3
	clr.w	($0000.w,a3)
	lea.l	(L00b4fe),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L009302
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L009302:
	move.b	(a1),($000b,a3)
	moveq.l	#$00,d6
	clr.w	($000c,a3)
	move.w	#$0000,($000e,a3)
	move.w	#$0000,($0010,a3)
	move.l	d6,($0012,a3)
	move.l	d6,($0014,a3)
	move.w	d6,($001c,a3)
	move.w	#$0010,($001e,a3)
	move.w	#$0048,d1
	cmpi.b	#$02,(L04741d)
	bne	L00933c
	addi.w	#$0010,d1
L00933c:
	move.w	d1,($002a,a3)
	move.w	d6,($002c,a3)
	move.w	d6,($0030,a3)
	bsr	L00949a
	jsr	(L01024e)
	move.w	d0,($0032,a3)
	move.w	d6,($0034,a3)
	move.w	d6,($0036,a3)
	clr.w	d0
	move.b	(L04741f),d0
	cmpi.w	#$0007,d0
	bcs	L00936e
	clr.w	d0
L00936e:
	tst.w	d0
	beq	L009374
	subq.w	#2,d0
L009374:
	move.w	d0,($0038,a3)
	move.l	d6,($003a,a3)
	move.l	(L047450),($003e,a3)
	move.w	#$ffff,($0042,a3)
	move.w	d6,($0046,a3)
	move.l	d6,($0048,a3)
	move.w	d6,($004c,a3)
	move.w	d6,($004e,a3)
	lea.l	(L0480c4),a2
	move.l	a2,($0100,a3)
	move.w	#$0017,d7
L0093a8:
	move.l	d6,(a2)+
	dbra	d7,L0093a8
	moveq.l	#$00,d0
	clr.w	($0060,a3)
	bsr	L00947e
	move.l	a1,($0062,a3)
	move.w	d1,($006a,a3)
	swap.w	d1
	move.w	d1,($0066,a3)
	rts

L0093c8:
	clr.l	($0000.w,a0)
	rts

L0093ce:
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	movea.l	($0100,a3),a2
	btst.b	#$06,($0020,a0)
	bne	L0093f4
	moveq.l	#$00,d3
	move.l	d3,(a2)+
	move.l	d3,(a2)+
	move.w	d3,(a2)+
	bra	L0093fc
L0093f4:
	move.w	d1,(a2)+
	move.w	d2,(a2)+
	move.w	d0,(a2)+
	move.l	a5,(a2)+
L0093fc:
	jsr	(L025426)
	cmpa.l	#L048164,a2
	bcs	L00940e
	lea.l	(-$00a0,a2),a2
L00940e:
	moveq.l	#$00,d5
	move.w	#$0004,d7
L009414:
	cmpi.w	#$0001,d7
	bne	L00941e
	move.w	#$4000,d5
L00941e:
	move.w	(a2)+,d1
	move.w	(a2)+,d2
	move.w	(a2)+,d0
	movea.l	(a2)+,a5
	move.w	d1,d3
	or.w	d2,d3
	beq	L009434
	or.w	d5,d0
	jsr	(L025426)
L009434:
	lea.l	($0014,a2),a2
	cmpa.l	#L048164,a2
	bcs	L009444
	lea.l	(-$00a0,a2),a2
L009444:
	dbra	d7,L009414
	lea.l	(-$000a,a2),a2
	cmpa.l	#L0480c4,a2
	bcc	L009458
	lea.l	($00a0,a2),a2
L009458:
	move.l	a2,($0100,a3)
	btst.b	#$04,($0021,a0)
	beq	L00947c
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	($0018,a0),d0
	lea.l	(L0798c6),a5
	jsr	(L025426)
L00947c:
	rts

L00947e:
	lsl.w	#2,d0
	lea.l	(L00b59e),a1
	move.l	(a1,d0.w),d1
	bra	L00948e
L00948c:
	lsl.w	#2,d0
L00948e:
	lea.l	(L00b58e),a1
	movea.l	(a1,d0.w),a1
	rts

L00949a:
	jsr	(L01024e)
	andi.w	#$0003,d0
	addi.w	#$0002.w,d0
	rts

L0094aa:
	move.w	d0,($002e,a3)
	ori.w	#$0004,d7
	btst.b	#$02,($0020,a0)
	beq	L0094c4
	andi.w	#$fbff,($0020,a0)
	ori.w	#$0020,d7
L0094c4:
	rts

L0094c6:
	subq.w	#1,($000a,a3)
	bne	L009512
	move.w	($0006,a3),d0
	moveq.l	#$01,d1
	tst.w	($0020,a0)
	bpl	L0094da
	neg.w	d1
L0094da:
	add.w	d1,d0
	bpl	L0094e6
	move.w	($0008,a3),d0
	subq.w	#1,d0
	bra	L0094ee
L0094e6:
	cmp.w	($0008,a3),d0
	bcs	L0094ee
	clr.w	d0
L0094ee:
	move.w	d0,($0006,a3)
	add.w	d0,d0
	movea.l	($0002,a3),a1
	move.b	(a1,d0.w),d1
	bpl	L009508
	andi.w	#$007f,d1
	eori.w	#$8000,($0018,a0)
L009508:
	move.b	d1,($0019,a0)
	move.b	($01,a1,d0.w),($000b,a3)
L009512:
	rts

L009514:
	lea.l	($00ebfe00),a4
	moveq.l	#$0f,d7
L00951c:
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	move.l	(a2)+,(a4)+
	dbra	d7,L00951c
	rts

L009532:
	movea.l	($0048,a3),a2
	lea.l	($00e10000),a3
	move.w	(a2)+,d7
	bmi	L009552
	subq.w	#1,d7
L009542:
	movea.l	(a2)+,a5
	movea.l	(a2)+,a6
	jsr	(L02852e)
	dbra	d7,L009542
	rts

L009552:
	andi.w	#$7fff,d7
	subq.w	#1,d7
	moveq.l	#$00,d0
	move.w	(a2)+,d0
	lsl.w	#2,d0
	lsl.l	#8,d0
	lea.l	($00c00001),a6
	lea.l	(a6,d0.l),a6
L00956a:
	move.w	d7,-(a7)
	move.w	(a2)+,d0
	lea.l	(a6,d0.w),a5
	move.w	(a2)+,d7
	subq.w	#1,d7
L009576:
	move.w	(a2)+,d0
	jsr	(L02860e)
	lea.l	($0010,a5),a5
	dbra	d7,L009576
	lea.l	($2000,a6),a6
	move.w	(a7)+,d7
	dbra	d7,L00956a
	rts

L009592:
	move.l	a0,-(a7)
	jsr	(L041a38)
	movea.l	(a7)+,a0
	lea.l	(L047fc0),a3
	move.w	($0000.w,a3),d0
	add.w	d0,d0
	move.w	(L0095b2,pc,d0.w),d0
	jsr	(L0095b2,pc,d0.w)
	rts

L0095b2:
	.dc.w	L0095ba-L0095b2
	.dc.w	L00962e-L0095b2
	.dc.w	L009744-L0095b2
	.dc.w	L009722-L0095b2

L0095ba:
	tst.b	($0021,a0)
	bmi	L0095d8
	cmpi.b	#$09,(L04740d)
	beq	L0095d8
	move.w	#$0005,(L047124)
	ori.w	#$0080,($0020,a0)
L0095d8:
	subq.w	#1,($001e,a0)
	bne	L009622
	andi.w	#$ff7f,($0020,a0)
	addq.w	#1,($0000.w,a3)
	move.l	#L07977e,($0014,a0)
	lea.l	(L00b506),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0019,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L009616
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L009616:
	move.b	(a1),($000b,a3)
	moveq.l	#$ff,d0
	trap	#0
	moveq.l	#$66,d0
	trap	#0
L009622:
	bsr	L0094c6
	jsr	(L025416)
	rts

L00962e:
	cmpi.w	#$0012,($0006,a3)
	bne	L009656
	cmpi.w	#$001c,($000a,a3)
	bne	L009656
	move.l	a0,-(a7)
	bsr	L00af90
	movea.l	(a7)+,a0
	moveq.l	#$19,d0
	trap	#0
	moveq.l	#$b6,d0
	trap	#0
	ori.w	#$0100,($0002,a0)
	bra	L009622
L009656:
	tst.b	($0021,a0)
	bmi	L00967c
	cmpi.w	#$0016,($0006,a3)
	bne	L00967c
	tst.w	(L04731e)
	bne	L00967c
	move.w	#$0013,(L04731e)
	ori.w	#$0080,($0020,a0)
	bra	L009622
L00967c:
	cmpi.w	#$0016,($0006,a3)
	bne	L009692
	cmpi.w	#$0001,($000a,a3)
	bne	L009692
	moveq.l	#$a0,d0
	trap	#0
	bra	L009622
L009692:
	cmpi.w	#$0018,($0006,a3)
	bne	L009622
	cmpi.w	#$0001,($000a,a3)
	bne	L009622
	move.l	a0,-(a7)
	lea.l	(L04cf74),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	movea.l	(a7)+,a0
	lea.l	(L047fc0),a3
	addq.w	#1,($0000.w,a3)
	ori.w	#$0300,($0002,a0)
	clr.w	($001e,a0)
	andi.w	#$00ff,($001a,a0)
	move.l	#L0796a6,($0014,a0)
	andi.w	#$ff7f,($0020,a0)
	lea.l	(L00b4ca),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00971a
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00971a:
	move.b	(a1),($000b,a3)
	bra	L009622
L009722:
	btst.b	#$06,($0021,a0)
	bne	L009730
	bra	L009622
L00972e:
	rts

L009730:
	btst.b	#$03,($0021,a0)
	bne	L00973a
	rts

L00973a:
	bsr	L0093c8
	jmp	(L003fd0)

L009744:
	jsr	(L029954)
	bsr	L0097da
	jsr	(L029a3e)
	bcc	L0097b2
	clr.w	d0
	move.b	($001b,a0),d0
	move.b	d0,d1
	lsr.w	#1,d0
	andi.b	#$01,d1
	beq	L009768
	addq.w	#1,d0
L009768:
	move.w	d0,(L047fbe)
	move.w	($0002,a0),($0020,a3)
	andi.w	#$00ff,($0002,a0)
	ori.w	#$4000,($0018,a0)
	move.w	#$0040,($0022,a3)
	btst.b	#$05,($0020,a0)
	bne	L009792
	bsr	L00a248
L009792:
	moveq.l	#$48,d0
	trap	#0
	andi.w	#$bfff,($0020,a0)
	cmpi.w	#$0004,($0060,a3)
	beq	L0097b2
	cmpi.b	#$0c,($001b,a0)
	bhi	L0097b2
	move.w	#$0004,($0060,a3)
L0097b2:
	move.w	($0022,a3),d0
	beq	L0097cc
	subq.w	#1,d0
	move.w	d0,($0022,a3)
	bne	L0097cc
	move.w	($0020,a3),($0002,a0)
	andi.w	#$bfff,($0018,a0)
L0097cc:
	bsr	L009e72
	bsr	L0094c6
	bsr	L0093ce
	rts

L0097da:
	move.w	($0028,a3),d2
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	move.w	(L047408),d1
	bmi	L0097f2
	neg.w	d0
L0097f2:
	move.w	d0,($0028,a3)
	move.w	d0,d1
	sub.w	d2,d1
	move.w	d1,($0036,a3)
	move.w	($0020,a0),d2
	andi.w	#$edff,d2
	tst.w	d0
	bmi	L009822
	move.w	(L047408),d3
	move.w	($0018,a0),d1
	eor.w	d3,d1
	bmi	L00981e
	ori.w	#$1000,d2
	bra	L009822
L00981e:
	ori.w	#$0200,d2
L009822:
	move.w	d2,($0020,a0)
	move.w	($0004,a0),d0
	cmpi.w	#$000c,d0
	bhi	L009838
	move.w	#$000c,($0004,a0)
	bra	L00984a
L009838:
	andi.w	#$f7ff,($0020,a0)
	cmpi.w	#$00f4,d0
	blt	L009850
	move.w	#$00f4,($0004,a0)
L00984a:
	ori.w	#$0800,($0020,a0)
L009850:
	move.w	($0030,a3),d1
	cmp.w	($0032,a3),d1
	bcs	L00986c
	ori.w	#$0400,($0020,a0)
	bsr	L00949a
	move.w	d0,($0032,a3)
	clr.w	($0030,a3)
L00986c:
	tst.w	($0038,a3)
	beq	L0098da
	move.w	#$8000,d0
	move.w	($0004,a0),d2
	lea.l	(L047450),a1
	move.w	#$0002,d7
L009884:
	tst.w	($0000.w,a1)
	beq	L0098ce
	move.w	($0004,a1),d1
	sub.w	d2,d1
	btst.b	#$00,($0039,a3)
	bne	L0098a0
	tst.w	d1
	bpl	L0098ac
	neg.w	d1
	bra	L0098ac
L0098a0:
	tst.w	($000c,a1)
	bmi	L0098a8
	neg.w	d1
L0098a8:
	tst.w	d1
	bmi	L0098be
L0098ac:
	cmp.w	d1,d0
	bls	L0098ce
	move.w	d1,d0
	move.w	($0008,a1),($003c,a3)
	move.l	a1,($003e,a3)
	bra	L0098ce
L0098be:
	cmp.w	d1,d0
	bhi	L0098ce
	move.w	d1,d0
	move.w	($0008,a1),($003c,a3)
	move.l	a1,($003e,a3)
L0098ce:
	lea.l	($0030,a1),a1
	dbra	d7,L009884
	move.w	d0,($003a,a3)
L0098da:
	move.w	($0034,a3),d0
	beq	L0098e6
	subq.w	#1,d0
	move.w	d0,($0034,a3)
L0098e6:
	move.w	($004e,a3),d0
	beq	L0098f2
	subq.w	#1,d0
	move.w	d0,($004e,a3)
L0098f2:
	move.w	($000e,a3),d0
	beq	L0098fe
	subq.w	#1,d0
	bra	L009e6c
L0098fe:
	moveq.l	#$00,d7
	move.w	#$ffff,($0042,a3)
	tst.w	($004e,a3)
	beq	L009912
	andi.w	#$fddf,($0042,a3)
L009912:
	tst.b	($001b,a0)
	bne	L009920
	move.w	#$0100,d7
	bra	L009e52
L009920:
	cmpi.b	#$08,(L04740d)
	bne	L009932
	move.w	#$0040,d7
	bra	L009e52
L009932:
	btst.b	#$05,($0021,a0)
	beq	L00996e
	btst.b	#$04,($0020,a0)
	beq	L009948
	ori.w	#$0010,d7
	bra	L00996e
L009948:
	btst.b	#$01,($0020,a0)
	beq	L00996e
	move.w	($0028,a3),d6
	bpl	L009958
	neg.w	d6
L009958:
	cmp.w	($002a,a3),d6
	bgt	L00996e
	jsr	(L01024e)
	andi.w	#$001f,d0
	bne	L00996e
	ori.w	#$0200,d7
L00996e:
	btst.b	#$06,($0018,a0)
	beq	L00997a
	ori.w	#$0020,d7
L00997a:
	moveq.l	#$1f,d1
	btst.b	#$05,($0021,a0)
	beq	L009986
	moveq.l	#$3f,d1
L009986:
	jsr	(L01024e)
	and.w	d1,d0
	bne	L009996
	ori.w	#$0020,d7
	bra	L0099b2
L009996:
	btst.b	#$05,($0021,a0)
	bne	L0099b2
	cmpi.b	#$03,(L04740d)
	bne	L0099ca
	andi.w	#$000f,d0
	bne	L0099b2
	ori.w	#$0020,d7
L0099b2:
	btst.b	#$03,($0020,a0)
	beq	L0099dc
	cmpi.w	#$000c,($0004,a0)
	bne	L0099ca
	tst.w	($0018,a0)
	bpl	L0099d8
	bra	L0099dc
L0099ca:
	cmpi.w	#$00fc,($0004,a0)
	bne	L0099dc
	tst.w	($0018,a0)
	bpl	L0099dc
L0099d8:
	ori.w	#$0010,d7
L0099dc:
	move.w	($0028,a3),d6
	tst.w	($0034,a3)
	bne	L009a22
	move.w	d6,d1
	bpl	L0099ec
	neg.w	d1
L0099ec:
	move.w	($0004,a0),d0
	cmpi.w	#$0060,d1
	bhi	L009a0a
	cmp.w	(L0473f4),d0
	ble	L009a04
	ori.w	#$0002,d7
	bra	L009a22
L009a04:
	ori.w	#$0001,d7
	bra	L009a22
L009a0a:
	cmpi.w	#$0080,d1
	bcs	L009a22
	cmp.w	(L0473f4),d0
	ble	L009a1e
	ori.w	#$0001,d7
	bra	L009a22
L009a1e:
	ori.w	#$0002,d7
L009a22:
	move.w	($0028,a3),d6
	move.w	($0038,a3),d0
	move.w	d0,d1
	beq	L009baa
	subq.w	#1,d0
	add.w	d0,d0
	move.w	(L009a4c,pc,d0.w),d0
	add.w	d1,d1
	move.w	(L009a42,pc,d1.w),d1
	jmp	(L009a42,pc,d1.w)

L009a42:
	.dc.w	L009baa-L009a42
	.dc.w	L009a54-L009a42
	.dc.w	L009a94-L009a42
	.dc.w	L009b1e-L009a42
	.dc.w	L009b7a-L009a42
L009a4c:
	.dc.w	$0030,$0030,$0030,$0030

L009a54:
	move.w	($003a,a3),d5
	addi.w	#$0018,d5
	cmp.w	d0,d5
	bhi	L009baa
	cmpi.w	#$00b0,($003c,a3)
	bcc	L009a74
	andi.w	#$ffdb,($0042,a3)
	bra	L009baa
L009a74:
	move.w	($002a,a3),d5
	addi.w	#$0020,d5
	cmp.w	d5,d6
	bhi	L009a8c
	move.w	#$0200,d0
	bsr	L0094aa
	bra	L009baa
L009a8c:
	ori.w	#$0008,d7
	bra	L009baa
L009a94:
	move.w	($003a,a3),d5
	cmp.w	d0,d5
	bhi	L009baa
	cmpi.w	#$0020,d5
	bhi	L009ac4
	ori.w	#$0008,d7
	move.w	($002a,a3),d5
	cmp.w	d5,d6
	bhi	L009aba
	cmpi.w	#$0000,($0036,a3)
	bls	L009baa
L009aba:
	andi.w	#$ffdb,($0042,a3)
	bra	L009baa
L009ac4:
	movea.l	($003e,a3),a1
	move.w	($000c,a1),d5
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	eor.w	d0,d5
	bmi	L009ae2
	andi.w	#$ffdf,($0042,a3)
	bra	L009baa
L009ae2:
	move.w	($002a,a3),d5
	cmp.w	d5,d6
	bhi	L009b10
	cmpi.w	#$0000,($0036,a3)
	bhi	L009b10
	btst.b	#$03,($0020,a0)
	beq	L009afc
	bra	L009b10
L009afc:
	cmpi.w	#$0010,($003a,a3)
	bcs	L009b10
	move.w	#$0200,d0
	bsr	L0094aa
	bra	L009baa
L009b10:
	ori.w	#$0008,d7
	andi.w	#$ffdb,($0042,a3)
	bra	L009baa
L009b1e:
	move.w	($003a,a3),d5
	cmp.w	d0,d5
	bhi	L009baa
	movea.l	($003e,a3),a1
	move.w	($0004,a1),d0
	btst.b	#$03,($0020,a0)
	bne	L009b40
	cmpi.w	#$0002,($0010,a1)
	bgt	L009b5c
L009b40:
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	move.w	($0018,a0),d1
	eor.w	d0,d1
	bpl	L009b56
	ori.w	#$0080,d7
	bra	L009baa
L009b56:
	ori.w	#$0010,d7
	bra	L009baa
L009b5c:
	sub.w	($0004,a0),d0
	bmi	L009b6e
	ori.w	#$0001,d7
	andi.w	#$ffdd,($0042,a3)
	bra	L009baa
L009b6e:
	ori.w	#$0002,d7
	andi.w	#$ffde,($0042,a3)
	bra	L009baa
L009b7a:
	move.w	($003a,a3),d5
	cmp.w	d0,d5
	bhi	L009baa
	movea.l	($003e,a3),a1
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	bmi	L009b9c
	ori.w	#$0001,d7
	andi.w	#$fffd,($0042,a3)
	bra	L009baa
L009b9c:
	ori.w	#$0002,d7
	andi.w	#$fffe,($0042,a3)
	bra.w	L009baa
L009baa:
	cmpi.b	#$01,(L04740c)
	bne	L009e52
	move.w	(L047410),d5
	add.w	d5,d5
	move.w	(L009bc6,pc,d5.w),d5
	jmp	(L009bc6,pc,d5.w)

L009bc6:
	.dc.w	L009bd0-L009bc6
	.dc.w	L009bd0-L009bc6
	.dc.w	L009ce2-L009bc6
	.dc.w	L009dc6-L009bc6
	.dc.w	L009d38-L009bc6

L009bd0:
	cmpi.b	#$03,(L04740d)
	beq	L009d38
	move.w	($002a,a3),d5
	cmp.w	d5,d6
	bhi	L009e52
	cmpi.w	#$002c,d6
	bcs	L009c80
	btst.b	#$03,($0020,a0)
	beq	L009c46
	btst.b	#$05,($0021,a0)
	beq	L009c14
	jsr	(L01024e)
	andi.w	#$0101,d0
	beq	L009e44
	addi.w	#$0001.w,d0
	bne	L009e4a
L009c14:
	tst.w	(L047410)
	bne	L009c32
	jsr	(L01024e)
	andi.w	#$0101,d0
	beq	L009e2c
	addi.w	#$0001.w,d0
	bra	L009e4a
L009c32:
	jsr	(L01024e)
	andi.w	#$0301,d0
	beq	L009e38
	addq.w	#1,d0
	bra	L009e4a
L009c46:
	tst.w	(L047410)
	bne	L009c98
	cmpi.w	#$0003,($000c,a3)
	beq	L009e2c
	btst.b	#$02,($0043,a3)
	bne	L009c6e
	btst.b	#$01,($0020,a0)
	beq	L009e32
	bra	L009e3e
L009c6e:
	jsr	(L01024e)
	andi.w	#$0101,d0
	addi.w	#$0100,d0
	bra	L009e4a
L009c80:
	btst.b	#$03,($0020,a0)
	beq	L009c98
	jsr	(L01024e)
	andi.w	#$0301,d0
	addq.w	#1,d0
	bra	L009e4a
L009c98:
	tst.w	(L047410)
	bne	L009cb6
	jsr	(L01024e)
	andi.w	#$0101,d0
	beq	L009e2c
	addi.w	#$0100,d0
	bra	L009e4a
L009cb6:
	btst.b	#$05,($0043,a3)
	bne	L009ccc
	btst.b	#$01,($0020,a0)
	beq	L009e32
	bra	L009e3e
L009ccc:
	jsr	(L01024e)
	andi.w	#$0101,d0
	beq	L009e38
	addi.w	#$0100,d0
	bra	L009e4a
L009ce2:
	move.w	($002a,a3),d5
	cmp.w	d5,d6
	bhi	L009e52
	cmpi.w	#$0030,d6
	bcs	L009d10
	jsr	(L01024e)
	btst.b	#$03,($0020,a0)
	beq	L009d08
	andi.w	#$0201,d0
	bra	L009e4a
L009d08:
	andi.w	#$0301,d0
	bra	L009e4a
L009d10:
	btst.b	#$01,($0020,a0)
	bne	L009e3e
	cmpi.b	#$30,(L04740f)
	bls	L009e32
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bmi	L009e20
	bra	L009e26
L009d38:
	move.w	($002a,a3),d5
	cmp.w	d5,d6
	bhi	L009e52
	tst.b	(L04740d)
	beq	L009e2c
	btst.b	#$03,($0020,a0)
	beq	L009d6e
	cmpi.b	#$26,(L04740f)
	bhi	L009e2c
	btst.b	#$01,($0020,a0)
	beq	L009e32
	bra	L009e3e
L009d6e:
	cmpi.b	#$38,(L04740f)
	bcc	L009e2c
	andi.w	#$ffdb,($0042,a3)
	cmpi.w	#$0020,d6
	bhi	L009d9e
	btst.b	#$01,($0020,a0)
	beq	L009e3e
	btst.b	#$05,($0021,a0)
	bne	L009e44
	bra	L009e32
L009d9e:
	move.w	($002a,a3),d5
	cmp.w	d5,d6
	bhi	L009dbc
	btst.b	#$01,($0020,a0)
	beq	L009e3e
	btst.b	#$05,($0021,a0)
	bne	L009e44
	bra	L009e32
L009dbc:
	btst.b	#$01,($0020,a0)
	bne	L009e32
	bra	L009e3e
L009dc6:
	cmpi.w	#$0030,d6
	bhi	L009e52
	btst.b	#$03,($0020,a0)
	beq	L009dea
	andi.w	#$ff5b,($0042,a3)
	tst.w	($0036,a3)
	bpl	L009e52
	ori.w	#$0020,($0042,a3)
	bra	L009e38
L009dea:
	andi.w	#$ff5f,($0042,a3)
	tst.w	($0036,a3)
	bmi	L009dfe
	andi.w	#$fffc,($0042,a3)
	bra	L009e52
L009dfe:
	jsr	(L01024e)
	andi.w	#$0001,d0
	beq	L009e10
	addi.w	#$0201,d0
	bra	L009e4a
L009e10:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bmi	L009e26
	bra.w	L009e20
L009e20:
	ori.w	#$0001,d7
	bra	L009e52
L009e26:
	ori.w	#$0002,d7
	bra	L009e52
L009e2c:
	ori.w	#$0008,d7
	bra	L009e52
L009e32:
	ori.w	#$0010,d7
	bra	L009e52
L009e38:
	ori.w	#$0020,d7
	bra	L009e52
L009e3e:
	ori.w	#$0080,d7
	bra	L009e52
L009e44:
	ori.w	#$0200,d7
	bra	L009e52
L009e4a:
	bsr	L0094aa
	bra.w	L009e52
L009e52:
	and.w	($0042,a3),d7
	move.w	d7,($0012,a3)
	jsr	(L01024e)
	andi.w	#$007f,d0
	beq	L009e6a
	moveq.l	#$00,d0
	bra	L009e6c
L009e6a:
	moveq.l	#$08,d0
L009e6c:
	move.w	d0,($000e,a3)
	rts

L009e72:
	moveq.l	#$00,d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L009e84,pc,d0.w),d0
	jsr	(L009e84,pc,d0.w)
	rts

L009e84:
	.dc.w	L009e9a-L009e84
	.dc.w	L00a54c-L009e84
	.dc.w	L00a54e-L009e84
	.dc.w	L00a550-L009e84
	.dc.w	L00a5ea-L009e84
	.dc.w	L00a832-L009e84
	.dc.w	L00aae0-L009e84
	.dc.w	L00aaf6-L009e84
	.dc.w	L00abda-L009e84
	.dc.w	L00ab6a-L009e84
	.dc.w	L00ad5e-L009e84

L009e9a:
	tst.w	($000e,a3)
	bne	L009f40
	move.w	($0012,a3),d7
	clr.w	($0012,a3)
	btst.l	#$08,d7
	bne	L00a392
	btst.l	#$06,d7
	bne	L00a2a4
	btst.l	#$03,d7
	bne	L00a0aa
	btst.l	#$09,d7
	bne	L00a4ac
	btst.l	#$05,d7
	bne	L00a14a
	btst.l	#$04,d7
	bne	L00a142
	btst.l	#$07,d7
	bne	L00a32e
	btst.l	#$02,d7
	bne	L009fce
	btst.l	#$00,d7
	bne	L009f42
	btst.l	#$01,d7
	bne	L009f6a
	bsr	L00a0fe
	bcs	L009f40
	move.w	($000c,a3),d0
	beq	L009f40
	tst.w	($0034,a3)
	bne	L009f0e
	move.w	#$0020,($0034,a3)
L009f0e:
	clr.l	($000c,a0)
	lea.l	(L00b4ca),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L009f38
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L009f38:
	move.b	(a1),($000b,a3)
	clr.w	($000c,a3)
L009f40:
	rts

L009f42:
	bsr	L00a0fe
	bcs	L009fcc
	andi.w	#$7fff,($0020,a0)
	tst.w	($0018,a0)
	bmi	L009f60
	move.l	#$fffe8000,($000c,a0)
	bra	L009f94
L009f60:
	move.l	#$ffff4000,($000c,a0)
	bra	L009f8e
L009f6a:
	bsr	L00a0fe
	bcs	L009fcc
	andi.w	#$7fff,($0020,a0)
	tst.w	($0018,a0)
	bpl	L009f86
	move.l	#$00018000,($000c,a0)
	bra	L009f94
L009f86:
	move.l	#$0000c000,($000c,a0)
L009f8e:
	ori.w	#$8000,($0020,a0)
L009f94:
	cmpi.w	#$0001,($000c,a3)
	beq	L009fcc
	lea.l	(L00b4cc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L009fc2
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L009fc2:
	move.b	(a1),($000b,a3)
	move.w	#$0001,($000c,a3)
L009fcc:
	rts

L009fce:
	move.w	#$0004,($001c,a0)
	move.w	#$0004,($000c,a3)
	addq.w	#1,($0030,a3)
	andi.w	#$3fff,($0020,a0)
	btst.b	#$05,($0021,a0)
	beq	L00a020
	move.l	#L07989e,($0014,a0)
	lea.l	(L00b580),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a01a
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a01a:
	move.b	(a1),($000b,a3)
	bra	L00a04a
L00a020:
	lea.l	(L00b4d8),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a046
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a046:
	move.b	(a1),($000b,a3)
L00a04a:
	move.w	($002e,a3),d0
	move.w	d0,d1
	andi.w	#$00ff,d0
	lsl.w	#2,d0
	move.l	(L00a09e,pc,d0.w),($0018,a3)
	andi.w	#$ff00,d1
	bne	L00a068
	move.l	($000c,a0),d0
	bra	L00a094
L00a068:
	cmpi.w	#$0300,d1
	bne	L00a072
	moveq.l	#$00,d0
	bra	L00a094
L00a072:
	move.l	#$00018000,d0
	move.w	($0004,a0),d2
	sub.w	(L0473f4),d2
	moveq.l	#$00,d3
	cmpi.w	#$0100,d1
	beq	L00a08e
	move.w	#$8000,d3
L00a08e:
	eor.w	d3,d2
	bmi	L00a094
	neg.l	d0
L00a094:
	move.l	d0,($0014,a3)
	clr.l	($000c,a0)
	rts

L00a09e:
	.dc.l	$fff90000,$fffb4000
	.dc.l	$fffd0000

L00a0aa:
	btst.b	#$05,($0021,a0)
	bne	L009fce
	cmpi.w	#$0003,($000c,a3)
	beq	L00a0fc
	move.w	#$0003,($001c,a0)
	move.w	#$0003,($000c,a3)
	andi.w	#$3fff,($0020,a0)
	clr.l	($000c,a0)
	lea.l	(L00b4d4),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a0f8
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a0f8:
	move.b	(a1),($000b,a3)
L00a0fc:
	rts

L00a0fe:
	cmpi.w	#$0003,($000c,a3)
	bne	L00a13c
	move.w	#$0103,($001c,a0)
	lea.l	(L00b4d4),a1
	move.l	a1,($0002,a3)
	moveq.l	#$01,d0
	move.w	d0,($0008,a3)
	subq.w	#1,d0
	move.w	d0,($0006,a3)
	add.w	d0,d0
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($000b,a3)
	ori.w	#$8000,($0020,a0)
	move.w	#$0001,ccr
	rts

L00a13c:
	move.w	#$0000,ccr
	rts

L00a142:
	eori.w	#$8000,($0018,a0)
	rts

L00a14a:
	btst.b	#$05,($0021,a0)
	bne	L00a4ac
	cmpi.w	#$0004,($0060,a3)
	beq	L00a434
	move.w	#$0005,($001c,a0)
	move.w	#$0005,($000c,a3)
	lea.l	(L00b4d8),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a190
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a190:
	move.b	(a1),($000b,a3)
	clr.l	($000c,a0)
	andi.w	#$3fff,($0020,a0)
	rts

L00a1a0:
	btst.b	#$05,($0021,a0)
	bne	L00a1e6
	move.w	($0060,a3),d0
	cmpi.w	#$0004,d0
	beq	L00a1e6
	cmpi.w	#$0001,d0
	beq	L00a1be
	cmpi.w	#$0002,d0
	bne	L00a1c6
L00a1be:
	btst.b	#$07,($0021,a0)
	bne	L00a1e6
L00a1c6:
	move.w	($006a,a3),d1
	bne	L00a1f0
	addq.w	#1,d0
	cmpi.w	#$0004,d0
	beq	L00a1e6
	move.w	d0,-(a7)
	bsr	L00947e
	move.w	(a7)+,d0
	move.w	d1,($006a,a3)
	swap.w	d1
	move.w	d1,($0066,a3)
L00a1e6:
	move.w	d0,($0060,a3)
	ori.b	#$01,ccr
	rts

L00a1f0:
	move.w	($0066,a3),d1
	bsr	L00948c
	jsr	(L01024e)
	andi.w	#$0007,d0
	ror.b	d0,d1
	bcs	L00a20c
L00a206:
	addq.w	#1,d0
	ror.b	#1,d1
	bcc	L00a206
L00a20c:
	subq.w	#1,d0
	andi.w	#$0007,d0
	move.w	($0066,a3),d1
	bclr.l	d0,d1
	move.w	d1,($0068,a3)
	lsl.w	#2,d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	move.w	(a1,d0.w),d2
	move.w	($02,a1,d0.w),d3
	move.w	d2,($0024,a3)
	move.w	d3,($0026,a3)
	move.l	($04,a1,d0.w),d1
	beq	L00a240
	movea.l	d1,a2
	bsr	L009514
L00a240:
	move.l	($08,a1,d0.w),($0048,a3)
	rts

L00a248:
	move.w	#$0104,($001c,a0)
	move.w	#$0000,($000c,a3)
	andi.w	#$7fff,($0020,a0)
	lea.l	(L00b4da),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a280
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a280:
	move.b	(a1),($000b,a3)
	move.l	#$00012000,d0
	tst.w	($0018,a0)
	bpl	L00a292
	neg.l	d0
L00a292:
	move.l	d0,($000c,a0)
	move.l	#$fffc0000,($0010,a0)
	clr.l	($0014,a3)
	rts

L00a2a4:
	btst.b	#$05,($0021,a0)
	beq	L00a2dc
	clr.w	($001c,a0)
	lea.l	(L00b4ca),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a2d6
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a2d6:
	move.b	(a1),($000b,a3)
	rts

L00a2dc:
	move.w	#$0006,($001c,a0)
	move.w	#$0000,($000c,a3)
	andi.w	#$00ff,($0002,a0)
	andi.w	#$7fff,($0020,a0)
	addq.w	#6,($0008,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	lea.l	(L00b4ea),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0006,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a328
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a328:
	move.b	(a1),($000b,a3)
	rts

L00a32e:
	move.w	#$0007,($001c,a0)
	move.w	#$0007,($000c,a3)
	andi.w	#$7fff,($0020,a0)
	move.l	#$0002c000,d0
	tst.w	($0018,a0)
	bmi	L00a34e
	neg.l	d0
L00a34e:
	move.l	d0,($000c,a0)
	move.w	#$0010,($001e,a0)
	lea.l	(L00b4f6),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a37e
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a37e:
	move.b	(a1),($000b,a3)
	btst.b	#$00,($0020,a0)
	beq	L00a390
	ori.w	#$4000,($0020,a0)
L00a390:
	rts

L00a392:
	move.w	#$0009,($001c,a0)
	move.w	#$0009,($000c,a3)
	andi.w	#$00ff,($0002,a0)
	andi.w	#$00ff,($0020,a3)
	andi.w	#$bfff,($0018,a0)
	andi.w	#$7fff,($0020,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.l	a0,-(a7)
	lea.l	(L04fec6),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe800),a4
	move.w	a6,d2
	jsr	(L003954)
	movea.l	(a7)+,a0
	lea.l	(L047fc0),a3
	move.l	#L079816,($0014,a0)
	lea.l	(L00b538),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0020,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a41e
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a41e:
	move.b	(a1),($000b,a3)
	moveq.l	#$f0,d0
	trap	#0
	move.l	#$00030000,d0
	jsr	(L029a68)
	rts

L00a434:
	btst.b	#$05,($0021,a0)
	bne	L00a482
	move.w	#$0008,($001c,a0)
	move.w	#$0008,($000c,a3)
	ori.w	#$0020,($0020,a0)
	lea.l	(L00b4d8),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a474
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a474:
	move.b	(a1),($000b,a3)
	clr.l	($000c,a0)
	andi.w	#$3fff,($0020,a0)
L00a482:
	rts

L00a484:
	move.w	($0044,a3),d0
	jsr	(L01032e)
	asr.w	#8,d0
	asr.w	#1,d0
	asr.w	#8,d1
	asr.w	#1,d1
	move.w	#$0080,d2
	move.w	#$0070,d3
	add.w	d0,d2
	add.w	d1,d3
	move.w	d2,($0024,a3)
	move.w	d3,($0026,a3)
	rts

L00a4ac:
	tst.w	($004e,a3)
	bne	L00a54a
	move.w	($0028,a3),d0
	cmpi.w	#$0040,d0
	bcs	L00a4f6
	cmpi.w	#$00a0,d0
	bge	L00a54a
	jsr	(L01024e)
	andi.w	#$0001,d0
	bne	L00a4e4
	btst.b	#$01,($0020,a0)
	beq	L00a4e4
	ori.w	#$0100,($0020,a0)
	bra	L00a32e
L00a4e4:
	ori.w	#$8000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	beq	L00a502
L00a4f6:
	andi.w	#$7fff,($0020,a0)
	move.w	#$0040,($004e,a3)
L00a502:
	clr.l	($000c,a0)
	move.w	#$000a,($001c,a0)
	move.w	#$000a,($000c,a3)
	ori.w	#$0010,($0020,a0)
	move.l	#L07989e,($0014,a0)
	lea.l	(L00b582),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0006,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a546
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a546:
	move.b	(a1),($000b,a3)
L00a54a:
	rts

L00a54c:
	rts

L00a54e:
	rts

L00a550:
	moveq.l	#$00,d0
	move.b	($001c,a0),d0
	beq	L00a5aa
	cmpi.w	#$0000,($0006,a3)
	bne	L00a5e8
	cmpi.w	#$0001,($000a,a3)
	bne	L00a5e8
	lea.l	(L00b4ca),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a590
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a590:
	move.b	(a1),($000b,a3)
	clr.w	($001c,a0)
	clr.w	($000c,a3)
	andi.w	#$7fff,($0020,a0)
	move.w	#$0001,($000e,a3)
	rts

L00a5aa:
	cmpi.w	#$0000,($0006,a3)
	bne	L00a5e8
	cmpi.w	#$0001,($000a,a3)
	bne	L00a5e8
	lea.l	(L00b4d6),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a5e0
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a5e0:
	move.b	(a1),($000b,a3)
	clr.w	($001c,a0)
L00a5e8:
	rts

L00a5ea:
	move.b	($001c,a0),d0
	beq	L00a69e
	subq.b	#1,d0
	beq	L00a71e
	cmpi.w	#$0000,($0006,a3)
	bne	L00a638
	cmpi.w	#$0001,($000a,a3)
	bne	L00a638
	lea.l	(L00b4ca),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a62e
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a62e:
	move.b	(a1),($000b,a3)
	clr.w	($001c,a0)
L00a636:
	rts

L00a638:
	cmpi.w	#$0004,($000a,a3)
	bcc	L00a636
	move.w	($0012,a3),d0
	btst.l	#$05,d0
	beq	L00a688
	cmpi.w	#$0004,($0060,a3)
	beq	L00a434
	move.w	#$0005,($001c,a0)
	lea.l	(L00b4d8),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a680
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a680:
	move.b	(a1),($000b,a3)
	bra	L00a892
L00a688:
	btst.l	#$02,d0
	beq	L00a636
	move.w	#$0104,($001c,a0)
	addq.w	#1,($0030,a3)
	bsr	L00a04a
	bra	L00a6b2
L00a69e:
	cmpi.w	#$0000,($0006,a3)
	bne	L00a636
	cmpi.w	#$0001,($000a,a3)
	bne	L00a636
	addq.b	#1,($001c,a0)
L00a6b2:
	btst.b	#$05,($0021,a0)
	beq	L00a6e6
	lea.l	(L00b580),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a6e0
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a6e0:
	move.b	(a1),($000b,a3)
	bra	L00a710
L00a6e6:
	lea.l	(L00b4dc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a70c
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a70c:
	move.b	(a1),($000b,a3)
L00a710:
	move.l	($0018,a3),($0010,a0)
	move.l	($0014,a3),($000c,a0)
	rts

L00a71e:
	tst.w	($0010,a0)
	bpl	L00a76e
L00a724:
	move.l	($0010,a0),d0
	move.l	d0,d1
	addi.l	#$00006800,d0
	move.l	d0,($0010,a0)
	eor.l	d0,d1
	bpl	L00a636
	btst.b	#$05,($0021,a0)
	bne	L00a76c
	lea.l	(L00b4dc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a768
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a768:
	move.b	(a1),($000b,a3)
L00a76c:
	rts

L00a76e:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.w	d0
	bmi	L00a7a2
	tst.b	d0
	beq	L00a724
L00a78a:
	subq.w	#1,($0008,a0)
	subq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.w	d0
	bmi	L00a7a2
	tst.b	d0
	bne	L00a78a
L00a7a2:
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	btst.b	#$05,($0021,a0)
	beq	L00a7f2
	addq.w	#4,($0008,a0)
	clr.w	($001c,a0)
	clr.w	($000c,a3)
	move.l	#L0798e6,($0014,a0)
	lea.l	(L00b4cc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a7ec
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a7ec:
	move.b	(a1),($000b,a3)
	rts

L00a7f2:
	subq.w	#2,($0008,a0)
	move.w	($0012,a3),d0
	btst.l	#$03,d0
	bne	L00a0aa
	addq.b	#1,($001c,a0)
	lea.l	(L00b4de),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a82c
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a82c:
	move.b	(a1),($000b,a3)
	rts

L00a832:
	move.b	($001c,a0),d0
	beq	L00a892
	subq.b	#1,d0
	beq	L00a9b8
	subq.b	#1,d0
	beq	L00aa52
	rts

L00a846:
	move.w	#$0104,($001c,a0)
	move.l	#$00012000,d0
	tst.w	($0018,a0)
	bpl	L00a85a
	neg.l	d0
L00a85a:
	move.l	d0,($000c,a0)
	move.l	#$fffc0000,($0010,a0)
	lea.l	(L00b4da),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a88c
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a88c:
	move.b	(a1),($000b,a3)
	rts

L00a892:
	cmpi.w	#$0000,($0006,a3)
	bne	L00a9b6
	cmpi.w	#$0001,($000a,a3)
	bne	L00a9b6
L00a8a6:
	bsr	L00a1a0
	bcs	L00a846
	andi.w	#$fdff,($0002,a0)
	addq.b	#1,($001c,a0)
	cmp.w	($0008,a0),d3
	bge	L00a8e8
	lea.l	(L00b4da),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a8e2
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a8e2:
	move.b	(a1),($000b,a3)
	bra	L00a912
L00a8e8:
	lea.l	(L00b4dc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00a90e
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00a90e:
	move.b	(a1),($000b,a3)
L00a912:
	addi.w	#$0018,d3
	moveq.l	#$00,d5
	move.w	d2,d5
	move.w	d3,d6
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	sub.w	d0,d5
	bpl	L00a92a
	neg.w	d5
L00a92a:
	sub.w	d1,d6
	bpl	L00a930
	neg.w	d6
L00a930:
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	cmp.w	d6,d5
	bcs	L00a948
	move.w	d0,d2
	bra	L00a94c
L00a948:
	move.w	d6,d5
	move.w	d1,d2
L00a94c:
	bpl	L00a950
	neg.w	d2
L00a950:
	move.l	d5,d6
	bne	L00a968
	moveq.l	#$00,d7
	move.l	d7,($0026,a0)
	move.w	d7,($002a,a0)
	move.w	#$0001,($001e,a0)
	move.l	d7,d3
	bra	L00a99e
L00a968:
	move.l	#$00001800,($0026,a0)
	move.w	#$0006,d3
	mulu.w	d2,d3
	divu.w	d5,d3
	move.w	d3,($002a,a0)
	swap.w	d6
	divu.w	d2,d6
	move.w	d6,d5
	asr.w	#5,d6
	bne	L00a988
	addq.w	#1,d6
L00a988:
	andi.w	#$001f,d5
	subi.w	#$000f,d5
	bmi	L00a994
	addq.w	#1,d6
L00a994:
	move.w	d6,($001e,a0)
	move.l	#$00060000,d3
L00a99e:
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d1,($0022,a0)
	sub.l	d3,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	ori.w	#$4000,($0020,a0)
L00a9b6:
	rts

L00a9b8:
	moveq.l	#$00,d2
	move.l	($0022,a0),d0
	move.l	($0026,a0),d1
	move.w	($002a,a0),d2
	sub.l	d2,d1
	move.l	d1,($0026,a0)
	asl.l	#6,d1
	sub.l	d1,d0
	move.l	d0,($0010,a0)
	subq.w	#1,($001e,a0)
	bne	L00aa50
	addq.b	#1,($001c,a0)
	move.w	($0024,a3),d0
	move.w	d0,($0004,a0)
	move.w	($0026,a3),d1
	addi.w	#$0018,d1
	move.w	d1,($0008,a0)
	moveq.l	#$00,d1
	move.l	d1,($000c,a0)
	move.l	d1,($0010,a0)
	move.w	($0018,a0),d1
	andi.w	#$7fff,d1
	cmp.w	(L0473f4),d0
	bge	L00aa10
	ori.w	#$8000,d1
L00aa10:
	move.w	d1,($0018,a0)
	lea.l	(L00b4e0),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00aa3a
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00aa3a:
	move.b	(a1),($000b,a3)
	andi.w	#$bfff,($0020,a0)
	tst.w	($0022,a3)
	bne	L00aa50
	ori.w	#$0300,($0002,a0)
L00aa50:
	rts

L00aa52:
	cmpi.w	#$0002,($0006,a3)
	bne	L00aa72
	cmpi.w	#$0001,($000a,a3)
	bne	L00aa72
	bsr	L00ae02
	move.w	($0068,a3),($0066,a3)
	subq.w	#1,($006a,a3)
	rts

L00aa72:
	cmpi.w	#$0003,($0006,a3)
	bne	L00a9b6
	cmpi.w	#$0001,($000a,a3)
	bne	L00a9b6
	eori.w	#$8000,($0018,a0)
	btst.b	#$05,($0013,a3)
	beq	L00aa9c
	clr.b	($001c,a0)
	bra	L00a8a6
L00aa9c:
	move.l	#$00028000,d0
	tst.w	($0018,a0)
	bpl	L00aaaa
	neg.l	d0
L00aaaa:
	move.l	d0,($000c,a0)
	move.w	#$0104,($001c,a0)
	lea.l	(L00b4dc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00aada
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00aada:
	move.b	(a1),($000b,a3)
	rts

L00aae0:
	cmpi.w	#$0001,($000a,a3)
	bne	L00aaf4
	cmpi.w	#$0004,($0006,a3)
	bne	L00aaf4
	moveq.l	#$49,d0
	trap	#0
L00aaf4:
	rts

L00aaf6:
	subq.w	#1,($001e,a0)
	bne	L00ab44
	andi.w	#$bfff,($0020,a0)
	btst.b	#$00,($0020,a0)
	bne	L00a4ac
	moveq.l	#$00,d0
	move.w	d0,($001c,a0)
	move.w	d0,($000c,a3)
	move.l	d0,($000c,a0)
	lea.l	(L00b4ca),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00ab40
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00ab40:
	move.b	(a1),($000b,a3)
L00ab44:
	btst.b	#$00,($0020,a0)
	bne	L00ab68
	move.w	($0012,a3),d7
	btst.l	#$05,d7
	bne	L00a14a
	btst.l	#$03,d7
	bne	L00a0aa
	btst.l	#$02,d7
	bne	L009fce
L00ab68:
	rts

L00ab6a:
	cmpi.w	#$0002,($0006,a3)
	bne	L00ab80
	cmpi.w	#$0001,($000a,a3)
	bne	L00ab80
	moveq.l	#$49,d0
	trap	#0
	rts

L00ab80:
	cmpi.w	#$0006,($0006,a3)
	bne	L00abc2
	cmpi.w	#$000a,($000a,a3)
	bne	L00abc2
	move.l	a0,-(a7)
	lea.l	(L04f826),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc680),a4
	move.w	a6,d2
	jsr	(L003954)
	movea.l	(a7)+,a0
	lea.l	(L047fc0),a3
	rts

L00abc2:
	cmpi.w	#$0009,($0006,a3)
	bne	L00abd8
	move.l	a0,-(a7)
	bsr	L00b050
	movea.l	(a7)+,a0
	bcs	L00abd8
	addq.w	#1,($0000.w,a3)
L00abd8:
	rts

L00abda:
	move.b	($001c,a0),d0
	beq	L00abf2
	subq.b	#1,d0
	beq	L00a9b8
	subq.b	#1,d0
	beq	L00ac3e
	subq.b	#1,d0
	beq	L00ad16
L00abf0:
	rts

L00abf2:
	cmpi.w	#$0000,($0006,a3)
	bne	L00abf0
	cmpi.w	#$0001,($000a,a3)
	bne	L00abf0
	bsr	L00a484
	ori.w	#$2000,($0020,a0)
	addq.b	#1,($001c,a0)
	lea.l	(L00b4da),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00ac36
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00ac36:
	move.b	(a1),($000b,a3)
	bra	L00a912
L00ac3e:
	cmpi.w	#$0002,($0006,a3)
	bne	L00acb8
	cmpi.w	#$0001,($000a,a3)
	bne	L00acb8
	move.l	a0,-(a7)
	lea.l	(L05099c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc680),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L047fc0),a3
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	movea.l	(a7)+,a0
	not.w	($0046,a3)
	move.l	#L00b578,($0002,a3)
	move.l	#L07989e,($0014,a0)
	moveq.l	#$1e,d0
	trap	#0
	rts

L00acb8:
	cmpi.w	#$0003,($0006,a3)
	bne	L00abf0
	cmpi.w	#$0001,($000a,a3)
	bne	L00abf0
	eori.w	#$8000,($0018,a0)
	move.l	#$00028000,d0
	tst.w	($0018,a0)
	bpl	L00ace0
	neg.l	d0
L00ace0:
	move.l	d0,($000c,a0)
	move.w	#$0104,($001c,a0)
	lea.l	(L00b580),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0001,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00ad10
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00ad10:
	move.b	(a1),($000b,a3)
	rts

L00ad16:
	bsr	L00a76e
	cmpi.b	#$04,($001c,a0)
	bne	L00ad5c
	clr.w	($001c,a0)
	clr.w	($000c,a3)
	move.l	#L0798e6,($0014,a0)
	lea.l	(L00b4cc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00ad58
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00ad58:
	move.b	(a1),($000b,a3)
L00ad5c:
	rts

L00ad5e:
	lea.l	(L047a80),a1
	move.w	($0004,a0),($0004,a1)
	move.w	($0008,a0),($0008,a1)
	move.w	($0018,a0),($0018,a1)
	cmpi.w	#$0002,($0006,a3)
	bne	L00ad9c
	cmpi.w	#$0002,($000a,a3)
	bne	L00ad8e
	ori.w	#$0200,($0002,a1)
	rts

L00ad8e:
	cmpi.w	#$0001,($000a,a3)
	bne	L00ae00
	moveq.l	#$18,d0
	trap	#0
	rts

L00ad9c:
	cmpi.w	#$0001,($000a,a3)
	bne	L00adea
	cmpi.w	#$0005,($0006,a3)
	bne	L00adea
	clr.w	($001c,a0)
	andi.w	#$feef,($0020,a0)
	move.l	#L0798e6,($0014,a0)
	lea.l	(L00b4cc),a1
	move.l	a1,($0002,a3)
	clr.w	($0006,a3)
	move.w	#$0004,($0008,a3)
	move.b	(a1)+,($0019,a0)
	bpl	L00ade4
	eori.w	#$8000,($0018,a0)
	andi.w	#$ff7f,($0018,a0)
L00ade4:
	move.b	(a1),($000b,a3)
	rts

L00adea:
	cmpi.w	#$0016,($000a,a3)
	bne	L00ae00
	cmpi.w	#$0003,($0006,a3)
	bne	L00ae00
	andi.w	#$00ff,($0002,a1)
L00ae00:
	rts

L00ae02:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00aeec
	move.w	#$007a,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	ori.w	#$0080,($0020,a1)
	clr.l	($0004,a0)
	clr.l	($0008,a0)
	move.w	($0024,a3),d0
	move.w	d0,($0004,a0)
	move.w	($0026,a3),d1
	move.w	d1,($0008,a0)
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	subi.w	#$0008.w,d3
	jsr	(L010280)
	andi.w	#$00ff,d0
	move.w	d0,d1
	cmpi.w	#$00c0,d0
	bls	L00ae60
	move.w	#$00c0,d0
	bra	L00ae7a
L00ae60:
	cmpi.w	#$0040,d0
	bcc	L00ae6c
	move.w	#$0040,d0
	bra	L00ae7a
L00ae6c:
	ext.w	d1
	move.w	($0018,a1),d2
	eor.w	d1,d2
	bpl	L00ae7a
	move.w	#$0080,d0
L00ae7a:
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#2,d0
	asl.l	#2,d1
	move.l	d0,d2
	asl.l	#3,d0
	sub.l	d2,d0
	move.l	d1,d2
	asl.l	#3,d1
	sub.l	d2,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	clr.w	($0020,a0)
	move.l	#L0796a6,($0014,a0)
	moveq.l	#$0f,d0
	move.w	($0060,a3),d1
	beq	L00aeba
	subq.w	#3,d1
	beq	L00aeba
	addq.w	#4,d0
	addq.w	#1,($0020,a0)
L00aeba:
	move.w	d0,($0018,a0)
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0004,($001e,a0)
	bsr	L009532
	lea.l	(L047fc0),a3
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	bsr	L00aef0
	moveq.l	#$4a,d0
	trap	#0
L00aeec:
	movea.l	a1,a0
	rts

L00aef0:
	jsr	(L0298a6)
	bcs	L00af8e
	move.w	#$007a,($0000.w,a0)
	clr.w	($0002,a0)
	moveq.l	#$00,d0
	move.l	d0,($0004,a0)
	move.l	d0,($0008,a0)
	jsr	(L01024e)
	andi.w	#$000f,d0
	subq.w	#7,d0
	add.w	($0024,a3),d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	subq.w	#3,d0
	add.w	($0026,a3),d0
	move.w	d0,($0008,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	subi.l	#$00008000,d0
	move.l	d0,($000c,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	andi.w	#$3fff,d0
	subi.l	#$00018000,d0
	move.l	d0,($0010,a0)
	move.l	#L0796a6,($0014,a0)
	move.w	#$400c,($0018,a0)
	clr.w	($001a,a0)
	move.w	#$0002,($001c,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	addi.w	#$0020,d0
	move.w	d0,($001e,a0)
	move.w	#$0003,($0020,a0)
L00af8e:
	rts

L00af90:
	move.w	#$000f,d7
L00af94:
	move.w	d7,-(a7)
	jsr	(L0298a6)
	bcs	L00b048
	move.w	#$007a,($0000.w,a0)
	clr.w	($0002,a0)
	move.l	(L047ab4),($0004,a0)
	move.l	(L047ab8),($0008,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	subq.w	#3,d0
	add.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	subq.w	#5,d0
	add.w	d0,($0008,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	subi.w	#$0020,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.l	#L07977e,($0014,a0)
	jsr	(L01024e)
	move.w	d0,d1
	andi.w	#$0006,d0
	bne	L00b016
	addq.w	#2,d0
L00b016:
	addi.w	#$000b,d0
	tst.w	d1
	bpl	L00b022
	ori.w	#$8000,d0
L00b022:
	move.w	d0,($0018,a0)
	move.w	d0,($002c,a0)
	clr.w	($002e,a0)
	clr.w	($001a,a0)
	move.w	#$0004,($001c,a0)
	move.w	#$0020,($001e,a0)
	clr.w	($0020,a0)
	move.w	#$0003,($002a,a0)
L00b048:
	move.w	(a7)+,d7
	dbra	d7,L00af94
	rts

L00b050:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00af8e
	move.w	#$000e,d1
	tst.w	(L047ac8)
	bmi	L00b06a
	neg.w	d1
L00b06a:
	move.w	d1,($002e,a0)
	move.w	#$007a,($0000.w,a0)
	clr.w	($0002,a0)
	moveq.l	#$00,d0
	move.w	d0,($0006,a0)
	move.w	d0,($000a,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	move.w	d0,($0004,a0)
	move.w	#$0003,($0008,a0)
	add.w	($0004,a1),d1
	sub.w	d1,d0
	neg.w	d0
	swap.w	d0
	asr.l	#8,d0
	move.l	d0,($000c,a0)
	move.l	#$0000e000,($0010,a0)
	move.l	#L07985e,($0014,a0)
	clr.w	($0018,a0)
	move.b	($0018,a1),($0018,a0)
	eori.w	#$8000,($0018,a0)
	clr.w	($001a,a0)
	move.w	#$0006,($001c,a0)
	move.w	#$0100,($001e,a0)
	clr.w	($0020,a0)
	move.l	($0004,a0),($0022,a0)
	move.l	($0008,a0),($0026,a0)
	move.w	#$0008,($002a,a0)
	move.w	#$0000,ccr
	rts

L00b0f2:
	move.w	($001c,a0),d0
	move.w	(L00b0fe,pc,d0.w),d0
	jmp	(L00b0fe,pc,d0.w)

L00b0fe:
	.dc.w	L00b106-L00b0fe
	.dc.w	L00b1ec-L00b0fe
	.dc.w	L00b23c-L00b0fe
	.dc.w	L00b35c-L00b0fe

L00b106:
	jsr	(L029a3e)
	bcc	L00b134
	clr.w	($0002,a0)
	move.l	($000c,a0),d0
	asr.l	#2,d0
	move.l	d0,($000c,a0)
	move.l	($0010,a0),d0
	asr.l	#2,d0
	addi.l	#$00020000,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	ori.w	#$4000,($0018,a0)
L00b134:
	jsr	(L029954)
	move.w	($0004,a0),d0
	subi.w	#$0120,d0
	cmpi.w	#$fec0,d0
	bcs	L00b156
	move.w	($0008,a0),d0
	subi.w	#$0120,d0
	cmpi.w	#$fec0,d0
	bcc	L00b168
L00b156:
	lea.l	(L047ab0),a1
	andi.w	#$ff7f,($0020,a1)
	jmp	(L029cca)

L00b168:
	tst.w	($0002,a0)
	bne	L00b178
	addi.l	#$00004000,($0010,a0)
	bra	L00b1b2
L00b178:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	beq	L00b1b2
	moveq.l	#$00,d0
	move.w	d0,($0002,a0)
	jsr	(L01024e)
	asl.l	#2,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	move.l	($000c,a0),d0
	asr.l	#2,d0
	move.l	d0,($000c,a0)
	ori.w	#$4000,($0018,a0)
L00b1b2:
	subq.w	#1,($001e,a0)
	bne	L00b1e4
	move.w	#$0007,($001e,a0)
	move.w	($0018,a0),d0
	addq.w	#1,d0
	tst.w	($0020,a0)
	beq	L00b1d6
	cmpi.b	#$17,d0
	bne	L00b1e0
	move.b	#$13,d0
	bra	L00b1e0
L00b1d6:
	cmpi.b	#$13,d0
	bne	L00b1e0
	move.b	#$0f,d0
L00b1e0:
	move.w	d0,($0018,a0)
L00b1e4:
	jsr	(L025416)
	rts

L00b1ec:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L00b200
	jmp	(L029cca)

L00b200:
	subq.w	#1,($001e,a0)
	bne	L00b20c
	jmp	(L029cca)

L00b20c:
	addi.l	#$00002000,($0010,a0)
	subq.w	#1,($0020,a0)
	bne	L00b234
	move.w	($0018,a0),d0
	move.w	#$0003,($0020,a0)
	addq.w	#1,d0
	cmpi.b	#$0f,d0
	bne	L00b230
	move.b	#$0c,d0
L00b230:
	move.w	d0,($0018,a0)
L00b234:
	jsr	(L025416)
	rts

L00b23c:
	jsr	(L029954)
	move.w	($0004,a0),d0
	subi.w	#$0120,d0
	cmpi.w	#$fec0,d0
	bcs	L00b156
	move.w	($0008,a0),d0
	subi.w	#$0120,d0
	cmpi.w	#$fec0,d0
	bcs	L00b156
	clr.w	d0
	move.b	($0020,a0),d0
	add.w	d0,d0
	move.w	(L00b29a,pc,d0.w),d0
	jsr	(L00b29a,pc,d0.w)
	subq.w	#1,($002a,a0)
	bne	L00b292
	move.w	#$0003,($002a,a0)
	move.w	($002e,a0),d0
	eori.w	#$0001,d0
	move.w	d0,($002e,a0)
	add.w	($002c,a0),d0
	move.w	d0,($0018,a0)
L00b292:
	jsr	(L025416)
	rts

L00b29a:
	.dc.w	L00b29e-L00b29a
	.dc.w	L00b306-L00b29a

L00b29e:
	subq.w	#1,($001e,a0)
	beq	L00b2ce
	move.l	#$00001800,d0
	move.l	($000c,a0),d1
	bpl	L00b2b2
	neg.l	d0
L00b2b2:
	sub.l	d0,d1
	move.l	d1,($000c,a0)
	move.l	#$00001800,d0
	move.l	($0010,a0),d1
	bpl	L00b2c6
	neg.l	d0
L00b2c6:
	sub.l	d0,d1
	move.l	d1,($0010,a0)
	rts

L00b2ce:
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	addq.b	#1,($0020,a0)
	move.l	#$fe000100,($0022,a0)
	jsr	(L01024e)
	andi.w	#$1f00,d0
	addi.w	#$8000,d0
	move.w	d0,($0026,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	move.w	d0,($0028,a0)
	rts

L00b306:
	move.w	($0022,a0),d1
	jsr	(L01024e)
	andi.w	#$07ff,d0
	add.w	d0,($0026,a0)
	moveq.l	#$00,d0
	move.b	($0026,a0),d0
	jsr	(L010440)
	asr.w	#1,d0
	ext.l	d0
	ext.l	d1
	add.l	d1,d0
	add.l	d0,($000c,a0)
	move.w	($0024,a0),d1
	jsr	(L01024e)
	andi.w	#$07ff,d0
	add.w	d0,($0028,a0)
	moveq.l	#$00,d0
	move.b	($0028,a0),d0
	jsr	(L010440)
	asr.w	#1,d0
	ext.l	d0
	ext.l	d1
	add.l	d1,d0
	add.l	d0,($0010,a0)
	rts

L00b35c:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L00b37c
	lea.l	(L047ab0),a1
	ori.w	#$0008,($0020,a1)
	jmp	(L029cca)

L00b37c:
	cmpi.b	#$04,($0020,a0)
	beq	L00b394
	move.l	($000c,a0),d0
	add.l	d0,($0022,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0026,a0)
L00b394:
	moveq.l	#$00,d0
	move.b	($0020,a0),d0
	move.w	(L00b3aa,pc,d0.w),d0
	jsr	(L00b3aa,pc,d0.w)
	jsr	(L025416)
	rts

L00b3aa:
	.dc.w	L00b3b0-L00b3aa
	.dc.w	L00b440-L00b3aa
	.dc.w	L00b490-L00b3aa

L00b3b0:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	beq	L00b408
	move.w	d0,($001e,a0)
	jsr	(L010440)
	ext.l	d0
	move.l	d0,d1
	asl.l	#7,d0
	add.l	($0022,a0),d0
	move.l	d0,($0004,a0)
	asl.l	#5,d1
	add.l	($0026,a0),d1
	move.l	d1,($0008,a0)
	subq.w	#1,($002a,a0)
	bne	L00b406
	move.w	#$0008,($002a,a0)
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0020,($001e,a0)
	bcs	L00b3fe
	andi.w	#$ff07,d0
	move.w	d0,($0018,a0)
	rts

L00b3fe:
	andi.w	#$ff03,d0
	move.w	d0,($0018,a0)
L00b406:
	rts

L00b408:
	lea.l	(L047ab0),a1
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.w	($002e,a0),d0
	add.w	d0,($0004,a0)
	addi.w	#$0013,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0020,($001e,a0)
	clr.b	($0019,a0)
	addq.b	#2,($0020,a0)
	rts

L00b440:
	subq.w	#1,($001e,a0)
	bne	L00b48e
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.b	#$04,d0
	bne	L00b484
	lea.l	(L047ab0),a1
	ori.w	#$0040,($0020,a1)
	addq.b	#2,($0020,a0)
	move.l	#$02000100,($0022,a0)
	jsr	(L01024e)
	andi.w	#$3f00,d0
	subi.w	#$2000,d0
	move.w	d0,($0026,a0)
	move.w	#$8000,($0028,a0)
	moveq.l	#$00,d0
L00b484:
	move.w	#$0020,($001e,a0)
	move.w	d0,($0018,a0)
L00b48e:
	rts

L00b490:
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	bsr	L00b306
	subq.w	#1,($001e,a0)
	bne	L00b48e
	move.w	#$0008,($001e,a0)
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.b	#$08,d0
	bne	L00b4c4
	move.b	#$04,d0
L00b4c4:
	move.w	d0,($0018,a0)
	rts

L00b4ca:
	.dc.b	$00,$63
L00b4cc:
	.dc.b	$00,$08,$01,$08,$02,$08,$03,$08
L00b4d4:
	.dc.b	$04,$02
L00b4d6:
	.dc.b	$05,$63
L00b4d8:
	.dc.b	$04,$05
L00b4da:
	.dc.b	$06,$63
L00b4dc:
	.dc.b	$07,$63
L00b4de:
	.dc.b	$04,$06
L00b4e0:
	.dc.b	$08,$04,$89,$0c,$0a,$03,$0b,$06
	.dc.b	$00,$63
L00b4ea:
	.dc.b	$8b,$14,$8a,$08,$09,$08,$8a,$0a
	.dc.b	$09,$12,$88,$63
L00b4f6:
	.dc.b	$00,$04,$01,$04,$02,$04,$03,$04
L00b4fe:
	.dc.b	$00,$08,$01,$08,$02,$08,$03,$08
L00b506:
	.dc.b	$00,$0e,$01,$0d,$02,$0b,$03,$14
	.dc.b	$04,$1e,$05,$0c,$06,$0c,$05,$14
	.dc.b	$06,$08,$05,$06,$06,$06,$04,$0a
	.dc.b	$05,$04,$06,$04,$05,$08,$04,$04
	.dc.b	$05,$04,$06,$0a,$07,$1e,$08,$0d
	.dc.b	$09,$0a,$0a,$0e,$0b,$06,$0c,$39
	.dc.b	$0b,$0c
L00b538:
	.dc.b	$00,$20,$01,$28,$02,$3c,$03,$12
	.dc.b	$04,$0c,$05,$08,$06,$28,$07,$01
	.dc.b	$06,$05,$07,$02,$06,$04,$07,$03
	.dc.b	$06,$03,$07,$03,$06,$03,$07,$04
	.dc.b	$06,$02,$07,$05,$06,$01,$07,$06
	.dc.b	$08,$01,$07,$05,$08,$02,$07,$04
	.dc.b	$08,$03,$07,$03,$08,$03,$07,$02
	.dc.b	$08,$04,$07,$01,$08,$ff,$08,$ff
L00b578:
	.dc.b	$08,$04,$89,$0c,$0a,$03,$03,$06
L00b580:
	.dc.b	$04,$05
L00b582:
	.dc.b	$00,$05,$01,$04,$02,$03,$03,$18
	.dc.b	$02,$08,$01,$08
L00b58e:
	.dc.l	L00b5ae
	.dc.l	L00b60e
	.dc.l	L00b662
	.dc.l	L00b69e
L00b59e:
	.dc.b	$00,$ff,$00,$08,$00,$7f,$00,$07
	.dc.b	$00,$1f,$00,$05,$00,$07,$00,$03
L00b5ae:
	.dc.b	$00,$ec,$00,$c8,$00,$00,$00,$00
	.dc.l	L00b758
	.dc.b	$00,$10,$00,$c0,$00,$00,$00,$00
	.dc.l	L00b700
	.dc.b	$00,$e6,$00,$b2,$00,$00,$00,$00
	.dc.l	L00b746
	.dc.b	$00,$12,$00,$84,$00,$00,$00,$00
	.dc.l	L00b6e6
	.dc.b	$00,$f0,$00,$80,$00,$00,$00,$00
	.dc.l	L00b72c
	.dc.b	$00,$14,$00,$54,$00,$00,$00,$00
	.dc.l	L00b6d4
	.dc.b	$00,$f0,$00,$30,$00,$00,$00,$00
	.dc.l	L00b71a
	.dc.b	$00,$1c,$00,$32,$00,$00,$00,$00
	.dc.l	L00b6c2
L00b60e:
	.dc.b	$00,$60,$00,$28,$00,$e3,$8c,$00
	.dc.l	L00b77a
	.dc.b	$00,$b8,$00,$48,$00,$e3,$80,$00
	.dc.l	L00b822
	.dc.b	$00,$48,$00,$48,$00,$e3,$8a,$00
	.dc.l	L00b79c
	.dc.b	$00,$c0,$00,$70,$00,$e3,$82,$00
	.dc.l	L00b84a
	.dc.b	$00,$48,$00,$98,$00,$e3,$88,$00
	.dc.l	L00b7c4
	.dc.b	$00,$60,$00,$b8,$00,$e3,$86,$00
	.dc.l	L00b7f6
	.dc.b	$00,$80,$00,$c0,$00,$e3,$84,$00
	.dc.l	L00b872
L00b662:
	.dc.b	$00,$80,$00,$1c,$00,$e3,$92,$00
	.dc.l	L00b894
	.dc.b	$00,$a0,$00,$28,$00,$e3,$8e,$00
	.dc.l	L00b8a4
	.dc.b	$00,$bc,$00,$98,$00,$e3,$90,$00
	.dc.l	L00b8be
	.dc.b	$00,$a4,$00,$b8,$00,$e3,$94,$00
	.dc.l	L00b8e4
	.dc.b	$00,$40,$00,$70,$00,$e3,$8c,$00
	.dc.l	L00b90a
L00b69e:
	.dc.b	$00,$30,$00,$70,$00,$00,$00,$00
	.dc.l	L00b926
	.dc.b	$00,$50,$00,$c0,$00,$00,$00,$00
	.dc.l	L00b930
	.dc.b	$00,$bc,$00,$b4,$00,$00,$00,$00
	.dc.l	L00b93a
L00b6c2:
	.dc.b	$00,$02,$00,$c0,$80,$01
	.dc.l	L0642bc
	.dc.b	$00,$c0,$80,$41
	.dc.l	L0642dc
L00b6d4:
	.dc.b	$00,$02,$00,$c1,$00,$01
	.dc.l	L06433c
	.dc.b	$00,$c1,$00,$41
	.dc.l	L06435c
L00b6e6:
	.dc.b	$00,$03,$00,$c1,$80,$01
	.dc.l	L0643bc
	.dc.b	$00,$c2,$00,$01
	.dc.l	L0645bc
	.dc.b	$00,$c2,$00,$41
	.dc.l	L0645dc
L00b700:
	.dc.b	$00,$03,$00,$c2,$80,$01
	.dc.l	L06463c
	.dc.b	$00,$c3,$00,$01
	.dc.l	L0646bc
	.dc.b	$00,$c3,$00,$41
	.dc.l	L0646dc
L00b71a:
	.dc.b	$00,$02,$00,$c0,$81,$c1
	.dc.l	L06449c
	.dc.b	$00,$c1,$01,$c1
	.dc.l	L06451c
L00b72c:
	.dc.b	$00,$03,$00,$c1,$81,$c1
	.dc.l	L06459c
	.dc.b	$00,$c2,$01,$81
	.dc.l	L0647fc
	.dc.b	$00,$c2,$01,$c1
	.dc.l	L06441c
L00b746:
	.dc.b	$00,$02,$00,$c2,$81,$81
	.dc.l	L06485c
	.dc.b	$00,$c2,$81,$c1
	.dc.l	L06487c
L00b758:
	.dc.b	$00,$04,$00,$c3,$01,$81
	.dc.l	L0648dc
	.dc.b	$00,$c3,$81,$81
	.dc.l	L06495c
	.dc.b	$00,$c3,$01,$c1
	.dc.l	L0648fc
	.dc.b	$00,$c3,$81,$c1
	.dc.l	L06497c
L00b77a:
	.dc.b	$80,$03,$00,$20,$00,$a0,$00,$03
	.dc.b	$05,$42,$05,$43,$05,$44,$00,$a0
	.dc.b	$00,$04,$05,$49,$05,$4a,$05,$4b
	.dc.b	$05,$4c,$00,$b0,$00,$02,$05,$51
	.dc.b	$05,$52
L00b79c:
	.dc.b	$80,$04,$00,$38,$00,$80,$00,$01
	.dc.b	$05,$56,$00,$70,$00,$04,$05,$5a
	.dc.b	$05,$5b,$05,$5c,$05,$5d,$00,$70
	.dc.b	$00,$04,$05,$61,$05,$62,$05,$63
	.dc.b	$05,$64,$00,$90,$00,$01,$05,$69
L00b7c4:
	.dc.b	$80,$05,$00,$88,$00,$70,$00,$03
	.dc.b	$05,$95,$05,$96,$05,$97,$00,$70
	.dc.b	$00,$03,$05,$99,$05,$9a,$05,$9b
	.dc.b	$00,$70,$00,$04,$05,$9c,$05,$9d
	.dc.b	$05,$9e,$05,$9f,$00,$80,$00,$02
	.dc.b	$05,$a1,$05,$a2,$00,$80,$00,$01
	.dc.b	$05,$a4
L00b7f6:
	.dc.b	$80,$04,$00,$a8,$00,$b0,$00,$02
	.dc.b	$05,$a6,$05,$a7,$00,$a0,$00,$04
	.dc.b	$05,$ab,$05,$ac,$05,$ad,$05,$ae
	.dc.b	$00,$a0,$00,$04,$05,$b1,$05,$b2
	.dc.b	$05,$b3,$05,$b4,$00,$c0,$00,$02
	.dc.b	$05,$ba,$05,$bb
L00b822:
	.dc.b	$80,$04,$00,$38,$01,$70,$00,$01
	.dc.b	$05,$7d,$01,$50,$00,$04,$05,$7e
	.dc.b	$05,$7f,$05,$80,$05,$81,$01,$50
	.dc.b	$00,$04,$45,$64,$05,$82,$05,$83
	.dc.b	$05,$84,$01,$60,$00,$01,$05,$85
L00b84a:
	.dc.b	$80,$04,$00,$60,$01,$70,$00,$02
	.dc.b	$05,$88,$05,$89,$01,$70,$00,$03
	.dc.b	$05,$8b,$05,$8c,$05,$8d,$01,$70
	.dc.b	$00,$03,$05,$8e,$05,$8f,$05,$90
	.dc.b	$01,$70,$00,$02,$05,$91,$05,$92
L00b872:
	.dc.b	$80,$03,$00,$b8,$00,$f0,$00,$02
	.dc.b	$05,$b5,$05,$c9,$00,$f0,$00,$03
	.dc.b	$05,$bc,$05,$cd,$05,$ce,$00,$e0
	.dc.b	$00,$04,$05,$c1,$05,$c2,$05,$d1
	.dc.b	$05,$d2
L00b894:
	.dc.b	$80,$01,$00,$20,$00,$e0,$00,$04
	.dc.b	$05,$d3,$05,$d4,$05,$db,$05,$dc
L00b8a4:
	.dc.b	$80,$03,$00,$20,$01,$30,$00,$02
	.dc.b	$05,$dd,$05,$de,$01,$30,$00,$02
	.dc.b	$05,$df,$05,$e0,$01,$30,$00,$01
	.dc.b	$05,$e1
L00b8be:
	.dc.b	$80,$04,$00,$88,$01,$60,$00,$02
	.dc.b	$05,$e2,$05,$e3,$01,$60,$00,$03
	.dc.b	$05,$e4,$05,$e5,$05,$e6,$01,$60
	.dc.b	$00,$03,$05,$e8,$05,$e9,$05,$ea
	.dc.b	$01,$70,$00,$01,$05,$eb
L00b8e4:
	.dc.b	$80,$04,$00,$a8,$01,$30,$00,$01
	.dc.b	$05,$ec,$01,$30,$00,$03,$05,$ed
	.dc.b	$05,$ee,$05,$ef,$01,$30,$00,$03
	.dc.b	$05,$f0,$05,$f1,$05,$f2,$01,$30
	.dc.b	$00,$02,$05,$f3,$05,$f4
L00b90a:
	.dc.b	$80,$03,$00,$60,$00,$70,$00,$02
	.dc.b	$05,$d5,$05,$d6,$00,$70,$00,$02
	.dc.b	$05,$d7,$05,$d8,$00,$70,$00,$02
	.dc.b	$05,$d9,$05,$da
L00b926:
	.dc.b	$00,$01,$00,$c1,$80,$41
	.dc.l	L0643dc
L00b930:
	.dc.b	$00,$01,$00,$c3,$00,$81
	.dc.l	L0646fc
L00b93a:
	.dc.b	$00,$02,$00,$c2,$81,$41
	.dc.l	L06483c
	.dc.b	$00,$c3,$01,$41
	.dc.l	L0648bc

L00b94c:
	lea.l	(L047e70),a0
	move.w	#$000b,($0030,a0)
	move.w	#$000b,($0060,a0)
	move.w	#$000b,($0090,a0)
	move.w	#$000b,($00c0,a0)
	move.w	#$0000,($0032,a0)
	move.w	#$0000,($0062,a0)
	move.w	#$0000,($0092,a0)
	move.w	#$0000,($00c2,a0)
	move.w	#$003d,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0001,($001a,a0)
	clr.w	($0028,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	clr.w	(L047fc2)
	move.w	#$001f,(L047fc4)
	clr.w	(L047fc6)
	clr.w	(L047fc8)
	clr.w	(L047fca)
	clr.w	(L047fcc)
	clr.w	(L047fd2)
L00b9ca:
	lea.l	(L0473f0),a1
	move.w	($0004,a1),d0
	addi.w	#$0008.w,d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d0
	addi.w	#$fff8,d0
	move.w	d0,($0008,a0)
	move.w	($0018,a1),d0
	ori.w	#$4000,d0
	move.w	d0,($0018,a0)
	move.l	($0014,a1),($0014,a0)
	rts

L00b9fc:
	move.w	($0028,a0),d0
	add.w	d0,d0
	move.w	(L00ba0a,pc,d0.w),d0
	jmp	(L00ba0a,pc,d0.w)

L00ba0a:
	.dc.w	L00ba10-L00ba0a
	.dc.w	L00bbbe-L00ba0a
	.dc.w	L00bc56-L00ba0a

L00ba10:
	cmpi.w	#$0500,(L047f7a)
	bne	L00baa6
	moveq.l	#$fe,d0
	trap	#0
	move.w	#$001f,($001a,a0)
	addq.w	#1,($0028,a0)
	clr.w	(L04735a)
	clr.w	(L047fc8)
	clr.w	(L048048)
	clr.w	(L048054)
	moveq.l	#$00,d0
	move.l	d0,($0030,a0)
	move.l	d0,($0060,a0)
	move.l	d0,($0090,a0)
	move.l	d0,($00c0,a0)
	move.w	#$0006,(L04731e)
	jsr	(L018c0e)
	move.b	(L07afa6),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L07afa8),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0017,d7
L00ba84:
	move.l	(a5)+,(a6)+
	dbra	d7,L00ba84
	lea.l	(L047510),a1
	move.w	#$001f,d1
	moveq.l	#$00,d0
L00ba96:
	move.w	d0,($0000.w,a1)
	move.w	d0,($0002,a1)
	lea.l	($0030,a1),a1
	dbra	d1,L00ba96
L00baa6:
	bsr	L00b9ca
L00baaa:
	move.l	a0,-(a7)
	lea.l	(L0473f0),a0
L00bab2:
	tst.w	($0000.w,a0)
	beq	L00bac2
	btst.b	#$05,($0002,a0)
	bne	L00bac2
	bsr	L00bb16
L00bac2:
	lea.l	($0030,a0),a0
	cmpa.l	#L0474e0,a0
	bne	L00bab2
	lea.l	(L0474e0),a0
L00bad4:
	tst.w	($0000.w,a0)
	beq	L00bae4
	btst.b	#$05,($0002,a0)
	bne	L00bae4
	bsr	L00bb16
L00bae4:
	lea.l	($0030,a0),a0
	cmpa.l	#L047ae0,a0
	bne	L00bad4
	lea.l	(L047ae0),a0
L00baf6:
	tst.w	($0000.w,a0)
	beq	L00bb06
	btst.b	#$05,($0002,a0)
	bne	L00bb06
	bsr	L00bb16
L00bb06:
	lea.l	($0030,a0),a0
	cmpa.l	#L047e70,a0
	bne	L00baf6
	movea.l	(a7)+,a0
	rts

L00bb16:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	ori.w	#$4000,d0
	move.w	($0004,a0),d1
	addi.w	#$0008.w,d1
	move.w	($0008,a0),d2
	addi.w	#$fff8,d2
	move.w	#$0001,d3
	jsr	(L02542a)
	rts

L00bb3e:
	lea.l	(L0473f0),a1
	cmpi.w	#$0108,($001c,a1)
	beq	L00bbbc
	cmpi.b	#$01,($001c,a1)
	bne	L00bb88
	tst.b	($0019,a1)
	beq	L00bb88
	cmpi.w	#$0006,($0020,a1)
	beq	L00bb94
	cmpi.w	#$0008,($0020,a1)
	beq	L00bb94
	movea.l	($0044,a1),a5
	move.w	($0048,a1),d0
	ori.w	#$4000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	#$0001,d3
	jsr	(L02542a)
L00bb88:
	move.w	#$0001,d3
	jsr	(L025404)
	rts

L00bb94:
	move.w	#$0001,d3
	jsr	(L025404)
	movea.l	($0044,a1),a5
	move.w	($0048,a1),d0
	ori.w	#$4000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	#$0001,d3
	jsr	(L02542a)
L00bbbc:
	rts

L00bbbe:
	move.w	(L047fca),d0
	addq.w	#1,d0
	move.w	d0,(L047fca)
	cmpi.w	#$0090,d0
	bcs	L00bc24
	tst.w	(L04731e)
	bne	L00bc24
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L031252)
	jsr	(L041a64)
	movem.l	(a7)+,d0-d7/a0-a6
	moveq.l	#$80,d0
	trap	#0
	moveq.l	#$b6,d0
	trap	#0
	move.w	#$0000,(L04710e)
	move.w	#$0100,(L047112)
	addq.w	#1,($0028,a0)
	clr.w	(L047fca)
	move.w	#$0300,($0002,a0)
	move.w	#$001f,(L047fc4)
	jsr	(L0039f0)
L00bc24:
	lea.l	(L048040),a1
	jsr	(L041638)
	bsr	L00c888
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	ori.w	#$4000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.l	#$00700001,d3
	jsr	(L0254ea)
	rts

L00bc56:
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a38)
	movem.l	(a7)+,d0-d7/a0-a6
	move.w	(L0481e2),-(a7)
	move.w	(L0481e4),-(a7)
	moveq.l	#$00,d7
	lea.l	(L0473f0),a1
	cmpi.b	#$07,($001d,a0)
	beq	L00bcae
	move.w	(L047fc8),d0
	add.w	d0,d0
	move.w	(L00bc90,pc,d0.w),d0
	jmp	(L00bc90,pc,d0.w)

L00bc90:
	.dc.w	L00bfb0-L00bc90
	.dc.w	L00c016-L00bc90
	.dc.w	L00bfb0-L00bc90
	.dc.w	L00be36-L00bc90
	.dc.w	L00bd02-L00bc90

L00bc9a:
	move.w	#$0001,(L047fc8)
	move.w	#$0000,(L047fca)
	bra	L00c0ec
L00bcae:
	move.w	#$0080,(L047fca)
	move.w	#$0000,(L047fc8)
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	bpl	L00bcd0
	bset.l	#$02,d7
	bra	L00c0ec
L00bcd0:
	bset.l	#$03,d7
	bra	L00c0ec
L00bcd8:
	move.w	#$0040,(L047fca)
	move.w	#$0000,(L047fc8)
	jsr	(L01024e)
	ror.w	#1,d0
	bcs	L00bcfa
	bset.l	#$02,d7
	bra	L00c0ec
L00bcfa:
	bset.l	#$03,d7
	bra	L00c0ec
L00bd02:
	cmpi.w	#$00b8,($0008,a0)
	beq	L00bd6c
	bcs	L00bd9a
	jsr	(L01024e)
	andi.w	#$007f,d0
	beq	L00bcd8
	bset.l	#$02,d7
	cmpi.w	#$0034,($0004,a0)
	bcc	L00c0ec
	cmpi.w	#$0058,($0004,a1)
	bcc	L00bd46
	cmpi.w	#$0088,($0008,a1)
	bcc	L00bd46
	cmpi.w	#$0054,($0008,a1)
	bcs	L00bd46
	clr.b	d7
	bra	L00c14e
L00bd46:
	bset.l	#$04,d7
	move.w	#$0000,(L047fca)
	jsr	(L01024e)
	andi.w	#$0003,d0
	bne	L00c0ec
	move.w	#$0002,(L047fca)
	bra	L00c0ec
L00bd6c:
	cmpi.b	#$03,($001d,a0)
	beq	L00bd92
	bset.l	#$03,d7
	cmpi.w	#$0010,($0004,a0)
	bcs	L00c0ec
	bset.l	#$04,d7
	move.w	#$0001,(L047fca)
	bra	L00c0ec
L00bd92:
	bset.l	#$02,d7
	bra	L00c0ec
L00bd9a:
	move.w	(L047fca),d0
	cmpi.w	#$0001,d0
	beq	L00bdaa
	bset.l	#$02,d7
L00bdaa:
	tst.w	d0
	bne	L00bdde
	cmpi.w	#$0058,($0004,a1)
	bcc	L00bdde
	cmpi.w	#$0090,($0008,a1)
	bcc	L00bdde
	move.w	#$0003,(L047fca)
	move.w	#$0001,(L047fc8)
	move.w	#$0002,(L047fcc)
	bset.l	#$04,d7
	bra	L00c078
L00bdde:
	cmpi.b	#$03,($001d,a0)
	beq	L00c0ec
	cmpi.w	#$0034,($0004,a0)
	bcs	L00be2e
	move.w	(L0473f4),d1
	cmpi.w	#$0060,d1
	bcs	L00be02
	cmpi.w	#$0078,d1
	bcs	L00be0a
L00be02:
	cmpi.w	#$0050,($0004,a0)
	bcs	L00be2e
L00be0a:
	cmpi.w	#$00a0,d1
	bcc	L00bf6e
	cmpi.w	#$0088,d1
	bcc	L00bf82
	cmpi.w	#$0060,d1
	bcc	L00bf64
	cmpi.w	#$0030,d1
	bcc	L00bf82
	bra	L00bf6e
L00be2e:
	bset.l	#$03,d7
	bra	L00c0ec
L00be36:
	cmpi.w	#$00b8,($0008,a0)
	beq	L00bea2
	bcs	L00bed2
	jsr	(L01024e)
	andi.w	#$007f,d0
	beq	L00bcd8
	bset.l	#$03,d7
	cmpi.w	#$00cc,($0004,a0)
	bcs	L00c0ec
	cmpi.w	#$00a7,($0004,a1)
	bcs	L00be7c
	cmpi.w	#$0088,($0008,a1)
	bcc	L00be7c
	cmpi.w	#$0054,($0008,a1)
	bcs	L00be7c
	clr.b	d7
	bra	L00c14e
L00be7c:
	bset.l	#$04,d7
	move.w	#$0000,(L047fca)
	jsr	(L01024e)
	andi.w	#$0003,d0
	bne	L00c0ec
	move.w	#$0002,(L047fca)
	bra	L00c0ec
L00bea2:
	cmpi.b	#$03,($001d,a0)
	beq	L00bd92
	bset.l	#$02,d7
	cmpi.w	#$00f0,($0004,a0)
	bcc	L00c0ec
	bset.l	#$04,d7
	move.w	#$0001,(L047fca)
	bra	L00c0ec
L00beca:
	bset.l	#$03,d7
	bra	L00c0ec
L00bed2:
	move.w	(L047fca),d0
	cmpi.w	#$0001,d0
	beq	L00bee2
	bset.l	#$03,d7
L00bee2:
	tst.w	d0
	bne	L00bf16
	cmpi.w	#$00a8,($0004,a1)
	bcs	L00bf16
	cmpi.w	#$0090,($0008,a1)
	bcc	L00bf16
	move.w	#$0003,(L047fca)
	move.w	#$0001,(L047fc8)
	move.w	#$0002,(L047fcc)
	bset.l	#$04,d7
	bra	L00c078
L00bf16:
	cmpi.b	#$03,($001d,a0)
	beq	L00c0ec
	cmpi.w	#$00cc,($0004,a0)
	bcc	L00bf5c
	move.w	(L0473f4),d1
	cmpi.w	#$00a0,d1
	bcc	L00bf3a
	cmpi.w	#$0088,d1
	bcc	L00bf42
L00bf3a:
	cmpi.w	#$00b0,($0004,a0)
	bcc	L00bf5c
L00bf42:
	cmpi.w	#$0060,d1
	bcs	L00bf6e
	cmpi.w	#$0078,d1
	bcs	L00bf82
	cmpi.w	#$00a0,d1
	bcs	L00bf64
	cmpi.w	#$00d0,d1
	bcs	L00bf82
	bra	L00bf6e
L00bf5c:
	bset.l	#$02,d7
	bra	L00c0ec
L00bf64:
	move.w	#$0001,(L047fca)
	bra	L00bf98
L00bf6e:
	btst.b	#$00,(L047355)
	bne	L00bf82
	cmpi.b	#$01,(L04740d)
	bne	L00bf8c
L00bf82:
	move.w	#$0002,(L047fca)
	bra	L00bf98
L00bf8c:
	move.w	#$0003,(L047fca)
	bra.w	L00bf98
L00bf98:
	move.w	#$0001,(L047fc8)
	move.w	#$001c,(L047fcc)
	bset.l	#$04,d7
	bra	L00c078
L00bfb0:
	cmpi.w	#$004a,($0004,a0)
	bcc	L00bfcc
	move.w	#$0004,(L047fc8)
	move.w	#$0000,(L047fca)
	bra	L00c0ec
L00bfcc:
	cmpi.w	#$00b6,($0004,a0)
	bcs	L00bfe8
	move.w	#$0003,(L047fc8)
	move.w	#$0000,(L047fca)
	bra	L00c0ec
L00bfe8:
	subq.w	#1,(L047fca)
	beq	L00bc9a
	jsr	(L01024e)
	andi.w	#$003f,d0
	beq	L00bc9a
	tst.w	($0018,a0)
	bmi	L00c00e
	bset.l	#$02,d7
	bra	L00c0ec
L00c00e:
	bset.l	#$03,d7
	bra	L00c0ec
L00c016:
	move.w	(L047fca),d0
	add.w	d0,d0
	move.w	(L00c026,pc,d0.w),d0
	jmp	(L00c026,pc,d0.w)

L00c026:
	.dc.w	L00c02e-L00c026
	.dc.w	L00c08e-L00c026
	.dc.w	L00c094-L00c026
	.dc.w	L00c09c-L00c026

L00c02e:
	jsr	(L01024e)
	andi.w	#$00ff,d0
	beq	L00bcd8
	move.w	($0004,a0),d0
	sub.w	($0004,a1),d0
	tst.w	($0018,a0)
	bpl	L00c04c
	neg.w	d0
L00c04c:
	moveq.l	#$01,d1
	cmpi.w	#$0018,d0
	bcs	L00c066
	addq.w	#1,d1
	cmpi.w	#$0040,d0
	bcs	L00c066
	addq.w	#1,d1
	cmpi.w	#$0060,d0
	bcs	L00c066
	bra	L00c078
L00c066:
	move.w	#$0010,(L047fcc)
	move.w	d1,(L047fca)
	bset.l	#$04,d7
L00c078:
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	bpl	L00c088
	bset.l	#$02,d7
	bra	L00c0ec
L00c088:
	bset.l	#$03,d7
	bra	L00c0ec
L00c08e:
	bset.l	#$01,d7
	bra	L00c0ac
L00c094:
	bset.l	#$01,d7
	bra.w	L00c09c
L00c09c:
	tst.w	($0018,a0)
	bmi	L00c0a8
	bset.l	#$02,d7
	bra	L00c0ac
L00c0a8:
	bset.l	#$03,d7
L00c0ac:
	subq.w	#1,(L047fcc)
	beq	L00c0d4
	bmi	L00c0c6
	bset.l	#$04,d7
	cmpi.b	#$03,($001d,a0)
	bne	L00bcae
	bra	L00c0ec
L00c0c6:
	cmpi.b	#$03,($001d,a0)
	bne	L00bcae
	bset.l	#$05,d7
L00c0d4:
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	bpl	L00c0e4
	bset.l	#$02,d7
	bra	L00c0ec
L00c0e4:
	bset.l	#$03,d7
	bra.w	L00c0ec
L00c0ec:
	cmpi.b	#$01,($001c,a1)
	bne	L00c120
	move.w	($0008,a1),d0
	sub.w	($0008,a0),d0
	bpl	L00c100
	neg.w	d0
L00c100:
	cmpi.w	#$0030,d0
	bcc	L00c120
	move.w	($0004,a0),d0
	sub.w	($0004,a1),d0
	tst.w	($0018,a1)
	bmi	L00c116
	neg.w	d0
L00c116:
	cmpi.w	#$0050,d0
	bcc	L00c120
	bset.l	#$04,d7
L00c120:
	cmpi.w	#$00d8,($0008,a0)
	bne	L00c14e
	btst.l	#$04,d7
	beq	L00c14e
	move.w	($0004,a0),d0
	cmpi.w	#$0034,d0
	bcs	L00c14e
	cmpi.w	#$0058,d0
	bcs	L00c14a
	cmpi.w	#$00a8,d0
	bcs	L00c14e
	cmpi.w	#$00cb,d0
	bcc	L00c14e
L00c14a:
	bclr.l	#$04,d7
L00c14e:
	cmpi.w	#$0002,(L047f66)
	bcs	L00c1dc
	move.w	($0004,a0),d0
	sub.w	($0004,a1),d0
	tst.w	($0018,a0)
	bpl	L00c16a
	neg.w	d0
L00c16a:
	tst.w	d0
	bmi	L00c1dc
	move.b	($002f,a0),d1
	cmpi.w	#$0003,d1
	beq	L00c18c
	cmpi.w	#$0004,d1
	beq	L00c18c
	cmpi.w	#$0005,d1
	beq	L00c1a0
	cmpi.w	#$0006,d1
	beq	L00c1a0
	bra	L00c1dc
L00c18c:
	move.w	($0008,a0),d1
	sub.w	($0008,a1),d1
	bpl	L00c198
	neg.w	d1
L00c198:
	cmpi.w	#$0010,d1
	bcc	L00c1dc
	bra	L00c1ac
L00c1a0:
	jsr	(L01024e)
	andi.w	#$0007,d0
	bne	L00c1dc
L00c1ac:
	tst.w	($0060,a0)
	beq	L00c1d0
	cmpi.b	#$01,($002e,a0)
	bcs	L00c1dc
	tst.w	($0090,a0)
	beq	L00c1d0
	cmpi.b	#$02,($002e,a0)
	bcs	L00c1dc
	tst.w	($00c0,a0)
	beq	L00c1d0
	bra	L00c1dc
L00c1d0:
	bset.l	#$00,d7
	bset.l	#$05,d7
	bra.w	L00c1dc
L00c1dc:
	move.w	($0004,a0),d0
	sub.w	($0004,a1),d0
	tst.w	($0018,a0)
	bpl	L00c1ec
	neg.w	d0
L00c1ec:
	tst.w	d0
	bmi	L00c208
	cmpi.w	#$0038,d0
	bcc	L00c208
	move.w	($0008,a0),d1
	cmp.w	($0008,a1),d1
	bne	L00c208
	bset.l	#$01,d7
	bset.l	#$05,d7
L00c208:
	move.b	d7,(L0481e2)
	move.b	d7,(L0481e4)
	move.l	(L04741c),($002c,a0)
	move.w	(L047fc2),d0
	beq	L00c232
	subq.w	#1,d0
	move.w	d0,(L047fc2)
	bne	L00c232
	clr.b	($001a,a0)
L00c232:
	cmpi.b	#$08,($001d,a0)
	beq	L00c2ce
	tst.b	($001a,a0)
	beq	L00c2ce
	tst.w	(L047fc2)
	bne	L00c2ca
	move.b	($001a,a0),d0
	andi.w	#$003f,d0
	move.w	(L047fc4),d7
	sub.w	d0,d7
	bcc	L00c260
	moveq.l	#$00,d7
L00c260:
	move.w	d7,(L047fc4)
	andi.w	#$00ff,d7
	lsr.w	#1,d7
	addq.w	#1,d7
	move.w	d7,(L047fbe)
	cmpi.b	#$05,($001d,a0)
	beq	L00c2c2
	tst.b	($001a,a0)
	bmi	L00c290
	move.w	#$0000,($0018,a0)
	move.w	#$0108,($001e,a0)
	bra	L00c29c
L00c290:
	move.w	#$8000,($0018,a0)
	move.w	#$0208,($001e,a0)
L00c29c:
	clr.b	($001a,a0)
	move.w	#$0007,($001c,a0)
	move.l	#L06c56a,($0014,a0)
	clr.w	($0020,a0)
	move.w	#$0000,($0030,a0)
	move.w	#$0000,($0032,a0)
	bra.w	L00c2c2
L00c2c2:
	move.w	#$0080,(L047fc2)
L00c2ca:
	clr.b	($001a,a0)
L00c2ce:
	tst.w	(L047fc4)
	bne	L00c374
	cmpi.b	#$03,($001d,a0)
	bcc	L00c374
	move.w	#$0008,($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	clr.w	(L047fc2)
	clr.w	(L047fbe)
	move.w	#$000b,($0030,a0)
	move.w	#$000b,($0060,a0)
	move.w	#$000b,($0090,a0)
	move.w	#$000b,($00c0,a0)
	move.w	#$0000,($0032,a0)
	move.w	#$0000,($0062,a0)
	move.w	#$0000,($0092,a0)
	move.w	#$0000,($00c2,a0)
	moveq.l	#$f0,d0
	trap	#0
	move.l	a0,-(a7)
	move.l	($0004,a0),d0
	move.l	($0008,a0),d1
	jsr	(L0298a6)
	bcs	L00c372
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$000f,($0000.w,a0)
	move.w	#$2000,($0002,a0)
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
L00c372:
	movea.l	(a7)+,a0
L00c374:
	cmpi.b	#$08,(L04740d)
	bne	L00c394
	cmpi.b	#$03,($001d,a0)
	bcc	L00c394
	move.w	#$0009,($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
L00c394:
	move.w	($001c,a0),d0
	andi.w	#$00ff,d0
	lsl.w	#2,d0
	lea.l	(L00c42c),a6
	movea.l	(a6,d0.w),a6
	jsr	(a6)
	move.w	(a7)+,(L0481e4)
	move.w	(a7)+,(L0481e2)
	cmpi.w	#$000e,($0004,a0)
	bge	L00c3c4
	move.w	#$000e,($0004,a0)
L00c3c4:
	cmpi.w	#$00f2,($0004,a0)
	ble	L00c3d2
	move.w	#$00f2,($0004,a0)
L00c3d2:
	cmpi.w	#$0002,($0030,a0)
	bne	L00c3e6
	move.w	#$0300,($0032,a0)
	move.w	#$0001,($004a,a0)
L00c3e6:
	move.w	($0060,a0),d0
	beq	L00c3f8
	cmpi.w	#$0009,d0
	bcc	L00c3f8
	move.w	#$0300,($0062,a0)
L00c3f8:
	move.w	($0090,a0),d0
	beq	L00c40a
	cmpi.w	#$0009,d0
	bcc	L00c40a
	move.w	#$0300,($0092,a0)
L00c40a:
	move.w	($00c0,a0),d0
	beq	L00c41c
	cmpi.w	#$0009,d0
	bcc	L00c41c
	move.w	#$0300,($00c2,a0)
L00c41c:
	bsr	L00c8ce
	bsr	L00c742
	bsr	L00c822
	bra	L00baaa

L00c42c:
	.dc.l	L026d3e
	.dc.l	L026ea2
	.dc.l	L026f8a
	.dc.l	L0271a6
	.dc.l	L02738e
	.dc.l	L027392
	.dc.l	L025fee
	.dc.l	L02603a
	.dc.l	L00c456
	.dc.l	L00c6a4
	.dc.b	$4e,$75

L00c456:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0050,d0
	beq	L00c47e
	bcc	L00c482
	lsr.w	#4,d0
	move.b	d0,($0019,a0)
	andi.b	#$80,($0018,a0)
	move.l	#L07c5f8,($0014,a0)
	rts

L00c47e:
	moveq.l	#$67,d0
	trap	#0
L00c482:
	subi.w	#$0050,d0
	cmpi.w	#$0100,d0
	beq	L00c492
	bcc	L00c4c2
	bsr	L00c4d4
	rts

L00c492:
	moveq.l	#$82,d0
	trap	#0
	move.l	#$00030000,d0
	jsr	(L029a68)
	move.l	#L06c3dc,($0014,a0)
	move.w	#$0000,($0018,a0)
	move.w	#$0001,(L047fd2)
	movea.l	a0,a1
L00c4ba:
	bsr	L00c57a
	bcc	L00c4ba
	movea.l	a1,a0
L00c4c2:
	cmpi.w	#$0180,d0
	bne	L00c4d2
	move.l	a0,-(a7)
	jsr	(L003fd0)
	movea.l	(a7)+,a0
L00c4d2:
	rts

L00c4d4:
	movea.l	a0,a1
	cmpi.w	#$00c0,d0
	bcc	L00c576
	move.w	d0,d7
	jsr	(L01024e)
	andi.w	#$0001,d0
	bne	L00c576
	jsr	(L0298a6)
	bcc	L00c4fe
	jsr	(L0298e2)
	bcs	L00c576
L00c4fe:
	move.w	#$0055,($0000.w,a0)
	move.w	#$0000,($001a,a0)
	move.w	#$2000,($0002,a0)
	move.l	($0004,a1),d0
	move.l	d0,($0004,a0)
	move.l	($0008,a1),d0
	subi.l	#$00100000,d0
	move.l	d0,($0008,a0)
	move.w	#$ffff,d0
	swap.w	d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,($0010,a0)
	tst.b	d7
	bpl	L00c540
	eori.b	#$ff,d7
L00c540:
	jsr	(L01024e)
	andi.w	#$001f,d0
	add.w	d7,d0
	swap.w	d0
	lsr.l	#6,d0
	tst.w	($0018,a1)
	bmi	L00c558
	neg.l	d0
L00c558:
	move.l	d0,($000c,a0)
	move.l	#L07b93c,($0014,a0)
	andi.w	#$0003,d7
	bne	L00c56e
	move.w	#$0001,d7
L00c56e:
	move.w	d7,($0018,a0)
	clr.w	($001c,a0)
L00c576:
	movea.l	a1,a0
	rts

L00c57a:
	jsr	(L0298a6)
	bcc	L00c58a
	jsr	(L0298e2)
	bcs	L00c5f6
L00c58a:
	move.w	#$0055,($0000.w,a0)
	move.w	#$0000,($001a,a0)
	move.w	#$2000,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#3,d0
	move.l	d0,($000c,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	asl.l	#3,d0
	addi.l	#$00020000,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	move.l	#L07b93c,($0014,a0)
	jsr	(L01024e)
	andi.w	#$0001,d0
	addi.w	#$0003.w,d0
	move.w	d0,($0018,a0)
	move.w	#$0002,($001c,a0)
	move.w	#$007c,($0020,a0)
	andi.b	#$fe,ccr
L00c5f6:
	rts

L00c5f8:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L00c60c
	jmp	(L029cca)

L00c60c:
	btst.b	#$00,($001d,a0)
	bne	L00c638
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L0256ce)
	tst.b	d0
	beq	L00c638
	bset.b	#$00,($001d,a0)
	move.l	($0010,a0),d0
	asr.l	#1,d0
	neg.l	d0
	move.l	d0,($0010,a0)
L00c638:
	addi.l	#$00004000,($0010,a0)
	btst.b	#$01,($001d,a0)
	beq	L00c654
	subq.w	#1,($0020,a0)
	bne	L00c654
	jmp	(L029cca)

L00c654:
	eori.w	#$8000,($0018,a0)
	jsr	(L025416)
	rts

L00c662:
	.dc.b	$00
L00c663:
	.dc.b	$00,$01,$00,$02,$00,$03,$00,$03
	.dc.b	$01,$03,$02,$03,$02,$04,$12,$04
	.dc.b	$22,$04,$32,$04,$42,$04,$52,$04
	.dc.b	$62,$04,$72,$03,$02,$03,$01,$03
	.dc.b	$00,$03,$03,$03,$03,$03,$00,$03
	.dc.b	$00,$03,$03,$03,$03,$03,$00,$03
	.dc.b	$00,$03,$03,$03,$03,$03,$00,$03
	.dc.b	$00,$03,$03,$03,$03,$03,$00,$03
	.dc.b	$00

L00c6a4:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$007f,d0
	beq	L00c6b4
	move.w	d0,($001e,a0)
L00c6b4:
	lsr.w	#2,d0
	add.w	d0,d0
	move.w	($0018,a0),d1
	move.b	(L00c662,pc,d0.w),d1
	move.b	(L00c663,pc,d0.w),d3
	andi.w	#$80ff,d1
	move.w	d1,($0018,a0)
	move.l	#L07c620,($0014,a0)
	move.w	d3,d2
	andi.w	#$000f,d2
	addi.w	#$0031,d2
	asl.w	#7,d2
	move.w	(L0472f6),d0
	andi.w	#$0001,d0
	swap.w	d0
	clr.w	d0
	lsr.l	#5,d0
	movea.l	#$00e78000,a3
	lea.l	(a3,d2.w),a3
	movea.l	#$00ebd500,a4
	lea.l	(a4,d0.w),a4
	move.w	#$0080,d2
	move.l	a0,-(a7)
	jsr	(L003954)
	movea.l	(a7)+,a0
	lsr.w	#4,d3
	andi.w	#$000f,d3
	addi.w	#$0035,d3
	asl.w	#7,d3
	movea.l	#$00e78000,a3
	lea.l	(a3,d3.w),a3
	movea.l	#$00ebd580,a4
	lea.l	(a4,d0.w),a4
	move.w	#$0080,d2
	move.l	a0,-(a7)
	jsr	(L003954)
	movea.l	(a7)+,a0
	rts

L00c742:
	lea.l	(L048040),a1
	jsr	(L0416b6)
	movea.l	a0,a1
	jsr	(L00c76c)
	movea.l	a1,a0
	clr.w	($001a,a0)
	tst.w	(L047f9a)
	bne	L00c76a
	move.w	#$0001,($001a,a0)
L00c76a:
	rts

L00c76c:
	move.l	($0014,a0),-(a7)
	move.l	(L047fce),($0014,a0)
	bclr.b	#$06,($0018,a0)
	bclr.b	#$06,($0048,a0)
	tst.w	(L047fc2)
	beq	L00c798
	bset.b	#$06,($0018,a0)
	bset.b	#$06,($0048,a0)
L00c798:
	cmpi.w	#$0108,($001c,a1)
	beq	L00c81c
	cmpi.b	#$01,($001c,a1)
	bne	L00c7d6
	tst.b	($0019,a1)
	beq	L00c7d6
	cmpi.w	#$0006,($0020,a1)
	beq	L00c7ee
	cmpi.w	#$0008,($0020,a1)
	beq	L00c7ee
	lea.l	($0030,a1),a0
	move.w	(L0472f6),d3
	andi.w	#$0001,d3
	asl.w	#4,d3
	addq.w	#6,d3
	jsr	(L0254d4)
L00c7d6:
	movea.l	a1,a0
	move.w	(L0472f6),d3
	andi.w	#$0001,d3
	asl.w	#4,d3
	addq.w	#6,d3
	jsr	(L0254d4)
	bra	L00c81c
L00c7ee:
	movea.l	a1,a0
	move.w	(L0472f6),d3
	andi.w	#$0001,d3
	asl.w	#4,d3
	addq.w	#6,d3
	jsr	(L0254d4)
	lea.l	($0030,a1),a0
	move.w	(L0472f6),d3
	andi.w	#$0001,d3
	asl.w	#4,d3
	addq.w	#6,d3
	jsr	(L0254d4)
L00c81c:
	move.l	(a7)+,($0014,a0)
	rts

L00c822:
	tst.w	(L047fd2)
	bne	L00c886
	cmpi.w	#$003d,($0000.w,a0)
	bne	L00c886
	move.w	(L0472f6),d0
	andi.w	#$0001,d0
	swap.w	d0
	clr.w	d0
	lsr.l	#5,d0
	movea.l	(L048040),a3
	movea.l	(L048044),a4
	lea.l	(a4,d0.w),a4
	move.w	(L048048),d2
	beq	L00c864
	move.l	a0,-(a7)
	jsr	(L003954)
	movea.l	(a7)+,a0
L00c864:
	movea.l	(L04804c),a3
	movea.l	(L048050),a4
	lea.l	(a4,d0.w),a4
	move.w	(L048054),d2
	beq	L00c886
	move.l	a0,-(a7)
	jsr	(L003954)
	movea.l	(a7)+,a0
L00c886:
	rts

L00c888:
	movea.l	(L048040),a3
	movea.l	(L048044),a4
	lea.l	($3800,a4),a4
	move.w	(L048048),d2
	beq	L00c8aa
	move.l	a0,-(a7)
	jsr	(L003954)
	movea.l	(a7)+,a0
L00c8aa:
	movea.l	(L04804c),a3
	movea.l	(L048050),a4
	lea.l	($3800,a4),a4
	move.w	(L048054),d2
	beq	L00c8cc
	move.l	a0,-(a7)
	jsr	(L003954)
	movea.l	(a7)+,a0
L00c8cc:
	rts

L00c8ce:
	lea.l	(L00c922),a1
	move.w	($0020,a0),d0
	asl.w	#4,d0
	tst.b	($0019,a0)
	beq	L00c920
	move.b	($002d,a0),d1
	andi.w	#$0003,d1
	asl.w	#2,d1
	add.w	d0,d1
	movea.l	($04,a1,d1.w),a5
	move.l	a5,($0044,a0)
	lsr.w	#2,d0
	add.b	($0019,a0),d0
	cmpi.b	#$01,($002d,a0)
	beq	L00c90c
	bcc	L00c914
	lea.l	(L00c972),a1
	bra	L00c91a
L00c90c:
	lea.l	(L00c986),a1
	bra	L00c91a
L00c914:
	lea.l	(L00c99a),a1
L00c91a:
	move.b	(-$01,a1,d0.w),($0025,a0)
L00c920:
	rts

L00c922:
	.dc.l	L07c3d0
	.dc.l	L07c470
	.dc.l	L07c4f0
	.dc.l	L07c570
	.dc.l	L07c3f8
	.dc.l	L07c490
	.dc.l	L07c510
	.dc.l	L07c590
	.dc.l	L07c420
	.dc.l	L07c4b0
	.dc.l	L07c530
	.dc.l	L07c5b0
	.dc.l	L07c448
	.dc.l	L07c4d0
	.dc.l	L07c550
	.dc.l	L07c5d0
	.dc.l	L07c3d0
	.dc.l	L07c470
	.dc.l	L07c4f0
	.dc.l	L07c570
L00c972:
	.dc.b	'､ｧｫｮ､ｧｫｮ､ｱｺｽ､ｱｴｷ､ｧｫｮ'
L00c986:
	.dc.b	'ﾀﾃﾇﾊﾀﾃﾇﾊﾀﾍﾖﾙﾀﾍﾐﾓﾀﾃﾇﾊ'

L00c99a:
	adda.w	(a7)+,a6
	lsl.w	-(a7)
	adda.w	(a7)+,a6
	lsl.w	-(a7)
	adda.w	(-$0a07,a2),a6
	adda.w	(-$110e,a2),a6
	adda.w	(a7)+,a6
	lsl.w	-(a7)
L00c9ae:
	move.w	d0,($0002,a0)
	move.l	d7,($0004,a0)
	move.l	d7,($0008,a0)
	move.w	#$0080,($0004,a0)
	move.w	#$ffe2,($0008,a0)
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.w	d7,($0018,a0)
	move.w	#$0040,($001a,a0)
	move.l	d7,($001c,a0)
	rts

L00c9de:
	move.w	d0,-(a7)
	jsr	(L0039f0)
	lea.l	(L047ab0),a0
	jsr	(L041a64)
	move.w	(a7)+,d0
	moveq.l	#$00,d7
	andi.w	#$00ff,d0
	move.w	#$008e,($0000.w,a0)
	bsr	L00c9ae
	move.l	#L081552,($0014,a0)
	move.w	#$4000,($0020,a0)
	lea.l	(L047a80),a0
	move.w	#$000b,($0000.w,a0)
	bsr	L00c9ae
	move.l	#L081592,($0014,a0)
	lea.l	(L047fc0),a3
	move.w	d7,($0000.w,a3)
	move.l	#$00030000,($000c,a3)
	move.l	#$00030000,($0010,a3)
	move.w	d7,($0014,a3)
	move.l	d7,($0016,a3)
	move.w	d7,($001a,a3)
	move.w	d7,($002a,a3)
	move.w	d7,($002c,a3)
	move.w	d7,($002e,a3)
	move.w	d7,($0030,a3)
	move.w	d7,($003c,a3)
	move.w	d7,($003e,a3)
	move.w	#$0010,($0040,a3)
	move.w	d7,($0042,a3)
	move.w	d7,($0044,a3)
	move.w	(L047354),d0
	lsr.w	#1,d0
	addq.w	#5,d0
	move.w	d0,($0046,a3)
	move.w	d0,($0048,a3)
	move.w	#$0040,($0080,a3)
	move.w	#$00c0,($0082,a3)
	move.w	#$0080,($0084,a3)
	move.w	#$0200,($0086,a3)
	lea.l	(L047ab0),a0
	lea.l	(L047a80),a1
	move.w	d7,($00be,a3)
	lea.l	($00c0,a3),a2
	moveq.l	#$07,d7
L00cab2:
	move.w	($0018,a1),(a2)+
	move.w	($0004,a1),(a2)+
	move.w	($0008,a1),(a2)+
	move.l	($0014,a1),(a2)+
	move.w	($0018,a0),(a2)+
	move.w	($0004,a0),(a2)+
	move.w	($0008,a0),(a2)+
	move.l	($0014,a0),(a2)+
	dbra	d7,L00cab2
	rts

L00cad8:
	btst.b	#$06,($0020,a0)
	bne	L00cb0a
	subq.w	#1,($0006,a3)
	bne	L00cb0a
	move.w	($0002,a3),d0
	addq.w	#1,d0
	cmp.w	($0004,a3),d0
	bne	L00caf4
	clr.w	d0
L00caf4:
	move.w	d0,($0002,a3)
	add.w	d0,d0
	movea.l	($0008,a3),a2
	move.b	(a2,d0.w),($0019,a0)
	move.b	($01,a2,d0.w),($0007,a3)
L00cb0a:
	rts

L00cb0c:
	bsr	L00cb18
	bsr	L00cb46
	bsr	L00cb70
	bsr	L00cbb6
	rts

L00cb18:
	tst.w	($0020,a0)
	bmi	L00cb44
	lea.l	(L047a80),a1
	move.w	($0004,a1),d1
	move.l	($0008,a1),d2
	swap.w	d2
	add.w	($0038,a3),d2
	add.w	($0036,a3),d1
	move.w	($0018,a1),d0
	movea.l	($0014,a1),a5
	jsr	(L025426)
L00cb44:
	rts

L00cb46:
	btst.b	#$01,($0020,a0)
	bne	L00cb6e
	move.l	($0008,a0),d2
	swap.w	d2
	move.w	($0004,a0),d1
	add.w	($0036,a3),d1
	add.w	($0038,a3),d2
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
L00cb6e:
	rts

L00cb70:
	btst.b	#$03,($0020,a0)
	beq	L00cbb4
	move.w	($00be,a3),d0
	bsr	L00cc1e
	addi.w	#$00c0,d0
	lea.l	(a3,d0.w),a2
	move.w	(a2)+,d0
	move.w	(a2)+,d1
	move.w	(a2)+,d2
	movea.l	(a2)+,a5
	move.w	($0018,a1),d0
	movea.l	($0014,a1),a5
	jsr	(L025426)
	move.w	(a2)+,d0
	move.w	(a2)+,d1
	move.w	(a2)+,d2
	movea.l	(a2),a5
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
L00cbb4:
	rts

L00cbb6:
	btst.b	#$04,($0020,a0)
	beq	L00cbd4
	move.w	($001c,a3),d0
	move.w	($0024,a3),d1
	move.w	($0026,a3),d2
	movea.l	($001e,a3),a5
	jsr	(L025426)
L00cbd4:
	rts

L00cbd6:
	move.w	($00be,a3),d0
	bsr	L00cc1e
	addi.w	#$00c0,d0
	lea.l	(a3,d0.w),a2
	lea.l	(L047a80),a1
	move.w	($0018,a1),(a2)+
	move.w	($0004,a1),(a2)+
	move.w	($0008,a1),d0
	move.w	d0,(a2)+
	move.l	($0014,a1),(a2)+
	move.w	($0018,a0),(a2)+
	move.w	($0004,a0),(a2)+
	move.w	($0008,a0),d0
	move.w	d0,(a2)+
	move.l	($0014,a0),(a2)
	move.w	($00be,a3),d0
	addq.w	#1,d0
	andi.w	#$0007,d0
	move.w	d0,($00be,a3)
	rts

L00cc1e:
	lsl.w	#2,d0
	move.w	d0,d1
	lsl.w	#2,d0
	add.w	d1,d0
	rts

L00cc28:
	add.l	($000c,a0),d0
	move.l	($000c,a3),d2
	bsr	L00cc48
	move.l	d0,($000c,a0)
	move.l	d1,d0
	add.l	($0010,a0),d0
	move.l	($0010,a3),d2
	bsr	L00cc48
	move.l	d0,($0010,a0)
	rts

L00cc48:
	cmp.l	d2,d0
	bgt	L00cc52
	neg.l	d2
	cmp.l	d2,d0
	bge	L00cc54
L00cc52:
	move.l	d2,d0
L00cc54:
	rts

L00cc56:
	addi.w	#$0010,d1
	addi.w	#$0010,d2
	move.w	($0004,a0),d0
	sub.w	d1,d0
	cmpi.w	#$ffe0,d0
	bls	L00cc8a
	move.w	($0008,a0),d0
	sub.w	d2,d0
	cmpi.w	#$ffe0,d0
	bls	L00cc8a
	move.l	($000c,a3),d0
	lsr.l	#1,d0
	move.l	d0,($000c,a3)
	move.l	($0010,a3),d0
	lsr.l	#1,d0
	move.l	d0,($0010,a3)
L00cc8a:
	rts

L00cc8c:
	move.w	($0014,a3),d1
	btst.b	#$05,($0020,a0)
	bne	L00ccaa
	move.w	d1,d0
	beq	L00ccb6
	add.w	#$0400,d1
	eor.w	d1,d0
	bpl	L00cca6
	moveq.l	#$00,d1
L00cca6:
	move.w	d1,d0
	bra	L00ccb6
L00ccaa:
	jsr	(L01024e)
	andi.w	#$03ff,d0
	add.w	d1,d0
L00ccb6:
	move.w	d0,($0014,a3)
	moveq.l	#$00,d0
	move.b	($0014,a3),d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#2,d0
	sub.l	d0,($0008,a0)
	rts

L00ccd0:
	move.w	($0084,a3),d0
	beq	L00ccdc
	subq.w	#1,d0
	move.w	d0,($0084,a3)
L00ccdc:
	move.w	($0082,a3),d0
	beq	L00cce8
	subq.w	#1,d0
	move.w	d0,($0082,a3)
L00cce8:
	move.w	($0080,a3),d0
	beq	L00ccf4
	subq.w	#1,d0
	move.w	d0,($0080,a3)
L00ccf4:
	move.w	($0086,a3),d0
	beq	L00cd00
	subq.w	#1,d0
	move.w	d0,($0086,a3)
L00cd00:
	rts

L00cd02:
	move.w	($0004,a0),d0
	subi.w	#$00f0,d0
	cmpi.w	#$ff20,d0
	bhi	L00cd20
	moveq.l	#$10,d1
	cmpi.w	#$ff90,d0
	blt	L00cd1c
	addi.w	#$00e0,d1
L00cd1c:
	move.w	d1,($0004,a0)
L00cd20:
	move.w	($0008,a0),d0
	subi.w	#$00f0,d0
	cmpi.w	#$ff40,d0
	bhi	L00cd3e
	moveq.l	#$30,d1
	cmpi.w	#$ff90,d0
	blt	L00cd3a
	addi.w	#$00c0,d1
L00cd3a:
	move.w	d1,($0008,a0)
L00cd3e:
	rts

L00cd40:
	move.w	($003e,a3),d0
	beq	L00cd52
	subq.w	#1,d0
	move.w	d0,($003e,a3)
	bne	L00cd52
	move.w	d0,($003c,a3)
L00cd52:
	rts

L00cd54:
	move.w	($001c,a0),d0
	bmi	L00d9cc
	move.l	a0,-(a7)
	jsr	(L041a38)
	movea.l	(a7)+,a0
	lea.l	(L047fc0),a3
	lea.l	(L047a80),a1
	move.w	($0000.w,a3),d0
	add.w	d0,d0
	move.w	(L00cd80,pc,d0.w),d0
	jmp	(L00cd80,pc,d0.w)

L00cd80:
	.dc.w	L00cd8a-L00cd80
	.dc.w	L00ce52-L00cd80
	.dc.w	L00cedc-L00cd80
	.dc.w	L00d0cc-L00cd80
	.dc.w	L00cfc8-L00cd80

L00cd8a:
	cmpi.w	#$1800,(L047f7a)
	beq	L00cdb0
	cmpi.w	#$1830,(L047f7a)
	bls	L00ce50
	lea.l	(L047a80),a1
	clr.l	($0000.w,a1)
	jmp	(L029cca)

L00cdb0:
	move.w	#$0000,(L04735a)
	move.w	#$0000,(L0470fe)
	move.w	#$0080,(L047102)
	move.w	#$0000,(L047106)
	move.w	#$0080,(L04710a)
	lea.l	(L047f60),a2
	moveq.l	#$00,d0
	move.w	#$0017,d7
L00cde4:
	lea.l	(-$0030,a2),a2
	cmpi.w	#$0087,($0000.w,a2)
	dbeq	d7,L00cde4
	bne	L00cdf8
	clr.l	($0000.w,a2)
L00cdf8:
	addq.w	#1,($0000.w,a3)
	move.w	#$00c0,($001e,a0)
	move.w	#$0000,($0026,a0)
	move.l	#$0080007b,($0028,a0)
	move.w	#$0001,($0030,a3)
	move.w	#$0014,(L04731e)
	jsr	(L018c0e)
	move.b	(L07db8c),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07db8e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0027,d7
L00ce46:
	move.l	(a5)+,(a6)+
	dbra	d7,L00ce46
	moveq.l	#$ff,d0
	trap	#0
L00ce50:
	rts

L00ce52:
	tst.w	($0026,a0)
	bne	L00ce70
	tst.w	(L04731e)
	bne	L00ce78
	move.w	#$0000,($0026,a0)
	bsr	L00de76
	lea.l	(L047fc0),a3
L00ce70:
	bsr	L00df16
	addq.w	#2,($0026,a0)
L00ce78:
	move.w	($001e,a0),d0
	beq	L00ce86
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	rts

L00ce86:
	tst.w	(L04731e)
	bne	L00ceda
	addq.w	#1,($0000.w,a3)
	move.w	#$0006,($0010,a0)
	move.l	#L00e144,($0008,a3)
	move.w	#$0004,($0004,a3)
	clr.w	($0002,a3)
	move.b	(L00e144),($0019,a0)
	move.b	(L00e145),($0007,a3)
	move.l	#L081552,($0014,a0)
	bclr.b	#$06,($0020,a0)
	move.w	#$0013,(L047124)
	move.w	#$0002,($0030,a3)
	moveq.l	#$72,d0
	trap	#0
L00ceda:
	rts

L00cedc:
	jsr	(L029954)
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L00cf0a,pc,d0.w),d0
	jsr	(L00cf0a,pc,d0.w)
	bsr	L00cad8
	bsr	L00cb0c
	bsr	L00df16
	rts

L00cf0a:
	.dc.w	L00cf10-L00cf0a
	.dc.w	L00cf28-L00cf0a
	.dc.w	L00cf48-L00cf0a

L00cf10:
	cmpi.w	#$0080,($0008,a0)
	blt	L00cf26
	addq.w	#1,($001c,a0)
	move.w	#$0000,($0030,a3)
	moveq.l	#$b6,d0
	trap	#0
L00cf26:
	rts

L00cf28:
	cmpi.w	#$0080,($0008,a0)
	bgt	L00cf3e
	addq.w	#1,($001c,a0)
	move.w	#$0080,($001e,a0)
	clr.l	($0010,a0)
L00cf3e:
	subi.l	#$0000c000,($0010,a0)
	rts

L00cf48:
	subq.w	#1,($001e,a0)
	bne	L00cf84
	addq.w	#1,($0000.w,a3)
	ori.w	#$0300,($0002,a0)
	moveq.l	#$00,d7
	move.w	d7,($001c,a0)
	move.w	#$0008,($001e,a0)
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#$00020000,($000c,a3)
	move.l	#$00020000,($0010,a3)
	bset.b	#$05,($0020,a0)
	rts

L00cf84:
	move.w	($0004,a0),d0
	cmpi.w	#$00e0,d0
	ble	L00cfa2
	move.l	($000c,a3),d2
	asr.l	#1,d2
	move.l	d2,($000c,a3)
	move.l	($0010,a3),d2
	asr.l	#1,d2
	move.l	d2,($0010,a3)
L00cfa2:
	move.w	($0008,a0),d1
	move.w	#$00f0,d2
	move.w	#$0088,d3
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#1,d0
	asr.l	#1,d1
	bsr	L00cc28
	rts

L00cfc8:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L00cfe8,pc,d0.w),d0
	jmp	(L00cfe8,pc,d0.w)

L00cfd6:
	bsr	L00d89c
	bsr	L00cad8
	bsr	L00cb0c
	bsr	L00df16
	rts

L00cfe8:
	.dc.w	L00cff0-L00cfe8
	.dc.w	L00cffa-L00cfe8
	.dc.w	L00d088-L00cfe8
	.dc.w	L00d0b8-L00cfe8

L00cff0:
	bclr.b	#$02,($0020,a0)
	addq.w	#1,($001c,a0)
L00cffa:
	move.w	($0026,a0),d0
	subi.w	#$000c,d0
	cmpi.w	#$0030,d0
	bge	L00d00c
	move.w	#$0030,d0
L00d00c:
	move.w	d0,($0026,a0)
	subq.w	#1,($001e,a0)
	bne	L00cfd6
	addq.w	#1,($001c,a0)
	move.w	#$0030,($001e,a0)
	move.w	#$0400,($0026,a0)
	move.w	#$0001,($0030,a3)
	move.w	#$0003,($001a,a3)
	cmpi.l	#L081592,($0014,a1)
	bne	L00cfd6
	move.l	#L08165a,($0014,a1)
	moveq.l	#$00,d0
	move.b	($0019,a1),d0
	move.b	(L00d06e,pc,d0.w),($0019,a1)
	lsl.w	#2,d0
	move.w	(L00d074,pc,d0.w),d1
	move.w	(L00d076,pc,d0.w),d2
	tst.w	($0018,a0)
	bpl	L00d062
	neg.w	d1
L00d062:
	add.w	d1,($0004,a1)
	add.w	d2,($0008,a1)
	bra	L00cfd6

L00d06e:
	.dc.b	$02,$00,$02,$04,$04,$00
L00d074:
	.dc.w	$0000
L00d076:
	.dc.w	$0000,$fffc,$ffe0,$ffec
	.dc.w	$0006,$000a,$000c,$000a
	.dc.w	$000c

L00d088:
	subq.w	#1,($001e,a0)
	bne	L00d0b4
	addq.w	#1,($001c,a0)
	move.w	#$00e0,($001e,a0)
	bset.b	#$01,($0020,a0)
	move.w	#$0002,($0030,a3)
	moveq.l	#$82,d0
	trap	#0
	move.l	#$00040000,d0
	jsr	(L029a68)
L00d0b4:
	bra	L00cfd6
L00d0b8:
	subq.w	#1,($001e,a0)
	bne	L00cfd6
	jsr	(L029cca)
	jmp	(L003fd0)

L00d0cc:
	bsr	L00cd40
	move.b	($001a,a0),d0
	andi.w	#$003f,d0
	beq	L00d0e4
	add.w	d0,($003c,a3)
	move.w	#$0040,($003e,a3)
L00d0e4:
	jsr	(L029a3e)
	bcc	L00d158
	beq	L00d844
	moveq.l	#$30,d0
	trap	#0
	clr.w	d0
	move.b	($001b,a0),d0
	move.b	d0,d1
	lsr.w	#2,d0
	andi.b	#$03,d1
	beq	L00d106
	addq.w	#1,d0
L00d106:
	move.w	d0,(L047fbe)
	andi.w	#$00ff,($0002,a0)
	cmpi.b	#$28,($001b,a0)
	bcc	L00d138
	cmpi.w	#$000c,($003c,a3)
	bcs	L00d138
	clr.w	($003c,a3)
	clr.w	($003e,a3)
	ori.w	#$4000,($0018,a0)
	move.w	#$0040,($003a,a3)
	bra	L00d144
L00d138:
	move.w	#$000a,($003a,a3)
	bset.b	#$06,($0020,a0)
L00d144:
	move.l	#$00030000,d0
	btst.b	#$07,($001a,a0)
	beq	L00d154
	neg.l	d0
L00d154:
	move.l	d0,($0032,a3)
L00d158:
	move.w	($003a,a3),d0
	beq	L00d1dc
	subq.w	#1,d0
	move.w	d0,($003a,a3)
	beq	L00d1c0
	btst.b	#$06,($0018,a0)
	bne	L00d192
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L00d17c
	subq.w	#1,d0
L00d17c:
	move.w	d0,($0036,a3)
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L00d18e
	subq.w	#1,d0
L00d18e:
	move.w	d0,($0038,a3)
L00d192:
	move.l	#$00008000,d1
	move.l	($0032,a3),d3
	move.l	d3,d2
	bmi	L00d1a2
	neg.l	d1
L00d1a2:
	add.l	d1,d3
	eor.l	d3,d2
	bpl	L00d1aa
	moveq.l	#$00,d3
L00d1aa:
	move.l	d3,($0032,a3)
	btst.b	#$06,($0018,a0)
	bne	L00d1dc
	add.l	d3,($0004,a0)
	bsr	L00cd02
	bra	L00d226
L00d1c0:
	ori.w	#$0300,($0002,a0)
	bclr.b	#$06,($0020,a0)
	moveq.l	#$00,d0
	move.l	d0,($0032,a3)
	move.l	d0,($0036,a3)
	andi.w	#$bfff,($0018,a0)
L00d1dc:
	jsr	(L029954)
	bsr	L00cc8c
	bsr	L00cd02
	bsr	L00ccd0
	moveq.l	#$00,d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L00d246,pc,d0.w),d0
	jsr	(L00d246,pc,d0.w)
	move.w	($001c,a0),d0
	cmpi.w	#$0102,d0
	beq	L00d226
	cmpi.w	#$0103,d0
	beq	L00d226
	bclr.b	#$07,($0018,a0)
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bgt	L00d226
	bset.b	#$07,($0018,a0)
L00d226:
	bsr	L00d89c
	bsr	L00cad8
	bsr	L00cb0c
	bsr	L00df16
	btst.b	#$04,($0020,a0)
	beq	L00d244
	jmp	(L01db92)

L00d244:
	rts

L00d246:
	.dc.w	L00d250-L00d246
	.dc.w	L00d34a-L00d246
	.dc.w	L00d3e8-L00d246
	.dc.w	L00d52c-L00d246
	.dc.w	L00d61a-L00d246

L00d250:
	move.w	($001e,a0),d0
	beq	L00d25e
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	rts

L00d25e:
	tst.w	($0086,a3)
	beq	L00d31a
	tst.w	($0082,a3)
	beq	L00d27c
	tst.w	($0084,a3)
	beq	L00d2b8
	tst.w	($0080,a3)
	beq	L00d2fc
	rts

L00d27c:
	move.w	#$0002,($001c,a0)
	move.w	#$0080,($001e,a0)
	bclr.b	#$05,($0020,a0)
	move.l	#$00020000,($000c,a3)
	move.l	#$00020000,($0010,a3)
	cmpi.w	#$0080,(L0473f4)
	bgt	L00d2b0
	move.w	#$00e0,($0028,a0)
	rts

L00d2b0:
	move.w	#$0020,($0028,a0)
	rts

L00d2b8:
	move.w	#$0003,($001c,a0)
	move.w	#$0080,($001e,a0)
	move.l	#$00030000,($000c,a3)
	move.l	#$00030000,($0010,a3)
	move.w	(L0473f4),d0
	move.w	#$0030,d2
	cmp.w	($0004,a0),d0
	blt	L00d2e6
	neg.w	d2
L00d2e6:
	add.w	d2,d0
	bclr.b	#$05,($0020,a0)
	move.w	d0,($0028,a0)
	move.w	(L0473f8),($002a,a0)
	rts

L00d2fc:
	move.w	#$0001,($001c,a0)
	move.w	#$c020,($001e,a0)
	move.l	#$00010000,($000c,a3)
	move.l	#$00010000,($0010,a3)
	rts

L00d31a:
	move.w	#$0004,($001c,a0)
	move.w	#$0080,($001e,a0)
	bclr.b	#$05,($0020,a0)
	move.l	#$00020000,($000c,a3)
	move.l	#$00020000,($0010,a3)
	move.w	#$0080,($0024,a3)
	move.w	#$009c,($0026,a3)
	rts

L00d34a:
	subq.b	#1,($001e,a0)
	bne	L00d3a2
	move.w	#$0040,($0080,a3)
L00d356:
	clr.w	($001c,a0)
	move.w	#$0000,($001e,a0)
	ori.w	#$2000,($0020,a0)
	move.l	#$00010000,($000c,a3)
	move.l	#$00010000,($0010,a3)
	move.l	#L00e144,($0008,a3)
	move.w	#$0004,($0004,a3)
	clr.w	($0002,a3)
	move.b	(L00e144),($0019,a0)
	move.b	(L00e145),($0007,a3)
	move.l	#L081552,($0014,a0)
	rts

L00d3a2:
	subq.b	#1,($001f,a0)
	bne	L00d3b2
	move.b	#$20,($001f,a0)
	bsr	L00da32
L00d3b2:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	addi.b	#$80,d2
	subi.b	#$40,d3
	jsr	(L010280)
	jsr	(L01032e)
	asr.w	#1,d0
	asr.w	#1,d1
	ext.l	d0
	ext.l	d1
	bsr	L00cc28
	rts

L00d3e8:
	move.b	($001c,a0),d0
	beq	L00d3f4
	subq.b	#1,d0
	beq	L00d4a2
L00d3f4:
	move.w	($001e,a0),d0
	bne	L00d406
	moveq.l	#$00,d0
	move.l	d0,($000c,a3)
	move.l	d0,($0010,a3)
	bra	L00d44e
L00d406:
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	move.w	($0028,a0),d1
	move.w	#$0068,d2
	bsr	L00cc56
	tst.l	($000c,a3)
	bne	L00d424
	tst.l	($0010,a3)
	beq	L00d44e
L00d424:
	move.w	($0028,a0),d2
	move.w	#$0068,d3
L00d42c:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#1,d0
	asr.l	#1,d1
	bsr	L00cc28
	rts

L00d44e:
	addq.b	#1,($001c,a0)
	bclr.b	#$03,($0020,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.l	#L00e14c,($0008,a3)
	move.w	#$0005,($0004,a3)
	clr.w	($0002,a3)
	move.b	(L00e14c),($0019,a0)
	move.b	(L00e14d),($0007,a3)
	move.l	#L081572,($0014,a0)
	move.l	#L081592,($0014,a1)
	move.w	#$0001,($001a,a3)
	ori.w	#$0300,($0002,a1)
	rts

L00d4a2:
	cmpi.w	#$0001,($0002,a3)
	bne	L00d508
	cmpi.w	#$0002,($0006,a3)
	bne	L00d508
	move.l	#L08165a,($0014,a1)
	move.w	($0018,a0),d0
	move.b	#$02,d0
	move.w	d0,($0018,a1)
	move.l	($0004,a0),d0
	sub.l	(L0473f4),d0
	asr.l	#5,d0
	move.l	d0,d1
	asr.l	#2,d1
	sub.l	d1,d0
	move.l	d0,($000c,a1)
	move.l	($0008,a0),d0
	sub.l	(L0473f8),d0
	asr.l	#5,d0
	move.l	d0,d1
	asr.l	#2,d1
	sub.l	d1,d0
	move.l	d0,($0010,a1)
	move.w	#$0020,($001e,a1)
	clr.l	($0020,a1)
	move.w	#$0002,($001a,a3)
	moveq.l	#$6f,d0
	trap	#0
	rts

L00d508:
	cmpi.w	#$0004,($0002,a3)
	bne	L00d52a
	cmpi.w	#$0001,($0006,a3)
	bne	L00d52a
	clr.b	($0019,a1)
	clr.w	($001a,a3)
	move.w	#$00c0,($0082,a3)
	bra	L00d356
L00d52a:
	rts

L00d52c:
	move.b	($001c,a0),d0
	beq	L00d568
	cmpi.w	#$0001,($0006,a3)
	bne	L00d550
	cmpi.w	#$0005,($0002,a3)
	bne	L00d550
	clr.w	($001a,a3)
	move.w	#$0080,($0084,a3)
	bra	L00d356
L00d550:
	cmpi.w	#$0008,($0006,a3)
	bne	L00d566
	cmpi.w	#$0003,($0002,a3)
	bne	L00d566
	andi.w	#$fcff,($0002,a1)
L00d566:
	rts

L00d568:
	move.w	($001e,a0),d0
	bne	L00d582
	moveq.l	#$00,d0
	move.l	d0,($000c,a3)
	move.l	d0,($0010,a3)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	bra	L00d5ca
L00d582:
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	move.w	($0028,a0),d1
	move.w	($002a,a0),d2
	bsr	L00cc56
	tst.l	($000c,a3)
	bne	L00d5a0
	tst.l	($0010,a3)
	beq	L00d5ca
L00d5a0:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	($0028,a0),d2
	move.w	($002a,a0),d3
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#1,d0
	asr.l	#1,d1
	bsr	L00cc28
	rts

L00d5ca:
	addq.b	#1,($001c,a0)
	bclr.b	#$03,($0020,a0)
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L00e156,($0008,a3)
	move.w	#$0006,($0004,a3)
	clr.w	($0002,a3)
	move.b	(L00e156),($0019,a0)
	move.b	(L00e157),($0007,a3)
	move.l	#L081572,($0014,a0)
	move.w	#$0001,($001a,a3)
	ori.w	#$0300,($0002,a1)
	moveq.l	#$6f,d0
	trap	#0
	rts

L00d61a:
	move.b	($001c,a0),d0
	beq	L00d63c
	subq.b	#1,d0
	beq	L00d6a2
	subq.b	#1,d0
	beq	L00d6e6
	subq.b	#1,d0
	beq	L00d728
	subq.b	#1,d0
	beq	L00d774
	subq.b	#1,d0
	beq	L00d7d0
L00d63c:
	move.w	($001e,a0),d0
	bne	L00d656
	moveq.l	#$00,d0
	move.l	d0,($000c,a3)
	move.l	d0,($0010,a3)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	bra	L00d680
L00d656:
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	move.w	#$0080,d1
	move.w	#$0040,d2
	bsr	L00cc56
	tst.l	($000c,a3)
	bne	L00d674
	tst.l	($0010,a3)
	beq	L00d680
L00d674:
	move.w	#$0080,d2
	move.w	#$0040,d3
	bra	L00d42c
L00d680:
	addq.b	#1,($001c,a0)
	clr.w	($001c,a3)
	move.l	#L08170a,($001e,a3)
	move.w	#$0603,($0022,a3)
	bset.b	#$04,($0020,a0)
	moveq.l	#$6e,d0
	trap	#0
	rts

L00d6a2:
	move.w	#$0040,d1
	bsr	L00d832
	subq.b	#1,($0022,a3)
	bne	L00d6c6
	move.w	($001c,a3),d0
	addq.w	#1,d0
	cmpi.w	#$0008,d0
	beq	L00d6c8
	move.w	d0,($001c,a3)
	move.b	($0023,a3),($0022,a3)
L00d6c6:
	rts

L00d6c8:
	addq.b	#1,($001c,a0)
	move.w	#$0020,($001e,a0)
	clr.w	($001c,a3)
	move.l	#L08174a,($001e,a3)
	move.w	#$0202,($0022,a3)
	rts

L00d6e6:
	move.w	#$0060,d1
	bsr	L00d832
	subq.w	#1,($001e,a0)
	bne	L00d710
	addq.b	#1,($001c,a0)
	move.w	#$0004,($001c,a3)
	move.b	#$06,($0022,a3)
	moveq.l	#$00,d0
	move.w	d0,($0028,a3)
	bsr	L00d80a
	rts

L00d710:
	subq.b	#1,($0022,a3)
	bne	L00d726
	move.b	($0023,a3),($0022,a3)
	addq.w	#1,($001c,a3)
	andi.w	#$0003,($001c,a3)
L00d726:
	rts

L00d728:
	move.w	#$00a0,d1
	bsr	L00d832
	subq.b	#1,($0022,a3)
	bne	L00d772
	move.b	#$06,($0022,a3)
	move.w	($0028,a3),d0
	addq.w	#1,d0
	move.w	d0,($0028,a3)
	bsr	L00d80a
	move.w	($0028,a3),d0
	cmpi.w	#$0004,d0
	bne	L00d772
	addq.b	#1,($001c,a0)
	move.w	#$0180,d0
	move.w	d0,($001e,a0)
	move.b	#$08,($0022,a3)
	move.w	#$0020,($002c,a3)
	lsr.w	#4,d0
	move.w	d0,($0048,a3)
L00d772:
	rts

L00d774:
	move.w	#$0120,d1
	bsr	L00d832
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L00d79a
	addq.b	#1,($001c,a0)
	move.b	#$06,($0022,a3)
	move.w	#$0008,($0028,a3)
	rts

L00d79a:
	subq.w	#1,($0048,a3)
	bne	L00d7ae
	lsr.w	#4,d0
	addi.w	#$0020,d0
	move.w	d0,($0048,a3)
	bsr	L00dc32
L00d7ae:
	subq.b	#1,($0022,a3)
	bne	L00d7ce
	move.b	#$08,($0022,a3)
	move.w	($0028,a3),d0
	addq.w	#1,d0
	cmpi.w	#$0008,d0
	bne	L00d7c8
	moveq.l	#$04,d0
L00d7c8:
	move.w	d0,($0028,a3)
	bsr	L00d80a
L00d7ce:
	rts

L00d7d0:
	move.w	#$fe00,d1
	bsr	L00d832
	subq.b	#1,($0022,a3)
	bne	L00d7f4
	move.b	#$06,($0022,a3)
	move.w	($0028,a3),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	beq	L00d7f6
	move.w	d0,($0028,a3)
	bsr	L00d80a
L00d7f4:
	rts

L00d7f6:
	bclr.b	#$04,($0020,a0)
	move.w	#$0200,($0086,a3)
	clr.w	($002a,a3)
	bra	L00d356
L00d80a:
	movem.l	a0-a3,-(a7)
	ror.w	#7,d0
	lea.l	(L05fbdc),a0
	lea.l	(a0,d0.w),a0
	lea.l	($00ebfe00),a1
	jsr	(L0039ba)
	jsr	(L0039ba)
	movem.l	(a7)+,a0-a3
	rts

L00d832:
	move.w	($002a,a3),d0
	add.w	d1,d0
	bcc	L00d83e
	move.w	#$ffff,d0
L00d83e:
	move.w	d0,($002a,a3)
	rts

L00d844:
	move.w	#$4400,($0020,a0)
	addq.w	#1,($0000.w,a3)
	moveq.l	#$00,d0
	andi.w	#$00ff,($0002,a0)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	ori.w	#$4000,($0018,a0)
	move.w	d0,($001c,a0)
	move.w	#$00a0,($001e,a0)
	move.w	#$0200,($0026,a0)
	move.w	($0004,a0),($0028,a0)
	move.l	($0008,a0),($002a,a0)
	move.l	d0,($000c,a1)
	move.l	d0,($0010,a1)
	move.w	#$0001,($0030,a3)
	clr.w	(L047fbe)
	moveq.l	#$f0,d0
	trap	#0
	bra	L00d226
L00d89c:
	move.w	($001a,a3),d0
	add.w	d0,d0
	move.w	(L00d8aa,pc,d0.w),d0
	jmp	(L00d8aa,pc,d0.w)

L00d8aa:
	.dc.w	L00d8b4-L00d8aa
	.dc.w	L00d8ce-L00d8aa
	.dc.w	L00d8ea-L00d8aa
	.dc.w	L00d97c-L00d8aa
	.dc.w	L00d9aa-L00d8aa

L00d8b4:
	move.w	($0004,a0),($0004,a1)
	move.w	($0008,a0),($0008,a1)
	move.w	($0018,a0),d0
	andi.w	#$bf00,d0
	move.w	d0,($0018,a1)
	rts

L00d8ce:
	move.w	($0004,a0),($0004,a1)
	move.w	($0008,a0),($0008,a1)
	move.w	($0018,a0),d0
	andi.w	#$bfff,d0
	addq.w	#1,d0
	move.w	d0,($0018,a1)
	rts

L00d8ea:
	move.b	($0019,a1),d0
	addq.b	#1,d0
	cmpi.b	#$0c,d0
	bne	L00d8fc
	moveq.l	#$6f,d0
	trap	#0
	clr.w	d0
L00d8fc:
	move.b	d0,($0019,a1)
	move.w	($0020,a1),d0
	beq	L00d948
	subq.w	#1,d0
	beq	L00d96a
	tst.b	($001b,a0)
	beq	L00d946
	subq.w	#1,($001e,a1)
	bne	L00d936
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	andi.w	#$fcff,($0002,a1)
	move.l	#L081592,($0014,a1)
	move.w	#$0001,($001a,a3)
L00d936:
	move.l	($000c,a1),d0
	move.l	($0010,a1),d1
	add.l	d0,($0004,a1)
	add.l	d1,($0008,a1)
L00d946:
	rts

L00d948:
	subq.w	#1,($001e,a1)
	bne	L00d958
	addq.w	#1,($0020,a1)
	move.w	#$0010,($001e,a1)
L00d958:
	move.l	($000c,a1),d0
	move.l	($0010,a1),d1
	sub.l	d0,($0004,a1)
	sub.l	d1,($0008,a1)
	rts

L00d96a:
	subq.w	#1,($001e,a1)
	bne	L00d97a
	addq.w	#1,($0020,a1)
	move.w	#$0020,($001e,a1)
L00d97a:
	rts

L00d97c:
	move.l	($0010,a1),d0
	addi.l	#$00001000,d0
	move.l	d0,d1
	move.l	d0,($0010,a1)
	add.l	($0008,a1),d0
	move.l	d0,($0008,a1)
	swap.w	d0
	cmpi.w	#$00e0,d0
	blt	L00d9a8
	addq.w	#1,($001a,a3)
	neg.l	d1
	asr.l	#3,d1
	move.l	d1,($0010,a1)
L00d9a8:
	rts

L00d9aa:
	move.l	($0008,a1),d1
	cmpi.l	#$01800000,d1
	bgt	L00d9ca
	move.l	($0010,a1),d0
	addi.l	#$00001000,d0
	move.l	d0,($0010,a1)
	add.l	d1,d0
	move.l	d0,($0008,a1)
L00d9ca:
	rts

L00d9cc:
	lea.l	(L047fc0),a3
	lea.l	(L047ab0),a1
	btst.b	#$04,($0020,a1)
	beq	L00da1c
	tst.b	($002f,a0)
	bne	L00d9ec
	jsr	(L01dbd6)
L00d9ec:
	lea.l	(L047fc0),a3
	move.w	($0004,a0),d0
	sub.w	($0024,a3),d0
	subq.w	#8,d0
	cmpi.w	#$fff0,d0
	bcs	L00da1c
	move.w	($0008,a0),d0
	sub.w	($0026,a3),d0
	subq.w	#8,d0
	cmpi.w	#$fff0,d0
	bcs	L00da1c
	clr.w	($0002,a0)
	addi.b	#$1f,($001a,a0)
L00da1c:
	move.w	($001c,a0),d0
	andi.w	#$00ff,d0
	add.w	d0,d0
	move.w	(L00da2e,pc,d0.w),d0
	jmp	(L00da2e,pc,d0.w)

L00da2e:
	.dc.w	L00dae6-L00da2e
	.dc.w	L00dcb6-L00da2e

L00da32:
	move.w	($0044,a3),d0
	cmp.w	($0046,a3),d0
	bcc	L00dad0
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L00dace
	move.w	#$008e,($0000.w,a0)
	move.w	#$0100,($0002,a0)
L00da56:
	jsr	(L01024e)
	lsr.w	#8,d0
	move.w	d0,d1
	move.w	d0,d2
	jsr	(L01024e)
	lsr.w	#8,d0
	sub.w	(L0473f4),d2
	subi.w	#$0020,d2
	cmpi.w	#$ffc0,d2
	bcs	L00da8c
	move.w	d0,d2
	sub.w	(L0473f8),d2
	subi.w	#$0028,d2
	cmpi.w	#$ffb0,d2
	bcc	L00da56
L00da8c:
	move.w	d1,($0004,a0)
	move.w	d0,($0008,a0)
	moveq.l	#$00,d7
	move.w	d7,($0006,a0)
	move.w	d7,($000a,a0)
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L08163a,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	#$007f,($001a,a0)
	move.w	#$8000,($001c,a0)
	move.w	#$0808,($0020,a0)
	move.w	d7,($002e,a0)
	bsr	L00dad2
	addq.w	#1,($0044,a3)
L00dace:
	movea.l	a2,a0
L00dad0:
	rts

L00dad2:
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bge	L00dae4
	ori.w	#$8000,($0018,a0)
L00dae4:
	rts

L00dae6:
	lea.l	(L047ab0),a2
	btst.b	#$02,($0020,a2)
	beq	L00db20
	move.b	#$83,($001c,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$0040,d0
	move.w	d0,($001e,a0)
	ori.w	#$4000,($0018,a0)
	moveq.l	#$00,d0
	move.w	d0,($0002,a0)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
L00db20:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L00db38
	subq.w	#1,($0044,a3)
	jmp	(L029cca)

L00db38:
	jsr	(L029a3e)
	bcc	L00db52
	moveq.l	#$31,d0
	trap	#0
	clr.w	($0002,a0)
	subq.w	#1,($0044,a3)
	jmp	(L029b82)

L00db52:
	cmpi.b	#$83,($001c,a0)
	beq	L00db6a
	subq.b	#1,($0020,a0)
	bne	L00db6a
	move.b	($0021,a0),($0020,a0)
	addq.b	#1,($0019,a0)
L00db6a:
	move.b	($001c,a0),d0
	andi.w	#$007f,d0
	add.w	d0,d0
	move.w	(L00db84,pc,d0.w),d0
	jsr	(L00db84,pc,d0.w)
	jsr	(L025416)
	rts

L00db84:
	.dc.w	L00db8c-L00db84
	.dc.w	L00dbb8-L00db84
	.dc.w	L00dbf2-L00db84
	.dc.w	L00dc1a-L00db84

L00db8c:
	cmpi.b	#$04,($0019,a0)
	bne	L00dbb6
	clr.b	($0019,a0)
	addq.b	#1,($001c,a0)
	move.w	#$0040,($001e,a0)
	ori.w	#$0300,($0002,a0)
	move.l	#L0815ba,($0014,a0)
	move.w	#$0202,($0020,a0)
L00dbb6:
	rts

L00dbb8:
	andi.w	#$800f,($0018,a0)
	subq.w	#1,($001e,a0)
	bne	L00dbf0
	addq.b	#1,($001c,a0)
	move.w	#$00a0,($001e,a0)
	jsr	(L01026c)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#2,d0
	asl.l	#2,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.w	#$0101,($0020,a0)
L00dbf0:
	rts

L00dbf2:
	andi.w	#$800f,($0018,a0)
	subq.w	#1,($001e,a0)
	bne	L00dc18
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	subq.b	#1,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$0202,($0020,a0)
L00dc18:
	rts

L00dc1a:
	move.w	($001e,a0),d0
	beq	L00dc28
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	rts

L00dc28:
	addi.l	#$00001000,($0010,a0)
	rts

L00dc32:
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L00dca6
	move.w	#$008e,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.w	($002c,a3),d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	move.l	d0,d2
	move.l	d1,d3
	asl.l	#4,d0
	asl.l	#5,d1
	add.l	($0004,a2),d0
	add.l	($0008,a2),d1
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	addq.w	#8,($0008,a0)
	asl.l	#3,d2
	asl.l	#2,d3
	move.l	d2,($000c,a0)
	move.l	d3,($0010,a0)
	move.l	#L0816ba,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0001,($001a,a0)
	move.w	#$8001,($001c,a0)
	move.w	#$0606,($001e,a0)
	move.w	#$0001,($002e,a0)
	moveq.l	#$20,d0
	trap	#0
L00dca6:
	movea.l	a2,a0
	move.b	($002d,a3),d0
	addq.b	#4,d0
	neg.b	d0
	move.b	d0,($002d,a3)
	rts

L00dcb6:
	lea.l	(L047ab0),a2
	btst.b	#$02,($0020,a2)
	beq	L00dcd0
	andi.w	#$fcff,($0002,a0)
	ori.w	#$4000,($0018,a0)
L00dcd0:
	cmpi.b	#$80,($001c,a0)
	beq	L00dcec
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L00dcec
	jmp	(L029cca)

L00dcec:
	jsr	(L029a3e)
	bcc	L00dd02
	moveq.l	#$24,d0
	trap	#0
	clr.w	($0002,a0)
	jmp	(L029b82)

L00dd02:
	subq.b	#1,($001e,a0)
	bne	L00dd12
	addq.b	#1,($0019,a0)
	move.b	($001f,a0),($001e,a0)
L00dd12:
	move.b	($001c,a0),d0
	andi.w	#$007f,d0
	add.w	d0,d0
	move.w	(L00dd42,pc,d0.w),d0
	jsr	(L00dd42,pc,d0.w)
	move.w	($0018,a0),d0
	andi.w	#$7fff,d0
	tst.w	($000c,a0)
	bmi	L00dd36
	ori.w	#$8000,d0
L00dd36:
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L00dd42:
	.dc.w	L00dd4e-L00dd42
	.dc.w	L00dd6e-L00dd42
	.dc.w	L00ddb4-L00dd42
	.dc.w	L00ddee-L00dd42
	.dc.w	L00de40-L00dd42
	.dc.w	L00de68-L00dd42

L00dd4e:
	cmpi.b	#$07,($0019,a0)
	bne	L00dd6c
	addq.b	#1,($001c,a0)
	move.w	#$0606,($001e,a0)
	clr.b	($0019,a0)
	move.l	#L0816f2,($0014,a0)
L00dd6c:
	rts

L00dd6e:
	cmpi.b	#$03,($0019,a0)
	bne	L00dd7a
	clr.b	($0019,a0)
L00dd7a:
	move.w	($0008,a0),d0
	addi.w	#$0048,d0
	cmp.w	(L0473f8),d0
	bgt	L00dd94
	addi.l	#$00001000,($0010,a0)
	rts

L00dd94:
	addq.b	#2,($001c,a0)
	move.w	#$0060,($0020,a0)
	move.l	($0010,a0),d0
	asr.l	#5,d0
	move.l	d0,($0024,a0)
	move.l	($000c,a0),d0
	asr.l	#5,d0
	move.l	d0,($0028,a0)
	rts

L00ddb4:
	cmpi.b	#$03,($0019,a0)
	bne	L00ddc0
	clr.b	($0019,a0)
L00ddc0:
	subq.w	#1,($0020,a0)
	beq	L00ddd8
	move.l	($0024,a0),d0
	move.l	($0028,a0),d1
	sub.l	d0,($0010,a0)
	sub.l	d1,($000c,a0)
	rts

L00ddd8:
	addq.b	#1,($001c,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.w	#$0010,($0020,a0)
	rts

L00ddee:
	cmpi.b	#$03,($0019,a0)
	bne	L00ddfa
	clr.b	($0019,a0)
L00ddfa:
	move.w	($0020,a0),d0
	beq	L00de3e
	subq.w	#1,d0
	move.w	d0,($0020,a0)
	jsr	(L01026c)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#3,d0
	asl.l	#3,d1
	move.l	($000c,a0),d2
	move.l	($0010,a0),d3
	asl.l	#5,d2
	asl.l	#5,d3
	sub.l	($000c,a0),d2
	sub.l	($0010,a0),d3
	add.l	d2,d0
	add.l	d3,d1
	asr.l	#5,d0
	asr.l	#5,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
L00de3e:
	rts

L00de40:
	cmpi.b	#$03,($0019,a0)
	bne	L00de4c
	clr.b	($0019,a0)
L00de4c:
	subq.w	#1,($0020,a0)
	bne	L00de56
	addq.b	#1,($001c,a0)
L00de56:
	move.l	($0024,a0),d0
	move.l	($0028,a0),d1
	add.l	d0,($000c,a0)
	add.l	d1,($0010,a0)
	rts

L00de68:
	cmpi.b	#$03,($0019,a0)
	bne	L00de74
	clr.b	($0019,a0)
L00de74:
	rts

L00de76:
	lea.l	(L05bbdc),a3
	move.w	#$001d,d7
L00de80:
	moveq.l	#$00,d5
	move.l	d5,($0000.w,a3)
	move.l	d5,($0004,a3)
	move.l	d5,($0008,a3)
	move.l	d5,($000c,a3)
	move.w	d5,($0042,a3)
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	jsr	(L01024e)
	andi.w	#$00ff,d0
	move.w	d0,($0000.w,a3)
	move.w	d0,d1
	jsr	(L01024e)
	andi.l	#$000000ff,d0
	move.w	d0,($0004,a3)
	add.w	d1,d1
	swap.w	d0
	lsr.l	#6,d0
	add.l	d1,d0
	addi.l	#$00ca0000,d0
	lea.l	($0010,a3),a2
	move.w	#$0007,d6
L00ded0:
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	dbra	d6,L00ded0
	lea.l	($0090,a3),a3
	dbra	d7,L00de80
	jsr	(L018c0e)
	move.b	(L00e1e2),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000e,d7
	asl.w	#5,d7
	lea.l	(L00e1e4),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e821c0),a6
	move.w	#$000f,d7
L00df0e:
	move.l	(a5)+,(a6)+
	dbra	d7,L00df0e
	rts

L00df16:
	bsr	L00e0ec
	lea.l	(L05bbdc),a2
	move.w	#$001d,d7
L00df24:
	move.w	d7,-(a7)
	move.l	($0008,a2),d0
	add.l	d0,($0000.w,a2)
	move.l	($000c,a2),d0
	add.l	d0,($0004,a2)
	move.w	($0030,a3),d0
	add.w	d0,d0
	lea.l	(L00e01a),a4
	move.w	(a4,d0.w),d0
	jsr	(a4,d0.w)
	move.l	#$00020000,d2
	bsr	L00cc48
	move.l	d0,($0008,a2)
	move.l	d1,d0
	move.l	#$00020000,d2
	bsr	L00cc48
	move.l	d0,($000c,a2)
	moveq.l	#$00,d1
	move.w	($0000.w,a2),d0
	move.w	($0004,a2),d1
	add.w	d0,d0
	ext.l	d0
	swap.w	d1
	asr.l	#6,d1
	add.l	d0,d1
	move.l	d1,d0
	subi.l	#$0005c000,d0
	cmpi.l	#$fff88000,d0
	bhi	L00df92
	move.l	#$fffe4000,d1
L00df92:
	addi.l	#$00ca0000,d1
	move.w	($0042,a3),d5
	move.l	d1,($10,a2,d5.w)
	lea.l	(L00e162),a5
	moveq.l	#$20,d0
	moveq.l	#$7c,d1
	movea.l	($10,a2,d5.w),a4
	move.l	(a5,d5.w),d6
	move.l	d6,(a4)
	move.l	d6,($0400,a4)
	sub.w	d0,d5
	and.w	d1,d5
	movea.l	($10,a2,d5.w),a4
	move.l	(a5,d5.w),d6
	move.l	d6,(a4)
	move.l	d6,($0400,a4)
	sub.w	d0,d5
	and.w	d1,d5
	movea.l	($10,a2,d5.w),a4
	move.l	(a5,d5.w),d6
	move.l	d6,(a4)
	move.l	d6,($0400,a4)
	sub.w	d0,d5
	and.w	d1,d5
	movea.l	($10,a2,d5.w),a4
	move.l	(a5,d5.w),d6
	move.l	d6,(a4)
	move.l	d6,($0400,a4)
	sub.w	d0,d5
	addq.w	#4,d5
	and.w	d1,d5
	moveq.l	#$00,d6
	movea.l	($10,a2,d5.w),a4
	move.l	d6,(a4)
	move.l	d6,($0400,a4)
	lea.l	($0090,a2),a2
	move.w	(a7)+,d7
	dbra	d7,L00df24
	move.w	($0042,a3),d5
	addq.w	#4,d5
	andi.w	#$007c,d5
	move.w	d5,($0042,a3)
	rts

L00e01a:
	.dc.b	$00,$06,$00,$8e,$00,$c0,$08,$28
	.dc.b	$00,$06,$00,$18,$67,$2a,$30,$3c
	.dc.b	$00,$0c,$4a,$68,$00,$18,$6a,$02
	.dc.b	$44,$40,$d0,$68,$00,$04,$32,$28
	.dc.b	$00,$08,$34,$2a,$00,$00,$36,$2a
	.dc.b	$00,$04,$4e,$b9
	.dc.l	L010280
	.dc.b	$4e,$b9
	.dc.l	L01032e
L00e050:
	.dc.b	'`HNｹ'
L00e054:
	.dc.l	L01024e
	.dc.b	$02,$40,$00,$3f,$04,$40,$00,$18
	.dc.b	$36,$28,$00,$08,$d6,$40,$34,$3c
	.dc.b	$00,$0c,$4a,$68,$00,$18,$6a,$02
	.dc.b	$44,$42,$d4,$68,$00,$04,$30,$2a
	.dc.b	$00,$00,$32,$2a,$00,$04,$4e,$b9
	.dc.l	L010280
	.dc.b	$4e,$b9
	.dc.l	L01032e
	.dc.b	$4a,$6b,$00,$3a,$67,$0a,$48,$c0
	.dc.b	$48,$c1,$e5,$80,$e5,$81,$60,$04
	.dc.b	$48,$c0,$48,$c1,$d0,$aa,$00,$08
	.dc.b	$d2,$aa,$00,$0c,$4e,$75,$30,$2a
	.dc.b	$00,$00,$32,$2a,$00,$04,$34,$28
	.dc.b	$00,$28,$36,$28,$00,$2a,$4e,$b9
	.dc.l	L010280
	.dc.b	$4e,$b9
	.dc.l	L01032e
	.dc.b	$34,$28,$00,$26,$c1,$c2,$c3,$c2
	.dc.b	$e0,$80,$e0,$81,$d0,$aa,$00,$08
	.dc.b	$d2,$aa,$00,$0c,$4e,$75,$30,$28
	.dc.b	$00,$28,$32,$28,$00,$2a,$34,$2a
	.dc.b	$00,$00,$36,$2a,$00,$04,$60,$cc

L00e0ec:
	lea.l	(L00e1e4),a2
	lea.l	($00e821c0),a4
	move.w	($0042,a3),d0
	lsr.w	#1,d0
	move.w	#$003e,d1
	move.w	#$0038,d2
	move.w	#$0007,d7
L00e10a:
	cmp.w	d2,d0
	bcc	L00e11e
	lea.l	(a4,d0.w),a5
	move.l	(a2)+,(a5)+
	move.l	(a2)+,(a5)
	addq.w	#8,d0
	dbra	d7,L00e10a
	rts

L00e11e:
	move.w	(a2)+,(a4,d0.w)
	addq.w	#2,d0
	and.w	d1,d0
	move.w	(a2)+,(a4,d0.w)
	addq.w	#2,d0
	and.w	d1,d0
	move.w	(a2)+,(a4,d0.w)
	addq.w	#2,d0
	and.w	d1,d0
	move.w	(a2)+,(a4,d0.w)
	addq.w	#2,d0
	and.w	d1,d0
	dbra	d7,L00e10a
	rts

L00e144:
	.dc.b	$00
L00e145:
	.dc.b	$07,$01,$07,$02,$04,$03,$04
L00e14c:
	.dc.b	$00
L00e14d:
	.dc.b	$14,$01,$03,$02,$44,$01,$06,$00
	.dc.b	$0e
L00e156:
	.dc.b	$00
L00e157:
	.dc.b	$06,$01,$03,$02,$02,$03,$14,$02
	.dc.b	$07,$01,$08
L00e162:
	.dc.b	$00,$ff,$00,$ff,$00,$e0,$00,$e0
	.dc.b	$00,$e1,$00,$e1,$00,$e2,$00,$e2
	.dc.b	$00,$e3,$00,$e3,$00,$e4,$00,$e4
	.dc.b	$00,$e5,$00,$e5,$00,$e6,$00,$e6
	.dc.b	$00,$e7,$00,$e7,$00,$e8,$00,$e8
	.dc.b	$00,$e9,$00,$e9,$00,$ea,$00,$ea
	.dc.b	$00,$eb,$00,$eb,$00,$ec,$00,$ec
	.dc.b	$00,$ed,$00,$ed,$00,$ee,$00,$ee
	.dc.b	$00,$ef,$00,$ef,$00,$f0,$00,$f0
	.dc.b	$00,$f1,$00,$f1,$00,$f2,$00,$f2
	.dc.b	$00,$f3,$00,$f3,$00,$f4,$00,$f4
	.dc.b	$00,$f5,$00,$f5,$00,$f6,$00,$f6
	.dc.b	$00,$f7,$00,$f7,$00,$f8,$00,$f8
	.dc.b	$00,$f9,$00,$f9,$00,$fa,$00,$fa
	.dc.b	$00,$fb,$00,$fb,$00,$fc,$00,$fc
	.dc.b	$00,$fd,$00,$fd,$00,$fe,$00,$fe
L00e1e2:
	.dc.b	$0e,$0f
L00e1e4:
	.dc.b	$00,$00,$02,$01,$02,$40,$02,$41
	.dc.b	$02,$80,$02,$81,$02,$c0,$02,$c1
	.dc.b	$03,$00,$03,$01,$03,$40,$03,$41
	.dc.b	$03,$80,$03,$81,$03,$c0,$03,$c1
	.dc.b	$04,$00,$04,$01,$04,$40,$04,$41
	.dc.b	$04,$80,$04,$81,$04,$c0,$04,$c1
	.dc.b	$05,$00,$05,$01,$05,$40,$05,$41
	.dc.b	$05,$80,$05,$81,$05,$c0,$05,$c1

L00e224:
	jsr	(L0298e2)
	bcs	L00e2b6
	move.w	#$008d,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$003f,($001a,a0)
	jsr	(L029cd4)
	add.l	#$00010000,d3
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	clr.w	($0020,a0)
	clr.w	($0022,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	jsr	(L041a64)
	move.l	a0,(L047fc4)
	jsr	(L0298e2)
	bcs	L00e2b6
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0004,($001c,a0)
	clr.w	($0002,a0)
	move.w	#$003f,($001a,a0)
	move.w	#$0000,($0004,a0)
	move.w	#$0000,($0008,a0)
	move.l	#L086ba0,($0014,a0)
	move.w	#$0000,($0018,a0)
	move.l	a0,(L047fc8)
L00e2b6:
	rts

L00e2b8:
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a38)
	movem.l	(a7)+,d0-d7/a0-a6
	cmpi.w	#$000c,($001c,a0)
	bcc	L00e2f0
	movea.l	(L047fc8),a1
	move.w	($0022,a0),d0
	beq	L00e2ea
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	clr.b	($001a,a1)
	move.b	#$03,($0002,a1)
L00e2ea:
	move.w	($001a,a1),($001a,a0)
L00e2f0:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcc	L00e304
	jmp	(L029cca)

L00e304:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L00e312,pc,d0.w),d0
	jmp	(L00e312,pc,d0.w)

L00e312:
	.dc.w	L00e45e-L00e312
	.dc.w	L00e4b2-L00e312
	.dc.w	L00e504-L00e312
	.dc.w	L00e5ac-L00e312
	.dc.w	L00e5e0-L00e312
	.dc.w	L00e60c-L00e312
	.dc.w	L00e6a2-L00e312
	.dc.w	L00e6fc-L00e312
	.dc.w	L00e8f2-L00e312
	.dc.w	L00eb20-L00e312
	.dc.w	L00ea0e-L00e312
	.dc.w	L00ec40-L00e312
	.dc.w	L00ec54-L00e312
	.dc.w	L00edaa-L00e312
	.dc.w	L00ee04-L00e312
	.dc.w	L00ee30-L00e312
	.dc.w	L00ef06-L00e312
	.dc.w	L00e336-L00e312

L00e336:
	movea.l	a0,a1
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0100,d0
	bcc	L00e446
	move.w	d0,($001e,a0)
	ror.w	#1,d0
	bcs	L00e428
	jsr	(L0298a6)
	bcc	L00e362
	jsr	(L0298e2)
	bcs	L00e428
L00e362:
	jsr	(L01024e)
	andi.w	#$0007,d0
	add.w	d0,d0
	move.w	(L00e376,pc,d0.w),d0
	jmp	(L00e376,pc,d0.w)

L00e376:
	.dc.w	L00e386-L00e376
	.dc.w	L00e386-L00e376
	.dc.w	L00e386-L00e376
	.dc.w	L00e386-L00e376
	.dc.w	L00e3ee-L00e376
	.dc.w	L00e3ee-L00e376
	.dc.w	L00e3ba-L00e376
	.dc.w	L00e3ba-L00e376

L00e386:
	jsr	(L01024e)
	andi.w	#$007f,d0
	subi.w	#$0040,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	subi.w	#$0040,d0
	add.w	($0008,a1),d0
	move.w	d0,($0008,a0)
	jsr	(L029b20)
	bra	L00e428
L00e3ba:
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	add.w	($0008,a1),d0
	move.w	d0,($0008,a0)
	jsr	(L029b9e)
	bra	L00e428
L00e3ee:
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0018,d0
	add.w	($0008,a1),d0
	move.w	d0,($0008,a0)
	move.w	#$1f1f,d0
	jsr	(L029bac)
	bra.w	L00e428
L00e428:
	movea.l	a1,a0
	cmpi.w	#$0009,(L0472ee)
	bne	L00e444
	tst.w	(L04731e)
	bne	L00e444
	move.w	#$001b,(L04731e)
L00e444:
	rts

L00e446:
	clr.w	($0000.w,a0)
	clr.w	($0002,a0)
	movem.l	a0,-(a7)
	jsr	(L003fd0)
	movem.l	(a7)+,a0
	rts

L00e45e:
	tst.w	(L047f7a)
	bne	L00e4b0
	addq.w	#1,($001c,a0)
	clr.w	(L04735a)
	moveq.l	#$fe,d0
	trap	#0
	move.w	#$0090,($001e,a0)
	move.w	#$0019,(L04731e)
	jsr	(L018c0e)
	move.b	(L082b2e),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L082b30),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$002f,d7
L00e4aa:
	move.l	(a5)+,(a6)+
	dbra	d7,L00e4aa
L00e4b0:
	rts

L00e4b2:
	subq.w	#1,($001e,a0)
	bne	L00e4b0
	addq.w	#1,($001c,a0)
	moveq.l	#$b6,d0
	trap	#0
	lea.l	($00e82000),a1
	lea.l	(L048ebc),a2
	move.w	#$00cf,d1
	jsr	(L017578)
	lea.l	($00e822e0),a1
	lea.l	(L04919c),a2
	move.w	#$001f,d1
	jsr	(L017578)
	lea.l	($00e82380),a1
	lea.l	(L04923c),a2
	move.w	#$000f,d1
	jsr	(L017578)
	rts

L00e504:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	bcs	L00e520
	cmpi.w	#$0020,d0
	bcs	L00e51c
	addq.w	#1,($001c,a0)
L00e51c:
	bsr	L00e6b8
L00e520:
	move.w	($001e,a0),d6
	cmpi.w	#$003f,d6
	bcc	L00e592
	lsr.w	#3,d6
	lea.l	(L00e594),a1
	move.w	#$0005,d7
L00e536:
	move.w	(a1)+,d1
	move.w	(a1)+,d2
	move.w	d6,d5
	move.w	d7,d0
	lsr.w	#1,d0
	addi.w	#$0010,d0
	lea.l	(L08688e),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0010,d2
	move.w	($001e,a0),d0
	andi.w	#$0007,d0
	sub.w	d0,d2
	sub.w	d0,d2
L00e564:
	move.w	d7,d0
	lsr.w	#1,d0
	addi.w	#$0010,d0
	lea.l	(L08688e),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0020,d2
	cmpi.w	#$0028,d2
	bcc	L00e58a
	move.w	#$0028,d2
L00e58a:
	dbra	d5,L00e564
	dbra	d7,L00e536
L00e592:
	rts

L00e594:
	.dc.b	$00,$53,$00,$88,$00,$ad,$00,$88
	.dc.b	$00,$27,$00,$7e,$00,$d9,$00,$7e
	.dc.b	$00,$0c,$00,$6c,$00,$f4,$00,$6c

L00e5ac:
	move.w	($001e,a0),d0
	cmpi.w	#$0060,d0
	bcc	L00e5be
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	rts

L00e5be:
	tst.w	(L04731e)
	bne	L00e5de
	addq.w	#1,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.l	#L086a30,($0014,a0)
	move.w	#$0000,($0018,a0)
L00e5de:
	rts

L00e5e0:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	bcs	L00e604
	bne	L00e600
	addq.w	#1,($001c,a0)
	moveq.l	#$ac,d0
	trap	#0
	move.w	#$0080,($001e,a0)
	moveq.l	#$00,d0
L00e600:
	bsr	L00e6b8
L00e604:
	jsr	(L025416)
	rts

L00e60c:
	subq.w	#1,($001e,a0)
	bpl	L00e62c
	move.w	($0018,a0),d0
	addq.w	#1,d0
	move.w	d0,($0018,a0)
	cmpi.w	#$0007,d0
	beq	L00e63c
	move.b	(L00e634,pc,d0.w),d0
	ext.w	d0
	move.w	d0,($001e,a0)
L00e62c:
	jsr	(L025416)
	rts

L00e634:
	.dc.b	$0a,$0a,$12,$1a,$12,$0a,$0a,$60

L00e63c:
	addq.w	#1,($001c,a0)
	move.w	#$0040,($001e,a0)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00e698
	move.w	#$00a8,($0000.w,a0)
	clr.w	($001c,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	($0004,a1),d0
	addi.w	#$000c,d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d0
	subi.w	#$0010,d0
	move.w	d0,($0008,a0)
	move.l	#$ffff0000,($0010,a0)
	move.l	#$00018000,($000c,a0)
	move.l	#L086a70,($0014,a0)
	move.w	#$0000,($0018,a0)
L00e698:
	movea.l	a1,a0
	jsr	(L025416)
	rts

L00e6a2:
	subq.w	#1,($001e,a0)
	bne	L00e6b0
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
L00e6b0:
	jsr	(L025416)
	rts

L00e6b8:
	lea.l	($00e82002),a2
	lea.l	(L048ebe),a1
	move.w	#$00ce,d7
	jsr	(L01758e)
	lea.l	($00e82380),a2
	lea.l	(L04923c),a1
	move.w	#$000f,d7
	jsr	(L01758e)
	lea.l	($00e822e0),a2
	lea.l	(L04919c),a1
	move.w	#$001f,d7
	jsr	(L01758e)
	rts

L00e6fc:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0030,d0
	beq	L00e72e
	bcc	L00e7be
	lsr.w	#3,d0
	move.w	#$0080,d1
	move.w	#$00d4,d2
	lea.l	(L086e28),a5
	jsr	(L025426)
	jsr	(L025416)
	rts

L00e72e:
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0002,d1
	jsr	(L00e80a)
	move.w	#$0004,d1
	jsr	(L00e80a)
	move.w	#$0006,d1
	jsr	(L00e80a)
	move.w	#$0008,d1
	jsr	(L00e80a)
	move.w	#$000a,d1
	jsr	(L00e80a)
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0002,d1
	jsr	(L00e80a)
	move.w	#$0004,d1
	jsr	(L00e80a)
	move.w	#$0006,d1
	jsr	(L00e80a)
	move.w	#$0008,d1
	jsr	(L00e80a)
	move.w	#$000a,d1
	jsr	(L00e80a)
	move.w	($001e,a0),d0
L00e7be:
	cmpi.w	#$0050,d0
	bcc	L00e7de
	move.w	#$0080,d1
	move.w	#$00d4,d2
	lea.l	(L086e28),a5
	move.w	#$0005,d0
	jsr	(L025426)
	rts

L00e7de:
	subi.w	#$0050,d0
	cmpi.w	#$0030,d0
	bcc	L00e806
	lsr.w	#3,d0
	neg.w	d0
	addi.w	#$0005.w,d0
	move.w	#$0080,d1
	move.w	#$00d4,d2
	lea.l	(L086e28),a5
	jsr	(L025426)
	rts

L00e806:
	bra	L00f466
L00e80a:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00e87c
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0002,($001c,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	jsr	(L01024e)
	asr.w	#8,d0
	asr.w	#5,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	asr.w	#8,d0
	asr.w	#4,d0
	add.w	($0008,a1),d0
	subi.w	#$0018,d0
	move.w	d0,($0008,a0)
	clr.l	($000c,a0)
	move.w	d1,d0
	neg.w	d0
	add.w	#$000a,d0
	swap.w	d0
	clr.w	d0
	lsr.l	#2,d0
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	move.w	d0,($001e,a0)
	move.l	#L086ae8,($0014,a0)
	move.w	d1,($0018,a0)
L00e87c:
	movea.l	a1,a0
	rts

L00e880:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00e8ee
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0003,($001c,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	jsr	(L01024e)
	asr.w	#8,d0
	asr.w	#5,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	jsr	(L01024e)
	asr.w	#8,d0
	asr.w	#4,d0
	add.w	#$0020,d0
	move.w	d0,($0008,a0)
	clr.l	($000c,a0)
	move.w	d1,d0
	swap.w	d0
	clr.w	d0
	lsr.l	#2,d0
	addi.l	#$00044000,d0
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	move.w	d0,($001e,a0)
	move.l	#L086ae8,($0014,a0)
	move.w	d1,($0018,a0)
L00e8ee:
	movea.l	a1,a0
	rts

L00e8f2:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0018,d0
	beq	L00e91e
	bcc	L00e9ae
	lsr.w	#2,d0
	move.w	($0004,a0),d1
	move.w	#$00e8,d2
	lea.l	(L086ab8),a5
	jsr	(L025426)
	rts

L00e91e:
	move.w	#$0000,d1
	jsr	(L00e880)
	move.w	#$0000,d1
	jsr	(L00e880)
	move.w	#$0002,d1
	jsr	(L00e880)
	move.w	#$0004,d1
	jsr	(L00e880)
	move.w	#$0006,d1
	jsr	(L00e880)
	move.w	#$0008,d1
	jsr	(L00e880)
	move.w	#$000a,d1
	jsr	(L00e880)
	move.w	#$0000,d1
	jsr	(L00e880)
	move.w	#$0000,d1
	jsr	(L00e880)
	move.w	#$0002,d1
	jsr	(L00e880)
	move.w	#$0004,d1
	jsr	(L00e880)
	move.w	#$0006,d1
	jsr	(L00e880)
	move.w	#$0008,d1
	jsr	(L00e880)
	move.w	#$000a,d1
	jsr	(L00e880)
	move.w	($001e,a0),d0
L00e9ae:
	cmpi.w	#$0050,d0
	bcc	L00e9ce
	move.w	($0004,a0),d1
	move.w	#$00e8,d2
	lea.l	(L086ab8),a5
	move.w	#$0005,d0
	jsr	(L025426)
	rts

L00e9ce:
	subi.w	#$0050,d0
	cmpi.w	#$0018,d0
	bcc	L00e9fa
	lsr.w	#2,d0
	neg.w	d0
	addi.w	#$0005.w,d0
	move.w	($0004,a0),d1
	move.w	#$00e8,d2
	lea.l	(L086ab8),a5
	jsr	(L025426)
	bsr	L00f4d4
	rts

L00e9fa:
	addq.w	#1,($001c,a0)
	move.w	#$0010,($001e,a0)
	bsr	L00f4d4
	bsr	L00f4b8
	rts

L00ea0e:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0018,d0
	beq	L00ea3e
	bcc	L00eace
	lsr.w	#2,d0
	move.w	($0004,a0),d1
	move.w	#$00e8,d2
	lea.l	(L086ab8),a5
	jsr	(L025426)
	bsr	L00f4d4
	rts

L00ea3e:
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0002,d1
	jsr	(L00e80a)
	move.w	#$0004,d1
	jsr	(L00e80a)
	move.w	#$0006,d1
	jsr	(L00e80a)
	move.w	#$0008,d1
	jsr	(L00e80a)
	move.w	#$000a,d1
	jsr	(L00e80a)
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0000,d1
	jsr	(L00e80a)
	move.w	#$0002,d1
	jsr	(L00e80a)
	move.w	#$0004,d1
	jsr	(L00e80a)
	move.w	#$0006,d1
	jsr	(L00e80a)
	move.w	#$0008,d1
	jsr	(L00e80a)
	move.w	#$000a,d1
	jsr	(L00e80a)
	move.w	($001e,a0),d0
L00eace:
	cmpi.w	#$0040,d0
	bcc	L00eaee
	move.w	($0004,a0),d1
	move.w	#$00e8,d2
	lea.l	(L086ab8),a5
	move.w	#$0005,d0
	jsr	(L025426)
	rts

L00eaee:
	subi.w	#$0040,d0
	cmpi.w	#$0018,d0
	bcc	L00eb16
	lsr.w	#2,d0
	neg.w	d0
	addi.w	#$0005.w,d0
	move.w	($0004,a0),d1
	move.w	#$00e8,d2
	lea.l	(L086ab8),a5
	jsr	(L025426)
	rts

L00eb16:
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	rts

L00eb20:
	jsr	(L029a3e)
	bcc	L00eb5e
	beq	L00ebb6
	moveq.l	#$48,d0
	trap	#0
	move.w	#$0010,($0022,a0)
	move.w	($001a,a0),d7
	andi.w	#$00ff,d7
	lsr.w	#2,d7
	addq.w	#1,d7
	move.w	d7,(L047fbe)
	movea.l	(L047fc8),a1
	clr.b	($0002,a1)
	movea.l	(L047fc8),a1
	move.w	($001a,a0),($001a,a1)
L00eb5e:
	subq.w	#1,($001e,a0)
	bpl	L00eb90
	move.w	($0018,a0),d0
	addq.w	#1,d0
	move.w	d0,($0018,a0)
	andi.w	#$00ff,d0
	cmpi.w	#$0007,d0
	beq	L00eb9e
	move.b	(L00eb96,pc,d0.w),d0
	ext.w	d0
	move.w	d0,($001e,a0)
	move.b	($0019,a0),d0
	cmpi.w	#$0003,d0
	bne	L00eb90
	bsr	L010154
L00eb90:
	bsr	L00f4d4
	rts

L00eb96:
	.dc.b	$04,$04,$04,$10,$06,$06,$06,$00

L00eb9e:
	move.b	#$00,($0019,a0)
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	bsr	L00f4a4
	bsr	L00f4d4
	rts

L00ebb6:
	move.w	#$000c,($001c,a0)
	move.w	#$0000,($001e,a0)
	moveq.l	#$ff,d0
	trap	#0
	bsr	L00f4a4
	jsr	(L025416)
	clr.w	(L047fbe)
	moveq.l	#$6d,d0
	trap	#0
	movea.l	a0,a2
	movea.l	(L047fc8),a1
	jsr	(L0298e2)
	bcs	L00ec3c
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0006,($001c,a0)
	clr.w	($0020,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	($0018,a1),d0
	andi.w	#$8000,d0
	subi.w	#$4000,d0
	ext.l	d0
	asl.l	#2,d0
	neg.l	d0
	move.l	d0,($000c,a0)
	move.l	#$fffe0000,($0010,a0)
	clr.w	($001e,a0)
	clr.w	($0018,a0)
	move.l	#L086bb0,($0014,a0)
L00ec3c:
	movea.l	a2,a0
	rts

L00ec40:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0010,d0
	bcc	L00f466
	rts

L00ec54:
	move.w	(L0472f6),d0
	and.w	#$0001,d0
	bne	L00ec66
	jsr	(L025416)
L00ec66:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	move.w	d0,d7
	cmpi.w	#$0080,d0
	bcc	L00ed96
	andi.w	#$0004,d7
	andi.w	#$0003,d0
	beq	L00ecfc
	movea.l	a0,a2
	cmpi.w	#$0002,d0
	bne	L00ecf8
	movea.l	(L047fc8),a1
	jsr	(L0298e2)
	bcs	L00ecf8
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0006,($001c,a0)
	move.w	#$0002,($0020,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	add.l	d0,d0
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	move.w	#$0020,($001e,a0)
	move.l	#L086cf8,($0014,a0)
	jsr	(L01024e)
	andi.w	#$0001,d0
	move.w	d0,($0018,a0)
L00ecf8:
	movea.l	a2,a0
	rts

L00ecfc:
	movea.l	a0,a2
	movea.l	(L047fc8),a1
	jsr	(L0298a6)
	bcs	L00ed92
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0007,($001c,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	($0004,a1),($0020,a0)
	move.w	($0008,a1),($0024,a0)
	move.w	($0018,a1),d0
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	neg.l	d0
	move.l	d0,($0028,a0)
	moveq.l	#$ff,d0
	jsr	(L01024e)
	asl.l	#2,d0
	sub.l	#$00010000,d0
	move.l	d0,($0010,a0)
	moveq.l	#$ff,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,($002c,a0)
	move.w	($001e,a2),d0
	lsr.w	#1,d0
	andi.b	#$3e,d0
	move.b	d0,($001e,a0)
	clr.b	($001f,a0)
	clr.w	($0018,a0)
	move.l	#L086cf8,($0014,a0)
L00ed92:
	movea.l	a2,a0
	rts

L00ed96:
	move.w	#$001a,(L04731e)
	addq.w	#1,($001c,a0)
	move.w	#$0100,($001e,a0)
	rts

L00edaa:
	move.w	($001e,a0),d0
	beq	L00edb8
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	rts

L00edb8:
	tst.w	(L04731e)
	bne	L00ee02
	moveq.l	#$b1,d0
	trap	#0
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	jsr	(L018c0e)
	move.b	(L082bf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L082bf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$001f,d7
L00edf4:
	move.l	(a5)+,(a6)+
	dbra	d7,L00edf4
	bsr	L00f576
	bsr	L00fe0e
L00ee02:
	rts

L00ee04:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0081,d0
	bcc	L00ee20
	move.w	d0,d7
	lsr.w	#3,d7
	jsr	(L041a2c)
	rts

L00ee20:
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	jsr	(L041a64)
	rts

L00ee30:
	addq.w	#1,($001e,a0)
	cmpi.w	#$0080,($001e,a0)
	bcs	L00ee52
	addq.w	#1,($001c,a0)
	move.w	#$001d,(L04731e)
	clr.w	($001e,a0)
	move.b	#$03,($0002,a0)
L00ee52:
	bsr	L00f638
	rts

L00ee58:
	move.w	#$001c,(L04731e)
	clr.w	(L047322)
	jsr	(L01024e)
	move.w	d0,(L047324)
	jsr	(L0039f0)
	lea.l	(L047ae0),a1
L00ee7e:
	cmpi.w	#$00a7,($0000.w,a1)
	bne	L00ee8e
	clr.w	($0000.w,a1)
	clr.w	($0002,a1)
L00ee8e:
	lea.l	($0030,a1),a1
	cmpa.l	#L047f60,a1
	bne	L00ee7e
	clr.w	(L047fbe)
	moveq.l	#$f0,d0
	trap	#0
	moveq.l	#$ad,d0
	trap	#0
	move.l	#$00050005,d0
	jsr	(L029a68)
	moveq.l	#$00,d0
	move.l	d0,(L0470ee)
	move.l	d0,(L0470f2)
	move.l	d0,(L0470f6)
	move.l	d0,(L0470fa)
	move.l	d0,(L0470fe)
	move.l	d0,(L047102)
	move.l	d0,(L047106)
	move.l	d0,(L04710a)
	move.w	#$0011,($001c,a0)
	clr.w	($001e,a0)
	rts

L00eef2:
	cmpi.b	#$3f,($001b,a0)
	bcs	L00ef04
	cmpi.w	#$0001,($0022,a0)
	bcs.w	L00ef04
L00ef04:
	rts

L00ef06:
	move.w	($0022,a0),d0
	beq	L00ef1e
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	bne	L00ef1e
	clr.b	($001a,a0)
	move.b	#$03,($0002,a0)
L00ef1e:
	jsr	(L029a3e)
	bcc	L00ef4a
	beq	L00ee58
	moveq.l	#$48,d0
	trap	#0
	move.w	#$0010,($0022,a0)
	move.w	($001a,a0),d7
	andi.w	#$00ff,d7
	lsr.w	#3,d7
	addq.w	#1,d7
	move.w	d7,(L047fbe)
	clr.b	($0002,a0)
L00ef4a:
	move.w	($0020,a0),d0
	add.w	d0,d0
	move.w	(L00ef58,pc,d0.w),d0
	jmp	(L00ef58,pc,d0.w)

L00ef58:
	.dc.w	L00ef62-L00ef58
	.dc.w	L00f06c-L00ef58
	.dc.w	L00f154-L00ef58
	.dc.w	L00f2e4-L00ef58
	.dc.w	L00f386-L00ef58

L00ef62:
	bsr	L00eef2
	bcc	L00f638
	move.w	($001e,a0),d0
	cmpi.w	#$0018,d0
	beq	L00ef74
	bcc	L00ef94
L00ef74:
	tst.b	($0026,a0)
	bne	L00ef80
	move.b	#$02,($0026,a0)
L00ef80:
	cmpi.b	#$02,($0026,a0)
	bne	L00ef94
	lsr.w	#1,d0
	neg.w	d0
	addi.w	#$000b,d0
	move.b	d0,($0027,a0)
L00ef94:
	subq.w	#1,($001e,a0)
	bpl	L00f638
	jsr	(L01024e)
	andi.w	#$0003,d0
	add.w	d0,d0
	move.w	(L00efb0,pc,d0.w),d0
	jmp	(L00efb0,pc,d0.w)

L00efb0:
	.dc.w	L00f058-L00efb0
	.dc.w	L00efee-L00efb0
	.dc.w	L00f026-L00efb0
	.dc.w	L00efb8-L00efb0

L00efb8:
	cmpi.b	#$3f,($001b,a0)
	bcc	L00efee
	move.w	#$0002,($0020,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0024,a0)
	move.w	($0018,a0),d0
	andi.w	#$8000,d0
	subi.w	#$4000,d0
	ext.l	d0
	move.l	d0,($000c,a0)
	move.l	#$fffff000,($0010,a0)
	bra	L00f638
L00efee:
	cmpi.b	#$2a,($001b,a0)
	bcs	L00efb8
	move.w	#$0001,($0020,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0024,a0)
	move.w	($0018,a0),d0
	andi.w	#$8000,d0
	subi.w	#$4000,d0
	ext.l	d0
	asl.l	#1,d0
	move.l	d0,($000c,a0)
	move.l	#$fff80000,($0010,a0)
	bra	L00f638
L00f026:
	move.b	($001b,a0),d0
	lsr.w	#3,d0
	cmpi.b	#$04,d0
	bcs	L00f040
	cmpi.b	#$08,d0
	beq	L00f040
	cmpi.b	#$0c,d0
	beq	L00f040
	bra	L00f058
L00f040:
	move.w	#$0003,($0020,a0)
	clr.w	($001e,a0)
	move.w	#$0200,($0024,a0)
	moveq.l	#$6a,d0
	trap	#0
	bra	L00f638
L00f058:
	move.w	#$0004,($0020,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0024,a0)
	bra	L00f638
L00f06c:
	clr.w	(L0470ee)
	clr.w	(L0470f6)
	bsr	L00eef2
	bcc	L00f638
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0010,d0
	bcs	L00f112
	cmpi.w	#$ff10,d0
	bcc	L00f136
	cmpi.w	#$ff00,d0
	bcc	L00f11c
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	cmpi.w	#$0010,($0004,a0)
	bcc	L00f0b8
	move.l	#$00007000,($000c,a0)
L00f0b8:
	cmpi.w	#$00f0,($0004,a0)
	bcs	L00f0c8
	move.l	#$ffff9000,($000c,a0)
L00f0c8:
	move.l	($0010,a0),d0
	add.l	#$00004000,d0
	move.l	d0,($0010,a0)
	add.l	d0,($0008,a0)
	cmpi.w	#$00b8,($0008,a0)
	bcs	L00f0fe
	moveq.l	#$02,d0
	trap	#0
	move.w	#$00b8,($0008,a0)
	move.w	#$ff00,($001e,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	bra	L00f622
L00f0fe:
	move.w	($001e,a0),d0
	subi.w	#$0010,d0
	lsr.w	#3,d0
	addq.w	#2,d0
	move.b	d0,($0025,a0)
	bra	L00f622
L00f112:
	move.b	#$01,($0025,a0)
	bra	L00f638
L00f11c:
	andi.w	#$0001,d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	move.b	#$0b,($0025,a0)
	bra	L00f638
L00f136:
	move.w	#$0000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	move.w	d0,($001e,a0)
	move.b	#$00,($0025,a0)
	bra	L00f638
L00f154:
	clr.w	(L0470ee)
	clr.w	(L0470f6)
	bsr	L00eef2
	bcc	L00f638
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	cmpi.w	#$0010,($0004,a0)
	bcc	L00f180
	move.l	#$00007000,($000c,a0)
L00f180:
	cmpi.w	#$00f0,($0004,a0)
	bcs	L00f190
	move.l	#$ffff9000,($000c,a0)
L00f190:
	tst.l	($0010,a0)
	beq	L00f242
	bpl	L00f1ec
	move.l	($0010,a0),d0
	subi.l	#$00004000,d0
	move.l	d0,($0010,a0)
	add.l	d0,($0008,a0)
	cmpi.w	#$ff80,($0008,a0)
	bgt	L00f1bc
	move.l	#$00001000,($0010,a0)
L00f1bc:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	asr.w	#3,d0
	cmpi.w	#$0002,d0
	bcs	L00f1d2
	move.w	#$0002,d0
L00f1d2:
	addq.w	#2,d0
	move.b	d0,($0025,a0)
	move.w	($001e,a0),d0
	andi.w	#$0007,d0
	bne	L00f622
	bsr	L00f28a
	bra	L00f622
L00f1ec:
	move.l	($0010,a0),d0
	addi.l	#$00002000,d0
	move.l	d0,($0010,a0)
	add.l	d0,($0008,a0)
	cmpi.w	#$00b8,($0008,a0)
	blt	L00f22e
	move.w	#$00b8,($0008,a0)
	move.l	#$00000000,($0010,a0)
	move.l	#$00000000,($000c,a0)
	clr.w	($001e,a0)
	move.b	#$00,($0025,a0)
	moveq.l	#$02,d0
	trap	#0
	bra	L00f622
L00f22e:
	move.w	#$00b8,d0
	sub.w	($0008,a0),d0
	lsr.w	#5,d0
	addq.w	#2,d0
	move.b	d0,($0025,a0)
	bra	L00f622
L00f242:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0020,d0
	bcc	L00f26c
	andi.w	#$0001,d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	move.b	#$0b,($0025,a0)
	bra	L00f638
L00f26c:
	move.w	#$0000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	move.w	d0,($001e,a0)
	move.b	#$00,($0025,a0)
	bra	L00f638
L00f28a:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00f2e0
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0008,($001c,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0001,($001a,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L086e78,($0014,a0)
	clr.w	($0018,a0)
	clr.w	($001e,a0)
L00f2e0:
	movea.l	a1,a0
	rts

L00f2e4:
	move.w	($001e,a0),d0
	bsr	L00eef2
	bcc	L00f2f4
	addq.w	#1,d0
	move.w	d0,($001e,a0)
L00f2f4:
	lsr.w	#3,d0
	cmpi.w	#$0008,d0
	beq	L00f35c
	move.b	d0,($0025,a0)
	cmpi.b	#$04,d0
	bcs	L00f34c
	movea.l	(L047fc8),a1
	move.w	($0004,a0),d1
	move.w	d1,($0004,a1)
	move.w	($0008,a0),d2
	move.w	d2,($0008,a1)
	move.b	#$02,($0002,a1)
	move.w	#$00ff,($001a,a1)
	subi.b	#$04.b,d0
	move.w	($0018,a0),d3
	move.b	d0,d3
	move.w	d3,d0
	move.w	d0,($0018,a1)
	lea.l	(L086f00),a5
	move.l	a5,($0014,a1)
	jsr	(L025426)
	bra	L00f622
L00f34c:
	movea.l	(L047fc8),a1
	move.b	#$00,($0002,a1)
	bra	L00f622
L00f35c:
	movea.l	(L047fc8),a1
	move.b	#$00,($0002,a1)
	move.w	#$0000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	move.w	d0,($001e,a0)
	move.b	#$00,($0025,a0)
	bra	L00f638
L00f386:
	move.w	($001e,a0),d0
	bsr	L00eef2
	bcc	L00f396
	addq.w	#1,d0
	move.w	d0,($001e,a0)
L00f396:
	lsr.w	#3,d0
	cmpi.w	#$0005,d0
	beq	L00f43e
	ori.w	#$0300,d0
	move.w	d0,($0026,a0)
	move.w	($001e,a0),d0
	cmpi.w	#$0014,d0
	bcs	L00f622
	andi.w	#$0003,d0
	bne	L00f622
	bsr	L00eef2
	bcc	L00f622
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L00f438
	move.w	#$00a8,($0000.w,a0)
	move.w	#$000a,($001c,a0)
	move.w	#$0300,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),d0
	subi.w	#$0020,d0
	move.w	d0,($0008,a0)
	move.l	#$00020000,d0
	jsr	(L01024e)
	move.l	d0,($0010,a0)
	move.l	#$00020000,d0
	jsr	(L01024e)
	move.l	d0,($000c,a0)
	move.w	($0018,a1),d0
	clr.b	d0
	move.w	d0,($0018,a0)
	bmi	L00f428
	neg.l	($000c,a0)
L00f428:
	move.l	#L086e58,($0014,a0)
	clr.w	($001e,a0)
	moveq.l	#$64,d0
	trap	#0
L00f438:
	movea.l	a1,a0
	bra	L00f622
L00f43e:
	move.w	#$0000,($0026,a0)
	move.w	#$0000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$000f,d0
	addi.w	#$0008.w,d0
	move.w	d0,($001e,a0)
	move.b	#$00,($0025,a0)
	bra	L00f638
L00f466:
	move.w	#$0008,($001c,a0)
	clr.w	($001e,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	move.w	d0,($0004,a0)
	move.w	#$00bf,($0008,a0)
	move.l	#L086b68,($0014,a0)
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	andi.w	#$8000,d0
	move.w	d0,($0018,a0)
	moveq.l	#$6c,d0
	trap	#0
	rts

L00f4a4:
	clr.w	($0022,a0)
	movea.l	(L047fc8),a1
	clr.b	($0002,a0)
	clr.b	($0002,a1)
	rts

L00f4b8:
	movea.l	(L047fc8),a1
	move.b	#$02,($0002,a0)
	move.b	#$03,($0002,a1)
	clr.b	($001a,a0)
	clr.b	($001a,a1)
	rts

L00f4d4:
	move.w	($0022,a0),d0
	cmpi.w	#$0009,d0
	beq	L00f4ec
	cmpi.w	#$0008,d0
	beq	L00f4ec
	cmpi.w	#$0006,d0
	beq	L00f4f6
	bra	L00f50c
L00f4ec:
	move.w	($0018,a0),d0
	eori.w	#$8000,d0
	bra	L00f4fa
L00f4f6:
	move.w	($0018,a0),d0
L00f4fa:
	andi.w	#$8000,d0
	subi.w	#$4000,d0
	ext.l	d0
	add.l	d0,d0
	add.l	d0,d0
	add.l	d0,($0004,a0)
L00f50c:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	andi.w	#$8000,d0
	move.b	($0019,a0),d0
	move.w	d0,($0018,a0)
	movea.l	(L047fc8),a1
	move.w	($0008,a0),d2
	subi.w	#$0030,d2
	tst.w	($0018,a0)
	bmi	L00f542
	move.w	($0004,a0),d1
	subq.w	#4,d1
	move.w	#$0000,d0
	bra	L00f54c
L00f542:
	move.w	($0004,a0),d1
	addq.w	#4,d1
	move.w	#$8000,d0
L00f54c:
	move.w	d2,($0008,a1)
	move.w	d1,($0004,a1)
	move.w	d0,($0018,a1)
	lea.l	(L086ba0),a5
	cmpi.b	#$1f,($001b,a0)
	bcc	L00f568
	addq.b	#1,d0
L00f568:
	jsr	(L025426)
	jsr	(L025416)
	rts

L00f576:
	move.w	#$007e,($001a,a0)
	move.b	#$00,($0002,a0)
	clr.w	($0020,a0)
	clr.w	($0022,a0)
	clr.w	($0024,a0)
	clr.w	($0026,a0)
	move.w	#$00b8,($0008,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	addi.w	#$0040,d0
	move.w	d0,($0004,a0)
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	andi.w	#$8000,d0
	move.w	d0,($0018,a0)
	move.l	#L086d28,($0014,a0)
	rts

L00f5c6:
	move.w	($0024,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	bne	L00f5d6
	move.w	#$0100,d0
L00f5d6:
	cmpi.w	#$0105,d0
	bne	L00f5e0
	move.w	#$0200,d0
L00f5e0:
	cmpi.w	#$0203,d0
	bne	L00f5ea
	move.w	#$0000,d0
L00f5ea:
	move.w	d0,($0024,a0)
	move.w	($0026,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0004,d0
	bne	L00f5fe
	move.w	#$0100,d0
L00f5fe:
	cmpi.w	#$0107,d0
	bne	L00f608
	move.w	#$0200,d0
L00f608:
	cmpi.w	#$020b,d0
	bne	L00f612
	move.w	#$0300,d0
L00f612:
	cmpi.w	#$0305,d0
	bne	L00f61c
	move.w	#$0000,d0
L00f61c:
	move.w	d0,($0026,a0)
	rts

L00f622:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	andi.w	#$8000,d0
	move.b	($0017,a0),d0
	move.w	d0,($0018,a0)
L00f638:
	cmpi.b	#$03,($0026,a0)
	bcc	L00f65c
	move.w	($0022,a0),d0
	beq	L00f65c
	lsr.w	#1,d0
	cmpi.w	#$0006,d0
	bcs	L00f652
	move.w	#$0000,d0
L00f652:
	move.b	d0,($0027,a0)
	move.b	#$01,($0026,a0)
L00f65c:
	move.b	($0024,a0),d0
	ext.w	d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L00f6d2,pc,d0.w),a1
	move.b	($0025,a0),d0
	ext.w	d0
	asl.w	#3,d0
	lea.l	(a1,d0.w),a1
	move.l	($0000.w,a1),($0014,a0)
	move.b	($0004,a1),($0019,a0)
	move.b	($0005,a1),d1
	move.b	($0006,a1),d2
	ext.w	d1
	ext.w	d2
	tst.w	($0018,a0)
	bpl	L00f696
	neg.w	d1
L00f696:
	add.w	($0004,a0),d1
	add.w	($0008,a0),d2
	move.b	($0026,a0),d0
	ext.w	d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L00f6de,pc,d0.w),a1
	move.b	($0027,a0),d0
	ext.w	d0
	asl.w	#3,d0
	lea.l	(a1,d0.w),a1
	movea.l	($0000.w,a1),a5
	move.w	($0018,a0),d0
	move.b	($0004,a1),d0
	jsr	(L025426)
	jsr	(L025416)
	rts

L00f6d2:
	.dc.l	L00f6ee
	.dc.l	L00f74e
	.dc.l	L00f776
L00f6de:
	.dc.l	L00f7b6
	.dc.l	L00f7d6
	.dc.l	L00f80e
	.dc.l	L00f876
L00f6ee:
	.dc.l	L086d28
	.dc.b	$00,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$01,$fa,$ec,$00
	.dc.l	L086d28
	.dc.b	$02,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$03,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$04,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$05,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$06,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$07,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$08,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$09,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$0a,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$0b,$fa,$ec,$00
L00f74e:
	.dc.l	L086d28
	.dc.b	$00,$00,$e0,$00
	.dc.l	L086e18
	.dc.b	$00,$00,$e0,$00
	.dc.l	L086e18
	.dc.b	$01,$00,$e0,$00
	.dc.l	L086e18
	.dc.b	$00,$00,$e0,$00
	.dc.l	L086d28
	.dc.b	$00,$00,$e0,$00
L00f776:
	.dc.l	L086d28
	.dc.b	$00,$00,$e0,$00
	.dc.l	L086ed0
	.dc.b	$00,$00,$e0,$00
	.dc.l	L086ed0
	.dc.b	$01,$00,$df,$00
	.dc.l	L086ed0
	.dc.b	$02,$e9,$e0,$00
	.dc.l	L086ed0
	.dc.b	$03,$e8,$e0,$00
	.dc.l	L086ed0
	.dc.b	$04,$e7,$e0,$00
	.dc.l	L086ed0
	.dc.b	$05,$e6,$e2,$00
	.dc.l	L086d28
	.dc.b	$00,$00,$e0,$00
L00f7b6:
	.dc.l	L086d88
	.dc.b	$02,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$01,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$00,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$01,$00,$00,$00
L00f7d6:
	.dc.l	L086da0
	.dc.b	$00,$00,$00,$00
	.dc.l	L086da0
	.dc.b	$01,$00,$00,$00
	.dc.l	L086da0
	.dc.b	$02,$00,$00,$00
	.dc.l	L086da0
	.dc.b	$03,$00,$00,$00
	.dc.l	L086da0
	.dc.b	$02,$00,$00,$00
	.dc.l	L086da0
	.dc.b	$01,$00,$00,$00
	.dc.l	L086da0
	.dc.b	$00,$00,$00,$00
L00f80e:
	.dc.l	L086d88
	.dc.b	$02,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$01,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$00,$00,$00,$00
	.dc.l	L086dc8
	.dc.b	$00,$00,$00,$00
	.dc.l	L086dc8
	.dc.b	$01,$00,$00,$00
	.dc.l	L086dc8
	.dc.b	$02,$00,$00,$00
	.dc.l	L086dc8
	.dc.b	$03,$00,$00,$00
	.dc.l	L086dc8
	.dc.b	$04,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$00,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$01,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$02,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$02,$00,$00,$00
	.dc.l	L086d88
	.dc.b	$02,$00,$00,$00
L00f876:
	.dc.l	L086df0
	.dc.b	$00,$00,$00,$00
	.dc.l	L086df0
	.dc.b	$01,$00,$00,$00
	.dc.l	L086df0
	.dc.b	$02,$00,$00,$00
	.dc.l	L086df0
	.dc.b	$03,$00,$00,$00
	.dc.l	L086df0
	.dc.b	$04,$00,$00,$00

L00f89e:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L00f8ac,pc,d0.w),d0
	jmp	(L00f8ac,pc,d0.w)

L00f8ac:
	.dc.w	L00f8c4-L00f8ac
	.dc.w	L00f964-L00f8ac
	.dc.w	L00f9c6-L00f8ac
	.dc.w	L00fa1c-L00f8ac
	.dc.w	L00f8c2-L00f8ac
	.dc.w	L00fa58-L00f8ac
	.dc.w	L00faa8-L00f8ac
	.dc.w	L00fbd4-L00f8ac
	.dc.w	L00ff74-L00f8ac
	.dc.w	L0100c0-L00f8ac
	.dc.w	L010104-L00f8ac

L00f8c2:
	rts

L00f8c4:
	addi.l	#$00004000,($0010,a0)
	jsr	(L029954)
	cmpi.w	#$00e8,($0008,a0)
	bcc	L00f8f6
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$001f,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L00f8f6:
	movea.l	a0,a1
	move.w	#$0008,d7
L00f8fc:
	jsr	(L0298a6)
	bcs	L00f958
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0001,($001c,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	#$00e7,($0008,a0)
	moveq.l	#$ff,d0
	jsr	(L01024e)
	add.l	d0,d0
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	clr.w	($001e,a0)
	move.l	#L086a70,($0014,a0)
	move.w	#$0008,($0018,a0)
	dbra	d7,L00f8fc
L00f958:
	movea.l	a1,a0
	moveq.l	#$72,d0
	trap	#0
	jmp	(L029cca)

L00f964:
	cmpi.w	#$0030,($001e,a0)
	bcs	L00f974
	addi.l	#$00002000,($0010,a0)
L00f974:
	jsr	(L029954)
	move.w	($0008,a0),d0
	cmpi.w	#$00e8,d0
	bcs	L00f9b2
	jsr	(L01024e)
	andi.w	#$001f,d0
	addi.w	#$0008.w,d0
	move.w	d0,($001e,a0)
	ori.w	#$4000,($0018,a0)
	clr.l	($0010,a0)
	move.l	#$00e70000,($0008,a0)
	move.l	($000c,a0),d0
	asr.l	#1,d0
	move.l	d0,($000c,a0)
L00f9b2:
	jsr	(L025416)
	subq.w	#1,($001e,a0)
	bne	L00f9c4
	jmp	(L029cca)

L00f9c4:
	rts

L00f9c6:
	subi.l	#$00002000,($0010,a0)
	jsr	(L029954)
	move.w	($0008,a0),d0
	cmpi.w	#$0028,d0
	bcc	L00f9e4
	jmp	(L029cca)

L00f9e4:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0003,d0
	bne	L00f9fa
	eori.w	#$0001,($0018,a0)
L00f9fa:
	jsr	(L025416)
L00fa00:
	move.w	($001e,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	ext.l	d0
	add.l	d0,d0
	add.l	d0,($0004,a0)
	rts

L00fa1c:
	subi.l	#$00002000,($0010,a0)
	cmpi.l	#$fffe0000,($0010,a0)
	bge	L00fa34
	jmp	(L029cca)

L00fa34:
	jsr	(L029954)
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0003,d0
	bne	L00fa50
	eori.w	#$0001,($0018,a0)
L00fa50:
	jsr	(L025416)
	bra	L00fa00
L00fa58:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L00fa6c
	jmp	(L029cca)

L00fa6c:
	cmpi.w	#$00e2,($0008,a0)
	blt	L00fa7e
	clr.l	($0010,a0)
	move.w	#$00e1,($0008,a0)
L00fa7e:
	jsr	(L029a3e)
	bcc	L00fa8c
	jmp	(L029b20)

L00fa8c:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	andi.w	#$0003,d0
	move.b	d0,($0019,a0)
	jsr	(L025416)
	rts

L00faa8:
	cmpi.w	#$0001,($0020,a0)
	beq	L00fb12
	bcc	L00fb92
	addi.l	#$00004000,($0010,a0)
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L00fad0
	jmp	(L029cca)

L00fad0:
	cmpi.w	#$00e8,($0008,a0)
	bcc	L00faf4
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$001f,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L00faf4:
	addq.w	#1,($0020,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$0008,($0018,a0)
	move.w	#$00e0,($0008,a0)
	jsr	(L025416)
	rts

L00fb12:
	subq.w	#1,($001e,a0)
	beq	L00fb20
	jsr	(L025416)
	rts

L00fb20:
	movea.l	a0,a1
	move.w	#$0008,d7
L00fb26:
	jsr	(L0298e2)
	bcs	L00fb8a
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0006,($001c,a0)
	move.w	#$0002,($0020,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	moveq.l	#$ff,d0
	jsr	(L01024e)
	add.l	d0,d0
	add.l	d0,d0
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	move.w	#$0020,($001e,a0)
	move.l	#L086cf8,($0014,a0)
	move.w	#$0001,($0018,a0)
	dbra	d7,L00fb26
L00fb8a:
	movea.l	a1,a0
	jmp	(L029cca)

L00fb92:
	addi.l	#$00001000,($0010,a0)
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L00fbae
	jmp	(L029cca)

L00fbae:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L00fbc0
	jmp	(L029cca)

L00fbc0:
	cmpi.w	#$0010,d0
	bne	L00fbcc
	ori.w	#$4000,($0018,a0)
L00fbcc:
	jsr	(L025416)
	rts

L00fbd4:
	cmpi.b	#$fe,($001e,a0)
	beq	L00fd90
	bcc	L00fd18
	move.b	($001f,a0),d0
	andi.w	#$00ff,d0
	add.w	d0,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	add.l	d0,d0
	add.l	d1,d1
	add.l	d0,($0004,a0)
	add.l	d1,($0008,a0)
	sub.l	d0,($0020,a0)
	sub.l	d1,($0024,a0)
	move.l	($0010,a0),d0
	beq	L00fc26
	addi.l	#$00002000,d0
	bmi	L00fc22
	moveq.l	#$00,d0
	move.l	#L086bf8,($0014,a0)
L00fc22:
	move.l	d0,($0010,a0)
L00fc26:
	move.l	($002c,a0),d0
	beq	L00fc3a
	addi.l	#$00002000,d0
	bmi	L00fc36
	moveq.l	#$00,d0
L00fc36:
	move.l	d0,($002c,a0)
L00fc3a:
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	move.w	($0008,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$fec0,d0
	bcs	L00fc64
	move.w	($0004,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$ff00,d0
L00fc64:
	bcc	L00fc6e
	neg.l	($000c,a0)
	neg.l	($0010,a0)
L00fc6e:
	move.l	($0028,a0),d0
	add.l	d0,($0020,a0)
	move.l	($002c,a0),d0
	add.l	d0,($0024,a0)
	move.w	($0024,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$fec0,d0
	bcs	L00fc98
	move.w	($0020,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$ff00,d0
L00fc98:
	bcc	L00fca2
	neg.l	($0028,a0)
	neg.l	($002c,a0)
L00fca2:
	move.b	($001f,a0),d0
	addq.b	#1,d0
	move.b	d0,($001f,a0)
	tst.l	($0010,a0)
	bne	L00fce0
	lsr.w	#2,d0
	andi.w	#$000f,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	move.w	($0020,a0),d1
	move.w	($0024,a0),d2
	move.w	($0018,a0),d0
	ori.w	#$8000,d0
	lea.l	(L086c78),a5
	jsr	(L025426)
	rts

L00fce0:
	lsr.w	#4,d0
	cmpi.w	#$0004,d0
	bcs	L00fcec
	move.w	#$0003,d0
L00fcec:
	addq.w	#2,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	movea.l	($0014,a0),a5
	move.w	d0,d7
	jsr	(L025426)
	move.w	d7,d0
	move.w	($0020,a0),d1
	move.w	($0024,a0),d2
	movea.l	($0014,a0),a5
	jsr	(L025426)
	rts

L00fd18:
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	move.l	($0028,a0),d0
	add.l	d0,($0020,a0)
	move.l	($002c,a0),d0
	add.l	d0,($0024,a0)
	move.b	($001f,a0),d0
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	bne	L00fd62
	move.w	d0,d1
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$fe40,d0
	move.w	d0,($001e,a0)
	move.l	#L086cf8,($0014,a0)
	move.w	d1,d0
L00fd62:
	lsr.w	#2,d0
	andi.w	#$000f,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	move.w	($0020,a0),d1
	move.w	($0024,a0),d2
	move.w	($0018,a0),d0
	ori.w	#$8000,d0
	lea.l	(L086c78),a5
	jsr	(L025426)
	rts

L00fd90:
	move.b	($001f,a0),d0
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	bne	L00fda2
	jmp	(L029cca)

L00fda2:
	cmpi.b	#$40,d0
	bcc	L00fdda
	andi.w	#$003f,d0
	lsr.w	#4,d0
	addi.w	#$0002.w,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	move.w	($0020,a0),d1
	move.w	($0024,a0),d2
	move.w	($0018,a0),d0
	ori.w	#$8000,d0
	lea.l	(L086cf8),a5
	jsr	(L025426)
	rts

L00fdda:
	lsr.w	#1,d0
	andi.w	#$000f,d0
	move.w	d0,d7
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L086bf8),a5
	jsr	(L025426)
	move.w	d7,d0
	move.w	($0020,a0),d1
	move.w	($0024,a0),d2
	lea.l	(L086bf8),a5
	jsr	(L025426)
	rts

L00fe0e:
	movea.l	(L047fc4),a2
	move.l	($0004,a0),d6
	move.l	($0008,a0),d7
	lea.l	(L0474e0),a1
L00fe22:
	cmpi.w	#$00a8,($0000.w,a1)
	bne	L00fe58
	cmpi.w	#$0007,($001c,a1)
	bne	L00fe58
	move.b	($001e,a1),d5
	andi.w	#$00ff,d5
	add.w	d5,d5
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	moveq.l	#$00,d1
	move.b	(L00fec8,pc,d5.w),d1
	ext.w	d1
	swap.w	d1
	tst.w	($0018,a2)
	bpl	L00fe58
	neg.l	d1
L00fe58:
	add.l	d6,d1
	add.l	d0,d1
	sub.l	($0004,a1),d1
	asr.l	#7,d1
	move.l	d1,($000c,a1)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	move.b	(L00fec9,pc,d5.w),d1
	ext.w	d1
	addi.w	#$0004.w,d1
	swap.w	d1
	add.l	d7,d1
	add.l	d0,d1
	sub.l	($0008,a1),d1
	asr.l	#7,d1
	move.l	d1,($0010,a1)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	moveq.l	#$00,d1
	move.b	(L00feca,pc,d5.w),d1
	ext.w	d1
	swap.w	d1
	tst.w	($0018,a2)
	bpl	L00fea6
	neg.l	d1
L00fea6:
	add.l	d6,d1
	add.l	d0,d1
	sub.l	($0020,a1),d1
	asr.l	#7,d1
	move.l	d1,($0028,a1)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	moveq.l	#$00,d1
	move.b	(L00fecb,pc,d5.w),d1
	bra	L00ff48

L00fec8:
	.dc.b	$00
L00fec9:
	.dc.b	$00
L00feca:
	.dc.b	$10
L00fecb:
	.dc.b	$d4,$f8,$f4,$f4,$14,$f4,$dc,$0c
	.dc.b	$ec,$f8,$0c,$f8,$28,$f4,$b4,$f0
	.dc.b	$e4,$00,$f4,$10,$14,$00,$dc,$14
	.dc.b	$ec,$04,$0c,$0c,$28,$08,$b4,$f8
	.dc.b	$e4,$08,$f4,$00,$24,$0c,$dc,$1c
	.dc.b	$ec,$0c,$0c,$18,$28,$f6,$c4,$00
	.dc.b	$e4,$10,$f4,$14,$24,$14,$dc,$f4
	.dc.b	$fc,$14,$0c,$18,$18,$04,$c4,$08
	.dc.b	$e4,$f8,$04,$f8,$bc,$1c,$dc,$fc
	.dc.b	$fc,$1c,$0c,$18,$f8,$f8,$d4,$10
	.dc.b	$e4,$00,$04,$08,$bc,$f4,$ec,$04
	.dc.b	$fc,$fe,$10,$1c,$ec,$00,$d4,$18
	.dc.b	$e4,$08,$04,$fc,$cc,$fc,$ec,$0c
	.dc.b	$fc,$fc,$1c,$18,$00,$08,$d4,$f0
	.dc.b	$f4,$10,$04,$04,$cc,$04,$ec,$1c
	.dc.b	$fc,$1c,$1c,$20,$f0

L00ff48:
	ext.w	d1
	addi.w	#$0004.w,d1
	swap.w	d1
	add.l	d7,d1
	add.l	d0,d1
	sub.l	($0024,a1),d1
	asr.l	#7,d1
	move.l	d1,($002c,a1)
	move.w	#$ff80,($001e,a1)
	lea.l	($0030,a1),a1
	cmpa.l	#L047ae0,a1
	bne	L00fe22
	rts

L00ff74:
	addi.l	#$00004000,($0010,a0)
	jsr	(L029954)
	cmpi.w	#$00e8,($0008,a0)
	bgt	L00ffaa
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	bcs	L00ff98
	moveq.l	#$00,d0
L00ff98:
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L00ffaa:
	moveq.l	#$6b,d0
	trap	#0
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L0100b8
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0009,($001c,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0003,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	#$00e0,($0008,a0)
	move.l	#L086ea8,($0014,a0)
	clr.w	($0018,a0)
	move.l	($0010,a1),d0
	asr.l	#2,d0
	move.l	d0,($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0020,($001e,a0)
	jsr	(L0298a6)
	bcs	L0100b8
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0009,($001c,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0003,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	#$00e0,($0008,a0)
	move.l	#L086ea8,($0014,a0)
	clr.w	($0018,a0)
	move.l	($0010,a1),d0
	asr.l	#2,d0
	neg.l	d0
	move.l	d0,($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0020,($001e,a0)
	move.w	#$0005,d7
L010052:
	jsr	(L0298a6)
	bcs	L0100b8
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0009,($001c,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	#$00e0,($0008,a0)
	move.l	#L086ea8,($0014,a0)
	move.w	#$0004,($0018,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	move.l	d0,($000c,a0)
	moveq.l	#$ff,d0
	jsr	(L01024e)
	asl.l	#1,d0
	subi.l	#$00008000,d0
	move.l	d0,($0010,a0)
	move.w	#$0018,($001e,a0)
	dbra	d7,L010052
L0100b8:
	movea.l	a1,a0
	jmp	(L029cca)

L0100c0:
	jsr	(L029954)
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L0100d8
	jmp	(L029cca)

L0100d8:
	cmpi.b	#$04,($0019,a0)
	beq	L0100f0
	andi.w	#$0003,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L0100f0:
	cmpi.w	#$000c,d0
	bcc	L0100fc
	ori.w	#$8000,($0018,a0)
L0100fc:
	jsr	(L025416)
	rts

L010104:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L010118
	jmp	(L029cca)

L010118:
	cmpi.w	#$00e2,($0008,a0)
	blt	L01012a
	neg.l	($0010,a0)
	move.w	#$00e1,($0008,a0)
L01012a:
	jsr	(L029a3e)
	bcc	L010138
	jmp	(L029b20)

L010138:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	andi.w	#$0003,d0
	move.b	d0,($0019,a0)
	jsr	(L025416)
	rts

L010154:
	moveq.l	#$64,d0
	trap	#0
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	subi.w	#$0010,d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	cmpi.b	#$30,d0
	bcs	L0101a6
	cmpi.b	#$60,d0
	bcs	L0101ae
	cmpi.b	#$80,d0
	bcs	L0101a0
	cmpi.b	#$a0,d0
	bcs	L01019a
	cmpi.b	#$d0,d0
	bcs	L0101ae
	move.w	#$00d0,d0
	bra	L0101ae
L01019a:
	move.w	#$00a0,d0
	bra	L0101ae
L0101a0:
	move.w	#$0060,d0
	bra	L0101ae
L0101a6:
	move.w	#$0030,d0
	bra.w	L0101ae
L0101ae:
	movea.l	a0,a1
	move.w	d0,d6
	bsr	L0101d8
	addi.w	#$0010,d6
	bsr	L0101d8
	subi.w	#$0020,d6
	bsr	L0101d8
	cmpi.b	#$1f,($001b,a1)
	bcc	L0101d4
	addi.w	#$0008.w,d6
	bsr	L0101d8
	addi.w	#$0010,d6
	bsr	L0101d8
L0101d4:
	movea.l	a1,a0
	rts

L0101d8:
	jsr	(L0298a6)
	bcs	L01024c
	move.w	#$00a8,($0000.w,a0)
	move.w	#$0005,($001c,a0)
	move.w	#$0300,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	subi.w	#$0010,($0008,a0)
	move.w	d6,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#1,d0
	asl.l	#1,d1
	move.l	d0,d2
	move.l	d1,d3
	asl.l	#2,d0
	asl.l	#2,d1
	add.l	d2,d0
	add.l	d3,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	clr.w	($001e,a0)
	move.l	#L086b48,($0014,a0)
	move.w	#$0000,($0018,a0)
	tst.w	($000c,a0)
	bmi	L01024c
	move.w	#$8000,($0018,a0)
L01024c:
	rts

L01024e:
	move.w	(L0481e6),d0
	add.w	d0,d0
	add.w	d0,d0
	add.w	(L0481e6),d0
	addi.w	#$43c3,d0
	move.w	d0,(L0481e6)
	ror.w	#8,d0
	rts

L01026c:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
L010280:
	moveq.l	#$00,d4
	cmp.w	d0,d2
	beq	L0102e8
	sub.w	d1,d3
	beq	L0102dc
	bpl	L010290
	neg.w	d3
	addq.w	#1,d4
L010290:
	ext.l	d3
	sub.w	d0,d2
	bpl	L01029a
	neg.w	d2
	addq.w	#2,d4
L01029a:
	ext.l	d2
	move.w	d2,d0
	sub.w	d3,d0
	beq	L0102d4
	bcc	L0102b0
	add.w	d4,d4
	addq.w	#1,d4
	asl.w	#5,d2
	divu.w	d3,d2
	move.b	d2,d3
	bra	L0102b6
L0102b0:
	add.w	d4,d4
	asl.w	#5,d3
	divu.w	d2,d3
L0102b6:
	lea.l	(L0102f4),a6
	move.b	(a6,d4.w),d0
	asl.b	#1,d0
	bcc	L0102ce
	sub.b	d3,d0
	add.b	#$1f,d0
	ext.w	d0
	rts

L0102ce:
	add.b	d3,d0
	ext.w	d0
	rts

L0102d4:
	add.w	d4,d4
	move.w	#$001f,d3
	bra	L0102b6
L0102dc:
	sub.w	d0,d2
	move.b	#$80,d0
	roxr.b	#1,d0
	ext.w	d0
	rts

L0102e8:
	sub.w	d3,d1
	move.b	#$00,d0
	roxr.b	#1,d0
	ext.w	d0
	rts

L0102f4:
	.dc.b	$20,$b0,$90,$00,$d0,$40,$60,$f0

L0102fc:
	rts

L0102fe:
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	cmp.b	($000c,a0),d0
	beq	L0102fc
	bmi	L010326
	add.w	d5,($000c,a0)
	rts

L010326:
	sub.w	d5,($000c,a0)
	rts

L01032c:
	lsr.w	#1,d0
L01032e:
	lea.l	(L010458),a6
	andi.w	#$00ff,d0
	add.w	d0,d0
	move.w	d0,d1
	addi.w	#$0180,d1
	andi.w	#$01fe,d1
	move.w	(a6,d1.w),d1
	move.w	(a6,d0.w),d0
	rts

L01034e:
	btst.l	#$00,d0
	beq	L01032c
L010354:
	lea.l	(L010458),a6
	andi.w	#$01fe,d0
	move.w	d0,d2
	move.w	(a6,d0.w),d1
	move.w	($02,a6,d0.w),d0
	asr.w	#1,d0
	asr.w	#1,d1
	add.w	d1,d0
	addi.w	#$0182,d2
	andi.w	#$01fe,d2
	move.w	(a6,d2.w),d1
	move.w	($02,a6,d2.w),d2
	asr.w	#1,d1
	asr.w	#1,d2
	add.w	d2,d1
	rts

L010386:
	move.w	d0,d1
	andi.w	#$0003,d1
	lsl.w	#2,d1
	movea.l	(L010394,pc,d1.w),a6
	jmp	(a6)

L010394:
	.dc.l	L0103a4
	.dc.l	L0103ac
	.dc.l	L0103a8
	.dc.l	L0103de

L0103a4:
	lsr.w	#2,d0
	bra	L01032e
L0103a8:
	lsr.w	#1,d0
	bra	L010354
L0103ac:
	lea.l	(L010458),a6
	andi.w	#$01fe,d0
	move.w	d0,d2
	move.w	(a6,d0.w),d1
	move.w	($02,a6,d0.w),d0
	sub.w	d1,d0
	asr.w	#2,d0
	add.w	d1,d0
	addi.w	#$0182,d2
	andi.w	#$01fe,d2
	move.w	(a6,d2.w),d1
	move.w	($02,a6,d2.w),d2
	sub.w	d1,d2
	asr.w	#2,d2
	add.w	d2,d1
	rts

L0103de:
	lea.l	(L010458),a6
	andi.w	#$01fe,d0
	move.w	d0,d2
	move.w	(a6,d0.w),d1
	move.w	($02,a6,d0.w),d0
	sub.w	d1,d0
	asr.w	#2,d0
	sub.w	d1,d0
	addi.w	#$0182,d2
	andi.w	#$01fe,d2
	move.w	(a6,d2.w),d1
	move.w	($02,a6,d2.w),d2
	sub.w	d1,d2
	asr.w	#2,d2
	sub.w	d2,d1
	rts

L010410:
	andi.l	#$0000ffff,d0
	move.l	#$00004000,d1
	move.w	#$0007,d2
L010420:
	cmp.l	d1,d0
	bcc	L01042c
	swap.w	d1
	add.w	d1,d1
	swap.w	d1
	bra	L010436
L01042c:
	sub.l	d1,d0
	swap.w	d1
	add.w	d1,d1
	addq.w	#1,d1
	swap.w	d1
L010436:
	asl.l	#2,d0
	dbra	d2,L010420
	swap.w	d1
	rts

L010440:
	add.w	d0,d0
	move.w	(L010458,pc,d0.w),d0
	rts

L010448:
	add.w	d0,d0
	move.w	(L010458,pc,d0.w),d1
	addi.w	#$0080,d0
	move.w	(L010458,pc,d0.w),d0
	rts

L010458:
	.dc.w	$0000,$0192,$0323,$04b5
	.dc.w	$0645,$07d5,$0964,$0af1
	.dc.w	$0c7c,$0e05,$0f8c,$1111
	.dc.w	$1294,$1413,$158f,$1708
	.dc.w	$187d,$19ef,$1b5d,$1cc6
	.dc.w	$1e2b,$1f8b,$20e7,$223d
	.dc.w	$238e,$24da,$261f,$275f
	.dc.w	$2899,$29cd,$2afa,$2c21
	.dc.w	$2d41,$2e5a,$2f6b,$3076
	.dc.w	$3179,$3274,$3367,$3453
	.dc.w	$3536,$3612,$36e5,$37af
	.dc.w	$3871,$392a,$39da,$3a82
	.dc.w	$3b20,$3bb6,$3c42,$3cc5
	.dc.w	$3d3e,$3dae,$3e14,$3e71
	.dc.w	$3ec5,$3f0e,$3f4e,$3f84
	.dc.w	$3fb1,$3fd3,$3fec,$3ffb
	.dc.w	$4000,$3ffb,$3fec,$3fd3
	.dc.w	$3fb1,$3f84,$3f4e,$3f0e
	.dc.w	$3ec5,$3e71,$3e14,$3dae
	.dc.w	$3d3e,$3cc5,$3c42,$3bb6
	.dc.w	$3b20,$3a82,$39da,$392a
	.dc.w	$3871,$37af,$36e5,$3612
	.dc.w	$3536,$3453,$3367,$3274
	.dc.w	$3179,$3076,$2f6b,$2e5a
	.dc.w	$2d41,$2c21,$2afa,$29cd
	.dc.w	$2899,$275f,$261f,$24da
	.dc.w	$238e,$223d,$20e7,$1f8b
	.dc.w	$1e2b,$1cc6,$1b5d,$19ef
	.dc.w	$187d,$1708,$158f,$1413
	.dc.w	$1294,$1111,$0f8c,$0e05
	.dc.w	$0c7c,$0af1,$0964,$07d5
	.dc.w	$0645,$04b5,$0323,$0192
	.dc.w	$0000,$fe6e,$fcdd,$fb4b
	.dc.w	$f9bb,$f82b,$f69c,$f50f
	.dc.w	$f384,$f1fb,$f074,$eeef
	.dc.w	$ed6c,$ebed,$ea71,$e8f8
	.dc.w	$e783,$e611,$e4a3,$e33a
	.dc.w	$e1d5,$e075,$df19,$ddc3
	.dc.w	$dc72,$db26,$d9e1,$d8a1
	.dc.w	$d767,$d633,$d506,$d3df
	.dc.w	$d2bf,$d1a6,$d095,$cf8a
	.dc.w	$ce87,$cd8c,$cc99,$cbad
	.dc.w	$caca,$c9ee,$c91b,$c851
	.dc.w	$c78f,$c6d6,$c626,$c57e
	.dc.w	$c4e0,$c44a,$c3be,$c33b
	.dc.w	$c2c2,$c252,$c1ec,$c18f
	.dc.w	$c13b,$c0f2,$c0b2,$c07c
	.dc.w	$c04f,$c02d,$c014,$c005
	.dc.w	$c000,$c005,$c014,$c02d
	.dc.w	$c04f,$c07c,$c0b2,$c0f2
	.dc.w	$c13b,$c18f,$c1ec,$c252
	.dc.w	$c2c2,$c33b,$c3be,$c44a
	.dc.w	$c4e0,$c57e,$c626,$c6d6
	.dc.w	$c78f,$c851,$c91b,$c9ee
	.dc.w	$caca,$cbad,$cc99,$cd8c
	.dc.w	$ce87,$cf8a,$d095,$d1a6
	.dc.w	$d2bf,$d3df,$d506,$d633
	.dc.w	$d767,$d8a1,$d9e1,$db26
	.dc.w	$dc72,$ddc3,$df19,$e075
	.dc.w	$e1d5,$e33a,$e4a3,$e611
	.dc.w	$e783,$e8f8,$ea71,$ebed
	.dc.w	$ed6c,$eeef,$f074,$f1fb
	.dc.w	$f384,$f50f,$f69c,$f82b
	.dc.w	$f9bb,$fb4b,$fcdd,$fe6e
	.dc.w	$0000,$0192,$0323,$04b5
	.dc.w	$0645,$07d5,$0964,$0af1
	.dc.w	$0c7c,$0e05,$0f8c,$1111
	.dc.w	$1294,$1413,$158f,$1708
	.dc.w	$187d,$19ef,$1b5d,$1cc6
	.dc.w	$1e2b,$1f8b,$20e7,$223d
	.dc.w	$238e,$24da,$261f,$275f
	.dc.w	$2899,$29cd,$2afa,$2c21
	.dc.w	$2d41,$2e5a,$2f6b,$3076
	.dc.w	$3179,$3274,$3367,$3453
	.dc.w	$3536,$3612,$36e5,$37af
	.dc.w	$3871,$392a,$39da,$3a82
	.dc.w	$3b20,$3bb6,$3c42,$3cc5
	.dc.w	$3d3e,$3dae,$3e14,$3e71
	.dc.w	$3ec5,$3f0e,$3f4e,$3f84
	.dc.w	$3fb1,$3fd3,$3fec,$3ffb
	.dc.w	$4000

L0106da:
	move.w	(L048abc),d0
	add.w	d0,d0
	move.w	(L0106ea,pc,d0.w),d0
	jmp	(L0106ea,pc,d0.w)

L0106ea:
	.dc.w	L01072e-L0106ea
	.dc.w	L010738-L0106ea
	.dc.w	L0106f8-L0106ea
	.dc.w	L01077c-L0106ea
	.dc.w	L0107d0-L0106ea
	.dc.w	L010812-L0106ea
	.dc.w	L010828-L0106ea

L0106f8:
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$0017,d0
	beq	L01071a
	moveq.l	#$c2,d0
	trap	#0
	move.w	#$0180,(L048abe)
	bra	L010726
L01071a:
	moveq.l	#$c3,d0
	trap	#0
	move.w	#$0280,(L048abe)
L010726:
	addq.w	#1,(L048abc)
	rts

L01072e:
	move.w	#$0040,(L048abe)
	bra	L010726
L010738:
	move.w	(L048abe),d0
	subq.w	#1,d0
	move.w	d0,(L048abe)
	andi.w	#$0003,d0
	bne	L010772
	move.w	(L047f64),d0
	addq.w	#1,d0
	cmpi.w	#$0011,d0
	bcs	L01075e
	move.w	#$0010,d0
L01075e:
	move.w	d0,(L047f64)
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a1a)
	movem.l	(a7)+,d0-d7/a0-a6
L010772:
	tst.w	(L048abe)
	beq	L010726
	rts

L01077c:
	tst.w	(L048abe)
	beq	L01078e
	subq.w	#1,(L048abe)
	beq	L01078e
	rts

L01078e:
	tst.w	(L047f62)
	beq	L010726
	move.b	#$00,d0
	move.b	#$01,d1
	add.b	d0,d0
	move.b	(L047f62),d2
	move.b	(L047f63),d3
	sbcd.b	d1,d3
	sbcd.b	d0,d2
	move.b	d2,(L047f62)
	move.b	d3,(L047f63)
	jsr	(L0419c4)
	moveq.l	#$10,d0
	jsr	(L029a68)
	moveq.l	#$14,d0
	trap	#0
	rts

L0107d0:
	tst.w	(L047f66)
	beq	L010726
	move.w	(L048abe),d0
	addq.w	#1,d0
	move.w	d0,(L048abe)
	cmpi.w	#$0006,d0
	bcs	L010810
	clr.w	(L048abe)
	subq.w	#1,(L047f66)
	jsr	(L0419f0)
	move.l	#$00000100,d0
	jsr	(L029a68)
	moveq.l	#$16,d0
	trap	#0
L010810:
	rts

L010812:
	move.w	(L048abe),d0
	addq.w	#1,d0
	move.w	d0,(L048abe)
	cmpi.w	#$0040,d0
	beq	L010726
L010828:
	rts

L01082a:
	jsr	(L043694)
	jsr	(L04376a)
	move.w	#$0200,($00eb0808)
	moveq.l	#$00,d0
	move.l	d0,(L0470ee)
	move.l	d0,(L0470f6)
	move.l	d0,(L0470fe)
	move.l	d0,(L047106)
	move.l	#$01e60000,d0
	move.l	d0,(L0470f2)
	move.l	d0,(L0470fa)
	move.l	d0,(L047102)
	move.l	d0,(L04710a)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04a5c6),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04b832),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04c7a2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04d1f4),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04d69c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	(L05fbdc),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c5b6),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04bd72),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	moveq.l	#$00,d0
	lea.l	($00e50000),a1
	jsr	(L0038d2)
	jsr	(L0038d2)
	jsr	(L0038d2)
	jsr	(L0038d2)
	jsr	(L0038d2)
	jsr	(L0038d2)
	jsr	(L0038d2)
	jsr	(L0038d2)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50800),a6
	move.w	#$0002,d7
	jsr	(L0239da)
	jsr	(L018c0e)
	move.b	(L04c6a0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L04c6a2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$000f,d7
L0109c0:
	move.l	(a5)+,(a6)+
	dbra	d7,L0109c0
	jsr	(L018c0e)
	move.b	(L04c6a0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L04c6a2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$000f,d7
L0109ee:
	move.l	(a5)+,(a6)+
	dbra	d7,L0109ee
	rts

L0109f6:
	lea.l	(L05babc),a0
	move.w	(L0472f0),d0
	add.w	d0,d0
	move.w	(L010a0c,pc,d0.w),d0
	jmp	(L010a0c,pc,d0.w)

L010a0c:
	.dc.w	L010a14-L010a0c
	.dc.w	L010aa2-L010a0c
	.dc.w	L010dc0-L010a0c
	.dc.w	L010e58-L010a0c

L010a14:
	lea.l	($00e82000),a1
	lea.l	(L048ebc),a2
	move.w	#$00ff,d1
	jsr	(L017578)
	lea.l	(L048cbc),a1
	bsr	L01109a
	lea.l	(L0490bc),a1
	bsr	L01109a
	lea.l	($00e82220),a1
	lea.l	(L0480c0),a2
	move.w	#$000f,d1
	jsr	(L017578)
	lea.l	(L0480e0),a2
	moveq.l	#$00,d0
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)+
	move.l	d0,(a2)
	lea.l	($00e82298),a1
	lea.l	(L048100),a2
	move.w	#$0003,d1
	jsr	(L017578)
	lea.l	(L048120),a2
	moveq.l	#$00,d0
	move.l	d0,(a2)+
	move.l	d0,(a2)
	move.w	#$2001,(L05babe)
	clr.w	(L05bac0)
	jmp	(L043266)

L010aa2:
	subq.b	#1,($0003,a0)
	bne	L010b0c
	move.b	#$08,($0003,a0)
	subq.b	#1,($0002,a0)
	moveq.l	#$01,d0
	lea.l	(L0490bc),a1
	lea.l	($00e82000),a2
	lea.l	(L048ebc),a4
	move.w	#$00ff,d7
	jsr	(L006c48)
	moveq.l	#$01,d0
	lea.l	(L0480e0),a1
	lea.l	($00e82220),a2
	lea.l	(L0480c0),a4
	move.w	#$000f,d7
	jsr	(L006c48)
	moveq.l	#$01,d0
	lea.l	(L0480e0),a1
	lea.l	($00e82298),a2
	lea.l	(L048100),a4
	move.w	#$0003,d7
	jsr	(L006c48)
L010b0c:
	tst.b	($0002,a0)
	beq	L010b20
	jsr	(L027ac6)
	jsr	(L027a6c)
	rts

L010b20:
	move.l	(L047404),(L05bac6)
	clr.l	(L047404)
	jsr	(L04326e)
	clr.w	(L047124)
	clr.w	(L047126)
	move.w	#$0200,($00eb0808)
	move.w	#$0000,($00e82600)
	move.w	#$0001,($00e82400)
	move.w	#$0110,($00e80028)
	move.w	#$0000,(L0472b0)
	jsr	(L04376a)
	jsr	(L0436d8)
	bsr	L0110ae
	lea.l	(L003848),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04b0b2),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04cc58),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L052906),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L053642),a5
	lea.l	(L05fbdc),a6
	jsr	(L03d632)
	lea.l	(L04ee4a),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04ef66),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L04e534),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0004,d7
	jsr	(L0239da)
	lea.l	(L06abdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$0001,d7
	jsr	(L0239da)
	lea.l	(L04ef9e),a1
	lea.l	(L048ebc),a2
	move.w	#$009f,d1
	jsr	(L017578)
	move.w	#$0000,d0
	bsr	L011046
	move.w	#$0009,(L0472fa)
	lea.l	($00e10000),a3
	lea.l	($00c00001),a2
	lea.l	($00e50000),a6
	moveq.l	#$0f,d6
	move.l	#$000f000f,d7
	bsr	L0110c2
	lea.l	($00c80001),a2
	lea.l	($00e70000),a6
	moveq.l	#$07,d6
	move.l	#$00070007,d7
	bsr	L0110e0
	lea.l	($00c26c00),a0
	lea.l	($00cc0000),a1
	move.w	#$0007,d7
L010cba:
	move.w	d7,-(a7)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	move.w	(a7)+,d7
	dbra	d7,L010cba
	lea.l	(L04f0de),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L051eb2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eba000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04fe5a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L050afc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L06c46a),a1
	lea.l	(L048abc),a2
	move.w	#$000f,d1
	jsr	(L017578)
	lea.l	(L0534c2),a1
	lea.l	(L048adc),a2
	move.w	#$00bf,d1
	jsr	(L017578)
	clr.w	(L05babc)
	move.w	#$2001,(L05babe)
	move.w	#$001f,(L04731e)
	jsr	(L0313d0)
	jmp	(L043266)

L010dc0:
	move.w	($0000.w,a0),d2
	divu.w	#$003c,d2
	cmpi.w	#$0063,d2
	bcs	L010dd2
	move.w	#$0063,d2
L010dd2:
	lea.l	(L046491),a1
	move.b	(a1,d2.w),d2
L010ddc:
	move.w	($0000.w,a0),d0
	lea.l	(L010f7c),a1
	move.w	($0004,a0),d1
	lsl.w	#2,d1
	cmp.w	(a1,d1.w),d0
	bne	L010e0e
	move.l	a0,-(a7)
	move.w	($02,a1,d1.w),d0
	lsl.w	#3,d0
	lea.l	(L010fbc),a1
	movea.l	(a1,d0.w),a1
	jsr	(a1)
	movea.l	(a7)+,a0
	addq.w	#1,($0004,a0)
	bra	L010ddc
L010e0e:
	lea.l	(L0474e0),a0
L010e14:
	move.w	($0000.w,a0),d0
	beq	L010e28
	asl.w	#3,d0
	lea.l	(L010fc0),a6
	movea.l	(a6,d0.w),a6
	jsr	(a6)
L010e28:
	lea.l	($0030,a0),a0
	cmpa.l	#L047f60,a0
	bne	L010e14
	move.w	(L05babc),d0
	addq.w	#1,d0
	move.w	d0,(L05babc)
	cmpi.w	#$13ec,d0
	bcs	L010e56
	move.w	#$0007,(L047124)
	jmp	(L043266)

L010e56:
	rts

L010e58:
	jsr	(L043086)
	jsr	(L018c0e)
	move.b	(L06c468),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L06c46a),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82200),a6
	move.w	#$0007,d7
L010e88:
	move.l	(a5)+,(a6)+
	dbra	d7,L010e88
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$001f,d7
L010eb6:
	move.l	(a5)+,(a6)+
	dbra	d7,L010eb6
	lea.l	(L04512e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eba800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06e260),d7
	ext.w	d7
	neg.w	d7
	addq.w	#2,d7
	asl.w	#5,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82240),a6
	move.w	#$001f,d7
L010f0a:
	move.l	(a5)+,(a6)+
	dbra	d7,L010f0a
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$004c,d7
	add.w	d7,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82298),a6
	move.w	#$0003,d7
L010f3e:
	move.w	(a5)+,(a6)+
	dbra	d7,L010f3e
	jsr	(L023c26)
	move.w	#$0060,($00e82600)
	move.w	#$0001,($00e82400)
	move.w	#$0110,($00e80028)
	jsr	(L043694)
	move.w	#$0002,(L0472fa)
	clr.w	(L04731e)
	jmp	(L0428c8)

L010f7c:
	.dc.b	$00,$00,$00,$04,$00,$00,$00,$03
	.dc.b	$00,$00,$00,$06,$00,$00,$00,$08
	.dc.b	$00,$00,$00,$05,$00,$00,$00,$0b
	.dc.b	$01,$68,$00,$09,$03,$0c,$00,$07
	.dc.b	$03,$84,$00,$01,$04,$b0,$00,$0a
	.dc.b	$05,$a0,$00,$0d,$05,$a0,$00,$0f
	.dc.b	$09,$60,$00,$0c,$12,$0c,$00,$02
	.dc.b	$12,$0c,$00,$0e,$12,$c0,$00,$10
L010fbc:
	.dc.b	$00,$00,$00,$00
L010fc0:
	.dc.b	$00,$00,$00,$00
	.dc.l	L011510
	.dc.l	L011526
	.dc.l	L0115bc
	.dc.l	L01160c
	.dc.l	L0116f6
	.dc.l	L0117a6
	.dc.l	L0111d8
	.dc.l	L0111ee
	.dc.l	L011858
	.dc.l	L0118ce
	.dc.l	L012252
	.dc.l	L012262
	.dc.l	L0123d2
	.dc.l	L012400
	.dc.l	L01243a
	.dc.l	L01244e
	.dc.l	L0124de
	.dc.b	$00,$00,$00,$00
	.dc.l	L0124ea
	.dc.l	L012558
	.dc.l	L0114c0
	.dc.l	L0114dc
	.dc.l	L012ca4
	.dc.l	L012cee
	.dc.l	L01137a
	.dc.l	L011390
	.dc.l	L011130
	.dc.l	L01119e
	.dc.l	L011540
	.dc.l	L011556
	.dc.l	L0124e4
	.dc.b	$00,$00,$00,$00,$4e,$75

L011046:
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f7e)
	move.l	d0,(L047f82)
	move.l	d0,(L047f86)
	moveq.l	#$00,d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	move.w	#$0040,(L0470f2)
	move.w	#$0040,(L0470fa)
	move.w	d0,(L0470fe)
	move.w	d0,(L047106)
	move.w	d0,(L047102)
	move.w	d0,(L04710a)
	rts

L01109a:
	moveq.l	#$00,d0
	move.w	#$001f,d7
L0110a0:
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	dbra	d7,L0110a0
	rts

L0110ae:
	lea.l	(L0474e0),a0
	move.w	#$029f,d1
	moveq.l	#$00,d0
L0110ba:
	move.l	d0,(a0)+
	dbra	d1,L0110ba
	rts

L0110c2:
	movea.l	a2,a5
	lea.l	($0040,a2),a2
	swap.w	d7
	move.w	d7,d0
	swap.w	d7
	move.w	d0,d7
L0110d0:
	jsr	(L02852e)
	dbra	d7,L0110d0
	dbra	d6,L0110c2
	rts

L0110e0:
	movea.l	a2,a5
	lea.l	($7fff,a2),a2
	addq.w	#1,a2
	swap.w	d7
	move.w	d7,d0
	swap.w	d7
	move.w	d0,d7
L0110f0:
	movea.l	a5,a1
	jsr	(L02852e)
	lea.l	($0040,a1),a5
	dbra	d7,L0110f0
	dbra	d6,L0110e0
	rts

L011106:
	jsr	(L01024e)
	andi.w	#$0001,d0
	rts

L011112:
	lea.l	(L05bbdc),a0
L011118:
	tst.w	($0000.w,a0)
	beq	L01112e
	lea.l	($0030,a0),a0
	cmpa.l	#L05c7dc,a0
	bne	L011118
	ori.b	#$01,ccr
L01112e:
	rts

L011130:
	jsr	(L0298a6)
	bcs	L011174
	move.w	#$000e,($0000.w,a0)
	move.w	#$2001,($001e,a0)
	lea.l	($00e82200),a1
	lea.l	(L048cbc),a4
	bsr	L012534
	lea.l	(L011176),a6
	move.w	#$3c08,d0
	jsr	(L002480)
	lea.l	(L011188),a6
	move.w	#$4407,d0
	jsr	(L002480)
L011174:
	rts

L011176:
	.dc.b	$54,$02,$0a,$09,$07,$00,$02,$0a
	.dc.b	$0a,$04,$00,$15,$19,$18,$0b,$17
	.dc.b	$13,$ff
L011188:
	.dc.b	$0b,$16,$16,$00,$1c,$13,$11,$12
	.dc.b	$1e,$1d,$00,$1c,$0f,$1d,$0f,$1c
	.dc.b	$20,$0f,$0e,$25,$ff,$00

L01119e:
	subq.b	#1,($001f,a0)
	bne	L0111d6
	move.b	#$01,($001f,a0)
	subq.b	#1,($001e,a0)
	bne	L0111b6
	clr.w	($0000.w,a0)
	rts

L0111b6:
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L06c46a),a1
	lea.l	($00e82200),a2
	lea.l	(L048cbc),a4
	move.w	#$000f,d7
	bsr	L011336
L0111d6:
	rts

L0111d8:
	jsr	(L029818)
	bcs	L0111ec
	move.w	#$0004,($0000.w,a0)
	move.w	#$2001,($001e,a0)
L0111ec:
	rts

L0111ee:
	subq.b	#1,($001f,a0)
	bne	L01128a
	move.b	#$02,($001f,a0)
	subq.b	#1,($001e,a0)
	cmpi.b	#$08,($001e,a0)
	bls	L01128a
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048ebc),a1
	lea.l	($00e82000),a2
	lea.l	(L0490bc),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048efc),a1
	lea.l	($00e82040),a2
	lea.l	(L0490fc),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048f3c),a1
	lea.l	($00e82080),a2
	lea.l	(L04913c),a4
	move.w	#$005f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048c1c),a1
	lea.l	($00e82360),a2
	lea.l	(L048e1c),a4
	move.w	#$000f,d7
	bsr	L011336
L01128a:
	cmpi.b	#$04,($001e,a0)
	bls	L0112d0
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048edc),a1
	lea.l	($00e82020),a2
	lea.l	(L0490dc),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048adc),a1
	lea.l	($00e82220),a2
	lea.l	(L048cdc),a4
	move.w	#$000f,d7
	bsr	L011336
L0112d0:
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048f1c),a1
	lea.l	($00e82060),a2
	lea.l	(L04911c),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$01,d0
	lea.l	(L048afc),a1
	lea.l	($00e82240),a2
	lea.l	(L048cfc),a4
	move.w	#$005f,d7
	jsr	(L006c48)
	moveq.l	#$01,d0
	lea.l	(L048bdc),a1
	lea.l	($00e82320),a2
	lea.l	(L048ddc),a4
	move.w	#$001f,d7
	jsr	(L006c48)
	tst.b	($001e,a0)
	bne	L011334
	clr.w	($0000.w,a0)
L011334:
	rts

L011336:
	clr.w	d6
	moveq.l	#$00,d2
	move.l	d0,d5
	move.w	(a1)+,d2
	move.w	d2,d4
	andi.w	#$003e,d3
	andi.w	#$003e,d4
	add.w	d5,d5
	sub.w	d5,d4
	bpl	L011350
	moveq.l	#$00,d4
L011350:
	or.w	d4,d6
	move.w	d2,d4
	andi.w	#$07c0,d4
	lsl.w	#5,d5
	sub.w	d5,d4
	bpl	L011360
	moveq.l	#$00,d4
L011360:
	or.w	d4,d6
	andi.w	#$f800,d2
	lsl.w	#5,d5
	sub.l	d5,d2
	bpl	L01136e
	moveq.l	#$00,d2
L01136e:
	or.w	d2,d6
	move.w	d6,(a4)+
	move.w	d6,(a2)+
	dbra	d7,L011336
	rts

L01137a:
	jsr	(L029818)
	bcs	L01138e
	move.w	#$000d,($0000.w,a0)
	move.w	#$0814,($001e,a0)
L01138e:
	rts

L011390:
	subq.b	#1,($001f,a0)
	bne	L0113ec
	move.b	#$14,($001f,a0)
	move.b	($001e,a0),d0
	subq.b	#1,d0
	move.b	d0,($001e,a0)
	cmpi.b	#$04,d0
	bhi	L0113ec
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048edc),a1
	lea.l	($00e82020),a2
	lea.l	(L0490dc),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048adc),a1
	lea.l	($00e82220),a2
	lea.l	(L048cdc),a4
	move.w	#$000f,d7
	bsr	L011336
L0113ec:
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048ebc),a1
	lea.l	($00e82000),a2
	lea.l	(L0490bc),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048efc),a1
	lea.l	($00e82040),a2
	lea.l	(L0490fc),a4
	move.w	#$000f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048f3c),a1
	lea.l	($00e82080),a2
	lea.l	(L04913c),a4
	move.w	#$003f,d7
	bsr	L011336
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048fdc),a1
	lea.l	($00e82120),a2
	lea.l	(L0491dc),a4
	move.w	#$000f,d7
	bsr	L011336
	cmpi.b	#$04,($001e,a0)
	bls	L011494
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048fbc),a1
	lea.l	($00e82100),a2
	lea.l	(L0491bc),a4
	move.w	#$000f,d7
	bsr	L011336
L011494:
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	lea.l	(L048c1c),a1
	lea.l	($00e82360),a2
	lea.l	(L048e1c),a4
	move.w	#$000f,d7
	bsr	L011336
	tst.b	($001e,a0)
	bne	L0114be
	clr.w	($0000.w,a0)
L0114be:
	rts

L0114c0:
	jsr	(L0298a6)
	bcs	L0114da
	move.w	#$000b,($0000.w,a0)
	moveq.l	#$00,d0
	move.w	d0,($0004,a0)
	move.w	#$00a0,($0008,a0)
L0114da:
	rts

L0114dc:
	cmpi.w	#$0484,(L05babc)
	bne	L0114ec
	clr.w	($0000.w,a0)
	rts

L0114ec:
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	sub.w	(L0470ee),d1
	sub.w	(L0470f2),d2
	lea.l	(L060044),a5
	moveq.l	#$00,d0
	jsr	(L025426)
	rts

L011510:
	jsr	(L0298a6)
	bcs	L011524
	move.w	#$0001,($0000.w,a0)
	move.w	#$00e0,($001e,a0)
L011524:
	rts

L011526:
	subq.w	#1,($001e,a0)
	bne	L011530
	clr.w	($0000.w,a0)
L011530:
	bsr	L011570
	addi.l	#$00008000,d4
	subi.l	#$00001000,d5
	bra	L01158a
L011540:
	jsr	(L0298a6)
	bcs	L011554
	move.w	#$000f,($0000.w,a0)
	move.w	#$0080,($001e,a0)
L011554:
	rts

L011556:
	subq.w	#1,($001e,a0)
	bne	L011560
	clr.w	($0000.w,a0)
L011560:
	bsr	L011570
	subi.l	#$00008000,d2
	subi.l	#$00002000,d3
	bra	L01158a
L011570:
	move.l	(L0470f2),d2
	move.l	(L047102),d3
	move.l	(L0470ee),d4
	move.l	(L0470fe),d5
	rts

L01158a:
	move.l	d2,(L0470f2)
	move.l	d2,(L0470fa)
	move.l	d3,(L047102)
	move.l	d3,(L04710a)
	move.l	d4,(L0470ee)
	move.l	d4,(L0470f6)
	move.l	d5,(L0470fe)
	move.l	d5,(L047106)
	rts

L0115bc:
	jsr	(L0298a6)
	bcs	L01160a
	move.w	#$0002,($0000.w,a0)
	move.w	#$2001,($001e,a0)
	clr.w	($001c,a0)
	lea.l	($00e82200),a1
	lea.l	(L048cbc),a2
	move.w	#$00ff,d1
	jsr	(L017578)
	lea.l	($00e82000),a1
	lea.l	(L0490bc),a2
	move.w	#$00ff,d1
	jsr	(L017578)
	lea.l	(L048ebc),a1
	bsr	L01109a
L01160a:
	rts

L01160c:
	tst.w	($001c,a0)
	bne	L011676
	subq.b	#1,($001f,a0)
	bne	L01165e
	move.b	#$08,($001f,a0)
	subq.b	#1,($001e,a0)
	moveq.l	#$01,d0
	lea.l	(L048ebc),a1
	lea.l	($00e82000),a2
	lea.l	(L0490bc),a4
	move.w	#$00ff,d7
	jsr	(L006c48)
	moveq.l	#$01,d0
	lea.l	(L048ebc),a1
	lea.l	($00e82220),a2
	lea.l	(L048cdc),a4
	move.w	#$00bf,d7
	jsr	(L006c48)
L01165e:
	tst.b	($001e,a0)
	bne	L011674
	move.w	#$0040,($0020,a0)
	move.w	#$2001,($001e,a0)
	addq.w	#1,($001c,a0)
L011674:
	rts

L011676:
	cmpi.w	#$1374,(L05babc)
	bhi	L011682
	rts

L011682:
	subq.b	#1,($001f,a0)
	bne	L0116f4
	move.b	#$01,($001f,a0)
	subq.b	#1,($001e,a0)
	moveq.l	#$01,d0
	lea.l	(L048ebc),a1
	lea.l	($00e82200),a2
	lea.l	(L048cbc),a4
	move.w	#$000f,d7
	jsr	(L006c48)
	tst.b	($001e,a0)
	bne	L0116f4
	jsr	(L04326e)
	move.l	a0,-(a7)
	clr.w	(L047124)
	clr.w	(L047126)
	move.w	#$0060,($00e82600)
	move.w	#$0001,($00e82400)
	move.w	#$0110,($00e80028)
	jsr	(L04376a)
	jsr	(L0436d8)
	bsr	L0110ae
	movea.l	(a7)+,a0
L0116f4:
	rts

L0116f6:
	jsr	(L0298a6)
	bcs	L011754
	move.w	#$0003,($0000.w,a0)
	move.l	#$00400000,($0004,a0)
	move.l	#$00900000,($0008,a0)
	moveq.l	#$00,d7
	move.l	#$00900000,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L05fbe4,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	d7,($001c,a0)
	move.w	#$0060,($001e,a0)
	move.b	#$01,($0020,a0)
	move.w	#$0348,($0022,a0)
	bsr	L011756
	move.b	#$10,($0021,a0)
	move.w	d7,($0024,a0)
	move.w	d7,($0028,a0)
L011754:
	rts

L011756:
	move.b	($0020,a0),d0
	subq.b	#1,d0
	move.b	d0,($0020,a0)
	bne	L01177a
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0006,d0
	bne	L011770
	moveq.l	#$00,d0
L011770:
	move.w	d0,($0018,a0)
	move.b	(L01179c,pc,d0.w),($0020,a0)
L01177a:
	move.b	($0021,a0),d0
	subq.b	#1,d0
	move.b	d0,($0021,a0)
	bne	L01179a
	move.w	($0024,a0),d0
	addq.w	#1,d0
	andi.w	#$0003,d0
	move.w	d0,($0024,a0)
	move.b	(L0117a2,pc,d0.w),($0021,a0)
L01179a:
	rts

L01179c:
	.dc.b	$07,$08,$08,$07,$06,$06
L0117a2:
	.dc.b	$14,$18,$12,$5a

L0117a6:
	bsr	L0117f2
	bsr	L011756
	jsr	(L025416)
	moveq.l	#$00,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	d1,d5
	move.w	d2,d6
	lea.l	(L05fbdc),a5
	jsr	(L025426)
	move.w	($0024,a0),d0
	move.w	d5,d1
	move.w	d6,d2
	lea.l	(L05ffbc),a5
	jsr	(L025426)
	moveq.l	#$00,d0
	move.w	d5,d1
	move.w	d6,d2
	lea.l	(L05ffdc),a5
	jsr	(L025426)
	rts

L0117f2:
	cmpi.w	#$0384,(L05babc)
	bcc.w	L0117fe
L0117fe:
	move.w	($001e,a0),d0
	beq	L011812
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	subi.l	#$00004000,($0004,a0)
L011812:
	rts

L011814:
	move.l	($0010,a0),d0
	add.l	($0008,a0),d0
	move.l	d0,($0008,a0)
	swap.w	d0
	rts

L011824:
	move.w	#$0005,($0000.w,a0)
	move.w	d7,($0002,a0)
	move.l	#$00c00000,($0004,a0)
	move.l	#$00500000,($0008,a0)
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.w	d5,($0018,a0)
	move.w	d6,($001a,a0)
	move.l	d7,($001c,a0)
	move.w	d7,($002e,a0)
	rts

L011858:
	moveq.l	#$00,d7
	moveq.l	#$00,d6
	moveq.l	#$01,d5
L01185e:
	jsr	(L0298a6)
	bcs	L01187c
	bsr	L011824
	move.w	d6,d0
	lsl.w	#2,d0
	move.l	(L01187e,pc,d0.w),($0014,a0)
	moveq.l	#$00,d5
	addq.w	#1,d6
	cmpi.w	#$0014,d6
	bne	L01185e
L01187c:
	rts

L01187e:
	.dc.l	L05fd5c
	.dc.l	L05fd24
	.dc.l	L05fd5c
	.dc.l	L05fd1c
	.dc.l	L05fd14
	.dc.l	L05fcf4
	.dc.l	L05fcec
	.dc.l	L05fc74
	.dc.l	L05fc64
	.dc.l	L05fc6c
	.dc.l	L05fd0c
	.dc.l	L05fcb4
	.dc.l	L05fc8c
	.dc.l	L05fc5c
	.dc.l	L05fc54
	.dc.l	L05fc4c
	.dc.l	L05fc84
	.dc.l	L05fc7c
	.dc.l	L05fc44
	.dc.l	L05fc14

L0118ce:
	move.w	(L05babc),d7
	move.w	($001a,a0),d0
	add.w	d0,d0
	move.w	(L011930,pc,d0.w),d0
	jsr	(L011930,pc,d0.w)
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	sub.w	(L0470fe),d1
	sub.w	(L047102),d2
	andi.w	#$01ff,d1
	andi.w	#$01ff,d2
	move.w	($002e,a0),d3
	andi.w	#$c000,d3
	beq	L011920
	btst.l	#$0f,d3
	beq	L011914
	bsr	L011106
	add.w	d0,d1
L011914:
	btst.l	#$0e,d1
	beq	L011920
	bsr	L011106
	add.w	d0,d2
L011920:
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	rts

L011930:
	.dc.w	L011958-L011930
	.dc.w	L011a32-L011930
	.dc.w	L011a30-L011930
	.dc.w	L011ac0-L011930
	.dc.w	L011a72-L011930
	.dc.w	L011b0e-L011930
	.dc.w	L011bf8-L011930
	.dc.w	L011c46-L011930
	.dc.w	L011c94-L011930
	.dc.w	L011ce2-L011930
	.dc.w	L011d30-L011930
	.dc.w	L011d7e-L011930
	.dc.w	L011dda-L011930
	.dc.w	L011e4a-L011930
	.dc.w	L011eb0-L011930
	.dc.w	L011f08-L011930
	.dc.w	L011f56-L011930
	.dc.w	L011fd4-L011930
	.dc.w	L012046-L011930
	.dc.w	L0120e4-L011930

L011958:
	subi.w	#$0270,d7
	beq	L011962
	bpl	L01197c
	rts

L011962:
	move.w	#$0030,($001e,a0)
	move.w	#$00ac,($0028,a0)
	move.w	#$0076,($002a,a0)
	bset.b	#$07,($002e,a0)
	rts

L01197c:
	tst.w	($001c,a0)
	bne	L0119da
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L0119a2
	addq.w	#1,($001c,a0)
	move.l	#$00012000,($0010,a0)
	bclr.b	#$07,($002e,a0)
	rts

L0119a2:
	andi.w	#$0007,d0
	bne	L0119d8
	moveq.l	#$00,d2
	moveq.l	#$00,d3
	jsr	(L01024e)
	andi.w	#$000f,d0
	subq.w	#7,d0
	move.w	d0,d2
	add.w	($0028,a0),d2
	jsr	(L01024e)
	andi.w	#$0007,d0
	subq.w	#3,d0
	move.w	d0,d3
	add.w	($002a,a0),d3
	swap.w	d2
	swap.w	d3
	bsr	L012160
L0119d8:
	rts

L0119da:
	bsr	L011814
	cmpi.w	#$0110,d0
	bcs	L0119ee
	clr.l	($0010,a0)
	clr.w	($0000.w,a0)
	rts

L0119ee:
	tst.w	($001e,a0)
	bne	L011a2e
	moveq.l	#$00,d2
	moveq.l	#$00,d3
	move.w	($0028,a0),d2
	move.w	($002a,a0),d3
	swap.w	d2
	swap.w	d3
	bsr	L0121e6
	bsr	L0121e6
	bsr	L0121e6
	bsr	L0121e6
	bsr	L0121e6
	bsr	L0121e6
	bsr	L0121e6
	bsr	L0121e6
	addq.w	#1,($001e,a0)
	moveq.l	#$4a,d0
	trap	#0
	rts

L011a2e:
	rts

L011a30:
	rts

L011a32:
	subi.w	#$02d0,d7
	beq	L011a3c
	bpl	L011a48
	rts

L011a3c:
	move.w	#$0014,($0020,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011a48:
	tst.w	($001c,a0)
	bne	L011a70
	subq.w	#1,($0020,a0)
	bne	L011a6e
	move.w	#$0014,($0020,a0)
	move.w	($0018,a0),d0
	addq.b	#1,d0
	cmpi.b	#$06,d0
	bne	L011a6a
	addq.w	#1,($001c,a0)
L011a6a:
	move.w	d0,($0018,a0)
L011a6e:
	rts

L011a70:
	rts

L011a72:
	subi.w	#$02d0,d7
	beq	L011a7c
	bpl	L011a94
	rts

L011a7c:
	move.w	#$1200,($0012,a0)
	move.w	#$0080,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011a94:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011aa2
	clr.w	($0000.w,a0)
L011aa2:
	move.w	($001e,a0),d0
	beq	L011abe
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011abe
	move.w	#$00b8,d4
	moveq.l	#$6c,d5
	bsr	L0120b8
L011abe:
	rts

L011ac0:
	subi.w	#$02b0,d7
	beq	L011aca
	bpl	L011ae2
	rts

L011aca:
	move.w	#$1000,($0012,a0)
	move.w	#$00c0,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011ae2:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011af0
	clr.w	($0000.w,a0)
L011af0:
	move.w	($001e,a0),d0
	beq	L011b0c
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011b0c
	move.w	#$00c0,d4
	moveq.l	#$68,d5
	bsr	L0120b8
L011b0c:
	rts

L011b0e:
	subi.w	#$0280,d7
	beq	L011b18
	bpl	L011b2c
	rts

L011b18:
	move.l	#$00300050,($0020,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011b2c:
	tst.w	($001c,a0)
	bne	L011b94
	move.w	($0020,a0),d0
	beq	L011b56
	subq.w	#1,d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0008,d0
	bne	L011b48
	addq.b	#1,($0019,a0)
L011b48:
	andi.w	#$0007,d0
	bne	L011b56
	move.w	#$00cc,d4
	moveq.l	#$60,d5
	bsr	L011bca
L011b56:
	move.w	($0022,a0),d0
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	bne	L011b74
	addq.w	#1,($001c,a0)
	move.w	#$0c00,($0012,a0)
	move.w	#$00c0,($001e,a0)
	rts

L011b74:
	cmpi.w	#$0030,d0
	bhi	L011b92
	cmpi.w	#$0008,d0
	bne	L011b84
	addq.b	#1,($0019,a0)
L011b84:
	andi.w	#$0007,d0
	bne	L011b92
	move.w	#$00d0,d4
	moveq.l	#$65,d5
	bsr	L011bca
L011b92:
	rts

L011b94:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011ba2
	clr.w	($0000.w,a0)
L011ba2:
	move.w	($001e,a0),d0
	beq	L011bc8
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011bc8
	move.w	#$00d7,d4
	moveq.l	#$68,d5
	bsr	L0120b8
	move.w	#$00cc,d4
	moveq.l	#$66,d5
	bsr	L0120b8
L011bc8:
	rts

L011bca:
	moveq.l	#$00,d2
	moveq.l	#$00,d3
	jsr	(L01024e)
	andi.w	#$0003,d0
	subq.w	#2,d0
	move.w	d0,d2
	add.w	d4,d2
	jsr	(L01024e)
	andi.w	#$0003,d0
	subq.w	#2,d0
	move.w	d0,d3
	add.w	d5,d3
	swap.w	d2
	swap.w	d3
	bsr	L01217c
	rts

L011bf8:
	subi.w	#$0280,d7
	beq	L011c02
	bpl	L011c1a
	rts

L011c02:
	move.w	#$1400,($0012,a0)
	move.w	#$0100,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011c1a:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011c28
	clr.w	($0000.w,a0)
L011c28:
	move.w	($001e,a0),d0
	beq	L011c44
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011c44
	move.w	#$00e0,d4
	moveq.l	#$66,d5
	bsr	L0120b8
L011c44:
	rts

L011c46:
	subi.w	#$0250,d7
	beq	L011c50
	bpl	L011c68
	rts

L011c50:
	move.w	#$0e00,($0012,a0)
	bset.b	#$07,($002e,a0)
	move.w	#$0050,($001e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011c68:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011c76
	clr.w	($0000.w,a0)
L011c76:
	move.w	($001e,a0),d0
	beq	L011c92
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011c92
	move.w	#$00d4,d4
	moveq.l	#$56,d5
	bsr	L0120b8
L011c92:
	rts

L011c94:
	subi.w	#$0220,d7
	beq	L011c9e
	bpl	L011cb6
	rts

L011c9e:
	move.w	#$1000,($0012,a0)
	bset.b	#$07,($002e,a0)
	move.w	#$0030,($001e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011cb6:
	bsr	L011814
	cmpi.w	#$0068,d0
	bcs	L011cc4
	clr.w	($0000.w,a0)
L011cc4:
	move.w	($001e,a0),d0
	beq	L011ce0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011ce0
	move.w	#$00dc,d4
	moveq.l	#$50,d5
	bsr	L0120b8
L011ce0:
	rts

L011ce2:
	subi.w	#$0200,d7
	beq	L011cec
	bpl	L011d04
	rts

L011cec:
	move.w	#$1200,($0012,a0)
	bset.b	#$07,($002e,a0)
	move.w	#$0040,($001e,a0)
	moveq.l	#$5b,d0
	trap	#0
	rts

L011d04:
	bsr	L011814
	cmpi.w	#$0068,d0
	bcs	L011d12
	clr.w	($0000.w,a0)
L011d12:
	move.w	($001e,a0),d0
	beq	L011d2e
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011d2e
	move.w	#$00d0,d4
	moveq.l	#$50,d5
	bsr	L0120b8
L011d2e:
	rts

L011d30:
	subi.w	#$0220,d7
	beq	L011d3a
	bpl	L011d52
	rts

L011d3a:
	move.w	#$0f00,($0012,a0)
	bset.b	#$07,($002e,a0)
	move.w	#$0040,($001e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011d52:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011d60
	clr.w	($0000.w,a0)
L011d60:
	move.w	($001e,a0),d0
	beq	L011d7c
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011d7c
	move.w	#$00aa,d4
	moveq.l	#$66,d5
	bsr	L0120b8
L011d7c:
	rts

L011d7e:
	subi.w	#$01b0,d7
	beq	L011d88
	bpl	L011d94
	rts

L011d88:
	move.w	#$0010,($0020,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011d94:
	tst.w	($001c,a0)
	bne	L011dca
	subq.w	#1,($0020,a0)
	bne	L011db6
	move.w	#$0010,($0020,a0)
	move.w	($0018,a0),d0
	addq.b	#1,d0
	cmpi.b	#$07,d0
	beq	L011db8
	move.w	d0,($0018,a0)
L011db6:
	rts

L011db8:
	addq.w	#1,($001c,a0)
	move.w	#$0f00,($0012,a0)
	bset.b	#$07,($002e,a0)
	rts

L011dca:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011dd8
	clr.w	($0000.w,a0)
L011dd8:
	rts

L011dda:
	subi.w	#$01e0,d7
	beq	L011de4
	bpl	L011df6
	rts

L011de4:
	move.w	#$0010,($001e,a0)
	move.w	#$0010,($0020,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011df6:
	tst.w	($001c,a0)
	bne	L011e30
	subq.w	#1,($0020,a0)
	bne	L011e1c
	move.w	#$0010,($0020,a0)
	move.w	($0018,a0),d0
	addq.b	#1,d0
	cmpi.b	#$04,d0
	bne	L011e18
	addq.w	#1,($001c,a0)
L011e18:
	move.w	d0,($0018,a0)
L011e1c:
	move.w	($001e,a0),d0
	beq	L011e30
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L011e30
	move.w	#$0800,($0012,a0)
L011e30:
	bsr	L011814
	cmpi.w	#$0070,d0
	bcs	L011e40
	clr.w	($0000.w,a0)
	rts

L011e40:
	addi.l	#$000000c0,($0010,a0)
	rts

L011e4a:
	subi.w	#$01c0,d7
	beq	L011e54
	bpl	L011e66
	rts

L011e54:
	move.w	#$0040,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011e66:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L011e74,pc,d0.w),d0
	jmp	(L011e74,pc,d0.w)

L011e74:
	.dc.w	L011e78-L011e74
	.dc.w	L011ea0-L011e74

L011e78:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L011e8e
	addq.w	#1,($001c,a0)
	move.w	#$1c00,($0012,a0)
L011e8e:
	andi.w	#$0007,d0
	bne	L011e9e
	move.w	#$00c4,d4
	moveq.l	#$4a,d5
	bsr	L0120b8
L011e9e:
	rts

L011ea0:
	bsr	L011814
	cmpi.w	#$0070,d0
	bcs	L011eae
	clr.w	($0000.w,a0)
L011eae:
	rts

L011eb0:
	subi.w	#$0240,d7
	beq	L011eba
	bpl	L011ed2
	rts

L011eba:
	bset.b	#$07,($002e,a0)
	move.w	#$1200,($0012,a0)
	move.w	#$0040,($001e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011ed2:
	bsr	L011814
	cmpi.w	#$0078,d0
	bcs	L011ee0
	clr.w	($0000.w,a0)
L011ee0:
	move.w	($001e,a0),d0
	beq	L011f06
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011f06
	move.w	#$00b6,d4
	moveq.l	#$66,d5
	bsr	L0120b8
	move.w	#$00c8,d4
	moveq.l	#$58,d5
	bsr	L0120b8
L011f06:
	rts

L011f08:
	subi.w	#$01a0,d7
	beq	L011f12
	bpl	L011f2a
	rts

L011f12:
	bset.b	#$07,($002e,a0)
	move.w	#$2000,($0012,a0)
	move.w	#$0030,($001e,a0)
	moveq.l	#$5b,d0
	trap	#0
	rts

L011f2a:
	bsr	L011814
	cmpi.w	#$0070,d0
	bcs	L011f38
	clr.w	($0000.w,a0)
L011f38:
	move.w	($001e,a0),d0
	beq	L011f54
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011f54
	move.w	#$00c0,d4
	moveq.l	#$48,d5
	bsr	L0120b8
L011f54:
	rts

L011f56:
	subi.w	#$0210,d7
	beq	L011f60
	bpl	L011f74
	rts

L011f60:
	moveq.l	#$00,d0
	move.w	#$0010,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011f74:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L011f82,pc,d0.w),d0
	jmp	(L011f82,pc,d0.w)

L011f82:
	.dc.w	L011f86-L011f82
	.dc.w	L011f9e-L011f82

L011f86:
	subq.w	#1,($001e,a0)
	bne	L011f9c
	addq.w	#1,($001c,a0)
	move.w	#$2000,($0012,a0)
	move.w	#$0040,($001e,a0)
L011f9c:
	rts

L011f9e:
	bsr	L011814
	cmpi.w	#$0060,d0
	bcs	L011fac
	clr.l	($0000.w,a0)
L011fac:
	move.w	($001e,a0),d0
	beq	L011fd2
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L011fd2
	move.w	#$00b8,d4
	moveq.l	#$5a,d5
	bsr	L0120b8
	move.w	#$00c0,d4
	moveq.l	#$64,d5
	bsr	L0120b8
L011fd2:
	rts

L011fd4:
	subi.w	#$01b0,d7
	beq	L011fde
	bpl	L011ff2
	rts

L011fde:
	moveq.l	#$00,d0
	move.w	#$0010,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L011ff2:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L012000,pc,d0.w),d0
	jmp	(L012000,pc,d0.w)

L012000:
	.dc.w	L012004-L012000
	.dc.w	L01201c-L012000

L012004:
	subq.w	#1,($001e,a0)
	bne	L01201a
	addq.w	#1,($001c,a0)
	move.w	#$1800,($0012,a0)
	move.w	#$0080,($001e,a0)
L01201a:
	rts

L01201c:
	bsr	L011814
	cmpi.w	#$0070,d0
	bcs	L01202a
	clr.l	($0000.w,a0)
L01202a:
	move.w	($001e,a0),d0
	beq	L012044
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L012044
	move.w	#$00b6,d4
	moveq.l	#$54,d5
	bsr	L0120b8
L012044:
	rts

L012046:
	subi.w	#$0170,d7
	beq	L012050
	bpl	L012064
	rts

L012050:
	moveq.l	#$00,d0
	move.w	#$0010,($001e,a0)
	bset.b	#$07,($002e,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L012064:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L012072,pc,d0.w),d0
	jmp	(L012072,pc,d0.w)

L012072:
	.dc.w	L012076-L012072
	.dc.w	L01208e-L012072

L012076:
	subq.w	#1,($001e,a0)
	bne	L01208c
	addq.w	#1,($001c,a0)
	move.w	#$2000,($0012,a0)
	move.w	#$0030,($001e,a0)
L01208c:
	rts

L01208e:
	bsr	L011814
	cmpi.w	#$0070,d0
	bcs	L01209c
	clr.l	($0000.w,a0)
L01209c:
	move.w	($001e,a0),d0
	beq	L0120b6
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	andi.w	#$0007,d0
	bne	L0120b6
	move.w	#$00b0,d4
	moveq.l	#$48,d5
	bsr	L0120b8
L0120b6:
	rts

L0120b8:
	moveq.l	#$00,d2
	moveq.l	#$00,d3
	move.w	d4,d2
	move.w	d5,d3
	jsr	(L01024e)
	andi.w	#$0007,d0
	subq.w	#3,d0
	add.w	d0,d2
	jsr	(L01024e)
	andi.w	#$0003,d0
	subq.w	#1,d0
	add.w	d0,d3
	swap.w	d2
	swap.w	d3
	bsr	L012160
	rts

L0120e4:
	subi.w	#$00b4,d7
	beq	L0120ee
	bpl	L012104
	rts

L0120ee:
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.b	#$08,($0020,a0)
	moveq.l	#$47,d0
	trap	#0
	rts

L012104:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L012112,pc,d0.w),d0
	jmp	(L012112,pc,d0.w)

L012112:
	.dc.w	L012116-L012112
	.dc.w	L01213e-L012112

L012116:
	subq.b	#1,($0020,a0)
	bne	L01213c
	move.b	#$08,($0020,a0)
	move.w	($0018,a0),d0
	addq.w	#1,d0
	move.w	d0,($0018,a0)
	cmpi.w	#$0005,d0
	bne	L01213c
	addq.w	#1,($001c,a0)
	move.w	#$3000,($0012,a0)
L01213c:
	rts

L01213e:
	bsr	L011814
	cmpi.w	#$0080,d0
	bcs	L01214c
	clr.l	($0000.w,a0)
L01214c:
	subq.b	#1,($0020,a0)
	bne	L01215e
	move.b	#$05,($0020,a0)
	eori.w	#$0001,($0018,a0)
L01215e:
	rts

L012160:
	move.l	a0,-(a7)
	bsr	L011112
	bcs	L012178
	move.w	#$0001,($0000.w,a0)
	bsr	L012198
	move.l	#L05fdb4,($0014,a0)
L012178:
	movea.l	(a7)+,a0
	rts

L01217c:
	move.l	a0,-(a7)
	bsr	L011112
	bcs	L012178
	move.w	#$0002,($0000.w,a0)
	bsr	L012198
	move.l	#L05fde4,($0014,a0)
	movea.l	(a7)+,a0
	rts

L012198:
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	andi.w	#$8007,d0
	cmpi.b	#$05,d0
	bls	L0121bc
	subq.b	#5,d0
L0121bc:
	move.w	d0,($0018,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	addq.w	#8,d0
	move.w	d0,($001e,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	addq.w	#1,d0
	move.b	d0,($0020,a0)
	move.b	d0,($0021,a0)
	rts

L0121e6:
	move.l	a0,-(a7)
	bsr	L011112
	bcs	L012178
	move.w	#$0003,($0000.w,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	jsr	(L01024e)
	andi.w	#$000f,d0
	subq.w	#7,d0
	add.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	subq.w	#3,d0
	add.w	d0,($0008,a0)
	clr.l	($000c,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	andi.w	#$7f00,d0
	addi.l	#$0000a000,d0
	move.l	d0,($0010,a0)
	move.l	#L05fd5c,($0014,a0)
	jsr	(L01024e)
	andi.w	#$8001,d0
	addq.w	#2,d0
	move.w	d0,($0018,a0)
	movea.l	(a7)+,a0
	rts

L012252:
	jsr	(L0298a6)
	bcs	L012260
	move.w	#$0006,($0000.w,a0)
L012260:
	rts

L012262:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a0
L01226a:
	move.w	($0000.w,a0),d0
	beq	L012272
	bsr	L012282
L012272:
	lea.l	($0030,a0),a0
	cmpa.l	#L05c7dc,a0
	bne	L01226a
	movea.l	(a7)+,a0
	rts

L012282:
	subq.w	#1,d0
	add.w	d0,d0
	move.w	(L012290,pc,d0.w),d0
	jsr	(L012290,pc,d0.w)
	rts

L012290:
	.dc.w	L012298-L012290
	.dc.w	L012298-L012290
	.dc.w	L0122d6-L012290
	.dc.w	L0122ec-L012290

L012298:
	subq.b	#1,($0020,a0)
	bne	L0122b6
	move.b	($0021,a0),($0020,a0)
	move.b	($0019,a0),d0
	addq.b	#1,d0
	cmpi.b	#$06,d0
	bne	L0122b2
	moveq.l	#$00,d0
L0122b2:
	move.b	d0,($0019,a0)
L0122b6:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	bne	L0122c4
	clr.w	($0000.w,a0)
	rts

L0122c4:
	move.w	d0,($001e,a0)
	btst.l	#$00,d0
	beq	L0122d4
	jsr	(L025416)
L0122d4:
	rts

L0122d6:
	bsr	L011814
	cmpi.w	#$0110,d0
	bcs	L0122e4
	clr.w	($0000.w,a0)
L0122e4:
	jsr	(L025416)
	rts

L0122ec:
	move.l	($000c,a0),d0
	move.l	($0010,a0),d1
	add.l	($0004,a0),d0
	add.l	($0008,a0),d1
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	swap.w	d0
	swap.w	d1
	subi.w	#$0110,d0
	cmpi.w	#$fed0,d0
	bcs	L012322
	subi.w	#$0110,d1
	cmpi.w	#$fef0,d1
	bhi	L012322
	clr.w	($0000.w,a0)
	rts

L012322:
	move.w	($0026,a0),d0
	beq	L01234e
	subq.w	#1,d0
	move.w	d0,($0026,a0)
	bne	L01234e
	jsr	(L01024e)
	andi.w	#$007f,d0
	move.w	d0,d1
	lsr.w	#1,d1
	add.w	d1,d0
	addi.w	#$0040,d0
	move.w	d0,($002a,a0)
	move.w	#$ffe0,($0028,a0)
L01234e:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	($002a,a0),d2
	move.w	($0028,a0),d3
	moveq.l	#$40,d4
	add.w	d4,d1
	add.w	d4,d3
	jsr	(L010280)
	move.w	d0,($001e,a0)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	move.l	($000c,a0),d2
	move.l	($0010,a0),d3
	move.l	d2,d4
	move.l	d3,d5
	asl.l	#5,d2
	asl.l	#5,d3
	sub.l	d4,d2
	sub.l	d5,d3
	add.l	d2,d0
	add.l	d3,d1
	asr.l	#5,d0
	asr.l	#5,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	bsr	L012ddc
	subq.w	#1,($0024,a0)
	bne	L0123c6
	move.w	#$0004,($0024,a0)
	move.w	($0022,a0),d0
	addq.w	#1,d0
	andi.w	#$0003,d0
	move.w	d0,($0022,a0)
	move.b	(L0123ce,pc,d0.w),d0
	add.w	($0020,a0),d0
	move.b	d0,($0019,a0)
L0123c6:
	jsr	(L025416)
	rts

L0123ce:
	.dc.b	$00,$01,$02,$01

L0123d2:
	jsr	(L0298a6)
	bcs	L0123d2
	move.w	#$0007,($0000.w,a0)
	move.w	#$2001,($001e,a0)
	moveq.l	#$00,d0
	lea.l	(L047fc0),a1
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	rts

L012400:
	subq.b	#1,($001f,a0)
	bne	L012438
	subq.b	#1,($001e,a0)
	move.b	#$04,($001f,a0)
	moveq.l	#$01,d0
	lea.l	(L047fc0),a1
	lea.l	($00e82260),a2
	lea.l	(L048d1c),a4
	move.w	#$000f,d7
	jsr	(L006c48)
	tst.b	($001e,a0)
	bne	L012438
	clr.w	($0000.w,a0)
L012438:
	rts

L01243a:
	jsr	(L0298a6)
	bcs	L01244c
	move.w	#$0008,($0000.w,a0)
	clr.w	($001e,a0)
L01244c:
	rts

L01244e:
	move.w	(L05babc),d7
	subi.w	#$0260,d7
	bcs	L0124dc
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0120,d0
	bcs	L012472
	clr.w	($0000.w,a0)
	rts

L012472:
	andi.w	#$0007,d0
	bne	L0124dc
	move.w	#$00a0,d4
	moveq.l	#$6c,d5
	bsr	L0120b8
	move.w	#$00ac,d4
	moveq.l	#$6a,d5
	bsr	L0120b8
	move.w	#$00b2,d4
	moveq.l	#$69,d5
	bsr	L0120b8
	move.w	#$00bd,d4
	moveq.l	#$6f,d5
	bsr	L0120b8
	move.w	#$00cb,d4
	moveq.l	#$6e,d5
	bsr	L0120b8
	move.w	#$00d2,d4
	moveq.l	#$6e,d5
	bsr	L0120b8
	move.w	#$00da,d4
	moveq.l	#$6a,d5
	bsr	L0120b8
	move.w	#$00d2,d4
	moveq.l	#$64,d5
	bsr	L0120b8
	move.w	#$00b8,d4
	moveq.l	#$62,d5
	bsr	L0120b8
	move.w	#$00a9,d4
	moveq.l	#$62,d5
	bsr	L0120b8
L0124dc:
	rts

L0124de:
	moveq.l	#$bf,d0
	trap	#0
	rts

L0124e4:
	moveq.l	#$ff,d0
	trap	#0
	rts

L0124ea:
	moveq.l	#$00,d6
	jsr	(L0298a6)
	bcs	L012508
	move.w	#$000a,($0000.w,a0)
	move.l	d6,($001c,a0)
	move.l	d6,($0020,a0)
	move.l	d6,(L05bad0)
L012508:
	lea.l	($00e82300),a1
	lea.l	(L048dbc),a4
	bsr	L012534
	lea.l	($00e82380),a1
	lea.l	(L048e3c),a4
	bsr	L012534
	clr.w	(L05baca)
	move.w	#$f800,(L05bace)
	rts

L012534:
	moveq.l	#$00,d0
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)+
	move.l	d0,(a1)
	move.l	d0,(a4)+
	move.l	d0,(a4)+
	move.l	d0,(a4)+
	move.l	d0,(a4)+
	move.l	d0,(a4)+
	move.l	d0,(a4)+
	move.l	d0,(a4)+
	move.l	d0,(a4)
	rts

L012558:
	lea.l	(L05babc),a1
	move.w	($001e,a0),d7
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L012572,pc,d0.w),d0
	jsr	(L012572,pc,d0.w)
	bra	L0125d0

L012572:
	.dc.w	L01285a-L012572
	.dc.w	L012864-L012572
	.dc.w	L012876-L012572
	.dc.w	L012894-L012572
	.dc.w	L0128b2-L012572
	.dc.w	L0128c4-L012572
	.dc.w	L0128d6-L012572
	.dc.w	L0128f4-L012572
	.dc.w	L012912-L012572
	.dc.w	L012924-L012572
	.dc.w	L012936-L012572
	.dc.w	L012954-L012572
	.dc.w	L012966-L012572
	.dc.w	L012984-L012572
	.dc.w	L0129a2-L012572
	.dc.w	L0129b4-L012572
	.dc.w	L0129c6-L012572
	.dc.w	L0129e4-L012572
	.dc.w	L0129f6-L012572
	.dc.w	L012a14-L012572
	.dc.w	L012a32-L012572
	.dc.w	L012a44-L012572
	.dc.w	L012a56-L012572
	.dc.w	L012a74-L012572
	.dc.w	L012a86-L012572
	.dc.w	L012aa4-L012572
	.dc.w	L012ab6-L012572
	.dc.w	L012ad4-L012572
	.dc.w	L012af2-L012572
	.dc.w	L012b04-L012572
	.dc.w	L012b16-L012572
	.dc.w	L012b34-L012572
	.dc.w	L012b52-L012572
	.dc.w	L012b64-L012572
	.dc.w	L012b76-L012572
	.dc.w	L012b94-L012572
	.dc.w	L012bb2-L012572
	.dc.w	L012bc4-L012572
	.dc.w	L012bd6-L012572
	.dc.w	L012bf4-L012572
	.dc.w	L012c12-L012572
	.dc.w	L012c24-L012572
	.dc.w	L012c36-L012572
	.dc.w	L012c54-L012572
	.dc.w	L012c72-L012572
	.dc.w	L012c84-L012572
	.dc.w	L012ca2-L012572

L0125d0:
	addq.w	#1,($001e,a0)
	bsr	L012702
	lea.l	(L05babc),a1
	move.w	($000e,a1),d6
	beq	L0126a6
	bpl	L012644
	andi.w	#$7fff,d6
	subq.b	#1,($0011,a1)
	bne	L0126a6
	subq.b	#1,($0010,a1)
	bne	L0125fe
	clr.w	($000e,a1)
L0125fe:
	move.b	#$01,($0011,a1)
	lea.l	($00e82300),a2
	lea.l	(L048dbc),a4
	subq.w	#1,d6
	beq	L01261c
	move.w	#$0080,d2
	adda.w	d2,a2
	adda.w	d2,a4
L01261c:
	moveq.l	#$00,d5
	move.b	(L05bacc),d5
	move.b	(L012634,pc,d5.w),d5
	moveq.l	#$00,d0
	move.w	d0,(a2,d5.w)
	move.w	d0,(a4,d5.w)
	rts

L012634:
	.dc.b	$04,$0c,$1c,$02,$16,$06,$10,$1a
	.dc.b	$0a,$0e,$08,$18,$14,$1e,$12,$00

L012644:
	subq.b	#1,($0011,a1)
	bne	L0126a6
	subq.b	#1,($0010,a1)
	bne	L012654
	clr.w	($000e,a1)
L012654:
	move.b	#$01,($0011,a1)
	lea.l	($00e82300),a2
	lea.l	(L048dbc),a4
	subq.w	#1,d6
	beq	L012674
	move.w	#$0080,d2
	adda.w	d2,a1
	adda.w	d2,a2
	adda.w	d2,a4
L012674:
	movea.l	a2,a5
	moveq.l	#$00,d5
	move.b	(L05bacc),d5
	move.b	(L0126a8,pc,d5.w),d5
	moveq.l	#$40,d0
	move.w	d0,(a2,d5.w)
	move.w	d0,(a4,d5.w)
	tst.w	(L05baca)
	bne	L0126a6
	lea.l	(L0535a2),a1
	movea.l	a5,a2
	move.w	#$000f,d1
	jsr	(L017578)
L0126a6:
	rts

L0126a8:
	.dc.b	$1e,$02,$1c,$04,$1a,$06,$18,$08
	.dc.b	$16,$0a,$14,$0c,$12,$0e,$10,$00

L0126b8:
	move.w	#$8001,($000e,a1)
	bra	L0126c6
L0126c0:
	move.w	#$8002,($000e,a1)
L0126c6:
	move.w	#$1001,($0010,a1)
	move.w	#$f800,($0012,a1)
	rts

L0126d4:
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	rts

L0126de:
	move.w	#$0001,($000e,a1)
	bra	L0126ec
L0126e6:
	move.w	#$0002,($000e,a1)
L0126ec:
	move.w	#$1001,($0010,a1)
	move.w	#$f800,($0012,a1)
	addq.w	#1,($001c,a0)
	clr.w	($001e,a0)
	rts

L012702:
	move.l	(L05bad0),d5
	beq	L01277a
	lea.l	(L0127b2),a1
	moveq.l	#$1e,d7
L012712:
	lsl.l	#1,d5
	bcc	L012728
	moveq.l	#$00,d0
	move.w	(a1),d1
	move.w	($0002,a1),d2
	movea.l	($0004,a1),a5
	jsr	(L025426)
L012728:
	addq.w	#8,a1
	dbra	d7,L012712
	tst.l	d5
	beq	L01277a
	lea.l	(L0472b2),a2
	move.w	($0030,a2),d0
	asl.w	#4,d0
	lea.l	(a2,d0.w),a2
	moveq.l	#$40,d5
	moveq.l	#$00,d6
	moveq.l	#$07,d7
L012748:
	lea.l	(L05fe14),a5
	move.b	(a2)+,d6
	subi.b	#$0b,d6
	cmpi.b	#$1a,d6
	bcs	L012762
	moveq.l	#$1a,d6
	lea.l	(L05fee4),a5
L012762:
	move.w	d6,d0
	move.w	d5,d1
	move.w	#$0040,d2
	jsr	(L025426)
	add.b	d6,d6
	add.w	(L01277c,pc,d6.w),d5
	dbra	d7,L012748
L01277a:
	rts

L01277c:
	.dc.w	$000d,$000d,$000d,$000d
	.dc.w	$000d,$000d,$000d,$000d
	.dc.w	$000c,$000d,$000d,$000d
	.dc.w	$000d,$000d,$000d,$000d
	.dc.w	$000d,$000d,$000d,$000d
	.dc.w	$000d,$000d,$000d,$000d
	.dc.w	$000d,$000d,$000a
L0127b2:
	.dc.b	$00,$40,$00,$28
	.dc.l	L0601f4
	.dc.b	$00,$40,$00,$28
	.dc.l	L0601fc
	.dc.b	$00,$40,$00,$28
	.dc.l	L060204
	.dc.b	$00,$40,$00,$28
	.dc.l	L06020c
	.dc.b	$00,$40,$00,$28
	.dc.l	L060214
	.dc.b	$00,$40,$00,$28
	.dc.l	L06021c
	.dc.b	$00,$40,$00,$28
	.dc.l	L060224
	.dc.b	$00,$40,$00,$28
	.dc.l	L06022c
	.dc.b	$00,$40,$00,$28
	.dc.l	L060234
	.dc.b	$00,$40,$00,$28
	.dc.l	L06023c
	.dc.b	$00,$14,$00,$28
	.dc.l	L060244
	.dc.b	$00,$14,$00,$10
	.dc.l	L06024c
	.dc.b	$00,$14,$00,$10
	.dc.l	L060254
	.dc.b	$00,$14,$00,$10
	.dc.l	L06025c
	.dc.b	$00,$14,$00,$10
	.dc.l	L060264
	.dc.b	$00,$14,$00,$10
	.dc.l	L060274
	.dc.b	$00,$40,$00,$28
	.dc.l	L06027c
	.dc.b	$00,$14,$00,$10
	.dc.l	L060284
	.dc.b	$00,$14,$00,$10
	.dc.l	L06028c
	.dc.b	$00,$14,$00,$10
	.dc.l	L060294
	.dc.b	$00,$14,$00,$10
	.dc.l	L06029c

L01285a:
	bset.b	#$03,($0016,a1)
	bra	L0126e6
L012864:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$07,($0015,a1)
	bra	L0126de
L012876:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$07,($0015,a1)
	bra	L0126d4
L012894:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$03,($0016,a1)
	bra	L0126d4
L0128b2:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$01,($0015,a1)
	bra	L0126e6
L0128c4:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$04,($0014,a1)
	bra	L0126de
L0128d6:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$04,($0014,a1)
	bra	L0126d4
L0128f4:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$01,($0015,a1)
	bra	L0126d4
L012912:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$02,($0015,a1)
	bra	L0126e6
L012924:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$04,($0014,a1)
	bra	L0126de
L012936:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$04,($0014,a1)
	bra	L0126d4
L012954:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$01,($0014,a1)
	bra	L0126de
L012966:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$01,($0014,a1)
	bra	L0126d4
L012984:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$02,($0015,a1)
	bra	L0126d4
L0129a2:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$03,($0015,a1)
	bra	L0126e6
L0129b4:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$03,($0014,a1)
	bra	L0126de
L0129c6:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$03,($0014,a1)
	bra	L0126d4
L0129e4:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$02,($0014,a1)
	bra	L0126de
L0129f6:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$02,($0014,a1)
	bra	L0126d4
L012a14:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$03,($0015,a1)
	bra	L0126d4
L012a32:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$04,($0015,a1)
	bra	L0126e6
L012a44:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$07,($0014,a1)
	bra	L0126de
L012a56:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$07,($0014,a1)
	bra	L0126d4
L012a74:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$06,($0014,a1)
	bra	L0126de
L012a86:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$06,($0014,a1)
	bra	L0126d4
L012aa4:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$05,($0014,a1)
	bra	L0126de
L012ab6:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$05,($0014,a1)
	bra	L0126d4
L012ad4:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$04,($0015,a1)
	bra	L0126d4
L012af2:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$00,($0015,a1)
	bra	L0126e6
L012b04:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$00,($0014,a1)
	bra	L0126de
L012b16:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$00,($0014,a1)
	bra	L0126d4
L012b34:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$00,($0015,a1)
	bra	L0126d4
L012b52:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$04,($0016,a1)
	bra	L0126e6
L012b64:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$06,($0015,a1)
	bra	L0126de
L012b76:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$06,($0015,a1)
	bra	L0126d4
L012b94:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$04,($0016,a1)
	bra	L0126d4
L012bb2:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$06,($0016,a1)
	bra	L0126e6
L012bc4:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$07,($0016,a1)
	bra	L0126de
L012bd6:
	subi.w	#$0060,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$07,($0016,a1)
	bra	L0126d4
L012bf4:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$06,($0016,a1)
	bra	L0126d4
L012c12:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$05,($0016,a1)
	bra	L0126e6
L012c24:
	subi.w	#$0020,d7
	bne	L0126a6
	bset.b	#$00,($0017,a1)
	bra	L0126de
L012c36:
	subi.w	#$0120,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$00,($0017,a1)
	bra	L0126d4
L012c54:
	subi.w	#$0001.w,d7
	bmi	L0126a6
	beq	L0126c0
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$05,($0016,a1)
	bra	L0126d4
L012c72:
	subi.w	#$0030,d7
	bne	L0126a6
	bset.b	#$05,($0015,a1)
	bra	L0126de
L012c84:
	subi.w	#$01e0,d7
	bmi	L0126a6
	beq	L0126b8
	subi.w	#$0010,d7
	bne	L0126a6
	bclr.b	#$05,($0015,a1)
	bra	L0126d4
L012ca2:
	rts

L012ca4:
	jsr	(L0298a6)
	bcs	L012cec
	move.w	#$000c,($0000.w,a0)
	clr.w	($001c,a0)
	move.w	#$0100,($001e,a0)
	lea.l	($00e1ce00),a0
	lea.l	($00eb8e00),a1
	jsr	(L0039ba)
	jsr	(L0039ba)
	jsr	(L0039ba)
	jsr	(L0039ba)
	jsr	(L0039ba)
	jsr	(L0039ba)
L012cec:
	rts

L012cee:
	tst.w	($001c,a0)
	beq	L012d00
	subq.w	#1,($001e,a0)
	bne	L012cec
	clr.w	($0000.w,a0)
	bra	L012d1e
L012d00:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L012d18
	addq.w	#1,($001c,a0)
	move.w	#$0100,($001e,a0)
	rts

L012d18:
	andi.w	#$000f,d0
	bne	L012cec
L012d1e:
	movea.l	a0,a1
	bsr	L011112
	bcs	L012dd8
	move.w	#$0004,($0000.w,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	andi.w	#$000f,d0
	subq.w	#8,d0
	subi.w	#$0018,d0
	swap.w	d0
	move.l	d0,($0004,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	andi.w	#$000f,d0
	subq.w	#8,d0
	addi.w	#$0080,d0
	swap.w	d0
	move.l	d0,($0008,a0)
	jsr	(L01024e)
	andi.w	#$000f,d0
	addi.w	#$0028,d0
	move.w	d0,($001e,a0)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	add.l	d0,d0
	add.l	d1,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.l	#L05ffe4,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0006,($0024,a0)
	bsr	L012ddc
	jsr	(L01024e)
	andi.w	#$0003,d0
	subq.w	#1,d0
	bpl	L012daa
	moveq.l	#$00,d0
L012daa:
	move.w	d0,($0022,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$02c0,d0
	move.w	d0,($0026,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	addi.w	#$0020,d0
	move.w	d0,($0028,a0)
	move.w	#$0130,($002a,a0)
L012dd8:
	movea.l	a1,a0
	rts

L012ddc:
	bset.b	#$07,($0018,a0)
	move.w	($001e,a0),d0
	bpl	L012df0
	bclr.b	#$07,($0018,a0)
	neg.w	d0
L012df0:
	addi.b	#$10,d0
	bpl	L012dfe
	move.w	#$0000,($0020,a0)
	rts

L012dfe:
	andi.w	#$007f,d0
	lsr.w	#5,d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	move.w	d0,($0020,a0)
	rts

L012e10:
	lea.l	(L047360),a5
L012e16:
	cmp.b	($0003,a5),d0
	beq	L012e2a
	lea.l	($0030,a5),a5
	cmpa.l	#L047f60,a5
	bne	L012e16
	rts

L012e2a:
	ori.b	#$01,ccr
	rts

L012e30:
	lea.l	(L047360),a0
L012e36:
	move.w	($0000.w,a0),d0
	beq	L012e4a
	asl.w	#3,d0
	lea.l	(L012f32),a6
	movea.l	(a6,d0.w),a6
	jsr	(a6)
L012e4a:
	lea.l	($0030,a0),a0
	cmpa.l	#L0473f0,a0
	bne	L012e36
	rts

L012e58:
	move.l	a6,(L047f92)
	rts

L012e60:
	movea.l	(L047f92),a6
	move.w	(L047f7a),d0
	move.w	(L047f82),d1
	cmp.w	d0,d1
	beq	L012e58
	bcc	L012ea0
	addi.w	#$0120,d0
	addi.w	#$0120,d1
L012e80:
	cmp.w	($0000.w,a6),d1
	bcc	L012e9a
	cmp.w	($0000.w,a6),d0
	bcs	L012e58
	movem.l	d0-d1/a6,-(a7)
	move.w	#$0000,d1
	bsr	L012ece
	movem.l	(a7)+,d0-d1/a6
L012e9a:
	lea.l	($0008,a6),a6
	bra	L012e80
L012ea0:
	subi.w	#$0020,d0
	subi.w	#$0020,d1
L012ea8:
	tst.w	($0000.w,a6)
	beq	L012e58
	cmp.w	($0000.w,a6),d1
	bcs	L012ec8
	cmp.w	($0000.w,a6),d0
	bcc	L012e58
	movem.l	d0-d1/a6,-(a7)
	move.w	#$0001,d1
	bsr	L012ece
	movem.l	(a7)+,d0-d1/a6
L012ec8:
	lea.l	(-$0008,a6),a6
	bra	L012ea8
L012ece:
	swap.w	d1
	move.l	a6,d0
	sub.l	#L048ab4,d0
	lsr.w	#3,d0
	jsr	(L012e10)
	bcs	L012f08
	move.b	($0002,a6),d1
	bmi	L012f08
	andi.b	#$70,d1
	lsr.b	#4,d1
	cmp.b	(L047355),d1
	bgt	L012f08
	move.w	($0002,a6),d1
	andi.w	#$0fff,d1
	asl.w	#3,d1
	movea.l	(L012f2e,pc,d1.w),a5
	swap.w	d1
	jsr	(a5)
L012f08:
	rts

L012f0a:
	lea.l	(L047450),a0
L012f10:
	move.w	($0000.w,a0),d0
	beq	L012f1e
	asl.w	#3,d0
	movea.l	(L012f32,pc,d0.w),a6
	jsr	(a6)
L012f1e:
	lea.l	($0030,a0),a0
	cmpa.l	#L047f60,a0
	bne	L012f10
	rts

L012f2c:
	rts

L012f2e:
	.dc.l	L012f2c
L012f32:
	.dc.l	$00000000,$00000000
	.dc.l	$00000000,$00000000
	.dc.l	L012f2c
	.dc.l	$00000000
	.dc.l	L0259f0
	.dc.l	$00000000
	.dc.l	L025a12
	.dc.l	$00000000
	.dc.l	L025af2
	.dc.l	$00000000
	.dc.l	L025b3e
	.dc.l	$00000000
	.dc.l	L0259ee
	.dc.l	$00000000
	.dc.l	L0259ee
	.dc.l	$00000000,$00000000
	.dc.l	$00000000,$00000000
	.dc.l	L012f2c
	.dc.l	L012f2c
	.dc.l	L0143d0
	.dc.l	L014452
	.dc.l	L0140d8
	.dc.l	L01413e
	.dc.l	$00000000
	.dc.l	L013800
	.dc.l	$00000000
	.dc.l	L013622
	.dc.l	L013c0a
	.dc.l	L013cb0
	.dc.l	L03642c
	.dc.l	L0364f6
	.dc.l	L0365a2
	.dc.l	L036600
	.dc.l	L03671c
	.dc.l	L036770
	.dc.l	L0367b2
	.dc.l	L0368a6
	.dc.l	L036b20
	.dc.l	L036bf0
	.dc.l	L0371e6
	.dc.l	L037258
	.dc.l	L03745c
	.dc.l	L0375e4
	.dc.l	L0380cc
	.dc.l	L038182
	.dc.l	L0381fc
	.dc.l	L038256
	.dc.l	L0382a0
	.dc.l	L038350
	.dc.l	L03862a
	.dc.l	L03862a
	.dc.l	L0386a2
	.dc.l	L038808
	.dc.l	L018e4a
	.dc.l	L018ed8
	.dc.l	L0190b6
	.dc.l	L019136
	.dc.l	L038ec6
	.dc.l	L038f7c
	.dc.l	L039446
	.dc.l	L0394e0
	.dc.l	L03b714
	.dc.l	L03b79a
	.dc.l	L03968a
	.dc.l	L0398b0
	.dc.l	L039c10
	.dc.l	L039c82
	.dc.l	$00000000
	.dc.l	L0135ea
	.dc.l	L039ed4
	.dc.l	L039f7e
	.dc.l	L03a24c
	.dc.l	L03a29c
	.dc.l	L03bb90
	.dc.l	L03bb90
	.dc.l	L017624
	.dc.l	L017770
	.dc.l	$00000000
	.dc.l	L017ea2
	.dc.l	L003a08
	.dc.l	L003ae6
	.dc.l	$00000000
	.dc.l	L0043ba
	.dc.l	L02fac4
	.dc.l	L02fb8e
	.dc.l	L018230
	.dc.l	L018292
	.dc.l	L03c712
	.dc.l	L03c798
	.dc.l	L01c3a8
	.dc.l	L01c578
	.dc.l	L03a32e
	.dc.l	L03a3b0
	.dc.l	L02c07e
	.dc.l	L02c174
	.dc.l	L02c2b8
	.dc.l	L02c30c
	.dc.l	L02c372
	.dc.l	L02c53c
	.dc.l	L02cc1e
	.dc.l	L02ccbe
	.dc.l	L03bb90
	.dc.l	L03bc1c
	.dc.l	L03c092
	.dc.l	L03c146
	.dc.l	L03a5a6
	.dc.l	L03a5f6
	.dc.l	L03a692
	.dc.l	L03a7aa
	.dc.l	L02da70
	.dc.l	L02daa8
	.dc.l	L02dbe6
	.dc.l	L02dc44
	.dc.l	L02d08e
	.dc.l	L02d104
	.dc.l	L02d272
	.dc.l	L02d32a
	.dc.l	L00b94c
	.dc.l	L00b9fc
	.dc.l	L03a83c
	.dc.l	L03a906
	.dc.l	$00000000
	.dc.l	L03ac18
	.dc.l	$00000000
	.dc.l	L03ada2
	.dc.l	L018cbc
	.dc.l	L018d00
	.dc.l	L03ae7a
	.dc.l	L03af18
	.dc.l	L03c2ce
	.dc.l	L03c2f6
	.dc.l	L03afd0
	.dc.l	L03b032
	.dc.l	L03c3ac
	.dc.l	L03c404
	.dc.l	L03c4e2
	.dc.l	L03c52a
	.dc.l	L03c82e
	.dc.l	L03c878
	.dc.l	L030948
	.dc.l	L0309a6
	.dc.l	$00000000
	.dc.l	L030e68
	.dc.l	$00000000
	.dc.l	L030cce
	.dc.l	L030fa6
	.dc.l	L031024
	.dc.l	$00000000
	.dc.l	L030f6c
	.dc.l	$00000000
	.dc.l	L0313e8
	.dc.l	L0314e6
	.dc.l	L03156c
	.dc.l	$00000000
	.dc.l	L0317d2
	.dc.l	$00000000
	.dc.l	L031a80
	.dc.l	$00000000
	.dc.l	L031be0
	.dc.l	L02e688
	.dc.l	L02e70a
	.dc.l	L031428
	.dc.l	L03145a
	.dc.l	L006926
	.dc.l	L006d84
	.dc.l	$00000000
	.dc.l	L00c5f8
	.dc.l	L005062
	.dc.l	L005102
	.dc.l	$00000000
	.dc.l	L005d4a
	.dc.l	L01a3ec
	.dc.l	L01a428
	.dc.l	L01b746
	.dc.l	L01b796
	.dc.l	L01b9d0
	.dc.l	L01bab8
	.dc.l	L008ad2
	.dc.l	L008b86
	.dc.l	L03b1b6
	.dc.l	L03b278
	.dc.l	L03b49e
	.dc.l	L03b536
	.dc.l	L03b67a
	.dc.l	L03b6ce
	.dc.l	$00000000
	.dc.l	L02d024
	.dc.l	L01b4de
	.dc.l	L01b584
	.dc.l	L01b68c
	.dc.l	L01b6d6
	.dc.l	L01a4b0
	.dc.l	L01a4f8
	.dc.l	L01a638
	.dc.l	L01a732
	.dc.l	$00000000
	.dc.l	L008c6c
	.dc.l	L02e798
	.dc.l	L02e7e0
	.dc.l	L02e94e
	.dc.l	L02e992
	.dc.l	L014048
	.dc.l	L01408a
	.dc.l	L01a976
	.dc.l	L01a9f0
	.dc.l	L01818c
	.dc.l	L0181de
	.dc.l	$00000000
	.dc.l	L02e11c
	.dc.l	L01ab72
	.dc.l	L01abca
	.dc.l	L01bbf4
	.dc.l	L01bc1c
	.dc.l	L01ac94
	.dc.l	L01acdc
	.dc.l	L02ed9c
	.dc.l	L02f0c4
	.dc.l	L01be70
	.dc.l	L01bee4
	.dc.l	L01b04e
	.dc.l	L01b090
	.dc.l	L01b266
	.dc.l	L01b2fa
	.dc.l	L01c07c
	.dc.l	L01c11a
	.dc.l	L01c2d8
	.dc.l	L01c332
	.dc.l	L031fba
	.dc.l	L032302
	.dc.l	L009242
	.dc.l	L009592
	.dc.l	L02f2f2
	.dc.l	L02f594
	.dc.l	L02f6d4
	.dc.l	L02f6fa
	.dc.l	L019fe4
	.dc.l	L01a076
	.dc.l	L01c774
	.dc.l	L01c7c8
	.dc.l	L00ae02
	.dc.l	L00b0f2
	.dc.l	L01c8d2
	.dc.l	L01c928
	.dc.l	L01cbe8
	.dc.l	L01cd50
	.dc.l	L01ea2e
	.dc.l	L01ea72
	.dc.l	L01d34e
	.dc.l	L01d392
	.dc.l	L01ca4e
	.dc.l	L01cabe
	.dc.l	L02d544
	.dc.l	L02d5f2
	.dc.l	L0044ce
	.dc.l	L0046c2
	.dc.l	L01983a
	.dc.l	L0198f0
	.dc.l	L019478
	.dc.l	L0194be
	.dc.l	L02f728
	.dc.l	L02f74c
	.dc.l	L031f0a
	.dc.l	L031f3a
	.dc.l	L0323b4
	.dc.l	L03286e
	.dc.l	L01d49e
	.dc.l	L01d508
	.dc.l	L01d626
	.dc.l	L01d68e
	.dc.l	L01d7a6
	.dc.l	L01d83c
	.dc.l	L0333ba
	.dc.l	L033436
	.dc.l	L02f7f2
	.dc.l	L02f8a8
	.dc.l	L033aca
	.dc.l	L033aee
	.dc.l	L00e224
	.dc.l	L00e2b8
	.dc.l	L00c9de
	.dc.l	L00cd54
	.dc.l	L01e564
	.dc.l	L01e5d8
	.dc.l	L019b06
	.dc.l	L019b82
	.dc.l	L029d86
	.dc.l	L02a062
	.dc.l	L02a0a4
	.dc.l	L02a2d0
	.dc.l	L02a5b8
	.dc.l	L02a61a
	.dc.l	L02a766
	.dc.l	L02a940
	.dc.l	L017bea
	.dc.l	L017c3a
	.dc.l	L02ac1a
	.dc.l	L02acdc
	.dc.l	L033bfa
	.dc.l	L03403e
	.dc.l	L034540
	.dc.l	L0345da
	.dc.l	L02afc0
	.dc.l	L02b114
	.dc.l	L034734
	.dc.l	L0347a8
	.dc.l	L02b95c
	.dc.l	L02b65a
	.dc.l	$00000000
	.dc.l	L004cea
	.dc.l	L034a2c
	.dc.l	L034ac4
	.dc.l	L01df52
	.dc.l	L01dfba
	.dc.l	L01e2ee
	.dc.l	L01e328
	.dc.l	L034d34
	.dc.l	L034ec6
	.dc.l	L0354f0
	.dc.l	L035786
	.dc.l	L01dd6e
	.dc.l	L01de16
	.dc.l	L02ba7c
	.dc.l	L02bad6
	.dc.l	L019362
	.dc.l	L01939c
	.dc.l	L02bb74
	.dc.l	L02bc54
	.dc.l	L01e44c
	.dc.l	L01e4a8
	.dc.l	L01dce8
	.dc.l	L01dd34
	.dc.l	$00000000
	.dc.l	L00f89e
	.dc.l	L033b24
	.dc.l	L033ba0
	.dc.l	L02bdec
	.dc.l	L02be36
L013486:
	.dc.b	$00,$00,$00,$20,$00,$20,$00,$00
	.dc.b	$00,$10,$00,$30,$00,$10,$00,$00
	.dc.b	$00,$30,$00,$00,$00,$40,$00,$10
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$30,$00,$20,$00,$50,$00,$20
	.dc.b	$00,$00,$00,$30,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$10,$00,$00,$00
	.dc.b	$00,$30,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$40,$00,$30,$00,$00,$00,$30
	.dc.b	$00,$20,$00,$00,$00,$20,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$10,$00,$30
	.dc.b	$00,$10,$00,$00,$00,$50,$00,$00
	.dc.b	$00,$10,$00,$00,$00,$50,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$20
	.dc.b	$00,$10,$00,$30,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$50,$00,$30,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$30,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$30,$00,$00,$00,$00
	.dc.b	$00,$00,$01,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$50,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$50,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$05,$00,$00,$00
	.dc.b	$00,$00,$00,$70,$00,$30,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$20,$00,$00
	.dc.b	$00,$10,$00,$00,$01,$00,$00,$70
	.dc.b	$00,$60,$00,$00,$00,$40,$00,$30
	.dc.b	$00,$00,$00,$20,$00,$00,$00,$00
	.dc.b	$00,$50,$00,$40,$03,$00,$00,$00
	.dc.b	$00,$00,$00,$20,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00

L0135bc:
	addq.w	#4,(L047f66)
L0135c2:
	addq.w	#1,(L047f66)
	cmpi.w	#$0064,(L047f66)
	bcs	L0135da
	move.w	#$0063,(L047f66)
L0135da:
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L0419f0)
	movem.l	(a7)+,d0-d7/a0-a6
	rts

L0135ea:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L0135fe
	jmp	(L029cca)

L0135fe:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0010,d0
	bne	L013614
	jmp	(L029cca)

L013614:
	eori.w	#$8000,($0018,a0)
	jsr	(L025416)
	rts

L013622:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L013636
	jmp	(L029cca)

L013636:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L013648
	jmp	(L029cca)

L013648:
	cmpi.w	#$0001,($001c,a0)
	beq	L013682
	bcc	L013766
	subi.l	#$00004000,($0008,a0)
	lsr.w	#2,d0
	add.w	d0,d0
	move.w	(L01366e,pc,d0.w),($0018,a0)
	jsr	(L025416)
	rts

L01366e:
	.dc.w	$000f,$800f,$0010,$8010
	.dc.w	$0011,$8011,$0010,$8010
	.dc.w	$000f,$800f

L013682:
	move.w	d0,d1
	cmpi.w	#$0010,d0
	bcs	L0136be
	andi.w	#$0001,d0
	bne	L0136be
	andi.w	#$000e,d1
	jsr	(L01024e)
	andi.b	#$07,d0
	subq.b	#4,d0
	move.b	d0,($20,a0,d1.w)
	jsr	(L01024e)
	andi.b	#$07,d0
	add.b	#$15,d0
	move.b	d0,($21,a0,d1.w)
	lsr.w	#1,d1
	move.b	#$0c,($0c,a0,d1.w)
L0136be:
	move.w	#$0000,d7
	move.w	($0004,a0),d5
	move.w	($0008,a0),d6
	lea.l	($0020,a0),a1
L0136ce:
	move.b	($0c,a0,d7.w),d0
	beq	L013706
	subq.b	#1,d0
	move.b	d0,($0c,a0,d7.w)
	lsr.b	#1,d0
	ext.w	d0
	move.b	(a1),d1
	ext.w	d1
	add.w	d5,d1
	move.b	d7,d2
	andi.b	#$01,d2
	add.b	($0001,a1),d2
	subi.b	#$04.b,d2
	move.b	d2,($0001,a1)
	ext.w	d2
	add.w	d6,d2
	lea.l	(L06e3b2),a5
	jsr	(L025426)
L013706:
	addq.w	#2,a1
	addq.w	#1,d7
	cmpi.w	#$0008,d7
	bne	L0136ce
	cmpi.w	#$003d,(L047f30)
	bne	L013764
	tst.w	(L047f4c)
	bne	L013764
	addi.w	#$0008.w,d5
	addi.w	#$fff8,d6
	move.w	#$0000,d7
	lea.l	($0020,a0),a1
L013732:
	move.b	($0c,a0,d7.w),d0
	beq	L01375a
	lsr.b	#1,d0
	ext.w	d0
	ori.w	#$4000,d0
	move.b	(a1),d1
	ext.w	d1
	add.w	d5,d1
	move.b	($0001,a1),d2
	ext.w	d2
	add.w	d6,d2
	lea.l	(L06e3b2),a5
	jsr	(L025426)
L01375a:
	addq.w	#2,a1
	addq.w	#1,d7
	cmpi.w	#$0008,d7
	bne	L013732
L013764:
	rts

L013766:
	move.w	d0,d1
	cmpi.w	#$0010,d0
	bcs	L0137a8
	andi.w	#$0001,d0
	bne	L0137a8
	andi.w	#$000e,d1
	move.b	($001a,a0),d2
	jsr	(L01024e)
	and.b	d2,d0
	lsr.b	#1,d2
	sub.b	d2,d0
	move.b	d0,($20,a0,d1.w)
	move.b	($001b,a0),d2
	jsr	(L01024e)
	and.b	d2,d0
	lsr.b	#1,d2
	add.b	d2,d0
	move.b	d0,($21,a0,d1.w)
	lsr.w	#1,d1
	move.b	#$0c,($0c,a0,d1.w)
L0137a8:
	move.w	#$0000,d7
	move.w	($0004,a0),d5
	move.w	($0008,a0),d6
	lea.l	($0020,a0),a1
L0137b8:
	move.b	($0c,a0,d7.w),d0
	beq	L0137f4
	subq.b	#1,d0
	move.b	d0,($0c,a0,d7.w)
	lsr.b	#1,d0
	ext.w	d0
	ror.w	#1,d0
	add.w	#$000f,d0
	move.b	(a1),d1
	ext.w	d1
	add.w	d5,d1
	move.b	d7,d2
	andi.b	#$01,d2
	add.b	($0001,a1),d2
	subq.b	#2,d2
	move.b	d2,($0001,a1)
	ext.w	d2
	add.w	d6,d2
	lea.l	(L06e442),a5
	jsr	(L025426)
L0137f4:
	addq.w	#2,a1
	addq.w	#1,d7
	cmpi.w	#$0008,d7
	bne	L0137b8
	rts

L013800:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L01380e,pc,d0.w),d0
	jmp	(L01380e,pc,d0.w)

L01380e:
	.dc.w	L013812-L01380e
	.dc.w	L0138ac-L01380e

L013812:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L013826
	jmp	(L029cca)

L013826:
	jsr	(L029a3e)
	bcs	L013a62
	cmpi.w	#$0009,($0020,a0)
	beq	L013842
	addi.l	#$00004000,($0010,a0)
	bra	L01385e
L013842:
	move.w	($001e,a0),d0
	addq.b	#2,d0
	move.w	d0,($001e,a0)
	jsr	(L010440)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	bra.w	L01385e
L01385e:
	btst.b	#$07,($0002,a0)
	bne	L013894
	move.w	#$0004,d0
	jsr	(L0257f2)
	cmpi.b	#$01,d0
	beq	L013894
	cmpi.b	#$02,d0
	bne	L0138a4
	addq.w	#8,($0008,a0)
	move.w	#$0004,d0
	jsr	(L0257f2)
	subq.w	#8,($0008,a0)
	cmpi.b	#$01,d0
	bne	L0138a4
L013894:
	bclr.b	#$07,($0002,a0)
	addq.w	#1,($001c,a0)
	move.w	#$0100,($001e,a0)
L0138a4:
	jsr	(L025416)
	rts

L0138ac:
	bclr.b	#$07,($0002,a0)
	cmpi.w	#$000b,($0020,a0)
	bne	L0138c0
	tst.w	($001e,a0)
	beq	L013916
L0138c0:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L0138d4
	jmp	(L029cca)

L0138d4:
	jsr	(L029a3e)
	bcs	L013a62
	cmpi.w	#$000b,($0020,a0)
	beq	L013916
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L0138f8
	jmp	(L029cca)

L0138f8:
	cmpi.w	#$0012,($0020,a0)
	beq	L013a18
	cmpi.w	#$0080,d0
	bne	L01390e
	bset.b	#$06,($0018,a0)
L01390e:
	jsr	(L025416)
	rts

L013916:
	tst.w	($001e,a0)
	beq	L013924
	jsr	(L025416)
	rts

L013924:
	cmpi.w	#$0001,(L047fb8)
	beq	L013934
	jmp	(L029cca)

L013934:
	bclr.b	#$06,($0002,a0)
	move.w	($0022,a0),d0
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	btst.l	#$05,d0
	beq	L013996
	andi.w	#$001f,d0
	btst.l	#$00,d0
	bne	L01396a
	lea.l	($00e82002),a2
	lea.l	(L048ebe),a1
	move.w	#$007e,d7
	bsr	L0175a2
	bra	L0139dc
L01396a:
	subq.w	#1,d0
	lea.l	($00e82100),a2
	lea.l	(L048fbc),a1
	move.w	#$007f,d7
	bsr	L0175a2
	lea.l	($00e82360),a2
	lea.l	(L04921c),a1
	move.w	#$002f,d7
	bsr	L0175a2
	bra	L0139dc
L013996:
	btst.l	#$00,d0
	bne	L0139b2
	lea.l	($00e82002),a2
	lea.l	(L048ebe),a1
	move.w	#$007e,d7
	bsr	L01758e
	bra	L0139dc
L0139b2:
	subq.w	#1,d0
	lea.l	($00e82100),a2
	lea.l	(L048fbc),a1
	move.w	#$007f,d7
	bsr	L01758e
	lea.l	($00e82360),a2
	lea.l	(L04921c),a1
	move.w	#$002f,d7
	bsr	L01758e
L0139dc:
	tst.w	($0022,a0)
	beq	L013a0c
	movea.l	($0024,a0),a1
	cmpa.l	#L047ae0,a1
	bcc	L013a02
	tst.w	($0000.w,a1)
	beq	L013a02
	btst.b	#$00,($0002,a1)
	beq	L013a02
	move.b	#$7f,($001a,a1)
L013a02:
	lea.l	($0030,a1),a1
	move.l	a1,($0024,a0)
	rts

L013a0c:
	clr.w	(L047fb8)
	jmp	(L029cca)

L013a18:
	lea.l	(L06e3b2),a5
	move.w	($0022,a0),d0
	andi.w	#$0003,d0
	addi.w	#$0006.w,d0
	move.w	($0004,a0),d1
	btst.b	#$02,($0023,a0)
	beq	L013a3a
	subi.w	#$0006.w,d1
L013a3a:
	move.w	($0008,a0),d2
	jsr	(L025426)
	lea.l	(L06e3b2),a5
	move.w	#$000a,d0
	move.w	($0004,a0),d1
	addi.w	#$0006.w,d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	rts

L013a62:
	clr.w	($0000.w,a0)
	clr.w	($0002,a0)
	move.w	($0020,a0),d0
	subq.w	#2,d0
	add.w	d0,d0
	move.w	(L013a7a,pc,d0.w),d0
	jmp	(L013a7a,pc,d0.w)

L013a7a:
	.dc.w	L013b18-L013a7a
	.dc.w	L013b64-L013a7a
	.dc.w	L013b64-L013a7a
	.dc.w	L013b64-L013a7a
	.dc.w	L013b64-L013a7a
	.dc.w	L013b64-L013a7a
	.dc.w	L013b64-L013a7a
	.dc.w	L013b9c-L013a7a
	.dc.w	L013ba8-L013a7a
	.dc.w	L013ab8-L013a7a
	.dc.w	L013a9c-L013a7a
	.dc.w	L013aaa-L013a7a
	.dc.w	L013b74-L013a7a
	.dc.w	L013bb4-L013a7a
	.dc.w	L013b3c-L013a7a
	.dc.w	L013b46-L013a7a
	.dc.w	L013bb4-L013a7a

L013a9c:
	move.w	#$0100,(L047fa0)
	moveq.l	#$08,d0
	trap	#0
	rts

L013aaa:
	moveq.l	#$15,d0
	trap	#0
	move.w	#$0040,(L047fae)
	rts

L013ab8:
	moveq.l	#$40,d0
	trap	#0
	move.w	#$000e,($0000.w,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$2000,($0002,a0)
	clr.w	($001a,a0)
	clr.w	($001e,a0)
	move.w	#$0040,($0022,a0)
	move.l	#L0474e0,($0024,a0)
	tst.w	(L047fb8)
	bne	L013b04
	move.w	#$0001,(L047fb8)
	cmpi.b	#$09,(L04740d)
	beq	L013b02
	bsr	L0174aa
L013b02:
	rts

L013b04:
	move.w	#$0001,(L047fb8)
	clr.w	(L047fac)
	moveq.l	#$f4,d0
	trap	#0
	rts

L013b18:
	move.b	(L04741d),d0
	cmpi.b	#$02,d0
	beq	L013bb4
	addq.b	#1,d0
	move.b	d0,(L04741d)
	moveq.l	#$17,d0
	trap	#0
	move.w	#$001f,(L047faa)
	rts

L013b3c:
	moveq.l	#$1d,d0
	trap	#0
	move.b	#$01,d1
	bra	L013b4e
L013b46:
	moveq.l	#$1d,d0
	trap	#0
	move.b	#$02,d1
L013b4e:
	move.b	(L04741f),d0
	beq	L013bb4
	cmpi.b	#$07,d0
	bcc	L013bb4
	move.b	d1,(L04741e)
	rts

L013b64:
	moveq.l	#$16,d0
	trap	#0
	move.w	($0020,a0),d0
	move.w	d0,(L04741e)
	rts

L013b74:
	addq.w	#1,(L047352)
	cmpi.w	#$0064,(L047352)
	bcs	L013b8c
	move.w	#$0063,(L047352)
L013b8c:
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L0419e4)
	movem.l	(a7)+,d0-d7/a0-a6
	rts

L013b9c:
	moveq.l	#$13,d0
	trap	#0
	jsr	(L0135c2)
	rts

L013ba8:
	moveq.l	#$14,d0
	trap	#0
	jsr	(L0135bc)
	rts

L013bb4:
	moveq.l	#$10,d0
	trap	#0
	moveq.l	#$00,d0
	move.w	($0024,a0),d0
	add.w	d0,d0
	move.w	(L013bfa,pc,d0.w),d0
	jsr	(L029a68)
	move.w	#$000e,($0000.w,a0)
	move.w	#$2000,($0002,a0)
	clr.w	($001a,a0)
	subi.w	#$0008.w,($0008,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$0012,($0020,a0)
	move.w	($0024,a0),($0022,a0)
	rts

L013bfa:
	.dc.w	$0100,$0200,$0400,$0700
	.dc.w	$1000,$2000,$4000,$7000

L013c0a:
	jsr	(L0298e2)
	bcs	L013c7e
	move.w	#$0010,($0000.w,a0)
	ori.w	#$0100,d0
	move.w	d0,($0002,a0)
	move.w	#$0001,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001e,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0024,a0)
	clr.w	($0022,a0)
	move.l	a6,($002c,a0)
	move.b	($0007,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0026,a0)
	beq	L013c70
	subq.w	#1,d0
	beq	L013c80
	subq.w	#1,d0
	beq	L013c90
	bra	L013ca0
L013c70:
	move.w	#$0015,($0018,a0)
	move.l	#L06e2e2,($0014,a0)
L013c7e:
	rts

L013c80:
	move.w	#$0000,($0018,a0)
	move.l	#L0704c2,($0014,a0)
	rts

L013c90:
	move.w	#$0000,($0018,a0)
	move.l	#L0770e0,($0014,a0)
	rts

L013ca0:
	move.w	#$0000,($0018,a0)
	move.l	#L073708,($0014,a0)
	rts

L013cb0:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L013cc4
	jmp	(L029cca)

L013cc4:
	tst.b	($001a,a0)
	beq	L013fbc
	tst.w	($0020,a0)
	bne	L013d30
	tst.w	($0022,a0)
	bne	L013d16
	movea.l	a0,a1
	movem.l	a0,-(a7)
	jsr	(L0298e2)
	bcs	L013d2c
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.l	($002c,a1),($002c,a0)
	clr.w	($0020,a0)
	jsr	(L013d30)
	movem.l	(a7)+,a0
	move.w	#$0020,($0022,a0)
	clr.b	($0002,a0)
	move.b	#$80,($001a,a0)
L013d16:
	subq.w	#1,($0022,a0)
	bne	L013fbc
	move.b	#$01,($0002,a0)
	clr.b	($001a,a0)
	bra	L013fbc
L013d2c:
	movem.l	(a7)+,a0
L013d30:
	movea.l	($002c,a0),a1
	ori.w	#$8000,($0002,a1)
	moveq.l	#$1b,d0
	trap	#0
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L013d8a
	move.w	#$000f,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0028,($001e,a0)
	move.l	#L06e442,($0014,a0)
	move.w	#$0000,($0018,a0)
L013d8a:
	movea.l	a1,a0
	move.w	#$000e,($0000.w,a0)
	move.w	#$4200,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00008000,($0010,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	($0020,a0),d0
L013dbe:
	cmpi.w	#$0010,d0
	beq	L013e3c
	cmpi.w	#$0011,d0
	beq	L013e3c
	cmpi.w	#$0002,d0
	beq	L013e5a
	bcs	L013ea0
	cmpi.w	#$0009,d0
	bcs	L013e84
	cmpi.w	#$000a,d0
	beq	L013ece
	cmpi.w	#$0009,d0
	beq	L013e0c
	cmpi.w	#$000f,d0
	beq	L013ece
L013df4:
	bsr	L013f8e
	bcs	L013e90
	bra	L013ece
L013e00:
	bsr	L013f8e
	bcs	L013e96
	bra	L013ece
L013e0c:
	cmpi.w	#$000a,(L047358)
	bcc	L013e3c
	cmpi.b	#$01,(L04741d)
	beq	L013e2e
	bcc	L013e38
	cmpi.w	#$0004,(L047f66)
	bcc	L013e7c
	bra	L013e38
L013e2e:
	cmpi.w	#$0008,(L047f66)
	bcc	L013e7c
L013e38:
	bra	L013ece
L013e3c:
	clr.w	(L047358)
	cmpi.b	#$01,(L04741e)
	beq	L013e54
	bcc	L013e96
	move.w	#$0010,d0
	bra	L013ece
L013e54:
	move.w	#$0011,d0
	bra	L013ece
L013e5a:
	cmpi.b	#$01,(L04741d)
	beq	L013e72
	bcc	L013e96
	cmpi.w	#$0004,(L047f66)
	bcs	L013e96
	bra	L013e7c
L013e72:
	cmpi.w	#$0008,(L047f66)
	bcs	L013e96
L013e7c:
	move.w	#$0002,d0
	bra	L013e00
L013e84:
	cmp.b	(L04741f),d0
	beq	L013e90
	bra	L013df4
L013e90:
	move.w	#$0009,d0
	bra	L013ece
L013e96:
	move.w	#$000f,d0
	clr.w	($0024,a0)
	bra	L013ece
L013ea0:
	move.w	#$0000,($0024,a0)
	jsr	(L01024e)
	and.w	#$000f,d0
	addq.w	#2,d0
	cmpi.w	#$000e,d0
	bne	L013ebe
	move.w	#$0002,($0024,a0)
L013ebe:
	cmpi.w	#$000f,d0
	bne	L013eca
	move.w	#$0003,($0024,a0)
L013eca:
	bra	L013df4
L013ece:
	subq.w	#2,d0
	asl.w	#3,d0
	move.w	(L013f0e,pc,d0.w),($0020,a0)
	move.l	(L013f10,pc,d0.w),($0014,a0)
	move.w	(L013f14,pc,d0.w),($0018,a0)
	cmpi.w	#$000f,($0020,a0)
	bne	L013efc
	move.w	($0024,a0),d0
	cmpi.w	#$0002,d0
	beq	L013efe
	cmpi.w	#$0003,d0
	beq	L013f06
L013efc:
	rts

L013efe:
	move.w	#$0019,($0018,a0)
	rts

L013f06:
	move.w	#$0014,($0018,a0)
	rts

L013f0e:
	.dc.w	$0002
L013f10:
	.dc.l	L06e2e2
L013f14:
	.dc.w	$0012,$0003
	.dc.l	L06e2e2
	.dc.w	$000b,$0004
	.dc.l	L06e2e2
	.dc.w	$0009,$0005
	.dc.l	L06e2e2
	.dc.w	$0002,$0006
	.dc.l	L06e2e2
	.dc.w	$0001,$0007
	.dc.l	L06e2e2
	.dc.w	$0006,$0008
	.dc.l	L06e2e2
	.dc.w	$0013,$0009
	.dc.l	L06e2e2
	.dc.w	$000d,$000a
	.dc.l	L06e2e2
	.dc.w	$000e,$000b
	.dc.l	L06e2e2
	.dc.w	$0007,$000c
	.dc.l	L06e2e2
	.dc.w	$000c,$000d
	.dc.l	L06e2e2
	.dc.w	$0011,$000f
	.dc.l	L06e2e2
	.dc.w	$0014,$000f
	.dc.l	L06e2e2
	.dc.w	$0018,$0010
	.dc.l	L06e2e2
	.dc.w	$000f,$0011
	.dc.l	L06e2e2
	.dc.w	$0010

L013f8e:
	lea.l	(L0474e0),a1
	move.w	#$0037,d1
L013f98:
	cmpa.l	a0,a1
	beq	L013faa
	cmpi.w	#$000e,($0000.w,a1)
	bne	L013faa
	cmp.w	($0020,a1),d0
	beq	L013fb6
L013faa:
	lea.l	($0030,a1),a1
	dbra	d1,L013f98
	or.w	d1,d1
	rts

L013fb6:
	ori.b	#$01,ccr
	rts

L013fbc:
	move.w	($0026,a0),d0
	beq	L013fc8
	subq.w	#1,d0
	beq	L013fec
	bra	L014028
L013fc8:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	bne	L013fd6
	moveq.l	#$00,d0
L013fd6:
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	addi.w	#$0015,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L013fec:
	move.b	($001f,a0),d0
	addq.b	#1,d0
	cmpi.b	#$03,d0
	bne	L014010
	move.b	($001e,a0),d0
	addq.b	#1,d0
	cmpi.b	#$08,d0
	bne	L014008
	move.b	#$00,d0
L014008:
	move.b	d0,($001e,a0)
	move.b	#$00,d0
L014010:
	move.b	d0,($001f,a0)
	move.b	($001e,a0),d0
	andi.w	#$00ff,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L014028:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0020,d0
	bne	L014036
	moveq.l	#$00,d0
L014036:
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L014048:
	jsr	(L0298e2)
	bcs	L014088
	move.w	#$0067,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	and.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.w	#$0008,($0018,a0)
	move.l	#L0770e0,($0014,a0)
L014088:
	rts

L01408a:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01409e
	jmp	(L029cca)

L01409e:
	jsr	(L025416)
	move.w	($0020,a0),d7
	beq	L0140d6
	subq.w	#1,d7
	beq	L0140d6
	move.w	($0004,a0),d5
	move.w	($0008,a0),d6
	addi.w	#$0008.w,d6
L0140ba:
	addi.w	#$0010,d6
	move.w	#$0009,d0
	move.w	d5,d1
	move.w	d6,d2
	lea.l	(L0770e0),a5
	jsr	(L025426)
	dbra	d7,L0140ba
L0140d6:
	rts

L0140d8:
	jsr	(L0298a6)
	bcs	L01413c
	move.w	#$000d,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	and.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	ext.w	d0
	move.w	d0,($0022,a0)
	move.b	($0007,a6),d0
	ext.w	d0
	move.w	d0,($0024,a0)
	move.w	#$4000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	move.l	a6,($002c,a0)
L01413c:
	rts

L01413e:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L014152
	jmp	(L029cca)

L014152:
	move.w	($001c,a0),d0
	subq.w	#1,d0
	beq	L01423e
	subq.w	#1,d0
	beq	L0142c2
	tst.b	($001a,a0)
	beq	L014186
	clr.b	($001a,a0)
	move.w	($0020,a0),d0
	beq	L01418c
	subq.w	#1,d0
	beq	L0141dc
	subq.w	#1,d0
	beq	L0141f8
	subq.w	#1,d0
	beq	L014204
	subq.w	#1,d0
	beq	L014214
L014186:
	clr.w	($001e,a0)
L01418a:
	rts

L01418c:
	movea.l	($002c,a0),a1
	move.w	#$0000,($0002,a1)
	moveq.l	#$0a,d0
	trap	#0
	addq.w	#1,($001c,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$000f,($0018,a0)
	move.w	($0022,a0),d0
	add.w	d0,($0004,a0)
	move.w	($0024,a0),d0
	add.w	d0,($0008,a0)
	clr.w	($001e,a0)
	clr.w	($0022,a0)
	clr.w	($0026,a0)
	lea.l	($00ebb980),a1
	moveq.l	#$00,d0
	move.w	#$001f,d1
L0141d4:
	move.l	d0,(a1)+
	dbra	d1,L0141d4
	rts

L0141dc:
	cmpi.b	#$00,(L04740d)
	bne	L014186
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0080,d0
	bcs	L01418a
	bra	L01418c
L0141f8:
	cmpi.b	#$01,(L04740d)
	bne	L014186
	bra	L01418c
L014204:
	cmpi.b	#$06,(L04740d)
	bne	L014186
	bra	L01418c
L014214:
	tst.b	(L0481e4)
	bne	L014186
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$00c0,d0
	bcs	L01418a
	bra	L01418c

L014234:
	.dc.w	$006f,$006d,$006c,$0070
	.dc.w	$006e

L01423e:
	addq.w	#3,($0022,a0)
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	bcs	L0142ce
	lsr.w	#1,d0
	bcs	L0142ce
	cmpi.w	#$000f,d0
	bne	L014264
	addq.w	#1,($001c,a0)
	move.w	#$0140,($001e,a0)
L014264:
	bsr	L014268
	bra	L0142ce
L014268:
	move.w	d0,d1
	neg.w	d0
	add.w	#$000f,d0
	asl.w	#2,d0
	lea.l	($00ebb980),a4
	lea.l	(a4,d0.w),a5
	lea.l	($40,a4,d0.w),a6
	move.w	($0020,a0),d0
	add.w	d0,d0
	move.w	(L014234,pc,d0.w),d0
	cmpi.w	#$0070,d0
	bne	L0142a8
	move.w	($0022,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0028,d0
	bcs	L01429e
	moveq.l	#$00,d0
L01429e:
	move.w	d0,($0022,a0)
	lsr.w	#2,d0
	add.w	#$0070,d0
L0142a8:
	asl.w	#7,d0
	lea.l	($00e6c000),a3
	lea.l	($40,a3,d0.w),a4
	lea.l	(a3,d0.w),a3
L0142b8:
	move.l	(a3)+,(a5)+
	move.l	(a4)+,(a6)+
	dbra	d1,L0142b8
	rts

L0142c2:
	subq.w	#1,($001e,a0)
	bne	L0142ce
	jmp	(L029cca)

L0142ce:
	jsr	(L029a3e)
	bcs	L01431a
	move.w	($0026,a0),d0
	addq.w	#1,d0
	and.w	#$0003,d0
	move.w	d0,($0026,a0)
	bne	L0142fa
	move.w	($0018,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0012,d0
	bne	L0142f6
	move.w	#$000f,d0
L0142f6:
	move.w	d0,($0018,a0)
L0142fa:
	jsr	(L025416)
	cmpi.w	#$0001,($001c,a0)
	beq	L014318
	cmpi.w	#$0003,($0020,a0)
	bne	L014318
	move.w	#$000f,d0
	bsr	L014268
L014318:
	rts

L01431a:
	move.w	($0020,a0),d0
	move.w	#$000e,($0000.w,a0)
	move.w	#$2000,($0002,a0)
	subi.w	#$0008.w,($0008,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$0012,($0020,a0)
	tst.w	d0
	beq	L014356
	subq.w	#1,d0
	beq	L01436e
	subq.w	#1,d0
	beq	L01436e
	subq.w	#1,d0
	beq	L014386
	subq.w	#1,d0
	beq	L01439e
L014356:
	moveq.l	#$0c,d0
	trap	#0
	move.l	#$00001000,d0
	jsr	(L029a68)
	move.w	#$0004,($0022,a0)
	rts

L01436e:
	moveq.l	#$0c,d0
	trap	#0
	move.l	#$00002000,d0
	jsr	(L029a68)
	move.w	#$0005,($0022,a0)
	rts

L014386:
	moveq.l	#$0c,d0
	trap	#0
	move.l	#$00004000,d0
	jsr	(L029a68)
	move.w	#$0006,($0022,a0)
	rts

L01439e:
	moveq.l	#$0b,d0
	trap	#0
	move.w	(L047352),d0
	addq.w	#1,d0
	cmpi.w	#$0063,d0
	bcs	L0143b4
	move.w	#$0063,d0
L0143b4:
	move.w	d0,(L047352)
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L0419e4)
	movem.l	(a7)+,d0-d7/a0-a6
	jmp	(L029cca)

L0143ce:
	rts

L0143d0:
	jsr	(L029842)
	bcs	L0143ce
	move.w	#$000c,($0000.w,a0)
	move.w	d0,($0002,a0)
	clr.w	($001a,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	and.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	cmpi.w	#$0016,d0
	beq	L014432
	subq.w	#1,d0
	beq	L014432
	subq.w	#1,d0
	beq	L014442
	move.w	#$4000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	rts

L014432:
	move.w	#$0000,($0018,a0)
	move.l	#L06e4d2,($0014,a0)
	rts

L014442:
	move.w	#$8000,($0018,a0)
	move.l	#L06e4d2,($0014,a0)
	rts

L014452:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L014466
	jmp	(L029cca)

L014466:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L014474,pc,d0.w),d0
	jmp	(L014474,pc,d0.w)

L014474:
	.dc.w	L0144c0-L014474
	.dc.w	L014662-L014474
	.dc.w	L014b08-L014474
	.dc.w	L014c28-L014474
	.dc.w	L014e28-L014474
	.dc.w	L014fba-L014474
	.dc.w	L01516a-L014474
	.dc.w	L0152e4-L014474
	.dc.w	L0154a6-L014474
	.dc.w	L0154c6-L014474
	.dc.w	L0154e6-L014474
	.dc.w	L0155a2-L014474
	.dc.w	L01571e-L014474
	.dc.w	L0159a6-L014474
	.dc.w	L014662-L014474
	.dc.w	L015c14-L014474
	.dc.w	L015e10-L014474
	.dc.w	L015ea6-L014474
	.dc.w	L015f3c-L014474
	.dc.w	L016054-L014474
	.dc.w	L01623c-L014474
	.dc.w	L016408-L014474
	.dc.w	L0146d6-L014474
	.dc.w	L0165ee-L014474
	.dc.w	L016656-L014474
	.dc.w	L0166be-L014474
	.dc.w	L016726-L014474
	.dc.w	L01678e-L014474
	.dc.w	L0167f6-L014474
	.dc.w	L01685e-L014474
	.dc.w	L0168c6-L014474
	.dc.w	L016bf0-L014474
	.dc.w	L016ca4-L014474
	.dc.w	L016dd0-L014474
	.dc.w	L01547c-L014474
	.dc.w	L016efc-L014474
	.dc.w	L0170e0-L014474
	.dc.w	L017244-L014474

L0144c0:
	move.w	($0022,a0),d0
	cmpi.w	#$000d,d0
	beq	L01458e
	cmpi.w	#$000e,d0
	beq	L01456c
	cmpi.w	#$0016,d0
	beq	L0144e6
	subq.w	#1,d0
	beq	L0144e6
	subq.w	#1,d0
	beq	L014546
	bra	L0145ae
L0144e6:
	jsr	(L0144f0)
	bra	L0145ae
L0144f0:
	cmpi.w	#$000e,($001c,a0)
	beq	L014516
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	add.w	#$0010,d1
	subq.w	#8,d2
	jsr	(L025426)
	rts

L014516:
	lea.l	(L073830),a5
	move.w	($0018,a0),d0
	andi.w	#$00ff,d0
	add.w	d0,d0
	move.w	(L01453e,pc,d0.w),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	addq.w	#8,d1
	addq.w	#8,d2
	jsr	(L025426)
	rts

L01453e:
	.dc.w	$0000,$0001,$0001,$0002

L014546:
	jsr	(L01454e)
	bra	L0145ae
L01454e:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	sub.w	#$0010,d1
	subq.w	#8,d2
	jsr	(L025426)
	rts

L01456c:
	lea.l	(L073830),a5
	move.w	#$0000,d0
	move.w	($0004,a0),d1
	addi.w	#$0008.w,d1
	move.w	($0008,a0),d2
	addi.w	#$0008.w,d2
	jsr	(L025426)
	bra	L0145ae
L01458e:
	lea.l	(L073748),a5
	move.w	#$0001,d0
	move.w	($0004,a0),d1
	addi.w	#$0028,d1
	move.w	($0008,a0),d2
	addi.w	#$0018,d2
	jsr	(L025426)
L0145ae:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L0145bc
	neg.w	d0
L0145bc:
	cmpi.w	#$0008,d0
	bcc	L014660
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	bpl	L0145d2
	neg.w	d0
L0145d2:
	cmpi.w	#$0008,d0
	bcc	L014660
	move.w	($0020,a0),d0
	beq	L0145ec
	subq.w	#1,d0
	beq	L0145ee
	subq.w	#1,d0
	beq	L0145f8
	subq.w	#1,d0
	beq	L014660
L0145ec:
	bra	L014604
L0145ee:
	tst.w	(L047408)
	bpl	L014660
	bra	L014604
L0145f8:
	tst.w	(L047408)
	bmi	L014660
	bra.w	L014604
L014604:
	tst.b	(L04740c)
	bne	L014660
	move.b	(L04740d),d0
	cmpi.b	#$00,d0
	beq	L014626
	cmpi.b	#$02,d0
	beq	L014626
	cmpi.b	#$05,d0
	beq	L014626
	bra	L014660
L014626:
	move.w	($0022,a0),d0
	move.w	d0,($001c,a0)
	move.w	#$0000,($001e,a0)
	move.w	#$000c,d2
	move.w	#$001d,d3
	move.w	#$0041,d4
	bsr	L0175c2
	jsr	(L018c0e)
	bsr	L0174aa
	clr.w	(L04731e)
	move.w	#$0000,(L0472b0)
	bra	L014466
L014660:
	rts

L014662:
	move.w	($001e,a0),d0
	bne	L01469c
	move.w	#$0009,(L04740c)
	move.w	#$0003,(L047410)
	move.w	#$0140,(L047412)
	clr.w	(L04735a)
	move.w	#$0200,($00eb0808)
	addq.w	#1,(L047350)
	move.w	#$0004,(L04731e)
L01469c:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0080,d0
	bcs	L0149b0
	cmpi.w	#$0090,d0
	bcs	L014a50
	cmpi.w	#$00c0,d0
	bcs	L014ae6
	cmpi.w	#$00d0,d0
	bcs	L014a98
	cmpi.w	#$0151,d0
	bcs	L0149b0
	bsr	L0175fe
	bsr	L014752
	bra	L0144f0
L0146d6:
	move.w	($001e,a0),d0
	bne	L01470a
	move.w	#$0009,(L04740c)
	move.w	#$0003,(L047410)
	move.w	#$0140,(L047412)
	clr.w	(L04735a)
	addq.w	#1,(L047350)
	move.l	a0,-(a7)
	jsr	(L020f70)
	movea.l	(a7)+,a0
L01470a:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0080,d0
	bcs	L0149c6
	cmpi.w	#$0090,d0
	bcs	L014a50
	cmpi.w	#$00c0,d0
	bcs	L014ae6
	cmpi.w	#$00d0,d0
	bcs	L014a98
	cmpi.w	#$0151,d0
	bcs	L0149c6
	bsr	L0175fe
	bsr	L014752
	move.w	#$0200,(L0470f2)
	move.w	#$0200,(L0470fa)
	bra	L0144f0
L014752:
	move.w	#$0000,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0180,($001e,a0)
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	asl.w	#4,d0
	movem.l	a0,-(a7)
	clr.w	(L0472fa)
	clr.w	(L047124)
	lea.l	(L020190),a0
	move.w	($02,a0,d0.w),(L047f8e)
	move.w	($04,a0,d0.w),(L047f8a)
	move.b	($0a,a0,d0.w),(L0472fb)
	move.b	($0b,a0,d0.w),(L047125)
	move.w	($0c,a0,d0.w),(L04735a)
	move.w	($0e,a0,d0.w),(L04735c)
	movea.l	($06,a0,d0.w),a0
	move.w	(L04735c),d0
	lsr.w	#7,d0
	swap.w	d0
	andi.l	#$01000000,d0
	tst.w	(L04735a)
	bmi	L0147f4
	move.l	d0,(L0470f2)
	move.l	d0,(L0470fa)
	move.l	d0,(L047102)
	move.l	d0,(L04710a)
	bra	L01480c
L0147f4:
	move.l	d0,(L0470ee)
	move.l	d0,(L0470f6)
	move.l	d0,(L0470fe)
	move.l	d0,(L047106)
L01480c:
	move.w	(L047f8e),d0
	bpl	L014824
	andi.w	#$7fff,d0
	move.w	d0,(L047f8e)
	move.w	(L047f8a),d0
L014824:
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f82)
	btst.b	#$04,(L04735d)
	beq	L014840
	lsr.l	#1,d0
L014840:
	move.l	d0,(L047f7e)
	move.l	d0,(L047f86)
	jsr	(L023980)
	movem.l	(a7)+,a0
	jsr	(L0285c4)
	movem.l	a0,-(a7)
	jsr	(L0419d6)
	movem.l	(a7)+,a0
	cmpi.w	#$000a,(L04735a)
	beq	L01491e
	btst.b	#$06,(L04735d)
	beq	L0148ca
	bclr.b	#$02,($00eb0809)
	bset.b	#$01,($00eb0809)
	bset.b	#$00,($00eb0809)
	tst.w	(L04735a)
	bmi	L0148b6
	move.w	(L047f7a),($00eb0800)
	move.w	(L047f7a),(L04710e)
	bra	L0148ca
L0148b6:
	move.w	(L047f7a),($00eb0802)
	move.w	(L047f7a),(L047112)
L0148ca:
	btst.b	#$09,(L04735c)
	beq	L01491e
	bclr.b	#$05,($00eb0809)
	bset.b	#$04,($00eb0809)
	bset.b	#$03,($00eb0809)
	tst.w	(L04735a)
	bmi	L01490a
	move.w	(L047f7a),($00eb0804)
	move.w	(L047f7a),(L047116)
	bra	L01491e
L01490a:
	move.w	(L047f7a),($00eb0806)
	move.w	(L047f7a),(L04711a)
L01491e:
	move.w	#$8000,(L0472b0)
L014926:
	rts

L014928:
	btst.b	#$00,(L04735d)
	beq	L014926
	move.l	(L047f7a),d1
	move.l	d1,(L047f82)
	add.w	d0,(L047f7a)
	move.l	(L047f7a),d0
	cmp.l	d0,d1
	bpl	L01495c
	move.l	#$00000160,d7
	jsr	(L02817c)
	rts

L01495c:
	moveq.l	#$80,d7
	jsr	(L02817c)
L014964:
	rts

L014966:
	btst.b	#$03,(L04735d)
	beq	L014964
	move.l	(L047f7e),d1
	move.l	d1,(L047f86)
	move.l	(L047f7a),d0
	btst.b	#$04,(L04735d)
	beq	L01498e
	lsr.l	#1,d0
L01498e:
	move.l	d0,(L047f7e)
	cmp.l	d0,d1
	bpl	L0149a6
	move.l	#$00000160,d7
	jsr	(L0281a0)
	rts

L0149a6:
	moveq.l	#$80,d7
	jsr	(L0281a0)
	rts

L0149b0:
	move.w	#$0001,d0
	bsr	L014928
	bsr	L014966
	subi.w	#$0001.w,(L0473f4)
	bra	L0144f0
L0149c6:
	move.w	#$0001,d0
	bsr	L014928
	move.l	(L047f7a),d0
	move.l	(L047f82),d1
	cmp.l	d0,d1
	bpl	L0149e6
	move.l	#$00000160,d7
	bra	L0149e8
L0149e6:
	moveq.l	#$80,d7
L0149e8:
	lsr.l	#1,d0
	lsr.l	#1,d1
	movem.l	d0-d1/d7,-(a7)
	move.w	#$000a,(L04735a)
	jsr	(L029030)
	move.w	#$0000,(L04735a)
	movem.l	(a7)+,d0-d1/d7
	lsr.l	#1,d0
	lsr.l	#1,d1
	clr.w	d0
	swap.w	d0
	move.w	d0,(L047116)
	lea.l	(L06abdc),a1
	lea.l	($00ebd000),a2
	move.w	(L04735c),d6
	lsr.w	#6,d6
	lsr.w	#3,d6
	move.w	#$000a,(L04735a)
	jsr	(L029074)
	move.w	#$0000,(L04735a)
	subi.w	#$0001.w,(L0473f4)
	bra	L0144f0
L014a50:
	sub.w	#$0080,d0
	bne	L014a6c
	move.l	d0,-(a7)
	cmpi.w	#$000e,($001c,a0)
	beq	L014a66
	moveq.l	#$44,d0
	trap	#0
	bra	L014a6a
L014a66:
	moveq.l	#$03,d0
	trap	#0
L014a6a:
	move.l	(a7)+,d0
L014a6c:
	lsr.w	#1,d0
	bcs	L0144f0
	lsr.w	#1,d0
	bcs	L0144f0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	addi.w	#$0060,d0
	move.w	#$0001,(L047300)
	move.w	d0,(L047302)
	move.b	d1,($0019,a0)
	bra	L0144f0
L014a98:
	sub.w	#$00c0,d0
	bne	L014ab4
	move.l	d0,-(a7)
	cmpi.w	#$000e,($001c,a0)
	beq	L014aae
	moveq.l	#$44,d0
	trap	#0
	bra	L014ab2
L014aae:
	moveq.l	#$03,d0
	trap	#0
L014ab2:
	move.l	(a7)+,d0
L014ab4:
	neg.w	d0
	add.w	#$000f,d0
	lsr.w	#1,d0
	bcs	L0144f0
	lsr.w	#1,d0
	bcs	L0144f0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	addi.w	#$0060,d0
	move.w	#$0001,(L047300)
	move.w	d0,(L047302)
	move.b	d1,($0019,a0)
	bra	L0144f0
L014ae6:
	cmpi.w	#$0090,d0
	bne	L014b04
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
L014b04:
	bra	L0144f0
L014b08:
	move.w	($001e,a0),d0
	bne	L014b42
	move.w	#$0009,(L04740c)
	move.w	#$0003,(L047410)
	move.w	#$0140,(L047412)
	clr.w	(L04735a)
	move.w	#$0200,($00eb0808)
	addq.w	#1,(L047350)
	move.w	#$0004,(L04731e)
L014b42:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0080,d0
	bcs	L014b74
	cmpi.w	#$0090,d0
	bcs	L014b8c
	cmpi.w	#$00c0,d0
	bcs	L014c06
	cmpi.w	#$00d0,d0
	bcs	L014bc6
	cmpi.w	#$0151,d0
	bcs	L014b74
	bsr	L0175fe
	bsr	L014752
	bra	L01454e
L014b74:
	move.w	#$ffff,d0
	bsr	L014928
	bsr	L014966
	addi.w	#$0001.w,(L0473f4)
	bra	L01454e
L014b8c:
	sub.w	#$0080,d0
	bne	L014b9a
	move.l	d0,-(a7)
	moveq.l	#$44,d0
	trap	#0
	move.l	(a7)+,d0
L014b9a:
	lsr.w	#1,d0
	bcs	L01454e
	lsr.w	#1,d0
	bcs	L01454e
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	addi.w	#$0060,d0
	move.w	#$0001,(L047300)
	move.w	d0,(L047302)
	move.b	d1,($0019,a0)
	bra	L01454e
L014bc6:
	sub.w	#$00c0,d0
	bne	L014bd4
	move.l	d0,-(a7)
	moveq.l	#$44,d0
	trap	#0
	move.l	(a7)+,d0
L014bd4:
	neg.w	d0
	add.w	#$000f,d0
	lsr.w	#1,d0
	bcs	L01454e
	lsr.w	#1,d0
	bcs	L01454e
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	addi.w	#$0060,d0
	move.w	#$0001,(L047300)
	move.w	d0,(L047302)
	move.b	d1,($0019,a0)
	bra	L01454e
L014c06:
	cmpi.w	#$0090,d0
	bne	L014c24
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
L014c24:
	bra	L01454e
L014c28:
	move.w	($001e,a0),d0
	bne	L014c46
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
L014c46:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	move.w	#$0500,(L04735e)
	move.w	#$0500,(L047f8e)
	move.w	#$0d00,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L017376
	move.w	#$0002,(L0472fa)
	move.w	#$0002,(L047124)
	move.w	#$0002,(L04735a)
	ori.w	#$0240,(L04735c)
	move.w	#$0001,(L047356)
	move.w	#$0000,($00e82600)
	jsr	(L020c7a)
	move.w	#$0004,(L04731e)
	jsr	(L0283ba)
	jsr	(L028406)
	move.w	#$021b,($00eb0808)
	move.w	#$0000,(L047112)
	move.w	#$0100,(L04711a)
	move.w	#$0500,(L04735e)
	jsr	(L028d40)
	jsr	(L028d76)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$000f,d7
L014d22:
	move.l	(a5)+,(a6)+
	dbra	d7,L014d22
	jsr	(L018c0e)
	move.b	(L0700f8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0700fa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L014d52:
	move.l	(a5)+,(a6)+
	dbra	d7,L014d52
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L014d80:
	move.l	(a5)+,(a6)+
	dbra	d7,L014d80
	jsr	(L018c0e)
	move.b	(L06ff14),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0000,d7
	add.w	d7,d7
	lea.l	(L06ff16),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82200),a6
	move.w	#$0005,d7
L014db4:
	move.w	(a5)+,(a6)+
	dbra	d7,L014db4
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L014de8:
	move.w	(a5)+,(a6)+
	dbra	d7,L014de8
	movem.l	(a7)+,a0
	move.w	#$0000,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0000,(L047412)
	move.l	#$00400000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	move.w	#$8000,(L0472b0)
	rts

L014e28:
	move.w	($001e,a0),d0
	bne	L014e46
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L014e46:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	move.w	#$1700,(L047f8e)
	move.w	#$1a00,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L017376
	move.w	#$0002,(L0472fa)
	move.w	#$0003,(L047124)
	move.w	#$0003,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	jsr	(L028406)
	move.w	#$0000,($00e82600)
	move.w	#$021b,($00eb0808)
	move.w	#$0000,(L047112)
	move.w	#$0100,(L04711a)
	jsr	(L028d40)
	jsr	(L028d76)
	jsr	(L018c0e)
	move.b	(L07031c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L07031e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L014efa:
	move.l	(a5)+,(a6)+
	dbra	d7,L014efa
	jsr	(L018c0e)
	move.b	(L0702fa),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0702fc),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$000f,d7
L014f2a:
	move.l	(a5)+,(a6)+
	dbra	d7,L014f2a
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L014f58:
	move.l	(a5)+,(a6)+
	dbra	d7,L014f58
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L014f8c:
	move.w	(a5)+,(a6)+
	dbra	d7,L014f8c
	movem.l	(a7)+,a0
	jsr	(L0239c2)
	move.w	#$8021,(L047412)
	move.l	#$00570000,(L0473f4)
	move.l	#$00200000,(L0473f8)
	rts

L014fba:
	move.w	($001e,a0),d0
	bne	L014fd8
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L014fd8:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	jsr	(L03b180)
	move.w	#$0e00,(L047f8e)
	move.w	#$1100,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L017376
	move.w	#$0002,(L0472fa)
	move.w	#$0002,(L047124)
	move.w	#$0002,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	jsr	(L028406)
	move.w	#$0000,($00e82600)
	move.w	#$0200,($00eb0808)
	jsr	(L018c0e)
	move.b	(L0700f8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0700fa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L015076:
	move.l	(a5)+,(a6)+
	dbra	d7,L015076
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L0150a4:
	move.l	(a5)+,(a6)+
	dbra	d7,L0150a4
	jsr	(L018c0e)
	move.b	(L06ff14),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0000,d7
	add.w	d7,d7
	lea.l	(L06ff16),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82200),a6
	move.w	#$0006,d7
L0150d8:
	move.w	(a5)+,(a6)+
	dbra	d7,L0150d8
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L01510c:
	move.w	(a5)+,(a6)+
	dbra	d7,L01510c
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000d,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823a0),a6
	move.w	#$0007,d7
L01513c:
	move.l	(a5)+,(a6)+
	dbra	d7,L01513c
	movem.l	(a7)+,a0
	jsr	(L0239c2)
	move.w	#$8021,(L047412)
	move.l	#$006f0000,(L0473f4)
	move.l	#$00e80000,(L0473f8)
	rts

L01516a:
	move.w	($001e,a0),d0
	bne	L015188
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L015188:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	move.w	#$0e00,(L047f8e)
	move.w	#$1100,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L017376
	move.w	#$0002,(L0472fa)
	move.w	#$0002,(L047124)
	move.w	#$0002,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	jsr	(L028406)
	move.w	#$0000,($00e82600)
	move.w	#$0200,($00eb0808)
	jsr	(L018c0e)
	move.b	(L0700f8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0700fa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L015220:
	move.l	(a5)+,(a6)+
	dbra	d7,L015220
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L01524e:
	move.l	(a5)+,(a6)+
	dbra	d7,L01524e
	jsr	(L018c0e)
	move.b	(L06ff14),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0000,d7
	add.w	d7,d7
	lea.l	(L06ff16),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82200),a6
	move.w	#$0006,d7
L015282:
	move.w	(a5)+,(a6)+
	dbra	d7,L015282
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L0152b6:
	move.w	(a5)+,(a6)+
	dbra	d7,L0152b6
	movem.l	(a7)+,a0
	jsr	(L0239c2)
	move.w	#$8021,(L047412)
	move.l	#$00970000,(L0473f4)
	move.l	#$00e80000,(L0473f8)
	rts

L0152e4:
	move.w	($001e,a0),d0
	bne	L015302
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L015302:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	jsr	(L03b180)
	move.w	#$1700,(L047f8e)
	move.w	#$1a00,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L017376
	move.w	#$0002,(L0472fa)
	move.w	#$0003,(L047124)
	move.w	#$0003,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	jsr	(L028406)
	move.w	#$0000,($00e82600)
	move.w	#$021b,($00eb0808)
	move.w	#$0000,(L047112)
	move.w	#$0100,(L04711a)
	jsr	(L028d40)
	jsr	(L028d76)
	jsr	(L018c0e)
	move.b	(L07031c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L07031e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L0153bc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0153bc
	jsr	(L018c0e)
	move.b	(L0702fa),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0702fc),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$000f,d7
L0153ec:
	move.l	(a5)+,(a6)+
	dbra	d7,L0153ec
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L01541a:
	move.l	(a5)+,(a6)+
	dbra	d7,L01541a
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L01544e:
	move.w	(a5)+,(a6)+
	dbra	d7,L01544e
	movem.l	(a7)+,a0
	jsr	(L0239c2)
	move.w	#$8021,(L047412)
	move.l	#$00af0000,(L0473f4)
	move.l	#$00200000,(L0473f8)
	rts

L01547c:
	move.w	($001e,a0),d0
	bne	L015526
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
	moveq.l	#$fe,d0
	trap	#0
	move.w	($001e,a0),d0
	bra	L015504
L0154a6:
	move.w	($001e,a0),d0
	bne	L015526
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
	bra	L015504
L0154c6:
	move.w	($001e,a0),d0
	bne	L015526
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$0030,(L047412)
	bra	L015504
L0154e6:
	move.w	($001e,a0),d0
	bne	L015526
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$0030,(L047412)
L015504:
	clr.w	(L04735a)
	addq.w	#1,(L047350)
	movem.l	d0/a0,-(a7)
	jsr	(L0419d6)
	movem.l	(a7)+,d0/a0
	move.w	#$0005,(L047124)
L015526:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	jsr	(L04293c)
	movem.l	(a7)+,a0
	move.w	#$0000,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0000,(L047412)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L01558a:
	move.l	(a5)+,(a6)+
	dbra	d7,L01558a
	andi.w	#$7fff,(L0472fa)
	move.w	#$8000,(L0472b0)
	rts

L0155a2:
	move.w	($001e,a0),d0
	bne	L0155c0
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L0155c0:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	move.w	#$0300,(L047f8e)
	move.w	#$0300,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L017376
	move.l	#$01000000,(L0470f2)
	move.l	#$01000000,(L0470fa)
	move.l	#$00800000,(L047102)
	move.l	#$00800000,(L04710a)
	jsr	(L023996)
	jsr	(L0283ba)
	jsr	(L028406)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcd80),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L01567c:
	move.l	(a5)+,(a6)+
	dbra	d7,L01567c
	jsr	(L018c0e)
	move.b	(L07660c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07660e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0067,d7
L0156ac:
	move.l	(a5)+,(a6)+
	dbra	d7,L0156ac
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L0156da:
	move.l	(a5)+,(a6)+
	dbra	d7,L0156da
	jsr	(L03b180)
	jsr	(L0239c2)
	movem.l	(a7)+,a0
	move.w	#$0009,(L047124)
	move.w	#$0001,(L047f70)
	move.w	#$8021,(L047412)
	move.l	#$00b00000,(L0473f4)
	move.l	#$00e80000,(L0473f8)
	rts

L01571e:
	move.w	($001e,a0),d0
	bne	L015744
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
	move.w	#$0005,(L047124)
L015744:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	move.w	#$0400,(L047f8e)
	move.w	#$0600,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L017376
	move.l	#$00000000,(L0470f2)
	move.l	#$00000000,(L0470fa)
	move.l	#$00000000,(L047102)
	move.l	#$00000000,(L04710a)
	jsr	(L023996)
	jsr	(L0283ba)
	jsr	(L028406)
	jsr	(L018c0e)
	move.b	(L07660c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07660e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0157dc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0157dc
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcd80),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0518de),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0007,d7
L0158a8:
	move.w	(a5)+,(a6)+
	dbra	d7,L0158a8
	jsr	(L018c0e)
	move.b	(L07680e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000c,d7
	asl.w	#5,d7
	lea.l	(L076810),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82380),a6
	move.w	#$0007,d7
L0158d8:
	move.l	(a5)+,(a6)+
	dbra	d7,L0158d8
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L015906:
	move.l	(a5)+,(a6)+
	dbra	d7,L015906
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L01593a:
	move.w	(a5)+,(a6)+
	dbra	d7,L01593a
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L015968:
	move.l	(a5)+,(a6)+
	dbra	d7,L015968
	jsr	(L0239c2)
	movem.l	(a7)+,a0
	move.w	#$0001,(L047f70)
	move.w	#$0005,(L047124)
	move.w	#$8021,(L047412)
	move.l	#$00a00000,(L0473f4)
	move.l	#$00180000,(L0473f8)
	rts

L0159a6:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0090,d0
	beq	L015ae6
	bcc	L015b18
	cmpi.w	#$0001,d0
	bne	L015a24
	move.w	#$0009,(L04740c)
	move.w	#$0003,(L047410)
	move.w	#$7fff,(L047412)
	move.w	#$0000,(L04740e)
	move.w	#$0005,(L047124)
	lea.l	($00e10000),a3
	lea.l	($00c30181),a5
	lea.l	(L06509c),a6
	jsr	(L02852e)
	lea.l	($00c301c1),a5
	lea.l	(L06505c),a6
	jsr	(L02852e)
	lea.l	(L06509c),a6
	jsr	(L02852e)
	move.w	($001e,a0),d0
L015a24:
	lsr.w	#1,d0
	neg.w	d0
	add.w	#$00c0,d0
	move.w	d0,d2
	move.w	($001e,a0),d1
	lsr.w	#2,d1
	andi.w	#$0001,d1
	addi.w	#$00e0,d1
	move.w	#$0000,d0
	move.w	d1,d5
	move.w	d2,d6
	lea.l	(L073748),a5
	jsr	(L025426)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L015aac
	move.w	#$0029,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	add.w	d0,d5
	subi.w	#$0020,d5
	add.w	d0,d6
	addi.w	#$000c,d6
	move.w	d5,($0004,a0)
	move.w	d6,($0008,a0)
	move.w	#$0000,($000c,a0)
	move.w	#$ffff,($0010,a0)
	move.w	#$0002,($001c,a0)
	move.l	#L073758,($0014,a0)
	jsr	(L01024e)
	andi.w	#$0001,d0
	move.w	d0,($0018,a0)
L015aac:
	movea.l	a1,a0
	move.w	($001e,a0),d1
	lsr.w	#2,d1
	andi.w	#$0001,d1
	eori.w	#$0001,d1
	move.w	d1,(L0470f2)
	move.w	d1,(L0470fa)
	eori.w	#$0001,d1
	addi.w	#$00a8,d1
	move.w	d1,(L0473f8)
	move.w	($001e,a0),d0
	andi.w	#$001f,d0
	bne	L015ae4
	moveq.l	#$42,d0
	trap	#0
L015ae4:
	rts

L015ae6:
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0010,(L047412)
	clr.w	(L04735a)
	addq.w	#1,(L047350)
	movem.l	a0,-(a7)
	jsr	(L0419d6)
	movem.l	(a7)+,a0
L015b18:
	cmpi.w	#$00df,($001e,a0)
	bcc	L015b38
	move.w	#$00e0,d1
	move.w	#$0078,d2
	move.w	#$0000,d0
	lea.l	(L073748),a5
	jsr	(L025426)
L015b38:
	move.w	($001e,a0),d0
	subi.w	#$00a0,d0
	beq	L015bce
	bcs	L015be8
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	jsr	(L04293c)
	movem.l	(a7)+,a0
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$8040,(L047412)
	move.w	#$0040,(L0473f4)
	move.w	#$0008,(L0473f8)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L015bb6:
	move.l	(a5)+,(a6)+
	dbra	d7,L015bb6
	andi.w	#$7fff,(L0472fa)
	move.w	#$8000,(L0472b0)
	rts

L015bce:
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$0040,(L047412)
	rts

L015be8:
	cmpi.w	#$00c0,(L0473f4)
	bcs	L015c12
	move.w	#$0009,(L04740c)
	move.w	#$0003,(L047410)
	move.w	#$7fff,(L047412)
	move.w	#$0000,(L04740e)
L015c12:
	rts

L015c14:
	move.w	($001e,a0),d0
	bne	L015c32
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L015c32:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	move.w	#$0000,(L047f8e)
	move.w	#$0100,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L017376
	move.w	#$0002,(L0472fa)
	move.w	#$000f,(L047124)
	move.w	#$8000,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	move.w	#$0200,($00eb0808)
	lea.l	(L04bda2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04d6f4),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc680),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04e150),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04f13a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00e38000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07865c),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L07865e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0027,d7
L015d5a:
	move.l	(a5)+,(a6)+
	dbra	d7,L015d5a
	jsr	(L018c0e)
	move.b	(L07865c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000e,d7
	asl.w	#5,d7
	lea.l	(L07865e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823c0),a6
	move.w	#$000f,d7
L015d8a:
	move.l	(a5)+,(a6)+
	dbra	d7,L015d8a
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L015db8:
	move.l	(a5)+,(a6)+
	dbra	d7,L015db8
	jsr	(L018c0e)
	move.b	(L0787be),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0787c0),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L015de8:
	move.l	(a5)+,(a6)+
	dbra	d7,L015de8
	movem.l	(a7)+,a0
	move.w	#$8081,(L047412)
	move.l	#$00580000,(L0473f4)
	move.l	#$01100000,(L0473f8)
	rts

L015e10:
	move.w	($001e,a0),d0
	bne	L015e2e
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L015e2e:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0500,(L047f8e)
	move.w	#$0700,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L01651c
	jsr	(L018c0e)
	move.b	(L07d662),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d664),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$003f,d7
L015e82:
	move.l	(a5)+,(a6)+
	dbra	d7,L015e82
	move.w	#$8021,(L047412)
	move.l	#$00300000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L015ea6:
	move.w	($001e,a0),d0
	bne	L015ec4
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L015ec4:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0000,(L047f8e)
	move.w	#$0400,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L01651c
	jsr	(L018c0e)
	move.b	(L07d662),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d664),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$003f,d7
L015f18:
	move.l	(a5)+,(a6)+
	dbra	d7,L015f18
	move.w	#$8021,(L047412)
	move.l	#$00480000,(L0473f4)
	move.l	#$00100000,(L0473f8)
	rts

L015f3c:
	move.w	($001e,a0),d0
	bne	L015f5a
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L015f5a:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1200,(L047f8e)
	move.w	#$1700,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L01651c
	move.w	#$8021,(L047412)
	move.l	#$00c00000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	move.l	a0,-(a7)
	lea.l	(L04b732),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c8b4),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcf00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04cf22),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07d886),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d888),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$003f,d7
L01603e:
	move.l	(a5)+,(a6)+
	dbra	d7,L01603e
	jsr	(L03b180)
	jsr	(L033aca)
	movea.l	(a7)+,a0
	rts

L016054:
	move.w	($001e,a0),d0
	bne	L016072
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L016072:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0800,(L047f8e)
	move.w	#$0e00,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L01651c
	move.w	#$000e,(L047124)
	move.w	#$8021,(L047412)
	move.l	#$00880000,(L0473f4)
	move.l	#$00100000,(L0473f8)
	move.l	a0,-(a7)
	lea.l	(L054268),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L055386),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd480),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05378e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b094),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a6ba),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebeb80),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07d764),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d766),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0047,d7
L0161d0:
	move.l	(a5)+,(a6)+
	dbra	d7,L0161d0
	jsr	(L018c0e)
	move.b	(L07ada0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07ada2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L0161fe:
	move.l	(a5)+,(a6)+
	dbra	d7,L0161fe
	jsr	(L018c0e)
	move.b	(L07ada0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#8,d7
	asl.w	#5,d7
	lea.l	(L07ada2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82300),a6
	move.w	#$0007,d7
L01622c:
	move.l	(a5)+,(a6)+
	dbra	d7,L01622c
	jsr	(L03b180)
	movea.l	(a7)+,a0
	rts

L01623c:
	move.w	($001e,a0),d0
	bne	L01625a
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L01625a:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1800,(L047f8e)
	move.w	#$1d00,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L01651c
	move.l	a0,-(a7)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L055386),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd480),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07d988),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d98a),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$003f,d7
L0162fc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0162fc
	movea.l	(a7)+,a0
	move.b	($00e8a01b),d0
	move.w	d0,-(a7)
	bclr.b	#$00,($00e8a01b)
L016314:
	move.b	($00e8a013),d0
	andi.w	#$000f,d0
	move.b	($00e8a015),d1
	andi.w	#$0001,d1
	move.b	($00e8a013),d2
	andi.w	#$000f,d2
	move.b	($00e8a015),d3
	andi.w	#$0001,d3
	cmp.w	d0,d2
	bne	L016314
	cmp.w	d1,d3
	bne	L016314
	move.w	(a7)+,d7
	btst.l	#$00,d7
	beq	L016354
	bset.b	#$00,($00e8a01b)
L016354:
	add.w	d1,d1
	move.w	d1,d2
	add.w	d1,d1
	add.w	d1,d1
	add.w	d2,d1
	add.w	d1,d0
	ext.l	d0
	divu.w	#$0003,d0
	add.w	d0,d0
	move.w	(L016370,pc,d0.w),d0
	jmp	(L016370,pc,d0.w)

L016370:
	.dc.w	L01637a-L016370
	.dc.w	L016382-L016370
	.dc.w	L01638a-L016370
	.dc.w	L016392-L016370
	.dc.w	L01637a-L016370

L01637a:
	lea.l	(L07db4c),a5
	bra	L016398
L016382:
	lea.l	(L07da8c),a5
	bra	L016398
L01638a:
	lea.l	(L07dacc),a5
	bra	L016398
L016392:
	lea.l	(L07db0c),a5
L016398:
	jsr	(L018c0e)
	lea.l	($00e82080),a6
	bsr	L0163fc
	lea.l	($00e821a0),a6
	bsr	L0163fc
	lea.l	(-$0040,a5),a5
	lea.l	($00e82360),a6
	bsr	L0163fc
	lea.l	($00e82380),a6
	bsr	L0163fc
	lea.l	(L07d622),a5
	lea.l	($00e82000),a6
	bsr	L0163fc
	lea.l	(L07d642),a5
	lea.l	($00e82140),a6
	bsr	L0163fc
	move.w	#$8021,(L047412)
	move.l	#$00d00000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L0163fc:
	move.w	#$0007,d7
L016400:
	move.l	(a5)+,(a6)+
	dbra	d7,L016400
	rts

L016408:
	move.w	($001e,a0),d0
	bne	L016426
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L016426:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0f00,(L047f8e)
	move.w	#$1100,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L01651c
	move.l	a0,-(a7)
	lea.l	(L054268),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L054fce),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcf00),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07d662),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L07d664),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L0164c8:
	move.l	(a5)+,(a6)+
	dbra	d7,L0164c8
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L0164f6:
	move.l	(a5)+,(a6)+
	dbra	d7,L0164f6
	movea.l	(a7)+,a0
	move.w	#$8021,(L047412)
	move.l	#$00b80000,(L0473f4)
	move.l	#$00100000,(L0473f8)
	rts

L01651c:
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	move.w	#$0001,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L01657a:
	move.l	(a5)+,(a6)+
	dbra	d7,L01657a
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L0165ae:
	move.w	(a5)+,(a6)+
	dbra	d7,L0165ae
	jsr	(L018c0e)
	move.b	(L07d41e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07d420),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0165de:
	move.l	(a5)+,(a6)+
	dbra	d7,L0165de
	jsr	(L0239c2)
	movea.l	(a7)+,a0
	rts

L0165ee:
	move.w	($001e,a0),d0
	bne	L01660c
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L01660c:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1800,(L047f8e)
	move.w	#$1b00,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L016b20
	move.w	#$8021,(L047412)
	move.l	#$00500000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L016656:
	move.w	($001e,a0),d0
	bne	L016674
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L016674:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1c00,(L047f8e)
	move.w	#$1f00,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L016b20
	move.w	#$8021,(L047412)
	move.l	#$00700000,(L0473f4)
	move.l	#$00180000,(L0473f8)
	rts

L0166be:
	move.w	($001e,a0),d0
	bne	L0166dc
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L0166dc:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1400,(L047f8e)
	move.w	#$1700,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L016b20
	move.w	#$8021,(L047412)
	move.l	#$00600000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L016726:
	move.w	($001e,a0),d0
	bne	L016744
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L016744:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1800,(L047f8e)
	move.w	#$1b00,(L047f8a)
	move.w	(L047f8e),d0
	bsr	L016b20
	move.w	#$8021,(L047412)
	move.l	#$00800000,(L0473f4)
	move.l	#$00180000,(L0473f8)
	rts

L01678e:
	move.w	($001e,a0),d0
	bne	L0167ac
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L0167ac:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1400,(L047f8e)
	move.w	#$1700,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L016b20
	move.w	#$8021,(L047412)
	move.l	#$00b00000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L0167f6:
	move.w	($001e,a0),d0
	bne	L016814
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L016814:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1800,(L047f8e)
	move.w	#$1b00,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L016b20
	move.w	#$8021,(L047412)
	move.l	#$00880000,(L0473f4)
	move.l	#$00180000,(L0473f8)
	rts

L01685e:
	move.w	($001e,a0),d0
	bne	L01687c
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L01687c:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1000,(L047f8e)
	move.w	#$1300,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L01692c
	move.w	#$8021,(L047412)
	move.l	#$00d00000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L0168c6:
	move.w	($001e,a0),d0
	bne	L0168e4
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L0168e4:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$1000,(L047f8e)
	move.w	#$1300,(L047f8a)
	move.w	(L047f8a),d0
	bsr	L01692c
	move.w	#$8021,(L047412)
	move.l	#$00b00000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L01692c:
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$1000,(L04735e)
	move.w	#$0041,(L04735c)
	move.w	#$0002,(L0472fa)
	move.w	#$0014,(L047124)
	move.w	#$000c,(L04735a)
	move.w	#$0000,(L047112)
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04ab9a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a5b8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebf000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L028d40)
	jsr	(L0239c2)
	move.w	#$0203,($00eb0808)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L016a28:
	move.l	(a5)+,(a6)+
	dbra	d7,L016a28
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L016a5c:
	move.w	(a5)+,(a6)+
	dbra	d7,L016a5c
	jsr	(L018c0e)
	move.b	(L082804),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L082806),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$001f,d7
L016a8a:
	move.l	(a5)+,(a6)+
	dbra	d7,L016a8a
	jsr	(L018c0e)
	move.b	(L082196),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L082198),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L016aba:
	move.l	(a5)+,(a6)+
	dbra	d7,L016aba
	jsr	(L018c0e)
	move.b	(L08237a),d7
	ext.w	d7
	neg.w	d7
	addq.w	#2,d7
	asl.w	#5,d7
	lea.l	(L08237c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82040),a6
	move.w	#$0037,d7
L016ae8:
	move.l	(a5)+,(a6)+
	dbra	d7,L016ae8
	jsr	(L018c0e)
	move.b	(L08247c),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L08247e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82020),a6
	move.w	#$0007,d7
L016b16:
	move.l	(a5)+,(a6)+
	dbra	d7,L016b16
	movea.l	(a7)+,a0
	rts

L016b20:
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	move.w	#$0001,(L04735a)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L016b7e:
	move.l	(a5)+,(a6)+
	dbra	d7,L016b7e
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L016bb2:
	move.w	(a5)+,(a6)+
	dbra	d7,L016bb2
	jsr	(L018c0e)
	move.b	(L08237a),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L08237c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82020),a6
	move.w	#$003f,d7
L016be0:
	move.l	(a5)+,(a6)+
	dbra	d7,L016be0
	jsr	(L0239c2)
	movea.l	(a7)+,a0
	rts

L016bf0:
	move.w	($001e,a0),d0
	bne	L016c28
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
	clr.w	(L04735a)
	addq.w	#1,(L047350)
	movem.l	d0/a0,-(a7)
	jsr	(L0419d6)
	movem.l	(a7)+,d0/a0
L016c28:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	movem.l	a0,-(a7)
	bsr	L0175fe
	jsr	(L04293c)
	movem.l	(a7)+,a0
	move.w	#$0000,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0000,(L047412)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L016c8c:
	move.l	(a5)+,(a6)+
	dbra	d7,L016c8c
	andi.w	#$7fff,(L0472fa)
	move.w	#$8000,(L0472b0)
	rts

L016ca4:
	move.w	($001e,a0),d0
	bne	L016cc2
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
L016cc2:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0400,(L047f8e)
	move.w	#$0600,(L047f8a)
	move.w	(L047f8a),d0
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L016d40:
	move.l	(a5)+,(a6)+
	dbra	d7,L016d40
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L016d74:
	move.w	(a5)+,(a6)+
	dbra	d7,L016d74
	jsr	(L018c0e)
	move.b	(L082600),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L082602),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$005f,d7
L016da4:
	move.l	(a5)+,(a6)+
	dbra	d7,L016da4
	jsr	(L0239c2)
	movea.l	(a7)+,a0
	move.w	#$8021,(L047412)
	move.l	#$00a80000,(L0473f4)
	move.l	#$00d80000,(L0473f8)
	rts

L016dd0:
	move.w	($001e,a0),d0
	bne	L016dee
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
L016dee:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0700,(L047f8e)
	move.w	#$0900,(L047f8a)
	move.w	(L047f8a),d0
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L016e6c:
	move.l	(a5)+,(a6)+
	dbra	d7,L016e6c
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L016ea0:
	move.w	(a5)+,(a6)+
	dbra	d7,L016ea0
	jsr	(L018c0e)
	move.b	(L082600),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L082602),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$005f,d7
L016ed0:
	move.l	(a5)+,(a6)+
	dbra	d7,L016ed0
	jsr	(L0239c2)
	movea.l	(a7)+,a0
	move.w	#$8021,(L047412)
	move.l	#$00880000,(L0473f4)
	move.l	#$00180000,(L0473f8)
	rts

L016efc:
	move.w	($001e,a0),d0
	bne	L016f28
	move.w	#$0009,(L04740c)
	move.w	#$0000,(L047410)
	move.w	#$0030,(L047412)
	move.w	#$0001,(L047342)
	clr.w	(L04735a)
L016f28:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0300,(L047f8e)
	move.w	#$0300,(L047f8a)
	move.w	(L047f8a),d0
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	jsr	(L023996)
	lea.l	($00e78000),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	($00e79872),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	($00e7b67a),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	($00e7d030),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	($00e7e9bc),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	jsr	(L0283ba)
	lea.l	($00e70000),a6
	lea.l	($00c80001),a2
	moveq.l	#$00,d7
	jsr	(L028448)
	move.w	#$0000,($00e82600)
	lea.l	(L050df0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb9800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L01703a:
	move.l	(a5)+,(a6)+
	dbra	d7,L01703a
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L01706e:
	move.w	(a5)+,(a6)+
	dbra	d7,L01706e
	jsr	(L018c0e)
	move.b	(L08296a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L08296c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0067,d7
L01709e:
	move.l	(a5)+,(a6)+
	dbra	d7,L01709e
	movea.l	(a7)+,a0
	move.w	#$0000,(L04740c)
	move.w	#$00e8,(L0473f4)
	move.w	#$0058,(L0473f8)
	move.w	#$0000,(L047410)
	move.w	#$0000,(L047412)
	andi.w	#$7fff,(L0472fa)
	move.w	#$8000,(L0472b0)
	rts

L0170e0:
	move.w	($001e,a0),d0
	bne	L017106
	move.w	#$0009,(L04740c)
	move.w	#$0001,(L047410)
	move.w	#$003d,(L047412)
	move.w	#$0001,(L04735a)
L017106:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0000,(L047f8e)
	move.w	#$0200,(L047f8a)
	move.w	(L047f8a),d0
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L017184:
	move.l	(a5)+,(a6)+
	dbra	d7,L017184
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L0171b8:
	move.w	(a5)+,(a6)+
	dbra	d7,L0171b8
	jsr	(L018c0e)
	move.b	(L082b0c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000c,d7
	asl.w	#5,d7
	lea.l	(L082b0e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82380),a6
	move.w	#$0007,d7
L0171e8:
	move.l	(a5)+,(a6)+
	dbra	d7,L0171e8
	jsr	(L018c0e)
	move.b	(L08296a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L08296c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0067,d7
L017218:
	move.l	(a5)+,(a6)+
	dbra	d7,L017218
	jsr	(L0239c2)
	movea.l	(a7)+,a0
	move.w	#$8021,(L047412)
	move.l	#$00880000,(L0473f4)
	move.l	#$00f00000,(L0473f8)
	rts

L017244:
	move.w	($001e,a0),d0
	bne	L017268
	move.w	#$0009,(L04740c)
	move.w	#$0002,(L047410)
	move.w	#$003d,(L047412)
	clr.w	(L04735a)
L017268:
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003f,d0
	beq	L0173ae
	bcs	L0173ce
	move.w	#$0300,(L047f8e)
	move.w	#$0300,(L047f8a)
	move.w	(L047f8a),d0
	move.l	a0,-(a7)
	bsr	L017376
	bsr	L0175fe
	move.w	#$0002,(L0472fa)
	move.w	#$0005,(L047124)
	jsr	(L023996)
	jsr	(L0283ba)
	move.w	#$0000,($00e82600)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L0172e6:
	move.l	(a5)+,(a6)+
	dbra	d7,L0172e6
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L01731a:
	move.w	(a5)+,(a6)+
	dbra	d7,L01731a
	jsr	(L018c0e)
	move.b	(L08296a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L08296c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0067,d7
L01734a:
	move.l	(a5)+,(a6)+
	dbra	d7,L01734a
	jsr	(L0239c2)
	movea.l	(a7)+,a0
	move.w	#$8021,(L047412)
	move.l	#$00800000,(L0473f4)
	move.l	#$00180000,(L0473f8)
	rts

L017376:
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f7e)
	move.l	d0,(L047f82)
	move.l	d0,(L047f86)
	moveq.l	#$00,d0
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
	move.w	d0,(L047102)
	move.w	d0,(L04710a)
	rts

L0173ae:
	movem.l	d0,-(a7)
	move.w	#$0000,d2
	bsr	L0175ba
	move.w	#$0007,(L047124)
	move.w	#$0001,(L047fa4)
	movem.l	(a7)+,d0
L0173ce:
	neg.w	d0
	addi.w	#$003f,d0
	lsr.w	#1,d0
	bcs	L01744e
	lea.l	($00e82000),a2
	lea.l	(L048ebc),a1
	move.w	#$00ff,d7
	bsr	L017580
	lea.l	($00e82220),a2
	lea.l	(L0490dc),a1
	move.w	#$000f,d7
	bsr	L017580
	lea.l	($00e82202),a2
	lea.l	(L0490be),a1
	move.w	#$0005,d7
	bsr	L017580
	moveq.l	#$00,d4
	move.w	(L047350),d4
	divu.w	#$0018,d4
	swap.w	d4
	tst.w	d4
	bne	L017450
	lea.l	($00e822a0),a2
	lea.l	(L04915c),a1
	move.w	#$000f,d7
	bsr	L017580
	lea.l	($00e82300),a2
	lea.l	(L0491bc),a1
	move.w	#$000f,d7
	bsr	L017580
L01744e:
	rts

L017450:
	cmpi.w	#$0010,d4
	beq	L017480
	lea.l	($00e822a0),a2
	lea.l	(L04915c),a1
	move.w	#$0007,d7
	bsr	L017580
	lea.l	($00e82360),a2
	lea.l	(L04921c),a1
	move.w	#$002f,d7
	bsr	L017580
	rts

L017480:
	lea.l	($00e82300),a2
	lea.l	(L0491bc),a1
	move.w	#$002f,d7
	bsr	L017580
	lea.l	($00e82360),a2
	lea.l	(L04921c),a1
	move.w	#$002f,d7
	bsr	L017580
	rts

L0174aa:
	lea.l	($00e82000),a1
	lea.l	(L048ebc),a2
	move.w	#$00ff,d1
	bsr	L017578
	lea.l	($00e82220),a1
	lea.l	(L0490dc),a2
	move.w	#$000f,d1
	bsr	L017578
	lea.l	($00e82202),a1
	lea.l	(L0490be),a2
	move.w	#$0005,d1
	bsr	L017578
	moveq.l	#$00,d4
	move.w	(L047350),d4
	divu.w	#$0018,d4
	swap.w	d4
	tst.w	d4
	bne	L017526
	tst.w	(L047356)
	bne	L017526
	lea.l	($00e822a0),a1
	lea.l	(L04915c),a2
	move.w	#$000f,d1
	bsr	L017578
	lea.l	($00e82300),a1
	lea.l	(L0491bc),a2
	move.w	#$000f,d1
	bsr	L017578
	rts

L017526:
	cmpi.w	#$000f,d4
	beq	L017552
	lea.l	($00e822a0),a1
	lea.l	(L04915c),a2
	move.w	#$0007,d1
	bsr	L017578
	lea.l	($00e82360),a1
	lea.l	(L04921c),a2
	move.w	#$002f,d1
	bsr	L017578
	rts

L017552:
	lea.l	($00e82300),a1
	lea.l	(L0491bc),a2
	move.w	#$002f,d1
	bsr	L017578
	lea.l	($00e82360),a1
	lea.l	(L04921c),a2
	move.w	#$002f,d1
	bsr	L017578
	rts

L017578:
	move.w	(a1)+,(a2)+
	dbra	d1,L017578
	rts

L017580:
	move.w	(a1)+,d1
	bsr	L018b34
	move.w	d2,(a2)+
	dbra	d7,L017580
	rts

L01758e:
	move.w	(a1)+,d1
	bne	L017596
	addq.w	#2,a2
	bra	L01759c
L017596:
	bsr	L018b70
	move.w	d2,(a2)+
L01759c:
	dbra	d7,L01758e
	rts

L0175a2:
	move.w	(a1)+,d1
	bne	L0175aa
	addq.w	#2,a2
	bra	L0175b4
L0175aa:
	bsr	L018b34
	eori.w	#$ffff,d2
	move.w	d2,(a2)+
L0175b4:
	dbra	d7,L0175a2
	rts

L0175ba:
	move.w	#$0000,d3
	move.w	#$0000,d4
L0175c2:
	lea.l	(L047360),a1
	move.w	#$003f,d1
	moveq.l	#$00,d0
L0175ce:
	cmpa.l	#L0473f0,a1
	beq	L0175f4
	cmpa.l	a0,a1
	beq	L0175f4
	cmp.w	($0000.w,a1),d2
	beq	L0175f4
	cmp.w	($0000.w,a1),d3
	beq	L0175f4
	cmp.w	($0000.w,a1),d4
	beq	L0175f4
	move.w	d0,($0000.w,a1)
	move.w	d0,($0002,a1)
L0175f4:
	lea.l	($0030,a1),a1
	dbra	d1,L0175ce
	rts

L0175fe:
	lea.l	(L047360),a1
	move.w	#$003f,d1
	moveq.l	#$00,d0
L01760a:
	cmpa.l	#L0473f0,a1
	beq	L01761a
	move.w	d0,($0000.w,a1)
	move.w	d0,($0002,a1)
L01761a:
	lea.l	($0030,a1),a1
	dbra	d1,L01760a
	rts

L017624:
	jsr	(L0298e2)
	bcs	L01776e
	move.w	#$0028,($0000.w,a0)
	ori.w	#$0100,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$007f,d0
	move.w	d0,($0020,a0)
	move.b	($0005,a6),d0
	andi.w	#$0080,d0
	lsr.w	#7,d1
	move.w	d0,($0026,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	bne	L01767c
	clr.b	($0002,a0)
L01767c:
	move.b	($0007,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0024,a0)
	move.w	#$4000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	move.l	a6,($002c,a0)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017f3c
	lea.l	($00e50000),a6
	move.w	#$0800,d1
	or.w	d1,(a6,d0.l)
	or.w	d1,($02,a6,d0.l)
	or.w	d1,($08,a6,d0.l)
	or.w	d1,($0a,a6,d0.l)
	tst.w	($0026,a0)
	beq	L01776e
	tst.w	(L04735a)
	bpl	L01774e
	btst.l	#$04,d0
	bne	L017716
	or.w	d1,($10,a6,d0.l)
	or.w	d1,($12,a6,d0.l)
	or.w	d1,($18,a6,d0.l)
	or.w	d1,($1a,a6,d0.l)
	subi.l	#$00000100,d0
	btst.b	#$02,(L04735d)
	beq	L017704
	subi.l	#$00000100,d0
L017704:
	or.w	d1,($10,a6,d0.l)
	or.w	d1,($12,a6,d0.l)
	or.w	d1,($18,a6,d0.l)
	or.w	d1,($1a,a6,d0.l)
	bra	L01776e
L017716:
	or.w	d1,(-$10,a6,d0.l)
	or.w	d1,(-$0e,a6,d0.l)
	or.w	d1,(-$08,a6,d0.l)
	or.w	d1,(-$06,a6,d0.l)
	addi.l	#$00000100,d0
	btst.b	#$02,(L04735d)
	beq	L01773c
	addi.l	#$00000100,d0
L01773c:
	or.w	d1,(-$10,a6,d0.l)
	or.w	d1,(-$0e,a6,d0.l)
	or.w	d1,(-$08,a6,d0.l)
	or.w	d1,(-$06,a6,d0.l)
	bra	L01776e
L01774e:
	or.w	d1,(-$10,a6,d0.l)
	or.w	d1,(-$0e,a6,d0.l)
	or.w	d1,(-$08,a6,d0.l)
	or.w	d1,(-$06,a6,d0.l)
	or.w	d1,($10,a6,d0.l)
	or.w	d1,($12,a6,d0.l)
	or.w	d1,($18,a6,d0.l)
	or.w	d1,($1a,a6,d0.l)
L01776e:
	rts

L017770:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L017784
	jmp	(L029cca)

L017784:
	move.w	($001c,a0),d0
	subq.w	#1,d0
	beq	L0179ea
	tst.w	($0022,a0)
	beq	L017be8
	btst.b	#$06,($001a,a0)
	beq	L0177a6
	clr.b	($001a,a0)
	bra	L017be8
L0177a6:
	tst.b	($001a,a0)
	beq	L017be8
	movea.l	($002c,a0),a1
	move.b	#$00,($0006,a1)
	clr.b	($0002,a0)
	moveq.l	#$4b,d0
	trap	#0
	addq.w	#1,($001c,a0)
	clr.b	($001a,a0)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017f3c
	lea.l	($00e50000),a6
	move.w	#$c7ff,d1
	and.w	d1,(a6,d0.l)
	and.w	d1,($02,a6,d0.l)
	and.w	d1,($08,a6,d0.l)
	and.w	d1,($0a,a6,d0.l)
	tst.w	($0026,a0)
	beq	L017894
	tst.w	(L04735a)
	bpl	L017874
	btst.l	#$04,d0
	bne	L01783c
	and.w	d1,($10,a6,d0.l)
	and.w	d1,($12,a6,d0.l)
	and.w	d1,($18,a6,d0.l)
	and.w	d1,($1a,a6,d0.l)
	subi.l	#$00000100,d0
	btst.b	#$02,(L04735d)
	beq	L01782a
	subi.l	#$00000100,d0
L01782a:
	and.w	d1,($10,a6,d0.l)
	and.w	d1,($12,a6,d0.l)
	and.w	d1,($18,a6,d0.l)
	and.w	d1,($1a,a6,d0.l)
	bra	L017894
L01783c:
	and.w	d1,(-$10,a6,d0.l)
	and.w	d1,(-$0e,a6,d0.l)
	and.w	d1,(-$08,a6,d0.l)
	and.w	d1,(-$06,a6,d0.l)
	addi.l	#$00000100,d0
	btst.b	#$02,(L04735d)
	beq	L017862
	addi.l	#$00000100,d0
L017862:
	and.w	d1,(-$10,a6,d0.l)
	and.w	d1,(-$0e,a6,d0.l)
	and.w	d1,(-$08,a6,d0.l)
	and.w	d1,(-$06,a6,d0.l)
	bra	L017894
L017874:
	and.w	d1,(-$10,a6,d0.l)
	and.w	d1,(-$0e,a6,d0.l)
	and.w	d1,(-$08,a6,d0.l)
	and.w	d1,(-$06,a6,d0.l)
	and.w	d1,($10,a6,d0.l)
	and.w	d1,($12,a6,d0.l)
	and.w	d1,($18,a6,d0.l)
	and.w	d1,($1a,a6,d0.l)
L017894:
	movea.l	a0,a2
	cmpi.w	#$0002,($0022,a2)
	bcs	L017900
	jsr	(L0298a6)
	bcs	L017900
	move.w	#$000e,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.w	($0004,a2),($0004,a0)
	move.w	($0008,a2),($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00008000,($0010,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	($0022,a2),d0
	move.w	($0024,a2),($0024,a0)
	cmpi.w	#$0043,d0
	bne	L0178fc
	move.l	a2,-(a7)
	jsr	(L03c2ce)
	movea.l	(a7)+,a2
	bra	L017900
L0178fc:
	bsr	L013dbe
L017900:
	jsr	(L0298a6)
	bcs	L017970
	bsr	L017e74
	move.l	#$00008000,($000c,a0)
	move.l	#$fffd8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017970
	bsr	L017e74
	move.l	#$ffff8000,($000c,a0)
	move.l	#$fffe0000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017970
	bsr	L017e74
	move.l	#$00010000,($000c,a0)
	move.l	#$ffff0000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017970
	bsr	L017e74
	move.l	#$ffff0000,($000c,a0)
	move.l	#$fffe8000,($0010,a0)
L017970:
	tst.w	($0026,a2)
	beq	L0179e6
	jsr	(L0298a6)
	bcs	L0179e6
	bsr	L017e74
	move.l	#$ffffc000,($000c,a0)
	move.l	#$fffc8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L0179e6
	bsr	L017e74
	move.l	#$00004000,($000c,a0)
	move.l	#$fffd0000,($0010,a0)
	jsr	(L0298a6)
	bcs	L0179e6
	bsr	L017e74
	move.l	#$ffffc000,($000c,a0)
	move.l	#$ffff8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L0179e6
	bsr	L017e74
	move.l	#$00004000,($000c,a0)
	move.l	#$ffffc000,($0010,a0)
L0179e6:
	movea.l	a2,a0
	rts

L0179ea:
	move.w	($0004,a0),d0
	tst.w	(L04735a)
	bpl	L0179fa
	move.w	($0008,a0),d0
L0179fa:
	subi.w	#$0080,d0
	bpl	L017a02
	neg.w	d0
L017a02:
	cmpi.w	#$00c0,d0
	bcc	L017a80
	cmpi.w	#$0003,($0020,a0)
	bcc	L017aa6
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017fec
	lea.l	($00c00001),a6
	lea.l	(a6,d0.l),a6
	jsr	(L01800e)
	tst.w	($0026,a0)
	beq	L017a4c
	lea.l	(-$4000,a6),a6
	jsr	(L01800e)
	lea.l	($4000,a6),a6
	lea.l	($4000,a6),a6
	jsr	(L01800e)
L017a4c:
	tst.w	($0020,a0)
	beq	L017a80
	cmpi.w	#$0002,($0020,a0)
	beq	L017a82
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L018144
	lea.l	($00ebe000),a6
	lea.l	(a6,d0.l),a6
	bsr	L018164
	tst.w	($0026,a0)
	beq	L017a80
	jsr	(L018170)
L017a80:
	rts

L017a82:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L018144
	lea.l	($00ebe000),a6
	lea.l	(a6,d0.l),a6
	move.l	($0004,a6),($0000.w,a6)
	move.l	($0084,a6),($0080,a6)
	rts

L017aa6:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017fec
	lea.l	($00c00001),a6
	lea.l	(a6,d0.l),a6
	move.w	($0020,a0),d0
	add.w	d0,d0
	move.w	(L017aca,pc,d0.w),d0
	jmp	(L017aca,pc,d0.w)

L017aca:
	.dc.w	L017af0-L017aca
	.dc.w	L017af0-L017aca
	.dc.w	L017af0-L017aca
	.dc.w	L017af0-L017aca
	.dc.w	L017afe-L017aca
	.dc.w	L017b1a-L017aca
	.dc.w	L017b36-L017aca
	.dc.w	L017b52-L017aca
	.dc.w	L017b90-L017aca
	.dc.w	L017bac-L017aca
	.dc.w	L017b6e-L017aca
	.dc.w	L017ae2-L017aca

L017ae2:
	movea.l	a6,a5
	suba.l	#$00004000,a5
	bsr	L018112
	rts

L017af0:
	movea.l	a6,a5
	suba.l	#$0000bfa0,a5
	bsr	L018112
	rts

L017afe:
	movea.l	a6,a5
	suba.l	#$00004060,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017b1a:
	movea.l	a6,a5
	suba.l	#$000040e0,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017b36:
	movea.l	a6,a5
	suba.l	#$0001c000,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017b52:
	movea.l	a6,a5
	suba.l	#$00004080,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017b6e:
	adda.l	#$00080000,a6
	movea.l	a6,a5
	suba.l	#$0001c000,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017b90:
	movea.l	a6,a5
	suba.l	#$00004040,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017bac:
	movea.l	a6,a5
	movem.l	a5-a6,-(a7)
	suba.l	#$00004040,a5
	suba.l	#$00004000,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	movem.l	(a7)+,a5-a6
	suba.l	#$00004060,a5
	suba.l	#$00004020,a6
	bsr	L018112
	bsr	L018112
	bsr	L018112
	rts

L017be8:
	rts

L017bea:
	jsr	(L029842)
	bcs	L017c38
	move.w	#$0095,($0000.w,a0)
	ori.w	#$0100,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$4000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	move.l	a6,($002c,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	move.w	d0,($0020,a0)
L017c38:
	rts

L017c3a:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L017c4e
	jmp	(L029cca)

L017c4e:
	btst.b	#$06,($001a,a0)
	beq	L017c5c
	clr.b	($001a,a0)
	bra	L017be8
L017c5c:
	tst.b	($001a,a0)
	beq	L017be8
	movea.l	($002c,a0),a1
	move.w	#$0000,($0002,a1)
	moveq.l	#$4b,d0
	trap	#0
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017f3c
	lea.l	($00e50000),a6
	move.w	#$0000,d1
	move.w	d1,(a6,d0.l)
	move.w	d1,($02,a6,d0.l)
	move.w	d1,($08,a6,d0.l)
	move.w	d1,($0a,a6,d0.l)
	move.w	d1,($10,a6,d0.l)
	move.w	d1,($12,a6,d0.l)
	move.w	d1,($18,a6,d0.l)
	move.w	d1,($1a,a6,d0.l)
	move.w	d1,(-$10,a6,d0.l)
	move.w	d1,(-$0e,a6,d0.l)
	move.w	d1,(-$08,a6,d0.l)
	move.w	d1,(-$06,a6,d0.l)
	move.w	d1,(-$18,a6,d0.l)
	move.w	d1,(-$16,a6,d0.l)
	addi.l	#$00000200,d0
	move.w	d1,($06,a6,d0.l)
	move.w	d1,($04,a6,d0.l)
	move.w	d1,(-$02,a6,d0.l)
	move.w	d1,(-$04,a6,d0.l)
	move.w	d1,($0e,a6,d0.l)
	move.w	d1,($0c,a6,d0.l)
	move.w	d1,($16,a6,d0.l)
	move.w	d1,($14,a6,d0.l)
	move.w	d1,(-$12,a6,d0.l)
	move.w	d1,(-$14,a6,d0.l)
	move.w	d1,(-$0a,a6,d0.l)
	move.w	d1,(-$0c,a6,d0.l)
	move.w	d1,(-$1a,a6,d0.l)
	move.w	d1,(-$1c,a6,d0.l)
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e74
	move.l	#$ffffc000,($000c,a0)
	move.l	#$fffc8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e74
	move.l	#$00004000,($000c,a0)
	move.l	#$fffd0000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e74
	move.l	#$ffffc000,($000c,a0)
	move.l	#$ffff8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e74
	move.l	#$00004000,($000c,a0)
	move.l	#$ffffc000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e66
	move.l	#$ffffc000,($000c,a0)
	move.l	#$fffc8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e66
	move.l	#$00004000,($000c,a0)
	move.l	#$fffd0000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e66
	move.l	#$ffffc000,($000c,a0)
	move.l	#$ffff8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L017de6
	bsr	L017e66
	move.l	#$00004000,($000c,a0)
	move.l	#$ffffc000,($0010,a0)
L017de6:
	movea.l	a2,a0
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017fec
	lea.l	($00bfa001),a6
	lea.l	(a6,d0.l),a6
	jsr	(L01800e)
	lea.l	($0020,a6),a6
	jsr	(L01800e)
	lea.l	($3fe0,a6),a6
	jsr	(L01800e)
	lea.l	($0020,a6),a6
	jsr	(L01800e)
	lea.l	($3fe0,a6),a6
	jsr	(L01800e)
	lea.l	($0020,a6),a6
	jsr	(L01800e)
	lea.l	($1fe0,a6),a6
	jsr	(L01800e)
	lea.l	($0020,a6),a6
	jsr	(L01800e)
	tst.w	($0020,a0)
	bne	L017e56
	jmp	(L029cca)

L017e56:
	move.l	a0,-(a7)
	jsr	(L02afc0)
	movea.l	(a7)+,a0
	jmp	(L029cca)

L017e66:
	move.w	($0004,a2),($0004,a0)
	addi.w	#$0010,($0004,a0)
	bra	L017e7a
L017e74:
	move.w	($0004,a2),($0004,a0)
L017e7a:
	move.w	#$0029,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	($0008,a2),($0008,a0)
	move.w	#$0000,($001c,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$000d,($0018,a0)
	rts

L017ea2:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L017eb0,pc,d0.w),d0
	jmp	(L017eb0,pc,d0.w)

L017eb0:
	.dc.w	L017eb6-L017eb0
	.dc.w	L017eda-L017eb0
	.dc.w	L017f18-L017eb0

L017eb6:
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L017eca
	jmp	(L029cca)

L017eca:
	addi.l	#$00004000,($0010,a0)
	jsr	(L025416)
	rts

L017eda:
	jsr	(L029954)
	move.w	($0004,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	bcc	L017ef4
	jmp	(L029cca)

L017ef4:
	move.w	($0008,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$ff00,d0
	bcc	L017f08
	jmp	(L029cca)

L017f08:
	addi.l	#$00000400,($0010,a0)
	jsr	(L025416)
	rts

L017f18:
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L017f2c
	jmp	(L029cca)

L017f2c:
	addi.l	#$00004000,($0010,a0)
	jsr	(L025416)
	rts

L017f3c:
	tst.w	(L04735a)
	bmi	L017f92
	add.w	(L047f7a),d0
	swap.w	d0
	move.w	(L0470f2),d0
	andi.w	#$01ff,d0
	add.w	d0,d1
	swap.w	d0
	andi.w	#$fff0,d0
	andi.w	#$fff0,d1
	swap.w	d1
	move.w	d0,d1
	andi.l	#$0000ffe0,d0
	asl.l	#3,d0
	btst.b	#$02,(L04735d)
	beq	L017f7a
	asl.l	#1,d0
L017f7a:
	andi.w	#$0018,d1
	lsr.w	#2,d1
	add.w	d1,d0
	swap.w	d1
	andi.w	#$fff8,d1
	add.w	d1,d0
	andi.l	#$0000ffff,d0
	rts

L017f92:
	swap.w	d1
	move.w	(L0470ee),d1
	andi.w	#$01ff,d1
	add.w	d1,d0
	swap.w	d1
	add.w	(L047f7a),d1
	andi.w	#$fff0,d0
	andi.w	#$fff0,d1
	swap.w	d0
	move.w	d1,d0
	andi.l	#$0000ffe0,d1
	asl.l	#3,d1
	btst.b	#$02,(L04735d)
	beq	L017fc8
	asl.l	#1,d1
L017fc8:
	andi.w	#$0018,d0
	add.w	d0,d1
	swap.w	d0
	swap.w	d1
	move.w	d0,d1
	andi.w	#$0018,d0
	lsr.w	#2,d0
	andi.w	#$01e0,d1
	add.w	d1,d0
	swap.w	d1
	add.w	d1,d0
	andi.l	#$0000ffff,d0
	rts

L017fec:
	add.w	(L0470ee),d0
	add.w	(L0470f2),d1
	andi.l	#$000001f0,d0
	andi.l	#$000001f0,d1
	asl.l	#8,d1
	asl.l	#2,d1
	asl.w	#1,d0
	add.l	d1,d0
	rts

L01800e:
	moveq.l	#$00,d0
	movep.l	d0,($0000,a6)
	movep.l	d0,($0008,a6)
	movep.l	d0,($0010,a6)
	movep.l	d0,($0018,a6)
	movep.l	d0,($0400,a6)
	movep.l	d0,($0408,a6)
	movep.l	d0,($0410,a6)
	movep.l	d0,($0418,a6)
	movep.l	d0,($0800,a6)
	movep.l	d0,($0808,a6)
	movep.l	d0,($0810,a6)
	movep.l	d0,($0818,a6)
	movep.l	d0,($0c00,a6)
	movep.l	d0,($0c08,a6)
	movep.l	d0,($0c10,a6)
	movep.l	d0,($0c18,a6)
	movep.l	d0,($1000,a6)
	movep.l	d0,($1008,a6)
	movep.l	d0,($1010,a6)
	movep.l	d0,($1018,a6)
	movep.l	d0,($1400,a6)
	movep.l	d0,($1408,a6)
	movep.l	d0,($1410,a6)
	movep.l	d0,($1418,a6)
	movep.l	d0,($1800,a6)
	movep.l	d0,($1808,a6)
	movep.l	d0,($1810,a6)
	movep.l	d0,($1818,a6)
	movep.l	d0,($1c00,a6)
	movep.l	d0,($1c08,a6)
	movep.l	d0,($1c10,a6)
	movep.l	d0,($1c18,a6)
	movep.l	d0,($2000,a6)
	movep.l	d0,($2008,a6)
	movep.l	d0,($2010,a6)
	movep.l	d0,($2018,a6)
	movep.l	d0,($2400,a6)
	movep.l	d0,($2408,a6)
	movep.l	d0,($2410,a6)
	movep.l	d0,($2418,a6)
	movep.l	d0,($2800,a6)
	movep.l	d0,($2808,a6)
	movep.l	d0,($2810,a6)
	movep.l	d0,($2818,a6)
	movep.l	d0,($2c00,a6)
	movep.l	d0,($2c08,a6)
	movep.l	d0,($2c10,a6)
	movep.l	d0,($2c18,a6)
	movep.l	d0,($3000,a6)
	movep.l	d0,($3008,a6)
	movep.l	d0,($3010,a6)
	movep.l	d0,($3018,a6)
	movep.l	d0,($3400,a6)
	movep.l	d0,($3408,a6)
	movep.l	d0,($3410,a6)
	movep.l	d0,($3418,a6)
	movep.l	d0,($3800,a6)
	movep.l	d0,($3808,a6)
	movep.l	d0,($3810,a6)
	movep.l	d0,($3818,a6)
	movep.l	d0,($3c00,a6)
	movep.l	d0,($3c08,a6)
	movep.l	d0,($3c10,a6)
	movep.l	d0,($3c18,a6)
	rts

L018112:
	move.w	#$000f,d1
L018116:
	movep.l	($0000,a5),d0
	movep.l	d0,($0000,a6)
	movep.l	($0008,a5),d0
	movep.l	d0,($0008,a6)
	movep.l	($0010,a5),d0
	movep.l	d0,($0010,a6)
	movep.l	($0018,a5),d0
	movep.l	d0,($0018,a6)
	lea.l	($0400,a5),a5
	lea.l	($0400,a6),a6
	dbra	d1,L018116
	rts

L018144:
	add.w	(L04710e),d0
	add.w	(L047112),d1
L018150:
	andi.l	#$000001f0,d0
	andi.l	#$000001f0,d1
	asl.w	#4,d1
	lsr.w	#2,d0
	add.l	d1,d0
	rts

L018164:
	moveq.l	#$00,d0
	move.l	d0,($0000.w,a6)
	move.l	d0,($0080,a6)
	rts

L018170:
	moveq.l	#$00,d0
	move.l	d0,(-$0100,a6)
	move.l	d0,(-$0080,a6)
	move.l	d0,($0000.w,a6)
	move.l	d0,($0080,a6)
	move.l	d0,($0100,a6)
	move.l	d0,($0180,a6)
	rts

L01818c:
	jsr	(L029842)
	bcs	L0181dc
	move.w	#$0069,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0001,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
L0181dc:
	rts

L0181de:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L0181f2
	jmp	(L029cca)

L0181f2:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L018200
	neg.w	d0
L018200:
	cmp.w	($0020,a0),d0
	bcc	L01822e
	move.w	(L0473f8),d0
	cmpi.b	#$01,(L04740d)
	bne	L01821a
	addi.w	#$0008.w,d0
L01821a:
	sub.w	($0008,a0),d0
	bpl	L018222
	neg.w	d0
L018222:
	cmp.w	($0022,a0),d0
	bcc	L01822e
	jsr	(L025c24)
L01822e:
	rts

L018230:
	jsr	(L029842)
	bcs	L018290
	move.w	#$002d,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($001c,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0007,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	clr.w	($0024,a0)
	move.w	#$4000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	clr.w	($001e,a0)
L018290:
	rts

L018292:
	jsr	(L02993c)
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L0182a6,pc,d0.w),d0
	jmp	(L0182a6,pc,d0.w)

L0182a6:
	.dc.w	L018382-L0182a6
	.dc.w	L0182b8-L0182a6
	.dc.w	L018384-L0182a6
	.dc.w	L018414-L0182a6
	.dc.w	L01853a-L0182a6
	.dc.w	L018574-L0182a6
	.dc.w	L018690-L0182a6
	.dc.w	L018822-L0182a6
	.dc.w	L01888e-L0182a6

L0182b8:
	cmpi.w	#$0400,(L047f7a)
	bne	L018382
	move.w	#$0600,(L047f8e)
	move.w	#$0f00,(L047f8a)
	bset.b	#$05,(L04735d)
	move.w	#$0005,(L04735a)
	move.w	(L047f8e),d0
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f82)
	lsr.l	#1,d0
	move.l	d0,(L047f7e)
	move.l	d0,(L047f86)
	move.w	#$0001,(L047f70)
	move.w	#$0003,(L04731e)
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0070,d7
	add.w	d7,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$000f,d7
L018346:
	move.w	(a5)+,(a6)+
	dbra	d7,L018346
	jsr	(L018c0e)
	move.b	(L07ad3e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L07ad40),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L018376:
	move.l	(a5)+,(a6)+
	dbra	d7,L018376
	jmp	(L029cca)

L018382:
	rts

L018384:
	tst.w	($0020,a0)
	bne	L0183c2
	move.w	(L0473f8),d0
	cmp.w	(L047f96),d0
	bcs	L0183c2
	move.l	a0,-(a7)
	lea.l	(L0473f0),a0
	move.l	($0010,a0),-(a7)
	move.l	#$00080000,($0010,a0)
	jsr	(L03a692)
	move.l	(a7)+,($0010,a0)
	movea.l	(a7)+,a0
	moveq.l	#$43,d0
	trap	#0
	move.w	#$0001,($0020,a0)
L0183c2:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	andi.w	#$0003,d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	($00e82004),a1
	move.w	(L070302),(a1,d0.w)
	bsr	L018406
	move.w	(L070306),(a1,d0.w)
	bsr	L018406
	move.w	(L07030a),(a1,d0.w)
	bsr	L018406
	move.w	(L07030e),(a1,d0.w)
	bra	L018382
L018406:
	addq.w	#4,d0
	cmpi.w	#$0010,d0
	bne	L018412
	move.w	#$0000,d0
L018412:
	rts

L018414:
	jsr	(L0299de)
	bcc	L018422
	jmp	(L029cca)

L018422:
	tst.w	($0020,a0)
	bne	L018480
	tst.w	($001e,a0)
	bne	L018454
	jsr	(L01024e)
	andi.w	#$003f,d0
	bne	L01847e
	move.w	#$0003,($001e,a0)
	jsr	(L01024e)
	rol.w	#8,d0
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	move.w	d0,($0022,a0)
L018454:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	neg.w	d0
	addq.w	#2,d0
	move.w	($0004,a0),d1
	add.w	($0022,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L070502),a5
	move.w	#$0001,d3
	jsr	(L02542a)
L01847e:
	rts

L018480:
	tst.w	($001e,a0)
	bne	L0184ca
	jsr	(L01024e)
	andi.w	#$007f,d0
	bne	L01847e
	move.w	#$0004,($001e,a0)
	jsr	(L01024e)
	rol.w	#8,d0
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	move.w	d0,($0022,a0)
	move.w	(L01852e),($00e82202)
	move.w	(L018530),($00e82204)
	move.w	(L018532),($00e8220c)
L0184ca:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bne	L0184f4
	move.w	(L018534),($00e82202)
	move.w	(L018536),($00e82204)
	move.w	(L018538),($00e8220c)
L0184f4:
	neg.w	d0
	move.w	($0004,a0),d1
	add.w	($0022,a0),d1
	move.w	($0008,a0),d2
	move.w	#$0001,d3
	cmpi.w	#$0002,($0020,a0)
	beq	L01851e
	lea.l	(L070502),a5
	addq.w	#6,d0
	jsr	(L02542a)
	rts

L01851e:
	lea.l	(L0716c0),a5
	addq.w	#3,d0
	jsr	(L02542a)
	rts

L01852e:
	.dc.w	$0996
L018530:
	.dc.w	$1a5e
L018532:
	.dc.w	$00d4
L018534:
	.dc.w	$08d2
L018536:
	.dc.w	$0956
L018538:
	.dc.w	$0090

L01853a:
	tst.w	(L047fb8)
	bne	L018382
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	andi.w	#$0003,d0
	asl.w	#5,d0
	lea.l	(L073328),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00e82040),a2
	move.w	#$0007,d0
L01856a:
	move.l	(a1)+,(a2)+
	dbra	d0,L01856a
	bra	L018382
L018574:
	move.w	($0020,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0024,d0
	bcs	L018584
	move.w	#$0000,d0
L018584:
	move.w	d0,($0020,a0)
	andi.w	#$0003,d0
	bne	L0185b2
	move.w	($0020,a0),d0
	andi.w	#$fffc,d0
	asl.w	#7,d0
	lea.l	($00e3c000),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00eb8400),a2
	move.w	#$007f,d1
L0185ac:
	move.l	(a1)+,(a2)+
	dbra	d1,L0185ac
L0185b2:
	move.w	($0022,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	bcs	L0185c2
	move.w	#$0000,d0
L0185c2:
	move.w	d0,($0022,a0)
	andi.w	#$0003,d0
	bne	L01861c
	move.w	($0022,a0),d0
	andi.w	#$fffc,d0
	asl.w	#7,d0
	lea.l	($00e3d200),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00eb8200),a2
	lea.l	($00e3d2a0),a3
	lea.l	(a3,d0.w),a3
	lea.l	($00eb82a0),a4
	move.w	#$0027,d1
L0185fa:
	move.l	(a1)+,(a2)+
	move.l	(a3)+,(a4)+
	dbra	d1,L0185fa
	lea.l	($00e3d340),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00eb8340),a2
	move.w	#$0007,d1
L018616:
	move.l	(a1)+,(a2)+
	dbra	d1,L018616
L01861c:
	move.w	($0024,a0),d0
	addq.w	#1,d0
	andi.w	#$001f,d0
	move.w	d0,($0024,a0)
	andi.w	#$0003,d0
	bne	L018678
	move.w	($0024,a0),d0
	andi.w	#$fffc,d0
	asl.w	#3,d0
	lea.l	($00e3d800),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00eb8360),a2
	move.w	#$0007,d1
L01864e:
	move.l	(a1)+,(a2)+
	dbra	d1,L01864e
	move.w	($0024,a0),d0
	andi.w	#$fffc,d0
	asl.w	#7,d0
	lea.l	($00e3e000),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00eb8600),a2
	move.w	#$005f,d1
L018672:
	move.l	(a1)+,(a2)+
	dbra	d1,L018672
L018678:
	bra	L018382

L01867c:
	.dc.w	$0100
L01867e:
	.dc.w	$0200,$0200,$0200,$0200
	.dc.w	$0300,$0200,$0400,$0300
	.dc.w	$0400

L018690:
	tst.w	(L04735a)
	beq	L0186d0
	moveq.l	#$00,d1
	move.w	(L047f7a),d0
	cmpi.w	#$0100,d0
	bcs	L0186c0
	addq.w	#4,d1
	cmpi.w	#$0500,d0
	bcs	L0186c0
	addq.w	#4,d1
	cmpi.w	#$0a50,d0
	bcs	L0186c0
	addq.w	#4,d1
	cmpi.w	#$0d00,d0
	bcs	L0186c0
	addq.w	#4,d1
L0186c0:
	move.w	(L01867c,pc,d1.w),(L047f76)
	move.w	(L01867e,pc,d1.w),(L047f78)
L0186d0:
	cmpi.w	#$0012,(L047124)
	beq	L018382
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000a,d0
	bcs	L0186ec
	move.w	#$0000,d0
L0186ec:
	move.w	d0,($001e,a0)
	andi.w	#$000e,d0
	add.w	d0,d0
	lea.l	($00e82000),a1
	move.w	(L071764),d1
	bsr	L0187fe
	move.w	(L071768),d1
	bsr	L0187fe
	move.w	(L07176c),d1
	bsr	L0187fe
	move.w	(L071770),d1
	bsr	L0187fe
	move.w	(L071774),d1
	bsr	L0187fe
	move.w	(L047f7a),d0
	tst.w	($0020,a0)
	bne	L01879c
	cmpi.w	#$0bc0,d0
	bcs	L018382
	move.l	a0,-(a7)
	lea.l	(L04a2da),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L053f86),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	movea.l	(a7)+,a0
	move.w	#$0001,($0020,a0)
	bra	L018382
L01879c:
	cmpi.w	#$0b40,d0
	bcc	L018382
	move.l	a0,-(a7)
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L052ee6),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	movea.l	(a7)+,a0
	move.w	#$0000,($0020,a0)
	bra	L018382
L0187fe:
	move.w	d1,($20,a1,d0.w)
	move.w	d1,($22,a1,d0.w)
	lsr.w	#1,d1
	andi.w	#$7bde,d1
	move.w	d1,($04,a1,d0.w)
	move.w	d1,($06,a1,d0.w)
	addq.w	#4,d0
	cmpi.w	#$0014,d0
	bne	L018820
	move.w	#$0000,d0
L018820:
	rts

L018822:
	cmpi.w	#$0b88,(L047f7a)
	bls	L01888c
	jsr	(L018c0e)
	move.b	(L07ada0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07ada2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L018854:
	move.l	(a5)+,(a6)+
	dbra	d7,L018854
	jsr	(L018c0e)
	move.b	(L07ada0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#8,d7
	asl.w	#5,d7
	lea.l	(L07ada2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82300),a6
	move.w	#$0007,d7
L018882:
	move.l	(a5)+,(a6)+
	dbra	d7,L018882
	clr.l	($0000.w,a0)
L01888c:
	rts

L01888e:
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$0004,d0
	beq	L0188a8
	jmp	(L029cca)

L0188a8:
	tst.w	(L04731e)
	bne	L018b32
	move.w	($0024,a0),d2
	move.w	(L0470ee),d0
	move.w	(L0470f2),d1
	cmpi.w	#$0700,d0
	bgt	L01894c
	cmpi.w	#$0250,d1
	ble	L01890e
	bset.b	#$07,($0024,a0)
	bne	L018b32
	jsr	(L018c0e)
	move.b	(L0719ea),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L0719ec),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L018902:
	move.l	(a5)+,(a6)+
	dbra	d7,L018902
	moveq.l	#$00,d3
	bra	L018b24
L01890e:
	bclr.b	#$07,($0024,a0)
	beq	L018b32
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L018940:
	move.l	(a5)+,(a6)+
	dbra	d7,L018940
	moveq.l	#$01,d3
	bra	L018b24
L01894c:
	cmpi.w	#$0a80,d0
	blt	L018962
	bset.b	#$06,($0024,a0)
	bne	L0189e4
	moveq.l	#$02,d3
	bra	L018b24
L018962:
	bclr.b	#$06,($0024,a0)
	beq	L0189e4
	bclr.b	#$07,($0024,a0)
	cmpi.w	#$0250,d1
	bgt	L0189aa
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L01899e:
	move.l	(a5)+,(a6)+
	dbra	d7,L01899e
	moveq.l	#$01,d3
	bra	L018b24
L0189aa:
	bset.b	#$07,($0024,a0)
	jsr	(L018c0e)
	move.b	(L0719ea),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L0719ec),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$000f,d7
L0189d8:
	move.l	(a5)+,(a6)+
	dbra	d7,L0189d8
	moveq.l	#$07,d3
	bra	L018b24
L0189e4:
	cmpi.w	#$03e0,d1
	blt	L018a28
	bset.b	#$05,($0024,a0)
	bne	L018a66
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$0007,d7
L018a1c:
	move.l	(a5)+,(a6)+
	dbra	d7,L018a1c
	moveq.l	#$03,d3
	bra	L018b24
L018a28:
	bclr.b	#$05,($0024,a0)
	beq	L018a66
	jsr	(L018c0e)
	move.b	(L0719ea),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L0719ec),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$0007,d7
L018a5a:
	move.l	(a5)+,(a6)+
	dbra	d7,L018a5a
	moveq.l	#$04,d3
	bra	L018b24
L018a66:
	btst.b	#$04,($0024,a0)
	bne	L018ab4
	cmpi.w	#$0de0,d0
	blt	L018b22
	bset.b	#$04,($0024,a0)
	jsr	(L018c0e)
	move.b	(L071a6c),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L071a6e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$001f,d7
L018aa4:
	move.l	(a5)+,(a6)+
	dbra	d7,L018aa4
	clr.l	(L047fc4)
	moveq.l	#$05,d3
	bra	L018b24
L018ab4:
	cmpi.w	#$0d40,d0
	bgt	L018b22
	bclr.b	#$04,($0024,a0)
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L018ae8:
	move.l	(a5)+,(a6)+
	dbra	d7,L018ae8
	jsr	(L018c0e)
	move.b	(L0719ea),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L0719ec),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L018b18:
	move.l	(a5)+,(a6)+
	dbra	d7,L018b18
	moveq.l	#$06,d3
	bra	L018b24
L018b22:
	bra	L018b32
L018b24:
	move.w	#$0017,(L04731e)
	move.w	d3,(L047322)
L018b32:
	rts

L018b34:
	cmpi.w	#$0020,d0
	bcc	L018b6c
	moveq.l	#$00,d2
	move.w	#$7bde,d3
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#4,d0
	bcc	L018b4a
	add.w	d1,d2
L018b4a:
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#1,d0
	bcc	L018b54
	add.w	d1,d2
L018b54:
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#1,d0
	bcc	L018b5e
	add.w	d1,d2
L018b5e:
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#1,d0
	bcc	L018b68
	add.w	d1,d2
L018b68:
	rol.b	#1,d0
	rts

L018b6c:
	move.w	d1,d2
	rts

L018b70:
	cmpi.w	#$0020,d0
	bcc	L018bae
	moveq.l	#$00,d2
	move.w	#$7bde,d3
	move.w	d1,d2
	eori.w	#$ffff,d1
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#4,d0
	bcc	L018b8c
	add.w	d1,d2
L018b8c:
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#1,d0
	bcc	L018b96
	add.w	d1,d2
L018b96:
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#1,d0
	bcc	L018ba0
	add.w	d1,d2
L018ba0:
	lsr.w	#1,d1
	and.w	d3,d1
	rol.b	#1,d0
	bcc	L018baa
	add.w	d1,d2
L018baa:
	rol.b	#1,d0
	rts

L018bae:
	move.w	#$fffe,d2
	rts

L018bb4:
	movem.l	d0-d7/a0-a6,-(a7)
	tst.w	(L047fb8)
	bne	L018bc4
	bsr	L0174aa
L018bc4:
	tst.b	(L04735b)
	bne	L018be0
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$0006,d0
	bcc	L018c08
L018be0:
	lea.l	(L048ebc),a1
	lea.l	($00e82000),a2
	move.w	#$00ff,d7
	bsr	L018c66
	lea.l	(L04921c),a1
	lea.l	($00e82360),a2
	move.w	#$002f,d7
	bsr	L018c66
	moveq.l	#$f3,d0
	trap	#0
L018c08:
	movem.l	(a7)+,d0-d7/a0-a6
L018c0c:
	rts

L018c0e:
	tst.w	(L047fb8)
	beq	L018c0c
	clr.w	(L047fac)
L018c1c:
	movem.l	d0-d7/a0-a6,-(a7)
	lea.l	(L048ebc),a1
	lea.l	($00e82000),a2
	move.w	#$00ff,d7
L018c30:
	move.w	(a1)+,(a2)+
	dbra	d7,L018c30
	lea.l	(L04921c),a1
	lea.l	($00e82360),a2
	move.w	#$002f,d7
L018c46:
	move.w	(a1)+,(a2)+
	dbra	d7,L018c46
	cmpi.w	#$0002,(L047fb8)
	bne	L018c5a
	moveq.l	#$f4,d0
	trap	#0
L018c5a:
	movem.l	(a7)+,d0-d7/a0-a6
	clr.w	(L047fb8)
	rts

L018c66:
	move.w	(a1)+,d0
	beq	L018cb2
	move.w	d0,d1
	move.w	d0,d2
	andi.l	#$0000f800,d0
	andi.w	#$07c0,d1
	andi.w	#$003e,d2
	lsr.w	#1,d2
	lsr.w	#6,d1
	rol.w	#5,d0
	add.w	d1,d0
	add.w	d2,d0
	divu.w	#$0003,d0
	move.w	d0,d1
	move.w	d0,d2
	lsr.w	#1,d2
	addi.w	#$0003.w,d1
	cmpi.w	#$001f,d1
	bcs	L018c9e
	move.w	#$001f,d1
L018c9e:
	subi.w	#$0003.w,d0
	bcc	L018ca8
	move.w	#$0000,d0
L018ca8:
	ror.w	#5,d0
	asl.w	#6,d1
	asl.w	#1,d2
	or.w	d1,d0
	or.w	d2,d0
L018cb2:
	move.w	d0,(a2)+
	dbra	d7,L018c66
	rts

L018cba:
	bra	L018cba
L018cbc:
	jsr	(L02991e)
	bcs	L018cfe
	move.w	#$0041,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	move.w	d0,($0020,a0)
	clr.w	($0022,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L0705e2,($0014,a0)
L018cfe:
	rts

L018d00:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L018d14
	jmp	(L029cca)

L018d14:
	cmpi.w	#$0004,($0020,a0)
	beq	L018dd2
	cmpi.w	#$0001,($0020,a0)
	beq	L018d5a
	cmpi.w	#$0002,($0020,a0)
	beq	L018d94
	bcc	L018db8
	jsr	(L025416)
	movea.l	#L0705e2,a5
	move.w	#$0001,d0
	move.w	($0004,a0),d1
	addi.w	#$0008.w,d1
	move.w	($0008,a0),d2
	addi.w	#$0048,d2
	jsr	(L025426)
	rts

L018d5a:
	movea.l	#L07b068,a5
	move.w	#$0000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	subi.w	#$0010,d2
	jsr	(L025426)
	movea.l	#L07b070,a5
	move.w	#$0000,d0
	move.w	($0004,a0),d1
	add.w	#$0060,d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	rts

L018d94:
	cmpi.w	#$0010,(L047f7a)
	bcc	L018db6
	movea.l	#L076b16,a5
	move.w	#$0000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	jsr	(L025426)
L018db6:
	rts

L018db8:
	movea.l	#L078f54,a5
	move.w	#$0000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	rts

L018dd2:
	cmpi.w	#$0001,($0022,a0)
	beq	L018dfc
	bcc	L018e26
	move.w	#$0000,d0
	move.w	(L0473f4),d1
	sub.w	($0004,a0),d1
	cmpi.w	#$0060,d1
	bcc	L018e34
	move.w	#$0001,($0022,a0)
	clr.w	($0024,a0)
	bra	L018e34
L018dfc:
	move.w	(L0473f4),d1
	sub.w	($0004,a0),d1
	cmpi.w	#$ffd0,d1
	bgt	L018e12
	move.w	#$0002,($0022,a0)
L018e12:
	move.w	($0024,a0),d0
	cmpi.w	#$0020,d0
	bcc	L018e22
	addq.w	#1,d0
	move.w	d0,($0024,a0)
L018e22:
	lsr.w	#4,d0
	bra	L018e34
L018e26:
	move.w	($0024,a0),d0
	beq	L018e32
	subq.w	#1,d0
	move.w	d0,($0024,a0)
L018e32:
	lsr.w	#4,d0
L018e34:
	movea.l	#L085fae,a5
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	rts

L018e4a:
	jsr	(L02991e)
	bcs	L018cba
	move.w	#$001d,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	add.l	#$00600000,d2
	move.l	d2,($0004,a0)
	add.l	#$00010000,d3
	move.l	d3,($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	move.w	#$0013,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	move.w	#$d800,($001e,a0)
	move.w	#$0000,($0020,a0)
	move.w	#$001a,d0
	jsr	(L01032e)
	asr.w	#8,d0
	asr.w	#2,d0
	move.w	d0,d3
	asr.w	#2,d0
	add.w	d3,d0
	swap.w	d0
	clr.w	d0
	move.l	d0,($0024,a0)
	asr.w	#8,d1
	asr.w	#2,d1
	move.w	d1,d3
	asr.w	#2,d1
	add.w	d3,d1
	swap.w	d1
	clr.w	d1
	move.l	d1,($0028,a0)
	rts

L018ed8:
	jsr	(L02993c)
	lea.l	(L07057a),a5
	move.w	#$000b,d0
	move.w	($0004,a0),d1
	addi.w	#$0008.w,d1
	move.w	#$0048,d2
	jsr	(L025426)
	lea.l	(L07057a),a5
	move.w	#$000c,d0
	move.w	($0004,a0),d1
	addi.w	#$0008.w,d1
	move.w	#$00c8,d2
	jsr	(L025426)
	move.w	($001e,a0),d0
	cmpi.w	#$c040,d0
	bcs	L018f34
	bne	L018f2a
	move.l	d0,-(a7)
	moveq.l	#$55,d0
	trap	#0
	move.l	(a7)+,d0
L018f2a:
	sub.w	#$0040,d0
	move.w	d0,($001e,a0)
	bra	L018fa4
L018f34:
	move.w	($0004,a0),d0
	cmpi.w	#$0200,d0
	bcc	L0190b4
	move.w	($0020,a0),d0
	cmpi.w	#$0020,d0
	bcc	L018fa4
	addq.w	#1,d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0018,d0
	bcc	L018f72
	move.w	#$009a,d0
	jsr	(L01032e)
	ext.l	d0
	asr.l	#2,d0
	add.l	d0,($0024,a0)
	ext.l	d1
	asr.l	#2,d1
	add.l	d1,($0028,a0)
	bra	L018fa4
L018f72:
	move.w	#$001a,d0
	jsr	(L01032e)
	ext.l	d0
	asr.l	#3,d0
	move.w	($0020,a0),d2
	subi.w	#$0016,d2
	lsr.w	#1,d2
	asr.l	d2,d0
	add.l	d0,($0024,a0)
	ext.l	d1
	asr.l	#3,d1
	move.w	($0020,a0),d2
	subi.w	#$0016,d2
	lsr.w	#1,d2
	asr.l	d2,d0
	add.l	d1,($0028,a0)
L018fa4:
	move.b	($001e,a0),d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	move.l	d0,d4
	move.l	d1,d5
	asl.l	#1,d4
	asl.l	#1,d5
	add.l	d0,d4
	add.l	d1,d5
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	lea.l	(L07057a),a4
	move.b	($001e,a0),d0
	addi.w	#$0004.w,d0
	andi.w	#$003f,d0
	lsr.w	#3,d0
	addi.w	#$0002.w,d0
	move.w	#$000a,d7
L018fe6:
	movea.l	a4,a5
	movem.l	d0-d2,-(a7)
	swap.w	d1
	swap.w	d2
	jsr	(L025426)
	movem.l	(a7)+,d0-d2
	add.l	d4,d1
	add.l	d5,d2
	dbra	d7,L018fe6
	sub.l	d4,d1
	sub.l	d5,d2
	movem.l	d1-d2,-(a7)
	move.w	#$0000,d0
	move.l	($0024,a0),d4
	move.l	($0028,a0),d5
L019016:
	movea.l	a4,a5
	movem.l	d0-d2,-(a7)
	swap.w	d1
	swap.w	d2
	jsr	(L025426)
	movem.l	(a7)+,d0-d2
	add.l	d4,d1
	add.l	d5,d2
	cmpi.l	#$01100000,d1
	bcc	L01903e
	cmpi.l	#$00280000,d2
	bcc	L019016
L01903e:
	movem.l	(a7)+,d1-d2
	move.l	d4,d0
	asr.l	#1,d0
	add.l	d0,d1
	move.l	d5,d0
	asr.l	#1,d0
	add.l	d0,d2
	move.w	#$0001,d0
L019052:
	movea.l	a4,a5
	movem.l	d0-d2,-(a7)
	swap.w	d1
	swap.w	d2
	jsr	(L025426)
	movem.l	(a7)+,d0-d2
	add.l	d4,d1
	add.l	d5,d2
	cmpi.l	#$01100000,d1
	bcc	L01907a
	cmpi.l	#$00280000,d2
	bcc	L019052
L01907a:
	move.w	($0004,a0),d5
	addi.w	#$0018,d5
	lea.l	(L0705f2),a4
	moveq.l	#$00,d6
	move.w	(L0472f6),d6
	lsr.w	#4,d6
	divu.w	#$0003,d6
	swap.w	d6
	move.w	#$0008,d7
L01909c:
	movea.l	a4,a5
	subi.w	#$0010,d5
	move.w	d5,d1
	move.w	#$00f8,d2
	move.w	d6,d0
	jsr	(L025426)
	dbra	d7,L01909c
L0190b4:
	rts

L0190b6:
	jsr	(L0298e2)
	bcs	L019134
	move.w	#$001e,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	add.l	#$00200000,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07053a,($0014,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$00ff,($001e,a0)
	move.w	#$0001,(L04731e)
	move.w	#$0000,(L047322)
	move.w	#$0000,($0020,a0)
	move.w	#$0000,($0022,a0)
	move.w	#$0000,($0024,a0)
	move.w	#$0000,($0026,a0)
L019134:
	rts

L019136:
	jsr	(L02993c)
	move.w	($001c,a0),d0
	beq	L019160
	subq.w	#1,d0
	beq	L0191d2
	subq.w	#1,d0
	beq	L019284
	subq.w	#1,d0
	beq	L0192ae
	subq.w	#1,d0
	beq	L0192c6
	subq.w	#1,d0
	beq	L0192e0
L019160:
	move.w	($0004,a0),d0
	cmpi.w	#$00c0,d0
	bcc	L0192e0
	addq.w	#1,($001c,a0)
	moveq.l	#$90,d0
	trap	#0
	move.l	a0,-(a7)
	jsr	(L0298e2)
	bcs	L0191cc
	move.w	#$000e,($0000.w,a0)
	move.w	#$2000,($0002,a0)
	clr.w	($001a,a0)
	clr.w	($001e,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0080,($0004,a0)
	move.w	#$0000,($0008,a0)
	move.w	#$000b,($0020,a0)
	move.w	#$0020,($0022,a0)
	move.l	#L0474e0,($0024,a0)
	tst.w	(L047fb8)
	bne	L0191cc
	move.w	#$0001,(L047fb8)
	bsr	L0174aa
L0191cc:
	movea.l	(a7)+,a0
	bra	L0192e0
L0191d2:
	move.b	($001f,a0),d0
	addq.b	#1,d0
	move.b	d0,($001f,a0)
	cmpi.b	#$02,d0
	bne	L01927c
	clr.b	($001f,a0)
	move.w	($0018,a0),d0
	addq.w	#1,d0
	move.w	d0,($0018,a0)
	cmpi.w	#$0008,d0
	bne	L01927c
	addq.w	#1,($001c,a0)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L019278
	move.w	#$0001,($001c,a0)
	move.w	#$0080,($001e,a0)
	move.w	#$000f,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	move.l	($0004,a1),($0004,a0)
	move.w	#$0098,($0008,a0)
	jsr	(L0298a6)
	bcs	L019278
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$000f,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	move.l	($0004,a1),($0004,a0)
	move.w	#$0090,($0008,a0)
L019278:
	movea.l	a1,a0
	bra	L0192e0
L01927c:
	jsr	(L025416)
	bra	L0192e0
L019284:
	move.w	($001e,a0),d0
	cmpi.w	#$0080,d0
	bcc	L019294
	addq.w	#1,d0
	move.w	d0,($001e,a0)
L019294:
	add.w	($0022,a0),d0
	move.w	d0,($0022,a0)
	cmpi.w	#$4800,d0
	bcs	L0192e0
	move.w	#$0020,($001e,a0)
	addq.w	#1,($001c,a0)
	bra	L0192e0
L0192ae:
	subi.w	#$0020,($0022,a0)
	subq.w	#1,($001e,a0)
	bne	L0192e0
	move.w	#$0020,($001e,a0)
	addq.w	#1,($001c,a0)
	bra	L0192e0
L0192c6:
	addi.w	#$0020,($0022,a0)
	subq.w	#1,($001e,a0)
	bne	L0192e0
	addq.w	#1,($001c,a0)
	clr.w	(L04731e)
	bra.w	L0192e0
L0192e0:
	move.w	(L047f68),d0
	sub.w	d0,($0024,a0)
	move.w	($0024,a0),(L0470fe)
	move.w	($0024,a0),(L047106)
	tst.w	(L047322)
	bne	L019360
	move.w	(L047324),d0
	jsr	(L01032e)
	neg.w	d0
	neg.w	d1
	asr.w	#8,d0
	asr.w	#8,d1
	move.w	($0020,a0),d2
	asl.w	#8,d2
	add.w	(L0470ee),d0
	add.w	d2,d1
	add.w	#$000a,d0
	sub.w	#$0030,d1
	move.w	d0,($0024,a0)
	move.w	d1,($0026,a0)
	move.w	d1,(L047102)
	move.w	d1,(L04710a)
	move.w	($0020,a0),d0
	eori.w	#$0001,d0
	move.w	d0,($0020,a0)
	addq.w	#1,d0
	move.w	d0,(L047322)
	move.w	($0022,a0),d0
	lsr.w	#8,d0
	move.w	d0,(L047324)
L019360:
	rts

L019362:
	jsr	(L0298e2)
	bcs	L01939a
	move.w	#$00a4,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
L01939a:
	rts

L01939c:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L0193b0
	jmp	(L029cca)

L0193b0:
	cmpi.b	#$01,($001a,a0)
	bne	L0193c6
	clr.b	($001a,a0)
	move.l	#$00800000,(L0473f4)
L0193c6:
	rts

L0193c8:
	cmpi.w	#$0080,d1
	bcc	L019416
	move.l	a0,-(a7)
	jsr	(L0298e2)
	bcs	L019412
	move.w	#$0083,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0000,($001a,a0)
	swap.w	d0
	clr.w	d0
	move.l	d0,($0004,a0)
	move.l	#$fff00000,($0008,a0)
	move.w	#$0000,($001c,a0)
	move.w	d1,($0020,a0)
	move.w	#$0001,($0018,a0)
	move.l	#L0720a4,($0014,a0)
L019412:
	movea.l	(a7)+,a0
	rts

L019416:
	move.l	a0,-(a7)
	jsr	(L0298e2)
	bcs	L019474
	move.w	#$0010,($0000.w,a0)
	move.w	#$0100,($0002,a0)
	move.w	#$0001,($001a,a0)
	swap.w	d0
	clr.w	d0
	move.l	d0,($0004,a0)
	move.l	#$fff00000,($0008,a0)
	clr.w	($001e,a0)
	andi.w	#$007f,d1
	move.w	d1,($0020,a0)
	move.w	#$0000,($0024,a0)
	clr.w	($0022,a0)
	move.l	#L047fd4,($002c,a0)
	move.w	#$0000,($0026,a0)
	move.w	#$0015,($0018,a0)
	move.l	#L06e2e2,($0014,a0)
L019474:
	movea.l	(a7)+,a0
	rts

L019478:
	jsr	(L029842)
	bcs	L0194bc
	move.w	#$0083,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0000,($0020,a0)
	move.w	#$0001,($0018,a0)
	move.l	#L0720a4,($0014,a0)
L0194bc:
	rts

L0194be:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L0194d2
	jmp	(L029cca)

L0194d2:
	cmpi.w	#$0003,($001c,a0)
	beq	L01966e
	cmpi.w	#$0001,($001c,a0)
	beq	L01957c
	bcc	L01964a
	cmpi.w	#$00d8,($0008,a0)
	blt	L01957c
	addq.w	#1,($001c,a0)
	move.w	($0020,a0),d0
	beq	L019514
	moveq.l	#$33,d0
	trap	#0
	cmpi.w	#$0010,d0
	beq	L01950e
	bsr	L0196da
	bra	L01951e
L01950e:
	bsr	L0196c2
	bra	L01951e
L019514:
	moveq.l	#$43,d0
	trap	#0
	bsr	L0196e6
	bra	L01957c
L01951e:
	move.w	($0020,a0),d0
	beq	L01957c
	movea.l	#L047ae0,a1
L01952a:
	cmpi.w	#$0082,(a1)
	bne	L019538
	cmpi.w	#$0050,($0004,a1)
	bcc	L01953e
L019538:
	lea.l	($0030,a1),a1
	bra	L01952a
L01953e:
	cmpi.w	#$0010,d0
	beq	L019562
	subq.w	#1,d0
	add.w	d0,d0
	add.w	d0,d0
	move.w	(L01956e,pc,d0.w),d1
	move.w	(L01956c,pc,d0.w),d0
	move.w	d0,($0020,a1)
	move.w	d1,($0022,a1)
	move.w	#$0050,($0024,a1)
	bra	L01957c
L019562:
	clr.w	($0000.w,a1)
	clr.w	($0002,a1)
	bra	L01957c

L01956c:
	.dc.w	$0203
L01956e:
	.dc.w	$fe00,$0202,$0200,$0102
	.dc.w	$fe00,$0101,$0200

L01957c:
	move.l	(L047fc4),d0
	add.l	d0,($0008,a0)
	jsr	(L025416)
	cmpi.b	#$03,(L04740d)
	bne	L0195a0
	cmpi.b	#$25,(L04740f)
	bcs	L0195e2
L0195a0:
	move.w	(L0473f8),d0
	add.w	#$0018,d0
	sub.w	($0008,a0),d0
	bpl	L0195b2
	neg.w	d0
L0195b2:
	cmpi.w	#$0008,d0
	bcc	L0195e2
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L0195c6
	neg.w	d0
L0195c6:
	cmpi.w	#$0028,d0
	bcc	L0195e2
	move.w	($0008,a0),d0
	subi.w	#$0018,d0
	move.w	d0,(L0473f8)
	bset.b	#$07,(L0473f2)
L0195e2:
	lea.l	(L047450),a1
L0195e8:
	move.w	($0002,a1),d0
	add.w	d0,d0
	bpl	L01963c
	movea.l	($0014,a1),a2
	move.w	($0018,a1),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	movea.l	($02,a2,d0.w),a2
	adda.l	#L06c3dc,a2
	move.w	($0004,a1),d0
	add.w	($0000.w,a2),d0
	sub.w	($0004,a0),d0
	bpl	L019618
	neg.w	d0
L019618:
	cmpi.w	#$0020,d0
	bcc	L01963c
	move.w	($0008,a1),d0
	add.w	($0002,a2),d0
	add.w	($0006,a2),d0
	sub.w	($0008,a0),d0
	bcs	L01963c
	cmpi.w	#$0010,d0
	bcc	L01963c
	bset.b	#$07,($0002,a1)
L01963c:
	lea.l	($0030,a1),a1
	cmpa.l	#L047f60,a1
	bne	L0195e8
	rts

L01964a:
	addi.l	#$00008000,($0010,a0)
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L019666
	jmp	(L029cca)

L019666:
	jsr	(L025416)
	rts

L01966e:
	subq.w	#1,($001e,a0)
	bne	L01967a
	jmp	(L029cca)

L01967a:
	jsr	(L029954)
	jsr	(L0299c2)
	bcc	L01968e
	jmp	(L029cca)

L01968e:
	cmpi.w	#$0010,($001e,a0)
	bcs	L0196ae
	cmpi.w	#$00e0,($0008,a0)
	bcc	L0196ae
	clr.l	($0010,a0)
	ori.w	#$4000,($0018,a0)
	move.w	#$0008,($001e,a0)
L0196ae:
	jsr	(L01024e)
	eori.w	#$8000,($0018,a0)
	jsr	(L025416)
	rts

L0196c2:
	move.w	#$0002,d1
	move.l	#L0720a4,d2
	bsr	L0196fc
	move.w	#$0002,d1
	move.l	#L0720a4,d2
	bsr	L0196fc
L0196da:
	move.w	#$0002,d1
	move.l	#L0720a4,d2
	bsr	L0196fc
L0196e6:
	move.w	#$0008,d7
L0196ea:
	move.w	#$0000,d1
	move.l	#L072274,d2
	bsr	L0196fc
	dbra	d7,L0196ea
	rts

L0196fc:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01975c
	move.w	#$0083,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.l	($0004,a1),($0004,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#4,d0
	add.l	d0,($0004,a0)
	move.l	($0008,a1),($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,($000c,a0)
	move.l	#$ffff0000,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,($0010,a0)
	move.w	#$0002,($001c,a0)
	move.w	d1,($0018,a0)
	move.l	d2,($0014,a0)
L01975c:
	movea.l	a1,a0
	rts

L019760:
	move.w	#$0010,d7
L019764:
	bsr	L01976c
	dbra	d7,L019764
	rts

L01976c:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L0197da
	move.w	#$0083,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	subi.l	#$00010000,d0
	move.l	d0,($000c,a0)
	move.l	#$ffff0000,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,($0010,a0)
	move.w	#$0002,($001c,a0)
	jsr	(L01024e)
	andi.w	#$0003,d0
	bne	L0197cc
	move.w	#$0002,d0
L0197cc:
	addq.w	#5,d0
	move.w	d0,($0018,a0)
	move.l	#L0720bc,($0014,a0)
L0197da:
	movea.l	a1,a0
	rts

L0197de:
	move.l	a0,-(a7)
	jsr	(L029842)
	bcc	L0197ee
	lea.l	(L047ae0),a0
L0197ee:
	move.w	#$0082,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.l	#$00400000,($0004,a0)
	move.l	#$fff00000,($0008,a0)
	move.w	#$0000,($000c,a0)
	move.w	#$0202,($0020,a0)
	clr.w	($0024,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0002,($0018,a0)
	move.l	#L0720a4,($0014,a0)
	movea.l	(a7)+,a0
	rts

L01983a:
	jsr	(L0298e2)
	bcs	L0198e8
	move.w	#$0082,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	add.l	#$00200000,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($000c,a0)
	move.w	#$0303,($0020,a0)
	clr.w	($0024,a0)
	clr.w	($001c,a0)
	move.w	#$0002,($0018,a0)
	move.l	#L0720a4,($0014,a0)
	lea.l	(L04b2e0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L071a6c),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L071a6e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$001f,d7
L0198dc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0198dc
	clr.l	(L047fc4)
L0198e8:
	rts

L0198ea:
	clr.w	($000c,a0)
	bra	L01990a
L0198f0:
	tst.w	($001c,a0)
	beq	L01990a
	move.w	($0008,a0),d0
	addq.w	#1,d0
	move.w	d0,($0008,a0)
	cmpi.w	#$00e0,d0
	blt	L01990a
	clr.w	($001c,a0)
L01990a:
	move.w	($0024,a0),d0
	beq	L019932
	subq.w	#1,d0
	move.w	d0,($0024,a0)
	beq	L0198ea
	cmpi.w	#$0040,d0
	bne	L01992a
	move.w	($0022,a0),d0
	neg.w	d0
	asr.w	#2,d0
	move.w	d0,($0022,a0)
L01992a:
	move.w	($0022,a0),d0
	add.w	d0,($000c,a0)
L019932:
	move.w	(L047f68),d0
	add.w	d0,($0004,a0)
	jsr	(L0299de)
	bcc	L01994a
	jmp	(L029cca)

L01994a:
	jsr	(L025416)
	move.b	($000c,a0),d0
	addi.w	#$0040,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#6,d0
	asl.l	#6,d1
	move.l	d0,d5
	move.l	d1,d6
	movem.l	d5-d6,-(a7)
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	move.b	($0021,a0),d7
	ext.w	d7
	subq.w	#1,d7
L01997e:
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	move.w	($0018,a0),d0
	lea.l	(L0720a4),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	dbra	d7,L01997e
	movem.l	(a7)+,d5-d6
	neg.l	d5
	neg.l	d6
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	move.b	($0020,a0),d7
	ext.w	d7
	subq.w	#1,d7
L0199be:
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	move.w	($0018,a0),d0
	lea.l	(L0720a4),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	dbra	d7,L0199be
	move.b	($000c,a0),d0
	addi.w	#$0040,d0
	jsr	(L01032e)
	ext.l	d0
	asl.l	#6,d0
	bpl	L0199fc
	neg.l	d0
L0199fc:
	asr.w	#8,d1
	asr.w	#2,d1
	move.l	(L0473f4),d2
	sub.l	($0004,a0),d2
	move.l	d2,d3
	bmi	L019a8a
	move.b	($0021,a0),d4
	addq.w	#1,d4
	move.l	d0,d5
	move.l	d1,d6
L019a18:
	subq.b	#1,d4
	beq	L019a22
	add.l	d5,d0
	add.l	d6,d1
	bra	L019a18
L019a22:
	cmp.l	d2,d0
	bcs	L019b04
	swap.w	d0
	addq.w	#1,d0
	divu.w	d0,d2
	tst.w	d1
	bmi	L019a36
	mulu.w	d2,d1
	bra	L019a3c
L019a36:
	neg.w	d1
	mulu.w	d2,d1
	neg.l	d1
L019a3c:
	add.l	($0008,a0),d1
	subi.l	#$00120000,d1
	move.l	d1,d2
	sub.l	(L0473f8),d1
	bcs	L019b04
	cmpi.l	#$000c0000,d1
	bcc	L019b04
	subi.l	#$00080000,d2
	move.l	d2,(L0473f8)
	move.b	($000c,a0),d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#2,d0
	add.l	d0,(L0473f4)
	bset.b	#$07,(L0473f2)
	rts

L019a8a:
	move.b	($0020,a0),d4
	addq.w	#1,d4
	move.l	d0,d5
	move.l	d1,d6
L019a94:
	subq.b	#1,d4
	beq	L019a9e
	add.l	d5,d0
	add.l	d6,d1
	bra	L019a94
L019a9e:
	neg.l	d2
	cmp.l	d2,d0
	bcs	L019b04
	swap.w	d0
	addq.w	#1,d0
	divu.w	d0,d2
	tst.w	d1
	bmi	L019ab4
	mulu.w	d2,d1
	neg.l	d1
	bra	L019ab8
L019ab4:
	neg.w	d1
	mulu.w	d2,d1
L019ab8:
	add.l	($0008,a0),d1
	subi.l	#$00120000,d1
	move.l	d1,d2
	sub.l	(L0473f8),d1
	bcs	L019b04
	cmpi.l	#$000c0000,d1
	bcc	L019b04
	subi.l	#$00080000,d2
	move.l	d2,(L0473f8)
	move.b	($000c,a0),d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#2,d0
	add.l	d0,(L0473f4)
	bset.b	#$07,(L0473f2)
	bra.w	L019b04
L019b04:
	rts

L019b06:
	jsr	(L029818)
	bcc	L019b14
	lea.l	(L0474e0),a0
L019b14:
	move.w	#$0090,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L0720bc,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	clr.w	($0024,a0)
	clr.w	($0026,a0)
	move.l	#L019db8,(L047fc8)
	move.l	#$00000000,(L047fc4)
	rts

L019b76:
	.dc.w	$0100
L019b78:
	.dc.w	$0000,$0000,$0100,$0100
	.dc.w	$0100

L019b82:
	tst.w	($001c,a0)
	beq	L019bd6
	lea.l	(L047ae0),a1
	move.l	(L047fc4),d0
	move.w	#$0017,d1
L019b98:
	cmpi.w	#$000e,(a1)
	beq	L019ba4
	cmpi.w	#$0010,(a1)
	bne	L019ba8
L019ba4:
	add.l	d0,($0008,a1)
L019ba8:
	lea.l	($0030,a1),a1
	dbra	d1,L019b98
	move.w	($001e,a0),d0
	addq.w	#1,d0
	cmpi.w	#$000c,d0
	bcs	L019bbe
	moveq.l	#$00,d0
L019bbe:
	move.w	d0,($001e,a0)
	andi.w	#$000c,d0
	move.w	(L019b76,pc,d0.w),(L047106)
	move.w	(L019b78,pc,d0.w),(L04710a)
L019bd6:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L019be4,pc,d0.w),d0
	jmp	(L019be4,pc,d0.w)

L019be4:
	.dc.w	L019bee-L019be4
	.dc.w	L019e10-L019be4
	.dc.w	L019eee-L019be4
	.dc.w	L019f52-L019be4
	.dc.w	L019fc6-L019be4

L019bee:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L019c02
	jmp	(L029cca)

L019c02:
	jsr	(L025416)
	move.w	($0026,a0),d0
	subq.w	#1,d0
	bpl	L019c14
	move.w	#$000b,d0
L019c14:
	move.w	d0,($0026,a0)
	lsr.w	#2,d0
	add.w	d0,d0
	lea.l	(L071ae8),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00e8233a),a2
	move.w	(a1)+,(a2)+
	cmpa.l	#L071aee,a1
	bcs	L019c3c
	lea.l	(L071ae8),a1
L019c3c:
	move.w	(a1)+,(a2)+
	cmpa.l	#L071aee,a1
	bcs	L019c4c
	lea.l	(L071ae8),a1
L019c4c:
	move.w	(a1),(a2)
	moveq.l	#$00,d0
	move.w	($0024,a0),d0
	addq.w	#1,d0
	andi.w	#$007f,d0
	move.w	d0,($0024,a0)
	beq	L019c88
	subi.w	#$0068,d0
	bcs	L019ce0
	lsr.w	#3,d0
	addq.w	#1,d0
	move.w	($0004,a0),d1
	subi.w	#$0020,d1
	move.w	($0008,a0),d2
	addi.w	#$0002.w,d2
	lea.l	(L0720bc),a5
	jsr	(L025426)
	bra	L019ce0
L019c88:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L019cde
	move.w	#$001b,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.l	#L0720bc,($0014,a0)
	move.w	#$0004,($0018,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.l	#$fffe0000,($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0404,($0022,a0)
	move.w	#$0406,($002e,a0)
	clr.w	($0024,a0)
	moveq.l	#$64,d0
	trap	#0
L019cde:
	movea.l	a1,a0
L019ce0:
	btst.b	#$06,($001a,a0)
	beq	L019cf0
	clr.b	($001a,a0)
	bra	L019db6
L019cf0:
	cmpi.b	#$03,($001a,a0)
	bcs	L019db6
	clr.b	($0002,a0)
	move.w	#$0001,($001c,a0)
	clr.l	(L047fc4)
	move.w	#$0000,($0024,a0)
	clr.w	($0026,a0)
	move.w	#$000b,(L04735a)
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$0004,d0
	bne	L019d36
	addq.w	#1,(L047350)
L019d36:
	move.l	a0,-(a7)
	move.w	#$0083,d2
	move.w	#$0010,d3
	move.w	#$0082,d4
	jsr	(L0175c2)
	jsr	(L0419d6)
	jsr	(L02b95c)
	jsr	(L018c0e)
	move.b	(L071a6c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L071a6e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$000f,d7
L019d80:
	move.l	(a5)+,(a6)+
	dbra	d7,L019d80
	movea.l	(a7)+,a0
	bsr	L019760
	moveq.l	#$4f,d0
	trap	#0
	move.w	#$0018,(L04731e)
	move.w	#$0010,(L047fd0)
	lea.l	($00ebe800),a1
	lea.l	($00ebf800),a2
	move.w	#$01ff,d0
L019db0:
	move.l	(a1)+,(a2)+
	dbra	d0,L019db0
L019db6:
	rts

L019db8:
	.dc.b	$00,$80,$e0,$00,$01,$00,$48,$01
	.dc.b	$02,$00,$c8,$02,$03,$00,$58,$03
	.dc.b	$04,$00,$d0,$00,$05,$00,$b8,$04
	.dc.b	$06,$00,$20,$00,$06,$80,$48,$00
	.dc.b	$06,$88,$48,$84,$07,$00,$c8,$00
	.dc.b	$07,$20,$c8,$8a,$07,$80,$38,$00
	.dc.b	$07,$a0,$48,$89,$07,$c0,$88,$10
	.dc.b	$07,$e0,$78,$83,$08,$00,$d8,$00
	.dc.b	$08,$20,$c8,$8a,$08,$40,$88,$00
	.dc.b	$08,$50,$38,$00,$08,$5f,$98,$89
	.dc.b	$08,$60,$40,$20,$0a,$00,$00,$ff

L019e10:
	jsr	(L01024e)
	ror.w	#1,d0
	bcs	L019e86
	move.w	($0024,a0),d0
	cmpi.w	#$0040,d0
	bcc	L019e86
	add.w	#$00c0,d0
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L019e84
	move.w	#$0083,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	#$0100,($0004,a0)
	move.w	d0,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#3,d0
	subi.l	#$00080000,d0
	move.l	d0,($000c,a0)
	move.l	#$ffff0000,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,($0010,a0)
	move.w	#$0002,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L072274,($0014,a0)
L019e84:
	movea.l	a1,a0
L019e86:
	move.w	($0024,a0),d0
	addq.w	#1,d0
	move.w	d0,($0024,a0)
	cmpi.w	#$0500,d0
	bne	L019e9a
	addq.w	#1,($001c,a0)
L019e9a:
	movea.l	(L047fc8),a1
	cmp.w	(a1),d0
	bne	L019ec0
	move.b	($0002,a1),d0
	andi.w	#$00ff,d0
	move.b	($0003,a1),d1
	andi.w	#$00ff,d1
	addq.w	#4,a1
	move.l	a1,(L047fc8)
	bsr	L0193c8
L019ec0:
	move.l	(L047fc4),d0
	addi.l	#$00000400,d0
	cmpi.l	#$00100000,d0
	bcs	L019eda
	move.l	#$00100000,d0
L019eda:
	move.l	d0,(L047fc4)
	sub.l	d0,(L047112)
	sub.l	d0,(L04711a)
	rts

L019eee:
	move.w	($0024,a0),d0
	addq.w	#1,d0
	move.w	d0,($0024,a0)
	movea.l	(L047fc8),a1
	cmp.w	(a1),d0
	bne	L019f1e
	move.b	($0002,a1),d0
	andi.w	#$00ff,d0
	move.b	($0003,a1),d1
	andi.w	#$00ff,d1
	addq.w	#4,a1
	move.l	a1,(L047fc8)
	bsr	L0193c8
L019f1e:
	move.l	(L047fc4),d0
	subi.l	#$00000800,d0
	cmpi.l	#$00010000,d0
	bcc	L019f3e
	move.l	#$00010000,d0
	move.w	#$0003,($001c,a0)
L019f3e:
	move.l	d0,(L047fc4)
	sub.l	d0,(L047112)
	sub.l	d0,(L04711a)
	rts

L019f52:
	move.w	($0024,a0),d0
	addq.w	#1,d0
	move.w	d0,($0024,a0)
	cmpi.w	#$0940,d0
	bne	L019f6a
	moveq.l	#$ff,d0
	trap	#0
	move.w	($0024,a0),d0
L019f6a:
	movea.l	(L047fc8),a1
	cmp.w	(a1),d0
	bne	L019f9c
	move.b	($0002,a1),d0
	andi.w	#$00ff,d0
	move.b	($0003,a1),d1
	andi.w	#$00ff,d1
	addq.w	#4,a1
	move.l	a1,(L047fc8)
	cmpi.w	#$00ff,d1
	beq	L019fb6
	cmpi.w	#$0020,d1
	beq	L019fb0
	bsr	L0193c8
L019f9c:
	move.l	(L047fc4),d0
	sub.l	d0,(L047112)
	sub.l	d0,(L04711a)
	rts

L019fb0:
	bsr	L0197de
	bra	L019f9c
L019fb6:
	move.w	#$0004,($001c,a0)
	move.l	a0,-(a7)
	jsr	(L0044ce)
	movea.l	(a7)+,a0
L019fc6:
	cmpi.w	#$0009,(L0472ee)
	bne	L019fe2
	move.l	(L047fc4),d0
	sub.l	d0,(L047112)
	sub.l	d0,(L04711a)
L019fe2:
	rts

L019fe4:
	jsr	(L0298a6)
	bcs	L01a074
	move.w	#$0078,($0000.w,a0)
	ori.w	#$0100,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c450,($0014,a0)
	clr.w	($0022,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	asl.w	#7,d0
	move.w	d0,($0020,a0)
	lea.l	(L047fc0),a1
	lea.l	(a1,d0.w),a1
	move.l	#$00010000,d0
	move.w	#$001f,d1
L01a048:
	move.l	d0,(a1)+
	dbra	d1,L01a048
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	#$0001,(a1,d0.w)
	cmpi.w	#$0010,(L04731e)
	beq	L01a074
	move.w	#$0010,(L04731e)
L01a074:
	rts

L01a076:
	jsr	(L01024e)
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01a090
	jmp	(L029cca)

L01a090:
	jsr	(L025416)
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L01a0a4,pc,d0.w),d0
	jmp	(L01a0a4,pc,d0.w)

L01a0a4:
	.dc.w	L01a0ac-L01a0a4
	.dc.w	L01a19c-L01a0a4
	.dc.w	L01a1ea-L01a0a4
	.dc.w	L01a220-L01a0a4

L01a0ac:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	move.w	d0,d1
	bpl	L01a0bc
	neg.w	d0
L01a0bc:
	cmpi.w	#$0018,d0
	bcc	L01a0de
	neg.w	d0
	addi.w	#$0018,d0
	swap.w	d0
	asr.l	#4,d0
	tst.w	d1
	bpl	L01a0d8
	sub.l	d0,(L0473f4)
	bra	L01a0de
L01a0d8:
	add.l	d0,(L0473f4)
L01a0de:
	move.w	($0022,a0),d0
	beq	L01a0f0
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	clr.b	($001a,a0)
	bra	L01a108
L01a0f0:
	move.b	($001a,a0),d0
	andi.b	#$3f,d0
	cmpi.b	#$02,d0
	bcs	L01a148
	move.w	#$0020,($0022,a0)
	moveq.l	#$2a,d0
	trap	#0
L01a108:
	move.w	($0020,a0),d0
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a11a:
	jsr	(L01024e)
	andi.l	#$000000ff,d0
	neg.l	d0
	add.l	(a5),d0
	move.l	d0,(a5)+
	cmpi.l	#$0000a000,d0
	bcc	L01a142
	move.w	#$0001,($001c,a0)
	clr.b	($0002,a0)
	moveq.l	#$2b,d0
	trap	#0
L01a142:
	dbra	d7,L01a11a
	bra	L01a186
L01a148:
	move.w	($0020,a0),d0
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
	jsr	(L01024e)
	andi.l	#$0000007f,d0
	move.l	(a5),d1
	add.l	d0,d1
	cmpi.l	#$00010000,d1
	bcs	L01a180
L01a172:
	jsr	(L01024e)
	andi.l	#$000000ff,d0
	sub.l	d0,d1
L01a180:
	move.l	d1,(a5)+
	dbra	d7,L01a172
L01a186:
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	#$0001,(a1,d0.w)
	rts

L01a19c:
	move.w	($0020,a0),d0
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a1ae:
	jsr	(L01024e)
	andi.l	#$000000ff,d0
	add.l	d0,d0
	neg.l	d0
	add.l	(a5),d0
	move.l	d0,(a5)+
	cmpi.l	#$00002000,d0
	bcc	L01a1d0
	move.w	#$0002,($001c,a0)
L01a1d0:
	dbra	d7,L01a1ae
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	#$0002,(a1,d0.w)
	rts

L01a1ea:
	move.w	($0020,a0),d0
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a1fc:
	jsr	(L01024e)
	andi.l	#$000000ff,d0
	add.l	(a5),d0
	move.l	d0,(a5)+
	cmpi.l	#$00017000,d0
	bcs	L01a21a
	move.w	#$0003,($001c,a0)
L01a21a:
	dbra	d7,L01a1fc
	bra	L01a24a
L01a220:
	move.w	($0020,a0),d0
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a232:
	jsr	(L01024e)
	andi.l	#$00001fff,d0
	add.l	#$00015000,d0
	move.l	d0,(a5)+
	dbra	d7,L01a232
L01a24a:
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	#$0003,(a1,d0.w)
	rts

L01a260:
	cmpi.w	#$0002,d1
	beq	L01a29c
	bcc	L01a324
	lea.l	($00c58301),a3
	lea.l	($00c10281),a4
	lea.l	(a4,d0.w),a4
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a288:
	move.l	(a5)+,d0
	movea.l	a3,a1
	movea.l	a4,a2
	bsr	L01a3a0
	addq.w	#2,a3
	addq.w	#2,a4
	dbra	d7,L01a288
	rts

L01a29c:
	move.w	d0,-(a7)
	lea.l	($00c48341),a3
	lea.l	($00c10281),a4
	lea.l	(a4,d0.w),a4
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a2bc:
	move.l	(a5)+,d0
	add.l	d0,d0
	neg.l	d0
	add.l	#$00024100,d0
	movea.l	a3,a1
	movea.l	a4,a2
	move.w	#$000f,d3
	moveq.l	#$00,d1
	bsr	L01a3a8
	addq.w	#2,a3
	addq.w	#2,a4
	dbra	d7,L01a2bc
	move.w	(a7)+,d0
	lea.l	($00c68381),a3
	lea.l	($00c20281),a4
	lea.l	(a4,d0.w),a4
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a2fe:
	move.l	(a5)+,d0
	add.l	d0,d0
	neg.l	d0
	add.l	#$00024100,d0
	movea.l	a3,a1
	movea.l	a4,a2
	move.w	#$000f,d3
	move.l	d0,d1
	neg.l	d1
	bsr	L01a3a8
	addq.w	#2,a3
	addq.w	#2,a4
	dbra	d7,L01a2fe
	rts

L01a324:
	move.w	d0,-(a7)
	lea.l	($00c483c1),a3
	lea.l	($00c10281),a4
	lea.l	(a4,d0.w),a4
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a344:
	move.l	(a5)+,d0
	add.l	#$00005000,d0
	movea.l	a3,a1
	movea.l	a4,a2
	move.w	#$000f,d3
	moveq.l	#$00,d1
	bsr	L01a3a8
	addq.w	#2,a3
	addq.w	#2,a4
	dbra	d7,L01a344
	move.w	(a7)+,d0
	lea.l	($00c783c1),a3
	lea.l	($00c20281),a4
	lea.l	(a4,d0.w),a4
	lea.l	(L047fc0),a5
	lea.l	(a5,d0.w),a5
	move.w	#$001f,d7
L01a380:
	move.l	(a5)+,d0
	add.l	#$00005000,d0
	movea.l	a3,a1
	movea.l	a4,a2
	move.w	#$000f,d3
	move.l	d0,d1
	neg.l	d1
	bsr	L01a3a8
	addq.w	#2,a3
	addq.w	#2,a4
	dbra	d7,L01a380
	rts

L01a3a0:
	move.w	#$001f,d3
	move.l	d0,d1
	neg.l	d1
L01a3a8:
	asr.l	#6,d0
	move.w	#$fc00,d4
L01a3ae:
	move.l	d1,d2
	and.w	d4,d2
	move.b	(a1,d2.l),(a2)
	lea.l	($0400,a2),a2
	add.l	d0,d1
	move.l	d1,d2
	and.w	d4,d2
	move.b	(a1,d2.l),(a2)
	lea.l	($0400,a2),a2
	add.l	d0,d1
	move.l	d1,d2
	and.w	d4,d2
	move.b	(a1,d2.l),(a2)
	lea.l	($0400,a2),a2
	add.l	d0,d1
	move.l	d1,d2
	and.w	d4,d2
	move.b	(a1,d2.l),(a2)
	lea.l	($0400,a2),a2
	add.l	d0,d1
	dbra	d3,L01a3ae
	rts

L01a3ec:
	jsr	(L0298e2)
	bcc	L01a3fa
	lea.l	(L047ae0),a0
L01a3fa:
	move.w	#$0058,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	rts

L01a428:
	lea.l	(L0473f0),a1
	move.l	($0008,a1),d0
	cmp.l	($0008,a0),d0
	bcs	L01a46c
	addi.l	#$00008000,d0
	move.l	d0,($0008,a1)
	bset.b	#$07,($0002,a1)
	cmpi.b	#$02,($001d,a1)
	bne	L01a46c
	tst.w	($0018,a1)
	bmi	L01a460
	addi.l	#$00008000,($0004,a1)
	bra	L01a46c
L01a460:
	subi.l	#$00008000,($0004,a1)
	bra.w	L01a46c
L01a46c:
	lea.l	(L047450),a1
L01a472:
	tst.w	($0000.w,a1)
	beq	L01a4a2
	btst.b	#$06,($0002,a1)
	beq	L01a4a2
	btst.b	#$00,($0002,a1)
	beq	L01a4a2
	move.l	($0008,a1),d0
	cmp.l	($0008,a0),d0
	bcs	L01a4a2
	addi.l	#$00008000,d0
	move.l	d0,($0008,a1)
	bset.b	#$07,($0002,a1)
L01a4a2:
	lea.l	($0030,a1),a1
	cmpa.l	#L047f60,a1
	bne	L01a472
	rts

L01a4b0:
	jsr	(L0298a6)
	bcs	L01a4f6
	move.w	#$0062,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$000c,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	move.w	d0,($0020,a0)
	clr.w	($0022,a0)
	clr.w	($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L073510,($0014,a0)
L01a4f6:
	rts

L01a4f8:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01a50c
	jmp	(L029cca)

L01a50c:
	tst.w	($0022,a0)
	beq	L01a52c
	subq.w	#1,($0022,a0)
	bne	L01a524
	move.b	#$00,($001a,a0)
	move.b	#$03,($0002,a0)
L01a524:
	jsr	(L025416)
	rts

L01a52c:
	jsr	(L029a3e)
	bcc	L01a546
	beq	L01a5f2
	moveq.l	#$31,d0
	trap	#0
	move.w	#$0010,($0022,a0)
	clr.b	($0002,a0)
L01a546:
	cmpi.w	#$0001,($001c,a0)
	beq	L01a582
	bcc	L01a5e4
	tst.w	(L047fac)
	bne	L01a5f0
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	cmp.w	($0020,a0),d0
	bne	L01a5f0
	addq.w	#1,($001c,a0)
	ori.w	#$0300,($0002,a0)
	clr.w	($001e,a0)
	moveq.l	#$20,d0
	trap	#0
	bra	L01a5f0
L01a582:
	tst.w	(L047fac)
	bne	L01a5b2
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.b	(L01a5ba,pc,d0.w),d0
	andi.w	#$00ff,d0
	cmpi.w	#$00ff,d0
	beq	L01a5d2
	tst.w	($0020,a0)
	bpl	L01a5ae
	ori.w	#$8000,d0
L01a5ae:
	move.w	d0,($0018,a0)
L01a5b2:
	jsr	(L025416)
	bra	L01a5f0

L01a5ba:
	.dc.b	$00,$01,$02,$03,$04,$05,$06,$07
	.dc.b	$06,$07,$06,$07,$06,$07,$06,$07
	.dc.b	$06,$05,$04,$03,$02,$01,$00,$ff

L01a5d2:
	andi.w	#$fcff,($0002,a0)
	addq.w	#1,($001c,a0)
	move.w	#$0020,($001e,a0)
	bra	L01a5f0
L01a5e4:
	subq.w	#1,($001e,a0)
	bne	L01a5f0
	move.w	#$0000,($001c,a0)
L01a5f0:
	rts

L01a5f2:
	tst.w	($0020,a0)
	bmi	L01a600
	subi.w	#$0010,($0004,a0)
	bra	L01a606
L01a600:
	addi.w	#$0010,($0004,a0)
L01a606:
	move.w	#$1f0f,d0
	jsr	(L029bac)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01a630
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	#$1f0f,d0
	jsr	(L029bac)
L01a630:
	movea.l	a1,a0
	moveq.l	#$37,d0
	trap	#0
	rts

L01a638:
	cmp.b	($0005,a6),d1
	bne	L01a6d6
	cmpi.w	#$0009,(L04731e)
	beq	L01a6d6
	jsr	(L0298e2)
	bcs	L01a6d6
	move.w	#$0063,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	addi.l	#$00400000,d2
	tst.b	($0005,a6)
	beq	L01a67e
	subi.l	#$00800000,d2
L01a67e:
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0020,a0)
	clr.l	($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	lea.l	(L05bbdc),a1
	move.w	#$0fff,d1
	moveq.l	#$00,d0
L01a6a8:
	move.l	d0,(a1)+
	dbra	d1,L01a6a8
	lea.l	(L047fc0),a1
	move.w	#$007f,d1
L01a6b8:
	move.l	d0,(a1)+
	dbra	d1,L01a6b8
	move.w	#$0000,(L047322)
	move.w	#$0000,(L047324)
	move.w	#$0009,(L04731e)
L01a6d6:
	rts

L01a6d8:
	move.w	#$01ff,d0
	lea.l	(L05bbe0),a1
	move.l	#$00040000,d2
L01a6e8:
	tst.w	(a1)
	beq	L01a6f4
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a6f4:
	addq.w	#8,a1
	tst.w	(a1)
	beq	L01a702
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a702:
	addq.w	#8,a1
	tst.w	(a1)
	beq	L01a710
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a710:
	addq.w	#8,a1
	tst.w	(a1)
	beq	L01a71e
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a71e:
	addq.w	#8,a1
	dbra	d0,L01a6e8
	move.w	#$0000,(L04731e)
	jmp	(L029cca)

L01a732:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcs	L01a6d8
	addi.w	#$0040,($0022,a0)
	jsr	(L01024e)
	andi.w	#$0003,d0
	bne	L01a7aa
	move.b	($0020,a0),d0
	addq.b	#8,d0
	move.b	d0,($0020,a0)
	andi.w	#$00ff,d0
	lea.l	(L047fc0),a1
	lea.l	(a1,d0.w),a1
	tst.w	(a1)
	bne	L01a7aa
	move.w	#$8000,($0000.w,a1)
	move.w	#$7800,($0002,a1)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	bne	L01a78e
	move.w	#$0001,d0
L01a78e:
	move.w	d0,($0004,a1)
	move.b	($0022,a0),d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	subi.w	#$4000,d0
	asr.w	#7,d0
	move.w	d0,($0006,a1)
L01a7aa:
	jsr	(L01024e)
	andi.w	#$0001,d0
	bne	L01a840
	move.b	($0021,a0),d0
	addq.b	#8,d0
	move.b	d0,($0021,a0)
	andi.w	#$00ff,d0
	lea.l	(L0480c0),a1
	lea.l	(a1,d0.w),a1
	tst.w	(a1)
	bne	L01a840
	move.w	#$4a00,($0000.w,a1)
	move.w	#$9800,($0002,a1)
	move.b	($0022,a0),d0
	add.w	#$0080,d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	subi.w	#$4000,d0
	asr.w	#7,d0
	move.w	d0,d1
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	add.w	d1,d0
	neg.w	d0
	asr.w	#1,d0
	bne	L01a814
	move.w	#$0001,d0
L01a814:
	move.w	d0,($0004,a1)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$0010,d0
	add.w	d1,d0
	move.w	d0,($0006,a1)
	jsr	(L01024e)
	ror.w	#1,d0
	bcs	L01a840
	addi.w	#$6c00,($0000.w,a1)
	neg.w	($0004,a1)
L01a840:
	rts

L01a842:
	move.w	(L047322),d0
	addq.w	#1,d0
	andi.w	#$001f,d0
	move.w	d0,(L047322)
	add.w	d0,d0
	lea.l	($00e82180),a1
	lea.l	(L0730a4),a2
	lea.l	(L0730e4),a3
	move.w	#$001f,d1
L01a86c:
	move.w	(a2)+,(a1,d0.w)
	move.w	(a3)+,($40,a1,d0.w)
	subq.w	#2,d0
	andi.w	#$003f,d0
	dbra	d1,L01a86c
	lea.l	(L047fc0),a1
	move.w	#$003f,d7
L01a888:
	move.w	($0004,a1),d0
	beq	L01a90a
	move.w	($0006,a1),d1
	addq.w	#4,d1
	move.w	d1,($0006,a1)
	add.w	d0,(a1)
	add.w	d1,($0002,a1)
	moveq.l	#$00,d0
	move.b	(a1),d0
	moveq.l	#$00,d1
	move.b	($0002,a1),d1
	cmpi.b	#$b0,d1
	bcc	L01a8b6
	cmpi.b	#$a8,d1
	bcc	L01a902
	bra	L01a8bc
L01a8b6:
	cmpi.b	#$c8,d1
	bcc	L01a902
L01a8bc:
	add.w	d1,d1
	asl.l	#8,d1
	add.l	d0,d1
	add.l	d1,d1
	add.l	#$00c00000,d1
	move.w	(L047324),d0
	addq.w	#8,d0
	andi.w	#$3fff,d0
	move.w	d0,(L047324)
	lea.l	(L05bbdc),a2
	move.l	d1,(a2,d0.w)
	move.w	#$001c,($04,a2,d0.w)
	movea.l	d1,a2
	move.w	d7,d0
	andi.w	#$0020,d0
	add.w	(L047322),d0
	add.w	#$00c0,d0
	move.w	d0,(a2)
	bra	L01a90a
L01a902:
	clr.l	($0000.w,a1)
	clr.l	($0004,a1)
L01a90a:
	addq.w	#8,a1
	dbra	d7,L01a888
	move.w	#$01ff,d0
	lea.l	(L05bbe0),a1
	move.l	#$00040000,d2
L01a920:
	move.w	(a1),d1
	beq	L01a932
	subq.w	#1,d1
	move.w	d1,(a1)
	bne	L01a932
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a932:
	addq.w	#8,a1
	move.w	(a1),d1
	beq	L01a946
	subq.w	#1,d1
	move.w	d1,(a1)
	bne	L01a946
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a946:
	addq.w	#8,a1
	move.w	(a1),d1
	beq	L01a95a
	subq.w	#1,d1
	move.w	d1,(a1)
	bne	L01a95a
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a95a:
	addq.w	#8,a1
	move.w	(a1),d1
	beq	L01a96e
	subq.w	#1,d1
	move.w	d1,(a1)
	bne	L01a96e
	movea.l	(-$0004,a1),a2
	move.w	(a2,d2.l),(a2)
L01a96e:
	addq.w	#8,a1
	dbra	d0,L01a920
	rts

L01a976:
	jsr	(L029842)
	bcs	L01a9ee
	move.w	#$0068,($0000.w,a0)
	ori.w	#$0100,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0020,a0)
	clr.l	($0024,a0)
	move.w	($0008,a0),d1
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0028,a0)
	subq.w	#1,d0
	move.w	#$0000,d2
L01a9be:
	move.w	d1,($20,a0,d2.w)
	addi.w	#$0010,d1
	addq.w	#2,d2
	dbra	d0,L01a9be
	clr.w	($002a,a0)
	move.b	($0006,a6),d0
	andi.w	#$0001,d0
	move.w	d0,($001e,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	move.l	a6,($002c,a0)
L01a9ee:
	rts

L01a9f0:
	jsr	(L02993c)
	cmpi.w	#$0700,(L047f7a)
	bcs	L01aa06
	jmp	(L029cca)

L01aa06:
	move.w	($001e,a0),d0
	beq	L01aa18
	addq.w	#1,d0
	cmpi.w	#$0500,d0
	bcc	L01aa30
	move.w	d0,($001e,a0)
L01aa18:
	btst.b	#$06,($001a,a0)
	beq	L01aa28
	clr.b	($001a,a0)
	bra	L01ab00
L01aa28:
	tst.b	($001a,a0)
	beq	L01ab00
L01aa30:
	moveq.l	#$4e,d0
	trap	#0
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L017f3c)
	lea.l	($00e50000),a6
	move.w	#$0000,d1
	move.w	d1,(a6,d0.l)
	move.w	d1,($02,a6,d0.l)
	move.w	d1,($08,a6,d0.l)
	move.w	d1,($0a,a6,d0.l)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	bsr	L017fec
	lea.l	($00c00001),a6
	lea.l	(a6,d0.l),a6
	jsr	(L01800e)
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L01aae6
	bsr	L01ab32
	move.l	#$ffffc000,($000c,a0)
	move.l	#$fffc8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L01aae6
	bsr	L01ab32
	move.l	#$00004000,($000c,a0)
	move.l	#$fffd0000,($0010,a0)
	jsr	(L0298a6)
	bcs	L01aae6
	bsr	L01ab32
	move.l	#$ffffc000,($000c,a0)
	move.l	#$ffff8000,($0010,a0)
	jsr	(L0298a6)
	bcs	L01aae6
	bsr	L01ab32
	move.l	#$00004000,($000c,a0)
	move.l	#$ffffc000,($0010,a0)
L01aae6:
	jsr	(L039730)
	movea.l	a2,a0
	move.w	($002a,a0),d0
	add.w	d0,d0
	move.w	#$0000,($20,a0,d0.w)
	subq.w	#1,($0028,a0)
	beq	L01ab22
L01ab00:
	move.w	($002a,a0),d0
L01ab04:
	addq.w	#1,d0
	andi.w	#$0003,d0
	move.w	d0,d1
	add.w	d1,d1
	move.w	($20,a0,d1.w),d2
	beq	L01ab04
	move.w	d0,($002a,a0)
	move.w	d2,($0008,a0)
	clr.b	($001a,a0)
	rts

L01ab22:
	movea.l	($002c,a0),a1
	ori.w	#$8000,($0002,a1)
	jmp	(L029cca)

L01ab32:
	move.w	#$0029,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	($0004,a2),($0004,a0)
	move.w	($0008,a2),($0008,a0)
	move.w	#$0002,($001c,a0)
	move.l	#L0738a0,($0014,a0)
	jsr	(L01024e)
	andi.w	#$0003,d0
	cmpi.w	#$0003,d0
	bne	L01ab6c
	move.w	#$0000,d0
L01ab6c:
	move.w	d0,($0018,a0)
	rts

L01ab72:
	jsr	(L0298e2)
	bcs	L01abc8
	move.w	#$006b,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	subi.l	#$00010000,d3
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	clr.l	($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
L01abc8:
	rts

L01abca:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01abde
	jmp	(L029cca)

L01abde:
	move.w	#$000e,d2
	move.w	#$0014,d3
	tst.w	($0022,a0)
	beq	L01abf0
	add.w	d2,d2
	add.w	d3,d3
L01abf0:
	tst.w	($0020,a0)
	bne	L01ac3e
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	neg.w	d2
	cmp.w	d2,d0
	ble	L01ac92
	cmp.w	d3,d0
	bge	L01ac92
	asr.w	#1,d0
	add.w	($0008,a0),d0
	subi.w	#$001c,d0
	sub.w	(L0473f8),d0
	bpl	L01ac92
	cmpi.w	#$fff0,d0
	blt	L01ac92
	add.w	(L0473f8),d0
	addi.w	#$0002.w,d0
	move.w	d0,(L0473f8)
	move.l	#$0000c000,d0
	bra	L01ac82
L01ac3e:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	neg.w	d3
	cmp.w	d3,d0
	ble	L01ac92
	cmp.w	d2,d0
	bge	L01ac92
	asr.w	#1,d0
	neg.w	d0
	add.w	($0008,a0),d0
	subi.w	#$001d,d0
	sub.w	(L0473f8),d0
	bpl	L01ac92
	cmpi.w	#$fff0,d0
	blt	L01ac92
	add.w	(L0473f8),d0
	addi.w	#$0002.w,d0
	move.w	d0,(L0473f8)
	move.l	#$ffff4000,d0
L01ac82:
	bset.b	#$07,(L0473f2)
	add.l	d0,(L0473f4)
	rts

L01ac92:
	rts

L01ac94:
	jsr	(L0298a6)
	bcs	L01acda
	move.w	#$006d,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	move.w	(L047354),d0
	asl.w	#3,d0
	addq.w	#8,d0
	move.w	d0,($0020,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
L01acda:
	rts

L01acdc:
	tst.w	($001c,a0)
	bne	L01ada6
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01acf8
	jmp	(L029cca)

L01acf8:
	movea.l	a0,a1
	tst.w	($0020,a1)
	beq	L01ad92
	tst.w	(L047fac)
	bne	L01ad92
	jsr	(L01024e)
	andi.w	#$001f,d0
	bne	L01ad92
	lea.l	(L047960),a0
	jsr	(L0298ac)
	bcs	L01ad92
	subq.w	#1,($0020,a1)
	move.w	#$006d,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0003,($001a,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	addq.w	#1,d0
	move.w	d0,($001c,a0)
	subq.w	#1,d0
	asl.w	#1,d0
	move.w	(L01ad96,pc,d0.w),d0
	add.w	($0004,a1),d0
	move.w	d0,($0004,a0)
	move.w	($0008,a1),d0
	move.w	d0,($0008,a0)
	move.l	#$fffc0000,($0010,a0)
	move.l	#$00000000,($000c,a0)
	move.w	#$0020,($0020,a0)
	move.w	#$0030,($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L073610,($0014,a0)
	moveq.l	#$2c,d0
	trap	#0
L01ad92:
	movea.l	a1,a0
	rts

L01ad96:
	.dc.w	$ff88,$ffc6,$ffda,$ffe8
	.dc.w	$0018,$0038,$0058,$0078

L01ada6:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01adba
	jmp	(L029cca)

L01adba:
	jsr	(L029a3e)
	bcc	L01adca
	beq	L01af76
	moveq.l	#$31,d0
	trap	#0
L01adca:
	cmpi.w	#$000b,($001c,a0)
	bcc	L01afcc
	tst.w	(L047fac)
	bne	L01af6e
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$001f,d0
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	move.w	d0,($0018,a0)
	cmpi.w	#$0009,($001c,a0)
	beq	L01ae32
	bcc	L01aeaa
	addi.l	#$00002000,($0010,a0)
	move.w	($001c,a0),d0
	subi.w	#$0001.w,d0
	move.w	($0004,a0),d1
	move.w	#$00d0,d2
	lea.l	(L0736c8),a5
	jsr	(L025426)
L01ae32:
	jsr	(L025416)
	tst.w	($0024,a0)
	beq	L01ae44
	subq.w	#1,($0024,a0)
	bra	L01ae92
L01ae44:
	jsr	(L01024e)
	andi.w	#$00ff,d0
	beq	L01af24
	lea.l	(L047420),a1
	move.w	#$0003,d7
L01ae5c:
	tst.w	($0000.w,a1)
	beq	L01ae8a
	move.w	($0004,a1),d0
	sub.w	($0004,a0),d0
	bpl	L01ae6e
	neg.w	d0
L01ae6e:
	cmpi.w	#$0030,d0
	bcc	L01ae8a
	move.w	($0008,a1),d0
	sub.w	($0008,a0),d0
	bpl	L01ae80
	neg.w	d0
L01ae80:
	cmpi.w	#$0020,d0
	bcc	L01ae8a
	bra	L01af24
L01ae8a:
	lea.l	($0030,a1),a1
	dbra	d7,L01ae5c
L01ae92:
	subq.w	#1,($0020,a0)
	bne	L01aea8
	bsr	L01affe
	move.w	#$0009,($001c,a0)
	move.w	#$0300,($0002,a0)
L01aea8:
	rts

L01aeaa:
	move.w	($0020,a0),d0
	add.w	($0022,a0),d0
	move.w	d0,($0020,a0)
	lsr.w	#1,d0
	move.w	d0,($0018,a0)
	tst.w	($0022,a0)
	bmi	L01aee0
	cmpi.w	#$000d,($0020,a0)
	beq	L01aefe
	cmpi.w	#$0008,($0020,a0)
	bne	L01aed8
	addi.w	#$0020,($0008,a0)
L01aed8:
	jsr	(L025416)
	rts

L01aee0:
	cmpi.w	#$0000,($0020,a0)
	beq	L01aefe
	cmpi.w	#$0007,($0020,a0)
	bne	L01aef6
	subi.w	#$0020,($0008,a0)
L01aef6:
	jsr	(L025416)
	rts

L01aefe:
	move.w	#$0009,($001c,a0)
	bsr	L01affe
	move.l	#L073610,($0014,a0)
	move.w	#$0000,($0018,a0)
	jsr	(L025416)
	move.w	#$0080,($0024,a0)
	rts

L01af24:
	move.w	#$000a,($001c,a0)
	jsr	(L01024e)
	andi.w	#$0001,d0
	beq	L01af44
	move.w	#$0000,($0020,a0)
	move.w	#$0001,($0022,a0)
	bra	L01af50
L01af44:
	move.w	#$000d,($0020,a0)
	move.w	#$ffff,($0022,a0)
L01af50:
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L073690,($0014,a0)
	move.w	#$0000,($0018,a0)
	jsr	(L025416)
	rts

L01af6e:
	jsr	(L025416)
	rts

L01af76:
	moveq.l	#$2d,d0
	trap	#0
	move.l	#L073768,($0014,a0)
	move.w	#$0000,($0018,a0)
	move.w	#$0001,d0
	swap.w	d0
	jsr	(L01024e)
	tst.b	($001a,a0)
	bpl	L01af9c
	neg.l	d0
L01af9c:
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	move.l	d0,($0010,a0)
	move.w	#$000b,($001c,a0)
	move.w	#$0020,($001e,a0)
	jsr	(L025416)
	move.w	($0000.w,a0),d0
	jsr	(L029afe)
	rts

L01afcc:
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	subq.w	#1,($001e,a0)
	bne	L01afe8
	jmp	(L029cca)

L01afe8:
	jsr	(L01024e)
	andi.w	#$8000,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01affe:
	jsr	(L01026c)
	move.w	d0,d1
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	add.w	d1,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	add.l	d0,d0
	add.l	d1,d1
	btst.b	#$00,(L0472f6)
	beq	L01b032
	add.l	d0,d0
	add.l	d1,d1
L01b032:
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	add.w	#$0040,d0
	move.w	d0,($0020,a0)
	rts

L01b04e:
	jsr	(L029842)
	bcs	L01b08e
	move.w	#$0070,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	clr.w	($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L073890,($0014,a0)
L01b08e:
	rts

L01b090:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01b0a4
	jmp	(L029cca)

L01b0a4:
	bsr	L01b22a
	move.w	(L0473f8),d0
	add.w	#$0016,d0
	cmp.w	($0008,a0),d0
	bcs	L01b0f4
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01b0c6
	neg.w	d0
L01b0c6:
	cmpi.w	#$0020,d0
	bcc	L01b0f4
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bpl	L01b0de
	add.w	#$0021,d0
	bra	L01b0e2
L01b0de:
	sub.w	#$0021,d0
L01b0e2:
	move.w	d0,(L0473f4)
	clr.w	(L0473f6)
	clr.l	(L047fa6)
L01b0f4:
	move.w	(L0473f8),d0
	add.w	#$0018,d0
	sub.w	($0008,a0),d0
	bpl	L01b106
	neg.w	d0
L01b106:
	cmpi.w	#$0008,d0
	bcc	L01b13c
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01b11a
	neg.w	d0
L01b11a:
	cmpi.w	#$0020,d0
	bcc	L01b13c
	move.w	($0008,a0),d0
	subi.w	#$0018,d0
	move.w	d0,(L0473f8)
	bset.b	#$07,(L0473f2)
	move.w	#$0001,d1
	bra	L01b140
L01b13c:
	move.w	#$0000,d1
L01b140:
	cmpi.w	#$0001,($001c,a0)
	beq	L01b170
	bcc	L01b206
	tst.w	d1
	beq	L01b228
	addq.w	#4,($0008,a0)
	addq.w	#4,(L0473f8)
	move.w	#$0001,($001c,a0)
	move.w	#$fffe,($0010,a0)
	moveq.l	#$4d,d0
	trap	#0
	bra	L01b228
L01b170:
	tst.w	d1
	beq	L01b17e
	move.w	($0010,a0),d0
	add.w	d0,(L0473f8)
L01b17e:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01b1d8
	move.w	#$0029,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	($0004,a1),($0004,a0)
	subi.w	#$0018,($0004,a0)
	move.w	#$00e0,($0008,a0)
	move.w	#$0002,($001c,a0)
	move.l	#L0738a0,($0014,a0)
	move.w	#$0002,($0018,a0)
	jsr	(L01024e)
	andi.l	#$00007fff,d0
	sub.l	#$00008000,d0
	move.l	d0,($000c,a0)
	move.l	#$ffff8000,($0010,a0)
L01b1d8:
	movea.l	a1,a0
	move.w	($0008,a0),d0
	add.w	($0010,a0),d0
	move.w	d0,($0008,a0)
	cmpi.w	#$0070,d0
	bcc	L01b228
	addi.l	#$00002000,($0010,a0)
	bmi	L01b228
	move.l	#$00008000,($0010,a0)
	move.w	#$0002,($001c,a0)
	bra	L01b228
L01b206:
	move.l	($0008,a0),d0
	add.l	($0010,a0),d0
	move.l	d0,($0008,a0)
	swap.w	d0
	cmpi.w	#$00b8,d0
	bcs	L01b228
	move.w	#$0000,($001c,a0)
	clr.l	($0010,a0)
	bra.w	L01b228
L01b228:
	rts

L01b22a:
	movea.l	($0014,a0),a5
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	addq.w	#8,d2
	move.w	d1,d5
	move.w	d2,d6
	move.w	#$0000,d0
	jsr	(L025426)
L01b246:
	movea.l	($0014,a0),a5
	add.w	#$0010,d6
	cmpi.w	#$0110,d6
	bcc	L01b264
	move.w	d5,d1
	move.w	d6,d2
	move.w	#$0001,d0
	jsr	(L025426)
	bra	L01b246
L01b264:
	rts

L01b266:
	jsr	(L0298a6)
	bcs	L01b2b0
	move.w	#$0071,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	move.w	#$000c,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	move.w	#$0b00,($0022,a0)
	clr.w	($0020,a0)
	clr.w	($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L073848,($0014,a0)
L01b2b0:
	rts

L01b2b2:
	moveq.l	#$3d,d0
	trap	#0
	move.l	#$00001000,d0
	jsr	(L029a68)
	movea.l	a0,a1
	move.w	($0004,a1),d1
	move.w	($0008,a1),d2
L01b2cc:
	jsr	(L0298a6)
	bcs	L01b2f2
	move.w	d1,($0004,a0)
	move.w	d2,($0008,a0)
	move.w	#$1f1f,d0
	jsr	(L029bac)
	addi.w	#$0010,d2
	cmpi.w	#$0100,d2
	bcc	L01b2f2
	bra	L01b2cc
L01b2f2:
	movea.l	a1,a0
	jmp	(L029cca)

L01b2fa:
	move.w	($0020,a0),d0
	beq	L01b324
	subq.w	#1,d0
	move.w	d0,($0020,a0)
	bne	L01b312
	clr.b	($001a,a0)
	move.b	#$03,($0002,a0)
L01b312:
	move.w	($0022,a0),d0
	cmpi.w	#$1000,d0
	bcc	L01b324
	addi.w	#$0010,d0
	move.w	d0,($0022,a0)
L01b324:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01b338
	jmp	(L029cca)

L01b338:
	jsr	(L029a3e)
	bcc	L01b370
	beq	L01b2b2
	moveq.l	#$31,d0
	trap	#0
	move.w	#$0010,($0020,a0)
	clr.b	($0002,a0)
	tst.w	(L047fac)
	bne	L01b370
	move.w	($0022,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$0800,d0
	bcc	L01b36c
	move.w	#$0800,d0
L01b36c:
	move.w	d0,($0022,a0)
L01b370:
	tst.w	(L047fac)
	bne	L01b400
	addq.w	#1,($0024,a0)
	move.w	($001c,a0),d0
	beq	L01b38e
	cmpi.w	#$0002,d0
	beq	L01b3c4
	bcc	L01b3f0
	bra	L01b3aa
L01b38e:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01b39c
	neg.w	d0
L01b39c:
	cmpi.w	#$002c,d0
	bcc	L01b400
	move.w	#$0001,($001c,a0)
	bra	L01b400
L01b3aa:
	move.w	($0022,a0),d0
	addi.w	#$0040,d0
	move.w	d0,($0022,a0)
	cmpi.w	#$1200,d0
	bcs	L01b400
	move.w	#$0002,($001c,a0)
	bra	L01b400
L01b3c4:
	move.w	($0022,a0),d0
	subi.w	#$0010,d0
	move.w	d0,($0022,a0)
	cmpi.w	#$0b00,d0
	bcc	L01b400
	move.w	#$0003,($001c,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	addi.w	#$0004.w,d0
	move.w	d0,($001e,a0)
	bra	L01b400
L01b3f0:
	subq.w	#1,($001e,a0)
	bne	L01b400
	move.w	#$0000,($001c,a0)
	bra.w	L01b400
L01b400:
	move.w	($0022,a0),d5
	subi.w	#$0800,d5
	lsr.w	#6,d5
	neg.w	d5
	swap.w	d5
	add.l	#$01400000,d5
	move.w	($0024,a0),d6
	add.w	d6,d6
	andi.w	#$00ff,d6
	move.w	#$0009,d7
L01b422:
	add.b	#$20,d6
	move.w	d6,d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#4,d0
	sub.l	d0,d5
	move.w	($0022,a0),d0
	ext.l	d0
	asl.l	#8,d0
	sub.l	d0,d5
	move.w	($0004,a0),d1
	swap.w	d5
	move.w	d5,d2
	swap.w	d5
	move.w	($001c,a0),d0
	beq	L01b460
	cmpi.w	#$0003,d0
	beq	L01b460
	move.w	($0024,a0),d0
	lsr.w	#2,d0
	andi.w	#$0003,d0
	bra	L01b46e
L01b460:
	move.w	($0024,a0),d0
	lsr.w	#3,d0
	andi.w	#$0001,d0
	addi.w	#$0002.w,d0
L01b46e:
	lea.l	(L073868),a5
	jsr	(L025426)
	dbra	d7,L01b422
	add.b	#$20,d6
	move.w	d6,d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#4,d0
	sub.l	d0,d5
	move.w	($0022,a0),d0
	ext.l	d0
	asl.l	#8,d0
	sub.l	d0,d5
	move.w	($0004,a0),d1
	swap.w	d5
	move.w	d5,d2
	move.w	d2,($0008,a0)
	lea.l	(L073848),a5
	move.w	($0022,a0),d0
	subi.w	#$0800,d0
	lsr.w	#8,d0
	add.w	d0,d0
	move.w	(L01b4c8,pc,d0.w),d0
	move.w	d0,($0018,a0)
	jsr	(L025426)
	rts

L01b4c8:
	.dc.w	$0000,$0000,$0000,$0001
	.dc.w	$0001,$0001,$0002,$0002
	.dc.w	$0002,$0003,$0003

L01b4de:
	jsr	(L0298e2)
	bcs	L01b582
	movea.l	a0,a1
	move.w	#$0060,($0000.w,a1)
	jsr	(L0298e2)
	bcs	L01b57e
	ori.w	#$0200,d0
	move.w	d0,($0002,a1)
	move.w	#$00ff,($001a,a1)
	jsr	(L029cd4)
	move.l	d2,($0004,a1)
	move.l	d3,($0008,a1)
	move.w	#$0011,($0010,a1)
	move.w	#$0002,($0012,a1)
	clr.w	($001c,a1)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a1)
	clr.w	($001e,a1)
	move.w	#$0000,($0018,a1)
	move.l	#L076a96,($0014,a1)
	move.l	a0,($002c,a1)
	move.w	#$0060,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L076a96,($0014,a0)
	rts

L01b57e:
	clr.w	($0000.w,a1)
L01b582:
	rts

L01b584:
	tst.w	($001c,a0)
	bne	L01b67c
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L01b67e
	tst.w	(L047fac)
	bne	L01b5ec
	tst.w	($001e,a0)
	bne	L01b5e8
	move.w	($0010,a0),d0
	add.w	($0012,a0),d0
	move.w	d0,($0010,a0)
	cmpi.w	#$0011,d0
	bcs	L01b5ca
	cmp.w	($0020,a0),d0
	bcs	L01b5ec
	move.w	#$ffff,($0012,a0)
	bra	L01b5ec
L01b5ca:
	moveq.l	#$4c,d0
	trap	#0
	move.w	#$0003,($0012,a0)
	move.w	(L047354),d0
	asl.w	#2,d0
	neg.w	d0
	add.w	#$0020,d0
	move.w	d0,($001e,a0)
	bra	L01b5ec
L01b5e8:
	subq.w	#1,($001e,a0)
L01b5ec:
	move.w	($0010,a0),d0
	lsr.w	#2,d0
	andi.w	#$0001,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	($0010,a0),d0
	lsr.w	#1,d0
	bcc	L01b612
	addq.w	#1,d2
L01b612:
	lsr.w	#3,d0
	beq	L01b63a
	move.w	d0,d7
	subq.w	#1,d7
L01b61a:
	movem.l	d1-d2,-(a7)
	move.w	#$0002,d0
	lea.l	(L076a96),a5
	jsr	(L025426)
	movem.l	(a7)+,d1-d2
	add.w	#$0010,d2
	dbra	d7,L01b61a
L01b63a:
	move.w	($0008,a0),d2
	add.w	($0010,a0),d2
	movea.l	($002c,a0),a1
	move.w	d1,($0004,a1)
	move.w	d2,($0008,a1)
	movem.l	d1-d2,-(a7)
	move.w	#$0003,d0
	lea.l	(L076a96),a5
	jsr	(L025426)
	movem.l	(a7)+,d1-d2
	move.w	#$0002,d0
	sub.w	#$0010,d2
	lea.l	(L076a96),a5
	jsr	(L025426)
	rts

L01b67c:
	rts

L01b67e:
	movea.l	($002c,a0),a1
	clr.l	($0000.w,a1)
	jmp	(L029cca)

L01b68c:
	jsr	(L0298c4)
	bcs	L01b6d4
	move.w	#$0061,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	clr.w	($001e,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L076a16,($0014,a0)
L01b6d4:
	rts

L01b6d6:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01b6ea
	jmp	(L029cca)

L01b6ea:
	tst.w	(L047fac)
	bne	L01b71a
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0008,d0
	bcs	L01b72a
	clr.w	($001e,a0)
	move.w	($0020,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0014,d0
	bcs	L01b716
	move.w	#$0000,d0
L01b716:
	move.w	d0,($0020,a0)
L01b71a:
	move.w	($0020,a0),d0
	move.b	(L01b732,pc,d0.w),d0
	andi.w	#$00ff,d0
	move.w	d0,($0018,a0)
L01b72a:
	jsr	(L025416)
	rts

L01b732:
	.dc.b	$0d,$0c,$0b,$0a,$09,$08,$07,$06
	.dc.b	$05,$04,$03,$02,$01,$00,$00,$00
	.dc.b	$00,$00,$0f,$0e

L01b746:
	jsr	(L029842)
	bcs	L01b794
	move.w	#$0059,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	asl.w	#8,d0
	move.w	d0,($000c,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L078edc,($0014,a0)
L01b794:
	rts

L01b796:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01b7aa
	jmp	(L029cca)

L01b7aa:
	move.b	($000c,a0),d0
	addi.w	#$0044,d0
	bpl	L01b7b8
	subi.w	#$0080,d0
L01b7b8:
	andi.w	#$007f,d0
	lsr.w	#3,d0
	subi.w	#$0001.w,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	move.b	($000c,a0),d0
	addi.w	#$0040,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d0,d5
	move.l	d1,d6
	movem.l	d5-d6,-(a7)
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	move.w	#$0003,d7
	sub.w	($0020,a0),d7
	add.w	d7,d7
	subq.w	#1,d7
L01b7fe:
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	move.w	($0018,a0),d0
	lea.l	(L078edc),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	dbra	d7,L01b7fe
	movem.l	(a7)+,d5-d6
	neg.l	d5
	neg.l	d6
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	move.w	#$0003,d7
	sub.w	($0020,a0),d7
	add.w	d7,d7
	subq.w	#1,d7
L01b842:
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	move.w	($0018,a0),d0
	lea.l	(L078edc),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	dbra	d7,L01b842
	move.b	($000c,a0),d0
	addi.w	#$0040,d0
	jsr	(L01032e)
	ext.l	d0
	asl.l	#8,d0
	bpl	L01b880
	neg.l	d0
L01b880:
	asr.w	#8,d1
	tst.w	($0020,a0)
	beq	L01b894
	move.l	d0,d2
	asr.l	#2,d2
	sub.l	d2,d0
	move.w	d1,d2
	asr.w	#2,d2
	sub.w	d2,d1
L01b894:
	move.l	(L0473f4),d2
	sub.l	($0004,a0),d2
	move.l	d2,d3
	bmi	L01b92e
	cmp.l	d2,d0
	bcs	L01b9b6
	swap.w	d0
	addq.w	#1,d0
	divu.w	d0,d2
	tst.w	d1
	bmi	L01b8b8
	mulu.w	d2,d1
	bra	L01b8be
L01b8b8:
	neg.w	d1
	mulu.w	d2,d1
	neg.l	d1
L01b8be:
	add.l	($0008,a0),d1
	subi.l	#$00120000,d1
	move.l	d1,d2
	sub.l	(L0473f8),d1
	bcs	L01b9b6
	cmpi.l	#$000c0000,d1
	bcc	L01b9b6
	swap.w	d3
	asl.w	#2,d3
	add.w	($000c,a0),d3
	cmpi.w	#$2000,d3
	bgt	L01b900
	move.w	d3,($000c,a0)
	move.w	(L0472f6),d0
	andi.w	#$0007,d0
	bne	L01b900
	moveq.l	#$1c,d0
	trap	#0
L01b900:
	subi.l	#$00080000,d2
	move.l	d2,(L0473f8)
	move.b	($000c,a0),d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#2,d0
	add.l	d0,(L0473f4)
	bset.b	#$07,(L0473f2)
	rts

L01b92e:
	neg.l	d2
	cmp.l	d2,d0
	bcs	L01b9b6
	swap.w	d0
	addq.w	#1,d0
	divu.w	d0,d2
	tst.w	d1
	bmi	L01b946
	mulu.w	d2,d1
	neg.l	d1
	bra	L01b94a
L01b946:
	neg.w	d1
	mulu.w	d2,d1
L01b94a:
	add.l	($0008,a0),d1
	subi.l	#$00120000,d1
	move.l	d1,d2
	sub.l	(L0473f8),d1
	bcs	L01b9b6
	cmpi.l	#$000c0000,d1
	bcc	L01b9b6
	swap.w	d3
	asl.w	#2,d3
	add.w	($000c,a0),d3
	cmpi.w	#$e000,d3
	blt	L01b988
	move.w	d3,($000c,a0)
	move.w	(L0472f6),d0
	andi.w	#$0007,d0
	bne	L01b988
	moveq.l	#$1c,d0
	trap	#0
L01b988:
	subi.l	#$00080000,d2
	move.l	d2,(L0473f8)
	move.b	($000c,a0),d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#2,d0
	add.l	d0,(L0473f4)
	bset.b	#$07,(L0473f2)
	bra	L01b9ce
L01b9b6:
	tst.w	($0020,a0)
	bne	L01b9ce
	move.w	($000c,a0),d0
	subi.w	#$0020,d0
	cmpi.w	#$e000,d0
	blt	L01b9ce
	move.w	d0,($000c,a0)
L01b9ce:
	rts

L01b9d0:
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	beq	L01b9e4
	tst.w	(L04731e)
	bne	L01ba90
L01b9e4:
	jsr	(L029842)
	bcs	L01ba90
	move.w	#$005a,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	tst.w	(L04735a)
	bmi	L01ba24
	addi.l	#$00200000,d2
	move.b	($0005,a6),d0
	btst.l	#$07,d0
	beq	L01ba3a
	subi.l	#$00400000,d2
	bra	L01ba3a
L01ba24:
	addi.l	#$00200000,d3
	move.b	($0005,a6),d0
	btst.l	#$07,d0
	beq	L01ba3a
	subi.l	#$00400000,d3
L01ba3a:
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	andi.w	#$007f,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	ext.w	d0
	asl.w	#4,d0
	move.w	d0,($0010,a0)
	clr.w	($0022,a0)
	move.b	($0007,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	tst.w	($0024,a0)
	beq	L01ba90
	move.w	#$000b,(L04731e)
	move.w	($0024,a0),(L047322)
	clr.w	(L047324)
L01ba90:
	rts

L01ba92:
	rts

L01ba94:
	move.w	#$8000,($0020,a0)
	tst.w	(L047322)
	bne	L01ba92
	move.w	($0024,a0),d0
	beq	L01bab2
	ori.w	#$0080,d0
	move.w	d0,(L047322)
L01bab2:
	jmp	(L029cca)

L01bab8:
	tst.w	($0020,a0)
	bmi	L01ba94
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L01ba94
	tst.w	($0020,a0)
	beq	L01baf4
	tst.w	(L047322)
	bne	L01baf4
	tst.w	($0024,a0)
	beq	L01baf4
	move.w	($000c,a0),d0
	lsr.w	#8,d0
	move.w	d0,(L047324)
	move.w	($0024,a0),(L047322)
L01baf4:
	move.w	($000c,a0),d0
	add.w	($0010,a0),d0
	move.w	d0,($000c,a0)
	cmpi.b	#$03,(L04740d)
	bne	L01bb16
	cmpi.b	#$25,(L04740f)
	bcs	L01bbec
L01bb16:
	move.w	#$0020,d4
	tst.w	($0020,a0)
	beq	L01bb22
	add.w	d4,d4
L01bb22:
	addq.w	#2,d4
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01bb32
	neg.w	d0
L01bb32:
	cmp.w	d4,d0
	bcc	L01bbec
	move.w	(L0473f8),d1
	sub.w	($0008,a0),d1
	bpl	L01bb46
	neg.w	d1
L01bb46:
	cmp.w	d4,d1
	bcc	L01bbec
	tst.w	($0022,a0)
	bne	L01bb76
	move.w	d0,d2
	mulu.w	d2,d0
	move.w	d1,d3
	mulu.w	d3,d1
	add.w	d1,d0
	jsr	(L010410)
	subq.w	#2,d4
	cmp.w	d4,d1
	bcc	L01bbec
	jsr	(L01026c)
	asl.w	#8,d0
	move.w	d0,($000e,a0)
L01bb76:
	move.w	($0010,a0),d0
	cmpi.b	#$02,(L04740d)
	bne	L01bb9a
	tst.w	(L047408)
	bmi	L01bb92
	subi.w	#$0100,d0
	bra	L01bb9a
L01bb92:
	addi.w	#$0100,d0
	bra.w	L01bb9a
L01bb9a:
	add.w	($000e,a0),d0
	move.w	d0,($000e,a0)
	lsr.w	#8,d0
	cmpi.b	#$41,d0
	bcs	L01bbb0
	cmpi.b	#$c0,d0
	bcs	L01bbec
L01bbb0:
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#7,d0
	asl.l	#7,d1
	tst.w	($0020,a0)
	beq	L01bbc8
	add.l	d0,d0
	add.l	d1,d1
L01bbc8:
	add.l	($0004,a0),d0
	add.l	($0008,a0),d1
	move.l	d0,(L0473f4)
	move.l	d1,(L0473f8)
	bset.b	#$07,(L0473f2)
	move.w	#$0001,($0022,a0)
	rts

L01bbec:
	move.w	#$0000,($0022,a0)
	rts

L01bbf4:
	jsr	(L029900)
	bcs	L01bc1a
	move.w	#$006c,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
L01bc1a:
	rts

L01bc1c:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01bc30
	jmp	(L029cca)

L01bc30:
	moveq.l	#$00,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L079696),a5
	jsr	(L025426)
	move.w	(L0472f6),d0
	andi.w	#$003f,d0
	cmpi.w	#$0020,d0
	bcs	L01bc5a
	eori.w	#$003f,d0
L01bc5a:
	addq.w	#1,d0
	move.w	(L07879a),d1
	jsr	(L018b34)
	ori.w	#$0001,d2
	move.w	d2,($00e823dc)
	move.w	(L07879c),d1
	jsr	(L018b34)
	ori.w	#$0001,d2
	move.w	d2,($00e823de)
	move.b	($00e8a01b),d0
	move.w	d0,-(a7)
	bclr.b	#$00,($00e8a01b)
L01bc98:
	move.b	($00e8a005),d0
	andi.w	#$000f,d0
	move.b	($00e8a007),d1
	andi.w	#$0007,d1
	move.b	($00e8a009),d2
	andi.w	#$000f,d2
	move.b	($00e8a00b),d3
	andi.w	#$0003,d3
	move.b	($00e8a005),d4
	andi.w	#$000f,d4
	move.b	($00e8a007),d5
	andi.w	#$0007,d5
	move.b	($00e8a009),d6
	andi.w	#$000f,d6
	move.b	($00e8a00b),d7
	andi.w	#$0003,d7
	cmp.w	d0,d4
	bne	L01bc98
	cmp.w	d1,d5
	bne	L01bc98
	cmp.w	d2,d6
	bne	L01bc98
	cmp.w	d3,d7
	bne	L01bc98
	move.w	(a7)+,d7
	btst.l	#$00,d7
	beq	L01bd08
	bset.b	#$00,($00e8a01b)
L01bd08:
	add.w	d1,d1
	move.w	d1,d7
	add.w	d1,d1
	add.w	d1,d1
	add.w	d7,d1
	add.w	d1,d0
	add.w	d3,d3
	move.w	d3,d7
	add.w	d3,d3
	add.w	d3,d3
	add.w	d7,d3
	add.w	d3,d2
	cmpi.w	#$000c,d2
	bcs	L01bd2a
	subi.w	#$000c,d2
L01bd2a:
	move.w	d2,d3
	add.w	d2,d2
	add.w	d2,d2
	add.w	d3,d2
	move.b	(L01bd94,pc,d0.w),d1
	andi.w	#$00ff,d1
	move.w	d1,(L048004)
	ext.l	d0
	divu.w	#$000c,d0
	add.w	d0,d2
	move.b	(L01bd94,pc,d2.w),d0
	andi.w	#$00ff,d0
	exg.l	d0,d1
	move.w	d1,-(a7)
	tst.w	(L048006)
	bne	L01bd68
	move.w	#$0007,d1
	bsr	L01bdd0
	bsr	L01be16
	bra	L01bd6e
L01bd68:
	move.w	#$0004,d1
	bsr	L01bdd0
L01bd6e:
	move.w	(a7),d0
	move.w	#$0005,d1
	bsr	L01bdd0
	bsr	L01be16
	move.w	(a7)+,d0
	move.w	($0020,a0),d1
	move.w	d0,($0020,a0)
	cmpi.w	#$ffff,d1
	beq	L01bd92
	cmp.w	d1,d0
	beq	L01bd92
	moveq.l	#$55,d0
	trap	#0
L01bd92:
	rts

L01bd94:
	.dc.b	$00,$04,$08,$0c,$11,$15,$19,$1d
	.dc.b	$22,$26,$2a,$2e,$33,$37,$3b,$40
	.dc.b	$44,$48,$4c,$51,$55,$59,$5d,$62
	.dc.b	$66,$6a,$6e,$73,$77,$7b,$80,$84
	.dc.b	$88,$8c,$91,$95,$99,$9d,$a2,$a6
	.dc.b	$aa,$ae,$b3,$b7,$bb,$c0,$c4,$c8
	.dc.b	$cc,$d1,$d5,$d9,$dd,$e2,$e6,$ea
	.dc.b	$ee,$f3,$f7,$fb

L01bdd0:
	move.w	d0,d2
	addi.w	#$0004.w,d2
	bpl	L01bddc
	subi.w	#$0080,d2
L01bddc:
	andi.w	#$007f,d2
	lsr.w	#3,d2
	move.w	d2,($0018,a0)
	move.w	d1,d7
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	move.l	d0,d5
	move.l	d1,d6
	asl.l	#5,d5
	asl.l	#5,d6
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	sub.l	d5,d1
	sub.l	d5,d1
	sub.l	d5,d1
	sub.l	d6,d2
	sub.l	d6,d2
	sub.l	d6,d2
L01be0e:
	bsr	L01be4a
	dbra	d7,L01be0e
	rts

L01be16:
	move.l	d5,d7
	asr.l	#2,d7
	add.l	d5,d5
	sub.l	d7,d5
	move.l	d6,d7
	asr.l	#2,d7
	add.l	d6,d6
	sub.l	d7,d6
	add.l	d5,d1
	add.l	d6,d2
	movem.l	d1-d2,-(a7)
	swap.w	d1
	swap.w	d2
	move.w	#$0010,d0
	lea.l	(L07960e),a5
	jsr	(L025426)
	movem.l	(a7)+,d1-d2
	bsr	L01be4a
	rts

L01be4a:
	move.w	($0018,a0),d0
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	lea.l	(L07960e),a5
	jsr	(L025426)
	sub.w	#$0010,d1
	sub.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	rts

L01be70:
	jsr	(L029842)
	bcs	L01bee2
	move.w	#$006f,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.w	#$6400,($0020,a0)
	tst.w	d1
	beq	L01be98
	move.w	#$9c00,($0020,a0)
L01be98:
	jsr	(L029cd4)
	move.l	d2,($000c,a0)
	move.l	d3,($0010,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L078a22,($0014,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	beq	L01bf4a
	move.b	#$02,($0002,a0)
	move.w	#$00ff,($001a,a0)
	move.l	#L078aba,($0014,a0)
L01bee2:
	rts

L01bee4:
	move.w	(L047f68),d0
	add.w	d0,($000c,a0)
	move.w	(L047f6c),d0
	add.w	d0,($0010,a0)
	move.w	($000c,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	bcc	L01bf0c
	jmp	(L029cca)

L01bf0c:
	move.w	#$0001,d0
	move.w	($000c,a0),d1
	move.w	($0010,a0),d2
	lea.l	(L078aba),a5
	jsr	(L025426)
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	jsr	(L01034e)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	tst.w	($0022,a0)
	beq	L01bf4a
	move.l	d0,d4
	move.l	d1,d5
	asr.l	#2,d4
	asr.l	#2,d5
	sub.l	d4,d0
	sub.l	d5,d1
L01bf4a:
	move.l	d0,d4
	move.l	d1,d5
	move.w	($0020,a0),d2
	subi.w	#$8000,d2
	neg.w	d2
	ext.l	d2
	add.l	($0024,a0),d2
	move.l	d2,($0024,a0)
	asr.l	#8,d2
	asr.l	#3,d2
	tst.w	($0022,a0)
	beq	L01bf72
	move.l	d2,d3
	asr.l	#1,d3
	add.l	d3,d2
L01bf72:
	add.w	d2,($0020,a0)
	add.l	d4,d0
	add.l	d5,d1
	move.l	d0,d5
	move.l	d1,d6
	move.l	($000c,a0),d1
	move.l	($0010,a0),d2
	movem.l	d1-d6,-(a7)
	asl.l	#3,d5
	asl.l	#3,d6
	add.l	d5,d1
	add.l	d6,d2
	move.l	d1,(L0481e8)
	move.l	d2,(L0481ec)
	swap.w	d1
	swap.w	d2
	lea.l	(L078a22),a5
	tst.w	($0022,a0)
	beq	L01bfb4
	lea.l	(L078aba),a5
L01bfb4:
	move.w	#$0000,d0
	jsr	(L025426)
	movem.l	(a7)+,d1-d6
	move.w	($0020,a0),d0
	lsr.w	#8,d0
	subi.w	#$005e,d0
	lsr.w	#2,d0
	move.w	#$0006,d7
L01bfd2:
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	lea.l	(L078a22),a5
	move.w	d0,-(a7)
	jsr	(L025426)
	move.w	(a7)+,d0
	sub.w	#$0010,d1
	sub.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	dbra	d7,L01bfd2
	move.l	($0004,a0),d4
	move.l	($0008,a0),d5
	move.l	(L0481e8),d1
	move.l	d1,($0004,a0)
	move.l	(L0481ec),d2
	move.l	d2,($0008,a0)
	tst.w	($0022,a0)
	bne	L01c07a
	cmpi.b	#$03,(L04740d)
	bne	L01c030
	cmpi.b	#$25,(L04740f)
	bcs	L01c07a
L01c030:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01c03e
	neg.w	d0
L01c03e:
	cmpi.w	#$0018,d0
	bcc	L01c07a
	move.w	(L0473f8),d0
	addi.w	#$0024,d0
	sub.w	($0008,a0),d0
	bpl	L01c056
	neg.w	d0
L01c056:
	cmpi.w	#$0008,d0
	bcc	L01c07a
	sub.l	d4,d1
	sub.l	d5,d2
	sub.l	(L047f68),d1
	add.l	d1,(L0473f4)
	add.l	d2,(L0473f8)
	bset.b	#$07,(L0473f2)
L01c07a:
	rts

L01c07c:
	tst.w	(L04731e)
	bne	L01c0f6
	jsr	(L029842)
	bcs	L01c0f6
	move.w	#$0072,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	addi.l	#$00300000,d2
	move.b	($0005,a6),d0
	btst.l	#$07,d0
	beq	L01c0b8
	subi.l	#$00600000,d2
L01c0b8:
	move.l	d2,($000c,a0)
	move.l	d3,($0010,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$1000,($0020,a0)
	clr.w	($0024,a0)
	move.w	#$0001,($0018,a0)
	move.l	#L078aa2,($0014,a0)
	move.w	#$000e,(L04731e)
	move.w	#$0000,(L047322)
	clr.w	(L047fc0)
L01c0f6:
	rts

L01c0f8:
	clr.w	(L047fc0)
	move.w	#$8000,($0024,a0)
	tst.w	(L047322)
	bne	L01c0f6
	move.w	#$0080,(L047322)
	jmp	(L029cca)

L01c11a:
	tst.w	($0024,a0)
	bne	L01c0f8
	tst.w	(L047322)
	bne	L01c13c
	move.w	#$0001,(L047322)
	move.w	($0020,a0),d0
	lsr.w	#8,d0
	move.w	d0,(L047324)
L01c13c:
	move.w	(L047f68),d0
	move.w	($0004,a0),($0022,a0)
	add.w	d0,($0022,a0)
	add.w	d0,($000c,a0)
	move.w	(L047f6c),d0
	add.w	d0,($0010,a0)
	move.w	($000c,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	bcs	L01c0f8
	move.w	($0020,a0),d0
	lsr.w	#8,d0
	addi.w	#$0040,d0
	andi.w	#$00ff,d0
	jsr	(L01032e)
	asr.w	#8,d0
	asr.w	#8,d1
	add.w	($000c,a0),d0
	subi.w	#$0001.w,d0
	add.w	($0010,a0),d1
	move.w	d1,d2
	move.w	d0,d1
	move.w	#$0072,(L047fc0)
	move.w	d1,(L047fc2)
	move.w	d2,(L047fc4)
	move.w	#$0000,d0
	lea.l	(L078aa2),a5
	jsr	(L025426)
	sub.w	#$0010,d1
	addq.w	#8,d2
	move.w	#$0002,d0
	lea.l	(L078aa2),a5
	jsr	(L025426)
	move.w	($0020,a0),d0
	lsr.w	#8,d0
	subi.w	#$0040,d0
	andi.w	#$00ff,d0
	jsr	(L01032e)
	asr.w	#8,d0
	asr.w	#8,d1
	add.w	($000c,a0),d0
	addi.w	#$0004.w,d0
	add.w	($0010,a0),d1
	move.w	d1,d2
	move.w	d0,d1
	move.w	#$0007,d7
L01c1f6:
	move.w	#$0000,d0
	lea.l	(L078aa2),a5
	jsr	(L025426)
	sub.w	#$0010,d1
	dbra	d7,L01c1f6
	move.w	d1,($0004,a0)
	addi.w	#$0001.w,d2
	move.w	d2,($0008,a0)
	jsr	(L025416)
	subi.w	#$0004.w,($0008,a0)
	cmpi.b	#$03,(L04740d)
	bne	L01c23c
	cmpi.b	#$25,(L04740f)
	bcs	L01c2c0
L01c23c:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01c24a
	neg.w	d0
L01c24a:
	cmpi.w	#$0020,d0
	bcc	L01c2c0
	move.w	(L0473f8),d0
	addi.w	#$0018,d0
	sub.w	($0008,a0),d0
	bpl	L01c262
	neg.w	d0
L01c262:
	cmpi.w	#$0008,d0
	bcc	L01c2c0
	move.w	($0008,a0),d0
	subi.w	#$0018,d0
	move.w	d0,(L0473f8)
	move.w	($0004,a0),d0
	sub.w	($0022,a0),d0
	bpl	L01c28a
	cmpi.w	#$06d7,(L047f7a)
	beq	L01c290
L01c28a:
	add.w	d0,(L0473f4)
L01c290:
	bset.b	#$07,(L0473f2)
	move.w	(L0472f6),d0
	andi.w	#$0007,d0
	bne	L01c2a8
	moveq.l	#$1c,d0
	trap	#0
L01c2a8:
	move.w	($0020,a0),d0
	subi.w	#$0080,d0
	cmpi.w	#$f000,d0
	bgt	L01c2ba
	move.w	#$f000,d0
L01c2ba:
	move.w	d0,($0020,a0)
	bra	L01c2d6
L01c2c0:
	move.w	($0020,a0),d0
	addi.w	#$0020,d0
	cmpi.w	#$1000,d0
	blt	L01c2d2
	move.w	#$1000,d0
L01c2d2:
	move.w	d0,($0020,a0)
L01c2d6:
	rts

L01c2d8:
	jsr	(L0298e2)
	bcs	L01c330
	move.w	#$0073,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	move.b	($0007,a6),d0
	ext.w	d0
	asl.w	#4,d0
	move.w	d0,($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
L01c330:
	rts

L01c332:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01c346
	jmp	(L029cca)

L01c346:
	move.b	(L04740d),d0
	cmpi.b	#$03,d0
	beq	L01c3a6
	cmpi.b	#$04,d0
	beq	L01c3a6
	cmpi.b	#$07,d0
	beq	L01c3a6
	btst.b	#$07,(L0473f2)
	bne	L01c3a6
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01c376
	neg.w	d0
L01c376:
	cmp.w	($0020,a0),d0
	bcc	L01c3a6
	move.w	(L0473f8),d0
	sub.w	($0008,a0),d0
	bpl	L01c38a
	neg.w	d0
L01c38a:
	cmp.w	($0022,a0),d0
	bcc	L01c3a6
	move.w	($0024,a0),d0
	ext.l	d0
	asl.l	#8,d0
	add.l	d0,(L0473f4)
	bset.b	#$07,(L0473f2)
L01c3a6:
	rts

L01c3a8:
	tst.w	d1
	bne	L01c474
	jsr	(L029842)
	bcs	L01c474
	move.w	#$002f,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	addi.l	#$00300000,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	move.b	($0007,a6),d0
	andi.w	#$00ff,d0
	move.w	(L047354),d1
	asl.w	#3,d1
	sub.w	d1,d0
	cmpi.w	#$000b,d0
	bgt	L01c410
	move.w	#$000b,d0
L01c410:
	move.w	d0,($0024,a0)
	andi.w	#$0001,d0
	move.w	d0,($0026,a0)
	move.w	#$4000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	cmpi.w	#$0002,(L04731e)
	beq	L01c474
	move.w	#$0002,(L04731e)
	clr.l	(L047322)
	clr.l	(L047326)
	clr.l	(L04732a)
	clr.l	(L04732e)
	clr.l	(L047332)
	clr.l	(L047336)
	clr.l	(L04733a)
	clr.l	(L04733e)
L01c474:
	move.w	($001e,a0),d1
	lsr.w	#3,d1
	andi.w	#$00ff,d1
	move.w	($0020,a0),d0
	asl.w	#8,d0
	add.w	d0,d1
	tst.w	($0022,a0)
	beq	L01c490
	ori.w	#$8000,d1
L01c490:
	move.w	($0008,a0),d2
	move.w	($0020,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	d2,($02,a1,d0.w)
	move.w	d2,($12,a1,d0.w)
	move.w	d1,(a1,d0.w)
	move.w	d1,($10,a1,d0.w)
	rts

L01c4b4:
	add.w	($0004,a0),d1
	add.w	($0008,a0),d2
	movea.l	a0,a1
	move.l	#L07b048,d3
	move.w	#$0000,d4
	move.w	#$0000,d5
	bsr	L01c502
	move.l	#L07b040,d3
	move.w	#$0002,d4
	move.w	#$000f,d5
	bsr	L01c502
	move.l	#L07b038,d3
	move.w	#$0004,d4
	move.w	#$001f,d5
	bsr	L01c502
	move.l	#L07b030,d3
	move.w	#$0006,d4
	move.w	#$003f,d5
	bsr	L01c502
	movea.l	a1,a0
	rts

L01c502:
	move.w	d5,d6
	lsr.w	#1,d6
L01c506:
	jsr	(L0298a6)
	bcs	L01c576
	move.w	#$0029,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	jsr	(L01024e)
	and.w	d5,d0
	sub.w	d6,d0
	add.w	d1,d0
	move.w	d0,($0004,a0)
	move.w	d2,($0008,a0)
	jsr	(L01024e)
	and.w	d5,d0
	sub.w	d6,d0
	ext.l	d0
	asl.l	#6,d0
	subi.l	#$00004000,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	and.w	d5,d0
	add.w	d5,d0
	asl.w	#8,d0
	ext.l	d0
	add.w	d0,d0
	neg.l	d0
	add.l	#$00010000,d0
	move.l	d0,($0010,a0)
	move.w	#$0001,($001c,a0)
	move.l	d3,($0014,a0)
	move.w	#$0000,($0018,a0)
	dbra	d4,L01c506
L01c576:
	rts

L01c578:
	jsr	(L02993c)
	cmpi.w	#$0130,($0008,a0)
	bcc	L01c748
	cmpi.w	#$ffc8,($0004,a0)
	blt	L01c748
	cmpi.w	#$0180,($0004,a0)
	bgt	L01c748
	tst.w	($001c,a0)
	bne	L01c656
	lea.l	(L07b008),a5
	moveq.l	#$00,d0
	move.w	($0024,a0),d1
	addq.w	#1,d1
	cmpi.w	#$0014,d1
	bcc	L01c5c0
	lsr.w	#2,d1
	neg.w	d1
	addq.w	#4,d1
	move.w	d1,d0
L01c5c0:
	move.w	($0004,a0),d1
	add.w	#$0040,d1
	move.w	($0008,a0),d2
	add.w	#$000e,d2
	jsr	(L025426)
	tst.w	($0026,a0)
	beq	L01c60c
	lea.l	(L07b008),a5
	moveq.l	#$00,d0
	move.w	($0024,a0),d1
	cmpi.w	#$000a,d1
	bcc	L01c5f6
	lsr.w	#1,d1
	neg.w	d1
	addq.w	#4,d1
	move.w	d1,d0
L01c5f6:
	move.w	($0004,a0),d1
	sub.w	#$0040,d1
	move.w	($0008,a0),d2
	add.w	#$000e,d2
	jsr	(L025426)
L01c60c:
	cmpi.w	#$08c0,(L047f7a)
	bcs	L01c66e
	move.w	(L047f7a),(L047f8e)
	subq.w	#1,($0024,a0)
	bne	L01c66e
	addq.w	#1,($001c,a0)
	move.l	#$00004000,($0010,a0)
	moveq.l	#$4a,d0
	trap	#0
	move.w	#$0040,d1
	move.w	#$000c,d2
	bsr	L01c4b4
	tst.w	($0026,a0)
	beq	L01c66e
	move.w	#$ffc0,d1
	move.w	#$000c,d2
	bsr	L01c4b4
	bra	L01c66e
L01c656:
	addi.l	#$00008000,($0008,a0)
	move.w	($001e,a0),d1
	cmpi.w	#$ff7f,d1
	beq	L01c66e
	subq.w	#1,d1
	move.w	d1,($001e,a0)
L01c66e:
	move.w	($001e,a0),d1
	lsr.w	#3,d1
	andi.w	#$00ff,d1
	move.w	($0020,a0),d0
	asl.w	#8,d0
	add.w	d0,d1
	tst.w	($0022,a0)
	beq	L01c68a
	ori.w	#$8000,d1
L01c68a:
	move.w	($0008,a0),d2
	move.w	($0020,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	d2,($02,a1,d0.w)
	move.w	d1,(a1,d0.w)
	move.w	d1,d0
	addi.w	#$0040,d0
	andi.w	#$00ff,d0
	jsr	(L01032e)
	ext.l	d0
	asl.l	#8,d0
	asr.w	#8,d1
	neg.w	d1
	move.l	(L0473f4),d2
	sub.l	($0004,a0),d2
	bmi	L01c708
	cmp.l	d2,d0
	bcs	L01c746
	swap.w	d0
	addq.w	#1,d0
	divu.w	d0,d2
	mulu.w	d2,d1
	neg.l	d1
	add.l	($0008,a0),d1
	subi.l	#$00120000,d1
	move.l	d1,d2
	sub.l	(L0473f8),d1
	bcs	L01c746
	cmpi.l	#$000c0000,d1
	bcc	L01c746
	subi.l	#$00080000,d2
	move.l	d2,(L0473f8)
	bset.b	#$07,(L0473f2)
	rts

L01c708:
	neg.l	d2
	cmp.l	d2,d0
	bcs	L01c746
	swap.w	d0
	addq.w	#1,d0
	divu.w	d0,d2
	mulu.w	d2,d1
	add.l	($0008,a0),d1
	subi.l	#$00120000,d1
	move.l	d1,d2
	sub.l	(L0473f8),d1
	bcs	L01c746
	cmpi.l	#$000c0000,d1
	bcc	L01c746
	subi.l	#$00080000,d2
	move.l	d2,(L0473f8)
	bset.b	#$07,(L0473f2)
L01c746:
	rts

L01c748:
	move.w	($0020,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L047322),a1
	move.w	#$0000,(a1,d0.w)
	move.w	#$0000,($02,a1,d0.w)
	move.w	#$0000,($10,a1,d0.w)
	move.w	#$0000,($12,a1,d0.w)
	jmp	(L029cca)

L01c774:
	jsr	(L0298a6)
	bcs	L01c7c6
	move.w	#$0079,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	jsr	(L029cd4)
	subi.l	#$00180000,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	clr.w	($0022,a0)
	clr.w	($001c,a0)
	move.w	#$0001,($0018,a0)
	move.l	#L07df7e,($0014,a0)
L01c7c6:
	rts

L01c7c8:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcc	L01c7dc
	jmp	(L029cca)

L01c7dc:
	move.w	#$0001,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	lea.l	(L07df7e),a5
	jsr	(L025426)
	move.w	($001c,a0),d0
	beq	L01c808
	cmpi.w	#$0002,($001c,a0)
	beq	L01c868
	bcc	L01c88c
	bra	L01c840
L01c808:
	move.w	(L0473f8),d0
	sub.w	($0008,a0),d0
	bpl	L01c816
	neg.w	d0
L01c816:
	cmpi.w	#$0030,d0
	bcc	L01c89a
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L01c82a
	neg.w	d0
L01c82a:
	cmpi.w	#$0020,d0
	bcc	L01c89a
	addq.w	#1,($001c,a0)
	clr.w	($0022,a0)
	move.w	#$0004,($001e,a0)
	bra	L01c89a
L01c840:
	subq.w	#1,($001e,a0)
	bne	L01c89a
	move.w	#$0001,($001e,a0)
	move.w	($0022,a0),d0
	addq.w	#1,d0
	move.w	d0,($0022,a0)
	cmpi.w	#$0008,d0
	bne	L01c89a
	move.w	#$0010,($001e,a0)
	addq.w	#1,($001c,a0)
	bra	L01c89a
L01c868:
	subq.w	#1,($001e,a0)
	bne	L01c89a
	move.w	#$0004,($001e,a0)
	move.w	($0022,a0),d0
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	bne	L01c89a
	move.w	#$0040,($001e,a0)
	addq.w	#1,($001c,a0)
	bra	L01c89a
L01c88c:
	subq.w	#1,($001e,a0)
	bne	L01c89a
	clr.w	($001c,a0)
	bra.w	L01c89a
L01c89a:
	tst.w	($0020,a0)
	bne	L01c8b0
	move.w	($0022,a0),d0
	neg.w	d0
	addq.w	#8,d0
	lea.l	(L07df9e),a5
	bra	L01c8ba
L01c8b0:
	move.w	($0022,a0),d0
	lea.l	(L07dfe6),a5
L01c8ba:
	move.l	a5,($0014,a0)
	move.w	d0,($0018,a0)
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	rts

L01c8d2:
	jsr	(L0298e2)
	bcs	L01c926
	move.w	#$007b,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	move.w	#$6400,($0020,a0)
	tst.w	d1
	beq	L01c8fe
	move.w	#$9c00,($0020,a0)
L01c8fe:
	jsr	(L029cd4)
	move.l	d2,($000c,a0)
	move.l	d3,($0010,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07df2e,($0014,a0)
L01c926:
	rts

L01c928:
	move.w	(L047f68),d0
	add.w	d0,($000c,a0)
	move.w	(L047f6c),d0
	add.w	d0,($0010,a0)
	move.w	($000c,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	bcc	L01c950
	jmp	(L029cca)

L01c950:
	move.w	($000c,a0),d1
	move.w	($0010,a0),d2
	addi.w	#$0008.w,d2
	move.w	#$0002,d0
	lea.l	(L07df7e),a5
	jsr	(L025426)
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	jsr	(L01034e)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d0,d4
	move.l	d1,d5
	asr.l	#2,d4
	asr.l	#2,d5
	sub.l	d4,d0
	sub.l	d5,d1
	move.l	d0,d4
	move.l	d1,d5
	move.w	($0020,a0),d2
	subi.w	#$8000,d2
	neg.w	d2
	ext.l	d2
	add.l	($0024,a0),d2
	move.l	d2,($0024,a0)
	asr.l	#8,d2
	asr.l	#3,d2
	move.l	d2,d3
	asr.l	#1,d3
	add.l	d3,d2
	add.w	d2,($0020,a0)
	add.l	d4,d0
	add.l	d5,d1
	move.l	d0,d5
	move.l	d1,d6
	move.l	($000c,a0),d1
	move.l	($0010,a0),d2
	movem.l	d1-d6,-(a7)
	asl.l	#3,d5
	asl.l	#3,d6
	add.l	d5,d1
	add.l	d6,d2
	asr.l	#4,d5
	asr.l	#4,d6
	sub.l	d5,d1
	sub.l	d6,d2
	add.l	#$00080000,d2
	move.l	d1,($0004,a0)
	move.l	d2,($0008,a0)
	swap.w	d1
	swap.w	d2
	lea.l	(L07df2e),a5
	move.w	#$0000,d0
	jsr	(L025426)
	movem.l	(a7)+,d1-d6
	subi.l	#$00080000,d1
	move.w	($0020,a0),d0
	lsr.w	#8,d0
	subi.w	#$005c,d0
	lsr.w	#3,d0
	move.w	#$0006,d7
L01ca12:
	add.l	d5,d1
	add.l	d6,d2
	swap.w	d1
	swap.w	d2
	lea.l	(L07df36),a5
	move.w	d0,-(a7)
	jsr	(L025426)
	sub.w	#$0010,d2
	move.w	(a7),d0
	lea.l	(L07df36),a5
	jsr	(L025426)
	move.w	(a7)+,d0
	sub.w	#$0020,d1
	sub.w	#$0010,d2
	swap.w	d1
	swap.w	d2
	dbra	d7,L01ca12
	rts

L01ca4e:
	jsr	(L0298e2)
	bcs	L01cab0
	move.w	#$007f,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	move.w	#$5c00,($0020,a0)
	tst.w	d1
	beq	L01ca7a
	move.w	#$a400,($0020,a0)
L01ca7a:
	jsr	(L029cd4)
	move.l	d2,($000c,a0)
	move.l	d3,($0010,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0024,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	move.w	#$0012,(L04731e)
	clr.w	(L047322)
L01cab0:
	rts

L01cab2:
	clr.w	(L04731e)
	jmp	(L029cca)

L01cabe:
	tst.w	(L047322)
	bne	L01cae0
	move.b	($0020,a0),d0
	addi.b	#$80,d0
	andi.w	#$00ff,d0
	move.w	d0,(L047324)
	move.w	#$0001,(L047322)
L01cae0:
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	jsr	(L01034e)
	asr.w	#8,d0
	asr.w	#8,d1
	neg.w	d0
	neg.w	d1
	add.w	#$0040,d0
	add.w	#$0040,d1
	sub.w	($000c,a0),d0
	sub.w	($0010,a0),d1
	move.w	d0,(L0470fe)
	move.w	d0,(L047106)
	move.w	d1,(L047102)
	move.w	d1,(L04710a)
	move.w	(L047f68),d0
	add.w	d0,($000c,a0)
	move.w	(L047f6c),d0
	add.w	d0,($0010,a0)
	move.w	($000c,a0),d1
	move.w	($0010,a0),d2
	addi.w	#$0008.w,d2
	move.w	#$0003,d0
	lea.l	(L07df7e),a5
	jsr	(L025426)
	move.w	($000c,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	bcs	L01cab2
	move.w	($0020,a0),d0
	lsr.w	#7,d0
	jsr	(L01034e)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d0,d4
	move.l	d1,d5
	move.w	($0020,a0),d2
	subi.w	#$8000,d2
	neg.w	d2
	ext.l	d2
	add.l	($0024,a0),d2
	move.l	d2,($0024,a0)
	asr.l	#8,d2
	asr.l	#4,d2
	move.l	d2,d3
	asr.l	#1,d3
	add.l	d3,d2
	add.w	d2,($0020,a0)
	add.l	d4,d0
	add.l	d5,d1
	move.l	d0,d5
	move.l	d1,d6
	move.l	($000c,a0),d1
	move.l	($0010,a0),d2
	move.w	($0020,a0),d0
	lsr.w	#8,d0
	subi.w	#$005e,d0
	lsr.w	#2,d0
	move.w	#$0000,d0
	move.w	#$0006,d7
L01cbba:
	add.l	d5,d1
	add.l	d6,d2
	dbra	d7,L01cbba
	btst.b	#$00,(L0472f7)
	beq	L01cbd6
	asr.l	#1,d5
	asr.l	#1,d6
	add.l	d5,d1
	add.l	d6,d2
	bra	L01cbde
L01cbd6:
	sub.l	d5,d1
	sub.l	d5,d1
	sub.l	d6,d2
	sub.l	d6,d2
L01cbde:
	move.l	d1,($0004,a0)
	move.l	d2,($0008,a0)
	rts

L01cbe8:
	cmpi.w	#$0070,(L0473f8)
	bcc	L01ccee
	jsr	(L0298a6)
	bcs	L01ccee
	movem.l	d1/a6,-(a7)
	move.w	#$007c,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	move.w	#$0010,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07dc96,($0014,a0)
	clr.w	($0020,a0)
	clr.w	($0024,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	tst.w	d1
	beq	L01cc52
	neg.w	d0
	move.w	#$8000,($0018,a0)
L01cc52:
	move.w	d0,($0022,a0)
	move.w	($0020,a0),d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#6,d0
	asl.l	#6,d1
	move.l	d0,($000c,a0)
	tst.l	d1
	bmi	L01cc72
	neg.l	d1
L01cc72:
	move.l	d1,($0010,a0)
	movem.l	(a7)+,d1/a6
	lea.l	(L047360),a0
	move.w	#$007c,($0000.w,a0)
	clr.w	($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L07dc96,($0014,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	tst.w	d1
	beq	L01ccbe
	neg.w	d0
	move.w	#$8000,($0018,a0)
L01ccbe:
	move.w	d0,($0022,a0)
	clr.w	($0020,a0)
	clr.w	($0026,a0)
	clr.w	($0028,a0)
	move.w	($0020,a0),d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#6,d0
	asl.l	#6,d1
	move.l	d0,($000c,a0)
	tst.l	d1
	bmi	L01ccea
	neg.l	d1
L01ccea:
	move.l	d1,($0010,a0)
L01ccee:
	rts

L01ccf0:
	clr.w	(L047360)
	clr.w	(L047362)
	bsr	L01d20a
	tst.w	($0018,a0)
	bpl	L01cd0e
	subi.w	#$0030,($0004,a0)
	bra	L01cd14
L01cd0e:
	addi.w	#$0030,($0004,a0)
L01cd14:
	addi.w	#$0010,($0008,a0)
	move.w	#$3f0f,d0
	jsr	(L029bac)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01cd44
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	#$1f0f,d0
	jsr	(L029bac)
L01cd44:
	moveq.l	#$37,d0
	trap	#0
	rts

L01cd4a:
	jmp	(L029cca)

L01cd50:
	move.w	($001c,a0),d0
	beq	L01cf26
	bmi	L01d310
	addi.b	#$02.b,($0027,a0)
	jsr	(L02993c)
	jsr	(L0299e2)
	bcs	L01cd4a
	move.w	(L047f7a),d0
	add.w	($0004,a0),d0
	cmpi.w	#$0400,d0
	bcs	L01cd96
	tst.w	($0022,a0)
	bmi	L01cd96
	move.w	#$0003,(L04737c)
	move.w	#$0100,(L04737e)
L01cd96:
	tst.w	(L047fac)
	bne	L01ce40
	cmpi.w	#$0004,($001c,a0)
	beq	L01cde2
	cmpi.w	#$0002,($001c,a0)
	beq	L01cdc6
	bcs	L01cddc
	subq.w	#1,($001e,a0)
	bne	L01cdbe
	move.w	#$0001,($001c,a0)
L01cdbe:
	move.w	($0022,a0),d1
	neg.w	d1
	bra	L01cde8
L01cdc6:
	subq.w	#1,($001e,a0)
	bne	L01cdd2
	move.w	#$0001,($001c,a0)
L01cdd2:
	move.w	($0022,a0),d1
	neg.w	d1
	asl.w	#2,d1
	bra	L01cde8
L01cddc:
	move.w	($0022,a0),d1
	bra	L01cde8
L01cde2:
	move.w	($0022,a0),d1
	asl.w	#2,d1
L01cde8:
	move.w	d1,d7
	asr.w	#2,d1
	move.w	($0020,a0),d0
	add.b	d1,d0
	move.w	d0,($0020,a0)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d0,d5
	bne	L01ce10
	move.l	d0,d6
	moveq.l	#$12,d0
	trap	#0
	move.l	d6,d0
L01ce10:
	move.l	d1,d6
	sub.l	($000c,a0),d0
	bpl	L01ce1a
	neg.l	d0
L01ce1a:
	move.l	d5,($000c,a0)
	tst.w	d7
	bmi	L01ce28
	add.l	d0,($0004,a0)
	bra	L01ce2c
L01ce28:
	sub.l	d0,($0004,a0)
L01ce2c:
	tst.l	d1
	bmi	L01ce32
	neg.l	d1
L01ce32:
	move.l	d1,d0
	sub.l	($0010,a0),d1
	add.l	d1,($0008,a0)
	move.l	d0,($0010,a0)
L01ce40:
	moveq.l	#$00,d7
	move.w	($0022,a0),d7
	ext.l	d7
	andi.l	#$00300000,d7
	subi.l	#$00180000,d7
	lea.l	(L07dd2e),a4
	lea.l	(L07de2e),a5
	move.l	d7,d3
	move.w	#$0080,d0
	bsr	L01d0fa
	lea.l	(L07de2e),a5
	move.l	d7,d3
	add.l	d7,d3
	move.w	#$00f0,d0
	bsr	L01d0fa
	lea.l	(L07de2e),a5
	move.l	d7,d3
	add.l	d7,d3
	add.l	d7,d3
	move.w	#$0060,d0
	bsr	L01d0fa
	lea.l	(L07de2e),a5
	move.l	d7,d3
	move.b	($0027,a0),d0
	bpl	L01cea0
	neg.b	d0
L01cea0:
	andi.w	#$00ff,d0
	move.l	d7,d1
	swap.w	d1
	asr.w	#1,d1
	swap.w	d3
	sub.w	d1,d3
	movem.w	d0/d3,-(a7)
	move.w	d0,d6
	lsr.w	#1,d6
	add.b	#$a8,d6
	addi.w	#$00c0,d0
	andi.w	#$00ff,d0
	jsr	(L01032e)
	move.w	d1,d2
	move.w	d0,d1
	ext.l	d1
	ext.l	d2
	asl.l	#5,d1
	asl.l	#5,d2
	add.l	($0004,a0),d1
	add.l	($0008,a0),d2
	swap.w	d1
	swap.w	d2
	add.l	d3,d1
	tst.w	($0022,a0)
	bmi	L01ceee
	neg.b	d6
	addi.b	#$9f,d6
L01ceee:
	lsr.w	#4,d6
	move.w	($0018,a0),d0
	move.b	d6,d0
	jsr	(L025426)
	movem.w	(a7)+,d0/d3
	addi.w	#$00c0,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0004,a0),d1
	add.w	d3,d1
	move.w	($0008,a0),d2
	movea.l	a4,a5
	jsr	(L025426)
	rts

L01cf1e:
	movea.l	a1,a0
	jmp	(L029cca)

L01cf26:
	move.w	($0024,a0),d0
	beq	L01cf40
	subq.w	#1,d0
	move.w	d0,($0024,a0)
	bne	L01cf7e
	clr.b	($001a,a0)
	move.b	#$03,($0002,a0)
	bra	L01cf7e
L01cf40:
	jsr	(L029a3e)
	bcc	L01cf7e
	bne	L01cf50
	jmp	(L01ccf0)

L01cf50:
	moveq.l	#$31,d0
	trap	#0
	move.w	#$0002,(L04737c)
	move.w	#$0030,($0024,a0)
	move.w	#$0040,(L04737e)
	clr.b	($0002,a0)
	cmpi.b	#$05,($001b,a0)
	bcc	L01cf7e
	move.w	#$0004,(L04737c)
L01cf7e:
	movea.l	a0,a1
	lea.l	(L047360),a0
	tst.w	($0000.w,a0)
	beq	L01cf1e
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	moveq.l	#$00,d7
	move.w	($0022,a0),d7
	ext.l	d7
	andi.l	#$00300000,d7
	subi.l	#$00180000,d7
	bsr	L01cfc8
	movea.l	a1,a0
	rts

L01cfb2:
	.dc.b	$0c,$ff,$0d,$01,$0c,$01,$0b,$ff
	.dc.b	$0c,$ff,$0d,$01,$0c,$01,$0b,$ff
	.dc.b	$0c,$ff,$0d,$01,$0c,$01

L01cfc8:
	move.w	($0020,a0),d0
	lsr.w	#4,d0
	and.w	#$0006,d0
	lea.l	(L01cfb2,pc,d0.w),a4
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	add.b	($0001,a4),d2
	move.w	($0018,a0),d0
	move.b	#$00,d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	move.w	($0022,a0),d7
	move.l	d7,d6
	swap.w	d6
	asr.w	#1,d6
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	#$0005,d7
L01d00a:
	add.w	d6,d1
	move.w	($0018,a0),d0
	move.b	(a4)+,d0
	add.b	(a4)+,d2
	lea.l	(L07dcae),a5
	jsr	(L025426)
	subi.w	#$0010,d1
	subi.w	#$0010,d2
	dbra	d7,L01d00a
	lea.l	(L07deae),a4
	lea.l	(L07ddae),a5
	move.l	d7,d3
	move.w	#$0000,d0
	bsr	L01d18e
	lea.l	(L07ddae),a5
	move.l	d7,d3
	add.l	d7,d3
	move.w	#$0070,d0
	bsr	L01d18e
	lea.l	(L07ddae),a5
	move.l	d7,d3
	add.l	d7,d3
	add.l	d7,d3
	move.w	#$00e0,d0
	bsr	L01d18e
	lea.l	(L07ddae),a5
	move.l	d7,d3
	move.b	($0027,a0),d0
	addi.b	#$80,d0
	bpl	L01d07c
	neg.b	d0
L01d07c:
	andi.w	#$00ff,d0
	move.l	d7,d1
	swap.w	d1
	asr.w	#1,d1
	swap.w	d3
	sub.w	d1,d3
	movem.w	d0/d3,-(a7)
	addi.w	#$00c0,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0004,a0),d1
	add.w	d3,d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	movem.w	(a7)+,d0/d3
	move.w	d0,d6
	lsr.w	#1,d6
	add.b	#$a8,d6
	addi.w	#$00c0,d0
	andi.w	#$00ff,d0
	jsr	(L01032e)
	move.w	d1,d2
	move.w	d0,d1
	ext.l	d1
	ext.l	d2
	asl.l	#5,d1
	asl.l	#5,d2
	add.l	($0004,a0),d1
	add.l	($0008,a0),d2
	swap.w	d1
	swap.w	d2
	add.w	d3,d1
	move.w	($0018,a0),d0
	tst.w	($0022,a0)
	bmi	L01d0ec
	neg.b	d6
	addi.b	#$9f,d6
L01d0ec:
	lsr.w	#4,d6
	move.b	d6,d0
	movea.l	a4,a5
	jsr	(L025426)
	rts

L01d0fa:
	swap.w	d3
	add.b	($0021,a0),d0
	movem.w	d0/d3,-(a7)
	move.w	d0,d6
	jsr	(L01032e)
	move.w	d1,d2
	move.w	d0,d1
	ext.l	d1
	ext.l	d2
	asl.l	#5,d1
	asl.l	#5,d2
	add.l	($0004,a0),d1
	add.l	($0008,a0),d2
	swap.w	d1
	swap.w	d2
	add.l	d3,d1
	cmpi.w	#$0038,d2
	bcs	L01d130
	move.w	#$0038,d2
L01d130:
	lsr.w	#4,d6
	move.w	($0018,a0),d0
	tst.w	($0022,a0)
	bpl	L01d142
	move.b	(L01d16e,pc,d6.w),d0
	bra	L01d146
L01d142:
	move.b	(L01d17e,pc,d6.w),d0
L01d146:
	jsr	(L025426)
	movem.w	(a7)+,d0/d3
	addi.w	#$0008.w,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0004,a0),d1
	add.w	d3,d1
	move.w	($0008,a0),d2
	movea.l	a4,a5
	jsr	(L025426)
	rts

L01d16e:
	.dc.b	$08,$08,$07,$07,$07,$08,$08,$08
	.dc.b	$08,$08,$08,$08,$08,$09,$09,$08
L01d17e:
	.dc.b	$08,$08,$09,$09,$09,$08,$08,$08
	.dc.b	$08,$08,$08,$08,$08,$07,$07,$08

L01d18e:
	swap.w	d3
	add.b	($0021,a0),d0
	movem.w	d0/d3,-(a7)
	addi.w	#$0008.w,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	($0004,a0),d1
	add.w	d3,d1
	move.w	($0008,a0),d2
	jsr	(L025426)
	movem.w	(a7)+,d0/d3
	move.w	d0,d6
	jsr	(L01032e)
	move.w	d1,d2
	move.w	d0,d1
	ext.l	d1
	ext.l	d2
	asl.l	#5,d1
	asl.l	#5,d2
	add.l	($0004,a0),d1
	add.l	($0008,a0),d2
	swap.w	d1
	swap.w	d2
	add.w	d3,d1
	cmpi.w	#$0038,d2
	bcs	L01d1e2
	move.w	#$0038,d2
L01d1e2:
	lsr.w	#4,d6
	tst.w	($0022,a0)
	bpl	L01d1f2
	lea.l	(L01d16e),a5
	bra	L01d1f8
L01d1f2:
	lea.l	(L01d17e),a5
L01d1f8:
	move.w	($0018,a0),d0
	move.b	(a5,d6.w),d0
	movea.l	a4,a5
	jsr	(L025426)
	rts

L01d20a:
	moveq.l	#$00,d7
	move.w	($0022,a0),d7
	ext.l	d7
	andi.l	#$00400000,d7
	subi.l	#$00200000,d7
	move.l	d7,d3
	move.w	#$0000,d0
	bsr	L01d25c
	move.l	d7,d3
	add.l	d7,d3
	move.w	#$0070,d0
	bsr	L01d25c
	move.l	d7,d3
	add.l	d7,d3
	add.l	d7,d3
	move.w	#$00e0,d0
	bsr	L01d25c
	move.l	d7,d3
	move.w	#$0080,d0
	bsr	L01d272
	move.l	d7,d3
	add.l	d7,d3
	move.w	#$00f0,d0
	bsr	L01d272
	move.l	d7,d3
	add.l	d7,d3
	add.l	d7,d3
	move.w	#$0060,d0
	bsr	L01d272
	rts

L01d25c:
	movea.l	a0,a1
	jsr	(L02991e)
	bcs	L01d30c
	move.l	#L07deae,($0014,a0)
	bra	L01d286
L01d272:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01d30c
	move.l	#L07de2e,($0014,a0)
L01d286:
	add.b	($0021,a1),d0
	jsr	(L01032e)
	move.w	d1,d2
	move.w	d0,d1
	ext.l	d1
	ext.l	d2
	asl.l	#5,d1
	asl.l	#5,d2
	add.l	($0004,a1),d1
	add.l	d3,d1
	add.l	($0008,a1),d2
	swap.w	d1
	swap.w	d2
	cmpi.w	#$0038,d2
	bcs	L01d2b4
	move.w	#$0038,d2
L01d2b4:
	move.w	#$007c,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$ffff,($001c,a0)
	move.w	d1,($0004,a0)
	move.w	d2,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	andi.l	#$0000ffff,d0
	add.l	d0,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	move.w	#$0080,($0020,a0)
	jsr	(L01024e)
	andi.w	#$0004,d0
	subq.w	#2,d0
	move.w	d0,($0022,a0)
	move.w	#$0000,($0018,a0)
L01d30c:
	movea.l	a1,a0
	rts

L01d310:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L01d324
	jmp	(L029cca)

L01d324:
	addi.l	#$00001000,($0010,a0)
	move.w	($0020,a0),d0
	add.w	($0022,a0),d0
	move.w	d0,($0020,a0)
	addi.w	#$0008.w,d0
	andi.w	#$00ff,d0
	lsr.w	#4,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01d34e:
	jsr	(L029900)
	bcs	L01d390
	move.w	#$007e,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0018,a0)
	move.l	#L07dc2e,($0014,a0)
	move.l	a6,($002c,a0)
L01d390:
	rts

L01d392:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01d3a6
	jmp	(L029cca)

L01d3a6:
	cmpi.w	#$0001,($001c,a0)
	beq	L01d3e0
	bcc	L01d42c
	jsr	(L025416)
	cmpi.w	#$1c30,(L047f7a)
	bcc	L01d3de
	addq.w	#1,($001c,a0)
	jsr	(L01024e)
	andi.w	#$3fff,d0
	addi.w	#$7fff,d0
	move.w	d0,($001e,a0)
	movea.l	($002c,a0),a1
	clr.w	($0002,a1)
L01d3de:
	rts

L01d3e0:
	move.w	($001e,a0),d7
	sub.w	#$0080,d7
	move.w	d7,($001e,a0)
	cmpi.w	#$7000,d7
	bcc	L01d40a
	addq.w	#1,($001c,a0)
	jsr	(L01024e)
	andi.l	#$0000ffff,d0
	move.l	d0,($0010,a0)
	clr.w	($0020,a0)
L01d40a:
	cmpi.w	#$8000,d7
	bcs	L01d414
	move.w	#$7fff,d7
L01d414:
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L02559c)
	rts

L01d42c:
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	addi.l	#$00001000,($0010,a0)
	tst.w	($0020,a0)
	bne	L01d458
	cmpi.w	#$00e0,($0008,a0)
	bcs	L01d458
	move.w	#$0002,($0020,a0)
	move.l	#$ffff0000,($0010,a0)
L01d458:
	move.w	($001e,a0),d7
	sub.w	#$0020,d7
	cmpi.w	#$4000,d7
	bcc	L01d46a
	move.w	#$4100,d7
L01d46a:
	move.w	d7,($001e,a0)
	tst.w	($0020,a0)
	beq	L01d486
	move.l	a0,d3
	asr.w	#4,d3
	move.w	(L0472f6),d4
	eor.w	d4,d3
	andi.w	#$0001,d3
	beq	L01d49c
L01d486:
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L02559c)
L01d49c:
	rts

L01d49e:
	cmp.b	($0006,a6),d1
	beq	L01d506
	jsr	(L029900)
	bcs	L01d506
	move.w	#$0087,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	andi.w	#$007f,d0
	move.w	d0,($001c,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	clr.w	($0018,a0)
	cmpi.w	#$0006,d0
	beq	L01d4fa
	move.b	($0005,a6),d0
	andi.w	#$0080,d0
	asl.w	#8,d0
	or.w	($001c,a0),d0
	move.w	d0,($0018,a0)
L01d4fa:
	move.l	#L07e216,($0014,a0)
	move.l	a6,($002c,a0)
L01d506:
	rts

L01d508:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcc	L01d51c
	jmp	(L029cca)

L01d51c:
	move.w	($001c,a0),d0
	beq	L01d536
	cmpi.w	#$0005,d0
	beq	L01d5c2
	bcc	L01d5ba
	jsr	(L025416)
	rts

L01d536:
	tst.w	($0020,a0)
	bne	L01d560
	cmpi.w	#$0040,($0004,a0)
	bcs	L01d5ba
	cmpi.w	#$00c0,($0004,a0)
	bcc	L01d5ba
	move.w	#$0001,($0020,a0)
	movea.l	($002c,a0),a1
	move.b	#$06,($0005,a1)
	clr.w	($0022,a0)
L01d560:
	move.w	($0022,a0),d0
	addq.w	#1,d0
	move.w	d0,($0022,a0)
	cmpi.w	#$000a,d0
	bne	L01d5ba
	clr.w	($0022,a0)
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0007,d0
	bne	L01d58c
	move.w	#$0006,($001c,a0)
	bra	L01d5ba
L01d58c:
	asl.w	#8,d0
	movea.l	a0,a2
	lea.l	(L06a8dc),a0
	lea.l	(a0,d0.w),a0
	add.w	d0,d0
	lea.l	(a0,d0.w),a0
	lea.l	($00ebe600),a1
	jsr	(L003850)
	jsr	(L003850)
	jsr	(L003850)
	movea.l	a2,a0
L01d5ba:
	jsr	(L025416)
	rts

L01d5c2:
	move.w	(L0472f6),d0
	andi.w	#$0003,d0
	bne	L01d624
	move.w	($0020,a0),d0
	move.w	($001e,a0),d1
	addq.w	#1,d0
	andi.w	#$0003,d0
	move.w	d0,($0020,a0)
	bne	L01d5ec
	addq.w	#1,d1
	andi.w	#$0003,d1
	move.w	d1,($001e,a0)
L01d5ec:
	cmpi.w	#$0003,d0
	beq	L01d624
	movea.l	a0,a2
	add.w	d0,d0
	asl.w	#8,d0
	lea.l	($00ebe000),a1
	lea.l	(a1,d0.w),a1
	asl.w	#2,d0
	lea.l	(L05fbdc),a0
	lea.l	(a0,d0.w),a0
	add.w	d1,d1
	asl.w	#8,d1
	lea.l	(a0,d1.w),a0
	jsr	(L003850)
	jsr	(L003850)
	movea.l	a2,a0
L01d624:
	rts

L01d626:
	jsr	(L029900)
	bcs	L01d68c
	move.w	#$0088,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001e,a0)
	clr.w	($0020,a0)
	move.b	($0006,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0022,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($001c,a0)
	beq	L01d67e
	subq.w	#1,d0
	move.w	d0,($0018,a0)
	move.l	#L07e2a6,($0014,a0)
	bra	L01d68c
L01d67e:
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
L01d68c:
	rts

L01d68e:
	jsr	(L02993c)
	tst.w	($001c,a0)
	bne	L01d742
	move.w	(L0472f6),d0
	andi.w	#$0001,d0
	bne	L01d740
	move.w	($0020,a0),d0
	move.w	($001e,a0),d1
	addq.w	#1,d0
	andi.w	#$0003,d0
	move.w	d0,($0020,a0)
	bne	L01d6c8
	addq.w	#1,d1
	andi.w	#$0003,d1
	move.w	d1,($001e,a0)
L01d6c8:
	movea.l	a0,a2
	cmpi.w	#$0003,d0
	beq	L01d73e
	cmpi.w	#$0001,d0
	beq	L01d6f2
	bcc	L01d714
	lea.l	($00eb9800),a1
	lea.l	(L05fbdc),a0
	asl.w	#8,d1
	lea.l	(a0,d1.w),a0
	jsr	(L003850)
	bra	L01d73e
L01d6f2:
	lea.l	($00eb9900),a1
	lea.l	(L05ffdc),a0
	add.w	d1,d1
	asl.w	#8,d1
	lea.l	(a0,d1.w),a0
	jsr	(L003850)
	jsr	(L003850)
	bra	L01d73e
L01d714:
	lea.l	($00eb9b00),a1
	lea.l	(L0607dc),a0
	asl.w	#8,d1
	move.w	d1,d0
	add.w	d1,d1
	add.w	d0,d1
	lea.l	(a0,d1.w),a0
	jsr	(L003850)
	jsr	(L003850)
	jsr	(L003850)
L01d73e:
	movea.l	a2,a0
L01d740:
	rts

L01d742:
	jsr	(L0299de)
	bcc	L01d750
	jmp	(L029cca)

L01d750:
	jsr	(L025416)
	tst.w	($0022,a0)
	beq	L01d740
	move.w	(L0472f6),d0
	lsr.w	#2,d0
	andi.w	#$00ff,d0
	move.w	d0,d3
	jsr	(L010440)
	asr.w	#8,d0
	asr.w	#2,d0
	add.w	($0004,a0),d0
	move.w	d0,d1
	move.w	($0008,a0),d2
	add.w	#$0010,d2
	move.w	(L0472f6),d0
	lsr.w	#4,d0
	andi.w	#$0003,d0
	addi.b	#$40,d3
	bmi	L01d798
	ori.w	#$8000,d0
L01d798:
	lea.l	(L07e2ce),a5
	jsr	(L025426)
	rts

L01d7a6:
	jsr	(L0298c4)
	bcs	L01d7ec
	move.w	#$0089,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0014,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	clr.w	($0020,a0)
	clr.w	($0022,a0)
	clr.w	($0024,a0)
	clr.w	($0018,a0)
	move.l	#L07e256,($0014,a0)
	move.l	a6,($002c,a0)
L01d7ec:
	rts

L01d7ee:
	clr.w	(L0470f2)
	clr.w	(L0470fa)
	moveq.l	#$37,d0
	trap	#0
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01d81e
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	#$0f0f,d0
	jsr	(L029bac)
L01d81e:
	movea.l	a1,a0
	move.w	#$1f1f,d0
	jmp	(L029bac)

L01d82a:
	clr.w	(L0470f2)
	clr.w	(L0470fa)
	jmp	(L029cca)

L01d83c:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcs	L01d82a
	jsr	(L029a3e)
	bcc	L01d862
	beq	L01d7ee
	moveq.l	#$31,d0
	trap	#0
	move.w	#$0009,($0024,a0)
	clr.b	($0002,a0)
L01d862:
	move.w	($0024,a0),d0
	beq	L01d87a
	subq.w	#1,d0
	move.w	d0,($0024,a0)
	bne	L01d87a
	move.b	#$03,($0002,a0)
	clr.b	($001a,a0)
L01d87a:
	move.w	($0022,a0),d0
	beq	L01d8b0
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	beq	L01d892
	andi.w	#$0001,d0
	add.w	d0,d0
	subi.w	#$0001.w,d0
L01d892:
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
	cmpi.w	#$00c8,(L0473f8)
	bne	L01d8b0
	bset.b	#$07,(L0473f2)
L01d8b0:
	tst.w	(L047fac)
	beq	L01d8be
	move.w	#$0001,($0024,a0)
L01d8be:
	move.b	($0021,a0),d0
	tst.w	($0024,a0)
	bne	L01d8e6
	move.w	($0004,a0),d1
	sub.w	(L0473f4),d1
	andi.w	#$8000,d1
	move.w	d1,($0020,a0)
	addq.b	#1,d0
	cmpi.b	#$18,d0
	bcs	L01d8e6
	move.b	#$00,d0
L01d8e6:
	move.b	d0,($0021,a0)
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L01d8f8,pc,d0.w),d0
	jmp	(L01d8f8,pc,d0.w)

L01d8f8:
	.dc.w	L01d900-L01d8f8
	.dc.w	L01d968-L01d8f8
	.dc.w	L01da7e-L01d8f8
	.dc.w	L01db42-L01d8f8

L01d900:
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	subi.w	#$0002.w,d2
	move.w	#$0001,d0
	lea.l	(L07e2a6),a5
	jsr	(L025426)
	move.w	($0020,a0),d0
	lsr.b	#3,d0
	move.w	d0,($0018,a0)
	move.l	#L07e28e,($0014,a0)
	jsr	(L025416)
	tst.w	(L047fac)
	bne	L01d966
	cmpi.w	#$0380,(L047f7a)
	bcs	L01d966
	move.w	#$0001,($001c,a0)
	clr.w	($001e,a0)
	bsr	L01dabe
	moveq.l	#$44,d0
	trap	#0
	move.b	#$03,($0002,a0)
	movea.l	($002c,a0),a1
	clr.w	($0002,a1)
L01d966:
	rts

L01d968:
	move.w	($001e,a0),d0
	tst.w	($0024,a0)
	bne	L01d978
	addq.w	#1,d0
	move.w	d0,($001e,a0)
L01d978:
	cmpi.w	#$000c,d0
	bcs	L01d9b4
	cmpi.w	#$0010,d0
	beq	L01d9f4
	bcs	L01d9da
	cmpi.w	#$0031,d0
	beq	L01d9be
	bcs	L01da36
	cmpi.w	#$0038,d0
	bcs	L01d9da
	cmpi.w	#$0040,d0
	bcs	L01d9b4
	move.w	#$0002,($001c,a0)
	jsr	(L01024e)
	andi.w	#$007f,d0
	addi.w	#$0008.w,d0
	move.w	d0,($001e,a0)
L01d9b4:
	move.l	#L07e256,($0014,a0)
	bra	L01d9e2
L01d9be:
	tst.w	($0024,a0)
	bne	L01d9da
	addi.w	#$0004.w,($0008,a0)
	move.w	#$0004,($0022,a0)
	moveq.l	#$55,d0
	trap	#0
	move.w	#$00c2,($0008,a0)
L01d9da:
	move.l	#L07e23e,($0014,a0)
L01d9e2:
	move.w	($0020,a0),d0
	lsr.b	#3,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01d9f4:
	move.w	(L047f7a),d1
	add.w	($0004,a0),d1
	cmpi.w	#$03a0,d1
	bcs	L01da10
	cmpi.w	#$04e0,d1
	bcc	L01da1a
	tst.w	($0020,a0)
	bpl	L01da1a
L01da10:
	move.l	#$00018000,($000c,a0)
	bra	L01da22
L01da1a:
	move.l	#$fffe8000,($000c,a0)
L01da22:
	move.l	#$fffa0000,($0010,a0)
	tst.w	($0024,a0)
	bne	L01da36
	subi.w	#$0004.w,($0008,a0)
L01da36:
	tst.w	($0024,a0)
	bne	L01da56
	move.l	($000c,a0),d1
	add.l	d1,($0004,a0)
	move.l	($0010,a0),d1
	add.l	d1,($0008,a0)
	add.l	#$00006000,d1
	move.l	d1,($0010,a0)
L01da56:
	move.l	#L07e26e,($0014,a0)
	lsr.w	#3,d0
	andi.w	#$0003,d0
	move.w	($000c,a0),d1
	andi.w	#$8000,d1
	eori.w	#$8000,d1
	or.w	d1,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01da7e:
	tst.w	($0024,a0)
	bne	L01da92
	subi.w	#$0001.w,($001e,a0)
	bne	L01da92
	move.w	#$0001,($001c,a0)
L01da92:
	btst.b	#$04,($001f,a0)
	beq	L01daa4
	move.l	#L07e256,($0014,a0)
	bra	L01daac
L01daa4:
	move.l	#L07e23e,($0014,a0)
L01daac:
	move.w	($0020,a0),d0
	lsr.b	#3,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01dabe:
	move.w	#$0000,d1
	bsr	L01dade
	move.w	#$0001,d1
	bsr	L01dade
	move.w	#$0001,d1
	bsr	L01dade
	move.w	#$0002,d1
	bsr	L01dade
	move.w	#$0002,d1
	bsr	L01dade
	rts

L01dade:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01db3e
	move.w	#$0089,($0000.w,a0)
	clr.w	($0002,a0)
	clr.w	($001a,a0)
	move.w	#$0003,($001c,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.l	#L07e2ee,($0014,a0)
	move.w	d1,($0018,a0)
	clr.w	($0020,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	addi.l	#$00020000,d0
	neg.l	d0
	move.l	d0,($0010,a0)
L01db3e:
	movea.l	a1,a0
	rts

L01db42:
	jsr	(L0299de)
	bcc	L01db50
	jmp	(L029cca)

L01db50:
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	#$00008000,d0
	move.l	d0,($0010,a0)
	add.l	d0,($0008,a0)
	jsr	(L025416)
	tst.w	($0020,a0)
	bne	L01db90
	cmpi.w	#$00d8,($0008,a0)
	bcs	L01db90
	move.w	#$0001,($0020,a0)
	move.l	($0010,a0),d0
	asr.l	#1,d0
	neg.l	d0
	move.l	d0,($0010,a0)
L01db90:
	rts

L01db92:
	movem.l	d0-d7/a0-a6,-(a7)
	lea.l	(L0473f0),a0
	cmpi.w	#$0001,($0000.w,a0)
	bne	L01dba6
	bsr	L01dbd6
L01dba6:
	lea.l	(L047450),a0
	tst.w	($0000.w,a0)
	beq	L01dbb4
	bsr	L01dbd6
L01dbb4:
	lea.l	(L047480),a0
	tst.w	($0000.w,a0)
	beq	L01dbc2
	bsr	L01dbd6
L01dbc2:
	lea.l	(L0474b0),a0
	tst.w	($0000.w,a0)
	beq	L01dbd0
	bsr	L01dbd6
L01dbd0:
	movem.l	(a7)+,d0-d7/a0-a6
	rts

L01dbd6:
	move.w	(L047fe4),d2
	move.w	(L047fe6),d3
	move.w	(L047fea),d7
	move.w	($0004,a0),d0
	sub.w	d2,d0
	bpl	L01dbf2
	neg.w	d0
L01dbf2:
	cmpi.w	#$0080,d0
	bcc	L01dcdc
	mulu.w	d0,d0
	move.w	($0008,a0),d1
	sub.w	d3,d1
	bpl	L01dc06
	neg.w	d1
L01dc06:
	cmpi.w	#$0080,d1
	bcc	L01dcdc
	mulu.w	d1,d1
	add.w	d1,d0
	neg.w	d0
	add.w	#$7fff,d0
	bpl	L01dc1c
	lsr.w	#1,d0
L01dc1c:
	mulu.w	d0,d7
	swap.w	d7
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	jsr	(L01032e)
	muls.w	d7,d0
	muls.w	d7,d1
	swap.w	d0
	swap.w	d1
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	cmpi.w	#$0001,($0000.w,a0)
	bne	L01dcde
	cmpi.b	#$03,($001d,a0)
	beq	L01dc58
	moveq.l	#$00,d1
L01dc58:
	add.l	d0,($0004,a0)
	add.l	d1,($0008,a0)
	movem.l	d0-d1,-(a7)
	move.l	d0,d6
	bsr	L025620
	tst.l	d6
	bmi	L01dc74
	add.w	($0004,a5),d1
	bra	L01dc78
L01dc74:
	sub.w	($0004,a5),d1
L01dc78:
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0028,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L01dcca
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L01dcca
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0010,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L01dcca
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0020,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L01dcca
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0028,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L01dcca
	bra	L01dcd8
L01dcca:
	movem.l	(a7)+,d0-d1
	sub.l	d0,($0004,a0)
	sub.l	d1,($0008,a0)
	bra	L01dcdc
L01dcd8:
	movem.l	(a7)+,d0-d1
L01dcdc:
	rts

L01dcde:
	add.l	d0,($0004,a0)
	add.l	d1,($0008,a0)
	rts

L01dce8:
	jsr	(L029900)
	bcs	L01dd32
	move.w	#$00a7,($0000.w,a0)
	move.w	d0,($0002,a0)
	clr.w	($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0002,d0
	beq	L01dd22
	subi.w	#$0001.w,($0008,a0)
L01dd22:
	clr.w	($001e,a0)
	clr.w	($0018,a0)
	move.l	#L08688e,($0014,a0)
L01dd32:
	rts

L01dd34:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01dd48
	jmp	(L029cca)

L01dd48:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$000f,d0
	move.w	d0,($001e,a0)
	lsr.w	#1,d0
	move.w	($0020,a0),d1
	bne	L01dd62
	addi.w	#$0008.w,d0
L01dd62:
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01dd6e:
	jsr	(L0298a6)
	bcs	L01dddc
	move.w	#$00a2,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	move.w	#$0018,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	clr.l	($0024,a0)
	clr.l	($0028,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L070b32,($0014,a0)
	move.b	($0005,a6),d0
	andi.w	#$00ff,d0
	move.w	d0,($0020,a0)
	move.b	($0006,a6),d0
	ext.w	d0
	move.w	d0,($002c,a0)
	clr.w	($0022,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	move.l	a6,($002c,a0)
L01dddc:
	rts

L01ddde:
	moveq.l	#$37,d0
	trap	#0
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01de02
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.w	#$1f0f,d0
	jsr	(L029bac)
L01de02:
	movea.l	a1,a0
	movea.l	($002c,a0),a1
	clr.w	($0002,a1)
	move.w	#$1f0f,d0
	jmp	(L029bac)

L01de16:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01de2a
	jmp	(L029cca)

L01de2a:
	tst.w	($0022,a0)
	beq	L01de48
	subq.w	#1,($0022,a0)
	bne	L01de42
	move.b	#$00,($001a,a0)
	move.b	#$03,($0002,a0)
L01de42:
	bra	L025416
L01de46:
	rts

L01de48:
	jsr	(L029a3e)
	bcc	L01de60
	beq	L01ddde
	moveq.l	#$31,d0
	trap	#0
	move.w	#$0010,($0022,a0)
	clr.b	($0002,a0)
L01de60:
	tst.w	(L047fac)
	bne	L01df32
	move.l	($000c,a0),d0
	cmp.l	($0024,a0),d0
	beq	L01de84
	bgt	L01de7e
	addi.l	#$00001000,d0
	bra	L01de84
L01de7e:
	subi.l	#$00001000,d0
L01de84:
	move.l	d0,($000c,a0)
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	cmp.l	($0028,a0),d0
	beq	L01dea6
	bgt	L01dea0
	addi.l	#$00001000,d0
	bra	L01dea6
L01dea0:
	subi.l	#$00001000,d0
L01dea6:
	move.l	d0,($0010,a0)
	add.l	d0,($0008,a0)
	tst.w	($001c,a0)
	bne	L01df0a
	subq.w	#1,($0020,a0)
	bne	L01df32
	move.w	#$0001,($001c,a0)
	move.w	#$0008,d0
	sub.w	(L047354),d0
	asl.w	#3,d0
	addi.w	#$0020,d0
	move.w	d0,($0020,a0)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	(L0473f4),d2
	add.w	($002c,a0),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#3,d0
	asl.l	#3,d1
	move.l	d0,($0024,a0)
	move.l	d1,($0028,a0)
	bra	L01df32
L01df0a:
	subq.w	#1,($0020,a0)
	bne	L01df32
	move.w	#$0000,($001c,a0)
	move.w	#$0006,d0
	sub.w	(L047354),d0
	asl.w	#5,d0
	move.w	d0,($0020,a0)
	clr.l	($0024,a0)
	clr.l	($0028,a0)
	bra.w	L01df32
L01df32:
	tst.w	(L047fac)
	bne	L01df4a
	lea.l	(L00449c),a1
	move.w	#$0007,d1
	jsr	(L029d28)
L01df4a:
	jsr	(L025416)
	rts

L01df52:
	jsr	(L0298a6)
	bcs	L01dfa2
	move.w	#$009e,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	move.w	#$00ff,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0010,a0)
	clr.w	($0018,a0)
	move.l	#L082fc2,($0014,a0)
	move.b	($0005,a6),d0
	ext.w	d0
	move.w	d0,($001c,a0)
	clr.w	($0020,a0)
	clr.w	($001e,a0)
	move.l	a6,($002c,a0)
L01dfa2:
	rts

L01dfa4:
	cmpi.w	#$0003,($001c,a0)
	bne	L01dfb4
	movea.l	($002c,a0),a1
	clr.w	($0002,a1)
L01dfb4:
	jmp	(L029cca)

L01dfba:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcs	L01dfa4
	cmpi.w	#$0003,($001c,a0)
	beq	L01e062
	bcc	L01e270
	cmpi.w	#$0001,($001c,a0)
	beq	L01e012
	bcc	L01e022
L01dfe0:
	movea.l	($0014,a0),a5
	move.w	#$0004,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	jsr	(L025426)
L01dff6:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$000f,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01e012:
	cmpi.w	#$0070,($0004,a0)
	blt	L01dfe0
	move.w	#$0002,($001c,a0)
	bra	L01dfe0
L01e022:
	move.w	($0020,a0),d0
	addq.w	#1,d0
	move.w	d0,($0020,a0)
	cmpi.w	#$0010,d0
	bcc	L01e044
	cmpi.w	#$0008,d0
	bcc	L01e042
	neg.w	d0
	addi.w	#$0007.w,d0
	add.w	d0,($0008,a0)
L01e042:
	bra	L01e05e
L01e044:
	move.l	($0010,a0),d0
	addi.l	#$00008000,d0
	move.l	d0,($0010,a0)
	add.l	d0,($0008,a0)
	cmpi.w	#$00e0,($0008,a0)
	bcc	L01e07a
L01e05e:
	bsr	L01e062
	bra	L01dff6
L01e062:
	movea.l	($0014,a0),a5
	move.w	#$0004,d0
	move.w	($0004,a0),d1
	move.w	#$0058,d2
	jsr	(L025426)
	rts

L01e07a:
	moveq.l	#$80,d0
	trap	#0
	bsr	L01e09e
	cmpi.w	#$0015,(L04731e)
	beq	L01e096
	move.l	a0,-(a7)
	bsr	L01e564
	movea.l	(a7)+,a0
	bra.w	L01e096
L01e096:
	move.w	#$0003,($001c,a0)
	bra	L01e062
L01e09e:
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	moveq.l	#$00,d3
	move.w	#$0002,d4
	move.l	#L08302a,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0003,d4
	move.l	#L08302a,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	moveq.l	#$ff,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0000,d4
	move.l	#L08302a,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	moveq.l	#$00,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$8000,d4
	move.l	#L08302a,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	moveq.l	#$ff,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0001,d4
	move.l	#L08302a,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	move.l	($0008,a0),d2
	moveq.l	#$00,d0
	jsr	(L01024e)
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$8001,d4
	move.l	#L08302a,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	subi.l	#$00200000,d1
	move.l	($0008,a0),d2
	subi.l	#$00100000,d2
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0000,d4
	move.l	#L082fea,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	subi.l	#$00100000,d1
	move.l	($0008,a0),d2
	subi.l	#$00100000,d2
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0000,d4
	move.l	#L082fea,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	addi.l	#$00100000,d1
	move.l	($0008,a0),d2
	subi.l	#$00100000,d2
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0000,d4
	move.l	#L082fea,d5
	bsr	L01e220
	move.l	($0004,a0),d1
	subi.l	#$00200000,d1
	move.l	($0008,a0),d2
	subi.l	#$00100000,d2
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,d3
	move.w	#$0000,d4
	move.l	#L082fea,d5
	bsr	L01e220
	clr.b	($0002,a0)
	movea.l	($002c,a0),a1
	clr.w	($0002,a1)
	rts

L01e220:
	movea.l	a0,a1
	jsr	(L0298e2)
	bcs	L01e26c
	move.w	#$009e,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.l	d1,($0004,a0)
	move.l	d2,($0008,a0)
	move.l	d3,($000c,a0)
	move.w	#$0004,($001c,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	asl.l	#3,d0
	addi.l	#$00010000,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	move.w	d4,($0018,a0)
	move.l	d5,($0014,a0)
L01e26c:
	movea.l	a1,a0
	rts

L01e270:
	addi.l	#$00004000,($0010,a0)
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	jsr	(L0299de)
	bcc	L01e296
	jmp	(L029cca)

L01e296:
	cmpi.w	#$0004,($001c,a0)
	bne	L01e2c2
	cmpi.w	#$00e0,($0008,a0)
	bcs	L01e2c2
	move.l	($0010,a0),d0
	neg.l	d0
	asr.l	#1,d0
	move.l	d0,($0010,a0)
	move.w	#$0005,($001c,a0)
	ori.w	#$4000,($0018,a0)
	clr.w	($0002,a0)
L01e2c2:
	cmpi.l	#L082fea,($0014,a0)
	bne	L01e2e6
	move.b	($000c,a0),d0
	rol.b	#2,d0
	andi.b	#$02,d0
	subi.b	#$01.b,d0
	add.b	($0019,a0),d0
	andi.b	#$07,d0
	move.b	d0,($0019,a0)
L01e2e6:
	jsr	(L025416)
	rts

L01e2ee:
	jsr	(L0298a6)
	bcs	L01e326
	move.w	#$009f,($0000.w,a0)
	move.w	d0,($0002,a0)
	clr.w	($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($0018,a0)
	move.l	#L08304a,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($0020,a0)
L01e326:
	rts

L01e328:
	jsr	(L02993c)
	jsr	(L0299e2)
	bcc	L01e33c
	jmp	(L029cca)

L01e33c:
	cmpi.w	#$0001,($001c,a0)
	beq	L01e348
	bcc	L01e3d2
L01e348:
	tst.w	($001c,a0)
	bne	L01e3b6
	cmpi.w	#$0080,($0004,a0)
	ble	L01e3b6
	move.w	#$0001,($001c,a0)
	move.l	#L08306a,($0014,a0)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L01e3b4
	move.w	#$009f,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$00ff,($001a,a0)
	move.l	($0004,a1),($0004,a0)
	subi.w	#$0028,($0004,a0)
	move.l	($0008,a1),($0008,a0)
	addi.w	#$0020,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0002,($001c,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L08308a,($0014,a0)
L01e3b4:
	movea.l	a1,a0
L01e3b6:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$000f,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01e3d2:
	addi.l	#$00004000,($0010,a0)
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	jsr	(L0299de)
	bcc	L01e3f8
	jmp	(L029cca)

L01e3f8:
	cmpi.w	#$0002,($001c,a0)
	bne	L01e430
	cmpi.w	#$00e0,($0008,a0)
	bcs	L01e430
	move.l	($0010,a0),d0
	neg.l	d0
	asr.l	#1,d0
	move.l	d0,($0010,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,($000c,a0)
	move.w	#$0003,($001c,a0)
	move.l	#L0830aa,($0014,a0)
L01e430:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	andi.w	#$000f,d0
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L01e44c:
	jsr	(L02991e)
	bcs	L01e4a6
	move.w	#$00a6,($0000.w,a0)
	move.w	d0,($0002,a0)
	clr.w	($0018,a0)
	move.l	#L0830ca,($0014,a0)
L01e46a:
	jsr	(L01024e)
	andi.w	#$003f,d0
	move.w	d0,($001c,a0)
	move.w	#$00c0,($001e,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	swap.w	d0
	move.l	d0,($0004,a0)
	move.l	#$00e00000,($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
L01e4a6:
	rts

L01e4a8:
	jsr	(L02993c)
	tst.w	($001c,a0)
	beq	L01e4ba
	subq.w	#1,($001c,a0)
	rts

L01e4ba:
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	beq	L01e46a
	move.w	d0,d1
	cmpi.w	#$0010,d0
	bcs	L01e502
	andi.w	#$0001,d0
	bne	L01e502
	andi.w	#$000e,d1
	jsr	(L01024e)
	andi.b	#$07,d0
	subq.b	#4,d0
	move.b	d0,($20,a0,d1.w)
	jsr	(L01024e)
	andi.b	#$07,d0
	add.b	#$15,d0
	move.b	d0,($21,a0,d1.w)
	lsr.w	#1,d1
	move.b	#$10,($0c,a0,d1.w)
L01e502:
	move.w	#$0000,d7
	move.w	($0004,a0),d5
	move.w	($0008,a0),d6
	lea.l	($0020,a0),a1
L01e512:
	move.b	($0c,a0,d7.w),d0
	beq	L01e558
	subq.b	#1,d0
	move.b	d0,($0c,a0,d7.w)
	ext.w	d0
	move.b	(a1),d1
	ext.w	d1
	add.w	d5,d1
	move.b	d7,d2
	andi.b	#$01,d2
	add.b	($0001,a1),d2
	subi.b	#$06.b,d2
	move.b	d2,($0001,a1)
	ext.w	d2
	add.w	d6,d2
	cmpi.b	#$08,d0
	bcs	L01e54a
	lea.l	(L0830ca),a5
	bra	L01e550
L01e54a:
	lea.l	(L0830ea),a5
L01e550:
	lsr.b	#2,d0
	jsr	(L025426)
L01e558:
	addq.w	#2,a1
	addq.w	#1,d7
	cmpi.w	#$0008,d7
	bne	L01e512
	rts

L01e564:
	jsr	(L0298a6)
	bcs	L01e5be
	move.w	#$008f,($0000.w,a0)
	move.w	d0,($0002,a0)
	clr.w	($001a,a0)
	move.l	#$00800000,($0004,a0)
	move.l	#$00200000,($0008,a0)
	clr.w	($001c,a0)
	clr.w	($0020,a0)
	clr.w	($001e,a0)
	move.w	#$0015,(L04731e)
	clr.w	(L047322)
	move.w	#$0011,(L047124)
	move.w	#$0047,d0
	moveq.l	#$00,d1
	lea.l	(L05babc),a1
L01e5b8:
	move.l	d1,(a1)+
	dbra	d0,L01e5b8
L01e5be:
	rts

L01e5c0:
	.dc.l	L0821fa
	.dc.l	L08225a
	.dc.l	L0822ba
	.dc.l	L08231a
	.dc.l	L0822ba
	.dc.l	L08225a

L01e5d8:
	tst.w	(L047fb8)
	bne	L01e614
	move.w	($0020,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0030,d0
	bcs	L01e5ee
	clr.w	d0
L01e5ee:
	move.w	d0,($0020,a0)
	move.w	d0,d1
	andi.w	#$0007,d1
	bne	L01e614
	lsr.w	#3,d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L01e5c0,pc,d0.w),a1
	lea.l	($00e82360),a2
	move.w	#$0017,d0
L01e60e:
	move.l	(a1)+,(a2)+
	dbra	d0,L01e60e
L01e614:
	tst.w	(L047322)
	bne	L01e6ca
	tst.w	($001c,a0)
	bne	L01e674
	move.w	($001e,a0),d0
	addq.w	#4,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$00c0,d0
	bne	L01e63a
	move.w	#$0001,($001c,a0)
L01e63a:
	cmpi.w	#$0090,d0
	bcs	L01e644
	move.w	#$0090,d0
L01e644:
	lea.l	(L05bb3c),a1
	lea.l	(L05bb3d),a2
L01e650:
	move.b	(a1),d1
	addq.b	#4,d1
	cmpi.w	#$0030,d1
	bcc	L01e65c
	move.b	d1,(a1)
L01e65c:
	lea.l	(-$0001,a1),a1
	move.b	(a2),d1
	addq.b	#4,d1
	cmpi.w	#$0030,d1
	bcc	L01e66c
	move.b	d1,(a2)
L01e66c:
	addq.w	#1,a2
	dbra	d0,L01e650
	bra	L01e6c2
L01e674:
	move.w	(L0472f6),d0
	andi.w	#$00ff,d0
	add.w	d0,d0
	lea.l	(L010458),a1
	move.w	(L0470ee),d1
	andi.w	#$007f,d1
	add.w	d1,d1
	add.w	d1,d1
	sub.w	d1,d0
	andi.w	#$01ff,d0
	move.w	#$011f,d1
	lea.l	(L05babc),a2
L01e6a4:
	move.b	(a1,d0.w),d2
	asr.b	#2,d2
	move.b	d2,d3
	asr.b	#1,d2
	add.b	d3,d2
	addi.b	#$18,d2
	move.b	d2,(a2)+
	subi.w	#$0004.w,d0
	andi.w	#$01ff,d0
	dbra	d1,L01e6a4
L01e6c2:
	move.w	#$0001,(L047322)
L01e6ca:
	rts

L01e6cc:
	move.w	(L0470ee),d7
	subi.w	#$0010,d7
	andi.w	#$01ff,d7
	add.w	d7,d7
	lea.l	($00c28001),a1
	lea.l	(a1,d7.w),a1
	lea.l	(L05babc),a2
	move.w	(L0472f6),d0
	add.w	d0,d0
	andi.w	#$0030,d0
	asl.w	#2,d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d0,d1
	add.w	#$0090,d1
	move.w	#$011f,d7
L01e708:
	movea.l	a1,a3
	moveq.l	#$00,d0
	move.b	(a2)+,d0
	add.w	d1,d0
	asl.w	#2,d0
	asl.l	#8,d0
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.b	(a3,d0.l),(a3)
	lea.l	($0400,a3),a3
	move.l	a1,d5
	move.w	d5,d6
	addq.w	#2,d6
	andi.w	#$03ff,d6
	andi.l	#$fffffc00,d5
	add.w	d6,d5
	movea.l	d5,a1
	dbra	d7,L01e708
	rts

L01ea2e:
	jsr	(L0298a6)
	bcs	L01ea70
	move.w	#$007d,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.w	#$0000,($0018,a0)
	move.l	#L06c3e4,($0014,a0)
	move.w	#$0011,(L04731e)
	clr.w	(L047322)
L01ea70:
	rts

L01ea72:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L01ea86
	jmp	(L029cca)

L01ea86:
	tst.w	(L047322)
	bne	L01eace
	move.w	(L0472f6),d1
	neg.w	d1
	asl.l	#8,d1
	asl.l	#3,d1
	andi.l	#$0003fc00,d1
	move.w	(L0472f6),d0
	add.w	d0,d0
	add.w	d0,d0
	andi.w	#$01fe,d0
	add.w	d0,d1
	add.l	#$00c80400,d1
	move.l	d1,(L047326)
	move.l	#$00c30200,(L04732a)
	move.w	#$0001,(L047322)
L01eace:
	rts

L01ead0:
	movea.l	(L047326),a1
	movea.l	(L04732a),a2
	move.l	#$00028000,d0
	move.w	#$003e,d7
	move.l	#$00001000,d5
	move.l	#$00002000,d4
L01eaf2:
	moveq.l	#$00,d1
	sub.l	d0,d1
	asl.l	#7,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	move.l	d1,d2
	swap.w	d2
	add.w	d2,d2
	move.w	(a1,d2.w),(a2)+
	add.l	d0,d1
	lea.l	($0240,a2),a2
	move.l	d4,d3
	andi.l	#$fffff800,d3
	add.l	a1,d3
	andi.l	#$0003ffff,d3
	ori.l	#$00c80000,d3
	movea.l	d3,a1
	subi.l	#$00000060,d4
	sub.l	d5,d0
	sub.l	#$00000040,d5
	dbra	d7,L01eaf2
	rts

L01f5a8:
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$001f,d7
L01f5d0:
	move.l	(a5)+,(a6)+
	dbra	d7,L01f5d0
	lea.l	(L04512e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eba800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06e260),d7
	ext.w	d7
	neg.w	d7
	addq.w	#2,d7
	asl.w	#5,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82240),a6
	move.w	#$001f,d7
L01f624:
	move.l	(a5)+,(a6)+
	dbra	d7,L01f624
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$004c,d7
	add.w	d7,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82298),a6
	move.w	#$0003,d7
L01f658:
	move.w	(a5)+,(a6)+
	dbra	d7,L01f658
	bsr	L023c26
	rts

L01f664:
	move.w	(L047350),-(a7)
	lea.l	(L047348),a0
	lea.l	(L047f62),a1
	bsr	L023960
	move.w	(a7)+,(L047350)
	moveq.l	#$00,d0
	move.l	d0,(L047348)
	move.l	#$00030000,(L04734c)
	move.w	#$0003,(L047352)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$001f,d7
L01f6c2:
	move.l	(a5)+,(a6)+
	dbra	d7,L01f6c2
	lea.l	(L045bea),a5
	lea.l	($00e6f000),a6
	jsr	(L03d632)
	lea.l	(L04512e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eba800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06e260),d7
	ext.w	d7
	neg.w	d7
	addq.w	#2,d7
	asl.w	#5,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82240),a6
	move.w	#$001f,d7
L01f728:
	move.l	(a5)+,(a6)+
	dbra	d7,L01f728
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$004c,d7
	add.w	d7,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82298),a6
	move.w	#$0003,d7
L01f75c:
	move.w	(a5)+,(a6)+
	dbra	d7,L01f75c
	bsr	L023c26
	clr.w	(L047356)
	bsr	L01f820
	rts

L01f772:
	moveq.l	#$f0,d0
	trap	#0
	clr.w	(L047356)
	jsr	(L043694)
	bsr	L01f820
	moveq.l	#$00,d0
	move.w	d2,d0
	addq.w	#1,d0
	ori.w	#$0600,sr
	bclr.b	#$03,($00e88009)
	andi.w	#$f8ff,sr
	movem.l	d0/d2,-(a7)
	tst.b	(L00354c)
	bne	L01f7f6
	tst.l	(L0470ea)
	bne	L01f7f6
L01f7b0:
	move.w	#$9000,d1
	move.w	#$0000,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.w	#$000f,d0
	btst.l	#$01,d0
	beq	L01f7ee
	move.w	#$0020,-(a7)
	pea.l	(L003789)
	pea.l	(L048214)
	DOS	_FILES
	lea.l	($000a,a7),a7
	tst.l	d0
	beq	L01f7f6
L01f7ee:
	jsr	(L03caa2)
	bra	L01f7b0
L01f7f6:
	movem.l	(a7)+,d0/d2
	trap	#3
	bset.b	#$03,($00e88009)
	move.w	d2,d0
	add.w	d0,d0
	move.w	(L01f810,pc,d0.w),d0
	jmp	(L01f810,pc,d0.w)

L01f810:
	.dc.w	L01f8d8-L01f810
	.dc.w	L01f982-L01f810
	.dc.w	L01fa86-L01f810
	.dc.w	L01fb6a-L01f810
	.dc.w	L01fc14-L01f810
	.dc.w	L01fc9a-L01f810
	.dc.w	L01fd4a-L01f810
	.dc.w	L01fe64-L01f810

L01f820:
	moveq.l	#$f0,d0
	trap	#0
	lea.l	(L047f62),a0
	lea.l	(L0481e0),a1
	bsr	L023960
	clr.w	(L04731e)
	move.w	#$0010,(L047f64)
	move.w	#$0005,(L047f66)
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	move.w	d0,d1
	move.w	d1,(L047354)
	swap.w	d0
	andi.l	#$0000ffff,d0
	divu.w	#$0003,d0
	move.w	d0,d2
	add.w	d0,d0
	add.w	d0,d0
	move.b	(L01f8bb,pc,d0.w),(L047f60)
	move.w	(L01f8b8,pc,d0.w),d3
	swap.w	d0
	asl.w	#8,d0
	sub.w	d0,d3
	move.w	d3,(L047f62)
	jsr	(L018c0e)
	move.b	(L06fe92),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06fe94),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L01f8b0:
	move.l	(a5)+,(a6)+
	dbra	d7,L01f8b0
	rts

L01f8b8:
	.dc.b	$04,$00,$00
L01f8bb:
	.dc.b	$bb,$04,$00,$00,$b3,$05,$00,$00
	.dc.b	$b2,$05,$00,$00,$c5,$05,$00,$00
	.dc.b	$b5,$05,$00,$00,$c1,$05,$00,$00
	.dc.b	$ba,$05,$00,$00,$bc

L01f8d8:
	lea.l	(L0037b0),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04a910),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04bb18),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04d960),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L04ef5c),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L0504da),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L051776),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L0518a8),a5
	lea.l	(L05fbdc),a6
	jsr	(L03d632)
	lea.l	(L0037b8),a6
	jsr	(L0030c0)
	rts

L01f982:
	lea.l	(L0037c0),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04aba2),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04c504),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04e28c),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L05002a),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L051aea),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L053492),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L054a04),a5
	lea.l	($00e70000),a6
	jsr	(L03d632)
	lea.l	(L055cbe),a5
	lea.l	($00e72000),a6
	jsr	(L03d632)
	lea.l	(L05722a),a5
	lea.l	($00e74000),a6
	jsr	(L03d632)
	lea.l	(L058708),a5
	lea.l	($00e76000),a6
	jsr	(L03d632)
	lea.l	(L059cc2),a5
	lea.l	($00e78000),a6
	jsr	(L03d632)
	lea.l	(L05b25e),a5
	lea.l	($00e7a000),a6
	jsr	(L03d632)
	lea.l	(L0037c8),a6
	jsr	(L0030c0)
	rts

L01fa86:
	lea.l	(L0037d0),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04b1e4),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04c9aa),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04e5f0),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L05009e),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L0520dc),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L053aae),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L0550e0),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L056952),a5
	lea.l	($00e78000),a6
	jsr	(L03d632)
	lea.l	(L058124),a5
	lea.l	($00e7c000),a6
	jsr	(L03d632)
	lea.l	(L04b1e4),a3
	lea.l	(L0552bc),a4
	move.w	#$340c,d2
	jsr	(L003954)
	lea.l	(L0037d8),a6
	jsr	(L0030c0)
	rts

L01fb6a:
	lea.l	(L0037e0),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04a722),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04c0f2),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04d8b4),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L04f238),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L050252),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L051aa4),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L0537ea),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L0037e8),a6
	jsr	(L0030c0)
	rts

L01fc14:
	lea.l	(L0037f0),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04a910),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04b65c),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04cb50),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L04e88a),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L050788),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L0037f8),a6
	jsr	(L0030c0)
	rts

L01fc9a:
	lea.l	(L003800),a6
	jsr	(L0030c0)
	lea.l	($00e50000),a0
	moveq.l	#$00,d0
	move.w	#$007f,d7
L01fcb2:
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	dbra	d7,L01fcb2
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04ab64),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04c10e),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04db48),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L04f6b2),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L050a7c),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L051bbe),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L003808),a6
	jsr	(L0030c0)
	rts

L01fd4a:
	lea.l	(L003810),a6
	jsr	(L0030c0)
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04b016),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04cc68),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04e682),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L04ff0e),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L051d8a),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L053970),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L0553ac),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L055980),a5
	lea.l	($00e78000),a6
	jsr	(L03d632)
	lea.l	(L056836),a5
	lea.l	($00e7c000),a6
	jsr	(L03d632)
	move.l	a0,-(a7)
	lea.l	($00e14000),a0
	lea.l	($00e70000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	lea.l	($00e3c000),a0
	lea.l	($00e74000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	movea.l	(a7)+,a0
	lea.l	(L003818),a6
	jsr	(L0030c0)
	rts

L01fe64:
	lea.l	(L003820),a6
	jsr	(L0030c0)
	tst.w	(L047342)
	bne	L01ff54
	lea.l	(L0492bc),a0
	lea.l	($00e78000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	lea.l	(L050454),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L051ce4),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L053884),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L055668),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L0574b0),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L058a90),a5
	lea.l	($00e34000),a6
	jsr	(L03d632)
	lea.l	(L05a244),a5
	lea.l	($00e38000),a6
	jsr	(L03d632)
	lea.l	(L05bd0c),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L003828),a6
	jsr	(L0030c0)
	rts

L01ff54:
	lea.l	(L0492bc),a5
	lea.l	($00e10000),a6
	jsr	(L03d632)
	lea.l	(L04ab2e),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L04c936),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04e2ec),a5
	lea.l	($00e1c000),a6
	jsr	(L03d632)
	lea.l	(L04fc78),a5
	lea.l	($00e30000),a6
	jsr	(L03d632)
	lea.l	(L003828),a6
	jsr	(L0030c0)
	rts

L01ffbc:
	moveq.l	#$00,d0
	move.l	d0,(L0470ee)
	move.l	d0,(L0470f2)
	move.l	d0,(L0470f6)
	move.l	d0,(L0470fa)
	move.l	d0,(L0470fe)
	move.l	d0,(L047102)
	move.l	d0,(L047106)
	move.l	d0,(L04710a)
	move.l	d0,(L04710e)
	move.l	d0,(L047112)
	move.l	d0,(L047116)
	move.l	d0,(L04711a)
	move.w	d0,(L04735e)
	move.w	#$0001,(L047f70)
	move.w	#$0000,(L047112)
	move.w	#$0100,(L04711a)
	move.w	#$0200,($00eb0808)
	move.w	#$0001,(L047300)
	move.w	#$0060,(L047302)
	move.l	(L04741c),-(a7)
	bsr	L02396c
	move.l	(a7)+,(L04741c)
	lea.l	(L0473f0),a0
	move.w	#$0001,($0000.w,a0)
	move.w	#$0000,($001c,a0)
	move.l	#L06c48a,($0014,a0)
	moveq.l	#$00,d0
	move.l	d0,($0004,a0)
	move.l	d0,($0008,a0)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.w	d0,($0018,a0)
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	movem.l	d0,-(a7)
	asl.w	#4,d0
	clr.w	(L0472fa)
	clr.w	(L047124)
	lea.l	(L020190),a6
	move.b	(a6,d0.w),($0005,a0)
	cmpi.b	#$80,($0005,a0)
	bcc	L0200b4
	ori.w	#$8000,($0018,a0)
L0200b4:
	move.b	($01,a6,d0.w),($0009,a0)
	move.w	($02,a6,d0.w),(L047f8e)
	move.w	($04,a6,d0.w),(L047f8a)
	move.b	($0a,a6,d0.w),(L0472fb)
	move.b	($0b,a6,d0.w),(L047125)
	move.w	($0c,a6,d0.w),(L04735a)
	move.w	($0e,a6,d0.w),(L04735c)
	movea.l	($06,a6,d0.w),a0
	move.w	(L04735c),d0
	lsr.w	#7,d0
	swap.w	d0
	andi.l	#$01000000,d0
	tst.w	(L04735a)
	bmi	L020120
	move.l	d0,(L0470f2)
	move.l	d0,(L0470fa)
	move.l	d0,(L047102)
	move.l	d0,(L04710a)
	bra	L020138
L020120:
	move.l	d0,(L0470ee)
	move.l	d0,(L0470f6)
	move.l	d0,(L0470fe)
	move.l	d0,(L047106)
L020138:
	move.w	(L047f8e),d0
	bpl	L020150
	andi.w	#$7fff,d0
	move.w	d0,(L047f8e)
	move.w	(L047f8a),d0
L020150:
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f82)
	btst.b	#$04,(L04735d)
	beq	L02016c
	lsr.l	#1,d0
L02016c:
	move.l	d0,(L047f7e)
	move.l	d0,(L047f86)
	jsr	(L023980)
	movem.l	(a7)+,d0
	lsl.w	#2,d0
	lea.l	(L020310),a6
	movea.l	(a6,d0.w),a6
	jmp	(a6)

L020190:
	.dc.b	$20,$c0,$00,$00,$03,$00
	.dc.l	L03ef84
	.dc.b	$02,$01,$00,$01,$10,$09,$40,$68
	.dc.b	$0e,$00,$11,$00
	.dc.l	L0400d4
	.dc.b	$02,$02,$00,$02,$10,$09,$40,$68
	.dc.b	$12,$00,$16,$00
	.dc.l	L040bfc
	.dc.b	$02,$02,$00,$02,$12,$49,$20,$48
	.dc.b	$00,$00,$05,$00
	.dc.l	L040cf4
	.dc.b	$02,$10,$00,$0a,$91,$c5,$20,$88
	.dc.b	$06,$00,$0f,$00
	.dc.l	L040efc
	.dc.b	$02,$10,$00,$0a,$11,$c5,$18,$a8
	.dc.b	$0f,$00,$0f,$00
	.dc.l	L04112c
	.dc.b	$02,$10,$00,$0a,$01,$c5,$28,$c8
	.dc.b	$00,$00,$0d,$00
	.dc.l	L04115c
	.dc.b	$02,$05,$00,$09,$00,$19,$28,$a8
	.dc.b	$0e,$00,$12,$00
	.dc.l	L0412d4
	.dc.b	$02,$0b,$00,$05,$00,$19,$28,$68
	.dc.b	$00,$00,$0a,$00
	.dc.l	L0413cc
	.dc.b	$02,$05,$00,$05,$00,$19,$20,$c8
	.dc.b	$80,$00,$02,$00
	.dc.l	L03f19c
	.dc.b	$02,$05,$80,$07,$10,$09,$e0,$a8
	.dc.b	$87,$00,$0b,$00
	.dc.l	L03f25c
	.dc.b	$02,$05,$00,$06,$90,$2d,$c0,$88
	.dc.b	$84,$00,$06,$00
	.dc.l	L03f3cc
	.dc.b	$02,$05,$00,$06,$10,$2d,$18,$a8
	.dc.b	$81,$00,$05,$00
	.dc.l	L03f53c
	.dc.b	$02,$0c,$80,$08,$02,$49,$20,$a8
	.dc.b	$00,$00,$09,$00
	.dc.l	L03f674
	.dc.b	$03,$0c,$00,$02,$02,$49,$20,$88
	.dc.b	$81,$00,$05,$00
	.dc.l	L03f884
	.dc.b	$02,$0c,$80,$08,$02,$41,$10,$98
	.dc.b	$01,$00,$04,$00
	.dc.l	L03fa24
	.dc.b	$02,$04,$80,$04,$10,$19,$20,$c8
	.dc.b	$80,$00,$04,$00
	.dc.l	L03fb8c
	.dc.b	$02,$05,$80,$04,$00,$19,$20,$d8
	.dc.b	$00,$00,$05,$00
	.dc.l	L03fda4
	.dc.b	$02,$06,$00,$02,$00,$41,$28,$c8
	.dc.b	$00,$00,$04,$00
	.dc.l	L03fef4
	.dc.b	$02,$05,$00,$01,$00,$01,$28,$c8
	.dc.b	$08,$00,$0e,$00
	.dc.l	L040324
	.dc.b	$03,$0e,$00,$01,$00,$01,$d8,$c8
	.dc.b	$8f,$00,$11,$00
	.dc.l	L04055c
	.dc.b	$02,$05,$00,$01,$00,$01,$e0,$c8
	.dc.b	$9c,$00,$1f,$00
	.dc.l	L04074c
	.dc.b	$02,$05,$00,$01,$00,$01,$c0,$c8
	.dc.b	$8a,$00,$0f,$00
	.dc.l	L0409d4
	.dc.b	$02,$05,$00,$0d,$00,$19,$e0,$88
	.dc.b	$87,$00,$09,$00
	.dc.l	L040a5c
	.dc.b	$02,$05,$00,$01,$00,$21
L020310:
	.dc.l	L020582
	.dc.l	L020834
	.dc.l	L020a58
	.dc.l	L020ce0
	.dc.l	L020f5c
	.dc.l	L02110c
	.dc.l	L021298
	.dc.l	L0214b0
	.dc.l	L02166e
	.dc.l	L0218aa
	.dc.l	L021ad0
	.dc.l	L021c7e
	.dc.l	L022020
	.dc.l	L0222e4
	.dc.l	L022624
	.dc.l	L022918
	.dc.l	L022bb4
	.dc.l	L022d12
	.dc.l	L022eec
	.dc.l	L02303c
	.dc.l	L0231e0
	.dc.l	L023416
	.dc.l	L0235ce
	.dc.l	L023714

L020370:
	lea.l	(L050c5c),a5
	lea.l	($00e70000),a6
	jsr	(L03d632)
	lea.l	(L0515a0),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L051668),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0003,d7
	bsr	L0239da
	lea.l	($00e50000),a6
	lea.l	($00e00000),a2
	lea.l	($00e70000),a3
	jsr	(L028b4e)
	lea.l	(L06ff16),a5
	lea.l	($00e82200),a6
	move.w	#$0006,d7
L0203e8:
	move.w	(a5)+,(a6)+
	dbra	d7,L0203e8
	lea.l	(L04b4f2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c260),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b43e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb9c00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04d406),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04df6c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0005,d7
	bsr	L0239da
	lea.l	($00e70000),a0
	move.w	#$09ff,d0
	move.w	#$0000,d1
L0204ac:
	move.l	d1,(a0)+
	dbra	d0,L0204ac
	lea.l	(L04d8fe),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04e77a),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e52800),a6
	move.w	#$0012,d7
	bsr	L0239da
	lea.l	(L04d572),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04e77a),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e72800),a6
	move.w	#$0012,d7
	bsr	L0239da
	lea.l	(L04dada),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04fd98),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e5b800),a6
	move.w	#$0004,d7
	bsr	L0239da
	lea.l	($00e7b800),a0
	move.w	#$07ff,d0
	move.w	#$0000,d1
L02057a:
	move.l	d1,(a0)+
	dbra	d0,L02057a
	rts

L020582:
	move.w	#$0001,(L0471ac)
	tst.w	(L047356)
	bne	L020670
	bsr	L020370
	move.l	#$04000000,d7
	lea.l	($00e50000),a6
	lea.l	($00c40001),a2
	bsr	L028448
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04db74),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04dc38),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L04fe7c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	jsr	(L018c0e)
	move.b	(L06fff6),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L06fff8),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$003f,d7
L020634:
	move.l	(a5)+,(a6)+
	dbra	d7,L020634
	jsr	(L018c0e)
	move.b	(L07037e),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L070380),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$005f,d7
L020668:
	move.w	(a5)+,(a6)+
	dbra	d7,L020668
	rts

L020670:
	cmpi.w	#$0008,(L0472ee)
	bne	L0206b8
	bsr	L020370
	bsr	L020c7a
	lea.l	(L04db74),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04dc38),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L04fe7c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
L0206b8:
	move.w	#$1249,(L04735c)
	move.w	#$0500,(L047f8e)
	move.w	#$0500,(L04735e)
	move.w	#$0d00,(L047f8a)
	move.w	(L047f8e),d0
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f7e)
	move.l	d0,(L047f82)
	move.l	d0,(L047f86)
	lea.l	(L03ef84),a0
	jsr	(L023980)
	move.w	#$0002,(L0472fa)
	move.w	#$0002,(L047124)
	move.w	#$0002,(L04735a)
	lea.l	(L051b6e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0057,d7
L020798:
	move.w	(a5)+,(a6)+
	dbra	d7,L020798
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L0207cc:
	move.w	(a5)+,(a6)+
	dbra	d7,L0207cc
	jsr	(L018c0e)
	move.b	(L0700f8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0700fa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0207fc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0207fc
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L02082c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02082c
	rts

L020834:
	cmpi.w	#$0008,(L0472ee)
	bne	L020846
	bsr	L020370
	bsr	L020c7a
L020846:
	move.w	#$0001,(L0471ac)
	move.w	#$1700,(L04735e)
	lea.l	(L051b6e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04cc44),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc180),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L051a92),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd400),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0057,d7
L02091c:
	move.w	(a5)+,(a6)+
	dbra	d7,L02091c
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L020950:
	move.w	(a5)+,(a6)+
	dbra	d7,L020950
	jsr	(L018c0e)
	move.b	(L0700f8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0700fa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L020980:
	move.l	(a5)+,(a6)+
	dbra	d7,L020980
	jsr	(L018c0e)
	move.b	(L06ff14),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0000,d7
	add.w	d7,d7
	lea.l	(L06ff16),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82200),a6
	move.w	#$0006,d7
L0209b4:
	move.w	(a5)+,(a6)+
	dbra	d7,L0209b4
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000d,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823a0),a6
	move.w	#$0007,d7
L0209e4:
	move.l	(a5)+,(a6)+
	dbra	d7,L0209e4
	lea.l	(L049f9e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04de7a),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04dd26),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L050338),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	move.l	#$00e00000,(L047f96)
	jsr	(L03b180)
	rts

L020a58:
	cmpi.w	#$0008,(L0472ee)
	bne	L020a6a
	bsr	L020370
	bsr	L020c7a
L020a6a:
	move.w	#$0001,(L0471ac)
	move.w	#$0500,(L04735e)
	lea.l	(L051b6e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b330),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0057,d7
L020b1a:
	move.w	(a5)+,(a6)+
	dbra	d7,L020b1a
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L020b4e:
	move.w	(a5)+,(a6)+
	dbra	d7,L020b4e
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04db74),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04dc38),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L04fe7c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	jsr	(L018c0e)
	move.b	(L0700f8),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0700fa),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L020bda:
	move.l	(a5)+,(a6)+
	dbra	d7,L020bda
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L020c0a:
	move.l	(a5)+,(a6)+
	dbra	d7,L020c0a
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0017,d7
L020c3e:
	move.w	(a5)+,(a6)+
	dbra	d7,L020c3e
	lea.l	(L069bdc),a3
	lea.l	(L061bdc),a4
	move.l	#$12000000,d7
	clr.w	d3
	jsr	(L028dba)
	lea.l	(L06abdc),a3
	lea.l	($00ebf000),a6
	move.l	#$12000000,d7
	clr.w	d3
	jsr	(L028dc0)
	rts

L020c7a:
	move.w	#$000f,($00e8002a)
	move.w	#$393f,d0
	move.w	d0,($00e8002c)
	move.w	#$0031,d1
	bset.b	#$03,($00e80481)
L020c98:
	btst.b	#$07,($00e88001)
	beq	L020c98
L020ca2:
	btst.b	#$07,($00e88001)
	bne	L020ca2
	move.w	d0,($00e8002c)
	subi.w	#$0101,d0
	dbra	d1,L020c98
L020cba:
	btst.b	#$07,($00e88001)
	beq	L020cba
L020cc4:
	btst.b	#$07,($00e88001)
	bne	L020cc4
	bclr.b	#$03,($00e80481)
	move.w	#$0000,($00e8002a)
	rts

L020ce0:
	bsr	L02122e
	move.w	#$0100,(L047f76)
	move.w	#$0400,(L047f78)
	lea.l	(L052168),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04d4c4),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0020,d7
	bsr	L0239da
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L052aa2),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L052dd0),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L050e56),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L05320a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L053520),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebf800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L071742),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L071744),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L020e2a:
	move.l	(a5)+,(a6)+
	dbra	d7,L020e2a
	jsr	(L018c0e)
	move.b	(L071944),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L071946),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L020e5a:
	move.l	(a5)+,(a6)+
	dbra	d7,L020e5a
	jsr	(L018c0e)
	move.b	(L0719a6),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	addq.w	#1,d7
	add.w	d7,d7
	lea.l	(L0719a8),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82202),a6
	move.w	#$0005,d7
L020e8c:
	move.w	(a5)+,(a6)+
	dbra	d7,L020e8c
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L020ec0:
	move.w	(a5)+,(a6)+
	dbra	d7,L020ec0
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0007,d7
L020ef4:
	move.w	(a5)+,(a6)+
	dbra	d7,L020ef4
	jsr	(L018c0e)
	move.b	(L0719ea),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L0719ec),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L020f24:
	move.l	(a5)+,(a6)+
	dbra	d7,L020f24
	jsr	(L018c0e)
	move.b	(L071b2e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L071b30),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$0007,d7
L020f54:
	move.l	(a5)+,(a6)+
	dbra	d7,L020f54
	rts

L020f5c:
	move.w	#$0200,(L0470f2)
	move.w	#$0200,(L0470fa)
	bsr	L020ce0
L020f70:
	clr.w	(L047fb4)
	move.l	#$00c80000,(L047f96)
	lea.l	(L052ee6),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L053520),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebf800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0007,d7
L021046:
	move.w	(a5)+,(a6)+
	dbra	d7,L021046
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L021074:
	move.l	(a5)+,(a6)+
	dbra	d7,L021074
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L0210a2:
	move.l	(a5)+,(a6)+
	dbra	d7,L0210a2
	jsr	(L018c0e)
	move.b	(L0719ea),d7
	ext.w	d7
	neg.w	d7
	addq.w	#8,d7
	asl.w	#5,d7
	lea.l	(L0719ec),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82300),a6
	move.w	#$0017,d7
L0210d0:
	move.l	(a5)+,(a6)+
	dbra	d7,L0210d0
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L021104:
	move.w	(a5)+,(a6)+
	dbra	d7,L021104
	rts

L02110c:
	lea.l	(L052168),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L04d4c4),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0020,d7
	bsr	L0239da
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a2da),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L052aa2),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L052dd0),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L050e56),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	jsr	(L018c0e)
	move.b	(L071742),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L071744),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0211f6:
	move.l	(a5)+,(a6)+
	dbra	d7,L0211f6
	jsr	(L018c0e)
	move.b	(L071944),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L071946),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L021226:
	move.l	(a5)+,(a6)+
	dbra	d7,L021226
	rts

L02122e:
	lea.l	(L04a714),a5
	lea.l	($00e5c000),a6
	jsr	(L03d632)
	lea.l	(L052e5c),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L051d44),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0003,d7
	bsr	L0239da
	lea.l	($00e50000),a6
	lea.l	($00e00000),a2
	lea.l	($00e5c000),a3
	jsr	(L028b4e)
	rts

L021298:
	lea.l	(L0552bc),a5
	lea.l	($00e14000),a6
	jsr	(L03d632)
	lea.l	(L056a82),a5
	lea.l	($00e18000),a6
	jsr	(L03d632)
	lea.l	(L04ffe0),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L050b00),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0014,d7
	bsr	L0239da
	lea.l	(L0504a2),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L052770),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	($00e70000),a6
	bsr	L021658
	lea.l	($00e72000),a6
	bsr	L021658
	lea.l	($00e74000),a6
	bsr	L021658
	lea.l	(L04c92a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b8aa),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd700),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a7aa),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c4ca),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebf000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L049852),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebfb00),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L072c1c),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L072c1e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$004f,d7
L021448:
	move.l	(a5)+,(a6)+
	dbra	d7,L021448
	jsr	(L018c0e)
	move.b	(L0734ee),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000e,d7
	asl.w	#5,d7
	lea.l	(L0734f0),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823c0),a6
	move.w	#$0007,d7
L021478:
	move.l	(a5)+,(a6)+
	dbra	d7,L021478
	jsr	(L018c0e)
	move.b	(L072f22),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L072f24),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0214a8:
	move.l	(a5)+,(a6)+
	dbra	d7,L0214a8
	rts

L0214b0:
	lea.l	(L04ffe0),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L050b00),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0014,d7
	bsr	L0239da
	lea.l	(L0504a2),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L052770),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	($00e70000),a6
	bsr	L021658
	lea.l	($00e72000),a6
	bsr	L021658
	lea.l	($00e74000),a6
	bsr	L021658
	lea.l	(L04cda8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b268),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc200),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b008),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0499f4),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd900),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L072c1c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L072c1e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$001f,d7
L0215f2:
	move.l	(a5)+,(a6)+
	dbra	d7,L0215f2
	jsr	(L018c0e)
	move.b	(L072d5e),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L072d60),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$002f,d7
L021620:
	move.l	(a5)+,(a6)+
	dbra	d7,L021620
	jsr	(L018c0e)
	move.b	(L072f22),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L072f24),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L021650:
	move.l	(a5)+,(a6)+
	dbra	d7,L021650
	rts

L021658:
	lea.l	(L06abdc),a4
	lea.l	(L061bdc),a5
	move.w	#$0004,d7
	bsr	L0239da
	rts

L02166e:
	move.l	a0,-(a7)
	lea.l	($00e78000),a0
	lea.l	($00e14000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	lea.l	($00e7c000),a0
	lea.l	($00e18000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	lea.l	(L050562),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L052b22),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$000c,d7
	bsr	L0239da
	move.l	#$0b000000,d7
	lea.l	($00e50000),a6
	lea.l	($00c40001),a2
	jsr	(L028448)
	lea.l	(L050850),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L05344e),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$0006,d7
	bsr	L0239da
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L049ebc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc200),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05409c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L072e20),d7
	ext.w	d7
	neg.w	d7
	addq.w	#5,d7
	asl.w	#5,d7
	lea.l	(L072e22),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$003f,d7
L02180c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02180c
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$0007,d7
L02183c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02183c
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0007,d7
L021870:
	move.w	(a5)+,(a6)+
	dbra	d7,L021870
	jsr	(L018c0e)
	move.b	(L073124),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L073126),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0218a0:
	move.l	(a5)+,(a6)+
	dbra	d7,L0218a0
	movea.l	(a7)+,a0
	rts

L0218aa:
	lea.l	(L04dcaa),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L04d190),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0003,d7
	bsr	L0239da
	lea.l	(L04d256),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$0003,d7
	bsr	L0239da
	lea.l	(L0525f6),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc900),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05223e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcb00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0513fe),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd500),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L0769f4),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$00a0,d7
	add.w	d7,d7
	lea.l	(L0769f6),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$000f,d7
L0219da:
	move.w	(a5)+,(a6)+
	dbra	d7,L0219da
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0060,d7
	add.w	d7,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$001f,d7
L021a0e:
	move.w	(a5)+,(a6)+
	dbra	d7,L021a0e
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0090,d7
	add.w	d7,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$000f,d7
L021a42:
	move.w	(a5)+,(a6)+
	dbra	d7,L021a42
	jsr	(L018c0e)
	move.b	(L07660c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07660e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L021a72:
	move.l	(a5)+,(a6)+
	dbra	d7,L021a72
	lea.l	(L049d96),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07680e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000d,d7
	asl.w	#5,d7
	lea.l	(L076810),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823a0),a6
	move.w	#$0007,d7
L021ac8:
	move.l	(a5)+,(a6)+
	dbra	d7,L021ac8
	rts

L021ad0:
	bsr	L021f3e
	jsr	(L018c0e)
	move.b	(L076932),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L076934),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L021afc:
	move.l	(a5)+,(a6)+
	dbra	d7,L021afc
	lea.l	(L04ab3c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a3e2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0513fe),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcf80),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd900),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0007,d7
L021bc8:
	move.w	(a5)+,(a6)+
	dbra	d7,L021bc8
	jsr	(L018c0e)
	move.b	(L076932),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0080,d7
	add.w	d7,d7
	lea.l	(L076934),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82300),a6
	move.w	#$001f,d7
L021bfc:
	move.w	(a5)+,(a6)+
	dbra	d7,L021bfc
	jsr	(L018c0e)
	move.b	(L076932),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$00b0,d7
	add.w	d7,d7
	lea.l	(L076934),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$001f,d7
L021c30:
	move.w	(a5)+,(a6)+
	dbra	d7,L021c30
	jsr	(L018c0e)
	move.b	(L0769f4),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$00a0,d7
	add.w	d7,d7
	lea.l	(L0769f6),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$000f,d7
L021c64:
	move.w	(a5)+,(a6)+
	dbra	d7,L021c64
	move.l	#$00800000,d0
	move.l	d0,(L047102)
	move.l	d0,(L04710a)
	rts

L021c7e:
	lea.l	(L04a1c2),a5
	lea.l	($00e50000),a6
	jsr	(L03d632)
	lea.l	(L0513aa),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	($00e50000),a3
	lea.l	(L021e72),a0
L021cae:
	movea.l	(a0)+,a5
	move.l	a5,d0
	beq	L021cbe
	movea.l	(a0)+,a6
	jsr	(L028b70)
	bra	L021cae
L021cbe:
	bsr	L021f3e
	lea.l	(L051c02),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044b4e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcd80),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0518de),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0058,d7
	add.w	d7,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822b0),a6
	move.w	#$0007,d7
L021dae:
	move.w	(a5)+,(a6)+
	dbra	d7,L021dae
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L021dde:
	move.l	(a5)+,(a6)+
	dbra	d7,L021dde
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L021e0c:
	move.l	(a5)+,(a6)+
	dbra	d7,L021e0c
	jsr	(L018c0e)
	move.b	(L07680e),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L076810),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L021e3a:
	move.l	(a5)+,(a6)+
	dbra	d7,L021e3a
	jsr	(L018c0e)
	move.b	(L07680e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000c,d7
	asl.w	#5,d7
	lea.l	(L076810),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82380),a6
	move.w	#$0007,d7
L021e6a:
	move.l	(a5)+,(a6)+
	dbra	d7,L021e6a
	rts

L021e72:
	.dc.b	$00,$e0,$10,$2c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$10,$30
	.dc.l	L061bfc
	.dc.b	$00,$e0,$20,$2c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$20,$30
	.dc.l	L061bfc
	.dc.b	$00,$e0,$30,$2c
	.dc.l	L061c1c
	.dc.b	$00,$e0,$30,$30
	.dc.l	L061c3c
	.dc.b	$00,$e0,$40,$2c
	.dc.l	L061c5c
	.dc.b	$00,$e0,$40,$30
	.dc.l	L061c7c
	.dc.b	$00,$e0,$50,$2c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$50,$30
	.dc.l	L061bfc
	.dc.b	$00,$e0,$10,$34
	.dc.l	L061bfc
	.dc.b	$00,$e0,$10,$38
	.dc.l	L061bfc
	.dc.b	$00,$e0,$20,$34
	.dc.l	L061bfc
	.dc.b	$00,$e0,$20,$38
	.dc.l	L061bfc
	.dc.b	$00,$e0,$30,$34
	.dc.l	L061bfc
	.dc.b	$00,$e0,$30,$38
	.dc.l	L061bfc
	.dc.b	$00,$e0,$40,$34
	.dc.l	L061bfc
	.dc.b	$00,$e0,$40,$38
	.dc.l	L061bfc
	.dc.b	$00,$e0,$50,$34
	.dc.l	L061bfc
	.dc.b	$00,$e0,$50,$38
	.dc.l	L061bfc
	.dc.b	$00,$e0,$10,$3c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$20,$3c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$30,$3c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$40,$3c
	.dc.l	L061bfc
	.dc.b	$00,$e0,$50,$3c
	.dc.l	L061bfc
	.dc.b	$00,$00,$00,$00

L021f3e:
	lea.l	(L04e4b6),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L04d366),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0018,d7
	bsr	L0239da
	lea.l	(L05093e),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L04da6e),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$0018,d7
	bsr	L0239da
	jsr	(L018c0e)
	move.b	(L07660c),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07660e),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L021fe4:
	move.l	(a5)+,(a6)+
	dbra	d7,L021fe4
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L022018:
	move.w	(a5)+,(a6)+
	dbra	d7,L022018
	rts

L022020:
	lea.l	(L051450),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L0569a4),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0001,d7
	bsr	L0239da
	moveq.l	#$00,d7
	lea.l	($00e50000),a6
	lea.l	($00c00201),a2
	jsr	(L028448)
	lea.l	(L051450),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L056c50),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50800),a6
	move.w	#$0005,d7
	bsr	L0239da
	lea.l	(L05198c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L0569f6),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70800),a6
	move.w	#$0005,d7
	bsr	L0239da
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L056d52),a5
	lea.l	(L06ac5c),a6
	jsr	(L03d632)
	lea.l	(L056ea0),a5
	lea.l	(L069c5c),a6
	jsr	(L03d632)
	lea.l	(L0522fe),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L049a0c),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L04b2fe),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd200),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b766),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8c00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L057bb4),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L078114),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L078116),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L02221e:
	move.l	(a5)+,(a6)+
	dbra	d7,L02221e
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$000f,d7
L02224c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02224c
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L02227c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02227c
	jsr	(L018c0e)
	move.b	(L078316),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L078318),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L0222ac:
	move.l	(a5)+,(a6)+
	dbra	d7,L0222ac
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000e,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823c0),a6
	move.w	#$000f,d7
L0222dc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0222dc
	rts

L0222e4:
	move.w	(L04735a),-(a7)
	move.w	#$8000,(L04735a)
	lea.l	(L051450),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L0569a4),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0001,d7
	bsr	L0239da
	moveq.l	#$00,d7
	lea.l	($00e50000),a6
	lea.l	($00c40001),a2
	jsr	(L028448)
	move.w	(a7)+,(L04735a)
	lea.l	($00c403c0),a1
	moveq.l	#$00,d0
	move.w	#$00ff,d1
L022356:
	jsr	(L003932)
	lea.l	($03c0,a1),a1
	dbra	d1,L022356
	lea.l	(L052ae6),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L056fca),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$000a,d7
	bsr	L0239da
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$000a,d7
	bsr	L0239da
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L057418),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L057540),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L054106),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L049a0c),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L04a638),a5
	lea.l	($00e3e000),a6
	jsr	(L03d632)
	lea.l	(L0588f2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a9a8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04629c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebda00),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L078378),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07837a),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L0224fe:
	move.l	(a5)+,(a6)+
	dbra	d7,L0224fe
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$000f,d7
L02252c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02252c
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000a,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$0007,d7
L02255c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02255c
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000e,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823c0),a6
	move.w	#$000f,d7
L02258c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02258c
	jsr	(L018c0e)
	move.b	(L078316),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L078318),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L0225bc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0225bc
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0007,d7
L0225ec:
	move.l	(a5)+,(a6)+
	dbra	d7,L0225ec
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L02261c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02261c
	rts

L022624:
	lea.l	(L051450),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L0569a4),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0001,d7
	bsr	L0239da
	moveq.l	#$00,d7
	lea.l	($00e50000),a6
	lea.l	($00c00201),a2
	jsr	(L028448)
	lea.l	(L05459a),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L0575a8),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0006,d7
	bsr	L0239da
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05788c),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L057986),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L055d08),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L049a0c),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L04a638),a5
	lea.l	($00e3e000),a6
	jsr	(L03d632)
	lea.l	(L04b766),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8c00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L0588f2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L057bb4),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebca00),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L0227f4:
	move.l	(a5)+,(a6)+
	dbra	d7,L0227f4
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L022822:
	move.l	(a5)+,(a6)+
	dbra	d7,L022822
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#8,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82300),a6
	move.w	#$0007,d7
L022850:
	move.l	(a5)+,(a6)+
	dbra	d7,L022850
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L022880:
	move.l	(a5)+,(a6)+
	dbra	d7,L022880
	jsr	(L018c0e)
	move.b	(L0789c0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L0789c2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L0228b0:
	move.l	(a5)+,(a6)+
	dbra	d7,L0228b0
	jsr	(L018c0e)
	move.b	(L07857a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000e,d7
	asl.w	#5,d7
	lea.l	(L07857c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e823c0),a6
	move.w	#$000f,d7
L0228e0:
	move.l	(a5)+,(a6)+
	dbra	d7,L0228e0
	jsr	(L018c0e)
	move.b	(L0787be),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0787c0),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L022910:
	move.l	(a5)+,(a6)+
	dbra	d7,L022910
	rts

L022918:
	bsr	L023b8c
	lea.l	(L0492bc),a5
	lea.l	($00e3c000),a6
	jsr	(L03d632)
	lea.l	(L051f4c),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L0538fc),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50800),a6
	move.w	#$0001,d7
	bsr	L0239da
	lea.l	($00e50000),a6
	lea.l	($00e00000),a2
	lea.l	($00e3c000),a3
	jsr	(L028b4e)
	bsr	L023b8c
	bsr	L023b84
	lea.l	($00cc0000),a0
	move.w	#$0400,d7
	bsr	L023b96
	lea.l	(L051a2c),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L052658),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50800),a6
	move.w	#$0004,d7
	bsr	L0239da
	lea.l	(L051d40),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L052658),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70400),a6
	move.w	#$0002,d7
	bsr	L0239da
	lea.l	(L051baa),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e53000),a6
	move.w	#$000b,d7
	bsr	L0239da
	lea.l	(L051d94),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L0533fc),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e73000),a6
	move.w	#$000c,d7
	bsr	L0239da
	moveq.l	#$00,d7
	lea.l	($00e70000),a6
	lea.l	($00c80001),a2
	bsr	L028448
	move.w	(L04735a),-(a7)
	move.w	#$0003,(L04735a)
	move.l	#$07000000,d7
	lea.l	($00e50000),a6
	lea.l	($00c00001),a2
	bsr	L028448
	move.l	#$10000000,d7
	lea.l	($00e50000),a6
	lea.l	($00c40201),a2
	bsr	L028448
	lea.l	(L055986),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L056088),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0060,d7
	add.w	d7,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$004f,d7
L022b46:
	move.w	(a5)+,(a6)+
	dbra	d7,L022b46
	jsr	(L018c0e)
	move.b	(L07a952),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07a954),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L022b76:
	move.l	(a5)+,(a6)+
	dbra	d7,L022b76
	jsr	(L018c0e)
	move.b	(L07ac5a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L07ac5c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$0017,d7
L022ba6:
	move.l	(a5)+,(a6)+
	dbra	d7,L022ba6
	move.w	(a7)+,(L04735a)
	rts

L022bb4:
	lea.l	(L051f66),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L0539a4),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0005,d7
	bsr	L0239da
	lea.l	(L052054),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L053b26),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$0005,d7
	bsr	L0239da
	lea.l	(L04c83a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04d4f8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07ab98),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0060,d7
	add.w	d7,d7
	lea.l	(L07ab9a),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$005f,d7
L022caa:
	move.w	(a5)+,(a6)+
	dbra	d7,L022caa
	jsr	(L018c0e)
	move.b	(L07a952),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07a954),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L022cda:
	move.l	(a5)+,(a6)+
	dbra	d7,L022cda
	move.l	(L047f7a),d0
	lsr.l	#1,d0
	move.l	d0,(L047f7e)
	move.l	d0,(L047f86)
	jsr	(L03b180)
	move.b	#$b4,(L047f60)
	cmpi.w	#$0009,(L0472ee)
	bne	L022d10
	moveq.l	#$b4,d0
	trap	#0
L022d10:
	rts

L022d12:
	lea.l	(L052220),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L05434c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0006,d7
	bsr	L0239da
	lea.l	(L052412),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L054da2),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	jsr	(L018c0e)
	move.b	(L07a952),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07a954),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L022d9e:
	move.l	(a5)+,(a6)+
	dbra	d7,L022d9e
	jsr	(L018c0e)
	move.b	(L07ab54),d7
	ext.w	d7
	neg.w	d7
	addq.w	#2,d7
	asl.w	#5,d7
	lea.l	(L07ab56),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82040),a6
	move.w	#$0007,d7
L022dcc:
	move.l	(a5)+,(a6)+
	dbra	d7,L022dcc
	jsr	(L018c0e)
	move.b	(L07acbc),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L07acbe),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$001f,d7
L022dfc:
	move.l	(a5)+,(a6)+
	dbra	d7,L022dfc
	lea.l	(L04a56a),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c282),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc200),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07aee4),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$00a0,d7
	add.w	d7,d7
	lea.l	(L07aee6),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82340),a6
	move.w	#$000f,d7
L022e7c:
	move.w	(a5)+,(a6)+
	dbra	d7,L022e7c
	lea.l	(L04bcda),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd480),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07ada0),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0060,d7
	add.w	d7,d7
	lea.l	(L07ada2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$002f,d7
L022ed6:
	move.w	(a5)+,(a6)+
	dbra	d7,L022ed6
	jsr	(L03b180)
	move.b	#$b4,(L047f60)
	rts

L022eec:
	move.l	a0,-(a7)
	lea.l	($00e70000),a0
	lea.l	($00e14000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	lea.l	($00e74000),a0
	lea.l	($00e3c000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	movea.l	(a7)+,a0
	bsr	L0233a6
	lea.l	(L054268),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L054992),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcf00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebdc80),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L049d94),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04e04e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04ef28),a5
	lea.l	(L05fbdc),a6
	jsr	(L03d632)
	jsr	(L018c0e)
	move.b	(L07d662),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d664),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$003f,d7
L023034:
	move.l	(a5)+,(a6)+
	dbra	d7,L023034
	rts

L02303c:
	lea.l	(L05592e),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L059b38),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0001,d7
	bsr	L0239da
	moveq.l	#$00,d7
	lea.l	($00e50000),a6
	lea.l	($00c40001),a2
	jsr	(L028448)
	bsr	L0233a6
	lea.l	(L054268),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L044ca8),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L055386),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebd480),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05378e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b094),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04a6ba),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebeb80),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L0231a4:
	move.w	(a5)+,(a6)+
	dbra	d7,L0231a4
	jsr	(L018c0e)
	move.b	(L07d764),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L07d766),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0047,d7
L0231d2:
	move.l	(a5)+,(a6)+
	dbra	d7,L0231d2
	jsr	(L03b180)
	rts

L0231e0:
	move.l	a0,-(a7)
	lea.l	($00e78000),a0
	lea.l	($00e14000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	lea.l	($00e7c000),a0
	lea.l	($00e3c000),a1
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	jsr	(L003998)
	bsr	L0233a6
	lea.l	(L0492bc),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04dd76),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04f512),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	(L06abdc),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04fb66),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	(L05fbdc),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L054268),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L054fce),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebcf00),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L07d662),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L07d664),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$0007,d7
L02333a:
	move.l	(a5)+,(a6)+
	dbra	d7,L02333a
	jsr	(L018c0e)
	move.b	(L06ed12),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L06ed14),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0007,d7
L023368:
	move.l	(a5)+,(a6)+
	dbra	d7,L023368
	jsr	(L018c0e)
	move.b	(L06e260),d7
	asl.w	#4,d7
	andi.w	#$00ff,d7
	neg.w	d7
	add.w	#$0050,d7
	add.w	d7,d7
	lea.l	(L06e262),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822a0),a6
	move.w	#$0007,d7
L02339c:
	move.w	(a5)+,(a6)+
	dbra	d7,L02339c
	movea.l	(a7)+,a0
	rts

L0233a6:
	lea.l	(L05907a),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L05592e),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$001e,d7
	bsr	L0239da
	jsr	(L018c0e)
	move.b	(L07d41e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L07d420),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$007f,d7
L02340e:
	move.l	(a5)+,(a6)+
	dbra	d7,L02340e
	rts

L023416:
	lea.l	(L05ae86),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L056d2c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0006,d7
	bsr	L0239da
	moveq.l	#$00,d7
	lea.l	($00e50000),a6
	lea.l	($00c40001),a2
	jsr	(L028448)
	move.l	#$02000000,d7
	lea.l	($00e50000),a6
	lea.l	($00c80001),a2
	jsr	(L028448)
	move.l	#$04000000,d7
	lea.l	($00e50000),a6
	lea.l	($00cc0001),a2
	jsr	(L028448)
	lea.l	(L05a708),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L056d2c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0020,d7
	bsr	L0239da
	move.l	a0,-(a7)
	lea.l	(L05af14),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L05a304),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L04d244),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04bb22),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04c7b0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L082782),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L082784),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$001f,d7
L023596:
	move.l	(a5)+,(a6)+
	dbra	d7,L023596
	jsr	(L018c0e)
	move.b	(L08237a),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L08237c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82020),a6
	move.w	#$003f,d7
L0235c4:
	move.l	(a5)+,(a6)+
	dbra	d7,L0235c4
	movea.l	(a7)+,a0
	rts

L0235ce:
	lea.l	(L056d2c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L05a708),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0020,d7
	bsr	L0239da
	lea.l	(L05afe4),a5
	lea.l	(L06abdc),a6
	jsr	(L03d632)
	lea.l	(L06abdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e72800),a6
	move.w	#$0006,d7
	bsr	L0239da
	jsr	(L018c0e)
	move.b	(L08249e),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0824a0),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0057,d7
L023662:
	move.l	(a5)+,(a6)+
	dbra	d7,L023662
	lea.l	(L04f922),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L05062e),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L070440),d7
	ext.w	d7
	neg.w	d7
	addq.w	#7,d7
	asl.w	#5,d7
	lea.l	(L070442),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822e0),a6
	move.w	#$001f,d7
L0236dc:
	move.l	(a5)+,(a6)+
	dbra	d7,L0236dc
	jsr	(L018c0e)
	move.b	(L082886),d7
	ext.w	d7
	neg.w	d7
	add.w	#$000b,d7
	asl.w	#5,d7
	lea.l	(L082888),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82360),a6
	move.w	#$000f,d7
L02370c:
	move.l	(a5)+,(a6)+
	dbra	d7,L02370c
	rts

L023714:
	lea.l	(L05a708),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L056d2c),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e50000),a6
	move.w	#$0020,d7
	bsr	L0239da
	lea.l	(L05b07c),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L069bdc),a4
	lea.l	(L061bdc),a5
	lea.l	($00e70000),a6
	move.w	#$0004,d7
	bsr	L0239da
	tst.w	(L047342)
	bne	L02388e
	move.l	a0,-(a7)
	lea.l	(L0567e0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8c00),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04de0c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebc000),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04ee94),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00ebe000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L0828c8),d7
	ext.w	d7
	neg.w	d7
	addq.w	#6,d7
	asl.w	#5,d7
	lea.l	(L0828ca),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e822c0),a6
	move.w	#$0017,d7
L023824:
	move.l	(a5)+,(a6)+
	dbra	d7,L023824
	jsr	(L018c0e)
	move.b	(L06ebf0),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0009,d7
	asl.w	#5,d7
	lea.l	(L06ebf2),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82320),a6
	move.w	#$0007,d7
L023854:
	move.l	(a5)+,(a6)+
	dbra	d7,L023854
	jsr	(L018c0e)
	move.b	(L082600),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L082602),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$005f,d7
L023884:
	move.l	(a5)+,(a6)+
	dbra	d7,L023884
	movea.l	(a7)+,a0
	rts

L02388e:
	lea.l	($00e70000),a6
	lea.l	($00c80001),a2
	moveq.l	#$00,d7
	jsr	(L028448)
	move.w	#$0300,(L047f8e)
	move.w	#$0300,(L047f8a)
	move.w	(L047f8a),d0
	swap.w	d0
	clr.w	d0
	move.l	d0,(L047f7a)
	move.l	d0,(L047f82)
	move.l	d0,(L047f7e)
	move.l	d0,(L047f86)
	lea.l	(L040a5c),a0
	jsr	(L023980)
	move.w	#$0000,(L04740c)
	move.w	#$00e8,(L0473f4)
	move.w	#$0058,(L0473f8)
	move.w	#$0000,(L047410)
	move.w	#$0000,(L047412)
	lea.l	(L050df0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb9800),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L018c0e)
	move.b	(L08296a),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L08296c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$0067,d7
L023958:
	move.l	(a5)+,(a6)+
	dbra	d7,L023958
	rts

L023960:
	cmpa.l	a1,a0
	beq	L02396a
	move.b	#$00,(a0)+
	bra	L023960
L02396a:
	rts

L02396c:
	lea.l	(L047360),a0
	move.w	#$02ff,d1
	moveq.l	#$00,d0
L023978:
	move.l	d0,(a0)+
	dbra	d1,L023978
	rts

L023980:
	lea.l	(L048abc),a1
L023986:
	cmpi.w	#$feff,(a0)
	beq	L023992
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	bra	L023986
L023992:
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L023996:
	lea.l	(L048abc),a1
	move.w	(L047f7a),d0
	subi.w	#$0020,d0
	bpl	L0239aa
	clr.w	d0
L0239aa:
	cmp.w	(a1),d0
	beq	L0239b4
	bcs	L0239b4
	addq.w	#8,a1
	bra	L0239aa
L0239b4:
	lea.l	(-$0008,a1),a1
	move.l	a1,(L047f92)
	rts

L0239c0:
	bra	L0239c0
L0239c2:
	lea.l	(L048abe),a1
	move.w	#$007f,d0
	move.w	#$7fff,d1
L0239d0:
	and.w	d1,(a1)
	addq.w	#8,a1
	dbra	d0,L0239d0
	rts

L0239da:
	asl.w	#6,d7
	subq.w	#1,d7
L0239de:
	move.w	(a4)+,d6
	move.w	d6,d5
	andi.w	#$3fff,d6
	ext.l	d6
	asl.l	#5,d6
	btst.l	#$0f,d5
	bne	L023aa4
	btst.l	#$0e,d5
	bne	L023a1c
	move.l	(a5,d6.l),(a6)+
	move.l	($04,a5,d6.l),(a6)+
	move.l	($08,a5,d6.l),(a6)+
	move.l	($0c,a5,d6.l),(a6)+
	move.l	($10,a5,d6.l),(a6)+
	move.l	($14,a5,d6.l),(a6)+
	move.l	($18,a5,d6.l),(a6)+
	move.l	($1c,a5,d6.l),(a6)+
	bra	L023b7e
L023a1c:
	move.w	#$4000,d4
	move.w	($06,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($04,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($02,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	(a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($0e,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($0c,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($0a,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($08,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($16,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($14,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($12,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($10,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($1e,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($1c,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($1a,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($18,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	bra	L023b7e
L023aa4:
	btst.l	#$0e,d5
	bne	L023af4
	move.l	#$80008000,d4
	move.l	($18,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	($1c,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	($10,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	($14,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	($08,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	($0c,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	(a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	move.l	($04,a5,d6.l),d5
	eor.l	d4,d5
	move.l	d5,(a6)+
	bra	L023b7e
L023af4:
	move.w	($0000c000),d4
	move.w	($1e,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($1c,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($1a,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($18,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($16,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($14,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($12,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($10,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($0e,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($0c,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($0a,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($08,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($06,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($04,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	($02,a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	move.w	(a5,d6.l),d5
	eor.w	d4,d5
	move.w	d5,(a6)+
	bra.w	L023b7e
L023b7e:
	dbra	d7,L0239de
	rts

L023b84:
	lea.l	($00e80000),a0
	bra	L023b92
L023b8c:
	lea.l	($00e60000),a0
L023b92:
	move.w	#$0100,d7
L023b96:
	moveq.l	#$00,d0
	move.l	d0,d1
	move.l	d0,d2
	move.l	d0,d3
	move.l	d0,d4
	move.l	d0,d5
	move.l	d0,d6
	movea.l	d0,a1
L023ba6:
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	movem.l	d0-d6/a1,-(a0)
	dbra	d7,L023ba6
	rts

L023bcc:
	subq.w	#1,d7
L023bce:
	move.w	#$0000,d5
L023bd2:
	move.w	#$0000,d4
L023bd6:
	move.w	d4,d3
	add.w	d5,d3
	move.w	(a4,d3.w),d6
	andi.w	#$3fff,d6
	ext.l	d6
	asl.l	#5,d6
	move.l	(a5,d6.l),(a6)+
	move.l	($04,a5,d6.l),(a6)+
	move.l	($08,a5,d6.l),(a6)+
	move.l	($0c,a5,d6.l),(a6)+
	move.l	($10,a5,d6.l),(a6)+
	move.l	($14,a5,d6.l),(a6)+
	move.l	($18,a5,d6.l),(a6)+
	move.l	($1c,a5,d6.l),(a6)+
	add.w	#$0010,d4
	cmp.l	#$00000080,d4
	bne	L023bd6
	addq.w	#2,d5
	cmp.l	#$00000010,d5
	bne	L023bd2
	lea.l	($0080,a4),a4
	dbra	d7,L023bce
	rts

L023c26:
	lea.l	(L023c3e),a3
	lea.l	($00eba780),a4
	move.w	#$0080,d2
	jsr	(L003954)
	rts

L023c3e:
	.dc.b	$ff,$ff,$ff,$ff,$fe,$00,$00,$00
	.dc.b	$f0,$e0,$00,$00,$f0,$0e,$00,$00
	.dc.b	$f0,$00,$e0,$00,$f0,$00,$0e,$00
	.dc.b	$f0,$ee,$00,$e0,$f0,$ee,$e0,$0e
	.dc.b	$f0,$e0,$e0,$0e,$f0,$ee,$00,$e0
	.dc.b	$f0,$00,$0e,$00,$f0,$00,$e0,$00
	.dc.b	$f0,$0e,$00,$00,$f0,$e0,$00,$00
	.dc.b	$fe,$00,$00,$00,$ff,$ff,$ff,$ff
	.dc.b	$ff,$ff,$ff,$ff,$00,$00,$00,$ef
	.dc.b	$00,$00,$0e,$0f,$00,$00,$e0,$0f
	.dc.b	$00,$0e,$00,$0f,$00,$e0,$00,$0f
	.dc.b	$0e,$00,$00,$0f,$e0,$00,$00,$0f
	.dc.b	$e0,$00,$00,$0f,$0e,$00,$00,$0f
	.dc.b	$00,$e0,$00,$0f,$00,$0e,$00,$0f
	.dc.b	$00,$00,$e0,$0f,$00,$00,$0e,$0f
	.dc.b	$00,$00,$00,$ef,$ff,$ff,$ff,$ff

L023cbe:
	lea.l	(L047420),a0
L023cc4:
	tst.w	(a0)
	beq	L023e9c
	moveq.l	#$00,d2
	movea.l	($0014,a0),a2
	move.w	($0018,a0),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($07,a2,d0.w),d2
	beq	L023e9c
	movea.l	($02,a2,d0.w),a2
	addq.w	#8,a2
	adda.l	#L06c3dc,a2
	subq.w	#1,d2
	move.w	#$0000,(L0481e8)
	move.w	#$0000,(L0481ea)
	move.w	#$0000,(L0481ec)
	lea.l	(L0474e0),a1
L023d0e:
	btst.b	#$00,($0002,a1)
	beq	L023e88
	moveq.l	#$00,d3
	movea.l	($0014,a1),a3
	move.w	($0018,a1),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($07,a3,d0.w),d3
	beq	L023e88
	movea.l	($02,a3,d0.w),a3
	addq.w	#8,a3
	adda.l	#L06c3dc,a3
	subq.w	#1,d3
	move.w	d2,d4
	movea.l	a2,a4
L023d42:
	move.w	($0000.w,a4),d0
	tst.b	($0018,a0)
	bpl	L023d4e
	neg.w	d0
L023d4e:
	add.w	($0004,a0),d0
	move.w	($0008,a0),d1
	add.w	($0002,a4),d1
	move.w	d3,d5
	movea.l	a3,a5
L023d5e:
	move.w	($0000.w,a5),d6
	tst.b	($0018,a1)
	bpl	L023d6a
	neg.w	d6
L023d6a:
	add.w	($0004,a1),d6
	move.w	d6,d7
	sub.w	d0,d6
	bpl	L023d76
	neg.w	d6
L023d76:
	sub.w	($0004,a4),d6
	sub.w	($0004,a5),d6
	bpl	L023e7c
	move.w	($0008,a1),d6
	add.w	($0002,a5),d6
	sub.w	d1,d6
	bpl	L023d90
	neg.w	d6
L023d90:
	sub.w	($0006,a4),d6
	sub.w	($0006,a5),d6
	bpl	L023e7c
	tst.b	($001b,a1)
	beq	L023dac
	bsr	L023ec0
	move.b	#$01,($001a,a0)
L023dac:
	move.b	($001b,a0),($001a,a1)
	cmp.w	d0,d7
	bcc	L023dc2
	bset.b	#$07,($001a,a0)
	bset.b	#$07,($001a,a1)
L023dc2:
	cmpa.l	#L047420,a0
	beq	L023dd0
	bset.b	#$06,($001a,a1)
L023dd0:
	btst.b	#$01,($0002,a1)
	beq	L023e88
	move.b	($001b,a0),d7
	cmp.b	($001b,a1),d7
	bcs	L023e88
	cmpa.l	#L047420,a0
	beq	L023e88
	tst.w	(L04735a)
	beq	L023e88
	btst.b	#$04,($0002,a1)
	bne	L023e88
	movem.l	d0/a0-a1,-(a7)
	move.w	($0022,a0),d0
	addq.w	#1,d0
	move.w	d0,($0022,a0)
	subi.w	#$0002.w,d0
	bcs	L023e76
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L023e76
	move.w	#$000e,(a0)
	move.w	#$2000,($0002,a0)
	clr.w	($001a,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	subi.w	#$0008.w,($0008,a0)
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$0012,($0020,a0)
	addi.w	#$0004.w,d0
	cmpi.w	#$0007,d0
	bcs	L023e62
	move.w	#$0007,d0
L023e62:
	move.w	d0,($0022,a0)
	subq.w	#4,d0
	add.w	d0,d0
	move.w	(L023eac,pc,d0.w),d0
	ext.l	d0
	jsr	(L029a68)
L023e76:
	movem.l	(a7)+,d0/a0-a1
	bra	L023e88
L023e7c:
	addq.w	#8,a5
	dbra	d5,L023d5e
	addq.w	#8,a4
	dbra	d4,L023d42
L023e88:
	lea.l	($0030,a1),a1
	cmpa.l	#L047f60,a1
	bne	L023d0e
	jsr	(L023f04)
L023e9c:
	lea.l	($0030,a0),a0
	cmpa.l	#L0474e0,a0
	bne	L023cc4
	rts

L023eac:
	.dc.w	$1000,$2000,$4000,$7000

L023eb4:
	exg.l	a0,a1
	exg.l	a4,a5
	bsr	L023ec0
	exg.l	a4,a5
	exg.l	a0,a1
	rts

L023ec0:
	tst.w	(L0481e8)
	bne	L023f02
	btst.b	#$04,($0002,a1)
	bne	L023f02
	cmpa.l	#L047420,a0
	beq	L023ede
	addq.w	#1,(L0481ec)
L023ede:
	movem.l	d0-d7/a0-a6,-(a7)
	add.w	d7,d0
	lsr.w	#1,d0
	move.w	d0,(L0481e8)
	move.w	($0008,a1),d0
	add.w	($0002,a5),d0
	add.w	d0,d1
	lsr.w	#1,d1
	move.w	d1,(L0481ea)
	movem.l	(a7)+,d0-d7/a0-a6
L023f02:
	rts

L023f04:
	movem.l	d0-d7/a0-a6,-(a7)
	tst.w	(L0481e8)
	beq	L023f54
	tst.w	(L0481ec)
	beq	L023f1e
	addq.w	#1,(L047358)
L023f1e:
	jsr	(L0298a6)
	bcs	L023f54
	move.w	#$0024,(a0)
	move.w	#$0000,($0002,a0)
	move.w	(L0481e8),($0004,a0)
	move.w	(L0481ea),($0008,a0)
	move.w	#$0000,($001e,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$000b,($0018,a0)
L023f54:
	movem.l	(a7)+,d0-d7/a0-a6
	rts

L023f5a:
	tst.w	(L047fa2)
	bne	L024080
	lea.l	(L0473f0),a0
	tst.w	(a0)
	beq	L024080
	moveq.l	#$00,d2
	movea.l	($0014,a0),a2
	move.w	($0018,a0),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($07,a2,d0.w),d2
	beq	L024080
	movea.l	($02,a2,d0.w),a2
	addq.w	#8,a2
	adda.l	#L06c3dc,a2
	subq.w	#1,d2
	lea.l	(L0474e0),a1
L023f9c:
	btst.b	#$01,($0002,a1)
	beq	L024072
	moveq.l	#$00,d3
	movea.l	($0014,a1),a3
	move.w	($0018,a1),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($07,a3,d0.w),d3
	beq	L024072
	movea.l	($02,a3,d0.w),a3
	addq.w	#8,a3
	adda.l	#L06c3dc,a3
	subq.w	#1,d3
	move.w	d2,d4
	movea.l	a2,a4
L023fd0:
	move.w	($0000.w,a4),d0
	tst.b	($0018,a0)
	bpl	L023fdc
	neg.w	d0
L023fdc:
	add.w	($0004,a0),d0
	move.w	($0008,a0),d1
	add.w	($0002,a4),d1
	move.w	d3,d5
	movea.l	a3,a5
L023fec:
	move.w	($0000.w,a5),d6
	tst.b	($0018,a1)
	bpl	L023ff8
	neg.w	d6
L023ff8:
	add.w	($0004,a1),d6
	move.w	d6,d7
	sub.w	d0,d6
	bpl	L024004
	neg.w	d6
L024004:
	sub.w	($0004,a4),d6
	sub.w	($0004,a5),d6
	bpl	L024066
	move.w	($0008,a1),d6
	add.w	($0002,a5),d6
	sub.w	d1,d6
	bpl	L02401c
	neg.w	d6
L02401c:
	sub.w	($0006,a4),d6
	sub.w	($0006,a5),d6
	bpl	L024066
	cmpa.l	#L047ae0,a1
	bcc	L024044
	move.b	($0002,a1),d6
	andi.b	#$03,d6
	cmpi.b	#$02,d6
	beq	L024044
	tst.w	(L047f9a)
	bne	L02404a
L024044:
	move.b	#$01,($001a,a1)
L02404a:
	tst.b	($001b,a1)
	beq	L024066
	move.b	#$01,($001a,a0)
	cmp.w	d0,d7
	bcc	L024066
	bset.b	#$07,($001a,a0)
	bset.b	#$07,($001a,a1)
L024066:
	addq.w	#8,a5
	dbra	d5,L023fec
	addq.w	#8,a4
	dbra	d4,L023fd0
L024072:
	lea.l	($0030,a1),a1
	cmpa.l	#L047f60,a1
	bne	L023f9c
L024080:
	rts

L024082:
	moveq.l	#$00,d2
	movea.l	($0014,a0),a2
	move.w	($0018,a0),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($07,a2,d0.w),d2
	beq	L0241bc
	movea.l	($02,a2,d0.w),a2
	addq.w	#8,a2
	adda.l	#L06c3dc,a2
	subq.w	#1,d2
	move.w	#$0000,(L0481e8)
	move.w	#$0000,(L0481ea)
	move.w	#$0000,(L0481ec)
	lea.l	(L047420),a1
L0240c6:
	tst.w	(a1)
	beq	L0241a8
	moveq.l	#$00,d3
	movea.l	($0014,a1),a3
	move.w	($0018,a1),d0
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($07,a3,d0.w),d3
	beq	L0241a8
	movea.l	($02,a3,d0.w),a3
	addq.w	#8,a3
	adda.l	#L06c3dc,a3
	subq.w	#1,d3
	move.w	d2,d4
	movea.l	a2,a4
L0240f6:
	move.w	($0000.w,a4),d0
	tst.b	($0018,a0)
	bpl	L024102
	neg.w	d0
L024102:
	add.w	($0004,a0),d0
	move.w	($0008,a0),d1
	add.w	($0002,a4),d1
	move.w	d3,d5
	movea.l	a3,a5
L024112:
	move.w	($0000.w,a5),d6
	tst.b	($0018,a1)
	bpl	L02411e
	neg.w	d6
L02411e:
	add.w	($0004,a1),d6
	move.w	d6,d7
	sub.w	d0,d6
	bpl	L02412a
	neg.w	d6
L02412a:
	sub.w	($0004,a4),d6
	sub.w	($0004,a5),d6
	bpl	L02419c
	move.w	($0008,a1),d6
	add.w	($0002,a5),d6
	sub.w	d1,d6
	bpl	L024142
	neg.w	d6
L024142:
	sub.w	($0006,a4),d6
	sub.w	($0006,a5),d6
	bpl	L02419c
	tst.b	($001b,a0)
	beq	L02417e
	bsr	L023eb4
	move.b	#$01,($001a,a1)
	cmpi.w	#$0005,(a1)
	beq	L02416a
	cmpi.w	#$0004,(a1)
	beq	L024170
	bra	L02417e
L02416a:
	neg.l	($000c,a1)
	bra	L02417e
L024170:
	tst.w	($001c,a1)
	bne	L02417e
	addq.w	#1,($001c,a1)
	neg.l	($000c,a1)
L02417e:
	move.b	($001b,a1),($001a,a0)
	cmp.w	d7,d0
	bcc	L024194
	bset.b	#$07,($001a,a0)
	bset.b	#$07,($001a,a1)
L024194:
	bset.b	#$06,($001a,a0)
	bra	L0241a8
L02419c:
	addq.w	#8,a5
	dbra	d5,L024112
	addq.w	#8,a4
	dbra	d4,L0240f6
L0241a8:
	lea.l	($0030,a1),a1
	cmpa.l	#L0474e0,a1
	bne	L0240c6
	jsr	(L023f04)
L0241bc:
	rts

L0241be:
	lea.l	(L00377a),a0
	lea.l	(L0472b2),a2
	jsr	(L0031f4)
	bsr	L025312
	move.b	(L0472c1),(L04731c)
	rts

L0241e0:
	clr.w	(L047124)
	move.w	#$0002,(L0472fa)
	move.w	#$0200,($00eb0808)
	move.w	#$0001,($00e82400)
	move.w	#$0110,($00e80028)
	jsr	(L04376a)
	jsr	(L043694)
	clr.l	d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	move.w	d0,(L0470fe)
	move.w	d0,(L047106)
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
	move.w	d0,(L047102)
	move.w	d0,(L04710a)
	move.w	d0,($00e80014)
	move.w	d0,($00e80016)
	move.w	#$280c,d0
	lea.l	(L0252b3),a6
	jsr	(L002480)
	move.w	#$340c,d0
	lea.l	(L0252bd),a6
	jsr	(L002480)
	move.w	#$400c,d0
	tst.w	(L0472e4)
	bne	L02428c
	lea.l	(L0252c6),a6
	jsr	(L002480)
	move.w	#$4c0c,d0
L02428c:
	lea.l	(L0252cb),a6
	jsr	(L002480)
	move.w	#$0000,(L048abc)
	move.w	#$0000,(L048abe)
	bsr	L024350
	rts

L0242ae:
	btst.b	#$00,(L0481e4)
	bne	L0242ec
	btst.b	#$01,(L0481e4)
	bne	L02430e
	btst.b	#$07,(L0481e4)
	bne	L02430e
	btst.b	#$05,(L0481e4)
	bne	L024336
	btst.b	#$04,(L0481e4)
	bne	L024336
	btst.b	#$06,(L0481e4)
	bne	L024336
	rts

L0242ec:
	move.w	(L048abc),d0
	subq.w	#1,d0
	bpl	L024306
	move.w	#$0002,d0
	tst.w	(L0472e4)
	beq	L024306
	move.w	#$0001,d0
L024306:
	move.w	d0,(L048abc)
	bra	L024350
L02430e:
	move.w	#$0003,d1
	tst.w	(L0472e4)
	beq	L02431e
	move.w	#$0002,d1
L02431e:
	move.w	(L048abc),d0
	addq.w	#1,d0
	cmp.w	d1,d0
	bne	L02432e
	move.w	#$0000,d0
L02432e:
	move.w	d0,(L048abc)
	bra	L024350
L024336:
	move.w	(L048abc),d0
	tst.w	(L0472e4)
	beq	L024346
	add.w	d0,d0
L024346:
	addq.w	#1,d0
	move.w	d0,(L048abe)
	rts

L024350:
	moveq.l	#$16,d0
	trap	#0
	move.w	#$340a,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$400a,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$4c0a,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	(L048abc),d0
	add.w	d0,d0
	add.w	(L048abc),d0
	add.w	#$000d,d0
	asl.w	#8,d0
	asl.w	#2,d0
	add.w	#$000a,d0
	move.w	#$0051,d1
	jsr	(L002548)
	rts

L0243a4:
	move.w	(L048abc),d0
	add.w	d0,d0
	move.w	(L0243b4,pc,d0.w),d0
	jmp	(L0243b4,pc,d0.w)

L0243b4:
	.dc.w	L0243be-L0243b4
	.dc.w	L024454-L0243b4
	.dc.w	L024494-L0243b4
	.dc.w	L0243bc-L0243b4

L0243bc:
	rts

L0243be:
	clr.w	(L048abe)
	tst.b	(L00354c)
	bne	L0244c4
	move.w	#$9100,d1
	move.w	#$0000,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.w	#$000f,d0
	btst.l	#$01,d0
	beq	L024416
	btst.l	#$03,d0
	bne	L024416
	move.w	#$0020,-(a7)
	pea.l	(L00377a)
	pea.l	(L048214)
	DOS	_FILES
	lea.l	($000a,a7),a7
	tst.l	d0
	bne	L024416
	beq	L0244c4
L024416:
	move.w	#$0004,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$9100,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($0000053c).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$6c01,d0
	lea.l	(L025294),a6
	jsr	(L002480)
	bra	L0244ce
L024454:
	move.w	#$9100,d1
	move.w	#$0000,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.w	#$000f,d0
	btst.l	#$01,d0
	beq	L024492
	move.w	#$0005,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	bra	L0243be
L024492:
	rts

L024494:
	move.w	(L048abe),d0
	addq.w	#1,d0
	move.w	d0,(L048abe)
	cmpi.w	#$0040,d0
	bcc	L0244aa
	rts

L0244aa:
	bsr	L0252ec
	lea.l	(L00377a),a0
	lea.l	(L0472b2),a2
	jsr	(L0032ee)
	bra	L02466c
L0244c4:
	move.w	#$0002,(L048abc)
	rts

L0244ce:
	move.w	#$0001,(L048abc)
	rts

L0244d8:
	move.w	(L048abc),d0
	add.w	d0,d0
	move.w	(L0244e8,pc,d0.w),d0
	jmp	(L0244e8,pc,d0.w)

L0244e8:
	.dc.w	L0244fe-L0244e8
	.dc.w	L02467e-L0244e8
	.dc.w	L0246be-L0244e8
	.dc.w	L02470a-L0244e8
	.dc.w	L024882-L0244e8
	.dc.w	L0249ea-L0244e8
	.dc.w	L024d3a-L0244e8
	.dc.w	L024e32-L0244e8
	.dc.w	L025048-L0244e8
	.dc.w	L0244fc-L0244e8

L0244fc:
	rts

L0244fe:
	clr.w	(L047124)
	move.w	#$0002,(L0472fa)
	jsr	(L04376a)
	jsr	(L0436d8)
	clr.l	d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	move.w	d0,(L0470fe)
	move.w	d0,(L047106)
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
	move.w	d0,(L047102)
	move.w	d0,(L04710a)
	move.w	d0,($00e80014)
	move.w	d0,($00e80016)
	jsr	(L041a92)
	tst.b	(L00354c)
	bne	L02464e
	move.w	#$9100,d1
	move.w	#$0000,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.w	#$000f,d0
	btst.l	#$01,d0
	beq	L0245fc
L02458a:
	move.w	#$0020,-(a7)
	pea.l	(L00377a)
	pea.l	(L048214)
	DOS	_FILES
	lea.l	($000a,a7),a7
	tst.l	d0
	bne	L0245fc
	tst.w	(L0472e4)
	bne	L02464e
	move.w	#$9100,d1
	move.w	#$0000,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.w	#$000f,d0
	btst.l	#$03,d0
	beq	L02464e
	jsr	(L03c8d4)
	bset.b	#$05,($00e88007)
	move.w	#$0300,($00e80014)
	move.w	#$0003,d0
	jsr	(L03cc6c)
	move.w	#$0001,(L0472e4)
	bra	L024658
L0245fc:
	move.w	#$0004,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$9100,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($0000053c).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	move.w	#$3c01,d0
	lea.l	(L025294),a6
	jsr	(L002480)
	bra	L024662
L02463a:
	move.w	#$0008,(L048abc)
	rts

L024644:
	move.w	#$0005,(L048abc)
	rts

L02464e:
	move.w	#$0003,(L048abc)
	rts

L024658:
	move.w	#$0002,(L048abc)
	rts

L024662:
	move.w	#$0001,(L048abc)
	rts

L02466c:
	addq.w	#1,(L048abc)
	rts

L024674:
	move.w	#$0009,(L048abc)
	rts

L02467e:
	move.w	#$9100,d1
	move.w	#$0000,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	andi.w	#$000f,d0
	btst.l	#$01,d0
	beq	L0246bc
	move.w	#$0005,d2
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000538).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	bra	L02458a
L0246bc:
	rts

L0246be:
	move.w	#$0003,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000410).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	btst.l	#$05,d0
	bne	L0246f8
	move.w	#$0009,d1
	movem.l	a0/a5,-(a7)
	suba.l	a5,a5
	movea.l	($00000410).l,a0
	jsr	(a0)
	movem.l	(a7)+,a0/a5
	btst.l	#$06,d0
	bne	L0246f8
	rts

L0246f8:
	jsr	(L03c9e6)
	move.w	#$0000,($00e80014)
	bra	L02464e
L02470a:
	lea.l	(L00377a),a0
	lea.l	(L0472b2),a2
	jsr	(L0031f4)
	bsr	L025312
	bra	L02466c
L024724:
	move.w	#$0000,(L047124)
	move.w	#$0200,($00eb0808)
	move.w	#$0000,($00e82600)
	moveq.l	#$00,d0
	move.l	d0,(L0470ee)
	move.l	d0,(L0470f6)
	move.l	d0,(L0470fe)
	move.l	d0,(L047106)
	move.l	d0,(L047102)
	move.l	d0,(L04710a)
	move.w	d0,($00e80014)
	move.l	d0,(L0470f2)
	move.l	d0,(L0470fa)
	lea.l	(L054c7a),a5
	lea.l	(L061bdc),a6
	jsr	(L03d632)
	lea.l	(L0550e8),a5
	lea.l	(L069bdc),a6
	jsr	(L03d632)
	lea.l	(L061bdc),a5
	lea.l	(L069bdc),a4
	lea.l	($00e50000),a6
	move.w	#$0001,d7
	jsr	(L0239da)
	move.w	#$0001,(L04735c)
	move.w	#$0000,(L047f8e)
	move.w	#$0200,(L047f8a)
	move.w	#$0000,(L04735a)
	moveq.l	#$00,d7
	lea.l	($00e50000),a6
	lea.l	($00c00001),a2
	move.l	d7,d6
	lea.l	($00e1c000),a3
	clr.w	d7
	swap.w	d7
	andi.b	#$e0,d7
	asl.l	#3,d7
	btst.l	#$02,d2
	beq	L0247fc
	asl.l	#1,d7
L0247fc:
	lea.l	(a6,d7.l),a6
	swap.w	d6
	andi.w	#$01e0,d6
	swap.w	d6
	clr.w	d6
	lsr.l	#6,d6
	lea.l	(a2,d6.l),a2
	move.w	#$0007,d7
L024814:
	move.w	#$0007,d6
	movea.l	a2,a5
	move.l	a2,d0
	move.w	d0,d1
	add.w	#$0040,d1
	andi.l	#$000003ff,d1
	andi.l	#$fffffc00,d0
	add.l	d1,d0
	movea.l	d0,a2
L024832:
	jsr	(L02852e)
	dbra	d6,L024832
	dbra	d7,L024814
	jsr	(L018c0e)
	move.b	(L0554d4),d7
	ext.w	d7
	neg.w	d7
	add.w	#$0000,d7
	asl.w	#5,d7
	lea.l	(L0554d6),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82000),a6
	move.w	#$003f,d7
L02486a:
	move.l	(a5)+,(a6)+
	dbra	d7,L02486a
	move.w	#$06e4,($00e82500)
	move.w	#$0023,($00e82600)
	rts

L024882:
	bsr	L024724
	jsr	(L0436d8)
	moveq.l	#$b0,d0
	trap	#0
	move.b	(L0472c1),(L04731c)
	move.w	#$140e,d0
	lea.l	(L0251e6),a6
	jsr	(L002480)
	move.w	#$2003,d0
	lea.l	(L0251f3),a6
	jsr	(L002480)
	cmpi.b	#$ff,(L0472b2)
	beq	L0248f6
	move.w	#$0000,d0
	bsr	L0251b0
	move.w	#$2017,d0
	move.b	(L0472bc),d2
	andi.w	#$00ff,d2
	addq.w	#1,d2
	jsr	(L0419fe)
	move.w	#$201b,d0
	move.b	(L0472bd),d2
	andi.w	#$00ff,d2
	jsr	(L0419fe)
L0248f6:
	move.w	#$2c03,d0
	lea.l	(L0251fc),a6
	jsr	(L002480)
	cmpi.b	#$ff,(L0472c2)
	beq	L024942
	move.w	#$0001,d0
	bsr	L0251b0
	move.w	#$2c17,d0
	move.b	(L0472cc),d2
	andi.w	#$00ff,d2
	addq.w	#1,d2
	jsr	(L0419fe)
	move.w	#$2c1b,d0
	move.b	(L0472cd),d2
	andi.w	#$00ff,d2
	jsr	(L0419fe)
L024942:
	move.w	#$3803,d0
	lea.l	(L025205),a6
	jsr	(L002480)
	cmpi.b	#$ff,(L0472d2)
	beq	L02498e
	move.w	#$0002,d0
	bsr	L0251b0
	move.w	#$3817,d0
	move.b	(L0472dc),d2
	andi.w	#$00ff,d2
	addq.w	#1,d2
	jsr	(L0419fe)
	move.w	#$381b,d0
	move.b	(L0472dd),d2
	andi.w	#$00ff,d2
	jsr	(L0419fe)
L02498e:
	move.w	#$4405,d0
	lea.l	(L02520e),a6
	jsr	(L002480)
	move.w	#$5005,d0
	lea.l	(L025219),a6
	jsr	(L002480)
	bsr	L024bba
	bsr	L024c02
	moveq.l	#$00,d0
	cmpi.b	#$ff,(L0472b2)
	bne	L0249dc
	addq.w	#1,d0
	cmpi.b	#$ff,(L0472c2)
	bne	L0249dc
	addq.w	#1,d0
	cmpi.b	#$ff,(L0472d2)
	bne	L0249dc
	addq.w	#1,d0
L0249dc:
	move.w	d0,(L048abe)
	bsr	L024c28
	bra	L02466c
L0249ea:
	btst.b	#$00,(L0481e4)
	bne	L024a46
	btst.b	#$01,(L0481e4)
	bne	L024a6c
	btst.b	#$07,(L0481e4)
	bne	L024a6c
	btst.b	#$05,(L0481e4)
	bne	L024a96
	btst.b	#$04,(L0481e4)
	bne	L024a96
	btst.b	#$06,(L0481e4)
	bne	L024a96
	rts

L024a2a:
	.dc.l	L024cac
	.dc.l	L024cb8
	.dc.l	L024cc4
	.dc.l	L024cd0
	.dc.l	L024cf0
	.dc.l	L024d10
	.dc.l	L024d10

L024a46:
	move.w	(L048abe),d0
	subq.w	#1,d0
	bpl	L024a54
	move.w	#$0006,d0
L024a54:
	move.w	d0,(L048abe)
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L024a2a,pc,d0.w),a6
	jsr	(a6)
	tst.w	d0
	bne	L024a46
	bra	L024c24
L024a6c:
	move.w	(L048abe),d0
	addq.w	#1,d0
	cmpi.w	#$0007,d0
	bne	L024a7e
	move.w	#$0000,d0
L024a7e:
	move.w	d0,(L048abe)
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L024a2a,pc,d0.w),a6
	jsr	(a6)
	tst.w	d0
	bne	L024a6c
	bra	L024c24
L024a96:
	move.w	(L048abe),d0
	cmpi.w	#$0003,d0
	beq	L024af0
	cmpi.w	#$0004,d0
	beq	L024b48
	cmpi.w	#$0005,d0
	beq	L024b94
	cmpi.w	#$0006,d0
	beq	L024bdc
	move.w	d0,(L0472e2)
	asl.w	#4,d0
	lea.l	(L0472b2),a0
	move.b	($0a,a0,d0.w),d1
	andi.w	#$00ff,d1
	move.w	d1,(L047350)
	move.b	($0d,a0,d0.w),d1
	andi.w	#$00ff,d1
	move.w	d1,(L047342)
	moveq.l	#$f0,d0
	trap	#0
	moveq.l	#$15,d0
	trap	#0
	bra	L024674
L024af0:
	moveq.l	#$15,d0
	trap	#0
	move.w	#$4405,d0
	lea.l	(L025225),a6
	jsr	(L002480)
	move.w	#$5005,d0
	lea.l	(L025225),a6
	jsr	(L002480)
	moveq.l	#$00,d0
	cmpi.b	#$ff,(L0472b2)
	beq	L024b2e
	addq.w	#1,d0
	cmpi.b	#$ff,(L0472c2)
	beq	L024b2e
	addq.w	#1,d0
L024b2e:
	move.w	d0,(L048abe)
	clr.w	(L048ac0)
	clr.w	(L048ac2)
	bsr	L024c28
	bra	L02466c
L024b48:
	moveq.l	#$15,d0
	trap	#0
	move.w	#$4405,d0
	lea.l	(L025225),a6
	jsr	(L002480)
	move.w	#$5005,d0
	lea.l	(L025225),a6
	jsr	(L002480)
	moveq.l	#$00,d0
	cmpi.b	#$ff,(L0472b2)
	bne	L024b86
	addq.w	#1,d0
	cmpi.b	#$ff,(L0472c2)
	bne	L024b86
	addq.w	#1,d0
L024b86:
	move.w	d0,(L048abe)
	bsr	L024c28
	bra	L02463a
L024b94:
	moveq.l	#$15,d0
	trap	#0
	eori.b	#$01,(L04731c)
	move.b	(L04731c),(L0472c1)
	bset.b	#$05,(L0481e2)
	bset.b	#$04,(L0481e2)
L024bba:
	lea.l	(L025238),a6
	btst.b	#$00,(L04731c)
	beq	L024bd0
	lea.l	(L02524f),a6
L024bd0:
	move.w	#$5c07,d0
	jsr	(L002480)
	rts

L024bdc:
	moveq.l	#$15,d0
	trap	#0
	eori.b	#$02,(L04731c)
	move.b	(L04731c),(L0472c1)
	bset.b	#$05,(L0481e2)
	bset.b	#$04,(L0481e2)
L024c02:
	lea.l	(L025266),a6
	btst.b	#$01,(L04731c)
	beq	L024c18
	lea.l	(L02527d),a6
L024c18:
	move.w	#$6807,d0
	jsr	(L002480)
	rts

L024c24:
	moveq.l	#$16,d0
	trap	#0
L024c28:
	move.w	#$2002,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$2c02,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$3802,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$4402,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$5002,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$5c02,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$6802,d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	(L048abe),d0
	add.w	d0,d0
	add.w	(L048abe),d0
	addq.w	#8,d0
	asl.w	#8,d0
	asl.w	#2,d0
	addq.w	#2,d0
	move.w	#$0051,d1
	jsr	(L002548)
	rts

L024cac:
	cmpi.b	#$ff,(L0472b2)
	beq	L024d14
	bra	L024d10
L024cb8:
	cmpi.b	#$ff,(L0472c2)
	beq	L024d14
	bra	L024d10
L024cc4:
	cmpi.b	#$ff,(L0472d2)
	beq	L024d14
	bra	L024d10
L024cd0:
	cmpi.b	#$ff,(L0472b2)
	beq	L024d10
	cmpi.b	#$ff,(L0472c2)
	beq	L024d10
	cmpi.b	#$ff,(L0472d2)
	beq	L024d10
	bra	L024d14
L024cf0:
	cmpi.b	#$ff,(L0472b2)
	bne	L024d10
	cmpi.b	#$ff,(L0472c2)
	bne	L024d10
	cmpi.b	#$ff,(L0472d2)
	bne	L024d10
	bra	L024d14
L024d10:
	moveq.l	#$00,d0
	rts

L024d14:
	moveq.l	#$01,d0
	rts

L024d18:
	lea.l	(L025225),a6
	btst.b	#$04,(L0472f7)
	beq	L024d2e
	lea.l	(L02520e),a6
L024d2e:
	move.w	#$1401,d0
	jsr	(L002480)
	rts

L024d3a:
	bsr	L024d18
	btst.b	#$00,(L0481e4)
	bne	L024d86
	btst.b	#$01,(L0481e4)
	bne	L024dac
	btst.b	#$07,(L0481e4)
	bne	L024dac
	btst.b	#$05,(L0481e4)
	bne	L024dd6
	btst.b	#$04,(L0481e4)
	bne	L024dd6
	btst.b	#$06,(L0481e4)
	bne	L024dd6
	rts

L024d7a:
	.dc.l	L024cac
	.dc.l	L024cb8
	.dc.l	L024cc4

L024d86:
	move.w	(L048abe),d0
	subq.w	#1,d0
	bpl	L024d94
	move.w	#$0002,d0
L024d94:
	move.w	d0,(L048abe)
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L024d7a,pc,d0.w),a6
	jsr	(a6)
	tst.w	d0
	beq	L024d86
	bra	L024c24
L024dac:
	move.w	(L048abe),d0
	addq.w	#1,d0
	cmpi.w	#$0003,d0
	bne	L024dbe
	move.w	#$0000,d0
L024dbe:
	move.w	d0,(L048abe)
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L024d7a,pc,d0.w),a6
	jsr	(a6)
	tst.w	d0
	beq	L024dac
	bra	L024c24
L024dd6:
	move.w	(L048abe),d1
	asl.w	#4,d1
	lea.l	(L0472b2),a0
	move.l	#$00000000,(a0,d1.w)
	move.l	#$00000000,($04,a0,d1.w)
	move.b	#$00,($0a,a0,d1.w)
	move.b	#$00,($0b,a0,d1.w)
	move.w	(L048abe),d0
	add.w	d0,d0
	add.w	(L048abe),d0
	addq.w	#8,d0
	asl.w	#8,d0
	asl.w	#2,d0
	add.w	#$0017,d0
	move.w	d0,-(a7)
	lea.l	(L025231),a6
	jsr	(L002480)
	move.w	(a7)+,d0
	clr.w	(L048ac4)
	bra	L02466c
L024e32:
	bsr	L024d18
	bsr	L024fb4
	btst.b	#$03,(L0481e4)
	bne	L024e8c
	btst.b	#$02,(L0481e4)
	bne	L024ec0
	btst.b	#$05,(L0481e4)
	bne	L024f9c
	btst.b	#$04,(L0481e4)
	bne	L024ef0
	move.w	(L048ac4),d0
	addq.w	#1,d0
	move.w	d0,(L048ac4)
	andi.w	#$0007,d0
	bne	L024e8a
	bclr.b	#$03,(L0481e2)
	bclr.b	#$02,(L0481e2)
L024e8a:
	rts

L024e8c:
	clr.w	(L048ac4)
	move.w	(L048abe),d1
	asl.w	#4,d1
	add.w	(L048ac0),d1
	lea.l	(L0472b2),a0
	move.b	(a0,d1.w),d2
	andi.w	#$00ff,d2
	addq.w	#1,d2
	cmpi.w	#$001b,d2
	bne	L024eba
	move.w	#$0000,d2
L024eba:
	move.b	d2,(a0,d1.w)
	rts

L024ec0:
	clr.w	(L048ac4)
	move.w	(L048abe),d1
	asl.w	#4,d1
	add.w	(L048ac0),d1
	lea.l	(L0472b2),a0
	move.b	(a0,d1.w),d2
	andi.w	#$00ff,d2
	subq.w	#1,d2
	bpl	L024eea
	move.w	#$001a,d2
L024eea:
	move.b	d2,(a0,d1.w)
	rts

L024ef0:
	clr.w	(L048ac4)
	moveq.l	#$16,d0
	trap	#0
	move.w	(L048ac0),d1
	addq.w	#1,d1
	cmpi.w	#$0008,d1
	beq	L024f10
	move.w	d1,(L048ac0)
	rts

L024f10:
	move.w	(L048abe),d0
	add.w	d0,d0
	add.w	(L048abe),d0
	addq.w	#7,d0
	asl.w	#8,d0
	asl.w	#2,d0
	add.w	#$000d,d0
	add.w	(L048ac0),d0
	move.w	#$0000,d1
	jsr	(L002548)
	lea.l	(L025225),a6
	move.w	#$1401,d0
	jsr	(L002480)
	move.w	#$4405,d0
	lea.l	(L02520e),a6
	jsr	(L002480)
	move.w	#$5005,d0
	lea.l	(L025219),a6
	jsr	(L002480)
	bsr	L024c28
	move.w	(L048abe),d1
	asl.w	#4,d1
	lea.l	(L0472b2),a0
	lea.l	(a0,d1.w),a0
	lea.l	(L0252cf),a1
	move.w	#$0007,d1
L024f88:
	move.b	(a0),d0
	andi.w	#$00ff,d0
	move.b	(a1,d0.w),d0
	move.b	d0,(a0)+
	dbra	d1,L024f88
	bra	L024644
L024f9c:
	clr.w	(L048ac4)
	move.w	(L048ac0),d1
	subq.w	#1,d1
	bmi	L024fb2
	move.w	d1,(L048ac0)
L024fb2:
	rts

L024fb4:
	move.w	(L048abe),d0
	add.w	d0,d0
	add.w	(L048abe),d0
	addq.w	#7,d0
	asl.w	#8,d0
	asl.w	#2,d0
	add.w	#$000c,d0
	add.w	(L048ac0),d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	#$0052,d1
	jsr	(L002548)
	move.w	#$0000,d1
	jsr	(L002548)
	addi.w	#$03fe,d0
	move.w	(L048abe),d1
	asl.w	#4,d1
	add.w	(L048ac0),d1
	lea.l	(L0472b2),a0
	move.b	(a0,d1.w),d1
	andi.w	#$00ff,d1
	lea.l	(L0252cf),a0
	move.b	(a0,d1.w),d1
	andi.w	#$00ff,d1
	jsr	(L002548)
	rts

L025026:
	lea.l	(L025225),a6
	btst.b	#$04,(L0472f7)
	beq	L02503c
	lea.l	(L025219),a6
L02503c:
	move.w	#$1401,d0
	jsr	(L002480)
	rts

L025048:
	bsr	L025026
	btst.b	#$00,(L0481e4)
	bne	L025094
	btst.b	#$01,(L0481e4)
	bne	L0250ba
	btst.b	#$07,(L0481e4)
	bne	L0250ba
	btst.b	#$05,(L0481e4)
	bne	L0250e4
	btst.b	#$04,(L0481e4)
	bne	L0250e4
	btst.b	#$06,(L0481e4)
	bne	L0250e4
	rts

L025088:
	.dc.l	L024cac
	.dc.l	L024cb8
	.dc.l	L024cc4

L025094:
	move.w	(L048abe),d0
	subq.w	#1,d0
	bpl	L0250a2
	move.w	#$0002,d0
L0250a2:
	move.w	d0,(L048abe)
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L025088,pc,d0.w),a6
	jsr	(a6)
	tst.w	d0
	bne	L025094
	bra	L024c24
L0250ba:
	move.w	(L048abe),d0
	addq.w	#1,d0
	cmpi.w	#$0003,d0
	bne	L0250cc
	move.w	#$0000,d0
L0250cc:
	move.w	d0,(L048abe)
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L025088,pc,d0.w),a6
	jsr	(a6)
	tst.w	d0
	bne	L0250ba
	bra	L024c24
L0250e4:
	move.w	(L048abe),d1
	asl.w	#4,d1
	lea.l	(L0472b2),a0
	move.l	#$ffffffff,(a0,d1.w)
	move.l	#$ffffffff,($04,a0,d1.w)
	move.l	#$ff000000,($08,a0,d1.w)
	move.l	#$00000000,($0c,a0,d1.w)
	move.w	(L048abe),d0
	add.w	d0,d0
	add.w	(L048abe),d0
	addq.w	#8,d0
	asl.w	#8,d0
	asl.w	#2,d0
	add.w	#$000d,d0
	move.w	d0,-(a7)
	lea.l	(L025225),a6
	jsr	(L002480)
	move.w	(a7)+,d0
	addq.w	#7,d0
	lea.l	(L025225),a6
	jsr	(L002480)
	moveq.l	#$00,d0
	cmpi.b	#$ff,(L0472b2)
	bne	L02516e
	addq.w	#1,d0
	cmpi.b	#$ff,(L0472c2)
	bne	L02516e
	addq.w	#1,d0
	cmpi.b	#$ff,(L0472d2)
	bne	L02516e
	addq.w	#1,d0
L02516e:
	move.w	d0,(L048abe)
	lea.l	(L025225),a6
	move.w	#$1401,d0
	jsr	(L002480)
	move.w	#$4405,d0
	lea.l	(L02520e),a6
	jsr	(L002480)
	move.w	#$5005,d0
	lea.l	(L025219),a6
	jsr	(L002480)
	moveq.l	#$15,d0
	trap	#0
	bsr	L024c28
	bra	L024644
L0251b0:
	cmpi.w	#$0001,d0
	beq	L0251c4
	bcc	L0251d0
	move.w	#$200d,d0
	lea.l	(L0472b2),a6
	bra	L0251de
L0251c4:
	move.w	#$2c0d,d0
	lea.l	(L0472c2),a6
	bra	L0251de
L0251d0:
	move.w	#$380d,d0
	lea.l	(L0472d2),a6
	bra.w	L0251de
L0251de:
	jsr	(L002480)
	rts

L0251e6:
	.dc.b	'A4@8',$00,$00,$00
L0251ed:
	.dc.b	$46,$47,$34,$3a,$38,$ff
L0251f3:
	.dc.b	$1a,$16,$0b,$23,$0f,$1c,$50,$02
	.dc.b	$ff
L0251fc:
	.dc.b	$1a,$16,$0b,$23,$0f,$1c,$50,$03
	.dc.b	$ff
L025205:
	.dc.b	$1a,$16,$0b,$23,$0f,$1c,$50,$04
	.dc.b	$ff
L02520e:
	.dc.b	$18,$0b,$17,$0f,$00,$0f,$18,$1e
	.dc.b	$1c,$23,$ff
L025219:
	.dc.b	$18,$0b,$17,$0f,$00,$0e,$0f,$16
	.dc.b	$0f,$1e,$0f,$ff
L025225:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$ff
L025231:
	.dc.b	$01,$02,$00,$00,$01,$01,$ff
L025238:
	.dc.b	$1e,$1c,$13,$11,$11,$0f,$1c,$00
	.dc.b	$10,$16,$13,$1a,$00,$00,$00,$18
	.dc.b	$19,$1c,$17,$0b,$16,$00,$ff
L02524f:
	.dc.b	$1e,$1c,$13,$11,$11,$0f,$1c,$00
	.dc.b	$10,$16,$13,$1a,$00,$00,$00,$1c
	.dc.b	$0f,$20,$0f,$1c,$1d,$0f,$ff
L025266:
	.dc.b	$1d,$1e,$0b,$1c,$1e,$4f,$1d,$0f
	.dc.b	$16,$0f,$0d,$1e,$00,$00,$00,$0e
	.dc.b	$13,$1d,$0b,$0c,$16,$0f,$ff
L02527d:
	.dc.b	$1d,$1e,$0b,$1c,$1e,$4f,$1d,$0f
	.dc.b	$16,$0f,$0d,$1e,$00,$00,$00,$0f
	.dc.b	$18,$0b,$0c,$16,$0f,$00,$ff
L025294:
	.dc.b	$1a,$16,$0f,$0b,$1d,$0f,$00,$1d
	.dc.b	$0f,$1e,$00,$1f,$1d,$0f,$1c,$00
	.dc.b	$0e,$13,$1d,$15,$00,$1e,$19,$00
	.dc.b	$0e,$1c,$13,$20,$0f,$02,$ff
L0252b3:
	.dc.b	$11,$0b,$17,$0f,$00,$19,$20,$0f
	.dc.b	$1c,$ff
L0252bd:
	.dc.b	$0d,$19,$18,$1e,$13,$18,$1f,$0f
	.dc.b	$ff
L0252c6:
	.dc.b	$1d,$0b,$20,$0f,$ff
L0252cb:
	.dc.b	$0f,$18,$0e,$ff
L0252cf:
	.dc.b	$25,$0b,$0c,$0d,$0e,$0f,$10,$11
	.dc.b	$12,$13,$14,$15,$16,$17,$18,$19
	.dc.b	$1a,$1b,$1c,$1d,$1e,$1f,$20,$21
	.dc.b	$22,$23,$24,$25,$00

L0252ec:
	lea.l	(L0472b2),a1
	jsr	(L025338)
	lea.l	(L0472c2),a1
	jsr	(L025338)
	lea.l	(L0472d2),a1
	jsr	(L025338)
	rts

L025312:
	lea.l	(L0472b2),a1
	jsr	(L025378)
	lea.l	(L0472c2),a1
	jsr	(L025378)
	lea.l	(L0472d2),a1
	jsr	(L025378)
	rts

L025338:
	jsr	(L01024e)
	andi.b	#$7f,d0
	addi.b	#$41,d0
	move.b	d0,($0009,a1)
	move.b	#$00,($000c,a1)
	move.w	#$0000,d1
	move.b	#$00,d3
L025358:
	move.b	(a1,d1.w),d2
	add.b	d2,d3
	eor.b	d0,d2
	move.b	d2,(a1,d1.w)
	ror.b	#1,d0
	addq.w	#1,d1
	cmpi.w	#$0010,d1
	bne	L025358
	move.b	d0,($0009,a1)
	move.b	d3,($000c,a1)
	rts

L025378:
	move.b	($0009,a1),d0
	beq	L0253bc
	move.b	($000c,a1),d3
	move.w	#$0000,d1
L025386:
	move.b	(a1,d1.w),d2
	eor.b	d0,d2
	move.b	d2,(a1,d1.w)
	ror.b	#1,d0
	addq.w	#1,d1
	cmpi.w	#$0010,d1
	bne	L025386
	move.b	d0,($0009,a1)
	move.b	#$00,($000c,a1)
	move.w	#$0000,d1
	move.b	#$00,d2
L0253ac:
	add.b	(a1,d1.w),d2
	addq.w	#1,d1
	cmpi.w	#$0010,d1
	bne	L0253ac
	cmp.b	d2,d3
	bne	L0253d6
L0253bc:
	cmpi.b	#$ff,($0008,a1)
	bne	L0253d6
	cmpi.b	#$90,($000a,a1)
	bcc	L0253d6
	cmpi.b	#$64,($000b,a1)
	bcc	L0253d6
	rts

L0253d6:
	move.l	#$ffffffff,($0000.w,a1)
	move.l	#$ffffffff,($0004,a1)
	move.l	#$ff000000,($0008,a1)
	move.l	#$00000000,($000c,a1)
	rts

L0253f8:
	move.l	#L0482bc,(L0472fc)
	rts

L025404:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	bra	L02542a
L025416:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
L025426:
	move.w	#$0003,d3
L02542a:
	movea.l	(L0472fc),a6
	cmpa.l	#L0486bc,a6
	bcc	L025486
	btst.l	#$0e,d0
	beq	L025448
	btst.b	#$00,(L0472f7)
	bne	L025484
L025448:
	tst.w	d0
	bmi	L025490
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($06,a5,d0.w),d4
	beq	L025484
	add.w	#$0010,d1
	add.w	#$0010,d2
	move.w	(a5,d0.w),d0
	lea.l	(a5,d0.w),a5
L025468:
	move.w	(a5)+,d0
	add.w	d1,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	add.w	d2,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	move.w	d0,(a6)+
	move.w	d3,(a6)+
	subq.b	#1,d4
	bne	L025468
	move.l	a6,(L0472fc)
L025484:
	rts

L025486:
	add.w	#$0010,d1
	add.w	#$0010,d2
	rts

L025490:
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($06,a5,d0.w),d4
	beq	L025484
	add.w	#$0010,d1
	add.w	#$0010,d2
	move.w	(a5,d0.w),d0
	lea.l	(a5,d0.w),a5
L0254ac:
	move.w	(a5)+,d0
	neg.w	d0
	sub.w	#$0010,d0
	add.w	d1,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	add.w	d2,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	eori.w	#$4000,d0
	move.w	d0,(a6)+
	move.w	d3,(a6)+
	subq.b	#1,d4
	bne	L0254ac
	move.l	a6,(L0472fc)
	rts

L0254d4:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	swap.w	d3
	move.w	#$0003,d3
L0254ea:
	movea.l	(L0472fc),a6
	cmpa.l	#L0486bc,a6
	bcc	L025486
	btst.l	#$0e,d0
	beq	L02550a
	btst.b	#$00,(L0472f7)
	bne	L025484
L02550a:
	tst.w	d0
	bmi	L025550
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($06,a5,d0.w),d4
	beq	L025484
	add.w	#$0010,d1
	add.w	#$0010,d2
	move.w	(a5,d0.w),d0
	lea.l	(a5,d0.w),a5
L02552c:
	move.w	(a5)+,d0
	add.w	d1,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	add.w	d2,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	swap.w	d3
	add.w	d3,d0
	swap.w	d3
	move.w	d0,(a6)+
	move.w	d3,(a6)+
	subq.b	#1,d4
	bne	L02552c
	move.l	a6,(L0472fc)
	rts

L025550:
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($06,a5,d0.w),d4
	beq	L025484
	add.w	#$0010,d1
	add.w	#$0010,d2
	move.w	(a5,d0.w),d0
	lea.l	(a5,d0.w),a5
L02556e:
	move.w	(a5)+,d0
	neg.w	d0
	sub.w	#$0010,d0
	add.w	d1,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	add.w	d2,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	eori.w	#$4000,d0
	swap.w	d3
	add.w	d3,d0
	swap.w	d3
	move.w	d0,(a6)+
	move.w	d3,(a6)+
	subq.b	#1,d4
	bne	L02556e
	move.l	a6,(L0472fc)
	rts

L02559c:
	move.w	#$0003,d3
	movea.l	(L0472fc),a6
	cmpa.l	#L0486bc,a6
	bcc	L025486
	btst.l	#$0e,d0
	beq	L0255c2
	btst.b	#$00,(L0472f7)
	bne	L025484
L0255c2:
	andi.w	#$00ff,d0
	asl.w	#3,d0
	move.b	($06,a5,d0.w),d4
	beq	L025606
	add.w	#$0010,d1
	add.w	#$0010,d2
	move.w	(a5,d0.w),d0
	lea.l	(a5,d0.w),a5
L0255de:
	move.w	(a5)+,d0
	muls.w	d7,d0
	add.l	d0,d0
	swap.w	d0
	add.w	d1,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	muls.w	d7,d0
	add.l	d0,d0
	swap.w	d0
	add.w	d2,d0
	move.w	d0,(a6)+
	move.w	(a5)+,d0
	move.w	d0,(a6)+
	move.w	d3,(a6)+
	subq.b	#1,d4
	bne	L0255de
	move.l	a6,(L0472fc)
L025606:
	rts

L025608:
	moveq.l	#$00,d0
	movea.l	(L0472fc),a6
L025610:
	cmpa.l	#L0486bc,a6
	bcc	L02561e
	move.l	d0,(a6)+
	move.l	d0,(a6)+
	bra	L025610
L02561e:
	rts

L025620:
	lea.l	($00e50000),a6
	tst.w	(L04735a)
	bmi	L025640
	move.w	(L047f7a),d1
	move.w	(L0470f2),d2
	andi.w	#$01ff,d2
	bra	L025650
L025640:
	move.w	(L047f7a),d2
	move.w	(L0470ee),d1
	andi.w	#$01ff,d1
L025650:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d3
	andi.w	#$00ff,d3
	asl.w	#3,d3
	movea.l	($02,a5,d3.w),a5
	adda.l	#L06c3dc,a5
	move.w	($0000.w,a5),d3
	tst.b	($0018,a0)
	bpl	L025674
	neg.w	d3
L025674:
	add.w	($0004,a0),d3
	add.w	d3,d1
	add.w	($0008,a0),d2
	add.w	($0002,a5),d2
	move.w	#$fff8,d3
	move.l	#$0000ffe0,d4
	move.w	#$0018,d5
	rts

L025692:
	tst.w	(L04735a)
	bmi	L02572e
	lea.l	($00e70000),a6
	add.w	(L047f7e),d0
	move.w	(L047102),d2
	add.w	d2,d1
	andi.w	#$01ff,d1
	swap.w	d1
	move.w	d0,d1
	andi.l	#$0000ffe0,d0
	asl.l	#3,d0
	btst.b	#$05,(L04735d)
	beq	L025708
	add.w	d0,d0
	bra	L025708
L0256ce:
	tst.w	(L04735a)
	bmi	L02575e
	lea.l	($00e50000),a6
	add.w	(L047f7a),d0
	move.w	(L0470f2),d2
	add.w	d2,d1
	andi.w	#$01ff,d1
	swap.w	d1
	move.w	d0,d1
	andi.l	#$0000ffe0,d0
	asl.l	#3,d0
	btst.b	#$02,(L04735d)
	beq	L025708
	add.w	d0,d0
L025708:
	andi.w	#$0018,d1
	lsr.w	#2,d1
	add.w	d1,d0
	swap.w	d1
	andi.w	#$fff8,d1
	add.w	d1,d0
	cmpi.l	#$00010000,d0
	bcc	L025960
	move.b	(a6,d0.l),d0
	andi.b	#$38,d0
	ror.b	#3,d0
	rts

L02572e:
	lea.l	($00e70000),a6
	add.w	(L047f7e),d1
	move.w	(L0470fe),d2
	add.w	d2,d0
	andi.w	#$01ff,d0
	swap.w	d0
	move.w	d1,d0
	andi.w	#$ffe0,d1
	asl.w	#3,d1
	btst.b	#$05,(L04735d)
	beq	L02578c
	add.w	d1,d1
	bra	L02578c
L02575e:
	lea.l	($00e50000),a6
	add.w	(L047f7a),d1
	move.w	(L0470ee),d2
	add.w	d2,d0
	andi.w	#$01ff,d0
	swap.w	d0
	move.w	d1,d0
	andi.w	#$ffe0,d1
	asl.w	#3,d1
	btst.b	#$02,(L04735d)
	beq	L02578c
	add.w	d1,d1
L02578c:
	andi.w	#$0018,d0
	add.w	d0,d1
	swap.w	d1
	swap.w	d0
	move.w	d0,d1
	andi.w	#$0018,d0
	lsr.w	#2,d0
	andi.w	#$00e0,d1
	add.w	d1,d0
	swap.w	d1
	add.w	d1,d0
	andi.l	#$0000ffff,d0
	move.b	(a6,d0.l),d0
	andi.b	#$38,d0
	ror.b	#3,d0
	rts

L0257ba:
	tst.w	(L04735a)
	bmi	L0257da
	lea.l	($00e70000),a6
	move.w	(L047f7e),d1
	move.w	(L047102),d2
	andi.w	#$01ff,d2
	bra	L025828
L0257da:
	lea.l	($00e70000),a6
	move.w	(L047f7e),d2
	move.w	(L0470fe),d1
	andi.w	#$01ff,d1
	bra	L025828
L0257f2:
	tst.w	(L04735a)
	bmi	L025812
	lea.l	($00e50000),a6
	move.w	(L047f7a),d1
	move.w	(L0470f2),d2
	andi.w	#$01ff,d2
	bra	L025828
L025812:
	lea.l	($00e50000),a6
	move.w	(L0470ee),d1
	andi.w	#$01ff,d1
	move.w	(L047f7a),d2
L025828:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d3
	andi.w	#$00ff,d3
	asl.w	#3,d3
	movea.l	($02,a5,d3.w),a5
	adda.l	#L06c3dc,a5
	move.w	($0000.w,a5),d3
	tst.b	($0018,a0)
	bpl	L02584c
	neg.w	d3
L02584c:
	add.w	($0004,a0),d3
	add.w	d3,d1
	add.w	($0008,a0),d2
	add.w	($0002,a5),d2
	move.w	#$fff8,d3
	move.l	#$0000ffe0,d4
	move.w	#$0018,d5
L025868:
	cmpi.w	#$0008,d0
	bcc	L0258fc
	lsl.w	#2,d0
	movea.l	(L025878,pc,d0.w),a4
	jmp	(a4)

L025878:
	.dc.l	L02589c
	.dc.l	L0258a6
	.dc.l	L0258b4
	.dc.l	L0258be
	.dc.l	L0258cc
	.dc.l	L0258d6
	.dc.l	L0258e4
	.dc.l	L0258ee
	.dc.l	L0258fc

L02589c:
	move.w	d1,d6
	move.w	d2,d7
	sub.w	($0006,a5),d7
	bra	L025904
L0258a6:
	move.w	d1,d6
	add.w	($0004,a5),d6
	move.w	d2,d7
	sub.w	($0006,a5),d7
	bra	L025904
L0258b4:
	move.w	d1,d6
	add.w	($0004,a5),d6
	move.w	d2,d7
	bra	L025904
L0258be:
	move.w	d1,d6
	add.w	($0004,a5),d6
	move.w	d2,d7
	add.w	($0006,a5),d7
	bra	L025904
L0258cc:
	move.w	d1,d6
	move.w	d2,d7
	add.w	($0006,a5),d7
	bra	L025904
L0258d6:
	move.w	d1,d6
	sub.w	($0004,a5),d6
	move.w	d2,d7
	add.w	($0006,a5),d7
	bra	L025904
L0258e4:
	move.w	d1,d6
	sub.w	($0004,a5),d6
	move.w	d2,d7
	bra	L025904
L0258ee:
	move.w	d1,d6
	sub.w	($0004,a5),d6
	move.w	d2,d7
	sub.w	($0006,a5),d7
	bra	L025904
L0258fc:
	move.w	d1,d6
	move.w	d2,d7
	bra.w	L025904
L025904:
	tst.w	(L04735a)
	bmi	L025966
	cmpa.l	#$00e70000,a6
	bcc	L025928
	move.w	d6,d0
	and.l	d4,d6
	asl.l	#3,d6
	btst.b	#$02,(L04735d)
	beq	L02593e
	add.w	d6,d6
	bra	L02593e
L025928:
	move.w	d6,d0
	and.l	d4,d6
	asl.l	#3,d6
	btst.b	#$05,(L04735d)
	beq	L02593e
	add.w	d6,d6
	bra.w	L02593e
L02593e:
	andi.w	#$01ff,d7
	and.w	d5,d0
	lsr.w	#2,d0
	add.w	d0,d6
	and.w	d3,d7
	add.w	d7,d6
	cmpi.l	#$00010000,d6
	bcc	L025960
	move.b	(a6,d6.l),d0
	andi.b	#$38,d0
	lsr.b	#3,d0
	rts

L025960:
	move.w	#$ff01,d0
	rts

L025966:
	cmpa.l	#$00e70000,a6
	bcc	L025982
	move.w	d7,d0
	and.w	d4,d7
	asl.w	#3,d7
	btst.b	#$02,(L04735d)
	beq	L025996
	add.w	d7,d7
	bra	L02599c
L025982:
	move.w	d7,d0
	and.w	d4,d7
	asl.w	#3,d7
	btst.b	#$05,(L04735d)
	beq	L025996
	add.w	d7,d7
	bra	L02599c
L025996:
	cmpi.w	#$0100,d6
	bcc	L025960
L02599c:
	andi.w	#$01ff,d6
	and.w	d5,d0
	add.w	d0,d7
	move.w	d6,d0
	and.w	d5,d0
	lsr.w	#2,d0
	andi.w	#$01e0,d6
	add.w	d0,d6
	add.w	d7,d6
	andi.l	#$0000ffff,d6
	move.b	(a6,d6.l),d0
	andi.b	#$38,d0
	lsr.b	#3,d0
	rts

L0259c4:
	rts

L0259c6:
	movem.l	a0-a1,-(a7)
	lea.l	(L06fe94),a0
	lea.l	($00e82220),a1
	jsr	(L0038c0)
	movem.l	(a7)+,a0-a1
	rts

L0259e2:
	.dc.b	$00,$0b,$00,$09,$00,$02,$00,$01
	.dc.b	$00,$06,$00,$13

L0259ee:
	rts

L0259f0:
	jsr	(L029954)
	jsr	(L0299c2)
	bcs	L029cca
	jsr	(L029a3e)
	bcs	L029cca
	jsr	(L025416)
	rts

L025a12:
	jsr	(L029954)
	jsr	(L0299c2)
	bcs	L029cca
	move.w	($0024,a0),d0
	addq.w	#1,d0
	move.w	d0,($0024,a0)
	cmpi.w	#$0018,d0
	bcs	L025a3a
	clr.w	($0024,a0)
	moveq.l	#$52,d0
	trap	#0
L025a3a:
	tst.w	($001c,a0)
	bne	L025a6c
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0048,d0
	beq	L025a62
	move.w	($0004,a0),d0
	cmpi.w	#$0008,d0
	bcs	L025a62
	cmpi.w	#$00f8,d0
	bcc	L025a62
	bra	L025aa6
L025a62:
	addq.w	#1,($001c,a0)
	neg.l	($000c,a0)
	bra	L025aa6
L025a6c:
	lea.l	(L0473f0),a1
	tst.w	($0002,a0)
	beq	L025a7e
	lea.l	(L047e70),a1
L025a7e:
	move.w	($0004,a0),d0
	sub.w	($0004,a1),d0
	bpl	L025a8a
	neg.w	d0
L025a8a:
	cmpi.w	#$0008,d0
	bcc	L025aa6
	move.w	($0008,a0),d0
	sub.w	($0008,a1),d0
	bpl	L025a9c
	neg.w	d0
L025a9c:
	cmpi.w	#$0018,d0
	bcc	L025aa6
	bra	L029cca
L025aa6:
	move.w	($0020,a0),d0
	addq.w	#1,d0
	move.w	d0,($0020,a0)
	andi.w	#$0003,d0
	bne	L025aea
	move.b	($0019,a0),d0
	tst.w	($000c,a0)
	bpl	L025aca
	addq.b	#1,d0
	andi.w	#$7fff,($0018,a0)
	bra	L025ad2
L025aca:
	addq.b	#1,d0
	ori.w	#$8000,($0018,a0)
L025ad2:
	cmpi.b	#$07,d0
	bne	L025adc
	move.b	#$0a,d0
L025adc:
	cmpi.b	#$0b,d0
	bne	L025ae6
	move.b	#$08,d0
L025ae6:
	move.b	d0,($0019,a0)
L025aea:
	jsr	(L025416)
	rts

L025af2:
	jsr	(L029954)
	jsr	(L0299c2)
	bcs	L029cca
	move.l	($0010,a0),d0
	cmpi.l	#$00100000,d0
	bge	L025b18
	addi.l	#$00006000,d0
	move.l	d0,($0010,a0)
L025b18:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	tst.w	($000c,a0)
	bpl	L025b26
	subq.w	#2,d0
L025b26:
	move.w	d0,($001e,a0)
	lsr.w	#2,d0
	and.w	#$0003,d0
	addq.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L025b3e:
	jsr	(L029954)
	jsr	(L0299c2)
	bcs	L029cca
	tst.w	($001c,a0)
	bne	L025bc6
	move.l	($0010,a0),d0
	cmpi.l	#$00060000,d0
	bge	L025b6a
	addi.l	#$00006000,d0
	move.l	d0,($0010,a0)
L025b6a:
	tst.w	($0002,a0)
	bpl	L025b78
	bclr.b	#$07,($0002,a0)
	bra	L025ba6
L025b78:
	move.w	#$0004,d0
	jsr	(L0257f2)
	cmpi.b	#$01,d0
	beq	L025ba6
	cmpi.b	#$02,d0
	bne	L025bbe
	addq.w	#8,($0008,a0)
	move.w	#$0004,d0
	jsr	(L0257f2)
	subq.w	#8,($0008,a0)
	cmpi.b	#$01,d0
	bne	L025bbe
L025ba6:
	moveq.l	#$53,d0
	trap	#0
	addq.w	#1,($001c,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L06e442,($0014,a0)
L025bbe:
	jsr	(L025416)
	rts

L025bc6:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$003c,d0
	beq	L029cca
	lsr.w	#2,d0
	move.w	d0,($0018,a0)
	jsr	(L025416)
	rts

L025be6:
	cmpi.b	#$08,(L04740d)
	beq	L025c22
	move.w	#$0108,(L04740c)
	move.w	#$0000,(L04740e)
	move.w	#$0001,(L047f64)
	move.w	#$0001,(L047fb0)
	clr.w	(L047f9a)
	clr.w	(L047fa0)
	clr.w	(L047fae)
L025c22:
	rts

L025c24:
	cmpi.w	#$0001,(L047fa2)
	beq	L025c7e
	move.w	#$0001,(L047fa2)
	move.w	#$0001,(L047f64)
	move.w	#$0001,(L047fb0)
	clr.w	(L047f9a)
	clr.w	(L047fa0)
	clr.w	(L047fae)
	cmpi.b	#$03,(L04740d)
	beq	L025c7e
	cmpi.b	#$04,(L04740d)
	beq	L025c7e
	cmpi.b	#$07,(L04740d)
	beq	L025c7e
	move.b	#$00,(L04740d)
L025c7e:
	rts

L025c80:
	tst.b	(L04740c)
	bne	L025c8e
	clr.w	(L047420)
L025c8e:
	bsr	L02683a
	cmpi.b	#$09,(L04740d)
	beq	L025dbc
	move.w	(L047fac),d0
	beq	L025cca
	subq.w	#1,d0
	move.w	d0,(L047fac)
	beq	L025cbc
	andi.w	#$003f,d0
	bne	L025d2e
	moveq.l	#$1a,d0
	trap	#0
	bra	L025d2e
L025cbc:
	jsr	(L018c1c)
	clr.w	(L047fb8)
	bra	L025d2e
L025cca:
	move.w	(L0472f6),d0
	andi.w	#$003f,d0
	bne	L025d2e
	cmpi.b	#$08,(L04740d)
	beq	L025d2e
	move.b	#$00,d0
	move.b	#$01,d1
	add.b	d0,d0
	move.b	(L047f62),d2
	move.b	(L047f63),d3
	sbcd.b	d1,d3
	sbcd.b	d0,d2
	move.b	d2,(L047f62)
	move.b	d3,(L047f63)
	tst.w	(L047f62)
	bne	L025d12
	bsr	L025c24
L025d12:
	cmpi.w	#$0030,(L047f62)
	bcc	L025d20
	moveq.l	#$21,d0
	trap	#0
L025d20:
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L0419c4)
	movem.l	(a7)+,d0-d7/a0-a6
L025d2e:
	moveq.l	#$00,d1
	tst.w	(L047fa2)
	bne	L025d56
	move.w	(L047fae),d0
	beq	L025d56
	subq.w	#1,d0
	move.w	d0,(L047fae)
	andi.w	#$0007,d0
	bne	L025d56
	addq.w	#1,(L047f64)
	moveq.l	#$01,d1
L025d56:
	move.w	(L047fb0),d0
	beq	L025d94
	subq.w	#1,d0
	move.w	d0,(L047fb0)
	andi.w	#$0007,d0
	bne	L025d94
	subq.w	#1,(L047f64)
	bne	L025d92
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a1a)
	movem.l	(a7)+,d0-d7/a0-a6
	cmpi.b	#$08,(L04740d)
	beq	L025d92
	bsr	L025c24
	bra	L025dbc
L025d92:
	moveq.l	#$01,d1
L025d94:
	tst.w	d1
	beq	L025dbc
	move.w	(L047f64),d0
	cmpi.w	#$0011,d0
	bcs	L025dae
	move.w	#$0010,d0
	move.w	d0,(L047f64)
L025dae:
	movem.l	d0-d7/a0-a6,-(a7)
	jsr	(L041a1a)
	movem.l	(a7)+,d0-d7/a0-a6
L025dbc:
	lea.l	(L0473f0),a0
	cmpi.w	#$0001,(L047fa2)
	beq	L025e88
	cmpi.b	#$08,(L04740d)
	beq	L025e88
	cmpi.b	#$09,(L04740d)
	beq	L025e88
	tst.b	($001a,a0)
	beq	L025e88
	tst.w	(L047f9c)
	beq	L025dfa
	bsr	L025fda
L025dfa:
	tst.w	(L047f9a)
	bne	L025e84
	tst.w	(L047fa0)
	bne	L025e84
	moveq.l	#$54,d0
	trap	#0
	move.w	#$0002,d1
	move.w	(L047350),d0
	cmpi.w	#$0003,d0
	bcs	L025e2a
	addq.w	#1,d1
	cmpi.w	#$0006,d0
	bcs	L025e2a
	addq.w	#1,d1
L025e2a:
	asl.w	#3,d1
	move.w	d1,(L047fb0)
	cmpi.b	#$05,($001d,a0)
	beq	L025e7c
	tst.b	($001a,a0)
	bpl	L025e4e
	move.w	#$0000,($0018,a0)
	move.w	#$0108,($001e,a0)
	bra	L025e5a
L025e4e:
	move.w	#$8000,($0018,a0)
	move.w	#$0208,($001e,a0)
L025e5a:
	clr.b	($001a,a0)
	move.w	#$0007,($001c,a0)
	move.l	#L06c56a,($0014,a0)
	clr.w	($0020,a0)
	move.w	#$0000,($0030,a0)
	move.w	#$0000,($0032,a0)
L025e7c:
	move.w	#$0080,(L047f9a)
L025e84:
	clr.b	($001a,a0)
L025e88:
	tst.w	(L047f9a)
	beq	L025ea4
	bset.b	#$06,($0018,a0)
	subq.w	#1,(L047f9a)
	bne	L025ea4
	bclr.b	#$06,($0018,a0)
L025ea4:
	move.w	(L047fa0),d0
	beq	L025ef2
	andi.w	#$ffff,d0
	lsr.w	#1,d0
	divu.w	#$0007,d0
	swap.w	d0
	asl.w	#5,d0
	lea.l	(L06eb10),a1
	lea.l	(a1,d0.w),a1
	lea.l	($00e82220),a2
	move.w	#$0007,d0
L025ece:
	move.l	(a1)+,(a2)+
	dbra	d0,L025ece
	cmpi.w	#$0040,(L047fa0)
	bne	L025ee2
	moveq.l	#$09,d0
	trap	#0
L025ee2:
	subq.w	#1,(L047fa0)
	bne	L025ef2
	bsr	L0259c6
	clr.b	($001a,a0)
L025ef2:
	move.w	($001c,a0),d0
	andi.w	#$00ff,d0
	add.w	d0,d0
	move.w	(L025f04,pc,d0.w),d0
	jmp	(L025f04,pc,d0.w)

L025f04:
	.dc.w	L026d3e-L025f04
	.dc.w	L026ea2-L025f04
	.dc.w	L026f8a-L025f04
	.dc.w	L0271a6-L025f04
	.dc.w	L02738e-L025f04
	.dc.w	L027392-L025f04
	.dc.w	L025fee-L025f04
	.dc.w	L02603a-L025f04
	.dc.w	L0278e0-L025f04
	.dc.w	L027946-L025f04
	.dc.w	L025fd2-L025f04
L025f1a:
	.dc.b	$c8,$00,$d0,$00,$d4,$00,$d8,$00
	.dc.b	$dc,$00,$e0,$00,$e4,$00,$e8,$00
	.dc.b	$ec,$00,$f0,$00,$f4,$00,$f8,$00
	.dc.b	$fc,$00,$fe,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$02,$00
	.dc.b	$04,$00,$08,$00,$0c,$00,$10,$00
	.dc.b	$14,$00,$18,$00,$1c,$00,$20,$00
	.dc.b	$24,$00,$28,$00,$2c,$00,$30,$00
	.dc.b	$38,$00

L025f64:
	rts

L025f66:
	cmpi.b	#$07,(L04740d)
	bcc	L025f64
	tst.w	(L047f9c)
	bne	L025fc8
	move.w	(L04740c),(L047f9e)
	move.b	#$0a,(L04740d)
	move.w	#$0000,(L047420)
	movem.l	d7/a5-a6,-(a7)
	jsr	(L018c0e)
	move.b	(L06ea6a),d7
	ext.w	d7
	neg.w	d7
	addq.w	#1,d7
	asl.w	#5,d7
	lea.l	(L06ea6c),a5
	lea.l	(a5,d7.w),a5
	lea.l	($00e82220),a6
	move.w	#$0007,d7
L025fbe:
	move.l	(a5)+,(a6)+
	dbra	d7,L025fbe
	movem.l	(a7)+,d7/a5-a6
L025fc8:
	move.w	#$0080,(L047f9c)
	rts

L025fd2:
	subq.w	#1,(L047f9c)
	bne	L025fec
L025fda:
	clr.w	(L047f9c)
	move.w	(L047f9e),($001c,a0)
	bsr	L0259c6
L025fec:
	rts

L025fee:
	cmpi.w	#$0003,($001e,a0)
	bcs	L026f48
	cmpi.w	#$0010,($001e,a0)
	bcc	L026014
	addq.w	#1,($001e,a0)
	move.l	#L06c4ca,($0014,a0)
	move.b	#$01,($0019,a0)
	rts

L026014:
	addq.w	#1,($001e,a0)
	cmpi.w	#$0012,($001e,a0)
	bne	L02602a
	move.w	#$0000,($001c,a0)
	clr.w	($001e,a0)
L02602a:
	move.l	#L06c4ca,($0014,a0)
	move.b	#$00,($0019,a0)
	rts

L02603a:
	tst.w	(L047f9c)
	beq	L026044
	bsr	L025fda
L026044:
	tst.w	($0020,a0)
	beq	L0260b2
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0006,d0
	bcs	L02607e
	cmpi.w	#$0010,d0
	bcs	L026086
	cmpi.w	#$0012,d0
	bcs	L02608e
	cmpi.w	#$0014,d0
	bcs	L02609e
	move.w	#$0000,($001c,a0)
	clr.w	($001e,a0)
	jsr	(L0259c6)
	bra	L0260b0
L02607e:
	move.b	#$01,($0019,a0)
	bra	L0260b0
L026086:
	move.b	#$02,($0019,a0)
	bra	L0260b0
L02608e:
	move.l	#L06c4ca,($0014,a0)
	move.b	#$01,($0019,a0)
	bra	L0260b0
L02609e:
	move.l	#L06c4ca,($0014,a0)
	move.b	#$00,($0019,a0)
	bra.w	L0260b0
L0260b0:
	rts

L0260b2:
	move.b	($001e,a0),d0
	subq.b	#1,d0
	beq	L0260c2
	bsr	L02708c
	bra	L027212
L0260c2:
	bsr	L02701c
	bra	L027212
L0260ca:
	btst.b	#$05,(L0481e4)
	beq	L026302
	cmpi.b	#$02,($001d,a0)
	bne	L0260e4
	move.b	#$00,($001d,a0)
L0260e4:
	btst.b	#$00,(L0481e2)
	bne	L0261c4
L0260f0:
	tst.b	(L04741d)
	bne	L0260fe
	moveq.l	#$50,d0
	trap	#0
	bra	L026102
L0260fe:
	moveq.l	#$51,d0
	trap	#0
L026102:
	move.b	#$01,($001c,a0)
	move.w	#$0000,($0022,a0)
	move.b	($001d,a0),d0
	cmpi.b	#$01,d0
	beq	L026156
	cmpi.b	#$05,d0
	beq	L02616e
	cmpi.b	#$03,d0
	bne	L026144
	btst.b	#$01,(L0481e2)
	beq	L026168
	btst.b	#$02,(L0481e2)
	bne	L02615c
	btst.b	#$03,(L0481e2)
	bne	L02615c
	bra	L026162
L026144:
	cmpi.w	#$0002,d0
	bne	L026150
	move.w	#$0000,($001c,a0)
L026150:
	move.w	#$0000,d0
	bra	L0261aa
L026156:
	move.w	#$0001,d0
	bra	L0261aa
L02615c:
	move.w	#$0002,d0
	bra	L0261aa
L026162:
	move.w	#$0003,d0
	bra	L0261aa
L026168:
	move.w	#$0004,d0
	bra	L0261aa
L02616e:
	move.b	($001e,a0),d0
	cmpi.b	#$06,d0
	bne	L02618a
	tst.b	($0019,a0)
	bne	L026184
	move.w	#$0005,d0
	bra	L0261aa
L026184:
	move.w	#$0006,d0
	bra	L0261aa
L02618a:
	cmpi.b	#$0e,d0
	bne	L0261a2
	tst.b	($0019,a0)
	bne	L02619c
	move.w	#$0007,d0
	bra	L0261aa
L02619c:
	move.w	#$0008,d0
	bra	L0261aa
L0261a2:
	andi.w	#$8000,($0018,a0)
	rts

L0261aa:
	move.w	d0,($0020,a0)
	asl.w	#4,d0
	lea.l	(L026a52),a1
	move.l	(a1,d0.w),($0014,a0)
	andi.w	#$8000,($0018,a0)
	rts

L0261c4:
	tst.b	($002f,a0)
	beq	L0260f0
	cmpi.b	#$07,($002f,a0)
	bne	L026210
	tst.w	(L047fac)
	bne	L0260f0
	cmpi.w	#$0005,(L047f66)
	bcs	L0260f0
	subq.w	#5,(L047f66)
	jsr	(L0135da)
	jsr	(L018bb4)
	move.w	#$0002,(L047fb8)
	move.w	#$0101,(L047fac)
	bra	L026302
L026210:
	cmpi.b	#$08,($002f,a0)
	bne	L026256
	tst.w	(L047fae)
	bne	L0260f0
	tst.w	(L047fa2)
	bne	L0260f0
	cmpi.w	#$000a,(L047f66)
	bcs	L0260f0
	subi.w	#$000a,(L047f66)
	jsr	(L0135da)
	move.w	#$0030,(L047fae)
	moveq.l	#$1f,d0
	trap	#0
	bra	L026302
L026256:
	tst.w	(L047f66)
	beq	L0260f0
	lea.l	($0060,a0),a1
	tst.w	(a1)
	beq	L026290
	cmpi.b	#$01,($002e,a0)
	bcs	L0260f0
	lea.l	($0090,a0),a1
	tst.w	(a1)
	beq	L026290
	cmpi.b	#$02,($002e,a0)
	bcs	L0260f0
	lea.l	($00c0,a0),a1
	tst.w	(a1)
	beq	L026290
	bra	L0260f0
L026290:
	move.b	#$02,($001c,a0)
	move.w	#$0000,($0022,a0)
	cmpi.b	#$05,($001d,a0)
	beq	L0262b2
	move.w	#$0000,($0020,a0)
	andi.w	#$8000,($0018,a0)
	rts

L0262b2:
	move.b	($001e,a0),d0
	cmpi.b	#$06,d0
	bne	L0262ce
	tst.b	($0019,a0)
	bne	L0262c8
	move.w	#$0005,d0
	bra	L0262e8
L0262c8:
	move.w	#$0006,d0
	bra	L0262e8
L0262ce:
	cmpi.b	#$0e,d0
	bne	L0262e6
	tst.b	($0019,a0)
	bne	L0262e0
	move.w	#$0007,d0
	bra	L0262e8
L0262e0:
	move.w	#$0008,d0
	bra	L0262e8
L0262e6:
	rts

L0262e8:
	move.w	d0,($0020,a0)
	asl.w	#4,d0
	lea.l	(L026a52),a1
	move.l	(a1,d0.w),($0014,a0)
	andi.w	#$8000,($0018,a0)
	rts

L026302:
	rts

L026304:
	btst.b	#$00,(L0481e2)
	bne	L02631c
	btst.b	#$01,(L0481e2)
	bne	L026462
	rts

L02631c:
	bsr	L025620
	add.w	($0006,a5),d2
	addi.w	#$0010,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L026380
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L026380
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L026380
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L026380
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L026380
	rts

L026380:
	move.l	#L06c48a,($0014,a0)
	move.w	d1,d6
	addi.w	#$0008.w,d6
	move.w	d2,d7
	subi.w	#$0008.w,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0263b6
	move.w	d1,d6
	subi.w	#$0008.w,d6
	move.w	d2,d7
	subi.w	#$0008.w,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L02640c
	rts

L0263b6:
	tst.w	(L04735a)
	bmi	L0263c6
	sub.w	(L047f7a),d1
	bra	L0263d2
L0263c6:
	move.w	(L0470ee),d0
	andi.w	#$01ff,d0
	sub.w	d0,d1
L0263d2:
	sub.w	($0004,a0),d1
	tst.w	($0018,a0)
	bmi	L0263e2
	sub.w	($0000.w,a5),d1
	bra	L0263e6
L0263e2:
	add.w	($0000.w,a5),d1
L0263e6:
	cmpi.w	#$fff0,d1
	beq	L02640a
	subq.w	#1,d1
	bpl	L0263fe
	move.w	#$0005,($001c,a0)
	move.b	#$00,($001e,a0)
	rts

L0263fe:
	move.w	#$0005,($001c,a0)
	move.b	#$01,($001e,a0)
L02640a:
	rts

L02640c:
	tst.w	(L04735a)
	bmi	L02641c
	sub.w	(L047f7a),d1
	bra	L026428
L02641c:
	move.w	(L0470ee),d0
	andi.w	#$01ff,d0
	sub.w	d0,d1
L026428:
	sub.w	($0004,a0),d1
	tst.w	($0018,a0)
	bmi	L026438
	sub.w	($0000.w,a5),d1
	bra	L02643c
L026438:
	add.w	($0000.w,a5),d1
L02643c:
	cmpi.w	#$0010,d1
	beq	L026460
	tst.w	d1
	bpl	L026454
	move.w	#$0005,($001c,a0)
	move.b	#$02,($001e,a0)
	rts

L026454:
	move.w	#$0005,($001c,a0)
	move.b	#$03,($001e,a0)
L026460:
	rts

L026462:
	bsr	L025620
	add.w	($0006,a5),d2
	addq.w	#1,d2
	addi.w	#$0010,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0264d4
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0264d4
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0264d4
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0264d4
	subi.w	#$0008.w,d1
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0264d4
L0264c6:
	move.w	#$0001,($001c,a0)
	move.w	#$0000,($001e,a0)
	rts

L0264d4:
	move.l	#L06c48a,($0014,a0)
	move.w	d1,d6
	addi.w	#$0008.w,d6
	move.w	d2,d7
	addi.w	#$0008.w,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L02650a
	move.w	d1,d6
	subi.w	#$0008.w,d6
	move.w	d2,d7
	addi.w	#$0008.w,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L026560
	bra	L0264c6
L02650a:
	tst.w	(L04735a)
	bmi	L02651a
	sub.w	(L047f7a),d1
	bra	L026526
L02651a:
	move.w	(L0470ee),d0
	andi.w	#$01ff,d0
	sub.w	d0,d1
L026526:
	sub.w	($0004,a0),d1
	tst.w	($0018,a0)
	bmi	L026536
	sub.w	($0000.w,a5),d1
	bra	L02653a
L026536:
	add.w	($0000.w,a5),d1
L02653a:
	cmpi.w	#$fff0,d1
	beq	L0264c6
	subq.w	#1,d1
	bpl	L026552
	move.w	#$0005,($001c,a0)
	move.b	#$08,($001e,a0)
	rts

L026552:
	move.w	#$0005,($001c,a0)
	move.b	#$09,($001e,a0)
	rts

L026560:
	tst.w	(L04735a)
	bmi	L026570
	sub.w	(L047f7a),d1
	bra	L02657c
L026570:
	move.w	(L0470ee),d0
	andi.w	#$01ff,d0
	sub.w	d0,d1
L02657c:
	sub.w	($0004,a0),d1
	tst.w	($0018,a0)
	bmi	L02658c
	sub.w	($0000.w,a5),d1
	bra	L026590
L02658c:
	add.w	($0000.w,a5),d1
L026590:
	cmpi.w	#$0010,d1
	beq	L0264c6
	tst.w	d1
	bpl	L0265aa
	move.w	#$0005,($001c,a0)
	move.b	#$0a,($001e,a0)
	rts

L0265aa:
	move.w	#$0005,($001c,a0)
	move.b	#$0b,($001e,a0)
	rts

L0265b8:
	subi.w	#$0010,($0008,a0)
	btst.b	#$04,(L0481e4)
	beq	L026620
	moveq.l	#$00,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L026636
	moveq.l	#$01,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L026636
	moveq.l	#$07,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L026636
	move.b	#$03,($001d,a0)
	move.w	#$0000,($001e,a0)
	subq.w	#8,($0008,a0)
	btst.b	#$03,(L0481e2)
	bne	L026612
	btst.b	#$02,(L0481e2)
	bne	L02661a
	move.b	#$00,($001e,a0)
	bra	L026620
L026612:
	move.b	#$01,($001e,a0)
	bra	L026620
L02661a:
	move.b	#$02,($001e,a0)
L026620:
	addi.w	#$0010,($0008,a0)
	move.w	($0008,a0),d0
	add.w	(L0470f2),d0
	move.w	d0,($0026,a0)
	rts

L026636:
	bsr	L027b40
	bra	L026620
L02663c:
	cmpi.b	#$02,($001c,a0)
	beq	L026b4e
	move.w	($0022,a0),d0
	addq.w	#1,d0
	move.w	d0,($0022,a0)
	cmpi.b	#$04,($0019,a0)
	beq	L02665e
	cmpi.w	#$0003,d0
	bra	L026662
L02665e:
	cmpi.w	#$0008,d0
L026662:
	bne	L0269be
	clr.w	($0022,a0)
	addq.w	#1,($0018,a0)
	cmpi.b	#$04,($0019,a0)
	bne	L02667e
	moveq.l	#$01,d0
	trap	#0
	bsr	L02672e
L02667e:
	cmpi.b	#$05,($0019,a0)
	bne	L0269be
	move.w	#$0000,($0030,a0)
	move.w	#$0000,($0032,a0)
	move.b	#$00,($001c,a0)
	subq.w	#1,($0018,a0)
	move.b	($0021,a0),d0
	cmpi.b	#$05,d0
	beq	L0266ee
	cmpi.b	#$07,d0
	beq	L0266fe
	cmpi.b	#$06,d0
	beq	L02670e
	cmpi.b	#$08,d0
	beq	L02671e
	cmpi.b	#$00,d0
	beq	L0266de
	cmpi.b	#$01,d0
	beq	L0266ce
	cmpi.b	#$04,d0
	beq	L0266de
	rts

L0266ce:
	move.l	#L06c4ca,($0014,a0)
	move.b	#$01,($0019,a0)
	rts

L0266de:
	move.l	#L06c8e2,($0014,a0)
	move.b	#$00,($0019,a0)
	rts

L0266ee:
	move.l	#L06c4da,($0014,a0)
	move.b	#$00,($0019,a0)
	rts

L0266fe:
	move.l	#L06c51a,($0014,a0)
	move.b	#$00,($0019,a0)
	rts

L02670e:
	move.l	#L06c4da,($0014,a0)
	move.b	#$04,($0019,a0)
	rts

L02671e:
	move.l	#L06c51a,($0014,a0)
	move.b	#$04,($0019,a0)
	rts

L02672e:
	move.b	($002d,a0),d7
	andi.w	#$00ff,d7
	beq	L026796
	add.w	d7,d7
	addq.w	#6,d7
	move.w	#$0001,(L0481c0)
	move.w	#$0008,(L0481c2)
	cmpi.b	#$01,($0021,a0)
	beq	L026798
	cmpi.b	#$02,($0021,a0)
	beq	L0267c0
	cmpi.b	#$03,($0021,a0)
	beq	L0267ea
	cmpi.b	#$05,($0021,a0)
	bcc	L026812
	clr.w	(L0481c4)
	move.w	#$fffc,(L0481c6)
	move.w	d7,d0
	tst.w	($0018,a0)
	bmi	L026788
	neg.w	d0
L026788:
	move.w	d0,(L0481c8)
	move.w	#$0000,(L0481ca)
L026796:
	rts

L026798:
	clr.w	(L0481c4)
	move.w	#$0006,(L0481c6)
	move.w	d7,d0
	tst.w	($0018,a0)
	bmi	L0267b0
	neg.w	d0
L0267b0:
	move.w	d0,(L0481c8)
	move.w	#$0000,(L0481ca)
	rts

L0267c0:
	subi.w	#$0003.w,d7
	move.w	d7,(L0481ca)
	addi.w	#$0001.w,d7
	tst.w	($0018,a0)
	bmi	L0267d6
	neg.w	d7
L0267d6:
	move.w	d7,(L0481c8)
	clr.w	(L0481c4)
	clr.w	(L0481c6)
	rts

L0267ea:
	move.w	#$0004,d0
	tst.w	($0018,a0)
	bmi	L0267f6
	neg.w	d0
L0267f6:
	move.w	d0,(L0481c4)
	clr.w	(L0481c6)
	move.w	#$0000,(L0481c8)
	move.w	d7,(L0481ca)
	rts

L026812:
	clr.w	(L0481c4)
	move.w	#$fff6,(L0481c6)
	move.w	d7,d0
	tst.w	($0018,a0)
	bmi	L02682a
	neg.w	d0
L02682a:
	move.w	d0,(L0481c8)
	move.w	#$0000,(L0481ca)
	rts

L02683a:
	cmpi.w	#$0001,(L0481c0)
	beq	L026852
	bcc	L026960
	rts

L02684a:
	clr.w	(L0481c0)
	rts

L026852:
	subq.w	#1,(L0481c2)
	beq	L02684a
	move.w	(L0481c4),d0
	add.w	(L0481c8),d0
	move.w	d0,(L0481c4)
	add.w	(L0473f4),d0
	move.w	(L0481c6),d1
	add.w	(L0481ca),d1
	move.w	d1,(L0481c6)
	add.w	(L0473f8),d1
	move.w	d0,d3
	move.w	d1,d4
	jsr	(L0256ce)
	cmpi.b	#$01,d0
	beq	L0268e4
	subq.w	#1,(L0481c2)
	beq	L02684a
	move.w	(L0481c4),d0
	add.w	(L0481c8),d0
	move.w	d0,(L0481c4)
	add.w	(L0473f4),d0
	move.w	(L0481c6),d1
	add.w	(L0481ca),d1
	move.w	d1,(L0481c6)
	add.w	(L0473f8),d1
	move.w	d0,d3
	move.w	d1,d4
	jsr	(L0256ce)
	cmpi.b	#$01,d0
	beq	L0268e4
	rts

L0268e4:
	move.w	#$0002,(L0481c0)
	move.w	#$0008,(L0481c2)
	lea.l	(L0481d4),a1
	bsr	L02690e
	lea.l	(L0481cc),a1
	bsr	L02690e
	lea.l	(L0481c4),a1
	bsr	L02690e
	rts

L02690e:
	move.w	d3,($0000.w,a1)
	move.w	d4,($0002,a1)
	move.w	(L0481c8),d1
	beq	L02692c
	move.b	(L0481c8),d1
	andi.w	#$0002,d1
	subq.w	#1,d1
	bra	L02693c
L02692c:
	jsr	(L01024e)
	andi.w	#$0003,d0
	subi.w	#$0002.w,d0
	move.w	d0,d1
L02693c:
	move.w	d1,($0004,a1)
	move.w	(L0481ca),d1
	asr.w	#2,d1
	neg.w	d1
	jsr	(L01024e)
	andi.w	#$0003,d0
	addi.w	#$0001.w,d0
	sub.w	d0,d1
	move.w	d1,($0006,a1)
	rts

L026960:
	move.w	(L0481c2),d7
	subq.w	#1,d7
	move.w	d7,(L0481c2)
	beq	L02684a
	andi.w	#$0001,d7
	lea.l	(L0481c4),a1
	bsr	L026990
	lea.l	(L0481cc),a1
	bsr	L026990
	lea.l	(L0481d4),a1
	bsr	L026990
	rts

L026990:
	add.w	d7,($0006,a1)
	move.w	($0000.w,a1),d1
	add.w	($0004,a1),d1
	move.w	d1,($0000.w,a1)
	move.w	($0002,a1),d2
	add.w	($0006,a1),d2
	move.w	d2,($0002,a1)
	move.w	#$000c,d0
	lea.l	(L06e3b2),a5
	jsr	(L025426)
	rts

L0269be:
	lea.l	(L026a52),a1
	move.w	($0020,a0),d0
	asl.w	#4,d0
	move.l	(a1,d0.w),($0014,a0)
	tst.b	($0019,a0)
	beq	L026a46
	move.b	($002d,a0),d1
	andi.w	#$0003,d1
	asl.w	#2,d1
	add.w	d0,d1
	movea.l	($04,a1,d1.w),a5
	move.l	a5,($0044,a0)
	move.w	($0018,a0),d1
	subq.b	#1,d1
	move.w	d1,($0048,a0)
	move.l	($0004,a0),($0034,a0)
	move.l	($0008,a0),($0038,a0)
	move.w	#$0002,($0030,a0)
	tst.b	($002d,a0)
	bne	L026a14
	move.w	#$0003,($004a,a0)
	bra	L026a1a
L026a14:
	move.w	#$0004,($004a,a0)
L026a1a:
	lsr.w	#2,d0
	add.b	($0019,a0),d0
	cmpi.b	#$01,($002d,a0)
	beq	L026a32
	bcc	L026a3a
	lea.l	(L026ae2),a1
	bra	L026a40
L026a32:
	lea.l	(L026b06),a1
	bra	L026a40
L026a3a:
	lea.l	(L026b2a),a1
L026a40:
	move.b	(-$01,a1,d0.w),($0025,a0)
L026a46:
	cmpi.b	#$03,($001d,a0)
	beq	L0271b2
	rts

L026a52:
	.dc.l	L06c5a2
	.dc.l	L06c6e2
	.dc.l	L06c8ea
	.dc.l	L06c7e2
	.dc.l	L06c5ca
	.dc.l	L06c702
	.dc.l	L06c90a
	.dc.l	L06c802
	.dc.l	L06c692
	.dc.l	L06c7a2
	.dc.l	L06c9aa
	.dc.l	L06c8a2
	.dc.l	L06c6ba
	.dc.l	L06c7c2
	.dc.l	L06c9ca
	.dc.l	L06c8c2
	.dc.l	L06c5a2
	.dc.l	L06c6e2
	.dc.l	L06c8ea
	.dc.l	L06c7e2
	.dc.l	L06c5f2
	.dc.l	L06c722
	.dc.l	L06c92a
	.dc.l	L06c822
	.dc.l	L06c61a
	.dc.l	L06c742
	.dc.l	L06c94a
	.dc.l	L06c842
	.dc.l	L06c66a
	.dc.l	L06c762
	.dc.l	L06c96a
	.dc.l	L06c862
	.dc.l	L06c642
	.dc.l	L06c782
	.dc.l	L06c98a
	.dc.l	L06c882
L026ae2:
	.dc.b	$00,$03,$07,$0a,$00,$03,$07,$0a
	.dc.b	$00,$0d,$16,$19,$00,$0d,$10,$13
	.dc.b	$00,$03,$07,$0a,$00,$03,$07,$0a
	.dc.b	$00,$03,$07,$0a,$00,$03,$07,$0a
	.dc.b	$00,$03,$07,$0a
L026b06:
	.dc.b	$1c,$1f,$23,$26,$1c,$1f,$23,$26
	.dc.b	$1c,$29,$32,$35,$1c,$29,$2c,$2f
	.dc.b	$1c,$1f,$23,$26,$1c,$1f,$23,$26
	.dc.b	$1c,$1f,$23,$26,$1c,$1f,$23,$26
	.dc.b	$1c,$1f,$23,$26
L026b2a:
	.dc.b	'8;?C8;?C8FQU8FJN8;?C8;?C8;?C8;?C8;?C'

L026b4e:
	move.w	($0022,a0),d0
	addq.w	#1,d0
	move.w	d0,($0022,a0)
	cmpi.b	#$04,($0019,a0)
	beq	L026b66
	cmpi.w	#$0003,d0
	bra	L026b6a
L026b66:
	cmpi.w	#$0005,d0
L026b6a:
	bne	L026d1e
	clr.w	($0022,a0)
	addq.w	#1,($0018,a0)
	cmpi.b	#$04,($0019,a0)
	beq	L026b94
	cmpi.b	#$05,($0019,a0)
	bne	L026d1e
	move.b	#$00,($001c,a0)
	subq.w	#1,($0018,a0)
	rts

L026b94:
	lea.l	($0060,a0),a1
	tst.w	(a1)
	beq	L026bc4
	cmpi.b	#$01,($002e,a0)
	bcs	L026d1e
	lea.l	($0090,a0),a1
	tst.w	(a1)
	beq	L026bc4
	cmpi.b	#$02,($002e,a0)
	bcs	L026d1e
	lea.l	($00c0,a0),a1
	tst.w	(a1)
	beq	L026bc4
	bra	L026d1e
L026bc4:
	subq.w	#1,(L047f66)
	jsr	(L0135da)
	move.w	#$0000,($0002,a1)
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),d0
	subi.l	#$00080000,d0
	move.l	d0,($0008,a1)
	move.w	#$0000,($001c,a1)
	move.w	#$0000,($001e,a1)
	move.w	#$0000,($0020,a1)
	move.w	#$0000,($0022,a1)
	move.l	#$00000000,($0010,a1)
	move.l	#L06e2e2,($0014,a1)
	move.w	($002e,a0),d0
	andi.w	#$00ff,d0
	move.w	d0,($0000.w,a1)
	subi.w	#$0003.w,d0
	add.w	d0,d0
	move.w	(L026c2c,pc,d0.w),d0
	jmp	(L026c2c,pc,d0.w)

L026c2c:
	.dc.w	L026c38-L026c2c
	.dc.w	L026c6a-L026c2c
	.dc.w	L026c98-L026c2c
	.dc.w	L026cd6-L026c2c
	.dc.w	L026d1e-L026c2c
	.dc.w	L026d1e-L026c2c

L026c38:
	moveq.l	#$35,d0
	trap	#0
	move.w	#$0003,($001a,a1)
	tst.w	($0018,a0)
	bmi	L026c58
	move.l	#$fffa0000,($000c,a1)
	move.w	#$000b,($0018,a1)
	bra	L026c66
L026c58:
	move.l	#$00060000,($000c,a1)
	move.w	#$800b,($0018,a1)
L026c66:
	bra	L026d1e
L026c6a:
	move.w	#$00ff,($0024,a1)
	move.w	#$0004,($001a,a1)
	tst.w	($0018,a0)
	bmi	L026c86
	move.l	#$fffe0000,($000c,a1)
	bra	L026c8e
L026c86:
	move.l	#$00020000,($000c,a1)
L026c8e:
	move.w	#$0008,($0018,a1)
	bra	L026d1e
L026c98:
	moveq.l	#$3b,d0
	trap	#0
	move.w	#$0004,($001a,a1)
	tst.w	($0018,a0)
	bmi	L026cb8
	move.l	#$fffe0000,($000c,a1)
	subi.w	#$0004.w,($0004,a1)
	bra	L026cc6
L026cb8:
	move.l	#$00020000,($000c,a1)
	addi.w	#$0004.w,($0004,a1)
L026cc6:
	move.w	#$0002,($0018,a1)
	move.l	#$fff88000,($0010,a1)
	bra	L026d1e
L026cd6:
	move.w	#$4000,($0002,a1)
	move.w	#$0003,($001a,a1)
	tst.w	($0018,a0)
	bmi	L026cfe
	move.l	#$fffe0000,($000c,a1)
	subi.w	#$0004.w,($0004,a1)
	move.w	#$0000,($0018,a1)
	bra	L026d12
L026cfe:
	move.l	#$00020000,($000c,a1)
	addi.w	#$0004.w,($0004,a1)
	move.w	#$8000,($0018,a1)
L026d12:
	move.l	#$fffd0000,($0010,a1)
	bra.w	L026d1e
L026d1e:
	move.w	($0020,a0),d0
	asl.w	#4,d0
	lea.l	(L026a52),a1
	move.l	(a1,d0.w),($0014,a0)
	cmpi.b	#$03,($001d,a0)
	beq	L026d3a
	rts

L026d3a:
	bra	L0271b2
L026d3e:
	tst.w	(L047fa2)
	beq	L026d6c
	cmpi.w	#$003d,($0000.w,a0)
	beq	L026d6c
	move.w	#$0008,($001c,a0)
	move.w	#$0000,($001e,a0)
	move.l	#L06c582,($0014,a0)
	andi.w	#$8000,($0018,a0)
	bra	L0278e0
L026d6c:
	addq.w	#1,($0008,a0)
	tst.w	($0002,a0)
	bmi	L026d98
	moveq.l	#$05,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L026d98
	moveq.l	#$04,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L026d98
	moveq.l	#$03,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L026d98
	bra	L02711e
L026d98:
	subq.w	#1,($0008,a0)
	tst.l	(L047fa6)
	beq	L026e36
	bmi	L026db6
	subi.l	#$00000400,(L047fa6)
	bvs	L026dc4
	bra	L026dca
L026db6:
	addi.l	#$00000400,(L047fa6)
	bvs	L026dc4
	bra	L026dca
L026dc4:
	clr.l	(L047fa6)
L026dca:
	move.l	(L047fa6),d0
	add.l	d0,($0004,a0)
	bsr	L025620
	tst.l	(L047fa6)
	bmi	L026de6
	add.w	($0004,a5),d1
	bra	L026dea
L026de6:
	sub.w	($0004,a5),d1
L026dea:
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L026e2c
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0010,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L026e2c
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0020,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L026e2c
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0028,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L026e2c
	bra	L026e36
L026e2c:
	move.l	(L047fa6),d0
	sub.l	d0,($0004,a0)
L026e36:
	tst.b	($001c,a0)
	bne	L02663c
	move.b	(L0481e2),d0
	andi.b	#$0c,d0
	beq	L026e74
	move.w	#$0002,($001c,a0)
	move.l	#L06c48a,($0014,a0)
	btst.l	#$03,d0
	beq	L026e64
	ori.w	#$8000,($0018,a0)
L026e64:
	btst.l	#$02,d0
	beq	L026e70
	andi.w	#$7fff,($0018,a0)
L026e70:
	bsr	L027b1a
L026e74:
	jsr	(L026304)
	tst.b	($001d,a0)
	bne	L026e8c
	jsr	(L0260ca)
	jsr	(L0265b8)
L026e8c:
	tst.b	($001d,a0)
	bne	L026e9a
	move.l	#L06c8e2,($0014,a0)
L026e9a:
	move.b	#$00,($0019,a0)
	rts

L026ea2:
	move.l	#$00000000,(L047fa6)
	addq.w	#1,($0008,a0)
	tst.w	($0002,a0)
	bmi	L026ed8
	moveq.l	#$05,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L026ed8
	moveq.l	#$04,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L026ed8
	moveq.l	#$03,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L026ed8
	bra	L02711e
L026ed8:
	subq.w	#1,($0008,a0)
	cmpi.w	#$0003,($001e,a0)
	bcs	L026f48
	cmpi.w	#$0004,($001e,a0)
	bcc	L026f60
	tst.b	($001c,a0)
	bne	L02663c
	bsr	L0260ca
	tst.b	($001c,a0)
	bne	L026f46
	bsr	L0265b8
	cmpi.b	#$03,($001d,a0)
	beq	L026f18
	btst.b	#$01,(L0481e2)
	bne	L026f18
	addq.w	#1,($001e,a0)
L026f18:
	btst.b	#$03,(L0481e2)
	beq	L026f28
	ori.w	#$8000,($0018,a0)
L026f28:
	btst.b	#$02,(L0481e2)
	beq	L026f38
	andi.w	#$7fff,($0018,a0)
L026f38:
	move.l	#L06c4ca,($0014,a0)
	move.b	#$01,($0019,a0)
L026f46:
	rts

L026f48:
	bsr	L027b1a
	addq.w	#1,($001e,a0)
	move.l	#L06c4ca,($0014,a0)
	move.b	#$00,($0019,a0)
	rts

L026f60:
	bsr	L027b1a
	addq.w	#1,($001e,a0)
	cmpi.w	#$0006,($001e,a0)
	bne	L026f7a
	move.w	#$0000,($001c,a0)
	clr.w	($001e,a0)
L026f7a:
	move.l	#L06c4ca,($0014,a0)
	move.b	#$00,($0019,a0)
	rts

L026f8a:
	bsr	L026304
	bsr	L0265b8
	cmpi.b	#$02,($001d,a0)
	bne	L026fb2
	move.b	(L0481e2),d0
	btst.l	#$03,d0
	bne	L026fee
	btst.l	#$02,d0
	bne	L027002
	move.w	#$0000,($001c,a0)
L026fb2:
	bsr	L026fbc
	bsr	L027b2c
	bra	L026e8c
L026fbc:
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$0008,d0
	bne	L026fec
	tst.w	($0018,a0)
	bmi	L026fe2
	move.l	#$ffff0000,(L047fa6)
	rts

L026fe2:
	move.l	#$00010000,(L047fa6)
L026fec:
	rts

L026fee:
	bsr	L027b58
	bsr	L027016
	cmpi.b	#$03,($001d,a0)
	beq	L026e8c
	bra	L0270f6
L027002:
	bsr	L027b58
	bsr	L027086
	cmpi.b	#$03,($001d,a0)
	beq	L026e8c
	bra	L0270f6
L027016:
	ori.w	#$8000,($0018,a0)
L02701c:
	addq.w	#1,($0004,a0)
	bsr	L025620
	add.w	($0004,a5),d1
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L02706a
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0010,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L02706a
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0020,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L02706a
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0028,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L02706a
	rts

L02706a:
	subq.w	#1,($0004,a0)
	cmpi.b	#$03,($001d,a0)
	bne	L027084
	cmpi.b	#$01,($001e,a0)
	bne	L027084
	move.b	#$00,($001e,a0)
L027084:
	rts

L027086:
	andi.w	#$7fff,($0018,a0)
L02708c:
	subq.w	#1,($0004,a0)
	bsr	L025620
	sub.w	($0004,a5),d1
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L0270da
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0010,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L0270da
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0020,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L0270da
	move.w	d1,d6
	move.w	d2,d7
	subi.w	#$0028,d7
	bsr	L025904
	subq.b	#1,d0
	beq	L0270da
	rts

L0270da:
	addq.w	#1,($0004,a0)
	cmpi.b	#$03,($001d,a0)
	bne	L0270f4
	cmpi.b	#$02,($001e,a0)
	bne	L0270f4
	move.b	#$00,($001e,a0)
L0270f4:
	rts

L0270f6:
	addq.w	#1,($0008,a0)
	tst.w	($0002,a0)
	bmi	L027160
	moveq.l	#$05,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L027160
	moveq.l	#$04,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L027160
	moveq.l	#$03,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L027160
L02711e:
	move.w	#$0004,($001c,a0)
	move.w	($0008,a0),d0
	add.w	(L0470f2),d0
	move.w	d0,($0026,a0)
	move.w	#$0048,($001e,a0)
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$0007,d0
	bne	L0271a4
	tst.w	($0018,a0)
	bpl	L027158
	addi.w	#$0001.w,($0004,a0)
	bra	L0271a4
L027158:
	subi.w	#$0001.w,($0004,a0)
	bra	L0271a4
L027160:
	subq.w	#1,($0008,a0)
	move.b	($001f,a0),d0
	addq.b	#1,d0
	move.b	d0,($001f,a0)
	cmpi.b	#$04,d0
	bne	L02718a
	clr.b	($001f,a0)
	move.b	($0019,a0),d0
	addq.b	#1,d0
	cmpi.b	#$08,d0
	bne	L027186
	clr.b	d0
L027186:
	move.b	d0,($0019,a0)
L02718a:
	cmpi.b	#$02,($001d,a0)
	bne	L0271a4
	jsr	(L0260ca)
	cmpi.b	#$02,($001d,a0)
	beq	L0271a4
	bsr	L026fbc
L0271a4:
	rts

L0271a6:
	tst.b	($001c,a0)
	bne	L02663c
	bsr	L0260ca
L0271b2:
	move.b	($001e,a0),d0
	subq.b	#1,d0
	beq	L0271d8
	subq.b	#1,d0
	beq	L0271f4
	tst.b	($001c,a0)
	bne	L027212
	move.b	(L0481e2),d0
	btst.l	#$03,d0
	bne	L0271e8
	btst.l	#$02,d0
	bne	L027204
	bra	L027212
L0271d8:
	tst.b	($001c,a0)
	bne	L0271e8
	btst.b	#$02,(L0481e2)
	bne	L027204
L0271e8:
	move.b	#$01,($001e,a0)
	bsr	L027016
	bra	L027212
L0271f4:
	tst.b	($001c,a0)
	bne	L027204
	btst.b	#$03,(L0481e2)
	bne	L0271e8
L027204:
	move.b	#$02,($001e,a0)
	bsr	L027086
	bra.w	L027212
L027212:
	moveq.l	#$00,d0
	bsr	L0257f2
	subq.b	#1,d0
	bne	L027230
	move.b	($001f,a0),d0
	ext.w	d0
	lea.l	(L025f1a),a1
	tst.w	(a1,d0.w)
	bmi	L02725e
	bra	L02723c
L027230:
	move.b	($001f,a0),d0
	ext.w	d0
	lea.l	(L025f1a),a1
L02723c:
	move.w	(a1,d0.w),d0
	ext.l	d0
	asl.l	#5,d0
	bpl	L02724e
	bclr.b	#$07,($0002,a0)
	bra	L027256
L02724e:
	tst.w	($0002,a0)
	bpl	L027256
	moveq.l	#$00,d0
L027256:
	add.l	d0,($0008,a0)
	add.l	d0,($0038,a0)
L02725e:
	move.b	($001f,a0),d0
	cmpi.b	#$48,d0
	beq	L02726e
	addq.b	#2,d0
	move.b	d0,($001f,a0)
L02726e:
	cmpi.b	#$07,($001d,a0)
	beq	L0272a0
	tst.b	($001c,a0)
	bne	L0272a0
	move.l	#L06c55a,($0014,a0)
	move.b	#$00,($0019,a0)
	move.b	($001f,a0),d0
	cmpi.b	#$09,d0
	bcs	L0272a0
	cmpi.b	#$3f,d0
	bcc	L0272a0
	move.b	#$01,($0019,a0)
L0272a0:
	tst.w	($0002,a0)
	bmi	L0272c6
	moveq.l	#$05,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L0272cc
	moveq.l	#$04,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L0272cc
	moveq.l	#$03,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L0272cc
	rts

L0272c6:
	bra	L0272ea
L0272c8:
	subq.w	#1,($0008,a0)
L0272cc:
	moveq.l	#$05,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L0272c8
	moveq.l	#$04,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L0272c8
	moveq.l	#$03,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L0272c8
L0272ea:
	clr.w	($000a,a0)
	clr.l	(L047fa6)
	move.w	($0020,a0),d0
	cmpi.w	#$0002,d0
	bcs	L027310
	cmpi.w	#$0004,d0
	bcc	L027310
	clr.w	($0030,a0)
	clr.w	($0032,a0)
	clr.b	($001c,a0)
L027310:
	cmpi.b	#$07,($001d,a0)
	beq	L027384
	move.w	($0008,a0),d0
	add.w	(L0470f2),d0
	sub.w	($0026,a0),d0
	cmpi.w	#$0040,d0
	bge	L027364
	clr.b	($001d,a0)
	clr.w	($001e,a0)
	cmpi.b	#$01,($001c,a0)
	bne	L02734c
	move.w	($0020,a0),d0
	cmpi.w	#$0002,d0
	bcs	L027356
	cmpi.w	#$0004,d0
	bcc	L027356
L02734c:
	move.l	#L06c48a,($0014,a0)
	rts

L027356:
	move.l	($0004,a0),($0034,a0)
	move.l	($0008,a0),($0038,a0)
	rts

L027364:
	moveq.l	#$05,d0
	trap	#0
	move.w	#$0006,($001c,a0)
	clr.w	($0030,a0)
	clr.w	($0032,a0)
	clr.w	($001e,a0)
	move.l	#L06c48a,($0014,a0)
	rts

L027384:
	addq.w	#1,($0020,a0)
	clr.w	($001e,a0)
	rts

L02738e:
	bra	L027212
L027392:
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	add.w	d0,d0
	move.w	(L0273a2,pc,d0.w),d0
	jmp	(L0273a2,pc,d0.w)

L0273a2:
	.dc.w	L0273c2-L0273a2
	.dc.w	L027404-L0273a2
	.dc.w	L027446-L0273a2
	.dc.w	L027488-L0273a2
	.dc.w	L0274ca-L0273a2
	.dc.w	L0274f8-L0273a2
	.dc.w	L027562-L0273a2
L0273b0:
	.dc.b	$00,$00,$02,$92,$02,$d6,$03,$1a
	.dc.b	$03,$5e,$03,$a2,$03,$d0,$04,$3a
	.dc.b	$00,$00

L0273c2:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L0273fc
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0273fc
	move.b	#$04,($001e,a0)
	ori.w	#$8000,($0018,a0)
	bra	L026e8c
L0273fc:
	bsr	L027086
	bra	L0270f6
L027404:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L02743e
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L02743e
	move.b	#$04,($001e,a0)
	ori.w	#$8000,($0018,a0)
	bra	L026e8c
L02743e:
	bsr	L027016
	bra	L0270f6
L027446:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L027480
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L027480
	move.b	#$04,($001e,a0)
	andi.w	#$7fff,($0018,a0)
	bra	L026e8c
L027480:
	bsr	L027086
	bra	L0270f6
L027488:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L0274c2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0274c2
	move.b	#$04,($001e,a0)
	andi.w	#$7fff,($0018,a0)
	bra	L026e8c
L0274c2:
	bsr	L027016
	bra	L0270f6
L0274ca:
	btst.b	#$00,(L0481e2)
	bne	L0274de
	move.w	#$0000,($001c,a0)
	bra	L026e8c
L0274de:
	move.l	#L06c4da,($0014,a0)
	move.b	#$00,($0019,a0)
	move.b	#$00,($001f,a0)
	addq.b	#1,($001e,a0)
	rts

L0274f8:
	bsr	L027b2c
	moveq.l	#$00,d0
	move.b	($001f,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L027522,pc,d0.w),a1
	bsr	L0278b0
	addq.b	#1,($001f,a0)
	move.b	($001f,a0),d0
	cmpi.b	#$10,d0
	bne	L027520
	addq.b	#1,($001e,a0)
L027520:
	rts

L027522:
	.dc.b	$01,$fe,$fe,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$01,$fe,$fe,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$01,$fe,$fe,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$01,$fe,$fe,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00

L027562:
	tst.b	($001c,a0)
	bne	L02663c
	bsr	L0260ca
	tst.b	($001c,a0)
	bne	L0275ec
	move.l	#L06c4da,($0014,a0)
	tst.w	($0018,a0)
	bpl	L02759e
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	addq.w	#4,d6
	subq.w	#3,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L02760c
	bra	L0275ba
L02759e:
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	subq.w	#8,d6
	move.w	d2,d7
	addq.w	#4,d6
	subq.w	#3,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L02760c
L0275ba:
	move.b	(L0481e2),d0
	btst.l	#$00,d0
	bne	L027626
	btst.l	#$01,d0
	bne	L0275ee
	tst.w	($0018,a0)
	bmi	L0275e0
	btst.l	#$02,d0
	bne	L027626
	btst.l	#$03,d0
	bne	L0275ee
	bra	L0275ec
L0275e0:
	btst.l	#$03,d0
	bne	L027626
	btst.l	#$02,d0
	bne	L0275ee
L0275ec:
	rts

L0275ee:
	move.l	#L06c51a,($0014,a0)
	eori.w	#$8000,($0018,a0)
	move.b	#$00,($001f,a0)
	move.b	#$0d,($001e,a0)
	bra	L027772
L02760c:
	clr.l	(L047fa6)
	bsr	L027b58
	move.w	#$0000,($001c,a0)
	move.w	#$0000,($001e,a0)
	bra	L026e8c
L027626:
	move.b	#$00,($001f,a0)
	subq.b	#1,($001e,a0)
	bra	L0274f8
L027634:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	addq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L027670
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L027670
	move.b	#$0c,($001e,a0)
	ori.w	#$8000,($0018,a0)
	bra	L026e8c
L027670:
	bsr	L027086
	bra	L0270f6
L027678:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	addq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L0276b4
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0276b4
	move.b	#$0c,($001e,a0)
	ori.w	#$8000,($0018,a0)
	bra	L026e8c
L0276b4:
	bsr	L027016
	bra	L0270f6
L0276bc:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	addq.w	#1,d2
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L0276f8
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L0276f8
	move.b	#$0c,($001e,a0)
	andi.w	#$7fff,($0018,a0)
	bra	L026e8c
L0276f8:
	bsr	L027086
	bra	L0270f6
L027700:
	bsr	L027b2c
	bsr	L025620
	add.w	($0006,a5),d2
	addq.w	#1,d2
	move.w	d1,d6
	subq.w	#1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	bne	L02773c
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$02,d0
	beq	L02773c
	move.b	#$0c,($001e,a0)
	andi.w	#$7fff,($0018,a0)
	bra	L026e8c
L02773c:
	bsr	L027016
	bra	L0270f6
L027744:
	btst.b	#$01,(L0481e2)
	bne	L027758
	move.w	#$0000,($001c,a0)
	bra	L026e8c
L027758:
	move.l	#L06c51a,($0014,a0)
	move.b	#$00,($0019,a0)
	move.b	#$00,($001f,a0)
	addq.b	#1,($001e,a0)
	rts

L027772:
	bsr	L027b2c
	moveq.l	#$00,d0
	move.b	($001f,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L02779c,pc,d0.w),a1
	bsr	L0278b0
	addq.b	#1,($001f,a0)
	move.b	($001f,a0),d0
	cmpi.b	#$10,d0
	bne	L02779a
	addq.b	#1,($001e,a0)
L02779a:
	rts

L02779c:
	.dc.b	$01,$fe,$02,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$01,$fe,$02,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$01,$fe,$02,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$01,$fe,$02,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$4a,$28,$00,$1c,$66,$00,$ee,$5a
	.dc.b	$61,$00,$e8,$e4,$4a,$28,$00,$1c
	.dc.b	$66,$7a,$21,$7c
	.dc.l	L06c51a
	.dc.b	$00,$14,$4a,$68,$00,$18,$6a,$1e
	.dc.b	$61,$00,$de,$22,$d4,$6d,$00,$06
	.dc.b	$50,$42,$3c,$01,$3e,$02,$58,$46
	.dc.b	$57,$47,$61,$00,$e0,$f4,$0c,$00
	.dc.b	$00,$02,$66,$70,$60,$1e,$61,$00
	.dc.b	$de,$04,$d4,$6d,$00,$06,$50,$42
	.dc.b	$3c,$01,$51,$46,$3e,$02,$58,$46
	.dc.b	$57,$47,$61,$00,$e0,$d4,$0c,$00
	.dc.b	$00,$02,$66,$50,$10,$39
	.dc.l	L0481e2
	.dc.b	$08,$00,$00,$01,$66,$5e,$08,$00
	.dc.b	$00,$00,$66,$20,$4a,$68,$00,$18
	.dc.b	$6b,$0c,$08,$00,$00,$02,$66,$4c
	.dc.b	$08,$00,$00,$03,$66,$0e,$08,$00
	.dc.b	$00,$03,$66,$40,$08,$00,$00,$02
	.dc.b	$66,$02,$4e,$75,$21,$7c
	.dc.l	L06c4da
	.dc.b	$00,$14,$0a,$68,$80,$00,$00,$18
	.dc.b	$11,$7c,$00,$00,$00,$1f,$11,$7c
	.dc.b	$00,$05,$00,$1e,$60,$00,$fc,$72
	.dc.b	$42,$b9
	.dc.l	L047fa6
	.dc.b	$61,$00,$02,$c8,$31,$7c,$00,$00
	.dc.b	$00,$1c,$31,$7c,$00,$00,$00,$1e
	.dc.b	$60,$00,$f5,$ec,$11,$7c,$00,$00
	.dc.b	$00,$1f,$53,$28,$00,$1e,$60,$00
	.dc.b	$fe,$c4

L0278b0:
	move.b	($0019,a0),d0
	add.b	(a1),d0
	cmpi.b	#$08,d0
	bne	L0278be
	moveq.l	#$00,d0
L0278be:
	move.b	d0,($0019,a0)
	move.b	($0001,a1),d0
	move.b	($0002,a1),d1
	ext.w	d0
	ext.w	d1
	tst.b	($0018,a0)
	bpl	L0278d6
	neg.w	d0
L0278d6:
	add.w	d0,($0004,a0)
	add.w	d1,($0008,a0)
	rts

L0278e0:
	tst.w	($001e,a0)
	bne	L027902
	moveq.l	#$f4,d0
	trap	#0
	moveq.l	#$c6,d0
	trap	#0
	move.w	#$0000,(L0472b0)
	tst.w	(L047f9c)
	beq	L027902
	bsr	L025fda
L027902:
	move.w	($001e,a0),d0
	addq.w	#1,d0
	move.w	d0,($001e,a0)
	tst.b	($001c,a0)
	bne	L027934
	cmpi.w	#$0080,d0
	beq	L02792a
	cmpi.w	#$0040,d0
	bcs	L027922
	move.w	#$003f,d0
L027922:
	lsr.w	#4,d0
	move.b	d0,($0019,a0)
	bra	L027932
L02792a:
	bset.b	#$01,(L047fb3)
L027932:
	rts

L027934:
	cmpi.w	#$0080,d0
	beq	L02793c
	rts

L02793c:
	bset.b	#$01,(L047fb3)
	rts

L027946:
	move.w	($0022,a0),d0
	beq	L0279bc
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	move.w	($0020,a0),d1
	beq	L027974
	subq.w	#1,d1
	beq	L0279ec
	subq.w	#1,d1
	beq	L027a02
	subq.w	#1,d1
	bne	L027974
	move.l	#L06c8e2,($0014,a0)
	bra	L026e8c
L027974:
	tst.w	d0
	beq	L0279d8
	cmpi.w	#$8000,d0
	beq	L0279be
	move.l	#L06c48a,($0014,a0)
	tst.w	($0018,a0)
	bmi	L027992
	subq.w	#1,($0004,a0)
	bra	L027996
L027992:
	addq.w	#1,($0004,a0)
L027996:
	move.b	($001f,a0),d0
	addq.b	#1,d0
	move.b	d0,($001f,a0)
	cmpi.b	#$04,d0
	bne	L0279bc
	clr.b	($001f,a0)
	move.b	($0019,a0),d0
	addq.b	#1,d0
	cmpi.b	#$08,d0
	bne	L0279b8
	clr.b	d0
L0279b8:
	move.b	d0,($0019,a0)
L0279bc:
	rts

L0279be:
	move.w	#$8000,(L0472b0)
	move.l	#L06c8e2,($0014,a0)
	clr.w	($001c,a0)
	clr.w	($0022,a0)
	rts

L0279d8:
	move.w	#$0003,(L047410)
	move.w	#$ffff,(L047412)
	bra	L026e8c
L0279ec:
	cmpi.w	#$8000,d0
	beq	L027a38
	move.l	#L06c4da,($0014,a0)
	lea.l	(L027522),a1
	bra	L027a16
L027a02:
	cmpi.w	#$8000,d0
	beq	L027a52
	move.l	#L06c51a,($0014,a0)
	lea.l	(L02779c),a1
L027a16:
	moveq.l	#$00,d0
	move.b	($001f,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(a1,d0.w),a1
	bsr	L0278b0
	move.b	($001f,a0),d0
	addq.b	#1,d0
	andi.b	#$0f,d0
	move.b	d0,($001f,a0)
	rts

L027a38:
	move.w	#$8000,(L0472b0)
	move.w	#$0005,($001c,a0)
	move.w	#$0600,($001e,a0)
	clr.w	($0022,a0)
	rts

L027a52:
	move.w	#$8000,(L0472b0)
	move.w	#$0005,($001c,a0)
	move.w	#$0e00,($001e,a0)
	clr.w	($0022,a0)
	rts

L027a6c:
	lea.l	(L0473f0),a1
	tst.w	(L047fa4)
	bne	L027ac0
	cmpi.w	#$0108,($001c,a1)
	beq	L027abe
	cmpi.b	#$01,($001c,a1)
	bne	L027aa8
	tst.b	($0019,a1)
	beq	L027aa8
	cmpi.w	#$0006,($0020,a1)
	beq	L027ab0
	cmpi.w	#$0008,($0020,a1)
	beq	L027ab0
	lea.l	($0030,a1),a0
	bsr	L025416
L027aa8:
	movea.l	a1,a0
	bsr	L025416
	bra	L027ac6
L027ab0:
	movea.l	a1,a0
	bsr	L025416
	lea.l	($0030,a1),a0
	bsr	L025416
L027abe:
	bra	L027ac6
L027ac0:
	clr.w	(L047fa4)
L027ac6:
	move.w	(L04741e),d0
	andi.w	#$00ff,d0
	beq	L027b18
	subq.w	#3,d0
	add.w	d0,d0
	lea.l	(L0259e2),a0
	move.w	(a0,d0.w),d0
	lea.l	(L06e2e2),a5
	move.w	#$0092,d1
	move.w	#$0013,d2
	jsr	(L025426)
	move.b	(L04741e),d0
	andi.w	#$00ff,d0
	beq	L027b18
	addi.w	#$000e,d0
	lea.l	(L06e2e2),a5
	move.w	#$00d8,d1
	move.w	#$0013,d2
	jsr	(L025426)
L027b18:
	rts

L027b1a:
	btst.b	#$04,(L0481e4)
	beq	L027b2c
	bclr.b	#$04,(L0481e2)
L027b2c:
	btst.b	#$05,(L0481e4)
	beq	L027b3e
	bclr.b	#$05,(L0481e2)
L027b3e:
	rts

L027b40:
	btst.b	#$04,(L0481e4)
	beq	L027b52
	bclr.b	#$04,(L0481e2)
L027b52:
	rts

L027b54:
	subq.w	#1,($0008,a0)
L027b58:
	moveq.l	#$05,d0
	bsr	L0257f2
	subq.b	#1,d0
	beq	L027b54
	moveq.l	#$04,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L027b54
	moveq.l	#$03,d0
	bsr	L025868
	subq.b	#1,d0
	beq	L027b54
	rts

L027b78:
	bclr.b	#$07,(L0473f2)
	tst.w	(L047f70)
	bne	L027bc2
	move.w	(L047f72),d0
	sub.w	(L0470ee),d0
	move.w	d0,(L047f68)
	move.w	(L047f74),d0
	sub.w	(L0470f2),d0
	move.w	d0,(L047f6c)
	move.w	(L0470ee),(L047f72)
	move.w	(L0470f2),(L047f74)
	rts

L027bc2:
	clr.w	(L047f68)
	clr.w	(L047f6c)
	clr.w	(L047f70)
	move.w	(L0470ee),(L047f72)
	move.w	(L0470f2),(L047f74)
	rts

L027bea:
	cmpi.b	#$09,(L04740d)
	beq	L027c32
	cmpi.w	#$000e,(L0473f4)
	bge	L027c06
	move.w	#$000e,(L0473f4)
L027c06:
	cmpi.w	#$00f1,(L0473f4)
	ble	L027c18
	move.w	#$00f1,(L0473f4)
L027c18:
	cmpi.b	#$08,(L04740d)
	beq	L027c32
	cmpi.w	#$0110,(L0473f8)
	ble	L027c32
	jsr	(L025be6)
L027c32:
	move.w	(L04735a),d0
	andi.w	#$7fff,d0
	add.w	d0,d0
	move.w	(L027c46,pc,d0.w),d0
	jmp	(L027c46,pc,d0.w)

L027c46:
	.dc.w	L027c62-L027c46
	.dc.w	L027cca-L027c46
	.dc.w	L027cce-L027c46
	.dc.w	L027d42-L027c46
	.dc.w	L027f48-L027c46
	.dc.w	L027fb8-L027c46
	.dc.w	L027e90-L027c46
	.dc.w	L027e5e-L027c46
	.dc.w	L02802c-L027c46
	.dc.w	L027f7a-L027c46
	.dc.w	L027d7e-L027c46
	.dc.w	L027c62-L027c46
	.dc.w	L027c68-L027c46
	.dc.w	L027c98-L027c46

L027c62:
	rts

L027c64:
	bra	L028074
L027c68:
	bsr	L028074
	move.l	(L047f7a),d0
	move.l	d0,(L047f7e)
	move.l	(L047f82),d1
	move.l	d1,(L047f86)
	cmp.l	d0,d1
	bpl	L027c90
	move.l	#$00000160,d7
	bra	L027c92
L027c90:
	moveq.l	#$80,d7
L027c92:
	bsr	L029030
	rts

L027c98:
	bsr	L028074
	move.l	(L047f7e),d1
	move.l	d1,(L047f86)
	move.l	(L047f7a),d0
	lsr.l	#1,d0
	move.l	d0,(L047f7e)
	cmp.l	d0,d1
	bpl	L027cc2
	move.l	#$00000160,d7
	bra	L027cc4
L027cc2:
	moveq.l	#$80,d7
L027cc4:
	bsr	L0281a0
	rts

L027cca:
	bra	L028074
L027cce:
	bsr	L028074
	btst.b	#$03,(L04735d)
	beq	L027d0a
	move.l	(L047f7a),d0
	move.l	d0,(L047f7e)
	move.l	(L047f82),d1
	move.l	d1,(L047f86)
	cmp.l	d0,d1
	bpl	L027d04
	move.l	#$00000160,d7
	bsr	L0281a0
	bra	L027d0a
L027d04:
	moveq.l	#$80,d7
	bsr	L0281a0
L027d0a:
	move.l	(L047f7a),d0
	move.l	d0,(L047f7e)
	move.l	(L047f82),d1
	move.l	d1,(L047f86)
	cmp.l	d0,d1
	bpl	L027d2e
	move.l	#$00000160,d7
	bra	L027d30
L027d2e:
	moveq.l	#$80,d7
L027d30:
	movem.l	d0-d1/d7,-(a7)
	bsr	L029030
	movem.l	(a7)+,d0-d1/d7
	bsr	L029050
	rts

L027d42:
	bsr	L028074
	move.l	(L047f7a),d0
	move.l	d0,(L047f7e)
	move.l	(L047f82),d1
	move.l	d1,(L047f86)
	cmp.l	d0,d1
	bpl	L027d6a
	move.l	#$00000160,d7
	bra	L027d6c
L027d6a:
	moveq.l	#$80,d7
L027d6c:
	movem.l	d0-d1/d7,-(a7)
	bsr	L029030
	movem.l	(a7)+,d0-d1/d7
	bsr	L029050
	rts

L027d7e:
	bsr	L028074
	move.l	(L0470f2),d0
	move.l	d0,d1
	bsr	L027e14
	move.l	d0,(L0470f2)
	move.l	d0,(L0470fa)
	move.l	d0,d2
	clr.w	d2
	swap.w	d2
	subi.w	#$0100,d2
	divu.w	#$0006,d2
	move.w	d2,(L047112)
	sub.l	d0,d1
	swap.w	d1
	asl.w	#7,d1
	asr.w	#7,d1
	swap.w	d1
	add.l	d1,(L0473f8)
	move.l	(L047f7a),d0
	move.l	(L047f82),d1
	cmp.l	d0,d1
	bpl	L027dd6
	move.l	#$00000160,d7
	bra	L027dd8
L027dd6:
	moveq.l	#$80,d7
L027dd8:
	lsr.l	#1,d0
	lsr.l	#1,d1
	movem.l	d0-d1/d7,-(a7)
	bsr	L029030
	movem.l	(a7)+,d0-d1/d7
	lsr.l	#1,d0
	lsr.l	#1,d1
	clr.w	d0
	swap.w	d0
	move.w	d0,(L047116)
	lea.l	(L06abdc),a1
	lea.l	($00ebd000),a2
	move.w	(L04735c),d6
	lsr.w	#6,d6
	lsr.w	#3,d6
	moveq.l	#$00,d3
	bsr	L029086
	rts

L027e14:
	move.w	(L0473f8),d2
	subi.w	#$0068,d2
	bcs	L027e2c
	addi.w	#$0068,d2
	subi.w	#$00a0,d2
	bcc	L027e2c
	rts

L027e2c:
	swap.w	d2
	clr.w	d2
	tst.w	(L0473f2)
	bmi	L027e3a
	asr.l	#1,d2
L027e3a:
	add.l	d2,d0
	swap.w	d0
	cmp.w	(L047f78),d0
	blt	L027e4c
	move.w	(L047f78),d0
L027e4c:
	cmp.w	(L047f76),d0
	bgt	L027e5a
	move.w	(L047f76),d0
L027e5a:
	swap.w	d0
	rts

L027e5e:
	bsr	L0280f2
	move.l	(L047f7e),d1
	move.l	d1,(L047f86)
	move.l	(L047f7a),d0
	lsr.l	#1,d0
	move.l	d0,(L047f7e)
	cmp.l	d0,d1
	bpl	L027e88
	move.l	#$00000160,d7
	bra	L027e8a
L027e88:
	moveq.l	#$80,d7
L027e8a:
	bsr	L0282b8
	rts

L027e90:
	bsr	L028074
	move.l	(L047f7a),d0
	move.l	d0,(L047f7e)
	move.l	(L047f82),d1
	move.l	d1,(L047f86)
	cmp.l	d0,d1
	bpl	L027ebc
	move.l	#$00000160,d7
	bsr	L0281a0
	bra	L027ec2
L027ebc:
	moveq.l	#$80,d7
	bsr	L0281a0
L027ec2:
	moveq.l	#$00,d0
	move.w	(L047350),d0
	divu.w	#$0018,d0
	swap.w	d0
	cmpi.w	#$000a,d0
	bne	L027eea
	tst.w	(L0470f2)
	bne	L027f18
	cmpi.w	#$0900,(L047f7a)
	bcs	L027f46
	bra	L027f18
L027eea:
	cmpi.w	#$0300,(L047f7a)
	bne	L027f46
	tst.w	(L0470f2)
	bne	L027f18
	cmpi.w	#$0080,(L0473f4)
	bcc	L027f10
	move.w	#$0000,(L047f8e)
	bra	L027f18
L027f10:
	move.w	#$0300,(L047f8e)
L027f18:
	move.l	(L0470f2),d0
	move.l	d0,d1
	bsr	L027fea
	move.l	d0,(L0470f2)
	move.l	d0,(L0470fa)
	sub.l	d0,d1
	add.l	d1,(L0473f8)
	lsr.l	#1,d0
	move.l	d0,(L047102)
	move.l	d0,(L04710a)
L027f46:
	rts

L027f48:
	bsr	L0280f2
	move.l	(L047f7e),d1
	move.l	d1,(L047f86)
	move.l	(L047f7a),d0
	lsr.l	#1,d0
	move.l	d0,(L047f7e)
	cmp.l	d0,d1
	bpl	L027f72
	move.l	#$00000160,d7
	bra	L027f74
L027f72:
	moveq.l	#$80,d7
L027f74:
	bsr	L0282b8
	rts

L027f7a:
	suba.l	a3,a3
	bsr	L028074
	cmpa.l	#$00e10000,a3
	bne	L027fbc
	lea.l	(-$0006,a6),a6
	adda.l	#$0003ffd0,a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6),d0
	bsr	L02860e
	bra	L027fbc
L027fb8:
	bsr	L028074
L027fbc:
	move.l	(L047f7e),d1
	move.l	d1,(L047f86)
	move.l	(L047f7a),d0
	lsr.l	#1,d0
	move.l	d0,(L047f7e)
	cmp.l	d0,d1
	bpl	L027fe2
	move.l	#$00000160,d7
	bra	L027fe4
L027fe2:
	moveq.l	#$80,d7
L027fe4:
	bsr	L0281a0
	rts

L027fea:
	move.w	(L0473f8),d2
	subi.w	#$0068,d2
	bcs	L028002
	addi.w	#$0068,d2
	subi.w	#$00a0,d2
	bcc	L028002
	rts

L028002:
	swap.w	d2
	clr.w	d2
	tst.w	(L0473f2)
	bmi	L028010
	asr.l	#1,d2
L028010:
	add.l	d2,d0
	cmp.l	#$01000000,d0
	blt	L028020
	move.l	#$01000000,d0
L028020:
	cmp.l	#$00000000,d0
	bgt	L02802a
	moveq.l	#$00,d0
L02802a:
	rts

L02802c:
	bsr	L0280f2
	move.l	(L047f7a),d0
	move.l	d0,(L047f7e)
	move.l	(L047f82),d1
	move.l	d1,(L047f86)
	cmp.l	d0,d1
	bpl	L028054
	move.l	#$00000160,d7
	bra	L028056
L028054:
	moveq.l	#$80,d7
L028056:
	movem.l	d0-d1/d7,-(a7)
	bsr	L0282b8
	movem.l	(a7)+,d0-d1/d7
	movem.l	d0-d1/d7,-(a7)
	bsr	L0290fe
	movem.l	(a7)+,d0-d1/d7
	bsr	L029126
	rts

L028074:
	move.w	(L0473f4),d2
	subi.w	#$0080,d2
	beq	L0280f0
	move.l	(L047f7a),d0
	move.l	d0,(L047f82)
	swap.w	d2
	clr.w	d2
	tst.w	(L0473f2)
	bmi	L02809a
	asr.l	#1,d2
L02809a:
	add.l	d2,d0
	cmp.l	(L047f8a),d0
	blt	L0280aa
	move.l	(L047f8a),d0
L0280aa:
	cmp.l	(L047f8e),d0
	bgt	L0280b8
	move.l	(L047f8e),d0
L0280b8:
	move.l	d0,(L047f7a)
	move.l	d0,d2
	move.l	(L047f82),d1
	move.l	d1,d3
	swap.w	d2
	swap.w	d3
	sub.w	d2,d3
	beq	L0280f0
	bpl	L0280e4
	add.w	d3,(L0473f4)
	move.l	#$00000160,d7
	bsr	L02817c
	bra	L0280f0
L0280e4:
	add.w	d3,(L0473f4)
	moveq.l	#$80,d7
	bsr	L02817c
L0280f0:
	rts

L0280f2:
	move.w	(L0473f8),d2
	subi.w	#$0068,d2
	bcs	L02810a
	addi.w	#$0068,d2
	subi.w	#$00a0,d2
	bcc	L02810a
	rts

L02810a:
	move.l	(L047f7a),d0
	move.l	d0,(L047f82)
	swap.w	d2
	clr.w	d2
	tst.w	(L0473f2)
	bmi	L028124
	asr.l	#1,d2
L028124:
	add.l	d2,d0
	cmp.l	(L047f8a),d0
	blt	L028134
	move.l	(L047f8a),d0
L028134:
	cmp.l	(L047f8e),d0
	bgt	L028142
	move.l	(L047f8e),d0
L028142:
	move.l	d0,(L047f7a)
	move.l	d0,d2
	move.l	(L047f82),d1
	move.l	d1,d3
	swap.w	d2
	swap.w	d3
	sub.w	d2,d3
	beq	L02817a
	bpl	L02816e
	add.w	d3,(L0473f8)
	move.l	#$00000160,d7
	bsr	L028294
	bra	L02817a
L02816e:
	add.w	d3,(L0473f8)
	moveq.l	#$80,d7
	bsr	L028294
L02817a:
	rts

L02817c:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	lea.l	($00e50000),a1
	lea.l	($00c00001),a2
	move.w	(L04735c),d6
	bra	L0281c8
L0281a0:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L0470fe)
	move.w	d0,(L047106)
	lea.l	($00e70000),a1
	lea.l	($00c80001),a2
	move.w	(L04735c),d6
	lsr.w	#3,d6
	bra.w	L0281c8
L0281c8:
	clr.w	d1
	swap.w	d1
	move.l	d0,d4
	move.l	d1,d5
L0281d0:
	cmp.w	d4,d5
	beq	L028292
	bpl	L0281dc
	addq.w	#1,d5
	bra	L0281de
L0281dc:
	subq.w	#1,d5
L0281de:
	move.l	d5,d0
	move.l	d0,d1
	move.l	d0,d2
	move.l	d0,d3
	add.l	d7,d0
	bmi	L028292
	andi.w	#$01e0,d0
	asl.w	#1,d0
	andi.w	#$001f,d1
	swap.w	d1
	lsr.l	#3,d1
	add.l	d1,d0
	lea.l	(a2,d0.l),a5
	add.l	d7,d2
	lsr.w	#2,d2
	btst.l	#$02,d6
	beq	L02821c
	move.l	d2,d0
	andi.l	#$00000007,d0
	andi.l	#$fffffff8,d2
	add.l	d2,d2
	add.l	d0,d2
L02821c:
	asl.l	#5,d2
	andi.w	#$0003,d3
	asl.w	#3,d3
	add.l	d2,d3
	andi.l	#$0000ffff,d3
	lea.l	(a1,d3.l),a6
	lea.l	($00e10000),a3
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6),d0
	bsr	L02860e
	btst.l	#$02,d6
	beq	L02828e
	lea.l	($00fa,a6),a6
	adda.l	#$0003ffd0,a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6),d0
	bsr	L02860e
L02828e:
	bra	L0281d0
L028292:
	rts

L028294:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
	lea.l	($00e50000),a1
	lea.l	($00c00001),a2
	move.w	(L04735c),d6
	bra	L0282e0
L0282b8:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L047102)
	move.w	d0,(L04710a)
	lea.l	($00e70000),a1
	lea.l	($00c80001),a2
	move.w	(L04735c),d6
	lsr.w	#3,d6
	bra.w	L0282e0
L0282e0:
	clr.w	d1
	swap.w	d1
	move.l	d0,d4
	move.l	d1,d5
L0282e8:
	cmp.w	d4,d5
	beq	L0283b8
	bpl	L0282f4
	addq.w	#1,d5
	bra	L0282f6
L0282f4:
	subq.w	#1,d5
L0282f6:
	move.l	d5,d0
	move.l	d0,d2
	move.l	d0,d1
	move.l	d1,d3
	add.l	d7,d0
	bmi	L0283b8
	andi.w	#$01f8,d0
	add.w	d0,d0
	add.w	d0,d0
	asl.l	#8,d0
	andi.w	#$0007,d1
	asl.w	#6,d1
	add.l	d1,d0
	lea.l	(a2,d0.l),a5
	add.l	d7,d2
	move.l	d2,d0
	andi.l	#$00000007,d0
	lsr.l	#2,d2
	andi.w	#$fff8,d2
	add.w	d0,d2
	btst.l	#$02,d6
	beq	L028344
	move.l	d2,d0
	andi.l	#$00000007,d0
	andi.l	#$fffffff8,d2
	add.l	d2,d2
	add.l	d0,d2
L028344:
	asl.l	#5,d2
	andi.w	#$0018,d3
	add.l	d2,d3
	andi.l	#$0000ffff,d3
	lea.l	(a1,d3.l),a6
	lea.l	($00e10000),a3
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6),d0
	bsr	L02860e
	btst.l	#$02,d6
	beq	L0283b4
	lea.l	($00fa,a6),a6
	adda.l	#$000001d0,a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6),d0
	bsr	L02860e
L0283b4:
	bra	L0282e8
L0283b8:
	rts

L0283ba:
	move.l	(L047f7a),d7
	move.l	d7,d0
	clr.w	d0
	swap.w	d0
	tst.w	(L04735a)
	bmi	L0283e2
	move.w	d0,(L0470ee)
	move.w	d0,(L0470f6)
	move.w	d0,(L047f72)
	bra	L0283f4
L0283e2:
	move.w	d0,(L0470f2)
	move.w	d0,(L0470fa)
	move.w	d0,(L047f74)
L0283f4:
	lea.l	($00e50000),a6
	lea.l	($00c00001),a2
	bsr	L028448
	bra	L0285c4
L028406:
	move.l	(L047f7e),d7
	move.l	d7,d0
	clr.w	d0
	swap.w	d0
	tst.w	(L04735a)
	bmi	L028428
	move.w	d0,(L0470fe)
	move.w	d0,(L047106)
	bra	L028434
L028428:
	move.w	d0,(L047102)
	move.w	d0,(L04710a)
L028434:
	lea.l	($00e70000),a6
	lea.l	($00c80001),a2
	bra	L028448
L028442:
	lea.l	($00c00001),a2
L028448:
	move.l	(L047f8a),d6
	move.w	(L04735c),d2
	cmpa.l	#$00c80000,a2
	bcs	L02845e
	lsr.w	#3,d2
L02845e:
	btst.l	#$01,d2
	beq	L028466
	lsr.l	#1,d6
L028466:
	cmp.l	d6,d7
	bne	L028470
	subi.l	#$00800000,d7
L028470:
	move.l	d7,d6
	lea.l	($00e10000),a3
	clr.w	d7
	swap.w	d7
	andi.b	#$e0,d7
	asl.l	#3,d7
	btst.l	#$02,d2
	beq	L02848a
	asl.l	#1,d7
L02848a:
	lea.l	(a6,d7.l),a6
	tst.w	(L04735a)
	bmi	L0284dc
	swap.w	d6
	andi.w	#$01e0,d6
	add.w	d6,d6
	lea.l	(a2,d6.w),a2
	move.w	#$000f,d7
L0284a6:
	btst.l	#$02,d2
	bne	L0284b2
	move.w	#$0007,d6
	bra	L0284b6
L0284b2:
	move.w	#$000f,d6
L0284b6:
	movea.l	a2,a5
	move.l	a2,d0
	move.w	d0,d1
	add.w	#$0040,d1
	andi.l	#$000003ff,d1
	andi.l	#$fffffc00,d0
	add.l	d1,d0
	movea.l	d0,a2
L0284d0:
	bsr	L02852e
	dbra	d6,L0284d0
	dbra	d7,L0284a6
	rts

L0284dc:
	swap.w	d6
	andi.w	#$01e0,d6
	swap.w	d6
	clr.w	d6
	lsr.l	#6,d6
	lea.l	(a2,d6.l),a2
	move.w	#$000d,d6
L0284f0:
	btst.l	#$02,d2
	bne	L0284fc
	move.w	#$0007,d7
	bra	L028500
L0284fc:
	move.w	#$000f,d7
L028500:
	movea.l	a2,a5
	move.l	a2,d0
	move.l	d0,d1
	add.l	#$00008000,d0
	andi.l	#$0007ffff,d0
	andi.l	#$fff80000,d1
	add.l	d1,d0
	movea.l	d0,a2
L02851c:
	movea.l	a5,a1
	bsr	L02852e
	lea.l	($0040,a1),a5
	dbra	d7,L02851c
	dbra	d6,L0284f0
	rts

L02852e:
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($1fd0,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($1fd0,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($1fd0,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L02860e
	lea.l	($1fd0,a5),a5
	rts

L0285c4:
	movea.l	(L047f92),a6
	move.w	(L047f7a),d0
	move.w	(L047f82),d1
	addi.w	#$0120,d0
	subi.w	#$0020,d1
	bcc	L0285e4
	move.w	#$0000,d1
L0285e4:
	cmp.w	($0000.w,a6),d1
	bcc	L028602
	cmp.w	($0000.w,a6),d0
	bcs	L028606
	movem.l	d0-d1/a6,-(a7)
	move.w	#$0000,d1
	jsr	(L012ece)
	movem.l	(a7)+,d0-d1/a6
L028602:
	addq.w	#8,a6
	bra	L0285e4
L028606:
	move.l	a6,(L047f92)
	rts

L02860e:
	move.w	d0,d1
	bmi	L02868e
	asl.w	#1,d0
	bmi	L02870a
	andi.l	#$00000800,d0
	andi.l	#$000003ff,d1
	add.w	d0,d1
	asl.l	#6,d1
	lea.l	(a3,d1.l),a4
	move.l	(a4)+,d1
	movep.l	d1,($0000,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0008,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0400,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0408,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0800,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0808,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0c00,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0c08,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1000,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1008,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1400,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1408,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1800,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1808,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1c00,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1c08,a5)
	rts

L02868e:
	asl.w	#1,d0
	bmi	L0288a0
	andi.l	#$00000800,d0
	andi.l	#$000003ff,d1
	add.w	d0,d1
	asl.l	#6,d1
	lea.l	(a3,d1.l),a4
	move.l	(a4)+,d1
	movep.l	d1,($1c00,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1c08,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1800,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1808,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1400,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1408,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1000,a5)
	move.l	(a4)+,d1
	movep.l	d1,($1008,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0c00,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0c08,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0800,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0808,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0400,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0408,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0000,a5)
	move.l	(a4)+,d1
	movep.l	d1,($0008,a5)
	rts

L02870a:
	andi.l	#$00000800,d0
	andi.l	#$000003ff,d1
	add.w	d0,d1
	asl.l	#6,d1
	lea.l	(a3,d1.l),a4
	move.b	(a4)+,d1
	move.b	d1,($000e,a5)
	move.b	(a4)+,d1
	move.b	d1,($000c,a5)
	move.b	(a4)+,d1
	move.b	d1,($000a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0008,a5)
	move.b	(a4)+,d1
	move.b	d1,($0006,a5)
	move.b	(a4)+,d1
	move.b	d1,($0004,a5)
	move.b	(a4)+,d1
	move.b	d1,($0002,a5)
	move.b	(a4)+,d1
	move.b	d1,($0000.w,a5)
	move.b	(a4)+,d1
	move.b	d1,($040e,a5)
	move.b	(a4)+,d1
	move.b	d1,($040c,a5)
	move.b	(a4)+,d1
	move.b	d1,($040a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0408,a5)
	move.b	(a4)+,d1
	move.b	d1,($0406,a5)
	move.b	(a4)+,d1
	move.b	d1,($0404,a5)
	move.b	(a4)+,d1
	move.b	d1,($0402,a5)
	move.b	(a4)+,d1
	move.b	d1,($0400,a5)
	move.b	(a4)+,d1
	move.b	d1,($080e,a5)
	move.b	(a4)+,d1
	move.b	d1,($080c,a5)
	move.b	(a4)+,d1
	move.b	d1,($080a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0808,a5)
	move.b	(a4)+,d1
	move.b	d1,($0806,a5)
	move.b	(a4)+,d1
	move.b	d1,($0804,a5)
	move.b	(a4)+,d1
	move.b	d1,($0802,a5)
	move.b	(a4)+,d1
	move.b	d1,($0800,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c0e,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c0c,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c0a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c08,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c06,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c04,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c02,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c00,a5)
	move.b	(a4)+,d1
	move.b	d1,($100e,a5)
	move.b	(a4)+,d1
	move.b	d1,($100c,a5)
	move.b	(a4)+,d1
	move.b	d1,($100a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1008,a5)
	move.b	(a4)+,d1
	move.b	d1,($1006,a5)
	move.b	(a4)+,d1
	move.b	d1,($1004,a5)
	move.b	(a4)+,d1
	move.b	d1,($1002,a5)
	move.b	(a4)+,d1
	move.b	d1,($1000,a5)
	move.b	(a4)+,d1
	move.b	d1,($140e,a5)
	move.b	(a4)+,d1
	move.b	d1,($140c,a5)
	move.b	(a4)+,d1
	move.b	d1,($140a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1408,a5)
	move.b	(a4)+,d1
	move.b	d1,($1406,a5)
	move.b	(a4)+,d1
	move.b	d1,($1404,a5)
	move.b	(a4)+,d1
	move.b	d1,($1402,a5)
	move.b	(a4)+,d1
	move.b	d1,($1400,a5)
	move.b	(a4)+,d1
	move.b	d1,($180e,a5)
	move.b	(a4)+,d1
	move.b	d1,($180c,a5)
	move.b	(a4)+,d1
	move.b	d1,($180a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1808,a5)
	move.b	(a4)+,d1
	move.b	d1,($1806,a5)
	move.b	(a4)+,d1
	move.b	d1,($1804,a5)
	move.b	(a4)+,d1
	move.b	d1,($1802,a5)
	move.b	(a4)+,d1
	move.b	d1,($1800,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c0e,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c0c,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c0a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c08,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c06,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c04,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c02,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c00,a5)
	rts

L0288a0:
	andi.l	#$00000800,d0
	andi.l	#$000003ff,d1
	add.w	d0,d1
	asl.l	#6,d1
	lea.l	(a3,d1.l),a4
	move.b	(a4)+,d1
	move.b	d1,($1c0e,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c0c,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c0a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c08,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c06,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c04,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c02,a5)
	move.b	(a4)+,d1
	move.b	d1,($1c00,a5)
	move.b	(a4)+,d1
	move.b	d1,($180e,a5)
	move.b	(a4)+,d1
	move.b	d1,($180c,a5)
	move.b	(a4)+,d1
	move.b	d1,($180a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1808,a5)
	move.b	(a4)+,d1
	move.b	d1,($1806,a5)
	move.b	(a4)+,d1
	move.b	d1,($1804,a5)
	move.b	(a4)+,d1
	move.b	d1,($1802,a5)
	move.b	(a4)+,d1
	move.b	d1,($1800,a5)
	move.b	(a4)+,d1
	move.b	d1,($140e,a5)
	move.b	(a4)+,d1
	move.b	d1,($140c,a5)
	move.b	(a4)+,d1
	move.b	d1,($140a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1408,a5)
	move.b	(a4)+,d1
	move.b	d1,($1406,a5)
	move.b	(a4)+,d1
	move.b	d1,($1404,a5)
	move.b	(a4)+,d1
	move.b	d1,($1402,a5)
	move.b	(a4)+,d1
	move.b	d1,($1400,a5)
	move.b	(a4)+,d1
	move.b	d1,($100e,a5)
	move.b	(a4)+,d1
	move.b	d1,($100c,a5)
	move.b	(a4)+,d1
	move.b	d1,($100a,a5)
	move.b	(a4)+,d1
	move.b	d1,($1008,a5)
	move.b	(a4)+,d1
	move.b	d1,($1006,a5)
	move.b	(a4)+,d1
	move.b	d1,($1004,a5)
	move.b	(a4)+,d1
	move.b	d1,($1002,a5)
	move.b	(a4)+,d1
	move.b	d1,($1000,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c0e,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c0c,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c0a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c08,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c06,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c04,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c02,a5)
	move.b	(a4)+,d1
	move.b	d1,($0c00,a5)
	move.b	(a4)+,d1
	move.b	d1,($080e,a5)
	move.b	(a4)+,d1
	move.b	d1,($080c,a5)
	move.b	(a4)+,d1
	move.b	d1,($080a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0808,a5)
	move.b	(a4)+,d1
	move.b	d1,($0806,a5)
	move.b	(a4)+,d1
	move.b	d1,($0804,a5)
	move.b	(a4)+,d1
	move.b	d1,($0802,a5)
	move.b	(a4)+,d1
	move.b	d1,($0800,a5)
	move.b	(a4)+,d1
	move.b	d1,($040e,a5)
	move.b	(a4)+,d1
	move.b	d1,($040c,a5)
	move.b	(a4)+,d1
	move.b	d1,($040a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0408,a5)
	move.b	(a4)+,d1
	move.b	d1,($0406,a5)
	move.b	(a4)+,d1
	move.b	d1,($0404,a5)
	move.b	(a4)+,d1
	move.b	d1,($0402,a5)
	move.b	(a4)+,d1
	move.b	d1,($0400,a5)
	move.b	(a4)+,d1
	move.b	d1,($000e,a5)
	move.b	(a4)+,d1
	move.b	d1,($000c,a5)
	move.b	(a4)+,d1
	move.b	d1,($000a,a5)
	move.b	(a4)+,d1
	move.b	d1,($0008,a5)
	move.b	(a4)+,d1
	move.b	d1,($0006,a5)
	move.b	(a4)+,d1
	move.b	d1,($0004,a5)
	move.b	(a4)+,d1
	move.b	d1,($0002,a5)
	move.b	(a4)+,d1
	move.b	d1,($0000.w,a5)
	rts

L028a36:
	lea.l	($00e70000),a3
	move.w	#$000f,d6
L028a40:
	move.w	#$000f,d7
	movea.l	a2,a5
	move.l	a2,d0
	move.l	d0,d1
	add.l	#$00008000,d0
	andi.l	#$0007ffff,d0
	andi.l	#$fff80000,d1
	add.l	d1,d0
	movea.l	d0,a2
L028a60:
	movea.l	a5,a1
	bsr	L028a72
	lea.l	($0040,a1),a5
	dbra	d7,L028a60
	dbra	d6,L028a40
	rts

L028a72:
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($1fd0,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($1fd0,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($1fd0,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($0010,a5),a5
	move.w	(a6)+,d0
	bsr	L028af4
	lea.l	($1fd0,a5),a5
	rts

L028af4:
	andi.l	#$000007ff,d0
	asl.l	#5,d0
	lea.l	(a3,d0.l),a4
	move.w	#$0007,d0
L028b04:
	move.b	(a4)+,d1
	move.b	d1,($0002,a5)
	lsr.w	#4,d1
	move.b	d1,($0000.w,a5)
	move.b	(a4)+,d1
	move.b	d1,($0006,a5)
	lsr.w	#4,d1
	move.b	d1,($0004,a5)
	move.b	(a4)+,d1
	move.b	d1,($000a,a5)
	lsr.w	#4,d1
	move.b	d1,($0008,a5)
	move.b	(a4)+,d1
	move.b	d1,($000e,a5)
	lsr.w	#4,d1
	move.b	d1,($000c,a5)
	lea.l	($0400,a5),a5
	dbra	d0,L028b04
	lea.l	(-$2000,a5),a5
	rts

L028b42:
	lea.l	($00e00000),a2
	lea.l	($00e10000),a3
L028b4e:
	move.w	#$0017,d7
L028b52:
	move.w	#$0006,d6
	movea.l	a2,a5
	lea.l	($0004,a2),a2
	lea.l	($1000,a5),a5
	lea.l	($0020,a6),a6
L028b64:
	bsr	L028b70
	dbra	d6,L028b64
	dbra	d7,L028b52
	rts

L028b70:
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	lea.l	($03fd,a5),a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	lea.l	($03fd,a5),a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	lea.l	($03fd,a5),a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	addq.w	#1,a5
	move.w	(a6)+,d0
	bsr	L028bda
	lea.l	($03fd,a5),a5
	rts

L028bda:
	movem.l	a0-a5,-(a7)
	movea.l	a5,a2
	movea.l	a3,a0
	move.l	#$00020000,d1
	lea.l	(a2,d1.l),a3
	lea.l	(a3,d1.l),a4
	lea.l	(a4,d1.l),a5
	move.w	d0,d1
	bmi	L028c9a
	asl.w	#1,d0
	bmi	L028d3a
	andi.l	#$00000800,d0
	andi.l	#$000003ff,d1
	add.w	d0,d1
	asl.l	#5,d1
	lea.l	(a0,d1.l),a1
	move.b	(a1)+,($0000.w,a2)
	move.b	(a1)+,($0000.w,a3)
	move.b	(a1)+,($0000.w,a4)
	move.b	(a1)+,($0000.w,a5)
	move.b	(a1)+,($0080,a2)
	move.b	(a1)+,($0080,a3)
	move.b	(a1)+,($0080,a4)
	move.b	(a1)+,($0080,a5)
	move.b	(a1)+,($0100,a2)
	move.b	(a1)+,($0100,a3)
	move.b	(a1)+,($0100,a4)
	move.b	(a1)+,($0100,a5)
	move.b	(a1)+,($0180,a2)
	move.b	(a1)+,($0180,a3)
	move.b	(a1)+,($0180,a4)
	move.b	(a1)+,($0180,a5)
	move.b	(a1)+,($0200,a2)
	move.b	(a1)+,($0200,a3)
	move.b	(a1)+,($0200,a4)
	move.b	(a1)+,($0200,a5)
	move.b	(a1)+,($0280,a2)
	move.b	(a1)+,($0280,a3)
	move.b	(a1)+,($0280,a4)
	move.b	(a1)+,($0280,a5)
	move.b	(a1)+,($0300,a2)
	move.b	(a1)+,($0300,a3)
	move.b	(a1)+,($0300,a4)
	move.b	(a1)+,($0300,a5)
	move.b	(a1)+,($0380,a2)
	move.b	(a1)+,($0380,a3)
	move.b	(a1)+,($0380,a4)
	move.b	(a1)+,($0380,a5)
	movem.l	(a7)+,a0-a5
	rts

L028c9a:
	asl.w	#1,d0
	bmi	L028d3a
	andi.l	#$00000800,d0
	andi.l	#$000003ff,d1
	add.w	d0,d1
	asl.l	#5,d1
	lea.l	(a0,d1.l),a1
	move.b	(a1)+,($0380,a2)
	move.b	(a1)+,($0380,a3)
	move.b	(a1)+,($0380,a4)
	move.b	(a1)+,($0380,a5)
	move.b	(a1)+,($0300,a2)
	move.b	(a1)+,($0300,a3)
	move.b	(a1)+,($0300,a4)
	move.b	(a1)+,($0300,a5)
	move.b	(a1)+,($0280,a2)
	move.b	(a1)+,($0280,a3)
	move.b	(a1)+,($0280,a4)
	move.b	(a1)+,($0280,a5)
	move.b	(a1)+,($0200,a2)
	move.b	(a1)+,($0200,a3)
	move.b	(a1)+,($0200,a4)
	move.b	(a1)+,($0200,a5)
	move.b	(a1)+,($0180,a2)
	move.b	(a1)+,($0180,a3)
	move.b	(a1)+,($0180,a4)
	move.b	(a1)+,($0180,a5)
	move.b	(a1)+,($0100,a2)
	move.b	(a1)+,($0100,a3)
	move.b	(a1)+,($0100,a4)
	move.b	(a1)+,($0100,a5)
	move.b	(a1)+,($0080,a2)
	move.b	(a1)+,($0080,a3)
	move.b	(a1)+,($0080,a4)
	move.b	(a1)+,($0080,a5)
	move.b	(a1)+,($0000.w,a2)
	move.b	(a1)+,($0000.w,a3)
	move.b	(a1)+,($0000.w,a4)
	move.b	(a1)+,($0000.w,a5)
	movem.l	(a7)+,a0-a5
	rts

L028d3a:
	movem.l	(a7)+,a0-a5
	rts

L028d40:
	move.w	(L04735c),d3
	lsr.w	#6,d3
	lea.l	(L069bdc),a3
	lea.l	(L061bdc),a4
	move.l	(L047f7a),d7
	move.l	d7,d6
	swap.w	d6
	tst.w	(L04735a)
	bmi	L028d6e
	move.w	d6,(L04710e)
	bra	L028dba
L028d6e:
	move.w	d6,(L047112)
	bra	L028dba
L028d76:
	move.w	(L04735c),d3
	lsr.w	#6,d3
	lsr.w	#3,d3
	lea.l	(L06abdc),a3
	lea.l	(L061bdc),a4
	move.l	(L047f7a),d7
	move.l	d7,d6
	swap.w	d6
	tst.w	(L04735a)
	bmi	L028dac
	move.w	d6,(L047116)
	lea.l	($00ebf000),a6
	bra	L028dc0
L028dac:
	move.w	d6,(L04711a)
	lea.l	($00ebe040),a6
	bra	L028dc0
L028dba:
	lea.l	($00ebe000),a6
L028dc0:
	tst.w	(L04735a)
	bmi	L028e40
	cmp.l	(L047f8a),d7
	bne	L028dd6
	subi.l	#$00800000,d7
L028dd6:
	swap.w	d7
	move.w	d7,d6
	andi.w	#$01e0,d7
	lsr.w	#2,d7
	lea.l	(a6,d7.w),a6
L028de4:
	sub.w	(L04735e),d6
	lsr.w	#1,d6
	btst.l	#$02,d3
	bne	L028df4
	lsr.w	#1,d6
L028df4:
	add.w	d6,d6
	lea.l	(a3,d6.w),a3
	lea.l	($00eb8000),a5
	move.w	#$000d,d7
L028e04:
	move.l	a6,d4
	btst.l	#$02,d3
	bne	L028e12
	move.w	#$0007,d6
	bra	L028e16
L028e12:
	move.w	#$000f,d6
L028e16:
	moveq.l	#$00,d0
	move.w	(a3)+,d0
	bsr	L028ea2
	lea.l	($0200,a6),a6
	dbra	d6,L028e16
	move.l	d4,d0
	move.l	d0,d1
	andi.w	#$ff80,d0
	addi.w	#$0008.w,d1
	andi.w	#$007f,d1
	add.w	d1,d0
	movea.l	d0,a6
	dbra	d7,L028e04
	rts

L028e40:
	cmp.l	(L047f8a),d7
	bne	L028e4e
	subi.l	#$00800000,d7
L028e4e:
	swap.w	d7
	move.w	d7,d6
	andi.w	#$01e0,d7
	asl.w	#4,d7
	lea.l	(a6,d7.w),a6
	sub.w	(L04735e),d6
	lsr.w	#2,d6
	add.w	d6,d6
	lea.l	(a3,d6.w),a3
	lea.l	($00eb8000),a5
	move.w	#$000d,d6
L028e74:
	move.w	#$0007,d7
L028e78:
	moveq.l	#$00,d0
	move.w	(a3)+,d0
	bsr	L028ea2
	addq.w	#8,a6
	dbra	d7,L028e78
	lea.l	(-$0040,a6),a6
	move.l	a6,d0
	move.l	d0,d1
	addi.w	#$0200,d0
	andi.w	#$1fff,d0
	andi.w	#$e000,d1
	add.w	d1,d0
	movea.l	d0,a6
	dbra	d6,L028e74
	rts

L028ea2:
	cmpi.w	#$000a,(L04735a)
	bne	L028eb4
	cmpa.l	#$00ebf800,a6
	bcc	L028ef0
L028eb4:
	tst.w	d0
	bmi	L028f60
	add.w	d0,d0
	bmi	L028ef2
	asl.l	#4,d0
	move.l	(a4,d0.l),($0000.w,a6)
	move.l	($04,a4,d0.l),($0004,a6)
	move.l	($08,a4,d0.l),($0080,a6)
	move.l	($0c,a4,d0.l),($0084,a6)
	move.l	($10,a4,d0.l),($0100,a6)
	move.l	($14,a4,d0.l),($0104,a6)
	move.l	($18,a4,d0.l),($0180,a6)
	move.l	($1c,a4,d0.l),($0184,a6)
L028ef0:
	rts

L028ef2:
	andi.w	#$3fff,d0
	move.l	#$40004000,d1
	asl.l	#4,d0
	move.l	(a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0004,a6)
	move.l	($04,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0000.w,a6)
	move.l	($08,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0084,a6)
	move.l	($0c,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0080,a6)
	move.l	($10,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0104,a6)
	move.l	($14,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0100,a6)
	move.l	($18,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0184,a6)
	move.l	($1c,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0180,a6)
	rts

L028f60:
	add.w	d0,d0
	bmi	L028fc2
	andi.w	#$3fff,d0
	move.l	#$80008000,d1
	asl.l	#4,d0
	move.l	(a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0180,a6)
	move.l	($04,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0184,a6)
	move.l	($08,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0100,a6)
	move.l	($0c,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0104,a6)
	move.l	($10,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0080,a6)
	move.l	($14,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0084,a6)
	move.l	($18,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0000.w,a6)
	move.l	($1c,a4,d0.l),d2
	eor.l	d1,d2
	move.l	d2,($0004,a6)
	rts

L028fc2:
	andi.w	#$3fff,d0
	move.l	#$c000c000,d1
	asl.l	#4,d0
	move.l	(a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0184,a6)
	move.l	($04,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0180,a6)
	move.l	($08,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0104,a6)
	move.l	($0c,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0100,a6)
	move.l	($10,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0084,a6)
	move.l	($14,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0080,a6)
	move.l	($18,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0004,a6)
	move.l	($1c,a4,d0.l),d2
	swap.w	d2
	eor.l	d1,d2
	move.l	d2,($0000.w,a6)
	rts

L029030:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L04710e)
	lea.l	(L069bdc),a1
	lea.l	($00ebe000),a2
	move.w	(L04735c),d6
	lsr.w	#6,d6
	bra	L029074
L029050:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L047116)
	lea.l	(L06abdc),a1
	lea.l	($00ebf000),a2
	move.w	(L04735c),d6
	lsr.w	#6,d6
	lsr.w	#3,d6
	bra.w	L029074
L029074:
	move.w	(L047f8e),d3
	btst.l	#$01,d6
	beq	L029082
	lsr.w	#1,d3
L029082:
	andi.w	#$fe00,d3
L029086:
	btst.l	#$02,d6
	bne	L029092
	move.w	#$0003,d6
	bra	L029096
L029092:
	move.w	#$0001,d6
L029096:
	clr.w	d1
	swap.w	d1
	move.l	d0,d4
	move.l	d1,d5
	lea.l	(L061bdc),a4
L0290a4:
	cmp.w	d4,d5
	beq	L0290fc
	bpl	L0290ae
	addq.w	#1,d5
	bra	L0290b0
L0290ae:
	subq.w	#1,d5
L0290b0:
	move.l	d5,d0
	and.w	d6,d0
	bne	L0290a4
	move.l	d5,d0
	move.l	d0,d1
	move.l	d0,d2
	add.w	d7,d0
	sub.w	d3,d0
	bmi	L0290fc
	andi.w	#$01e0,d0
	lsr.w	#2,d0
	andi.l	#$0000001e,d1
	asl.l	#7,d1
	cmpi.w	#$0001,d6
	bne	L0290d8
	add.l	d1,d1
L0290d8:
	add.l	d1,d0
	lea.l	(a2,d0.l),a6
	add.l	d7,d2
	sub.w	(L04735e),d2
	lsr.w	#1,d2
	cmpi.w	#$0001,d6
	beq	L0290f0
	lsr.w	#1,d2
L0290f0:
	add.w	d2,d2
	move.w	(a1,d2.w),d0
	bsr	L028ea2
	bra	L0290a4
L0290fc:
	rts

L0290fe:
	move.w	#$0100,(L04710e)
	clr.w	d0
	swap.w	d0
	move.w	d0,(L047112)
	lea.l	(L069bdc),a1
	lea.l	($00ebe000),a2
	move.w	(L04735c),d6
	lsr.w	#6,d6
	bra	L02914a
L029126:
	clr.w	d0
	swap.w	d0
	move.w	d0,(L04711a)
	lea.l	(L06abdc),a1
	lea.l	($00ebe040),a2
	move.w	(L04735c),d6
	lsr.w	#6,d6
	lsr.w	#3,d6
	bra.w	L02914a
L02914a:
	move.w	(L047f8e),d3
	btst.l	#$01,d6
	beq	L029158
	lsr.w	#1,d3
L029158:
	andi.w	#$fe00,d3
	clr.w	d1
	swap.w	d1
	move.l	d0,d4
	move.l	d1,d5
	lea.l	(L061bdc),a4
L02916a:
	cmp.w	d4,d5
	beq	L0291e8
	bpl	L029174
	addq.w	#1,d5
	bra	L029176
L029174:
	subq.w	#1,d5
L029176:
	move.l	d5,d0
	and.w	#$0003,d0
	bne	L02916a
	move.l	d5,d0
	move.l	d0,d1
	move.l	d0,d2
	andi.l	#$0000001c,d1
	add.w	d1,d1
	add.w	d7,d0
	sub.w	d3,d0
	bmi	L0291e8
	andi.l	#$000001e0,d0
	asl.l	#4,d0
	add.l	d1,d0
	lea.l	(a2,d0.l),a6
	add.l	d7,d2
	sub.w	(L04735e),d2
	lsr.w	#2,d2
	btst.l	#$02,d6
	beq	L0291c2
	move.l	d2,d0
	andi.l	#$00000007,d0
	andi.l	#$fffffff8,d2
	add.l	d2,d2
	add.l	d0,d2
L0291c2:
	add.w	d2,d2
	move.w	(a1,d2.w),d0
	movem.l	d2/a1,-(a7)
	bsr	L028ea2
	movem.l	(a7)+,d2/a1
	btst.l	#$02,d6
	beq	L0291e6
	move.w	($10,a1,d2.w),d0
	lea.l	($0040,a6),a6
	bsr	L028ea2
L0291e6:
	bra	L02916a
L0291e8:
	rts

L0291ea:
	moveq.l	#$fd,d0
	trap	#0
	jsr	(L0436d8)
	jsr	(L024724)
	move.w	#$1c08,d0
	lea.l	(L0295e8),a6
	jsr	(L002480)
	move.w	#$2c06,d0
	lea.l	(L0295f8),a6
	jsr	(L002480)
	move.w	#$4006,d0
	lea.l	(L029612),a6
	jsr	(L002480)
	move.w	#$f801,($00e82202)
	move.w	#$07c1,($00e82204)
	move.w	#$0000,(L048abc)
	move.w	#$0000,(L048abe)
	move.w	#$0000,(L048ac0)
	bsr	L0292ee
	bsr	L0292b2
	lea.l	(L048acc),a0
	moveq.l	#$00,d0
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	moveq.l	#$00,d0
	lea.l	(L0463ee),a0
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.w	d0,(a0)
	lea.l	(L048adc),a0
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	lea.l	(L048afc),a0
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	move.l	d0,(a0)+
	jsr	(L03ee22)
	rts

L0292b2:
	move.w	(L0292ea),d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	(L0292ec),d0
	move.w	#$0000,d1
	jsr	(L002548)
	move.w	(L048abc),d0
	add.w	d0,d0
	move.w	(L0292ea,pc,d0.w),d0
	move.w	#$0051,d1
	jsr	(L002548)
	rts

L0292ea:
	.dc.w	$2c04
L0292ec:
	.dc.w	$4004

L0292ee:
	move.w	(L048abe),d2
	move.w	#$2c0d,d0
	jsr	(L0419fe)
	move.w	(L048abe),d0
	asl.w	#5,d0
	lea.l	(L029618),a0
	lea.l	(a0,d0.w),a0
	lea.l	(L048b3c),a1
	bsr	L02932a
	move.w	#$3408,d0
	lea.l	(L048b3c),a6
	jsr	(L002480)
	rts

L02932a:
	move.b	(a0)+,d0
	cmpi.b	#$ff,d0
	beq	L02938c
	cmpi.b	#$21,d0
	beq	L02936e
	cmpi.b	#$2d,d0
	beq	L029368
	cmpi.b	#$30,d0
	bcs	L029362
	cmpi.b	#$3a,d0
	bcs	L029374
	cmpi.b	#$41,d0
	bcs	L029362
	cmpi.b	#$5b,d0
	bcs	L02937a
	cmpi.b	#$61,d0
	bcs	L029362
	cmpi.b	#$7b,d0
	bcs	L029380
L029362:
	move.b	#$00,d0
	bra	L029388
L029368:
	move.b	#$50,d0
	bra	L029388
L02936e:
	move.b	#$4e,d0
	bra	L029388
L029374:
	subi.b	#$2f,d0
	bra	L029388
L02937a:
	subi.b	#$36,d0
	bra	L029388
L029380:
	subi.b	#$2d,d0
	bra.w	L029388
L029388:
	move.b	d0,(a1)+
	bra	L02932a
L02938c:
	move.b	#$ff,(a1)+
	rts

L029392:
	bsr	L0294c8
	btst.b	#$00,(L0481e4)
	bne	L0293b6
	btst.b	#$01,(L0481e4)
	bne	L0293b6
	btst.b	#$07,(L0481e4)
	bne	L0293b6
	bra	L0293ce
L0293b6:
	move.w	(L048abc),d0
	andi.w	#$0001,d0
	eori.w	#$0001,d0
	move.w	d0,(L048abc)
	bsr	L0292b2
L0293ce:
	move.w	(L048abc),d0
	add.w	d0,d0
	move.w	(L0293de,pc,d0.w),d0
	jmp	(L0293de,pc,d0.w)

L0293de:
	.dc.w	L0293e2-L0293de
	.dc.w	L02948c-L0293de

L0293e2:
	btst.b	#$03,(L0481e4)
	beq	L029416
	move.w	(L048abe),d0
	addq.w	#1,d0
	move.w	d0,(L048abe)
	asl.w	#5,d0
	lea.l	(L029617),a0
	cmpi.b	#$ff,(a0,d0.w)
	bne	L029412
	move.w	#$0000,(L048abe)
L029412:
	bsr	L0292ee
L029416:
	btst.b	#$02,(L0481e4)
	beq	L029452
	move.w	(L048abe),d0
	subq.w	#1,d0
	move.w	d0,(L048abe)
	bpl	L02944e
	move.w	#$ffe0,d0
	lea.l	(L029617),a0
L02943a:
	addi.w	#$0020,d0
	cmpi.b	#$ff,($20,a0,d0.w)
	bne	L02943a
	lsr.w	#5,d0
	move.w	d0,(L048abe)
L02944e:
	bsr	L0292ee
L029452:
	btst.b	#$06,(L0481e4)
	bne	L029470
	btst.b	#$05,(L0481e4)
	bne	L029470
	btst.b	#$04,(L0481e4)
	beq	L02948a
L029470:
	move.w	(L048abe),d0
	lea.l	(L029617),a0
	asl.w	#5,d0
	move.b	(a0,d0.w),d0
	andi.l	#$000000ff,d0
	trap	#0
L02948a:
	rts

L02948c:
	btst.b	#$06,(L0481e4)
	bne	L0294aa
	btst.b	#$05,(L0481e4)
	bne	L0294aa
	btst.b	#$04,(L0481e4)
	beq	L0294b6
L0294aa:
	jsr	(L03ee2a)
	addq.w	#1,(L0472f0)
L0294b6:
	rts

L0294b8:
	neg.w	d7
	move.b	d0,($09,a1,d7.w)
	neg.w	d7
	rts

L0294c2:
	move.b	d0,($0c,a1,d7.w)
	rts

L0294c8:
	jsr	(L03ee64)
	lea.l	(L0463ee),a0
	lea.l	(L048adc),a1
	lea.l	($00e06c05),a2
	lea.l	($00e00000),a4
	lea.l	($00e20000),a5
	lea.l	($00e0ff10),a6
	move.w	(L0472f6),d2
	andi.w	#$0003,d2
	moveq.l	#$00,d7
L0294fe:
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.b	(a0,d7.w),d0
	add.b	d0,d0
	neg.b	d0
	move.b	(a6,d7.w),d1
	cmpi.b	#$40,d1
	beq	L02952e
	add.b	d1,d1
	bmi	L029522
	bsr	L0294b8
	mulu.w	d1,d0
	lsr.w	#7,d0
	bsr	L0294c2
	bra	L029532
L029522:
	neg.b	d1
	bsr	L0294c2
	mulu.w	d1,d0
	lsr.w	#7,d0
	bsr	L0294b8
	bra	L029532
L02952e:
	bsr	L0294c2
	bsr	L0294b8
L029532:
	addq.w	#1,d7
	cmpi.w	#$000a,d7
	bne	L0294fe
	moveq.l	#$00,d7
L02953c:
	move.b	(a1),d0
	move.b	($0020,a1),d1
	beq	L029554
	tst.w	d2
	bne	L029554
	cmpi.b	#$20,d1
	bcs	L029552
	subi.b	#$1f,d1
L029552:
	subq.b	#1,d1
L029554:
	move.b	d1,($0020,a1)
	asl.b	#3,d1
	cmp.b	(a1),d1
	bcc	L02956a
	move.b	(a1),d1
	lsr.b	#3,d1
	ori.w	#$00e0,d1
	move.b	d1,($0020,a1)
L02956a:
	movea.l	a2,a3
	moveq.l	#$00,d1
	lsr.b	#3,d0
	andi.w	#$001f,d0
	beq	L029592
	subq.w	#1,d0
L029578:
	addq.w	#1,d1
	cmpi.w	#$0018,d1
	bne	L029586
	adda.l	#$00020000,a3
L029586:
	move.b	#$7e,(a3)
	lea.l	(-$0100,a3),a3
	dbra	d0,L029578
L029592:
	move.l	a3,d0
	andi.l	#$0001ffff,d0
L02959a:
	move.b	#$00,(a4,d0.l)
	move.b	#$00,(a5,d0.l)
	subi.l	#$00000100,d0
	addq.w	#1,d1
	cmpi.w	#$0022,d1
	bne	L02959a
	move.b	($0020,a1),d0
	andi.l	#$0000001f,d0
	beq	L0295d8
	move.w	d0,d1
	asl.l	#8,d0
	neg.l	d0
	cmpi.w	#$0018,d1
	bcs	L0295d2
	add.l	#$00020000,d0
L0295d2:
	move.b	#$7e,(a2,d0.l)
L0295d8:
	addq.l	#1,a1
	addq.l	#1,a2
	addq.w	#1,d7
	cmpi.w	#$0016,d7
	bne	L02953c
	rts

L0295e8:
	.dc.b	$1d,$19,$1f,$18,$0e,$00,$1e,$0f
	.dc.b	$1d,$1e,$00,$17,$19,$0e,$0f,$ff
L0295f8:
	.dc.b	$17,$1f,$1d,$13,$0d,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$ff,$1d,$0f,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$ff
L029612:
	.dc.b	$0f,$22,$13,$1e,$ff
L029617:
	.dc.b	$f0
L029618:
	.dc.b	$4d,$55,$53,$49,$43,$20,$53,$54
	.dc.b	$4f,$50,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$be
	.dc.b	$42,$6c,$61,$63,$6b,$20,$4d,$61
	.dc.b	$73,$73,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b0
	.dc.b	$53,$6f,$6d,$65,$74,$68,$69,$6e
	.dc.b	$67,$20,$4c,$6f,$6f,$70,$79,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$bb
	.dc.b	$56,$61,$6d,$70,$69,$72,$65,$20
	.dc.b	$4b,$69,$6c,$6c,$65,$72,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b3
	.dc.b	$54,$68,$72,$61,$73,$68,$61,$72
	.dc.b	$64,$20,$49,$6e,$20,$54,$68,$65
	.dc.b	$20,$43,$61,$76,$65,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b2
	.dc.b	$57,$69,$63,$68,$65,$64,$20,$43
	.dc.b	$68,$69,$6c,$64,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$c5
	.dc.b	$42,$6c,$6f,$6f,$64,$79,$20,$54
	.dc.b	$65,$61,$72,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b5
	.dc.b	$54,$68,$65,$20,$54,$6f,$77,$65
	.dc.b	$72,$20,$4f,$66,$20,$47,$65,$61
	.dc.b	$72,$73,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$c1
	.dc.b	$4d,$4f,$4f,$4e,$2d,$46,$49,$47
	.dc.b	$48,$54,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b4
	.dc.b	$54,$68,$65,$20,$54,$6f,$77,$65
	.dc.b	$72,$20,$4f,$66,$20,$44,$6f,$6c
	.dc.b	$6c,$73,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$ba
	.dc.b	$45,$74,$75,$64,$65,$20,$46,$6f
	.dc.b	$72,$20,$54,$68,$65,$20,$4b,$69
	.dc.b	$6c,$6c,$65,$72,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$bc
	.dc.b	$54,$68,$65,$6d,$65,$20,$4f,$66
	.dc.b	$20,$53,$69,$6d,$6f,$6e,$20,$42
	.dc.b	$65,$6c,$6d,$6f,$6e,$64,$6f,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b6
	.dc.b	$43,$72,$65,$61,$74,$75,$72,$65
	.dc.b	$73,$20,$49,$6e,$20,$54,$68,$65
	.dc.b	$20,$44,$65,$70,$74,$68,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$b1
	.dc.b	$59,$6f,$75,$20,$47,$6f,$64,$64
	.dc.b	$61,$6d,$6e,$65,$64,$20,$42,$61
	.dc.b	$74,$68,$65,$61,$64,$21,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$c0
	.dc.b	$4c,$4f,$41,$44,$20,$42,$47,$4d
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$bd
	.dc.b	$47,$41,$4d,$45,$20,$4f,$56,$45
	.dc.b	$52,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$20,$20
	.dc.b	$20,$20,$20,$20,$20,$20,$ff,$ff

L029818:
	bsr	L0298a6
	bcc	L0298c2
	movem.l	d0,-(a7)
	move.w	#$0024,d0
	bsr	L02986a
	bcc	L02983c
	move.w	#$000f,d0
	bsr	L02986a
	bcc	L02983c
	bsr	L0298e2
	ori.b	#$01,ccr
L02983c:
	movem.l	(a7)+,d0
	rts

L029842:
	bsr	L0298e2
	bcc	L0298fe
	movem.l	d0,-(a7)
	move.w	#$000f,d0
	bsr	L029888
	bcc	L029864
	move.w	#$0010,d0
	bsr	L029888
	bcc	L029864
	bsr	L0298a6
	ori.b	#$01,ccr
L029864:
	movem.l	(a7)+,d0
	rts

L02986a:
	lea.l	(L0474e0),a0
L029870:
	cmp.w	($0000.w,a0),d0
	beq	L029886
	lea.l	($0030,a0),a0
	cmpa.l	#L047ae0,a0
	bne	L029870
	ori.b	#$01,ccr
L029886:
	rts

L029888:
	lea.l	(L047ae0),a0
L02988e:
	cmp.w	($0000.w,a0),d0
	beq	L0298a4
	lea.l	($0030,a0),a0
	cmpa.l	#L047f60,a0
	bne	L02988e
	ori.b	#$01,ccr
L0298a4:
	rts

L0298a6:
	lea.l	(L0474e0),a0
L0298ac:
	tst.w	($0000.w,a0)
	beq	L0298c2
	lea.l	($0030,a0),a0
	cmpa.l	#L047ae0,a0
	bne	L0298ac
	ori.b	#$01,ccr
L0298c2:
	rts

L0298c4:
	lea.l	(L047ab0),a0
L0298ca:
	tst.w	($0000.w,a0)
	beq	L0298e0
	lea.l	(-$0030,a0),a0
	cmpa.l	#L0474e0,a0
	bcc	L0298ca
	ori.b	#$01,ccr
L0298e0:
	rts

L0298e2:
	lea.l	(L047ae0),a0
L0298e8:
	tst.w	($0000.w,a0)
	beq	L0298fe
	lea.l	($0030,a0),a0
	cmpa.l	#L047f60,a0
	bne	L0298e8
	ori.b	#$01,ccr
L0298fe:
	rts

L029900:
	lea.l	(L047f30),a0
L029906:
	tst.w	($0000.w,a0)
	beq	L02991c
	lea.l	(-$0030,a0),a0
	cmpa.l	#L047ae0,a0
	bcc	L029906
	ori.b	#$01,ccr
L02991c:
	rts

L02991e:
	lea.l	(L047360),a0
L029924:
	tst.w	($0000.w,a0)
	beq	L02993a
	lea.l	($0030,a0),a0
	cmpa.l	#L0473f0,a0
	bne	L029924
	ori.b	#$01,ccr
L02993a:
	rts

L02993c:
	move.w	(L047f68),d0
	add.w	d0,($0004,a0)
	move.w	(L047f6c),d0
	add.w	d0,($0008,a0)
	bsr	L0299b0
	rts

L029954:
	move.l	($0004,a0),d0
	add.l	($000c,a0),d0
	add.l	(L047f68),d0
	move.l	d0,($0004,a0)
	move.l	($0008,a0),d0
	add.l	($0010,a0),d0
	add.l	(L047f6c),d0
	move.l	d0,($0008,a0)
	bsr	L0299b0
	rts

L02997c:
	move.b	($000c,a0),d0
	jsr	(L01032e)
	move.w	($0010,a0),d2
	asr.w	#6,d2
	muls.w	d2,d0
	muls.w	d2,d1
	add.l	($0004,a0),d0
	add.l	(L047f68),d0
	move.l	d0,($0004,a0)
	add.l	($0008,a0),d1
	add.l	(L047f6c),d1
	move.l	d1,($0008,a0)
	bsr	L0299b0
	rts

L0299b0:
	cmpi.w	#$000a,(L04735a)
	bne	L0299c0
	andi.w	#$01ff,($0008,a0)
L0299c0:
	rts

L0299c2:
	move.w	($0008,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$fec0,d0
	bcs	L0299dc
	move.w	($0004,a0),d0
	subi.w	#$0100,d0
	cmpi.w	#$ff00,d0
L0299dc:
	rts

L0299de:
	bsr	L029a10
	bcs	L0299dc
L0299e2:
	tst.w	(L04735a)
	bpl	L029a02
	btst.b	#$02,(L04735d)
	beq	L029a02
	move.w	($0004,a0),d0
	subi.w	#$0200,d0
	cmpi.w	#$fd00,d0
	rts

L029a02:
	move.w	($0004,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	rts

L029a10:
	tst.w	(L04735a)
	bmi	L029a30
	btst.b	#$02,(L04735d)
	beq	L029a30
	move.w	($0008,a0),d0
	subi.w	#$0200,d0
	cmpi.w	#$fd00,d0
	rts

L029a30:
	move.w	($0008,a0),d0
	subi.w	#$0180,d0
	cmpi.w	#$fe00,d0
	rts

L029a3e:
	move.b	($001a,a0),d0
	andi.b	#$3f,d0
	beq	L029a66
	moveq.l	#$01,d1
	sub.b	d0,($001b,a0)
	bhi	L029a58
	clr.b	($001b,a0)
	ori.b	#$04,d1
L029a58:
	andi.b	#$80,($001a,a0)
	beq	L029a64
	ori.b	#$02,d1
L029a64:
	move.w	d1,ccr
L029a66:
	rts

L029a68:
	movem.l	d0-d7/a0-a6,-(a7)
	move.l	d0,(L048208)
	moveq.l	#$00,d0
	add.b	d0,d0
	lea.l	(L04820c),a0
	lea.l	(L04734c),a1
	abcd.b	-(a0),-(a1)
	abcd.b	-(a0),-(a1)
	abcd.b	-(a0),-(a1)
	abcd.b	-(a0),-(a1)
	cmpi.b	#$0a,(a1)
	bcs	L029a9a
	move.l	#$09999999,(L047348)
L029a9a:
	move.l	(L047348),d0
	cmp.l	(L04734c),d0
	bcs	L029aec
	move.w	(L047352),d0
	addq.w	#1,d0
	cmpi.w	#$0063,d0
	bcs	L029aba
	move.w	#$0063,d0
L029aba:
	move.w	d0,(L047352)
	moveq.l	#$0b,d0
	trap	#0
	move.l	#$00070000,(L048208)
	moveq.l	#$00,d0
	add.b	d0,d0
	lea.l	(L04820c),a0
	lea.l	(L047350),a1
	abcd.b	-(a0),-(a1)
	abcd.b	-(a0),-(a1)
	abcd.b	-(a0),-(a1)
	abcd.b	-(a0),-(a1)
	jsr	(L0419e4)
L029aec:
	jsr	(L0419b2)
	movem.l	(a7)+,d0-d7/a0-a6
	rts

L029af8:
	movem.l	d0-d7/a0-a6,-(a7)
	bra	L029aec
L029afe:
	subi.w	#$0010,d0
	bcs	L029b1e
	add.w	d0,d0
	lea.l	(L013486),a1
	move.w	(a1,d0.w),d0
	andi.l	#$0000ffff,d0
	asl.l	#4,d0
	jsr	(L029a68)
L029b1e:
	rts

L029b20:
	move.w	#$0000,($001c,a0)
	move.w	#$0028,($001e,a0)
	move.l	#L06e442,($0014,a0)
	move.w	#$0000,($0018,a0)
	movem.l	d0-d1/a0-a1,-(a7)
	move.w	($0000.w,a0),d0
	bsr	L029afe
	move.w	#$000f,($0000.w,a0)
	move.w	($0002,a0),d0
	move.w	#$2000,($0002,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	andi.w	#$0300,d0
	cmp.w	#$0300,d0
	bne	L029b7c
	jsr	(L01024e)
	andi.w	#$001f,d0
	beq	L029c58
L029b7c:
	movem.l	(a7)+,d0-d1/a0-a1
	rts

L029b82:
	move.w	#$0000,($001c,a0)
	move.w	#$0028,($001e,a0)
	move.l	#L06e442,($0014,a0)
	move.w	#$0000,($0018,a0)
	bra	L029bbc
L029b9e:
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	bra	L029bbc
L029bac:
	move.w	#$0002,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	d0,($001a,a0)
L029bbc:
	movem.l	d0-d1/a0-a1,-(a7)
	move.w	($0000.w,a0),d0
	bsr	L029afe
	move.w	#$000f,($0000.w,a0)
	move.w	($0002,a0),d0
	move.w	#$2000,($0002,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	andi.w	#$0300,d0
	cmp.w	#$0300,d0
	bne	L029c00
	jsr	(L01024e)
	move.w	d0,d1
	andi.w	#$00e0,d1
	beq	L029c40
L029c00:
	movem.l	(a7)+,d0-d1/a0-a1
	rts

L029c06:
	move.w	#$0001,($001c,a0)
	move.w	#$0040,($001e,a0)
	movem.l	d0-d1/a0-a1,-(a7)
	move.w	d0,-(a7)
	move.w	($0000.w,a0),d0
	bsr	L029afe
	move.w	(a7)+,d0
	move.w	#$000f,($0000.w,a0)
	move.w	#$2000,($0002,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00000000,($0010,a0)
	bra	L029c74
L029c40:
	move.w	d0,d1
	andi.w	#$001f,d1
	cmpi.w	#$0006,d1
	bcs	L029c6c
	cmpi.w	#$001e,d1
	bcc	L029c5e
	cmpi.w	#$001c,d1
	bcc	L029c64
L029c58:
	move.w	#$0009,d0
	bra	L029c74
L029c5e:
	move.w	#$000a,d0
	bra	L029c74
L029c64:
	move.w	d1,d0
	add.w	#$ffef,d0
	bra	L029c74
L029c6c:
	move.w	d1,d0
	addq.w	#3,d0
	bra.w	L029c74
L029c74:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L029cc4
	move.w	#$000e,($0000.w,a0)
	move.w	#$0200,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.w	($0004,a1),($0004,a0)
	move.w	($0008,a1),($0008,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00008000,($0010,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$0000,($0024,a0)
	jsr	(L013dbe)
L029cc4:
	movem.l	(a7)+,d0-d1/a0-a1
	rts

L029cca:
	clr.w	($0000.w,a0)
	clr.w	($0002,a0)
	rts

L029cd4:
	moveq.l	#$00,d3
	move.b	($0004,a6),d3
	add.w	d3,d3
	swap.w	d3
	btst.b	#$02,(L04735d)
	beq	L029d06
	tst.w	(L04735a)
	bmi	L029cf8
	move.l	(L0470f2),d2
	bra	L029cfe
L029cf8:
	move.l	(L0470ee),d2
L029cfe:
	andi.l	#$01ff0000,d2
	sub.l	d2,d3
L029d06:
	jsr	(L029d18)
	tst.w	(L04735a)
	bpl	L029d16
	exg.l	d2,d3
L029d16:
	rts

L029d18:
	moveq.l	#$00,d2
	move.w	($0000.w,a6),d2
	sub.w	(L047f7a),d2
	swap.w	d2
	rts

L029d28:
	move.b	#$00,d2
L029d2c:
	add.b	d2,d1
	tst.b	($001f,a0)
	beq	L029d3a
	subq.b	#1,($001f,a0)
	bne	L029d54
L029d3a:
	move.b	($0019,a0),d0
	addq.b	#1,d0
	cmp.b	d1,d0
	bcs	L029d46
	move.b	d2,d0
L029d46:
	move.b	d0,($0019,a0)
	andi.w	#$00ff,d0
	move.b	(a1,d0.w),($001f,a0)
L029d54:
	rts

L029d56:
	.dc.b	$01,$01,$01,$01,$01,$01,$01,$01
	.dc.b	$02,$02,$02,$02,$02,$02,$02,$02
	.dc.b	$03,$03,$03,$03,$03,$03,$03,$03
L029d6e:
	.dc.b	$04,$04,$04,$04,$04,$04,$04,$04
	.dc.b	$06,$06,$06,$06,$06,$06,$06,$06
	.dc.b	$08,$08,$08,$08,$08,$08,$08,$08

L029d86:
	cmpi.w	#$0300,(L0470f2)
	bne	L029e0e
	lea.l	(L05bbdc),a1
	ori.w	#$0100,d0
	jsr	(L029cd4)
	moveq.l	#$00,d5
	moveq.l	#$00,d6
	move.w	#$0007,d7
L029da8:
	jsr	(L0298a6)
	bcs	L029e16
	move.l	a0,(a1)+
	move.w	#$000b,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	d5,($000c,a0)
	move.l	d5,($0010,a0)
	move.l	#L071b50,($0014,a0)
	move.w	#$0007,($0018,a0)
	move.w	#$0001,($001a,a0)
	move.w	d6,($001c,a0)
	move.w	#$0080,($001e,a0)
	move.l	d5,($0020,a0)
	move.l	d5,($0024,a0)
	move.l	d5,($0028,a0)
	move.l	d5,($002c,a0)
	addq.w	#1,d6
	dbra	d7,L029da8
	lea.l	(L05bbdc),a1
	movea.l	(a1)+,a0
	move.w	#$0091,($0000.w,a0)
L029e0e:
	move.w	d5,(L02a0a2)
	rts

L029e16:
	cmpi.w	#$0007,d7
	beq	L029e26
	movea.l	-(a1),a0
	clr.l	($0000.w,a0)
	addq.w	#1,d7
	bra	L029e16
L029e26:
	rts

L029e28:
	moveq.l	#$ff,d7
	lea.l	(L05bbfc),a1
	bra	L029e16
L029e32:
	lea.l	(L05bbdc),a1
	move.l	(L047f68),d0
	move.l	(L047f6c),d1
	move.w	#$0007,d7
L029e48:
	movea.l	(a1)+,a2
	add.l	d0,($0004,a2)
	add.l	d1,($0008,a2)
	dbra	d7,L029e48
	rts

L029e58:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a1
	move.w	#$0007,d7
L029e64:
	movea.l	(a1)+,a0
	move.w	($001e,a0),d0
	subi.b	#$44,d0
	lsr.w	#3,d0
	andi.w	#$000f,d0
	cmpi.w	#$000f,d0
	bne	L029e7c
	clr.w	d0
L029e7c:
	move.w	d0,($0018,a0)
	jsr	(L025416)
	dbra	d7,L029e64
	movea.l	(a7)+,a0
	rts

L029e8e:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a1
	lea.l	(L047fc0),a2
	movea.l	(a1)+,a0
	move.w	#$0006,d7
L029ea2:
	movea.l	a0,a3
	movea.l	(a1)+,a0
	move.l	($0028,a0),d0
	move.l	($002c,a0),d1
	add.l	($0020,a0),d0
	add.l	($0024,a0),d1
	move.l	d0,($0020,a0)
	move.l	d1,($0024,a0)
	move.l	($0020,a3),d2
	move.l	($0024,a3),d3
	sub.l	d2,d0
	sub.l	d3,d1
	asr.l	#6,d0
	asr.l	#6,d1
	move.l	d0,(a2)+
	move.l	d1,(a2)+
	dbra	d7,L029ea2
	lea.l	(L05bbe0),a1
	lea.l	(L047fc0),a2
	move.l	(a2)+,d0
	move.l	(a2)+,d1
	move.w	#$0005,d7
L029eea:
	movea.l	(a1)+,a0
	move.l	($0020,a0),d2
	move.l	($0024,a0),d3
	sub.l	d0,d2
	sub.l	d1,d3
	move.l	(a2)+,d0
	move.l	(a2)+,d1
	add.l	d0,d2
	add.l	d1,d3
	move.l	d2,($0020,a0)
	move.l	d3,($0024,a0)
	dbra	d7,L029eea
	movea.l	(a1)+,a0
	sub.l	d0,($0020,a0)
	sub.l	d1,($0024,a0)
	movea.l	(a7)+,a0
	rts

L029f1a:
	move.l	a0,-(a7)
	lea.l	(L05bbe0),a1
	moveq.l	#$00,d6
	move.w	#$0006,d7
L029f28:
	movea.l	(a1)+,a0
	move.b	($001a,a0),d0
	beq	L029f48
	addq.w	#1,d6
	move.l	#$00004000,d1
	tst.b	d0
	bpl	L029f3e
	neg.l	d1
L029f3e:
	add.l	d1,($0028,a0)
	moveq.l	#$00,d0
	move.b	d0,($001a,a0)
L029f48:
	dbra	d7,L029f28
	movea.l	(a7)+,a0
	tst.w	d6
	beq	L029f62
	tst.w	(L02a0a2)
	bne	L029f62
	move.w	#$0011,(L02a0a2)
L029f62:
	rts

L029f64:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a1
	lea.l	(L047fc0),a2
	movea.l	(a1)+,a0
	move.w	#$0006,d7
L029f78:
	move.w	d7,-(a7)
	movea.l	a0,a3
	movea.l	(a1)+,a0
	move.l	($0020,a0),d2
	move.l	($0024,a0),d3
	add.l	($000c,a0),d2
	add.l	($0010,a0),d3
	add.l	($0004,a0),d2
	add.l	($0008,a0),d3
	addi.l	#$00100000,d3
	move.l	($0004,a3),d0
	move.l	($0008,a3),d1
	move.l	#$00008000,d4
	add.l	d4,d0
	add.l	d4,d1
	add.l	d4,d2
	add.l	d4,d3
	swap.w	d0
	swap.w	d1
	swap.w	d2
	swap.w	d3
	jsr	(L010280)
	move.w	d0,($001e,a0)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	move.l	d0,d2
	move.l	d1,d3
	asl.l	#4,d2
	asl.l	#4,d3
	move.l	d2,d4
	move.l	d3,d5
	add.l	d2,d2
	add.l	d3,d3
	add.l	d4,d2
	add.l	d5,d3
	move.l	d2,(a2)+
	move.l	d3,(a2)+
	move.w	(a7)+,d7
	dbra	d7,L029f78
	movea.l	(a7)+,a0
	rts

L029ff0:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a1
	lea.l	(L047fc0),a2
	movea.l	(a1)+,a0
	moveq.l	#$00,d0
	move.l	#$000c0000,d1
	move.w	#$0006,d7
L02a00c:
	movea.l	a0,a3
	movea.l	(a1)+,a0
	add.l	($0004,a3),d0
	add.l	($0008,a3),d1
	move.l	d0,d2
	move.l	d1,d3
	sub.l	($0004,a0),d2
	sub.l	($0008,a0),d3
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	move.l	d2,($000c,a0)
	move.l	d3,($0010,a0)
	move.l	(a2)+,d0
	move.l	(a2)+,d1
	dbra	d7,L02a00c
	movea.l	(a7)+,a0
	rts

L02a040:
	lea.l	(L05bbe0),a1
	move.w	#$0006,d7
L02a04a:
	movea.l	(a1)+,a2
	move.l	($0020,a2),d0
	asr.l	#8,d0
	sub.l	d0,($0020,a2)
	asr.l	#1,d0
	sub.l	d0,($0028,a2)
	dbra	d7,L02a04a
	rts

L02a062:
	bsr	L029e32
	jsr	(L0299de)
	bcs	L029e28
	bsr	L029e8e
	bsr	L02a040
	bsr	L029f1a
	bsr	L029f64
	bsr	L029ff0
	bsr	L029e58
	move.w	(L02a0a2),d0
	beq	L02a0a0
	subq.w	#1,d0
	move.w	d0,(L02a0a2)
	andi.w	#$0003,d0
	bne	L02a0a0
	moveq.l	#$12,d0
	trap	#0
L02a0a0:
	rts

L02a0a2:
	.dc.w	$0000

L02a0a4:
	tst.b	($0006,a6)
	beq	L02a0c4
	jsr	(L029900)
	bcs	L02a1c0
	move.w	#$000b,($0000.w,a0)
	movea.l	a0,a1
	jsr	(L029900)
	bra	L02a0dc
L02a0c4:
	jsr	(L0298c4)
	bcs	L02a1c0
	move.w	#$000b,($0000.w,a0)
	movea.l	a0,a1
	jsr	(L0298c4)
L02a0dc:
	bcs	L02a1c2
	move.w	#$0092,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$0070,d0
	swap.w	d0
	move.l	d0,($0008,a0)
	clr.l	($0010,a0)
	move.b	($0005,a6),d0
	beq	L02a114
	subq.b	#1,d0
	beq	L02a138
	bra	L02a11c
L02a114:
	tst.w	(L047408)
	bpl	L02a138
L02a11c:
	move.l	#$01100000,($0004,a0)
	move.l	#$ffff0000,($000c,a0)
	clr.w	($0018,a0)
	bset.b	#$07,($0024,a0)
	bra	L02a154
L02a138:
	move.l	#$fffe7960,($0004,a0)
	move.l	#$00010000,($000c,a0)
	move.w	#$8000,($0018,a0)
	bclr.b	#$07,($0024,a0)
L02a154:
	move.l	#L071bc8,($0014,a0)
	move.w	#$0003,($001a,a0)
	clr.w	($001c,a0)
	jsr	(L01024e)
	move.w	d0,($001e,a0)
	move.l	a1,($0020,a0)
	clr.w	($0024,a0)
	move.w	#$0600,($0026,a0)
	move.w	#$0001,($0028,a0)
	clr.w	($002a,a0)
	tst.b	($0006,a6)
	beq	L02a194
	bset.b	#$05,($0024,a0)
L02a194:
	move.b	($0007,a6),($002e,a0)
	clr.w	($0002,a1)
	moveq.l	#$00,d0
	move.l	d0,($000c,a1)
	move.l	d0,($0010,a1)
	move.l	#L071bc8,($0014,a1)
	move.w	#$0008,($0018,a1)
	move.w	#$0001,($001a,a1)
	move.l	d0,($001c,a1)
L02a1c0:
	rts

L02a1c2:
	clr.l	($0000.w,a1)
	rts

L02a1c8:
	movea.l	($0020,a0),a1
	moveq.l	#$00,d0
	move.l	d0,($0000.w,a0)
	move.l	d0,($0000.w,a1)
L02a1d6:
	btst.b	#$06,($0024,a0)
	beq	L02a1e4
	subq.w	#1,(L047fb4)
L02a1e4:
	rts

L02a1e6:
	move.w	($0028,a0),d3
	cmpi.w	#$0001,d3
	beq	L02a1fe
	move.l	a0,-(a7)
	movea.l	($0020,a0),a0
	jsr	(L025404)
	movea.l	(a7)+,a0
L02a1fe:
	move.w	($0028,a0),d3
	jsr	(L025404)
	rts

L02a20a:
	.dc.w	$0015
L02a20c:
	.dc.w	$0001,$0015,$0000,$0015
	.dc.w	$ffff,$001d,$0001,$001d
	.dc.w	$0000,$001d,$ffff

L02a222:
	moveq.l	#$00,d0
	move.b	($0019,a0),d0
	subq.w	#2,d0
	bmi	L02a256
	lsl.w	#2,d0
	move.w	(L02a20a,pc,d0.w),d1
	move.w	(L02a20c,pc,d0.w),d2
	move.b	($0018,a0),d0
	bmi	L02a23e
	neg.w	d1
L02a23e:
	add.w	($0004,a0),d1
	add.w	($0008,a0),d2
	movea.l	($0020,a0),a1
	move.w	d1,($0004,a1)
	move.w	d2,($0008,a1)
	move.b	d0,($0018,a1)
L02a256:
	rts

L02a258:
	subq.b	#1,($0026,a0)
	bne	L02a27a
	move.b	($0027,a0),d0
	addq.b	#1,d0
	andi.w	#$0003,d0
	move.b	d0,($0027,a0)
	add.b	d0,d0
	move.b	(a2,d0.w),($0019,a0)
	move.b	($01,a2,d0.w),($0026,a0)
L02a27a:
	rts

L02a27c:
	move.l	(L047f68),d2
	move.l	(L047f6c),d3
	tst.w	($001c,a0)
	bne	L02a292
	asr.l	#3,d2
	asr.l	#3,d3
L02a292:
	add.l	d2,d0
	add.l	d3,d1
	add.l	d0,($0004,a0)
	add.l	d1,($0008,a0)
	rts

L02a2a0:
	movea.l	($0020,a0),a1
	ori.w	#$0300,($0002,a0)
	ori.w	#$0200,($0002,a1)
	rts

L02a2b2:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#3,d0
	asl.l	#3,d1
	rts

L02a2d0:
	cmpi.w	#$0c90,(L0470ee)
	bcs	L02a2e0
	bset.b	#$04,($0024,a0)
L02a2e0:
	move.b	($002e,a0),d0
	beq	L02a2ee
	subq.b	#1,d0
	move.b	d0,($002e,a0)
	rts

L02a2ee:
	jsr	(L029a3e)
	bcc	L02a324
	bne	L02a30e
	movea.l	($0020,a0),a1
	clr.l	($0000.w,a1)
	moveq.l	#$39,d0
	trap	#0
	bsr	L02a1d6
	jmp	(L029b9e)

L02a30e:
	movea.l	($0020,a0),a1
	andi.w	#$00ff,($0002,a0)
	andi.w	#$00ff,($0002,a1)
	move.w	#$000a,($002a,a0)
L02a324:
	move.w	($002a,a0),d0
	beq	L02a35c
	subq.w	#1,d0
	move.w	d0,($002a,a0)
	bne	L02a338
	bsr	L02a2a0
	bra	L02a35c
L02a338:
	cmpi.w	#$0001,($001c,a0)
	beq	L02a35a
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	bsr	L02a27c
	bsr	L02a222
	bsr	L02a1e6
	jsr	(L0299de)
	bcs	L02a1c8
L02a35a:
	rts

L02a35c:
	tst.w	(L047fac)
	bne	L02a338
	cmpi.w	#$0001,($001c,a0)
	beq	L02a382
	move.l	($000c,a0),d0
	move.l	($0010,a0),d1
	bsr	L02a27c
	jsr	(L0299de)
	bcs	L02a1c8
L02a382:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02a396,pc,d0.w),d0
	jsr	(L02a396,pc,d0.w)
	bsr	L02a1e6
	rts

L02a396:
	.dc.w	L02a3a0-L02a396
	.dc.w	L02a41e-L02a396
	.dc.w	L02a466-L02a396
	.dc.w	L02a510-L02a396
	.dc.w	L02a56e-L02a396

L02a3a0:
	btst.b	#$04,($0024,a0)
	beq	L02a3b0
	move.l	#$ffff0000,($000c,a0)
L02a3b0:
	move.w	($0004,a0),d1
	subi.w	#$0120,d1
	cmpi.w	#$fec0,d1
	bcs	L02a3fe
	jsr	(L01024e)
	andi.w	#$00ff,d0
	addi.w	#$0200,d0
	add.w	d0,($001e,a0)
	move.b	($001e,a0),d0
	andi.w	#$00ff,d0
	jsr	(L010440)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($0010,a0)
	move.b	($0026,a0),d0
	subq.b	#1,d0
	bne	L02a3f8
	eori.w	#$0001,($0018,a0)
	move.b	#$06,d0
L02a3f8:
	move.b	d0,($0026,a0)
	rts

L02a3fe:
	btst.b	#$05,($0024,a0)
	bne	L02a1c8
	addq.w	#1,($001c,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.w	#$0030,($001e,a0)
	rts

L02a41e:
	btst.b	#$04,($0024,a0)
	bne	L02a1c8
	subq.w	#1,($001e,a0)
	bne	L02a464
	addq.w	#1,($001c,a0)
	eori.w	#$8000,($0018,a0)
	move.b	#$02,($0019,a0)
	move.w	#$0400,($0026,a0)
	move.w	#$0003,($0028,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	subi.w	#$000f,d0
	move.w	d0,($002c,a0)
	bsr	L02a2a0
	bsr	L02a222
L02a464:
	rts

L02a466:
	btst.b	#$04,($0024,a0)
	beq	L02a478
	move.w	#$0004,($001c,a0)
	bra	L02a56e
L02a478:
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	sub.w	($002c,a0),d0
	subi.w	#$0010,d0
	cmpi.w	#$ffe0,d0
	bcs	L02a4d6
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	subi.w	#$0038,d0
	cmpi.w	#$ff90,d0
	bcs	L02a4d6
	move.w	(L047fb4),d0
	cmp.w	(L047354),d0
	bgt	L02a4d6
	addq.w	#1,d0
	move.w	d0,(L047fb4)
	bset.b	#$06,($0024,a0)
	addq.w	#1,($001c,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.w	#$1020,($001e,a0)
	bra	L02a500
L02a4d6:
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	move.w	#$0037,d4
	cmp.w	($0004,a0),d2
	blt	L02a4ee
	neg.w	d4
L02a4ee:
	add.w	d4,d2
	add.w	($002c,a0),d3
	bsr	L02a2b2
L02a4f8:
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
L02a500:
	lea.l	(L02a5a8),a2
	bsr	L02a258
	bsr	L02a222
	rts

L02a510:
	move.b	($001e,a0),d0
	beq	L02a536
	subq.w	#1,d0
	move.b	d0,($001e,a0)
	bne	L02a500
	move.l	#$00020000,d0
	tst.w	($0018,a0)
	bmi	L02a52c
	neg.l	d0
L02a52c:
	move.l	d0,($000c,a0)
	moveq.l	#$38,d0
	trap	#0
	bra	L02a500
L02a536:
	move.l	#$00001000,d0
	tst.w	($000c,a0)
	bmi	L02a544
	neg.l	d0
L02a544:
	add.l	d0,($000c,a0)
	subq.b	#1,($001f,a0)
	bne	L02a55e
	addq.w	#1,($001c,a0)
	subq.w	#1,(L047fb4)
	bclr.b	#$06,($0024,a0)
L02a55e:
	lea.l	(L02a5b0),a2
	bsr	L02a258
	bsr	L02a222
	rts

L02a56e:
	move.w	(L0473f4),d0
	move.w	(L0473f8),d1
	move.w	($0004,a0),d2
	move.w	($0008,a0),d3
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	bmi	L02a594
	neg.l	d1
L02a594:
	ext.l	d1
	bmi	L02a59a
	neg.l	d1
L02a59a:
	asl.l	#3,d0
	asl.l	#3,d1
	subi.l	#$00010000,d1
	bra	L02a4f8

L02a5a8:
	.dc.b	$02,$06,$03,$05,$04,$08,$03,$04
L02a5b0:
	.dc.b	$05,$04,$06,$03,$07,$06,$06,$02

L02a5b8:
	jsr	(L0298e2)
	bcc	L02a5d2
	jsr	(L0298c4)
	bcc	L02a5d2
	jsr	(L02991e)
	bcc	L02a5d2
	rts

L02a5d2:
	move.w	#$0093,($0000.w,a0)
	ori.w	#$0200,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L071ea0,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	#$0001,($001a,a0)
	move.l	d7,($001c,a0)
	moveq.l	#$00,d0
	move.b	($0005,a6),d0
	move.w	d0,($0020,a0)
	rts

L02a61a:
	jsr	(L02993c)
	jsr	(L03b0d4)
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02a648,pc,d0.w),d0
	jsr	(L02a648,pc,d0.w)
	move.w	#$ff90,d3
	jsr	(L0254d4)
	rts

L02a648:
	.dc.w	L02a650-L02a648
	.dc.w	L02a67a-L02a648
	.dc.w	L02a6d0-L02a648
	.dc.w	L02a6fc-L02a648

L02a650:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L02a65e
	neg.w	d0
L02a65e:
	cmpi.w	#$0040,d0
	bhi	L02a678
	addq.w	#1,($001c,a0)
	move.w	#$001c,($001e,a0)
	move.l	($0004,a0),($0022,a0)
	moveq.l	#$5b,d0
	trap	#0
L02a678:
	rts

L02a67a:
	move.l	(L047f68),d0
	add.l	d0,($0022,a0)
	move.w	($001e,a0),d0
	move.w	d0,d1
	andi.w	#$0003,d0
	bne	L02a69e
	movea.l	a0,a1
	moveq.l	#$01,d7
	bsr	L02a6fe
	addi.w	#$0010,($0008,a0)
	movea.l	a1,a0
L02a69e:
	subq.w	#1,($001e,a0)
	bne	L02a6b8
	addq.w	#1,($001c,a0)
	move.w	($0022,a0),($0004,a0)
	move.l	#$00030000,($0010,a0)
	rts

L02a6b8:
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L02a6c6
	subq.w	#1,d0
L02a6c6:
	add.w	($0022,a0),d0
	move.w	d0,($0004,a0)
	rts

L02a6d0:
	move.w	($0020,a0),d0
	cmp.w	($0008,a0),d0
	ble	L02a6e4
	addi.l	#$00002000,($0010,a0)
	rts

L02a6e4:
	addq.w	#1,($001c,a0)
	andi.w	#$00ff,($0002,a0)
	move.w	d0,($0008,a0)
	clr.l	($0010,a0)
	moveq.l	#$5f,d0
	trap	#0
	rts

L02a6fc:
	rts

L02a6fe:
	jsr	(L0298a6)
	bcs	L02a762
	move.w	#$0029,($0000.w,a0)
	clr.w	($001c,a0)
	clr.w	($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	asl.l	#1,d0
	move.l	d0,($000c,a0)
	jsr	(L01024e)
	ext.l	d0
	bmi	L02a73a
	neg.l	d0
L02a73a:
	subi.l	#$00008000,d0
	asl.l	d7,d0
	move.l	d0,($0010,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$000d,d1
	jsr	(L01024e)
	andi.w	#$8000,d0
	or.w	d0,d1
	move.w	d1,($0018,a0)
L02a762:
	rts

L02a764:
	.dc.w	$0000

L02a766:
	cmpi.w	#$0300,(L0470f2)
	bne	L02a816
	cmpi.w	#$07a0,(L0470ee)
	bgt	L02a816
	jsr	(L029cd4)
	ori.w	#$0200,d0
	moveq.l	#$00,d6
	moveq.l	#$00,d5
	moveq.l	#$00,d4
	move.w	#$000f,(L02a764)
	movea.l	d6,a1
	lea.l	(L05dbdc),a2
	move.w	#$000f,d7
	jsr	(L0298a6)
	bcs	L02a85e
L02a7ac:
	cmpi.w	#$0007,d7
	bne	L02a7be
	addi.l	#$00b00000,d2
	subi.l	#$00100000,d3
L02a7be:
	move.l	a0,(a2)+
	bsr	L02a818
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L02a85e
	move.l	a0,($0020,a1)
	addq.w	#5,d5
	addi.w	#$0020,d4
	addi.l	#$00020000,d3
	dbra	d7,L02a7ac
	move.l	d6,($0020,a1)
	lea.l	(L05dbdc),a2
	movea.l	(a2),a0
	move.w	#$0094,($0000.w,a0)
	move.w	#$8000,($0018,a0)
	move.w	#$0004,($0024,a0)
	move.l	a6,($0026,a0)
	move.w	d6,($002a,a0)
	movea.l	($0020,a2),a0
	move.w	d6,($0018,a0)
	move.w	#$0004,($0024,a0)
L02a816:
	rts

L02a818:
	bsr	L02a82e
	move.w	#$0007,($001a,a0)
	move.w	d5,($001e,a0)
	move.w	d4,($0024,a0)
	move.w	d6,($002e,a0)
	rts

L02a82e:
	move.w	#$000b,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	d6,($000c,a0)
	move.l	d6,($0010,a0)
	move.l	#L071ee8,($0014,a0)
	move.w	#$0005,($0018,a0)
	move.w	d6,($001c,a0)
	rts

L02a85c:
	movea.l	a1,a2
L02a85e:
	cmpa.l	#L05dbdc,a2
	beq	L02a86e
	movea.l	-(a2),a0
	clr.l	($0000.w,a0)
	bra	L02a85e
L02a86e:
	rts

L02a870:
	lea.l	(L05dbdc),a1
	moveq.l	#$00,d0
	move.w	(L02a764),d7
L02a87e:
	movea.l	(a1)+,a2
	move.l	d0,($0000.w,a2)
	dbra	d7,L02a87e
	rts

L02a88a:
	swap.w	d0
	add.w	(L047f7a),d0
	subi.w	#$07c4,d0
	swap.w	d0
	asr.l	#8,d0
	move.l	#$00060000,d1
	divu.w	d0,d1
	addi.w	#$00a0,d1
	rts

L02a8a8:
	lea.l	(L05dbdc),a1
	movea.l	a0,a2
	move.w	(L02a764),d7
L02a8b6:
	move.l	a2,(a1)+
	movea.l	($0020,a2),a2
	dbra	d7,L02a8b6
	rts

L02a8c2:
	move.l	(L047f68),d0
	move.l	(L047f6c),d1
	lea.l	(L05dbdc),a1
	move.w	(L02a764),d7
L02a8da:
	movea.l	(a1)+,a2
	add.l	d0,($0004,a2)
	add.l	d1,($0008,a2)
	dbra	d7,L02a8da
	rts

L02a8ea:
	lea.l	(L05dbdc),a2
	move.w	(L02a764),d7
L02a8f6:
	movea.l	(a2)+,a1
	move.w	($0004,a1),d1
	move.w	($0008,a1),d2
	move.w	($0018,a1),d0
	movea.l	($0014,a1),a5
	jsr	(L025426)
	dbra	d7,L02a8f6
	rts

L02a914:
	lea.l	(L05dbdc),a2
	move.w	(L02a764),d7
L02a920:
	move.w	d7,-(a7)
	movea.l	(a2)+,a0
	clr.l	($0000.w,a0)
	subi.w	#$0018,($0008,a0)
	move.w	#$0f1f,d0
	jsr	(L029bac)
	move.w	(a7)+,d7
	dbra	d7,L02a920
	rts

L02a940:
	move.w	#$000f,(L02a764)
	cmpi.w	#$0001,($002e,a0)
	beq	L02abb6
	move.w	#$000f,d7
	bsr	L02a8a8
	bsr	L02a8c2
	jsr	(L0299de)
	bcs	L02a870
	tst.w	(L047fac)
	bne	L02a97e
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02a984,pc,d0.w),d0
	jsr	(L02a984,pc,d0.w)
L02a97e:
	bsr	L02a8ea
	rts

L02a984:
	.dc.w	L02a988-L02a984
	.dc.w	L02aa46-L02a984

L02a988:
	tst.w	(L04731e)
	bne	L02a9e4
	move.w	(L047f7a),d0
	cmpi.w	#$07a0,d0
	bcs	L02a9e4
	addq.w	#1,($001c,a0)
	move.w	#$0016,(L04731e)
	lea.l	(L05dbfc),a1
	movea.l	(a1),a1
	move.w	#$0004,($0024,a0)
	move.w	#$0004,($0024,a1)
	move.b	#$00,($0019,a0)
	move.b	#$00,($0019,a1)
	movea.l	a0,a1
	moveq.l	#$03,d7
	bsr	L02a6fe
	bsr	L02a6fe
	bsr	L02a6fe
	bsr	L02a6fe
	movea.l	a1,a0
	moveq.l	#$4b,d0
	trap	#0
	rts

L02a9e4:
	cmpi.w	#$0780,d0
	bls	L02aa30
	subq.w	#1,($0024,a0)
	bne	L02aa30
	move.w	($002a,a0),d0
	addq.w	#1,d0
	andi.w	#$0003,d0
	bne	L02aa04
	move.w	d0,-(a7)
	moveq.l	#$27,d0
	trap	#0
	move.w	(a7)+,d0
L02aa04:
	move.w	d0,($002a,a0)
	move.b	(L02aa32,pc,d0.w),d1
	lea.l	(L05dbfc),a1
	movea.l	(a1),a1
	move.b	d1,($0019,a0)
	move.b	d1,($0019,a1)
	add.w	d0,d0
	move.w	(L02aa36,pc,d0.w),($0008,a0)
	move.w	(L02aa3e,pc,d0.w),($0008,a1)
	move.w	#$0004,($0024,a0)
L02aa30:
	rts

L02aa32:
	.dc.b	$00,$01,$00,$01
L02aa36:
	.dc.w	$00fe,$00fc,$00fc,$00fd
L02aa3e:
	.dc.w	$00f7,$00f6,$00fb,$00fe

L02aa46:
	move.l	($0004,a0),d0
	move.l	d0,d1
	add.l	(L047f7a),d1
	cmpi.l	#$08280000,d1
	bcs	L02aa86
	movea.l	a0,a1
	bsr	L02ab4e
	movea.l	a1,a0
	movea.l	($0026,a0),a1
	move.w	#$0000,($0002,a1)
	bsr	L02a914
	moveq.l	#$30,d0
	trap	#0
	moveq.l	#$3d,d0
	trap	#0
	move.l	#$00000100,d0
	jsr	(L029a68)
	rts

L02aa86:
	lea.l	(L05dbdc),a2
	movea.l	($0020,a2),a1
	move.b	($0019,a0),d0
	cmpi.b	#$04,d0
	beq	L02aab0
	subq.w	#1,($0024,a0)
	bne	L02aab0
	addq.b	#1,d0
	move.b	d0,($0019,a0)
	move.b	d0,($0019,a1)
	move.w	#$0004,($0024,a0)
L02aab0:
	move.w	#$0007,d7
L02aab4:
	movea.l	($0020,a2),a3
	movea.l	(a2)+,a1
	move.w	($001e,a1),d0
	beq	L02aac8
	subq.w	#1,d0
	move.w	d0,($001e,a1)
	bra	L02aaea
L02aac8:
	move.l	($0004,a1),d0
	addi.l	#$00028000,d0
	move.l	d0,($0004,a1)
	subi.l	#$00028000,($0004,a3)
	bsr	L02a88a
	move.w	d1,($0008,a1)
	move.w	d1,($0008,a3)
L02aaea:
	dbra	d7,L02aab4
	rts

L02aaf0:
	lea.l	($00e10000),a3
	lea.l	($00c78381),a5
	lea.l	(L06603c),a6
	jsr	(L02852e)
	lea.l	($00c783c1),a5
	lea.l	(L06605c),a6
	jsr	(L02852e)
	lea.l	($00e57de0),a1
	lea.l	(L06603c),a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($00e57fe0),a1
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	rts

L02ab4e:
	movea.l	a0,a1
	jsr	(L0298e2)
	bcs	L02abb4
	move.w	#$0094,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	jsr	(L01024e)
	andi.w	#$0007,d0
	addq.w	#8,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#3,d0
	asl.l	#4,d1
	move.l	d0,($0020,a0)
	move.l	d0,($0024,a0)
	clr.l	($000c,a0)
	move.l	d1,($0010,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$000b,($0018,a0)
	move.w	#$0020,($001e,a0)
	move.w	#$0001,($002e,a0)
L02abb4:
	rts

L02abb6:
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L02ac14
	move.l	($0024,a0),d0
	add.l	d0,($0020,a0)
	move.w	($001e,a0),d0
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	beq	L02ac14
	andi.w	#$0003,d0
	bne	L02abe4
	eori.w	#$8000,($0018,a0)
L02abe4:
	addi.l	#$00002000,($0010,a0)
	move.l	($0020,a0),d1
	btst.b	#$00,($001f,a0)
	beq	L02abfa
	neg.l	d1
L02abfa:
	add.l	($0004,a0),d1
	swap.w	d1
	move.w	($0008,a0),d2
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	rts

L02ac14:
	jmp	(L029cca)

L02ac1a:
	cmpi.w	#$0300,(L0470f2)
	bne	L02acb0
	move.w	#$0005,(L02a764)
	jsr	(L029cd4)
	ori.w	#$0200,d0
	moveq.l	#$00,d6
	lea.l	(L05dbdc),a1
	move.w	#$0005,d7
	jsr	(L0298a6)
	bcs	L02a85c
L02ac4e:
	move.l	a0,(a1)+
	bsr	L02a82e
	move.w	#$000d,($001a,a0)
	move.w	d6,($0024,a0)
	move.w	d6,($0026,a0)
	move.b	d6,($002e,a0)
	move.b	#$04,($002f,a0)
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L02a85c
	move.l	a0,($0020,a2)
	dbra	d7,L02ac4e
	lea.l	(L05dbdc),a1
	movea.l	(a1)+,a0
	move.w	#$0096,($0000.w,a0)
	ori.w	#$0300,($0002,a0)
	move.w	d6,($0018,a0)
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bgt	L02acaa
	bset.b	#$07,($0026,a0)
L02acaa:
	movea.l	(a1),a0
	move.l	a6,($0024,a0)
L02acb0:
	rts

L02acb2:
	subq.b	#1,($002f,a0)
	bne	L02acda
	move.b	#$08,($002f,a0)
	move.b	($0019,a0),d0
	eori.b	#$01,d0
	move.b	d0,($0019,a0)
	bne	L02acda
	move.w	($0004,a0),d0
	cmpi.w	#$0100,d0
	bhi	L02acda
	moveq.l	#$27,d0
	trap	#0
L02acda:
	rts

L02acdc:
	tst.w	($001c,a0)
	bmi	L02af7e
	move.w	#$0005,(L02a764)
	bsr	L02a8a8
	jsr	(L029a3e)
	bcc	L02ad0c
	beq	L02aef8
	move.b	#$0c,($002e,a0)
	andi.w	#$00ff,($0002,a0)
	moveq.l	#$31,d0
	trap	#0
L02ad0c:
	bsr	L02a8c2
	jsr	(L0299de)
	bcs	L02a870
	move.b	($002e,a0),d0
	beq	L02ad30
	subq.w	#1,d0
	move.b	d0,($002e,a0)
	bne	L02ad46
	ori.w	#$0300,($0002,a0)
	bra	L02ad46
L02ad30:
	tst.w	(L047fac)
	bne	L02ad46
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02ad54,pc,d0.w),d0
	jsr	(L02ad54,pc,d0.w)
L02ad46:
	bsr	L02ae26
	bsr	L02a8ea
	bsr	L02ae62
	rts

L02ad54:
	.dc.w	L02ad5a-L02ad54
	.dc.w	L02ada8-L02ad54
	.dc.w	L02ade4-L02ad54

L02ad5a:
	move.w	($001e,a0),d0
	beq	L02ad72
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	cmpi.w	#$0020,d0
	bhi	L02ad9c
	bsr	L02acb2
	bra	L02ad9c
L02ad72:
	bsr	L02acb2
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L02ad84
	neg.w	d0
L02ad84:
	cmpi.w	#$0050,d0
	bhi	L02ad9c
	addq.w	#1,($001c,a0)
	move.w	#$0004,($001e,a0)
	bsr	L02ae98
	moveq.l	#$49,d0
	trap	#0
L02ad9c:
	move.w	($0004,a0),d2
	jsr	(L033ca2)
	rts

L02ada8:
	move.b	($0019,a0),d0
	cmp.b	($0029,a0),d0
	beq	L02adc4
	subq.w	#1,($001e,a0)
	bne	L02adc4
	addq.b	#1,d0
	move.b	d0,($0019,a0)
	move.w	#$0004,($001e,a0)
L02adc4:
	move.w	($0024,a0),d0
	cmpi.w	#$0480,d0
	bhi	L02add8
	addi.w	#$0040,d0
	move.w	d0,($0024,a0)
	rts

L02add8:
	addq.w	#1,($001c,a0)
	move.w	#$0010,($001e,a0)
	rts

L02ade4:
	move.b	($0019,a0),d0
	beq	L02adfc
	subq.w	#1,($001e,a0)
	bne	L02adfc
	subq.b	#1,d0
	move.b	d0,($0019,a0)
	move.w	#$0010,($001e,a0)
L02adfc:
	move.w	($0024,a0),d0
	beq	L02ae0c
	subi.w	#$0010,d0
	move.w	d0,($0024,a0)
	rts

L02ae0c:
	move.w	#$0000,($001c,a0)
	move.w	(L047354),d0
	asl.w	#4,d0
	neg.w	d0
	add.w	#$00c0,d0
	move.w	d0,($001e,a0)
	rts

L02ae26:
	move.w	($0024,a0),d0
	lea.l	(L05dbf4),a1
	movea.l	-(a1),a2
	move.l	($0004,a2),d1
	move.l	($0008,a2),d2
	move.w	#$0004,d7
L02ae3e:
	movea.l	-(a1),a2
	move.w	($002a,a2),d3
	move.w	($002c,a2),d4
	muls.w	d0,d3
	muls.w	d0,d4
	asr.l	#4,d3
	asr.l	#4,d4
	add.l	d3,d1
	add.l	d4,d2
	move.l	d1,($0004,a2)
	move.l	d2,($0008,a2)
	dbra	d7,L02ae3e
	rts

L02ae62:
	move.w	(L0473f4),d0
	add.w	(L0470ee),d0
	tst.w	($0026,a0)
	bmi	L02ae86
	cmpi.w	#$09c2,d0
	ble	L02ae96
	eori.w	#$8000,($0026,a0)
	bsr	L02af1e
	rts

L02ae86:
	cmpi.w	#$09be,d0
	bge	L02ae96
	eori.w	#$8000,($0026,a0)
	bsr	L02af1e
L02ae96:
	rts

L02ae98:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	subi.w	#$0028,d1
	jsr	(L010280)
	move.w	d0,d6
	move.w	d6,d0
	bpl	L02aebe
	neg.w	d0
L02aebe:
	moveq.l	#$02,d1
	subi.w	#$0010,d0
	bmi	L02aed0
	addq.w	#1,d1
	subi.w	#$0018,d0
	bmi	L02aed0
	addq.w	#1,d1
L02aed0:
	move.w	d1,($0028,a0)
	lea.l	(L05dbdc),a1
	move.w	#$0005,d7
L02aede:
	movea.l	(a1)+,a2
	move.w	d6,d0
	jsr	(L01032e)
	move.w	d0,($002a,a2)
	move.w	d1,($002c,a2)
	asr.w	#1,d6
	dbra	d7,L02aede
	rts

L02aef8:
	movea.l	(L05dbe0),a1
	movea.l	($0024,a1),a1
	ori.w	#$8000,($0002,a1)
	bsr	L02a914
	moveq.l	#$3d,d0
	trap	#0
	move.l	#$00001000,d0
	jsr	(L029a68)
	rts

L02af1e:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L02ae96
	moveq.l	#$00,d7
	move.w	#$0096,($0000.w,a0)
	move.w	d7,($0002,a0)
	move.l	(L0473f4),d0
	move.l	(L0473f8),d1
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	move.l	d7,($000c,a0)
	move.l	#$ffff0000,($0010,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$0006,($0018,a0)
	move.w	#$0020,($001e,a0)
	move.w	#$ffff,($001c,a0)
	moveq.l	#$10,d0
	jsr	(L029a68)
	moveq.l	#$1d,d0
	trap	#0
	rts

L02af7e:
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L02afba
	move.w	($001e,a0),d0
	subq.w	#1,d0
	beq	L02afba
	move.w	d0,($001e,a0)
	cmpi.w	#$000c,d0
	bne	L02afa4
	eori.w	#$4000,($0018,a0)
L02afa4:
	cmpi.w	#$0008,d0
	bcs	L02afb2
	addi.l	#$00000400,($0010,a0)
L02afb2:
	jsr	(L025416)
	rts

L02afba:
	jmp	(L029cca)

L02afc0:
	jsr	(L0298a6)
	bcs	L02b074
	move.w	#$0099,($0000.w,a0)
	move.w	#$0000,($0002,a0)
	moveq.l	#$00,d2
	moveq.l	#$00,d3
	move.w	(L0470f2),d3
	andi.w	#$01ff,d3
	neg.w	d3
	addi.w	#$01d0,d3
	swap.w	d3
	move.w	#$0e30,d2
	sub.w	(L047f7a),d2
	swap.w	d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L071f20,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	#$001f,($001a,a0)
	move.l	d7,($001c,a0)
	move.l	d7,($0020,a0)
	move.l	d7,($0028,a0)
	move.w	d7,($002c,a0)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L02b076
	move.w	#$000b,($0000.w,a0)
	move.w	d7,($0002,a0)
	subi.l	#$00200000,d2
	subi.l	#$00300000,d3
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L06c3e4,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	#$001f,($001a,a0)
	move.l	a0,($0024,a1)
	bsr	L02b07c
L02b074:
	rts

L02b076:
	clr.l	($0000.w,a1)
	rts

L02b07c:
	moveq.l	#$00,d0
	move.b	($002c,a1),d0
	lea.l	($0028,a0),a3
	lsl.w	#3,d0
	moveq.l	#$03,d7
L02b08a:
	moveq.l	#$00,d1
	move.w	d1,d2
	lea.l	(L02b568),a2
	move.b	(a2,d0.w),d1
	move.b	($01,a2,d0.w),d2
	move.l	(L04741c),d4
	move.w	d2,d3
	subq.w	#2,d3
	add.w	d3,d3
	move.w	(L02b0c0,pc,d3.w),d3
	jsr	(L02b0c0,pc,d3.w)
	move.b	d1,(a3)+
	move.b	d2,(a3)+
	addq.w	#2,d0
	andi.w	#$003f,d0
	dbra	d7,L02b08a
	rts

L02b0c0:
	.dc.w	L02b0e0-L02b0c0
	.dc.w	L02b0ea-L02b0c0
	.dc.w	L02b0ea-L02b0c0
	.dc.w	L02b0ea-L02b0c0
	.dc.w	L02b0ea-L02b0c0
	.dc.w	L02b0ea-L02b0c0
	.dc.w	L02b0ea-L02b0c0
	.dc.w	L02b0f0-L02b0c0
	.dc.w	L02b0f6-L02b0c0
	.dc.w	L02b0f6-L02b0c0
	.dc.w	L02b0f6-L02b0c0
	.dc.w	L02b0f6-L02b0c0
	.dc.w	L02b0f6-L02b0c0
	.dc.w	L02b0f8-L02b0c0
	.dc.w	L02b0f6-L02b0c0
	.dc.w	L02b0f6-L02b0c0

L02b0e0:
	swap.w	d4
	cmpi.b	#$02,d4
	beq	L02b0f0
	rts

L02b0ea:
	cmp.b	d2,d4
	beq	L02b0f0
	rts

L02b0f0:
	moveq.l	#$0d,d1
	moveq.l	#$09,d2
	rts

L02b0f6:
	rts

L02b0f8:
	cmpi.b	#$18,d1
	beq	L02b0f6
	cmpi.b	#$19,d1
	bne	L02b10c
	ori.b	#$20,($0023,a1)
	bra	L02b0f6
L02b10c:
	ori.b	#$30,($0023,a1)
	bra	L02b0f6
L02b114:
	movea.l	($0024,a0),a1
	move.l	(L047f68),d0
	add.l	d0,($0004,a0)
	add.l	d0,($0004,a1)
	move.l	(L047f6c),d0
	add.l	d0,($0008,a0)
	add.l	d0,($0008,a1)
	cmpi.w	#$0c90,(L0470ee)
	blt	L02b18e
	tst.b	($001a,a0)
	beq	L02b16c
	move.w	#$0007,($001c,a0)
	andi.w	#$00ff,($0002,a0)
	andi.w	#$00ff,($0002,a1)
	clr.b	($001a,a0)
	move.w	#$0020,($001e,a0)
	bset.b	#$06,($0023,a0)
	move.b	#$10,($002d,a0)
L02b16c:
	move.b	($002d,a0),d0
	beq	L02b178
	subq.b	#1,d0
	move.b	d0,($002d,a0)
L02b178:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02b190,pc,d0.w),d0
	jsr	(L02b190,pc,d0.w)
	bsr	L02b490
	bsr	L02b4b2
L02b18e:
	rts

L02b190:
	.dc.w	L02b1a4-L02b190
	.dc.w	L02b1c4-L02b190
	.dc.w	L02b1ec-L02b190
	.dc.w	L02b210-L02b190
	.dc.w	L02b254-L02b190
	.dc.w	L02b31e-L02b190
	.dc.w	L02b34c-L02b190
	.dc.w	L02b368-L02b190
	.dc.w	L02b3c0-L02b190
	.dc.w	L02b3ec-L02b190

L02b1a4:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L02b1b2
	neg.w	d0
L02b1b2:
	cmpi.w	#$0074,d0
	bhi	L02b1c2
	addq.w	#1,($001c,a0)
	move.w	#$3010,($001e,a0)
L02b1c2:
	rts

L02b1c4:
	move.b	($001f,a0),d0
	beq	L02b1da
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	subq.w	#1,($0004,a0)
	subq.w	#1,($0004,a1)
	rts

L02b1da:
	subq.b	#1,($001e,a0)
	bne	L02b1ea
	addq.w	#1,($001c,a0)
	move.w	#$0010,($001e,a0)
L02b1ea:
	rts

L02b1ec:
	subq.w	#1,($001e,a0)
	beq	L02b204
	subi.l	#$00018000,($0004,a0)
	subi.l	#$00018000,($0004,a1)
	rts

L02b204:
	addq.w	#1,($001c,a0)
	move.w	#$200c,($001e,a0)
	rts

L02b210:
	move.b	($001f,a0),d0
	beq	L02b22c
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	bne	L02b252
	ori.w	#$0100,($0002,a0)
	bset.b	#$07,($0023,a0)
	rts

L02b22c:
	addi.w	#$0310,($0028,a0)
	moveq.l	#$02,d0
	moveq.l	#$04,d1
	bsr	L02b410
	moveq.l	#$01,d0
	moveq.l	#$03,d1
	bsr	L02b450
	subq.b	#1,($001e,a0)
	bne	L02b252
	addq.w	#1,($001c,a0)
	ori.w	#$0100,($0002,a0)
L02b252:
	rts

L02b254:
	tst.b	($001a,a1)
	beq	L02b2f6
	clr.b	($001a,a1)
	move.l	a0,-(a7)
	moveq.l	#$00,d0
	move.b	($0028,a0),d0
	addi.b	#$a0,d0
	lsr.w	#6,d0
	bset.b	d0,($0023,a0)
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L02b2f6
	move.w	#$000e,($0000.w,a0)
	move.w	#$4200,($0002,a0)
	move.w	#$0000,($001a,a0)
	move.l	#$00000000,($000c,a0)
	move.l	#$00008000,($0010,a0)
	move.w	#$0000,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.b	($0023,a2),d1
	andi.w	#$0030,d1
	lsr.w	#4,d1
	move.w	d1,($0024,a0)
	move.w	d0,d1
	lsl.w	#2,d1
	lea.l	(L02b558),a2
	move.w	(a2,d1.w),($0004,a0)
	move.w	($02,a2,d1.w),($0008,a0)
	add.w	d0,d0
	move.b	($29,a1,d0.w),d0
	andi.w	#$00ff,d0
	jsr	(L013ece)
	movea.l	(a7)+,a0
	addq.w	#1,($001c,a0)
	andi.w	#$00ff,($0002,a0)
	move.w	#$0020,($001e,a0)
	movea.l	($0024,a0),a1
	bra	L02b316
L02b2f6:
	addi.w	#$0310,($0028,a0)
	move.b	($0028,a0),d0
	addi.b	#$14,d0
	andi.w	#$003f,d0
	cmpi.b	#$28,d0
	bhi	L02b316
	ori.w	#$0100,($0002,a1)
	bra	L02b31c
L02b316:
	andi.w	#$00ff,($0002,a1)
L02b31c:
	rts

L02b31e:
	addi.w	#$0310,($0028,a0)
	moveq.l	#$fe,d0
	moveq.l	#$fc,d1
	bsr	L02b42e
	moveq.l	#$ff,d0
	moveq.l	#$fd,d1
	bsr	L02b46e
	subq.w	#1,($001e,a0)
	bne	L02b34a
	addq.w	#1,($001c,a0)
	move.w	#$2820,($001e,a0)
	bclr.b	#$07,($0023,a0)
L02b34a:
	rts

L02b34c:
	move.b	($001f,a0),d0
	beq	L02b35a
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	rts

L02b35a:
	subq.b	#1,($001e,a0)
	beq	L02b406
	addq.w	#1,($0004,a0)
	rts

L02b368:
	clr.b	($001a,a1)
	addi.w	#$0310,($0028,a0)
	moveq.l	#$fe,d0
	moveq.l	#$fc,d1
	bsr	L02b42e
	moveq.l	#$ff,d0
	moveq.l	#$fd,d1
	bsr	L02b46e
	subq.w	#1,($001e,a0)
	bne	L02b3b2
	bclr.b	#$07,($0023,a0)
	move.b	($002c,a0),d0
	addq.w	#1,d0
	andi.w	#$0007,d0
	move.b	d0,($002c,a0)
	beq	L02b3b4
	exg.l	a0,a1
	bsr	L02b07c
	exg.l	a0,a1
	move.w	#$0003,($001c,a0)
	move.w	#$2008,($001e,a0)
L02b3b2:
	rts

L02b3b4:
	addq.w	#1,($001c,a0)
	move.w	#$3030,($001e,a0)
	rts

L02b3c0:
	move.b	($001f,a0),d0
	beq	L02b3d6
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	bne	L02b3ea
	move.b	#$30,($002d,a0)
	rts

L02b3d6:
	addq.w	#1,($0008,a0)
	subq.b	#1,($001e,a0)
	bne	L02b3ea
	addq.w	#1,($001c,a0)
	move.w	#$0828,($001e,a0)
L02b3ea:
	rts

L02b3ec:
	move.b	($001f,a0),d0
	beq	L02b3fa
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	rts

L02b3fa:
	addq.w	#2,($0008,a0)
	subq.b	#1,($001e,a0)
	beq	L02b406
	rts

L02b406:
	clr.l	($0000.w,a1)
	jmp	(L029cca)

L02b410:
	bsr	L02b43e
	cmpi.w	#$0040,d2
	ble	L02b41a
	moveq.l	#$40,d2
L02b41a:
	cmpi.w	#$0080,d3
	ble	L02b424
	move.w	#$0080,d3
L02b424:
	move.b	d2,($0020,a0)
	move.b	d3,($0021,a0)
	rts

L02b42e:
	bsr	L02b43e
	tst.w	d2
	bpl	L02b436
	moveq.l	#$00,d2
L02b436:
	tst.w	d3
	bpl	L02b424
	moveq.l	#$00,d3
	bra	L02b424
L02b43e:
	moveq.l	#$00,d2
	move.w	d2,d3
	move.b	($0020,a0),d2
	move.b	($0021,a0),d3
	add.w	d0,d2
	add.w	d1,d3
	rts

L02b450:
	bsr	L02b47e
	cmpi.w	#$0020,d2
	ble	L02b45a
	moveq.l	#$20,d2
L02b45a:
	cmpi.w	#$004f,d3
	ble	L02b464
	move.w	#$004f,d3
L02b464:
	move.b	d2,($002a,a0)
	move.b	d3,($002b,a0)
	rts

L02b46e:
	bsr	L02b47e
	tst.w	d2
	bpl	L02b476
	moveq.l	#$00,d2
L02b476:
	tst.w	d3
	bpl	L02b464
	moveq.l	#$00,d3
	bra	L02b464
L02b47e:
	moveq.l	#$00,d2
	move.w	d2,d3
	move.b	($002a,a0),d2
	move.b	($002b,a0),d3
	add.w	d0,d2
	add.w	d1,d3
	rts

L02b490:
	move.b	($0022,a0),d0
	addq.b	#1,d0
	move.b	d0,($0022,a0)
	moveq.l	#$0f,d1
	btst.b	#$05,($0022,a0)
	beq	L02b4a6
	moveq.l	#$07,d1
L02b4a6:
	and.w	d1,d0
	bne	L02b4b0
	eori.w	#$0001,($0018,a0)
L02b4b0:
	rts

L02b4b2:
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	tst.b	($002d,a0)
	beq	L02b4d0
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L02b4ce
	subq.w	#1,d0
L02b4ce:
	add.w	d0,d1
L02b4d0:
	move.w	($0018,a0),d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	tst.b	($0023,a0)
	bpl	L02b552
	lea.l	(L02b558),a2
	moveq.l	#$00,d6
	move.w	d6,d5
	move.b	($0028,a0),d6
	moveq.l	#$03,d7
L02b4f4:
	btst.b	d5,($0023,a0)
	bne	L02b548
	move.w	d6,d0
	jsr	(L01032e)
	moveq.l	#$00,d2
	moveq.l	#$00,d3
	move.b	($0020,a0),d2
	move.b	($0021,a0),d3
	muls.w	d2,d0
	muls.w	d3,d1
	add.l	($0004,a0),d0
	add.l	($0008,a0),d1
	swap.w	d0
	swap.w	d1
	move.w	d1,d2
	move.w	d0,d1
	moveq.l	#$00,d0
	move.b	($002a,a0),d0
	sub.w	d0,d1
	move.b	($002b,a0),d0
	sub.w	d0,d2
	move.w	d5,d0
	add.w	d0,d0
	move.b	($28,a1,d0.w),d0
	lea.l	(L06e2e2),a5
	move.w	d1,(a2)+
	move.w	d2,(a2)+
	jsr	(L025426)
L02b548:
	addq.w	#1,d5
	subi.b	#$40,d6
	dbra	d7,L02b4f4
L02b552:
	rts

L02b554:
	.dc.b	$00,$00,$00,$00
L02b558:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
L02b568:
	.dc.b	$0e,$0a,$0b,$03,$18,$0f,$12,$02
	.dc.b	$0e,$0a,$19,$0f,$02,$05,$0f,$10
	.dc.b	$01,$06,$07,$0b,$09,$04,$14,$0f
	.dc.b	$0e,$0a,$11,$0d,$0c,$0c,$06,$07
	.dc.b	$12,$02,$0b,$03,$07,$0b,$10,$11
	.dc.b	$0e,$0a,$14,$0f,$01,$06,$13,$08
	.dc.b	$01,$06,$09,$04,$06,$07,$02,$05
	.dc.b	$0d,$09,$0d,$09,$0d,$09,$0d,$09

L02b5a8:
	jsr	(L0298a6)
	bcs	L02b5fe
	moveq.l	#$00,d7
	move.w	#$009b,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	#$ffff4000,($0010,a0)
	move.l	#L07227c,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	#$0001,($001a,a0)
	move.l	d7,($001c,a0)
	move.w	d7,($0020,a0)
	move.w	#$0606,($0022,a0)
	move.w	d7,($0028,a0)
	bsr	L02b600
	jsr	(L033ca2)
	move.w	#$0000,ccr
L02b5fe:
	rts

L02b600:
	move.l	#$00008000,d1
	move.w	($0020,a0),d0
	andi.w	#$c000,d0
	beq	L02b618
	andi.w	#$8000,d0
	bne	L02b640
	bra	L02b63e
L02b618:
	jsr	(L006d70)
	cmpi.w	#$0040,d0
	bhi	L02b632
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bhi	L02b640
	bra	L02b63e
L02b632:
	jsr	(L01024e)
	andi.w	#$0001,d0
	beq	L02b640
L02b63e:
	neg.l	d1
L02b640:
	move.l	d1,($000c,a0)
	rts

L02b646:
	subq.b	#1,($0022,a0)
	bne	L02b658
	move.b	($0023,a0),($0022,a0)
	eori.w	#$0001,($0018,a0)
L02b658:
	rts

L02b65a:
	move.w	($001c,a0),d0
	bmi	L02b9ca
	cmpi.w	#$0003,d0
	beq	L02b8ea
	move.l	($0010,a0),d0
	move.l	($000c,a0),d2
	tst.w	(L047fac)
	beq	L02b682
	move.l	(L047fc4),d0
	moveq.l	#$00,d2
L02b682:
	andi.w	#$3fff,($0020,a0)
	add.l	($0008,a0),d0
	cmpi.l	#$01200000,d0
	ble	L02b6a2
	movea.l	($0024,a0),a1
	subq.w	#1,($0022,a1)
	jmp	(L029cca)

L02b6a2:
	move.l	d0,($0008,a0)
	add.l	($0004,a0),d2
	move.l	d2,d1
	swap.w	d1
	subi.w	#$00f0,d1
	cmpi.w	#$ff20,d1
	bhi	L02b6d6
	tst.w	d1
	bmi	L02b6ca
	move.l	#$00ef0000,d2
	bset.b	#$06,($0020,a0)
	bra	L02b6d6
L02b6ca:
	move.l	#$00110000,d2
	bset.b	#$07,($0020,a0)
L02b6d6:
	move.l	d2,($0004,a0)
	tst.b	($001a,a0)
	beq	L02b6f2
	movea.l	($0024,a0),a1
	subq.w	#1,($0022,a1)
	moveq.l	#$32,d0
	trap	#0
	jmp	(L029b9e)

L02b6f2:
	tst.w	(L047fac)
	bne	L02b708
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02b710,pc,d0.w),d0
	jsr	(L02b710,pc,d0.w)
L02b708:
	jsr	(L025416)
	rts

L02b710:
	.dc.w	L02b71a-L02b710
	.dc.w	L02b7b2-L02b710
	.dc.w	L02b83a-L02b710
	.dc.w	L02b8ea-L02b710
	.dc.w	L02b954-L02b710

L02b71a:
	cmpi.l	#$00010000,(L047fc4)
	bhi	L02b730
	move.w	#$0004,($001c,a0)
	bra	L02b954
L02b730:
	move.w	($0008,a0),d0
	cmpi.w	#$00f2,d0
	bhi	L02b760
	bra	L02b778
L02b73c:
	jsr	(L01024e)
	andi.w	#$0001,d0
	beq	L02b752
	move.l	#$00010000,($0010,a0)
	bra	L02b75a
L02b752:
	move.l	#$00008000,($0010,a0)
L02b75a:
	bsr	L02b600
	bra	L02b768
L02b760:
	subi.l	#$00000600,($0010,a0)
L02b768:
	move.w	($0004,a0),d2
	jsr	(L033ca2)
	bsr	L02b646
	rts

L02b778:
	movea.l	($0024,a0),a1
	jsr	(L01024e)
	and.w	($0026,a1),d0
	bne	L02b73c
	jsr	(L006d70)
	tst.w	d0
	bpl	L02b794
	neg.w	d0
L02b794:
	cmpi.w	#$0020,d0
	bcs	L02b73c
	addq.w	#1,($001c,a0)
	clr.l	($000c,a0)
	move.l	#$fff80000,($0010,a0)
	move.b	#$02,($0019,a0)
	rts

L02b7b2:
	move.l	($0010,a0),d0
	bpl	L02b7e6
	btst.b	#$04,($0020,a0)
	bne	L02b7da
	cmpi.w	#$00e0,($0008,a0)
	bhi	L02b7da
L02b7c8:
	bsr	L02ba62
	moveq.l	#$43,d0
	trap	#0
	bset.b	#$04,($0020,a0)
	move.l	($0010,a0),d0
L02b7da:
	addi.l	#$00003800,d0
	move.l	d0,($0010,a0)
	rts

L02b7e6:
	movea.l	($0024,a0),a1
	move.w	($002a,a1),d1
	cmp.w	(L047354),d1
	bhi	L02b7da
	move.w	(L0473f8),d1
	sub.w	($0008,a0),d1
	cmpi.w	#$0020,d1
	bhi	L02b7da
	move.w	($0004,a0),d1
	sub.w	(L0473f4),d1
	tst.w	(L047408)
	bmi	L02b81a
	neg.w	d1
L02b81a:
	subi.w	#$0030,d1
	cmpi.w	#$ff60,d1
	bhi	L02b7da
	addq.w	#1,($001c,a0)
	move.w	#$0006,($001e,a0)
	addq.b	#1,($0019,a0)
	bclr.b	#$04,($0020,a0)
	bra	L02b7da
L02b83a:
	move.l	($0010,a0),d0
	move.w	($001e,a0),d1
	bne	L02b858
	btst.b	#$04,($0020,a0)
	bne	L02b7da
	cmpi.w	#$00e0,($0008,a0)
	bhi	L02b7c8
	bra	L02b7da
L02b858:
	subq.w	#1,d1
	move.w	d1,($001e,a0)
	bne	L02b7da
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L02b7da
	move.w	#$009b,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.w	#$0001,($001a,a0)
	move.l	#L07227c,($0014,a0)
	move.w	#$0004,($0018,a0)
	move.l	#$00020000,d3
	move.b	($0018,a1),d1
	bmi	L02b89c
	neg.l	d3
L02b89c:
	move.b	d1,($0018,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	subi.w	#$000c,($0008,a0)
	move.l	d3,($000c,a0)
	clr.l	($0010,a0)
	move.w	#$0003,($001c,a0)
	move.w	#$0404,($0022,a0)
	move.w	#$0406,($002e,a0)
	movea.l	($0024,a1),a2
	move.l	a2,($0024,a0)
	addq.w	#1,($002a,a2)
	movea.l	a1,a0
	subq.b	#1,($0019,a0)
	moveq.l	#$3a,d0
	trap	#0
	move.l	($0010,a0),d0
	bra	L02b7da
L02b8ea:
	jsr	(L029a3e)
	bcc	L02b900
	movea.l	($0024,a0),a1
	subq.w	#1,($002a,a1)
	jmp	(L029b20)

L02b900:
	tst.w	(L047fac)
	bne	L02b94c
	move.l	($000c,a0),d0
	add.l	d0,($0004,a0)
	move.w	($0004,a0),d0
	subi.w	#$0110,d0
	cmpi.w	#$fee0,d0
	bhi	L02b92c
	movea.l	($0024,a0),a1
	subq.w	#1,($002a,a1)
	jmp	(L029cca)

L02b92c:
	subq.b	#1,($0022,a0)
	bne	L02b94c
	move.b	($0019,a0),d0
	addq.b	#1,d0
	cmpi.b	#$06,d0
	bne	L02b942
	move.b	#$04,d0
L02b942:
	move.b	d0,($0019,a0)
	move.b	#$04,($0022,a0)
L02b94c:
	jsr	(L025416)
	rts

L02b954:
	move.l	($0010,a0),d0
	bra	L02b7da
L02b95c:
	lea.l	(L0541b0),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb9000),a4
	move.w	a6,d2
	jsr	(L003954)
	jsr	(L0298a6)
	bcc	L02b994
	jsr	(L0298e2)
	bcs	L02b5fe
L02b994:
	move.w	#$009b,($0000.w,a0)
	clr.w	($0002,a0)
	move.w	#$ffff,($001c,a0)
	clr.w	($001e,a0)
	move.w	(L047354),d0
	addq.w	#4,d0
	move.w	d0,($0020,a0)
	clr.l	($0022,a0)
	move.w	#$0003,($0026,a0)
	move.w	#$0040,($0028,a0)
	clr.w	($002a,a0)
	rts

L02b9ca:
	cmpi.w	#$0001,(L047fc4)
	bls	L02ba1e
	move.w	($0024,a0),d0
	addq.w	#1,d0
	move.w	d0,($0024,a0)
	cmpi.w	#$0100,d0
	bcs	L02ba1e
	cmpi.w	#$0200,d0
	bne	L02b9f2
	move.w	#$0001,($0026,a0)
	bra	L02ba12
L02b9f2:
	cmpi.w	#$0400,d0
	bne	L02ba06
	move.w	#$0000,($0026,a0)
	move.w	#$0020,($0028,a0)
	bra	L02ba12
L02ba06:
	cmpi.w	#$0580,d0
	bne	L02ba12
	move.w	#$0003,($0026,a0)
L02ba12:
	move.w	($001e,a0),d0
	beq	L02ba20
	subq.w	#1,d0
	move.w	d0,($001e,a0)
L02ba1e:
	rts

L02ba20:
	move.w	($0022,a0),d0
	cmp.w	($0020,a0),d0
	bcc	L02ba1e
	moveq.l	#$00,d2
	jsr	(L01024e)
	andi.w	#$00ff,d0
	move.w	d0,d2
	swap.w	d2
	move.w	#$0110,d3
	swap.w	d3
	jsr	(L01024e)
	move.w	d0,d3
	movea.l	a0,a1
	bsr	L02b5a8
	bcs	L02ba5e
	move.l	a1,($0024,a0)
	addq.w	#1,($0022,a1)
	move.w	($0028,a1),($001e,a1)
L02ba5e:
	movea.l	a1,a0
	rts

L02ba62:
	move.w	#$0003,d7
L02ba66:
	move.w	#$0000,d1
	move.l	#L072274,d2
	jsr	(L0196fc)
	dbra	d7,L02ba66
	rts

L02ba7c:
	jsr	(L029818)
	bcs	L02bad4
	move.w	#$00a3,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	#$ffff4000,($000c,a0)
	moveq.l	#$00,d7
	move.l	d7,($0010,a0)
	move.l	#L07107a,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	d7,($001a,a0)
	move.w	d7,($001c,a0)
	move.l	d7,($0020,a0)
	move.l	d7,($0024,a0)
	move.w	(L047350),($002e,a0)
L02bad4:
	rts

L02bad6:
	move.w	($002e,a0),d0
	cmp.w	(L047350),d0
	beq	L02bae8
	jmp	(L029cca)

L02bae8:
	jsr	(L02993c)
	cmpi.w	#$0c40,(L0470ee)
	blt	L02bb02
	move.w	#$ff68,d3
	jsr	(L0254d4)
L02bb02:
	jsr	(L03b0d4)
	andi.b	#$c0,d7
	btst.b	#$06,($0020,a0)
	beq	L02bb18
	andi.b	#$40,d7
L02bb18:
	andi.b	#$3f,($0020,a0)
	or.b	d7,($0020,a0)
	moveq.l	#$00,d1
	move.w	($0004,a0),d0
	add.w	(L0470ee),d0
	subi.w	#$0e10,d0
	cmpi.w	#$ff70,d0
	bhi	L02bb42
	move.w	#$0600,d1
	tst.w	d0
	bmi	L02bb42
	neg.l	d1
L02bb42:
	add.l	d1,($000c,a0)
	btst.b	#$07,($0020,a0)
	beq	L02bb56
	move.l	#$00040000,($0024,a0)
L02bb56:
	move.l	($0024,a0),d0
	beq	L02bb72
	subi.l	#$00008000,d0
	move.l	d0,($0024,a0)
	beq	L02bb6e
	subi.l	#$00020000,d0
L02bb6e:
	move.l	d0,($0010,a0)
L02bb72:
	rts

L02bb74:
	jsr	(L0298a6)
	bcs	L02bbf2
	move.w	#$00a5,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L070f4a,($0014,a0)
	move.w	#$0003,($0018,a0)
	move.w	#$0001,($001a,a0)
	move.l	d7,($001c,a0)
	moveq.l	#$00,d0
	tst.b	($0005,a6)
	beq	L02bbc6
	ori.w	#$8000,d0
L02bbc6:
	move.w	d0,($0020,a0)
	move.b	#$04,($0022,a0)
	move.w	#$0080,($0024,a0)
	move.b	#$04,($0027,a0)
	move.w	d7,($0028,a0)
	move.b	($0007,a6),d0
	ext.w	d0
	move.w	d0,($002e,a0)
	ext.w	d2
	jsr	(L033c9c)
L02bbf2:
	rts

L02bbf4:
	jmp	(L029cca)

L02bbfa:
	move.w	($0004,a0),d0
	subi.w	#$0130,d0
	cmpi.w	#$fea0,d0
	bcs	L02bc14
	move.w	($0008,a0),d0
	subi.w	#$0130,d0
	cmpi.w	#$fea0,d0
L02bc14:
	rts

L02bc16:
	cmpi.b	#$03,($0019,a0)
	beq	L02bc4e
	subq.b	#1,($0027,a0)
	bne	L02bc4e
	move.b	($0022,a0),($0027,a0)
	move.b	($0026,a0),d0
	addq.b	#1,d0
	andi.w	#$0003,d0
	move.b	d0,($0026,a0)
	move.b	(L02bc50,pc,d0.w),d0
	andi.w	#$00ff,d0
	tst.w	($000c,a0)
	bmi	L02bc4a
	ori.w	#$8000,d0
L02bc4a:
	move.w	d0,($0018,a0)
L02bc4e:
	rts

L02bc50:
	.dc.b	$00,$01,$02,$01

L02bc54:
	jsr	(L029a3e)
	bcc	L02bc66
	moveq.l	#$24,d0
	trap	#0
	jmp	(L029b82)

L02bc66:
	tst.w	(L047fac)
	beq	L02bc78
	move.w	($002e,a0),d3
	jmp	(L03b08c)

L02bc78:
	jsr	(L029954)
	bsr	L02bbfa
	bcs	L02bbf4
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02bca2,pc,d0.w),d0
	jsr	(L02bca2,pc,d0.w)
	bsr	L02bc16
	move.w	($002e,a0),d3
	jsr	(L0254d4)
	rts

L02bca2:
	.dc.w	L02bcac-L02bca2
	.dc.w	L02bccc-L02bca2
	.dc.w	L02bd1a-L02bca2
	.dc.w	L02bda6-L02bca2
	.dc.w	L02bde4-L02bca2

L02bcac:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L02bcba
	neg.w	d0
L02bcba:
	cmpi.w	#$0070,d0
	bhi	L02bcca
	addq.w	#1,($001c,a0)
	move.w	#$0020,($001e,a0)
L02bcca:
	rts

L02bccc:
	subq.b	#1,($001f,a0)
	beq	L02bcdc
	addi.l	#$00000800,($0010,a0)
	rts

L02bcdc:
	addq.w	#1,($001c,a0)
	clr.b	($0019,a0)
	move.w	(L047354),d0
	lsl.w	#4,d0
	addi.w	#$0180,d0
	move.w	d0,($001e,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	addi.w	#$0010,d0
	move.w	d0,($002a,a0)
	jsr	(L01024e)
	andi.w	#$003f,d0
	subi.w	#$0020,d0
	move.w	d0,($002c,a0)
	rts

L02bd1a:
	subq.w	#1,($001e,a0)
	bne	L02bd26
	addq.w	#1,($001c,a0)
	rts

L02bd26:
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	add.w	($002a,a0),d2
	sub.w	($002c,a0),d3
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
L02bd48:
	move.w	(L047354),d1
	lsr.w	#1,d1
	addq.l	#1,d1
	move.w	($0024,a0),d2
	sub.b	d2,d0
	bpl	L02bd5c
	neg.w	d1
L02bd5c:
	add.w	($0024,a0),d1
	move.w	d1,($0024,a0)
	move.w	d1,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#2,d0
	asl.l	#2,d1
	move.l	($000c,a0),d2
	move.l	d2,d3
	add.l	d2,d2
	add.l	d3,d2
	add.l	d0,d2
	asr.l	#2,d2
	move.l	d2,($000c,a0)
	move.l	($0010,a0),d2
	move.l	d2,d3
	add.l	d2,d2
	add.l	d3,d2
	add.l	d1,d2
	asr.l	#2,d2
	move.l	d2,($0010,a0)
	moveq.l	#$03,d0
	tst.w	($0010,a0)
	bmi	L02bda2
	add.w	d0,d0
L02bda2:
	move.b	d0,($0022,a0)
L02bda6:
	bchg.b	#$06,($0020,a0)
	bne	L02bdd2
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L02bdbc
	subq.w	#2,d0
L02bdbc:
	add.w	d0,($0004,a0)
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L02bdce
	subq.w	#2,d0
L02bdce:
	add.w	d0,($0008,a0)
L02bdd2:
	cmpi.w	#$0c90,(L0470ee)
	bcs	L02bde2
	move.w	#$0004,($001c,a0)
L02bde2:
	rts

L02bde4:
	move.w	#$00c0,d0
	bra	L02bd48
L02bdec:
	cmpi.w	#$0280,(L0470f2)
	bgt	L02be34
	jsr	(L0298a6)
	bcs	L02be34
	move.w	#$00aa,($0000.w,a0)
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L06c3e4,($0014,a0)
	move.w	d7,($0018,a0)
	move.l	d7,($001c,a0)
	move.w	d7,($0020,a0)
L02be34:
	rts

L02be36:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L02be4a
	jmp	(L029cca)

L02be4a:
	move.w	($0020,a0),d0
	beq	L02be60
	subq.w	#1,d0
	move.w	d0,($0020,a0)
	bne	L02beaa
	bclr.b	#$00,($001d,a0)
	bne	L02beac
L02be60:
	move.w	($001e,a0),d0
	beq	L02be6e
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	bra	L02beaa
L02be6e:
	move.w	($0004,a0),d0
	subi.w	#$00c0,d0
	cmpi.w	#$ff80,d0
	bcs	L02beaa
	tst.b	(L04740c)
	beq	L02beaa
	jsr	(L01024e)
	andi.w	#$000f,d0
	bne	L02beaa
	move.w	($001c,a0),d0
	eori.w	#$0001,d0
	move.w	d0,($001c,a0)
	move.w	#$0040,($001e,a0)
	move.w	#$000c,($0020,a0)
	bra	L02beac
L02beaa:
	rts

L02beac:
	tst.w	($001c,a0)
	bne	L02beba
	lea.l	(L02c026),a2
	bra	L02bec0
L02beba:
	lea.l	(L02c052),a2
L02bec0:
	movea.l	a2,a1
	lea.l	($00e10000),a3
	lea.l	($00c28281),a5
	movea.l	(a2)+,a6
	jsr	(L02852e)
	movea.l	(a2)+,a6
	jsr	(L02852e)
	lea.l	($00c282c1),a5
	movea.l	(a2)+,a6
	jsr	(L02852e)
	movea.l	(a2)+,a6
	jsr	(L02852e)
	lea.l	($00c20301),a5
	movea.l	(a2)+,a6
	jsr	(L02852e)
	movea.l	(a2)+,a6
	jsr	(L02852e)
	movea.l	(a2)+,a6
	jsr	(L02852e)
	lea.l	($00c20341),a5
	movea.l	(a2)+,a6
	jsr	(L02852e)
	movea.l	(a2)+,a6
	jsr	(L02852e)
	movea.l	(a2)+,a6
	jsr	(L02852e)
	lea.l	($00c20381),a5
	movea.l	(a2),a6
	jsr	(L02852e)
	movea.l	a1,a2
	lea.l	($00e594a0),a1
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($00e596a0),a1
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($00e59880),a1
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($00e59a80),a1
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	movea.l	(a2)+,a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($00e59c80),a1
	movea.l	(a2),a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6),(a1)
	rts

L02c026:
	.dc.l	L0688dc
	.dc.l	L06885c
	.dc.l	L0688bc
	.dc.l	L06883c
	.dc.l	L06891c
	.dc.l	L06889c
	.dc.l	L06881c
	.dc.l	L0688fc
	.dc.l	L06887c
	.dc.l	L0687fc
	.dc.l	L06893c
L02c052:
	.dc.l	L06877c
	.dc.l	L0686fc
	.dc.l	L06875c
	.dc.l	L0686dc
	.dc.l	L0687dc
	.dc.l	L06873c
	.dc.l	L0686bc
	.dc.l	L0687bc
	.dc.l	L06871c
	.dc.l	L0687fc
	.dc.l	L06879c

L02c07e:
	jsr	(L0298a6)
	bcs	L02c16a
	move.w	#$0031,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	jsr	(L01024e)
	tst.w	(L047408)
	bpl	L02c0c2
	andi.w	#$0007,d0
	beq	L02c0c8
L02c0aa:
	move.l	#$01200000,d2
	move.l	#$fffe0000,($000c,a0)
	clr.w	($0018,a0)
	clr.b	($0025,a0)
	bra	L02c0e2
L02c0c2:
	andi.w	#$0007,d0
	beq	L02c0aa
L02c0c8:
	move.l	#$ffe00000,d2
	move.l	#$00020000,($000c,a0)
	move.w	#$8000,($0018,a0)
	move.b	#-$01,($0025,a0)
L02c0e2:
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($0010,a0)
	move.l	#L073550,($0014,a0)
	move.w	#$0003,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0030,($001e,a0)
	clr.b	($0024,a0)
	move.b	#$08,($0026,a0)
	movea.l	a0,a1
	move.l	a6,-(a7)
	lea.l	(L03b0ae),a6
	clr.w	d0
	jsr	(L03968a)
	movea.l	(a7)+,a6
	bcs	L02c16c
	move.l	a0,($0020,a1)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	subi.w	#$0008.w,($0004,a0)
	addi.w	#$0018,($0008,a0)
	move.w	#$0005,($001c,a0)
	move.b	($0018,a1),($0018,a0)
	bpl	L02c156
	addi.w	#$0010,($0004,a0)
L02c156:
	move.b	(L0472f7),d0
	lsl.b	#1,d0
	addq.b	#1,d0
	move.b	d0,($0028,a0)
	move.b	d0,($0028,a1)
	movea.l	a1,a0
L02c16a:
	rts

L02c16c:
	clr.l	($0000.w,a1)
	movea.l	a1,a0
	rts

L02c174:
	movea.l	($0020,a0),a1
	tst.b	($0028,a1)
	bne	L02c184
	move.b	#$ff,($0024,a0)
L02c184:
	jsr	(L029a3e)
	bcc	L02c1ac
	bne	L02c1ac
	moveq.l	#$37,d0
	trap	#0
	tst.b	($0024,a0)
	bne	L02c19c
	bsr	L02c276
L02c19c:
	subi.w	#$0010,($0008,a0)
	move.w	#$1f1f,d0
	jmp	(L029bac)

L02c1ac:
	tst.w	(L047fac)
	beq	L02c1ba
	jmp	(L03657e)

L02c1ba:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L02c1ce
	jmp	(L029cca)

L02c1ce:
	tst.b	($0024,a0)
	bne	L02c1f4
	bsr	L02c262
	movea.l	($0020,a0),a1
	move.l	($0004,a0),($0004,a1)
	subi.w	#$0008.w,($0004,a1)
	tst.w	($0018,a1)
	bpl	L02c1f4
	addi.w	#$0010,($0004,a1)
L02c1f4:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L02c222,pc,d0.w),d0
	jsr	(L02c222,pc,d0.w)
	subq.b	#1,($0026,a0)
	bne	L02c21a
	move.b	#$08,($0026,a0)
	addq.b	#1,($0019,a0)
	andi.b	#$03,($0019,a0)
L02c21a:
	jsr	(L025416)
	rts

L02c222:
	.dc.w	L02c226-L02c222
	.dc.w	L02c23e-L02c222

L02c226:
	subq.b	#1,($001f,a0)
	bne	L02c23c
	move.b	#$08,($001f,a0)
	move.b	#$01,($001d,a0)
	clr.l	($000c,a0)
L02c23c:
	rts

L02c23e:
	subq.b	#1,($001f,a0)
	bne	L02c260
	move.b	#$30,($001f,a0)
	clr.b	($001d,a0)
	move.l	#$fffe0000,($000c,a0)
	tst.b	($0025,a0)
	beq	L02c260
	neg.l	($000c,a0)
L02c260:
	rts

L02c262:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	addi.w	#$0048,d0
	cmpi.w	#$0090,d0
	bhi	L02c2b6
L02c276:
	movea.l	($0020,a0),a1
	cmpi.w	#$0022,($0000.w,a1)
	bne	L02c2b6
	move.b	($0028,a0),d0
	cmp.b	($0028,a1),d0
	bne	L02c2b6
	move.b	#$04,($001d,a1)
	move.l	#$00004000,($0022,a1)
	not.b	($0024,a0)
	clr.b	($0028,a1)
	cmpi.w	#$0003,(L047354)
	blt	L02c2b6
	move.l	($000c,a0),d0
	asr.l	#1,d0
	move.l	d0,($000c,a1)
L02c2b6:
	rts

L02c2b8:
	jsr	(L0298a6)
	bcs	L02c30a
	move.w	#$0032,($0000.w,a0)
	andi.w	#$fcff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.b	($0005,a6),($0020,a0)
	clr.b	($0021,a0)
	clr.w	d0
	sub.w	(L047354),d0
	asr.w	#2,d0
	addi.w	#$0060,d0
	move.w	d0,($0022,a0)
	move.w	d0,($001e,a0)
	move.w	#$0001,($001a,a0)
L02c30a:
	rts

L02c30c:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L02c320
	jmp	(L029cca)

L02c320:
	tst.w	(L047fac)
	bne	L02c360
	subq.w	#1,($001e,a0)
	bne	L02c360
	clr.w	d0
	move.b	($0021,a0),d0
	andi.b	#$03,d0
	add.w	d0,d0
	add.w	d0,d0
	move.l	(L02c362,pc,d0.w),d3
	clr.w	d0
	move.l	a0,-(a7)
	bsr	L02c07e
	movea.l	(a7)+,a0
	addq.b	#1,($0021,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	add.w	($0022,a0),d0
	move.w	d0,($001e,a0)
L02c360:
	rts

L02c362:
	.dc.l	$00700000,$00500000
	.dc.l	$00900000,$00380000

L02c372:
	lea.l	(L05babc),a2
	move.w	(L047fb4),d7
	bne	L02c384
	bsr	L02c4bc
L02c384:
	bsr	L02c4d4
	bcs	L02c4ac
	ori.w	#$0300,d0
	move.w	#$8000,d1
	clr.w	d5
	jsr	(L029cd4)
	clr.w	d4
	cmp.l	(L0473f4),d2
	bgt	L02c3ae
	move.w	#$8000,d4
	ori.w	#$0010,d5
L02c3ae:
	clr.w	d6
	move.w	#$0003,d7
L02c3b4:
	jsr	(L0298a6)
	bcs	L02c4ae
	move.l	a0,(a2,d6.w)
	move.w	#$000b,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L073790,($0014,a0)
	move.w	d4,($0018,a0)
	move.w	#$007f,($001a,a0)
	clr.l	($001c,a0)
	move.w	#$0404,($0024,a0)
	move.w	d5,($0026,a0)
	clr.w	($0028,a0)
	move.w	d1,($002a,a0)
	addq.w	#4,d6
	subi.w	#$1999,d1
	tst.w	d5
	bne	L02c41a
	addi.l	#$00060000,d2
	dbra	d7,L02c3b4
	bra	L02c424
L02c41a:
	subi.l	#$00060000,d2
	dbra	d7,L02c3b4
L02c424:
	jsr	(L0298a6)
	bcs	L02c4ae
	move.w	#$000b,($0000.w,a0)
	clr.w	($0002,a0)
	move.l	a0,(a2,d6.w)
	movea.l	(a2),a0
	move.w	#$0033,($0000.w,a0)
	move.l	#L073770,($0014,a0)
	move.w	#$001c,($001a,a0)
	move.l	a2,($0020,a0)
	ori.b	#$80,($0027,a0)
	movea.l	($0004,a2),a1
	move.l	#L02cb5e,($0020,a1)
	movea.l	($0008,a2),a1
	move.w	#$0200,d0
	swap.w	d0
	move.w	(L047354),d0
	lsl.w	#3,d0
	neg.w	d0
	addi.w	#$0080,d0
	move.l	d0,($0020,a1)
	move.b	d0,($001e,a0)
	move.w	(L047354),d0
	lsl.w	#3,d0
	neg.w	d0
	addi.w	#$0040,d0
	move.b	d0,($0022,a1)
	move.b	d0,($001f,a0)
	movea.l	($000c,a2),a1
	clr.l	($0020,a1)
	addq.w	#1,(L047fb4)
L02c4ac:
	rts

L02c4ae:
	subq.w	#4,d6
	bmi	L02c4ac
	movea.l	(a2,d6.w),a0
	clr.l	($0000.w,a0)
	bra	L02c4ae
L02c4bc:
	lea.l	(L05babc),a2
	move.w	#$000f,d7
L02c4c6:
	clr.l	(a2)+
	clr.l	(a2)+
	clr.l	(a2)+
	clr.l	(a2)+
	dbra	d7,L02c4c6
	rts

L02c4d4:
	lea.l	(L05babc),a2
L02c4da:
	tst.l	(a2)
	beq	L02c4ee
	lea.l	($0014,a2),a2
	cmpa.l	#L05bbbc,a2
	bne	L02c4da
	ori.b	#$01,ccr
L02c4ee:
	rts

L02c4f0:
	move.w	#$0004,d7
L02c4f4:
	movea.l	(a2)+,a1
	clr.l	($0000.w,a1)
	dbra	d7,L02c4f4
	subq.w	#1,(L047fb4)
	rts

L02c506:
	moveq.l	#$3e,d0
	trap	#0
	jsr	(L029b82)
	movea.l	a0,a3
	addq.w	#4,a2
	move.w	#$0002,d7
L02c518:
	movea.l	(a2)+,a0
	move.w	d7,-(a7)
	clr.w	($0002,a0)
	jsr	(L029b82)
	move.w	(a7)+,d7
	dbra	d7,L02c518
	movea.l	(a2)+,a0
	clr.l	($0000.w,a0)
	movea.l	a3,a0
	subq.w	#1,(L047fb4)
	rts

L02c53c:
	movea.l	($0020,a0),a2
	move.b	($001a,a0),d0
	move.w	d0,d2
	andi.w	#$000f,d0
	beq	L02c554
	move.b	($0018,a0),d1
	eor.b	d2,d1
	bpl	L02c574
L02c554:
	addq.w	#4,a2
	move.w	#$0002,d7
L02c55a:
	movea.l	(a2)+,a1
	move.b	($001a,a1),d1
	andi.w	#$000f,d1
	dbne	d7,L02c55a
	beq	L02c574
	move.w	#$000f,d0
	move.b	#$01,($001b,a0)
L02c574:
	andi.w	#$00f0,d2
	or.w	d0,d2
	move.b	d2,($001a,a0)
	movea.l	($0020,a0),a2
	jsr	(L029a3e)
	bcc	L02c5c0
	beq	L02c506
	moveq.l	#$31,d0
	trap	#0
	movea.l	($000c,a2),a1
	move.l	#$00080060,($0020,a1)
	movea.l	($0008,a2),a1
	move.w	#$0400,($0020,a1)
	move.w	#$0003,d7
L02c5ac:
	movea.l	(a2)+,a1
	andi.w	#$fcff,($0002,a1)
	clr.b	($001a,a1)
	dbra	d7,L02c5ac
	movea.l	($0020,a0),a2
L02c5c0:
	movea.l	($000c,a2),a1
	tst.w	($0020,a1)
	beq	L02c5e4
	subq.w	#1,($0020,a1)
	bne	L02c5e4
	move.w	#$0003,d7
L02c5d4:
	movea.l	(a2)+,a1
	ori.w	#$0300,($0002,a1)
	dbra	d7,L02c5d4
	movea.l	($0020,a0),a2
L02c5e4:
	movea.l	($000c,a2),a1
	tst.w	($0022,a1)
	beq	L02c5fe
	subq.w	#1,($0022,a1)
	bne	L02c5fe
	movea.l	($0008,a2),a1
	move.w	#$0200,($0020,a1)
L02c5fe:
	bsr	L02c916
	bcs	L02c4f0
	tst.w	(L047fac)
	bne	L02c632
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L02c650,pc,d0.w),d0
	jsr	(L02c650,pc,d0.w)
	bsr	L02c940
	bsr	L02c96a
	bsr	L02c9a6
	bsr	L02c9fa
	bsr	L02ca44
L02c632:
	btst.b	#$02,($0027,a0)
	beq	L02c63e
	bsr	L02cbd0
L02c63e:
	bsr	L02caa8
	tst.w	(L047fac)
	bne	L02c64e
	bsr	L02cafc
L02c64e:
	rts

L02c650:
	.dc.w	L02c656-L02c650
	.dc.w	L02c79c-L02c650
	.dc.w	L02c828-L02c650

L02c656:
	subq.b	#1,($001e,a0)
	bne	L02c6da
	movea.l	($0008,a2),a1
	move.b	($0023,a1),($001e,a0)
	move.w	(L047f7a),d0
	add.w	($0004,a0),d0
	cmpi.w	#$0d70,d0
	blt	L02c67e
	tst.w	($0018,a0)
	bpl	L02c6da
	bra	L02c690
L02c67e:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	move.w	($0018,a0),d1
	eor.w	d0,d1
	bpl	L02c6da
L02c690:
	clr.w	d0
	move.w	#$0003,d7
L02c696:
	movea.l	(a2)+,a1
	move.w	#$0001,($001c,a1)
	move.b	d0,($001e,a1)
	ori.b	#$20,($0027,a1)
	move.w	($0028,a1),d1
	btst.b	#$04,($0027,a1)
	bne	L02c6ba
	addi.w	#$3fff,d1
	bra	L02c6be
L02c6ba:
	subi.w	#$3fff,d1
L02c6be:
	move.w	d1,($0028,a1)
	asr.w	#5,d1
	move.w	d1,($002c,a1)
	andi.b	#$3f,($0027,a1)
	addi.w	#$0010,d0
	dbra	d7,L02c696
	movea.l	($0020,a0),a2
L02c6da:
	tst.b	($001f,a0)
	beq	L02c6e8
	subq.b	#1,($001f,a0)
	bne	L02c77a
L02c6e8:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L02c6f6
	neg.w	d0
L02c6f6:
	cmpi.w	#$0040,d0
	bcc	L02c77a
	move.w	($0018,a0),d0
	move.w	(L047408),d1
	eor.w	d0,d1
	bpl	L02c77a
	movea.l	($000c,a2),a1
	tst.b	($0027,a1)
	bpl	L02c77a
	movea.l	($0004,a2),a1
	move.l	#L02cb6e,($0020,a1)
	move.l	#L0737b0,($0014,a0)
	clr.b	($0019,a0)
	move.w	#$0804,($0024,a0)
	clr.b	($0026,a0)
	andi.b	#$f7,($0027,a0)
	lea.l	(L02c77c,pc),a3
	tst.w	(L047354)
	beq	L02c758
	jsr	(L01024e)
	andi.w	#$0003,d0
	bne	L02c758
	lea.l	($0010,a3),a3
L02c758:
	move.w	#$0003,d7
L02c75c:
	movea.l	(a2)+,a1
	move.w	#$0002,($001c,a1)
	ori.b	#$20,($0027,a1)
	move.l	(a3),($0010,a1)
	move.l	(a3)+,($002c,a1)
	dbra	d7,L02c75c
	movea.l	($0020,a0),a2
L02c77a:
	rts

L02c77c:
	.dc.b	$00,$00,$c0,$00,$00,$00,$80,$00
	.dc.b	$00,$00,$40,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00

L02c79c:
	move.w	#$0003,d7
L02c7a0:
	movea.l	(a2)+,a1
	clr.w	d0
	move.b	($001c,a1),d0
	add.w	d0,d0
	move.w	(L02c7bc,pc,d0.w),d0
	jsr	(L02c7bc,pc,d0.w)
	dbra	d7,L02c7a0
	movea.l	($0020,a0),a2
	rts

L02c7bc:
	.dc.w	L02c7c2-L02c7bc
	.dc.w	L02c7da-L02c7bc
	.dc.w	L02c7fe-L02c7bc

L02c7c2:
	tst.b	($001e,a1)
	bne	L02c7d4
	addq.b	#1,($001c,a1)
	move.b	#$3f,($001e,a1)
	rts

L02c7d4:
	subq.b	#1,($001e,a1)
	rts

L02c7da:
	move.w	($0028,a1),d0
	move.w	d0,d1
	sub.w	($002c,a1),d0
	move.w	d0,($0028,a1)
	eor.w	d0,d1
	bpl	L02c7f2
	eori.b	#$10,($0027,a1)
L02c7f2:
	subq.b	#1,($001e,a1)
	bne	L02c7fc
	addq.b	#1,($001c,a1)
L02c7fc:
	rts

L02c7fe:
	tst.w	d7
	bne	L02c826
	movea.l	($0020,a0),a3
	movea.l	($0008,a3),a3
	move.b	($0023,a3),($001e,a0)
	movea.l	a2,a3
	move.w	#$0003,d6
L02c816:
	movea.l	-(a3),a1
	clr.w	($001c,a1)
	andi.b	#$df,($0027,a1)
	dbra	d6,L02c816
L02c826:
	rts

L02c828:
	movea.l	($0004,a2),a1
	clr.w	d0
	move.b	($001c,a0),d0
	move.w	(L02c83a,pc,d0.w),d0
	jmp	(L02c83a,pc,d0.w)

L02c83a:
	.dc.w	L02c840-L02c83a
	.dc.w	L02c884-L02c83a
	.dc.w	L02c8c2-L02c83a

L02c840:
	btst.b	#$03,($0027,a0)
	beq	L02c910
	addq.b	#2,($001c,a0)
	move.l	#L02cb76,($0020,a1)
	move.l	#L0737d8,($0014,a0)
	move.w	#$0306,($0024,a0)
	bsr	L02cb8a
	ori.b	#$04,($0027,a0)
	move.b	#$50,($001f,a0)
	move.w	#$0003,d7
L02c878:
	movea.l	(a2)+,a1
	clr.l	($0010,a1)
	dbra	d7,L02c878
	bra	L02c902
L02c884:
	subq.b	#1,($001f,a0)
	bne	L02c910
	addq.b	#2,($001c,a0)
	move.l	#L02cb82,($0020,a1)
	move.l	#L0737b0,($0014,a0)
	move.w	#$0804,($0024,a0)
	move.b	#$03,($0019,a0)
	move.w	#$0003,d7
L02c8b0:
	movea.l	(a2)+,a1
	move.l	($002c,a1),d0
	neg.l	d0
	move.l	d0,($0010,a1)
	dbra	d7,L02c8b0
	bra	L02c906
L02c8c2:
	btst.b	#$03,($0027,a0)
	beq	L02c910
	move.l	#L02cb5e,($0020,a1)
	move.l	#L073770,($0014,a0)
	move.w	#$0404,($0024,a0)
	movea.l	($0008,a2),a1
	move.b	($0022,a1),($001f,a0)
	move.w	#$0003,d7
L02c8ee:
	movea.l	(a2)+,a1
	clr.w	($001c,a1)
	andi.b	#$df,($0027,a1)
	clr.l	($0010,a1)
	dbra	d7,L02c8ee
L02c902:
	clr.b	($0019,a0)
L02c906:
	clr.b	($0026,a0)
	andi.b	#$f7,($0027,a0)
L02c910:
	movea.l	($0020,a0),a2
	rts

L02c916:
	move.w	(L047f68),d0
	move.w	(L047f6c),d1
	move.w	#$0003,d7
L02c926:
	movea.l	(a2)+,a1
	add.w	d0,($0004,a1)
	add.w	d1,($0008,a1)
	dbra	d7,L02c926
	movea.l	($0020,a0),a2
	jsr	(L0299de)
	rts

L02c940:
	movea.l	($0008,a2),a1
	move.w	($0020,a1),d6
	move.w	#$0003,d7
L02c94c:
	movea.l	(a2)+,a1
	btst.b	#$05,($0027,a1)
	bne	L02c960
	move.w	($002a,a1),d0
	add.w	d6,d0
	move.w	d0,($002a,a1)
L02c960:
	dbra	d7,L02c94c
	movea.l	($0020,a0),a2
	rts

L02c96a:
	move.w	#$0003,d7
L02c96e:
	movea.l	(a2)+,a1
	btst.b	#$05,($0027,a1)
	bne	L02c99c
	clr.w	d0
	move.b	($002a,a1),d0
	jsr	(L010440)
	btst.b	#$04,($0027,a1)
	bne	L02c992
	tst.w	d0
	bpl	L02c998
	bra	L02c996
L02c992:
	tst.w	d0
	bmi	L02c998
L02c996:
	neg.w	d0
L02c998:
	move.w	d0,($0028,a1)
L02c99c:
	dbra	d7,L02c96e
	movea.l	($0020,a0),a2
	rts

L02c9a6:
	movea.l	a0,a3
	andi.b	#$7f,($0027,a0)
	move.w	($0028,a0),d0
	bpl	L02c9b6
	neg.w	d0
L02c9b6:
	addq.w	#4,a2
	move.w	#$0002,d7
L02c9bc:
	movea.l	(a2)+,a1
	andi.b	#$3f,($0027,a1)
	move.w	($0028,a1),d1
	bpl	L02c9cc
	neg.w	d1
L02c9cc:
	cmp.w	d1,d0
	bls	L02c9d4
	move.w	d1,d0
	movea.l	a1,a3
L02c9d4:
	dbra	d7,L02c9bc
	movea.l	($0020,a0),a2
	cmpi.b	#$02,($001d,a0)
	bne	L02c9ec
	ori.b	#$80,($0027,a3)
	rts

L02c9ec:
	ori.b	#$c0,($0027,a3)
	andi.b	#$bf,($0027,a0)
	rts

L02c9fa:
	move.w	#$0003,d7
L02c9fe:
	movea.l	(a2)+,a1
	move.w	($0028,a1),d0
	cmpi.b	#$01,($001d,a1)
	beq	L02ca1e
	btst.b	#$04,($0027,a1)
	bne	L02ca1a
	addi.w	#$3fff,d0
	bra	L02ca1e
L02ca1a:
	subi.w	#$3fff,d0
L02ca1e:
	ext.l	d0
	asl.l	#4,d0
	move.l	d0,($000c,a1)
	swap.w	d0
	andi.w	#$8000,d0
	move.w	($0018,a1),d1
	andi.w	#$7fff,d1
	or.w	d0,d1
	move.w	d1,($0018,a1)
	dbra	d7,L02c9fe
	movea.l	($0020,a0),a2
	rts

L02ca44:
	clr.w	d6
	move.w	#$0003,d7
L02ca4a:
	movea.l	(a2,d6.w),a1
	tst.b	($0027,a1)
	bmi	L02ca5a
	addq.w	#4,d6
	dbra	d7,L02ca4a
L02ca5a:
	move.w	d6,d5
	move.l	($0004,a1),d2
L02ca60:
	subq.w	#4,d5
	bmi	L02ca7a
	movea.l	(a2,d5.w),a3
	sub.l	($000c,a3),d2
	move.l	d2,($0004,a3)
	move.l	($0010,a3),d3
	sub.l	d3,($0008,a3)
	bra	L02ca60
L02ca7a:
	move.l	($0004,a1),d2
	add.l	($000c,a1),d2
	move.l	($0010,a1),d3
	sub.l	d3,($0008,a1)
L02ca8a:
	subq.w	#1,d7
	bmi	L02caa6
	addq.w	#4,d6
	movea.l	(a2,d6.w),a1
	move.l	d2,($0004,a1)
	add.l	($000c,a1),d2
	move.l	($0010,a1),d3
	add.l	d3,($0008,a1)
	bra	L02ca8a
L02caa6:
	rts

L02caa8:
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	tst.w	($0018,a0)
	bmi	L02cac2
	subq.w	#3,d1
	bra	L02cac4
L02cac2:
	addq.w	#3,d1
L02cac4:
	jsr	(L025426)
	addq.w	#4,a2
	move.w	#$0002,d7
	btst.b	#$02,($0027,a0)
	beq	L02cada
	addq.w	#1,d7
L02cada:
	movea.l	(a2)+,a1
	movea.l	($0014,a1),a5
	move.w	($0018,a1),d0
	move.w	($0004,a1),d1
	move.w	($0008,a1),d2
	jsr	(L025426)
	dbra	d7,L02cada
	movea.l	($0020,a0),a2
	rts

L02cafc:
	movea.l	($0004,a2),a3
	movea.l	($0020,a3),a3
	move.w	#$0003,d7
	bra	L02cb16
L02cb0a:
	cmpi.w	#$0002,d7
	bne	L02cb16
	lea.l	(L02cb66),a3
L02cb16:
	movea.l	(a2)+,a1
	btst.b	#$06,($0027,a1)
	bne	L02cb54
	subq.b	#1,($0024,a1)
	bne	L02cb54
	clr.w	d0
	move.b	($0026,a1),d0
	addq.b	#1,d0
	andi.b	#$f7,($0027,a1)
	cmp.b	($0025,a1),d0
	bne	L02cb42
	clr.w	d0
	ori.b	#$08,($0027,a1)
L02cb42:
	move.b	d0,($0026,a1)
	add.w	d0,d0
	move.b	(a3,d0.w),($0019,a1)
	move.b	($01,a3,d0.w),($0024,a1)
L02cb54:
	dbra	d7,L02cb0a
	movea.l	($0020,a0),a2
	rts

L02cb5e:
	.dc.b	$00,$04,$01,$04,$02,$04,$03,$04
L02cb66:
	.dc.b	$00,$04,$01,$04,$02,$04,$03,$04
L02cb6e:
	.dc.b	$00,$08,$01,$08,$02,$08,$03,$08
L02cb76:
	.dc.b	$00,$04,$01,$04,$02,$04,$03,$04
	.dc.b	$04,$04,$05,$04

L02cb82:
	movep.w	($0208,a0),d1
	movep.w	($0008,a0),d0
L02cb8a:
	movea.l	($0010,a2),a1
	move.w	#$0200,($0002,a1)
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	clr.l	($000c,a1)
	clr.l	($0010,a1)
	move.l	#L073808,($0014,a1)
	clr.w	($0018,a1)
	move.b	($0018,a0),($0018,a1)
	move.w	#$007f,($001a,a1)
	clr.w	($001c,a1)
	move.w	#$0006,($001e,a1)
	moveq.l	#$5c,d0
	trap	#0
	rts

L02cbd0:
	movea.l	($0010,a2),a1
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	tst.w	(L047fac)
	bne	L02cc12
	subq.w	#1,($001e,a1)
	bne	L02cc12
	move.w	($001c,a1),d0
	addq.w	#2,d0
	cmpi.w	#$000a,d0
	bne	L02cc02
	andi.b	#$fb,($0027,a0)
	bra	L02cc12
L02cc02:
	move.w	d0,($001c,a1)
	move.b	(L02cc14,pc,d0.w),($0019,a1)
	move.b	(L02cc15,pc,d0.w),($001f,a1)
L02cc12:
	rts

L02cc14:
	.dc.b	$00
L02cc15:
	.dc.b	$06,$01,$06,$02,$20,$01,$06,$00
	.dc.b	$0c

L02cc1e:
	jsr	(L0298a6)
	bcs	L02ccb6
	move.w	#$000b,($0000.w,a0)
	clr.w	($0002,a0)
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L02ccb8
	move.l	a0,($0020,a1)
	move.l	a1,($0028,a0)
	move.w	#$0034,($0000.w,a0)
	ori.w	#$4300,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L073570,($0014,a0)
	clr.w	($0018,a0)
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bgt	L02cc86
	ori.w	#$8000,($0018,a0)
L02cc86:
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0040,($001e,a0)
	clr.l	($0020,a0)
	move.b	(L02ce7c),($0024,a0)
	clr.b	($0025,a0)
	clr.w	($0026,a0)
	move.b	#$03,($002c,a0)
	subi.w	#$0008.w,($0008,a0)
L02ccb6:
	rts

L02ccb8:
	clr.w	($0000.w,a1)
	rts

L02ccbe:
	addi.w	#$0008.w,($0008,a0)
	jsr	(L029a3e)
	bcc	L02ccce
	beq	L02cd36
L02ccce:
	tst.w	(L047fac)
	beq	L02ccf2
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L02cd3a
	jsr	(L025416)
	subi.w	#$0008.w,($0008,a0)
	rts

L02ccf2:
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L02cd3a
	move.b	($0002,a0),($002d,a0)
	andi.w	#$7fff,($0002,a0)
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	movea.l	(L02cd2a,pc,d0.w),a1
	jsr	(a1)
	jsr	(L025416)
	subi.w	#$0008.w,($0008,a0)
	rts

L02cd2a:
	.dc.l	L02cd48
	.dc.l	L02ce84
	.dc.l	L02cf84

L02cd36:
	moveq.l	#$39,d0
	trap	#0
L02cd3a:
	movea.l	($0028,a0),a1
	clr.l	($0000.w,a1)
	jmp	(L029b82)

L02cd48:
	tst.b	($0025,a0)
	beq	L02cd58
	subq.b	#1,($0025,a0)
	bne	L02cd58
	clr.b	($0019,a0)
L02cd58:
	move.b	($001f,a0),d0
	beq	L02cd74
	subq.b	#1,d0
	move.b	d0,($001f,a0)
	cmpi.b	#$04,d0
	bne	L02ce4a
	addq.b	#1,($0019,a0)
	bra	L02ce4a
L02cd74:
	move.b	($002c,a0),d0
	beq	L02cd82
	subq.b	#1,d0
	move.b	d0,($002c,a0)
	bne	L02cdb2
L02cd82:
	tst.b	($002d,a0)
	bmi	L02cdb2
	move.b	#$04,($002c,a0)
	move.b	#$02,($001d,a0)
	move.l	#L0735a0,($0014,a0)
	moveq.l	#$2e,d0
	trap	#0
	clr.b	($0019,a0)
	move.b	#$04,($0025,a0)
	clr.b	($0027,a0)
	bra	L02cf84
L02cdb2:
	addq.b	#1,($0019,a0)
	move.b	#$04,($0025,a0)
	move.b	#$01,($001d,a0)
	tst.b	($0018,a0)
	seq.b	d1
	clr.w	d0
	move.b	($0022,a0),d0
	addq.b	#1,d0
	andi.b	#$03,d0
	move.b	d0,($0022,a0)
	add.b	d0,d0
	add.b	d0,d0
	move.l	(L02ce4c,pc,d0.w),($000c,a0)
	tst.b	d1
	beq	L02cdea
	neg.l	($000c,a0)
L02cdea:
	move.b	($0023,a0),d0
	addq.b	#1,d0
	andi.b	#$07,d0
	move.b	d0,($0023,a0)
	add.w	d0,d0
	add.w	d0,d0
	move.l	(L02ce5c,pc,d0.w),($0010,a0)
	subq.b	#1,($0024,a0)
	bne	L02ce4a
	move.b	($0021,a0),d0
	addq.b	#1,d0
	andi.b	#$07,d0
	move.b	d0,($0021,a0)
	move.b	(L02ce7c,pc,d0.w),($0024,a0)
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bgt	L02ce3a
	ori.w	#$8000,($0018,a0)
	tst.w	($000c,a0)
	bpl	L02ce4a
	neg.l	($000c,a0)
	bra	L02ce4a
L02ce3a:
	andi.w	#$7fff,($0018,a0)
	tst.w	($000c,a0)
	bmi	L02ce4a
	neg.l	($000c,a0)
L02ce4a:
	rts

L02ce4c:
	.dc.l	$00010000,$0002c000
	.dc.l	$00008000,$00013000
L02ce5c:
	.dc.l	$fffbe000,$fffe0000
	.dc.l	$fff9c000,$fffcc000
	.dc.l	$fffc6000,$fffde000
	.dc.l	$fffd8000,$fffdc000
L02ce7c:
	.dc.b	$02,$02,$03,$01,$02,$03,$01,$04

L02ce84:
	tst.b	($0025,a0)
	beq	L02ce94
	subq.b	#1,($0025,a0)
	bne	L02ce94
	addq.b	#1,($0019,a0)
L02ce94:
	bsr	L025620
	add.w	($0006,a5),d2
	tst.w	($0010,a0)
	bpl	L02ceda
	move.w	d1,d6
	move.w	($0006,a5),d7
	add.w	d7,d7
	neg.w	d7
	add.w	d2,d7
	bsr	L025904
	cmpi.b	#$01,d0
	bne	L02cef6
L02ceb8:
	addq.w	#1,($0008,a0)
	addq.w	#1,d2
	move.w	($0006,a5),d7
	add.w	d7,d7
	neg.w	d7
	add.w	d2,d7
	move.w	d1,d6
	bsr	L025904
	cmpi.b	#$01,d0
	beq	L02ceb8
	clr.l	($0010,a0)
	bra	L02cef6
L02ceda:
	cmpi.w	#$0001,($0010,a0)
	bcs	L02cee8
	tst.b	($002d,a0)
	bmi	L02cf4c
L02cee8:
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$01,d0
	beq	L02cf3a
L02cef6:
	move.w	d1,d6
	move.w	d2,d7
	tst.w	($0018,a0)
	bmi	L02cf06
	sub.w	($0004,a5),d6
	bra	L02cf0a
L02cf06:
	add.w	($0004,a5),d6
L02cf0a:
	bsr	L025904
	cmpi.b	#$01,d0
	bne	L02cf1e
	eori.w	#$8000,($0018,a0)
	neg.l	($000c,a0)
L02cf1e:
	move.l	($0010,a0),d0
	move.l	d0,d1
	addi.l	#$00004000,d0
	move.l	d0,($0010,a0)
	eor.l	d0,d1
	bpl	L02cf38
	move.b	#$04,($0019,a0)
L02cf38:
	rts

L02cf3a:
	subq.w	#1,d2
	subq.w	#1,($0008,a0)
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	tst.b	d0
	bne	L02cf3a
L02cf4c:
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.b	($0020,a0),d0
	addq.b	#1,d0
	andi.b	#$07,d0
	move.b	d0,($0020,a0)
	move.b	(L02cf7c,pc,d0.w),($001f,a0)
	lsr.w	($001e,a0)
	addq.b	#1,($0019,a0)
	move.b	#$03,($0025,a0)
	clr.b	($001d,a0)
	rts

L02cf7c:
	.dc.b	$10,$08,$08,$10,$40,$16,$08,$20

L02cf84:
	subq.b	#1,($0025,a0)
	bne	L02cfc6
	clr.w	d0
	move.b	($0027,a0),d0
	addq.b	#1,d0
	cmpi.b	#$06,d0
	bne	L02cfb0
	move.l	#L073570,($0014,a0)
	clr.b	($0019,a0)
	clr.b	($001d,a0)
	move.b	#$08,($001f,a0)
	rts

L02cfb0:
	move.b	d0,($0027,a0)
	move.b	(L02cfc8,pc,d0.w),($0025,a0)
	move.b	(L02cfce,pc,d0.w),($0019,a0)
	cmpi.b	#$03,d0
	beq	L02cfd4
L02cfc6:
	rts

L02cfc8:
	.dc.b	$04,$05,$02,$3a,$03,$04
L02cfce:
	.dc.b	$00,$01,$02,$02,$01,$00

L02cfd4:
	movea.l	($0028,a0),a1
	move.w	#$005f,($0000.w,a1)
	move.w	#$0200,($0002,a1)
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	clr.l	($000c,a1)
	clr.l	($0010,a1)
	move.l	#L0735b8,($0014,a1)
	clr.w	($0018,a1)
	move.b	($0018,a0),($0018,a1)
	move.w	#$007f,($001a,a1)
	clr.w	($001c,a1)
	move.w	#$0800,($001e,a1)
	clr.w	($0024,a1)
	clr.b	($0026,a1)
	rts

L02d024:
	movea.l	($0020,a0),a1
	move.l	($0008,a1),($0008,a0)
	addi.w	#$0008.w,($0008,a0)
	tst.w	(L047fac)
	beq	L02d042
	jmp	(L03657e)

L02d042:
	jsr	(L02993c)
	subq.b	#1,($001e,a0)
	bne	L02d078
	clr.w	d0
	move.b	($0025,a0),d0
	addq.b	#1,d0
	cmpi.b	#$07,d0
	bne	L02d068
	move.w	#$000b,($0000.w,a0)
	clr.w	($0002,a0)
	rts

L02d068:
	move.b	d0,($0025,a0)
	move.b	(L02d080,pc,d0.w),($001e,a0)
	move.b	(L02d087,pc,d0.w),($0019,a0)
L02d078:
	jsr	(L025416)
	rts

L02d080:
	.dc.b	$08,$03,$03,$14,$03,$03,$08
L02d087:
	.dc.b	$00,$01,$02,$03,$02,$01,$00

L02d08e:
	jsr	(L0298c4)
	bcs	L02d0fc
	move.w	#$003b,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L0738b8,($0014,a0)
	move.w	#$0000,($0018,a0)
	move.b	($0005,a6),d0
	or.b	d0,($0018,a0)
	move.w	#$0014,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0001,($001e,a0)
	move.w	(L047354),d0
	move.b	(L02d0fe,pc,d0.w),($0020,a0)
	move.b	($0020,a0),($0021,a0)
	clr.w	($0022,a0)
	move.w	#$0008,($0024,a0)
L02d0fc:
	rts

L02d0fe:
	.dc.b	$01,$01,$02,$02,$02,$04

L02d104:
	jsr	(L029a3e)
	bcc	L02d128
	bne	L02d118
	moveq.l	#$36,d0
	trap	#0
	jmp	(L029b9e)

L02d118:
	moveq.l	#$31,d0
	trap	#0
	move.b	#$08,($001e,a0)
	andi.w	#$fcff,($0002,a0)
L02d128:
	tst.b	($001e,a0)
	beq	L02d13a
	subq.b	#1,($001e,a0)
	bne	L02d13a
	ori.w	#$0300,($0002,a0)
L02d13a:
	tst.w	(L047fac)
	beq	L02d148
	jmp	(L03657e)

L02d148:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L02d15c
	jmp	(L029cca)

L02d15c:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L02d174,pc,d0.w),d0
	jsr	(L02d174,pc,d0.w)
	jsr	(L025416)
	rts

L02d174:
	.dc.w	L02d178-L02d174
	.dc.w	L02d1c2-L02d174

L02d178:
	tst.b	($001f,a0)
	beq	L02d184
	subq.b	#1,($001f,a0)
	rts

L02d184:
	bsr	L02d19c
	cmpi.w	#$0070,d4
	bhi	L02d19a
	addq.w	#1,($001c,a0)
	clr.w	($0022,a0)
	move.w	#$0002,($0024,a0)
L02d19a:
	rts

L02d19c:
	tst.w	($0018,a0)
	bmi	L02d1b2
	move.w	($0004,a0),d4
	subi.w	#$0018,d4
	sub.w	(L0473f4),d4
	bra	L02d1c0
L02d1b2:
	move.w	(L0473f4),d4
	subi.w	#$0018,d4
	sub.w	($0004,a0),d4
L02d1c0:
	rts

L02d1c2:
	cmpi.w	#$0001,($0024,a0)
	bne	L02d238
	cmpi.w	#$0005,($0022,a0)
	bne	L02d238
	bsr	L02d19c
	move.w	(L0473f8),d0
	sub.w	($0008,a0),d0
	subi.w	#$001c,d0
	asr.w	#2,d0
	sub.w	d0,d4
	bmi	L02d1f4
	cmpi.w	#$0080,d4
	blt	L02d1f6
	move.w	#$0080,d4
	bra	L02d1f6
L02d1f4:
	clr.w	d4
L02d1f6:
	lsr.w	#1,d4
	andi.w	#$fff8,d4
	move.l	($0004,a0),d2
	move.l	($0008,a0),d3
	move.b	($0018,a0),d1
	move.l	a0,-(a7)
	clr.w	d0
	bsr	L02d272
	movea.l	(a7)+,a0
	subq.b	#1,($0021,a0)
	bpl	L02d238
	clr.w	($001c,a0)
	move.b	#$50,($001f,a0)
	move.w	(L047354),d0
	add.w	d0,d0
	add.w	(L047354),d0
	sub.b	d0,($001f,a0)
	move.b	($0020,a0),($0021,a0)
L02d238:
	subq.w	#1,($0024,a0)
	bne	L02d264
	move.w	($0022,a0),d0
	addq.w	#1,d0
	cmpi.w	#$0006,d0
	bne	L02d24c
	clr.w	d0
L02d24c:
	move.w	d0,($0022,a0)
	add.w	d0,d0
	lea.l	(L02d266),a1
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0025,a0)
L02d264:
	rts

L02d266:
	.dc.b	$00,$08,$01,$02,$02,$02,$03,$02
	.dc.b	$04,$08,$05,$08

L02d272:
	jsr	(L0298a6)
	bcs	L02d2e8
	move.w	#$003c,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	subi.w	#$001c,($0008,a0)
	moveq.l	#$08,d0
	tst.b	d1
	bmi	L02d29e
	neg.w	d0
L02d29e:
	add.w	d0,($0004,a0)
	move.l	#L0738e8,($0014,a0)
	move.w	#$0007,($0018,a0)
	move.l	(L02d2ea,pc,d4.w),d6
	move.l	(L02d2ee,pc,d4.w),d7
	jsr	(L01024e)
	asr.w	#2,d0
	ext.l	d0
	add.l	d0,d7
	or.b	d1,($0018,a0)
	bmi	L02d2cc
	neg.l	d6
L02d2cc:
	move.l	d6,($000c,a0)
	move.l	d7,($0010,a0)
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0040,($001e,a0)
	moveq.l	#$5d,d0
	trap	#0
L02d2e8:
	rts

L02d2ea:
	.dc.l	$00003000
L02d2ee:
	.dc.l	$fffc0000,$00005450
	.dc.l	$fffc04f0,$0000b7c0
	.dc.l	$fffc13b0,$00011940
	.dc.l	$fffc2c20,$000177d0
	.dc.l	$fffc4e00,$0001d2b0
	.dc.l	$fffc78f0,$000228e0
	.dc.l	$fffcaca0,$00027990
	.dc.l	$fffce870

L02d32a:
	move.b	($001a,a0),d0
	andi.b	#$7f,d0
	beq	L02d3c2
	cmpi.b	#$01,d0
	bne	L02d392
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	addq.b	#2,($001d,a0)
	andi.w	#$fcff,($0002,a0)
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	move.w	d0,($0020,a0)
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	move.w	d0,($0022,a0)
	move.b	(L047408),($0024,a0)
	clr.b	($001a,a0)
	addi.w	#$0080,($001e,a0)
	ori.w	#$4000,($0018,a0)
	bsr	L02d4d2
	bne	L02d3c2
	asl.w	($0022,a0)
	subq.w	#8,($0022,a0)
	bra	L02d3c2
L02d392:
	jsr	(L029a3e)
	bcc	L02d3c2
	andi.w	#$00ff,($0002,a0)
	move.l	($0010,a0),d0
	bmi	L02d3a8
	neg.l	d0
L02d3a8:
	asr.l	#1,d0
	move.l	d0,($0010,a0)
	move.l	($000c,a0),d0
	asr.l	#1,d0
	move.l	d0,($000c,a0)
	move.b	#$03,($001d,a0)
	bra	L02d50e
L02d3c2:
	cmpi.b	#$02,($001d,a0)
	bcc	L02d3d8
	tst.w	(L047fac)
	beq	L02d3d8
	jmp	(L03657e)

L02d3d8:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L02d3ec
	jmp	(L029cca)

L02d3ec:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L02d404,pc,d0.w),d0
	jsr	(L02d404,pc,d0.w)
	jsr	(L025416)
	rts

L02d404:
	.dc.w	L02d40c-L02d404
	.dc.w	L02d470-L02d404
	.dc.w	L02d47a-L02d404
	.dc.w	L02d50e-L02d404

L02d40c:
	bsr	L025620
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	bsr	L025904
	cmpi.b	#$01,d0
	beq	L02d456
	move.l	($0010,a0),d0
	add.l	#$00002000,d0
	move.l	d0,($0010,a0)
	bmi	L02d434
	neg.l	d0
L02d434:
	move.l	d0,d1
	asr.l	#1,d1
	add.l	d1,d0
	swap.w	d0
	cmpi.w	#$fff9,d0
	bcc	L02d446
	move.w	#$fff9,d0
L02d446:
	tst.w	($0010,a0)
	bpl	L02d44e
	neg.w	d0
L02d44e:
	addq.w	#7,d0
	move.b	d0,($0019,a0)
	rts

L02d456:
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	addq.b	#1,($001d,a0)
	ori.w	#$4000,($0018,a0)
	andi.w	#$fcff,($0002,a0)
	rts

L02d470:
	subq.b	#1,($001f,a0)
	beq	L029cca
	rts

L02d47a:
	cmpi.b	#$08,(L04740d)
	beq	L029cca
	subq.b	#1,($001f,a0)
	beq	L029cca
	move.b	(L047408),d0
	eor.b	d0,($0024,a0)
	bpl	L02d4a4
	neg.w	($0020,a0)
	eori.b	#$80,($0018,a0)
L02d4a4:
	move.w	(L0473f4),d0
	add.w	($0020,a0),d0
	move.w	d0,($0004,a0)
	move.w	($0022,a0),d0
	bsr	L02d4d2
	bne	L02d4be
	asr.w	#1,d0
	addq.w	#8,d0
L02d4be:
	add.w	(L0473f8),d0
	move.w	d0,($0008,a0)
	move.b	(L047408),($0024,a0)
	rts

L02d4d2:
	move.b	(L04740d),d7
	cmpi.b	#$01,d7
	bne	L02d4e6
	tst.b	(L04740f)
	bne	L02d50a
L02d4e6:
	cmpi.b	#$06,d7
	beq	L02d50a
	cmpi.b	#$07,d7
	bne	L02d504
	tst.b	(L04740e)
	bne	L02d504
	cmpi.b	#$06,(L04740d)
	bgt	L02d50a
L02d504:
	move.w	#$0000,ccr
	rts

L02d50a:
	clr.b	d7
	rts

L02d50e:
	move.w	($0018,a0),d0
	tst.b	($001a,a0)
	bpl	L02d520
	subq.b	#1,d0
	bpl	L02d536
	clr.b	d0
	bra	L02d52c
L02d520:
	addq.b	#1,d0
	cmpi.b	#$0f,d0
	bne	L02d536
	move.b	#$0e,d0
L02d52c:
	eori.w	#$8000,d0
	eori.w	#$8000,($001a,a0)
L02d536:
	move.w	d0,($0018,a0)
	addi.l	#$00002000,($0010,a0)
	rts

L02d544:
	jsr	(L0298a6)
	bcs	L02d5b8
	jsr	(L029cd4)
L02d552:
	move.w	#$0080,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	moveq.l	#$00,d0
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.l	#L073a20,($0014,a0)
	clr.w	($0018,a0)
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bcc	L02d590
	ori.w	#$8000,($0018,a0)
L02d590:
	move.w	#$007f,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0030,($001e,a0)
	clr.l	($0020,a0)
	move.b	#$30,($0021,a0)
	move.b	#$07,($0022,a0)
	move.l	#L02d5e4,($0024,a0)
L02d5b8:
	rts

L02d5ba:
	moveq.l	#$00,d0
	move.b	($0023,a0),d0
	addq.w	#1,d0
	move.b	d0,($0023,a0)
	andi.w	#$00fe,d0
	add.w	d0,d0
	move.l	(L02d5d4,pc,d0.w),($0014,a0)
	rts

L02d5d4:
	.dc.l	L073960
	.dc.l	L073990
	.dc.l	L0739c0
	.dc.l	L0739f0
L02d5e4:
	.dc.b	$30,$06,$06,$06,$06,$06,$06
L02d5eb:
	.dc.b	$08,$08,$10,$08,$08,$10,$00

L02d5f2:
	tst.w	($001c,a0)
	bmi	L02d8dc
	jsr	(L029a3e)
	bcc	L02d652
	andi.w	#$00ff,($0002,a0)
	clr.l	($000c,a0)
	move.b	($0023,a0),d0
	addq.b	#1,d0
	cmpi.b	#$08,d0
	bne	L02d626
	moveq.l	#$32,d0
	trap	#0
	move.w	#$0004,($001c,a0)
	bra	L02d7f4
L02d626:
	moveq.l	#$32,d0
	trap	#0
	btst.l	#$00,d0
	bne	L02d636
	moveq.l	#$00,d6
	bsr	L02d812
L02d636:
	bsr	L02d5ba
	ori.w	#$8000,($0020,a0)
	move.w	#$0003,($001c,a0)
	move.w	#$1000,($001e,a0)
	move.l	($0004,a0),($0028,a0)
	bra	L02d668
L02d652:
	cmpi.w	#$0003,($001c,a0)
	bcc	L02d668
	tst.w	(L047fac)
	beq	L02d668
	jmp	(L03657e)

L02d668:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L02d67c
	jmp	(L029cca)

L02d67c:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02d6ba,pc,d0.w),d0
	jsr	(L02d6ba,pc,d0.w)
	tst.w	($0020,a0)
	bmi	L02d6b2
	subq.b	#1,($0021,a0)
	bne	L02d6b2
	move.b	($0019,a0),d0
	addq.w	#1,d0
	cmp.b	($0022,a0),d0
	bne	L02d6a4
	clr.w	d0
L02d6a4:
	move.b	d0,($0019,a0)
	movea.l	($0024,a0),a1
	move.b	(a1,d0.w),($0021,a0)
L02d6b2:
	jsr	(L025416)
	rts

L02d6ba:
	.dc.w	L02d6c4-L02d6ba
	.dc.w	L02d70c-L02d6ba
	.dc.w	L02d746-L02d6ba
	.dc.w	L02d77e-L02d6ba
	.dc.w	L02d7f4-L02d6ba

L02d6c4:
	cmpi.b	#$06,($0019,a0)
	bne	L02d70a
	cmpi.b	#$01,($0021,a0)
	bne	L02d70a
	addq.w	#1,($001c,a0)
	move.w	#$0010,($001e,a0)
	ori.w	#$0300,($0002,a0)
	ori.w	#$8000,($0020,a0)
	move.b	#$04,($0021,a0)
	move.l	#L02d5eb,($0024,a0)
	move.l	#L073960,($0014,a0)
	clr.b	($0019,a0)
	move.b	#$06,($0022,a0)
L02d70a:
	rts

L02d70c:
	subq.w	#1,($001e,a0)
	bne	L02d70a
	andi.w	#$7fff,($0020,a0)
	move.l	#$ffffc000,d2
	move.w	($0018,a0),d1
	andi.w	#$7fff,d1
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bcc	L02d738
	ori.w	#$8000,d1
	neg.l	d2
L02d738:
	move.w	d1,($0018,a0)
	move.l	d2,($000c,a0)
	addq.w	#1,($001c,a0)
	rts

L02d746:
	jsr	(L025620)
	move.w	($0004,a5),d0
	tst.w	($000c,a0)
	bpl	L02d758
	neg.w	d0
L02d758:
	add.w	d0,d1
	add.w	($0006,a5),d2
	addq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.w	d0
	bmi	L02d77c
	tst.b	d0
	bne	L02d77c
	eori.w	#$8000,($0018,a0)
	neg.l	($000c,a0)
L02d77c:
	rts

L02d77e:
	move.w	(L047f68),d0
	add.w	d0,($0028,a0)
	subq.b	#1,($001e,a0)
	bne	L02d7b2
	ori.w	#$0300,($0002,a0)
	move.w	#$0001,($001e,a0)
	move.w	#$0001,($001c,a0)
	andi.w	#$7fff,($0020,a0)
	move.l	($0028,a0),($0004,a0)
	clr.l	($000c,a0)
	rts

L02d7b2:
	jsr	(L01024e)
	andi.w	#$001f,d0
	addi.w	#$0020,d0
	add.b	($001f,a0),d0
	move.b	d0,($001f,a0)
	jsr	(L010440)
	ext.l	d0
	asl.l	#3,d0
	move.w	($0028,a0),d1
	sub.w	($0004,a0),d1
	bmi	L02d7e2
	tst.l	d0
	bmi	L02d7e6
	bra	L02d7e8
L02d7e2:
	tst.l	d0
	bmi	L02d7e8
L02d7e6:
	neg.l	d0
L02d7e8:
	add.l	d0,($0004,a0)
	eori.w	#$4000,($0020,a0)
	rts

L02d7f4:
	moveq.l	#$00,d6
	btst.b	#$05,($0020,a0)
	bne	L02d802
	add.w	#$8000,d6
L02d802:
	bsr	L02d812
	jmp	(L029b9e)

L02d80a:
	.dc.b	$00
L02d80b:
	.dc.b	$fc,$fc,$fe,$fe,$f6,$00,$00

L02d812:
	movea.l	a0,a1
	moveq.l	#$00,d5
	moveq.l	#$03,d7
L02d818:
	jsr	(L0298a6)
	bcc	L02d826
	moveq.l	#$00,d7
	bra	L02d8d2
L02d826:
	move.w	#$0080,($0000.w,a0)
	move.w	($0002,a1),d0
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.b	($0023,a1),d0
	ext.w	d0
	andi.w	#$00fe,d0
	move.b	(L02d80a,pc,d0.w),d1
	move.b	(L02d80b,pc,d0.w),d2
	ext.w	d1
	ext.w	d2
	tst.w	($0018,a0)
	bpl	L02d862
	neg.w	d1
L02d862:
	add.w	d1,($0004,a0)
	add.w	d2,($0008,a0)
	jsr	(L01024e)
	andi.w	#$0001,d0
	addq.w	#1,d0
	swap.w	d0
	jsr	(L01024e)
	tst.w	($001a,a1)
	bpl	L02d886
	neg.l	d0
L02d886:
	move.l	d0,($000c,a0)
	moveq.l	#$00,d0
	jsr	(L01024e)
	addi.l	#$00010000,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	move.l	#L073a58,($0014,a0)
	andi.w	#$8001,d0
	move.w	d0,($0018,a0)
	move.w	#$8000,($001c,a0)
	jsr	(L01024e)
	andi.w	#$001f,d0
	addi.w	#$0020,d0
	move.w	d0,($001e,a0)
	move.w	d6,($0020,a0)
	move.w	d5,($0022,a0)
	addi.w	#$0003.w,d5
L02d8d2:
	dbra	d7,L02d818
	movea.l	a0,a2
	movea.l	a1,a0
	rts

L02d8dc:
	move.w	($0022,a0),d0
	beq	L02d8ea
	subq.w	#1,d0
	move.w	d0,($0022,a0)
	rts

L02d8ea:
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L02d974
	move.w	($001e,a0),d0
	subq.w	#1,d0
	beq	L02d974
	cmpi.w	#$0010,d0
	bne	L02d90c
	ori.w	#$4000,($0018,a0)
L02d90c:
	move.w	d0,($001e,a0)
	tst.w	($0020,a0)
	bpl	L02d964
	move.w	($0008,a0),d0
	subi.w	#$0080,d0
	cmpi.w	#$fff8,d0
	bcs	L02d964
	move.w	($0004,a0),d0
	add.w	(L047f7a),d0
	subi.w	#$1148,d0
	cmpi.w	#$ff30,d0
	bcs	L02d964
	move.w	($0002,a0),d0
	move.l	($0004,a0),d2
	move.l	#$00680000,d3
	bsr	L02d552
	ori.w	#$2000,($0020,a0)
	jsr	(L01024e)
	andi.w	#$000f,d0
	addi.w	#$0010,d0
	move.w	d0,($001e,a0)
	rts

L02d964:
	addi.l	#$00002000,($0010,a0)
	jsr	(L025416)
	rts

L02d974:
	jmp	(L029cca)

L02d97a:
	lea.l	($00e10000),a3
	lea.l	($00c982c1),a5
	lea.l	(L06317c),a6
	jsr	(L02852e)
	lea.l	(L0631bc),a6
	jsr	(L02852e)
	lea.l	(L0631dc),a6
	jsr	(L02852e)
	lea.l	($00c98301),a5
	lea.l	(L06319c),a6
	jsr	(L02852e)
	lea.l	(L0631fc),a6
	jsr	(L02852e)
	lea.l	(L06321c),a6
	jsr	(L02852e)
	lea.l	(L06323c),a6
	jsr	(L02852e)
	lea.l	($00e73660),a1
	lea.l	(L06317c),a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($0020,a6),a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($00e73860),a1
	lea.l	(-$0060,a6),a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	lea.l	($0040,a6),a6
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	move.l	(a6)+,(a1)+
	rts

L02da70:
	jsr	(L0298a6)
	bcs	L02daa6
	move.l	a6,($0020,a0)
	move.w	#$0039,($0000.w,a0)
	andi.w	#$fcff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	jsr	(L03b180)
L02daa6:
	rts

L02daa8:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L02dabc
	jmp	(L029cca)

L02dabc:
	cmpi.w	#$0060,(L0470f2)
	bhi	L02dbe4
	move.l	#$007a0000,d2
	move.l	($0008,a0),d3
	subi.l	#$00080000,d3
	move.w	#$00ff,d4
	move.w	#$0000,d5
	move.l	#$00070003,d6
	moveq.l	#$07,d7
	movea.l	#L076ab6,a2
	jsr	(L009016)
	move.l	#$00880000,d2
	move.l	($0008,a0),d3
	subi.l	#$00080000,d3
	move.w	#$00ff,d4
	move.w	#$0000,d5
	move.l	#$00070003,d6
	moveq.l	#$07,d7
	movea.l	#L076ab6,a2
	jsr	(L009016)
	move.l	#$007a0000,d2
	move.l	($0008,a0),d3
	addi.l	#$00100000,d3
	move.w	#$00ff,d4
	move.w	#$0000,d5
	move.l	#$00070003,d6
	moveq.l	#$07,d7
	movea.l	#L076ab6,a2
	jsr	(L009016)
	move.l	#$00880000,d2
	move.l	($0008,a0),d3
	subi.l	#$00100000,d3
	move.w	#$00ff,d4
	move.w	#$0000,d5
	move.l	#$00070003,d6
	moveq.l	#$07,d7
	movea.l	#L076ab6,a2
	jsr	(L009016)
	move.w	#$0080,d2
	move.w	#$0048,d3
	clr.w	d4
	moveq.l	#$30,d1
	lea.l	(L05bbdc),a2
	moveq.l	#$1f,d7
L02db8c:
	cmpi.w	#$000b,($0000.w,a2)
	beq	L02dba2
	lea.l	($0030,a2),a2
	cmpa.l	#L05c1dc,a2
	bne	L02db8c
	bra	L02dbc2
L02dba2:
	jsr	(L01024e)
	andi.w	#$8007,d0
	move.w	d0,($0018,a2)
	move.w	d1,($001e,a2)
	move.w	d4,($0020,a2)
	addq.w	#1,d4
	lea.l	($0030,a2),a2
	dbra	d7,L02db8c
L02dbc2:
	move.l	a0,-(a7)
	bsr	L02dbe6
	movea.l	(a7)+,a0
	bcs	L02dbe4
	moveq.l	#$80,d0
	trap	#0
	move.w	#$0008,(L04731e)
	movea.l	($0020,a0),a1
	move.w	#$0000,($0002,a1)
	clr.l	($0000.w,a0)
L02dbe4:
	rts

L02dbe6:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcc	L02dc02
	jsr	(L0298e2)
	bcc	L02dc02
	jsr	(L02991e)
	bcc	L02dc02
	rts

L02dc02:
	move.w	#$003a,($0000.w,a0)
	clr.w	($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L06c3e4,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$007f,($001a,a0)
	clr.l	($001c,a0)
	clr.l	($0020,a0)
	clr.l	($0024,a0)
	clr.l	($0028,a0)
	rts

L02dc44:
	tst.w	($0020,a0)
	beq	L02dc4c
	rts

L02dc4c:
	move.l	(L047f68),d0
	move.l	(L047f6c),d1
	add.l	($0004,a0),d0
	add.l	($0008,a0),d1
	tst.w	(L047fac)
	bne	L02dc70
	add.l	($000c,a0),d0
	add.l	($0010,a0),d1
L02dc70:
	move.l	d0,($0004,a0)
	move.l	d1,($0008,a0)
	swap.w	d0
	swap.w	d1
	move.w	d0,(L02dfde)
	move.w	d1,(L02dfe0)
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02dc96,pc,d0.w),d0
	jmp	(L02dc96,pc,d0.w)

L02dc96:
	.dc.w	L02de16-L02dc96
	.dc.w	L02dc9a-L02dc96

L02dc9a:
	jsr	(L0299de)
	bcc	L02dca8
	clr.l	($0000.w,a0)
	rts

L02dca8:
	tst.w	(L047fac)
	bne	L02de58
	cmpi.w	#$0180,(L0470ee)
	bcc	L02dcc4
	move.l	#$00020000,($000c,a0)
L02dcc4:
	subq.w	#1,($001e,a0)
	bne	L02de58
	movea.l	a0,a2
	jsr	(L0298a6)
	bcs	L02de58
	move.w	($0026,a2),d0
	addq.w	#1,d0
	cmpi.w	#$0010,d0
	beq	L02ddae
	move.w	d0,($0026,a2)
	move.w	(L047354),d1
	lsl.w	#4,d1
	add.w	d1,d0
	lea.l	(L02ddb6),a3
	move.b	(a3,d0.w),($001f,a2)
	movea.l	($0028,a2),a1
	move.w	#$001b,($0000.w,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	move.l	($0014,a1),($0014,a0)
	move.w	($0018,a1),($0018,a0)
	move.w	#$0001,($001a,a0)
	move.w	($0004,a1),d0
	move.w	($0008,a1),d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	andi.w	#$00ff,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	tst.w	(L047354)
	bne	L02dd6a
	asl.l	#2,d0
	asl.l	#2,d1
	move.l	d0,d2
	move.l	d1,d3
	add.l	d0,d0
	add.l	d1,d1
	add.l	d2,d0
	add.l	d3,d1
	bra	L02dd6e
L02dd6a:
	asl.l	#4,d0
	asl.l	#4,d1
L02dd6e:
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.w	#$0005,($001c,a0)
	move.w	#$0300,($0002,a0)
	move.w	#$ffff,($0022,a0)
	move.b	($0019,a1),d0
	move.b	d0,($002e,a0)
	move.b	d0,($002f,a0)
	clr.w	($0024,a0)
	clr.l	($0000.w,a1)
	lea.l	(-$0030,a1),a1
	move.l	a1,($0028,a2)
	movea.l	a2,a0
	moveq.l	#$68,d0
	trap	#0
	bra	L02de58
L02ddae:
	movea.l	a2,a0
	clr.l	($0000.w,a0)
	rts

L02ddb6:
	.dc.b	$40,$30,$20,$10,$08,$04,$04,$04
	.dc.b	$04,$04,$40,$04,$08,$04,$06,$04
	.dc.b	$18,$08,$10,$10,$18,$08,$10,$10
	.dc.b	$10,$08,$08,$08,$08,$20,$10,$10
	.dc.b	$08,$08,$08,$08,$28,$08,$08,$08
	.dc.b	$08,$08,$10,$08,$08,$08,$08,$08
	.dc.b	$10,$08,$08,$10,$20,$10,$20,$08
	.dc.b	$10,$08,$08,$08,$08,$18,$10,$10
	.dc.b	$10,$10,$20,$10,$10,$20,$10,$10
	.dc.b	$10,$10,$10,$10,$30,$18,$18,$18
	.dc.b	$10,$08,$08,$10,$10,$10,$10,$20
	.dc.b	$10,$08,$08,$10,$10,$10,$10,$10

L02de16:
	clr.b	($001a,a0)
	clr.w	d0
	tst.w	($000c,a0)
	bpl	L02de26
	move.w	#$0001,d0
L02de26:
	move.w	d0,($0022,a0)
	tst.b	($0020,a0)
	bne	L02de58
	cmpi.w	#$0003,(L05bbf8)
	bne	L02de58
	move.l	a0,-(a7)
	bsr	L02e05a
	movea.l	(a7)+,a1
	move.l	a1,($002c,a0)
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	movea.l	a1,a0
	not.b	($0020,a0)
L02de58:
	move.l	a0,-(a7)
	lea.l	(L05bbdc),a0
L02de60:
	cmpi.w	#$000b,($0000.w,a0)
	bne	L02de6a
	bsr	L02de7a
L02de6a:
	lea.l	($0030,a0),a0
	cmpa.l	#L05c1dc,a0
	bne	L02de60
	movea.l	(a7)+,a0
	rts

L02de7a:
	cmpi.w	#$0003,($001c,a0)
	bne	L02de90
	tst.w	(L047fac)
	beq	L02de90
	jmp	(L03657e)

L02de90:
	jsr	(L029954)
	cmpi.w	#$0004,($001c,a0)
	bcs	L02dea8
	jsr	(L0299de)
	bcs	L029cca
L02dea8:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L02dec0,pc,d0.w),d0
	jsr	(L02dec0,pc,d0.w)
	jsr	(L025416)
	rts

L02dec0:
	.dc.w	L02dedc-L02dec0
	.dc.w	L02def6-L02dec0
	.dc.w	L02dfa6-L02dec0
	.dc.w	L02dfba-L02dec0
	.dc.w	L02def4-L02dec0
	.dc.w	L02decc-L02dec0

L02decc:
	jsr	(L029a3e)
	bcc	L02deda
	jmp	(L029b20)

L02deda:
	rts

L02dedc:
	subq.w	#1,($001e,a0)
	bne	L02deec
	addq.b	#1,($001d,a0)
	move.w	#$0020,($001e,a0)
L02deec:
	addi.l	#$00002000,($0010,a0)
L02def4:
	rts

L02def6:
	subq.w	#1,($001e,a0)
	beq	L02df16
	move.l	($0010,a0),d0
	beq	L02df08
	asr.l	#5,d0
	sub.l	d0,($0010,a0)
L02df08:
	move.l	($000c,a0),d0
	beq	L02df14
	asr.l	#5,d0
	sub.l	d0,($000c,a0)
L02df14:
	rts

L02df16:
	moveq.l	#$00,d0
	moveq.l	#$00,d1
	move.w	($0020,a0),d2
	add.w	d2,d2
	lea.l	(L02df66),a1
	clr.w	d0
	move.b	(a1,d2.w),d0
	move.b	($01,a1,d2.w),d1
	ext.w	d0
	addi.w	#$0080,d0
	ext.w	d1
	addi.w	#$0038,d1
	sub.w	(L0470f2),d1
	swap.w	d0
	swap.w	d1
	sub.l	($0004,a0),d0
	sub.l	($0008,a0),d1
	asr.l	#6,d0
	asr.l	#6,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	move.w	#$0040,($001e,a0)
	addq.w	#1,($001c,a0)
	rts

L02df66:
	.dc.b	$f8,$e9,$fe,$ee,$f7,$f5,$fe,$f6
	.dc.b	$05,$ff,$f5,$01,$fe,$fe,$06,$ff
	.dc.b	$fd,$09,$02,$06,$00,$0b,$05,$0d
	.dc.b	$07,$10,$fb,$10,$00,$12,$06,$11
	.dc.b	$fa,$11,$00,$16,$07,$13,$0a,$18
	.dc.b	$fa,$ee,$fd,$16,$fa,$1b,$01,$1d
	.dc.b	$02,$f2,$0d,$22,$05,$21,$f7,$fc
	.dc.b	$f9,$1e,$01,$fa,$fd,$00,$03,$fd

L02dfa6:
	subq.w	#1,($001e,a0)
	bne	L02dfb8
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	addq.w	#1,($001c,a0)
L02dfb8:
	rts

L02dfba:
	lea.l	(L02dfce),a1
	move.l	(a1)+,d1
	move.l	(a1)+,d2
	move.l	(a1)+,d3
	move.l	(a1)+,d4
	move.w	(a1)+,d5
	move.w	(a1),d6
	bra	L02e01c

L02dfce:
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
	.dc.b	$00,$00,$00,$00,$00,$00,$00,$00
L02dfde:
	.dc.w	$0000
L02dfe0:
	.dc.w	$0000,$4e75,$5328,$001f
	.dc.w	$660c,$5328,$001d,$117c
	.dc.w	$0000,$001f,$4e75,$223c
	.dc.w	$0001,$2000,$243c,$0001
	.dc.w	$0000,$263c,$0003,$0000
	.dc.w	$283c,$0003,$0000,$3a39
	.dc.l	L0473f4
	.dc.w	$3c3c,$0030,$6000,$0002

L02e01c:
	move.l	d1,d7
	cmp.w	($0004,a0),d5
	bgt	L02e026
	neg.l	d7
L02e026:
	add.l	($000c,a0),d7
	cmp.l	d3,d7
	bgt	L02e034
	neg.l	d3
	cmp.l	d3,d7
	bge	L02e036
L02e034:
	move.l	d3,d7
L02e036:
	move.l	d7,($000c,a0)
	move.l	d2,d7
	cmp.w	($0008,a0),d6
	bgt	L02e044
	neg.l	d7
L02e044:
	add.l	($0010,a0),d7
	cmp.l	d4,d7
	bgt	L02e052
	neg.l	d4
	cmp.l	d4,d7
	bge	L02e054
L02e052:
	move.l	d4,d7
L02e054:
	move.l	d7,($0010,a0)
	rts

L02e05a:
	jsr	(L0298a6)
	bcc	L02e074
	jsr	(L0298e2)
	bcc	L02e074
	jsr	(L02991e)
	bcc	L02e074
	rts

L02e074:
	move.w	#$006a,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.l	#$00800000,($0004,a0)
	clr.l	d0
	move.w	#$0038,d0
	sub.w	(L0470f2),d0
	swap.w	d0
	move.l	d0,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L076af6,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0020,($001a,a0)
	move.l	#$00000060,($001c,a0)
	move.w	#$0600,($0020,a0)
	clr.l	($0022,a0)
	clr.l	($0026,a0)
	clr.w	($002a,a0)
	lea.l	(L02dfce),a1
	move.l	#$00003800,(a1)+
	move.l	#$00003800,(a1)+
	move.l	#$0002c000,(a1)+
	move.l	#$00030000,(a1)+
	move.w	($0004,a0),(a1)+
	move.w	($0008,a0),(a1)
	lea.l	(L05bedc),a1
	clr.w	($0000.w,a1)
	clr.w	($0030,a1)
	clr.w	($0060,a1)
	clr.w	($0090,a1)
	clr.w	($00c0,a1)
	clr.w	($00f0,a1)
	clr.w	($0120,a1)
	clr.w	($0150,a1)
	rts

L02e11c:
	jsr	(L029a3e)
	bcc	L02e140
	beq	L02e598
	moveq.l	#$31,d0
	trap	#0
	move.b	#$0a,($002a,a0)
	clr.w	($0002,a0)
	movea.l	($002c,a0),a1
	move.w	#$0001,($0024,a1)
L02e140:
	movea.l	($002c,a0),a1
	move.b	($002a,a0),d0
	beq	L02e1e0
	subq.w	#1,d0
	move.b	d0,($002a,a0)
	beq	L02e1d6
	tst.w	(L047fac)
	bne	L02e17e
	cmpi.w	#$0003,($001c,a0)
	beq	L02e16c
	tst.w	($001c,a0)
	bne	L02e17a
L02e16c:
	clr.l	($000c,a1)
	clr.l	($0010,a1)
	bsr	L02e3b0
	bra	L02e17e
L02e17a:
	bsr	L02e4ea
L02e17e:
	tst.w	($0022,a1)
	beq	L02e188
	bsr	L02e18a
	bra	L02e196
L02e188:
	bsr	L02e196
L02e18a:
	move.l	a0,-(a7)
	movea.l	a1,a0
	bsr	L02dc4c
	movea.l	(a7)+,a0
	rts

L02e196:
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L02e598
	tst.b	($002a,a0)
	beq	L02e2de
	jsr	(L01024e)
	andi.w	#$0003,d0
	beq	L02e1bc
	subq.w	#2,d0
L02e1bc:
	add.w	($0004,a0),d0
	move.w	d0,d1
	move.w	($0008,a0),d2
	movea.l	($0014,a0),a5
	move.w	($0018,a0),d0
	jsr	(L025426)
	rts

L02e1d6:
	move.w	#$0300,($0002,a0)
	clr.w	($0024,a1)
L02e1e0:
	tst.w	(L047fac)
	bne	L02e17e
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L02e598
	move.w	($001c,a0),d0
	lea.l	(L02e2f6),a1
	lsl.w	#2,d0
	movea.l	(a1,d0.w),a1
	jsr	(a1)
	movea.l	($002c,a0),a1
	tst.w	($0022,a1)
	beq	L02e21a
	bsr	L02e21e
	bra	L02e18a
L02e21a:
	bsr	L02e18a
L02e21e:
	tst.w	($001c,a0)
	bne	L02e2de
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	move.w	d0,d1
	bpl	L02e236
	neg.w	d0
L02e236:
	cmpi.w	#$0060,d0
	bcs	L02e25a
	cmpi.w	#$0070,d0
	bcc	L02e25a
	clr.w	($0018,a0)
	clr.l	($000c,a0)
	tst.w	d1
	bpl	L02e2de
	ori.w	#$8000,($0018,a0)
	bra	L02e2de
L02e25a:
	subq.b	#1,($0020,a0)
	bne	L02e2de
	move.b	#$0a,($0020,a0)
	move.w	($0018,a0),d0
	addq.b	#1,d0
	andi.w	#$0003,d0
	move.b	d0,($0019,a0)
	lsl.w	#2,d0
	move.l	(L02e2e6,pc,d0.w),d0
	move.w	($0004,a0),d1
	sub.w	(L0473f4),d1
	cmpi.w	#$ff90,d1
	bgt	L02e29e
	tst.w	($0018,a0)
	bmi	L02e29a
	move.b	#$80,($0018,a0)
	clr.l	d0
	bra	L02e2d2
L02e29a:
	neg.l	d0
	bra	L02e2d2
L02e29e:
	cmpi.w	#$0070,d1
	blt	L02e2b2
	tst.w	($0018,a0)
	bpl	L02e2d2
	clr.l	d0
	clr.b	($0018,a0)
	bra	L02e2d2
L02e2b2:
	tst.w	d1
	bmi	L02e2c4
	neg.l	d0
	tst.w	($0018,a0)
	bpl	L02e2d2
	clr.b	($0018,a0)
	bra	L02e2de
L02e2c4:
	tst.w	($0018,a0)
	bmi	L02e2d2
	move.b	#$80,($0018,a0)
	bra	L02e2de
L02e2d2:
	tst.b	($0021,a0)
	beq	L02e2da
	clr.l	d0
L02e2da:
	move.l	d0,($000c,a0)
L02e2de:
	jsr	(L025416)
	rts

L02e2e6:
	.dc.l	$ffffc000,$fffec000
	.dc.l	$ffffc000,$fffec000
L02e2f6:
	.dc.l	L02e306
	.dc.l	L02e48e
	.dc.l	L02e4ea
	.dc.l	L02e546

L02e306:
	cmpi.w	#$01a0,(L0470ee)
	bcs	L02e598
	move.b	($001f,a0),d0
	beq	L02e3fe
	subq.b	#1,d0
	move.b	d0,($001f,a0)
L02e320:
	clr.b	($0021,a0)
	jsr	(L025620)
	addq.w	#1,d2
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	sub.w	($0004,a5),d6
	jsr	(L025904)
	tst.w	d0
	bmi	L02e3b0
	tst.b	d0
	bne	L02e36e
	move.w	d1,d6
	move.w	d2,d7
	add.w	($0004,a5),d6
	jsr	(L025904)
	tst.w	d0
	bmi	L02e3b0
	tst.b	d0
	bne	L02e36e
	clr.l	($000c,a0)
	move.w	#$0001,($0010,a0)
	move.w	#$0003,($001c,a0)
	bra	L02e3b0
L02e36e:
	sub.w	($0006,a5),d2
	subq.w	#8,d2
	move.w	($0004,a5),d6
	tst.w	($000c,a0)
	bpl	L02e380
	neg.w	d6
L02e380:
	add.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	bne	L02e3b0
	move.w	#$0002,d0
	tst.w	($000c,a0)
	bmi	L02e39c
	neg.w	d0
L02e39c:
	add.w	d0,($0004,a0)
	clr.l	($000c,a0)
	andi.w	#$ff00,($0018,a0)
	move.b	#$01,($0021,a0)
L02e3b0:
	addi.w	#$0180,($0022,a0)
	addi.w	#$0080,($0024,a0)
	movea.l	($002c,a0),a1
	clr.w	d0
	move.b	($0022,a0),d0
	jsr	(L010440)
	ext.l	d0
	lsl.l	#7,d0
	move.l	($0004,a1),d1
	sub.l	($0004,a0),d1
	sub.l	d1,d0
	move.l	d0,($000c,a1)
	clr.w	d0
	move.b	($0024,a0),d0
	jsr	(L010440)
	ext.l	d0
	lsl.l	#5,d0
	move.l	($0008,a1),d1
	sub.l	($0008,a0),d1
	sub.l	d1,d0
	move.l	d0,($0010,a1)
	rts

L02e3fe:
	tst.l	($0010,a0)
	bne	L02e320
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	addi.w	#$0050,d0
	cmpi.w	#$00a0,d0
	bcc	L02e320
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	addi.w	#$0040,d0
	cmpi.w	#$0080,d0
	bcc	L02e320
	addq.w	#1,($001c,a0)
	move.w	#$0020,($001e,a0)
	lea.l	(L02dfce),a1
	move.l	#$00040000,(a1)+
	move.l	#$00040000,(a1)+
	move.l	#$00080000,(a1)+
	move.l	#$00080000,(a1)
	movea.l	($002c,a0),a1
	move.w	($000c,a1),d0
	move.w	($0010,a1),d1
	ext.l	d0
	ext.l	d1
	move.l	d0,($000c,a1)
	move.l	d1,($0010,a1)
	clr.w	($0018,a0)
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	bpl	L02e488
	move.w	#$8000,($0018,a0)
L02e488:
	clr.l	($000c,a0)
	rts

L02e48e:
	subq.b	#1,($001f,a0)
	bne	L02e4e8
	addq.w	#1,($001c,a0)
	move.w	#$0080,($001e,a0)
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	andi.w	#$00ff,d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asl.l	#4,d0
	asl.l	#4,d1
	movea.l	($002c,a0),a1
	move.w	#$0200,($0002,a1)
	move.l	d0,($000c,a1)
	move.l	d1,($0010,a1)
	asr.l	#6,d0
	asr.l	#6,d1
	move.w	d0,($0026,a0)
	move.w	d1,($0028,a0)
L02e4e8:
	rts

L02e4ea:
	subq.b	#1,($001f,a0)
	bne	L02e52c
	clr.w	($001c,a0)
	move.w	#$003c,($001e,a0)
	lea.l	(L02dfce),a1
	move.l	#$00003800,(a1)+
	move.l	#$00003800,(a1)+
	move.l	#$0002c000,(a1)+
	move.l	#$00030000,(a1)
	movea.l	($002c,a0),a1
	andi.w	#$fcff,($0002,a1)
	clr.l	($000c,a1)
	clr.l	($0010,a1)
	rts

L02e52c:
	movea.l	($002c,a0),a1
	move.w	($0026,a0),d0
	move.w	($0028,a0),d1
	ext.l	d0
	ext.l	d1
	sub.l	d0,($000c,a1)
	sub.l	d1,($0010,a1)
	rts

L02e546:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.w	d0
	bmi	L02e3b0
	cmpi.b	#$01,d0
	beq	L02e572
	addi.l	#$00002000,($0010,a0)
	bra	L02e3b0
L02e572:
	subq.w	#1,d2
	subq.w	#1,($0008,a0)
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.w	d0
	bmi	L02e3b0
	tst.b	d0
	bne	L02e572
	clr.w	($001c,a0)
	clr.l	($0010,a0)
	bra	L02e3b0
L02e598:
	lea.l	(L05bedc),a1
	lea.l	(L02df66),a2
	move.w	#$000f,d7
L02e5a8:
	move.w	#$000b,($0000.w,a1)
	clr.w	($0002,a1)
	move.w	#$0004,($001c,a1)
	move.w	#$0030,($001e,a1)
	move.b	(a2)+,d0
	move.b	(a2)+,d1
	ext.w	d0
	ext.w	d1
	add.w	($0004,a0),d0
	add.w	($0008,a0),d1
	swap.w	d0
	swap.w	d1
	move.l	d0,($0004,a1)
	move.l	d1,($0008,a1)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	jsr	(L010448)
	ext.l	d0
	ext.l	d1
	asl.l	#5,d0
	asl.l	#5,d1
	move.l	d0,($000c,a1)
	move.l	d1,($0010,a1)
	lea.l	($0030,a1),a1
	dbra	d7,L02e5a8
	moveq.l	#$00,d0
	movea.l	($002c,a0),a1
	move.w	d0,($0002,a1)
	move.l	($0004,a0),d1
	move.l	d1,d2
	swap.w	d2
	subi.w	#$0130,d2
	cmpi.w	#$fea0,d2
	bhi	L02e622
	moveq.l	#$7f,d1
	swap.w	d1
L02e622:
	move.l	d1,($0004,a1)
	move.l	#$00300000,($0008,a1)
	move.l	d0,($000c,a1)
	move.l	d0,($0010,a1)
	move.l	d0,($0020,a1)
	move.w	#$0001,($001c,a1)
	move.w	#$0080,($001e,a1)
	move.l	#L05beac,($0028,a1)
	move.w	#$ffff,($0026,a1)
	lea.l	(L02dfce),a1
	move.l	#$00003800,(a1)+
	move.l	#$00003800,(a1)+
	move.l	#$0002c000,(a1)+
	move.l	#$00030000,(a1)
	moveq.l	#$72,d0
	trap	#0
	move.l	d0,($0000.w,a0)
	move.l	#$00001000,d0
	jsr	(L029a68)
	rts

L02e688:
	jsr	(L029842)
	bcs	L02e700
	move.w	#$0052,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.w	#$0000,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.b	($0005,a6),d0
	move.b	d0,d1
	andi.w	#$000f,d0
	lsl.w	#2,d0
	move.l	(L02e702,pc,d0.w),($0014,a0)
	andi.w	#$00f0,d1
	addi.w	#$00a0,d1
	move.w	d1,($0028,a0)
	clr.w	($0018,a0)
	clr.w	($001a,a0)
	clr.w	($001c,a0)
	move.w	#$4000,($001e,a0)
	move.b	($0006,a6),d0
	add.b	d0,($001e,a0)
	clr.l	($0020,a0)
	clr.l	($0024,a0)
	move.b	($0007,a6),d0
	ext.w	d0
	move.w	d0,($002e,a0)
L02e700:
	rts

L02e702:
	.dc.l	L077130
	.dc.l	L073608

L02e70a:
	jsr	(L02993c)
	jsr	(L025416)
	jsr	(L0299de)
	bcs	L029cca
	jsr	(L03b0d4)
	andi.b	#$c0,d7
	btst.b	#$06,($0020,a0)
	beq	L02e736
	andi.b	#$40,d7
L02e736:
	andi.b	#$3f,($0020,a0)
	or.b	d7,($0020,a0)
	move.w	($0028,a0),d0
	add.w	d0,($001e,a0)
	clr.w	d0
	move.b	($001e,a0),d0
	jsr	(L010440)
	move.w	d0,d1
	bpl	L02e75a
	neg.w	d1
L02e75a:
	cmpi.w	#$1000,d1
	bcc	L02e762
	asr.w	#1,d0
L02e762:
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	btst.b	#$07,($0020,a0)
	beq	L02e77a
	move.l	#$00040000,($0024,a0)
L02e77a:
	move.l	($0024,a0),d0
	beq	L02e796
	subi.l	#$00008000,d0
	move.l	d0,($0024,a0)
	beq	L02e792
	subi.l	#$00020000,d0
L02e792:
	move.l	d0,($0010,a0)
L02e796:
	rts

L02e798:
	jsr	(L0298a6)
	bcs	L02e7de
	move.w	#$0065,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	d3,($0020,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L076fc0,($0014,a0)
	clr.w	($0018,a0)
	clr.l	($001a,a0)
	move.w	#$00ff,($001e,a0)
L02e7de:
	rts

L02e7e0:
	move.w	(L047f68),d0
	add.w	d0,($0004,a0)
	move.l	(L047f6c),d0
	add.l	d0,($0020,a0)
	add.l	($0008,a0),d0
	add.l	($0010,a0),d0
	move.l	d0,($0008,a0)
	jsr	(L0299de)
	bcc	L02e80e
	clr.l	($0000.w,a0)
	rts

L02e80e:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02e82a,pc,d0.w),d0
	jsr	(L02e82a,pc,d0.w)
	tst.w	($001c,a0)
	beq	L02e828
	jsr	(L025416)
L02e828:
	rts

L02e82a:
	.dc.w	L02e832-L02e82a
	.dc.w	L02e85e-L02e82a
	.dc.w	L02e894-L02e82a
	.dc.w	L02e8f8-L02e82a

L02e832:
	move.w	($001e,a0),d0
	beq	L02e840
	subq.w	#1,d0
	move.w	d0,($001e,a0)
	rts

L02e840:
	jsr	(L01024e)
	andi.w	#$000f,d0
	cmp.w	(L047354),d0
	bhi	L02e85c
	addq.w	#1,($001c,a0)
	move.b	#$40,($001e,a0)
L02e85c:
	rts

L02e85e:
	subq.b	#1,($001e,a0)
	bne	L02e85c
	clr.w	d0
	move.b	($0019,a0),d0
	addq.b	#1,d0
	move.b	d0,($0019,a0)
	cmpi.w	#$0003,d0
	beq	L02e87e
	move.b	(L02e890,pc,d0.w),($001e,a0)
	rts

L02e87e:
	addq.w	#1,($001c,a0)
	addq.b	#1,($0019,a0)
	move.l	#$00018000,($0010,a0)
	rts

L02e890:
	.dc.b	$80,$18,$10,$04

L02e894:
	jsr	(L025620)
	add.w	($0006,a5),d2
	subq.w	#1,d1
	addq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L02e8ca
	move.l	($0010,a0),d0
	cmpi.l	#$00040000,d0
	bgt	L02e8c8
	addi.l	#$00001000,d0
	move.l	d0,($0010,a0)
L02e8c8:
	rts

L02e8ca:
	subq.w	#1,d2
	subq.w	#1,($0008,a0)
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L02e8ca
	clr.l	($0010,a0)
	addq.b	#1,($001d,a0)
	addq.b	#1,($0019,a0)
	move.b	#$08,($001e,a0)
	moveq.l	#$27,d0
	trap	#0
	rts

L02e8f8:
	subq.b	#1,($001e,a0)
	bne	L02e94c
	cmpi.w	#$0010,(L047fb4)
	bgt	L02e938
	movea.l	a0,a1
	lea.l	(L03b0ae),a6
	clr.l	d0
	jsr	(L038ec6)
	bcs	L02e936
	move.l	($0004,a1),($0004,a0)
	clr.l	d0
	move.w	($0008,a1),d0
	subi.w	#$0010,d0
	swap.w	d0
	move.l	d0,($0008,a0)
	move.w	#$0005,($001c,a0)
L02e936:
	movea.l	a1,a0
L02e938:
	clr.w	($0018,a0)
	clr.w	($001c,a0)
	move.w	#$00ff,($001e,a0)
	move.l	($0020,a0),($0008,a0)
L02e94c:
	rts

L02e94e:
	jsr	(L02991e)
	bcs	L02e990
	move.w	#$0066,($0000.w,a0)
	andi.w	#$fcff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	subi.w	#$01d0,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L076ff0,($0014,a0)
	clr.w	($0018,a0)
	clr.w	($0020,a0)
L02e990:
	rts

L02e992:
	jsr	(L02993c)
	move.w	($0004,a0),d0
	addi.w	#$0018,d0
	cmpi.w	#$0130,d0
	bhi	L02ed9a
	move.w	#$000d,d7
	move.w	($0004,a0),d5
	move.w	($0008,a0),d6
	lea.l	(L076ff0),a4
	cmpi.w	#$0028,d6
	blt	L02e9d0
	clr.w	d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02e9d0:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02e9ea
	moveq.l	#$01,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02e9ea:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ea04
	moveq.l	#$02,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ea04:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ea1e
	moveq.l	#$03,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ea1e:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ea38
	moveq.l	#$04,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ea38:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ea52
	moveq.l	#$05,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ea52:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ea6c
	moveq.l	#$06,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ea6c:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ea86
	moveq.l	#$07,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ea86:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02eaa0
	moveq.l	#$08,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02eaa0:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02eaba
	moveq.l	#$09,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02eaba:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ead4
	moveq.l	#$0a,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
L02ead4:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02eb02
	moveq.l	#$0b,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
	cmpi.w	#$000c,d7
	bne	L02eb02
	moveq.l	#$0a,d0
	moveq.l	#$28,d2
	move.w	d5,d1
	movea.l	a4,a5
	jsr	(L025426)
L02eb02:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02eb30
	moveq.l	#$0c,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	subq.w	#1,d7
	cmpi.w	#$000c,d7
	bne	L02eb30
	moveq.l	#$0b,d0
	moveq.l	#$28,d2
	move.w	d5,d1
	movea.l	a4,a5
	jsr	(L025426)
L02eb30:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02eb62
	moveq.l	#$0d,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	cmpi.w	#$000d,d7
	bne	L02eb5c
	moveq.l	#$0c,d0
	moveq.l	#$28,d2
	move.w	d5,d1
	movea.l	a4,a5
	jsr	(L025426)
L02eb5c:
	dbra	d7,L02eb62
	rts

L02eb62:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02eb94
	moveq.l	#$0e,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	cmpi.w	#$000d,d7
	bne	L02eb8e
	moveq.l	#$0d,d0
	moveq.l	#$28,d2
	move.w	d5,d1
	movea.l	a4,a5
	jsr	(L025426)
L02eb8e:
	dbra	d7,L02eb94
	rts

L02eb94:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ebc6
	moveq.l	#$0f,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	cmpi.w	#$000d,d7
	bne	L02ebc0
	moveq.l	#$0e,d0
	moveq.l	#$28,d2
	move.w	d5,d1
	movea.l	a4,a5
	jsr	(L025426)
L02ebc0:
	dbra	d7,L02ebc6
	rts

L02ebc6:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ebfa
	move.w	#$0010,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	cmpi.w	#$000d,d7
	bne	L02ebf4
	moveq.l	#$0f,d0
	moveq.l	#$28,d2
	move.w	d5,d1
	movea.l	a4,a5
	jsr	(L025426)
L02ebf4:
	dbra	d7,L02ebfa
	rts

L02ebfa:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ec1a
	move.w	#$0011,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ec1a
	rts

L02ec1a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ec3a
	move.w	#$0012,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ec3a
	rts

L02ec3a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ec5a
	move.w	#$0013,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ec5a
	rts

L02ec5a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ec7a
	move.w	#$0014,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ec7a
	rts

L02ec7a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ec9a
	move.w	#$0015,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ec9a
	rts

L02ec9a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ecba
	move.w	#$0016,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ecba
	rts

L02ecba:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ecda
	move.w	#$0017,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ecda
	rts

L02ecda:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ecfa
	move.w	#$0018,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ecfa
	rts

L02ecfa:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ed1a
	move.w	#$0019,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ed1a
	rts

L02ed1a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ed3a
	move.w	#$001a,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ed3a
	rts

L02ed3a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ed5a
	move.w	#$001b,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ed5a
	rts

L02ed5a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ed7a
	move.w	#$001c,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ed7a
	rts

L02ed7a:
	addi.w	#$0010,d6
	cmpi.w	#$0028,d6
	blt	L02ed9a
	move.w	#$001d,d0
	move.w	d5,d1
	move.w	d6,d2
	movea.l	a4,a5
	jsr	(L025426)
	dbra	d7,L02ed9a
	rts

L02ed9a:
	rts

L02ed9c:
	move.b	($0007,a6),d2
	andi.w	#$007f,d2
	cmp.b	d2,d1
	bne	L02ee9e
	lea.l	(L047ae0),a1
	move.w	#$0017,d7
L02edb4:
	cmpi.w	#$006e,($0000.w,a1)
	bne	L02edcc
	move.b	($0028,a1),d2
	move.b	($0007,a6),d3
	lsl.l	#4,d2
	eor.b	d2,d3
	bpl	L02ee9e
L02edcc:
	lea.l	($0030,a1),a1
	dbra	d7,L02edb4
	jsr	(L029842)
	bcs	L02ee9e
	move.w	#$006e,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	move.l	#$00300000,d0
	tst.w	d1
	beq	L02edf8
	neg.l	d0
L02edf8:
	jsr	(L029cd4)
	add.l	d0,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	#L078aca,($0014,a0)
	move.w	#$0002,($0018,a0)
	clr.w	($001a,a0)
	clr.l	($001c,a0)
	clr.l	($0020,a0)
	move.b	($0005,a6),($0024,a0)
	move.w	#$3000,($0028,a0)
	tst.b	($0007,a6)
	bpl	L02ee3a
	bset.b	#$03,($0028,a0)
L02ee3a:
	move.b	($0006,a6),d0
	andi.w	#$000f,d0
	move.b	(L02eea0,pc,d0.w),($0025,a0)
	add.w	d0,d0
	move.w	(L047354),d1
	add.w	d1,d1
	move.w	d1,d2
	add.w	d2,d1
	add.w	d2,d1
	neg.w	d1
	add.w	(L02eea2,pc,d0.w),d1
	move.b	d1,($0029,a0)
	moveq.l	#$00,d1
	moveq.l	#$00,d2
	move.b	(L02eea6,pc,d0.w),d1
	move.b	(L02eea7,pc,d0.w),d2
	move.b	d1,($0026,a0)
	move.b	d2,($0027,a0)
	swap.w	d1
	swap.w	d2
	move.l	d1,($000c,a0)
	move.l	d2,($0010,a0)
	move.w	($000c,a0),d0
	move.w	($0010,a0),d1
	cmp.w	d1,d0
	bgt	L02ee90
	exg.l	d0,d1
L02ee90:
	clr.w	d2
	move.b	($0025,a0),d2
	sub.w	d0,d2
	sub.w	d2,d1
	move.w	d1,($002a,a0)
L02ee9e:
	rts

L02eea0:
	.dc.b	$c0,$80
L02eea2:
	.dc.w	$0038,$0020
L02eea6:
	.dc.b	$b0
L02eea7:
	.dc.b	$b0,$70,$60

L02eeaa:
	move.w	($0010,a0),d0
	andi.w	#$0003,d0
	move.w	d0,($0018,a0)
	addq.b	#3,d0
	move.b	($0024,a0),d5
	ext.w	d5
	subq.w	#1,d5
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	sub.w	d5,d1
	movea.l	#L078aca,a5
	jsr	(L025426)
	move.w	($0018,a0),d0
	neg.w	d0
	addq.w	#6,d0
	ori.w	#$8000,d0
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	subq.w	#1,d5
	add.w	d5,d1
	movea.l	#L078aca,a5
	jsr	(L025426)
	rts

L02eefc:
	add.w	($0004,a0),d1
	move.w	#$0002,d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	rts

L02ef10:
	cmpi.w	#$0001,($001c,a0)
	beq	L02efaa
	bsr	L02f078
	move.b	($0024,a0),d1
	ext.w	d1
	neg.w	d1
	move.w	($000c,a0),d2
	bsr	L02eefc
	move.b	($0024,a0),d5
	ext.w	d5
	neg.w	d5
	move.w	($000c,a0),d6
	move.b	($002e,a0),d7
	bsr	L02ef58
	move.b	($0024,a0),d1
	ext.w	d1
	move.w	($0010,a0),d2
	bsr	L02eefc
	move.b	($0024,a0),d5
	ext.w	d5
	move.w	($0010,a0),d6
	move.b	($002f,a0),d7
L02ef58:
	clr.w	(L047fb4)
	subq.w	#8,d6
L02ef60:
	bsr	L02ef76
	subi.w	#$0010,d6
	cmp.w	($0008,a0),d6
	bhi	L02ef60
	move.w	($0008,a0),d6
	addq.w	#1,d6
	bsr	L02ef76
	rts

L02ef76:
	move.w	d5,d1
	move.w	d6,d2
	add.w	($0004,a0),d1
	movea.l	#L078aca,a5
	move.w	(L047fb4),d0
	jsr	(L025426)
	rts

L02ef92:
	move.w	d5,d1
	move.w	d6,d2
	movea.l	#L078aca,a5
	move.w	(L047fb4),d0
	jsr	(L025426)
	rts

L02efaa:
	moveq.l	#$00,d5
	move.b	($0024,a0),d5
	move.w	($0004,a0),d1
	sub.w	d5,d1
	move.w	($000c,a0),d2
	move.w	#$0002,d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	move.w	($0004,a0),d1
	add.w	d5,d1
	move.w	($0010,a0),d2
	move.w	#$0002,d0
	movea.l	($0014,a0),a5
	jsr	(L025426)
	moveq.l	#$00,d7
	move.b	($002c,a0),d7
	bne	L02efec
	swap.w	d7
	bra	L02eff2
L02efec:
	swap.w	d7
	move.b	($002e,a0),d7
L02eff2:
	clr.w	(L047fb4)
	moveq.l	#$00,d5
	move.b	($0024,a0),d5
	neg.w	d5
	add.w	($0004,a0),d5
	move.w	($000c,a0),d6
	subq.w	#8,d6
L02f00a:
	bsr	L02ef92
	swap.w	d7
	sub.w	d7,d6
	swap.w	d7
	cmp.w	($0008,a0),d6
	dbls	d7,L02f00a
	tst.w	d7
	bmi	L02f03c
	move.w	($0008,a0),d6
	addq.w	#8,d5
	subq.w	#1,d6
	move.w	#$0001,(L047fb4)
L02f02e:
	bsr	L02ef92
	swap.w	d7
	add.w	d7,d5
	swap.w	d7
	dbra	d7,L02f02e
L02f03c:
	clr.w	(L047fb4)
	moveq.l	#$00,d5
	clr.w	d7
	move.b	($002f,a0),d7
	move.b	($0024,a0),d5
	add.w	($0004,a0),d5
	move.w	($0010,a0),d6
	subq.w	#8,d6
L02f058:
	bsr	L02ef92
	swap.w	d7
	sub.w	d7,d6
	swap.w	d7
	dbra	d7,L02f058
	move.w	($002c,a0),d0
	subi.w	#$0040,d0
	bpl	L02f072
	moveq.l	#$00,d0
L02f072:
	move.w	d0,($002c,a0)
	rts

L02f078:
	move.w	#$0001,(L047fb4)
	move.b	($0024,a0),d5
	ext.w	d5
	move.w	d5,d6
	neg.w	d5
	move.w	($0010,a0),d4
	andi.w	#$0007,d4
	add.w	d4,d5
	addq.w	#6,d5
L02f096:
	swap.w	d6
	move.w	($0008,a0),d6
	subq.w	#1,d6
	bsr	L02ef76
	swap.w	d6
	addi.w	#$0010,d5
	cmp.w	d5,d6
	bgt	L02f096
	rts

L02f0ae:
	cmp.b	($0025,a0),d0
	beq	L02f0c2
	move.b	($0028,a0),d0
	andi.w	#$00c0,d0
	bne	L02f0c2
	moveq.l	#$28,d0
	trap	#0
L02f0c2:
	rts

L02f0c4:
	move.b	($0028,a0),d0
	andi.w	#$0030,d0
	beq	L02f184
	cmpi.w	#$0001,($001c,a0)
	beq	L02f184
	move.b	($0025,a0),d0
	btst.b	#$06,($0028,a0)
	bne	L02f10e
	cmp.b	($000d,a0),d0
	bhi	L02f10e
	tst.b	($0028,a0)
	bpl	L02f0f6
	addq.w	#1,($001e,a0)
L02f0f6:
	move.b	d0,($000d,a0)
	clr.w	($000e,a0)
	move.w	($002a,a0),($0010,a0)
	clr.w	($0012,a0)
	tst.l	($0020,a0)
	bpl	L02f138
L02f10e:
	cmp.b	($0011,a0),d0
	bhi	L02f184
	btst.b	#$06,($0028,a0)
	beq	L02f120
	addq.w	#1,($001e,a0)
L02f120:
	move.b	d0,($0011,a0)
	clr.w	($0012,a0)
	move.w	($002a,a0),($000c,a0)
	clr.w	($000e,a0)
	tst.l	($0020,a0)
	bpl	L02f184
L02f138:
	clr.l	($0020,a0)
	move.w	($001e,a0),d0
	cmp.b	($0029,a0),d0
	bcs	L02f184
	tst.w	(L047354)
	beq	L02f184
	move.w	#$0001,($001c,a0)
	move.w	($0008,a0),d1
	move.w	($000c,a0),d0
	move.b	($0024,a0),d2
	ext.w	d2
	add.w	d2,d2
	sub.w	d1,d0
	add.w	d2,d0
	lsr.w	#4,d0
	subq.w	#2,d0
	move.b	d0,($002e,a0)
	move.w	($0010,a0),d0
	sub.w	d1,d0
	lsr.w	#4,d0
	subq.w	#1,d0
	move.b	d0,($002f,a0)
	move.w	#$1000,($002c,a0)
L02f184:
	jsr	(L02993c)
	bsr	L02eeaa
	jsr	(L0299de)
	bcc	L02f19c
	jmp	(L029cca)

L02f19c:
	move.b	($0028,a0),d0
	andi.w	#$0030,d0
	beq	L02f2f0
	bsr	L02ef10
	move.l	($0020,a0),d0
	beq	L02f1f4
	cmpi.w	#$0001,($001c,a0)
	bne	L02f1ec
	add.l	d0,($000c,a0)
	add.l	d0,($0010,a0)
	cmpi.w	#$0180,($000c,a0)
	bcs	L02f1d6
	move.w	#$0180,($000c,a0)
	andi.b	#$df,($0028,a0)
L02f1d6:
	cmpi.w	#$0180,($0010,a0)
	bcs	L02f1f4
	move.w	#$0180,($0010,a0)
	andi.b	#$ef,($0028,a0)
	bra	L02f1f4
L02f1ec:
	add.l	d0,($000c,a0)
	sub.l	d0,($0010,a0)
L02f1f4:
	move.w	#$0018,d2
	move.w	#$0008,d3
	move.b	($0024,a0),d4
	ext.w	d4
	neg.w	d4
	add.w	($0004,a0),d4
	move.w	($000c,a0),d5
	jsr	(L03b142)
	bcc	L02f22e
	move.b	($000d,a0),d0
	bsr	L02f0ae
	ori.b	#$80,($0028,a0)
	move.l	#$00002000,d1
	move.l	($000c,a0),d0
	bra	L02f25c
L02f22e:
	move.b	($0024,a0),d4
	ext.w	d4
	add.w	($0004,a0),d4
	move.w	($0010,a0),d5
	jsr	(L03b142)
	bcc	L02f2bc
	move.b	($0011,a0),d0
	bsr	L02f0ae
	ori.b	#$40,($0028,a0)
	move.l	#$ffffe000,d1
	move.l	($0010,a0),d0
L02f25c:
	clr.l	(L047fa6)
	move.w	($0006,a0),(L0473f6)
	move.l	d0,(L0473f8)
	subi.w	#$0018,(L0473f8)
	ori.b	#$80,(L0473f2)
	not.w	d7
	move.l	#$00018000,d3
	cmpi.w	#$0001,($001c,a0)
	bne	L02f29c
L02f290:
	move.l	#$00020000,d3
	move.l	#$00003000,d1
L02f29c:
	add.l	d1,($0020,a0)
	move.l	($0020,a0),d1
	bpl	L02f2a8
	neg.l	d1
L02f2a8:
	cmp.l	d3,d1
	bcs	L02f2ba
	move.l	d3,d1
	tst.w	($0020,a0)
	bpl	L02f2b6
	neg.l	d1
L02f2b6:
	move.l	d1,($0020,a0)
L02f2ba:
	rts

L02f2bc:
	andi.b	#$3f,($0028,a0)
	cmpi.w	#$0001,($001c,a0)
	bne	L02f2d2
	move.l	#$00003000,d1
	bra	L02f290
L02f2d2:
	move.l	($0020,a0),d0
	beq	L02f2f0
	move.l	#$00001000,d2
	move.l	d0,d1
	bmi	L02f2e4
	neg.l	d2
L02f2e4:
	add.l	d2,d1
	eor.l	d1,d0
	bpl	L02f2ec
	clr.l	d1
L02f2ec:
	move.l	d1,($0020,a0)
L02f2f0:
	rts

L02f2f2:
	jsr	(L029cd4)
	andi.w	#$00ff,d0
	clr.w	d1
	move.b	($0005,a6),d1
	beq	L02f312
	subq.b	#1,d1
	beq	L02f3ee
	subq.b	#1,d1
	beq	L02f4ac
	rts

L02f312:
	jsr	(L029900)
	bcs	L02f3e0
	move.w	#$0076,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	#$00300000,($0004,a0)
	moveq.l	#$00,d1
	move.w	#$04c8,d1
	sub.w	(L047f7a),d1
	swap.w	d1
	move.l	d1,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L078e14,($0014,a0)
	move.w	#$8000,($0018,a0)
	clr.w	($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0030,($001e,a0)
	move.w	#$8000,($0020,a0)
	clr.l	($0022,a0)
	move.w	#$0001,($0026,a0)
	clr.l	($0028,a0)
	clr.l	($002c,a0)
	move.w	#$0424,d3
	sub.w	(L047f7a),d3
	swap.w	d3
	move.w	#$0002,d7
L02f38c:
	jsr	(L0298c4)
	bcs	L02f3e0
	move.w	#$0076,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	sub.l	(L02f3e2,pc,d1.w),d3
	addq.w	#4,d1
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L078e9c,($0014,a0)
	clr.w	($0018,a0)
	clr.w	($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0030,($001e,a0)
	move.w	#$8000,($0020,a0)
	clr.l	($0022,a0)
	clr.w	($0026,a0)
	dbra	d7,L02f38c
L02f3e0:
	rts

L02f3e2:
	.dc.l	$01000000,$00c80000
	.dc.l	$01000000

L02f3ee:
	clr.w	d5
	clr.w	d6
	move.w	#$0006,d7
L02f3f6:
	jsr	(L0298c4)
	bcs	L02f3e0
	move.w	#$0076,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L078e9c,($0014,a0)
	clr.w	($0018,a0)
	clr.w	($001a,a0)
	move.w	#$0008,($001c,a0)
	move.w	d1,d4
	lsl.w	#2,d4
	sub.l	(L02f468,pc,d4.w),d3
	move.w	d1,d4
	add.w	d4,d4
	move.w	(L02f498,pc,d4.w),d4
	move.w	d4,($0022,a0)
	move.w	d5,d6
L02f444:
	sub.w	d4,d6
	bpl	L02f444
	neg.w	d6
	move.w	d6,($001e,a0)
	addq.w	#1,d1
	addi.w	#$0010,d5
	andi.w	#$003f,d5
	move.w	#$8000,($0020,a0)
	clr.w	($0026,a0)
	dbra	d7,L02f3f6
	rts

L02f468:
	.dc.l	$00300000,$00300000
	.dc.l	$00500000,$00500000
	.dc.l	$00300000,$00300000
	.dc.l	$00a00000,$00300000
	.dc.l	$00300000,$00a00000
	.dc.l	$00300000,$00300000
L02f498:
	.dc.w	$009c,$003c,$003c,$001c
	.dc.w	$009c,$003c,$003c,$009c
	.dc.w	$003c,$003c

L02f4ac:
	jsr	(L029818)
	bcs	L02f3e0
	move.w	#$0076,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L078e9c,($0014,a0)
	clr.w	($0018,a0)
	clr.w	($001a,a0)
	move.w	#$0008,($001c,a0)
	move.w	(L047354),d0
	lsl.w	#3,d0
	neg.w	d0
	addi.w	#$0060,d0
	move.w	d0,($001e,a0)
	move.w	d0,($0022,a0)
	move.w	#$8000,($0020,a0)
	clr.w	($0026,a0)
	rts

L02f508:
	sub.w	(L047f7a),d2
	move.w	d2,d3
	subi.w	#$0120,d3
	cmpi.w	#$fdc0,d3
	bcs	L02f530
	move.w	($0028,a0),d0
	sub.w	d4,d0
	andi.w	#$000e,d0
	lsr.w	#1,d0
	move.w	($0004,a0),d1
	jsr	(L025426)
L02f530:
	rts

L02f532:
	move.w	#$04c8,d2
	clr.w	d4
	movea.l	#L078e1c,a5
	bsr	L02f508
	move.w	#$0208,d2
	moveq.l	#$04,d4
	movea.l	#L078e5c,a5
	bsr	L02f508
	move.w	($0008,a0),d5
	andi.w	#$000f,d5
	move.w	(L047f7a),d2
	andi.w	#$fff0,d2
	subi.w	#$04a8,d2
	sub.w	d2,d5
	move.w	#$0029,d7
L02f56a:
	move.w	d5,d2
	subi.w	#$0120,d2
	cmpi.w	#$fdc0,d2
	bcs	L02f58a
	move.w	d5,d2
	move.w	($0004,a0),d1
	movea.l	#L078e14,a5
	clr.w	d0
	jsr	(L025426)
L02f58a:
	subi.w	#$0010,d5
	dbra	d7,L02f56a
	rts

L02f594:
	jsr	(L02993c)
	move.l	($0010,a0),d0
	add.l	d0,($002c,a0)
	tst.w	($0026,a0)
	bne	L02f5ca
	jsr	(L03b0d4)
	tst.w	d7
	beq	L02f5d6
	move.w	($002c,a0),d0
	bpl	L02f5ba
	neg.w	d0
L02f5ba:
	cmpi.w	#$000c,d0
	bcs	L02f5d6
	clr.w	($002c,a0)
	moveq.l	#$29,d0
	trap	#0
	bra	L02f5d6
L02f5ca:
	move.l	($0010,a0),d0
	add.l	d0,($0008,a0)
	add.l	d0,($0028,a0)
L02f5d6:
	move.w	($001c,a0),d0
	move.w	(L02f600,pc,d0.w),d0
	jsr	(L02f600,pc,d0.w)
	tst.w	($0018,a0)
	bmi	L02f532
	move.w	($0008,a0),d0
	subi.w	#$0110,d0
	cmpi.w	#$fef0,d0
	bcs	L02f5fe
	jsr	(L025416)
L02f5fe:
	rts

L02f600:
	.dc.w	L02f60a-L02f600
	.dc.w	L02f630-L02f600
	.dc.w	L02f660-L02f600
	.dc.w	L02f630-L02f600
	.dc.w	L02f684-L02f600

L02f60a:
	subq.w	#1,($001e,a0)
	bne	L02f62e
	addq.w	#2,($001c,a0)
	move.w	#$0020,($001e,a0)
	move.l	#$00000800,d0
	eori.w	#$8000,($0020,a0)
	bmi	L02f62a
	neg.l	d0
L02f62a:
	move.l	d0,($0022,a0)
L02f62e:
	rts

L02f630:
	move.l	($0022,a0),d0
	add.l	d0,($0010,a0)
	subq.w	#1,($001e,a0)
	bne	L02f652
	move.w	($001c,a0),d0
	cmpi.w	#$0006,d0
	beq	L02f654
	addq.w	#2,($001c,a0)
	move.w	#$0038,($001e,a0)
L02f652:
	rts

L02f654:
	clr.w	($001c,a0)
	move.w	#$0030,($001e,a0)
	rts

L02f660:
	subq.w	#1,($001e,a0)
	bne	L02f682
	addq.w	#2,($001c,a0)
	move.w	#$0020,($001e,a0)
	move.l	#$00000800,d0
	tst.w	($0020,a0)
	bpl	L02f67e
	neg.l	d0
L02f67e:
	move.l	d0,($0022,a0)
L02f682:
	rts

L02f684:
	subq.w	#1,($001e,a0)
	bne	L02f6d2
	move.b	($0019,a0),d0
	addq.w	#1,d0
	andi.w	#$0007,d0
	move.b	d0,($0019,a0)
	add.w	d0,d0
	move.w	(L02f6a2,pc,d0.w),d0
	jmp	(L02f6a2,pc,d0.w)

L02f6a2:
	.dc.w	L02f6b2-L02f6a2
	.dc.w	L02f6be-L02f6a2
	.dc.w	L02f6c6-L02f6a2
	.dc.w	L02f6cc-L02f6a2
	.dc.w	L02f6cc-L02f6a2
	.dc.w	L02f6cc-L02f6a2
	.dc.w	L02f6cc-L02f6a2
	.dc.w	L02f6cc-L02f6a2

L02f6b2:
	move.w	($0022,a0),($001e,a0)
	clr.w	($0026,a0)
	rts

L02f6be:
	move.w	#$000c,($001e,a0)
	rts

L02f6c6:
	move.w	#$0001,($0026,a0)
L02f6cc:
	move.w	#$0004,($001e,a0)
L02f6d2:
	rts

L02f6d4:
	jsr	(L029900)
	bcs	L02f6f8
	move.w	#$0077,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	lea.l	(L05bbdc),a1
	clr.w	(a1)+
	lea.l	($0004,a1),a2
	move.l	a2,(a1)
L02f6f8:
	rts

L02f6fa:
	lea.l	(L05bbdc),a1
	move.w	(a1)+,d7
	beq	L02f726
	lea.l	($0004,a1),a2
	move.l	a2,(a1)
	move.l	a0,-(a7)
	subq.w	#1,d7
L02f70e:
	swap.w	d7
	movea.l	(a2)+,a0
	jsr	(L025416)
	swap.w	d7
	dbra	d7,L02f70e
	movea.l	(a7)+,a0
	clr.w	(L05bbdc)
L02f726:
	rts

L02f728:
	jsr	(L0298e2)
	bcc	L02f738
	jsr	(L0298a6)
	bcs	L02f74a
L02f738:
	move.w	#$0084,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	clr.w	($0020,a0)
L02f74a:
	rts

L02f74c:
	move.w	(L047f7a),d0
	subi.w	#$0300,d0
	move.w	($0020,a0),d1
	eor.w	d1,d0
	bmi	L02f7f0
	move.l	a0,-(a7)
	tst.w	d0
	bmi	L02f7b4
	lea.l	(L04bb4c),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
	lea.l	(L04b766),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8c00),a4
	move.w	a6,d2
	jsr	(L003954)
	bra	L02f7da
L02f7b4:
	lea.l	(L0588f2),a5
	lea.l	(L05bbdc),a6
	jsr	(L03d632)
	lea.l	(L05bbdc),a3
	lea.l	($00eb8800),a4
	move.w	a6,d2
	jsr	(L003954)
L02f7da:
	movea.l	(a7)+,a0
	eori.w	#$8000,($0020,a0)
	lea.l	(L05bbdc),a1
	clr.w	(a1)+
	lea.l	($0004,a1),a2
	move.l	a2,(a1)
L02f7f0:
	rts

L02f7f2:
	jsr	(L029cd4)
	moveq.l	#$00,d6
	jsr	(L0298a6)
	bcs	L02f84e
	move.w	#$008b,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d7
	move.l	d7,($000c,a0)
	move.l	d7,($0010,a0)
	move.l	#L07a922,($0014,a0)
	move.w	d7,($0018,a0)
	move.w	#$00ff,($001a,a0)
	move.l	d7,($001c,a0)
	move.w	d7,($0020,a0)
	move.b	($0005,a6),($0022,a0)
	move.l	a6,($0024,a0)
	tst.w	d6
	beq	L02f84e
	bsr	L02f9c6
L02f84e:
	rts

L02f850:
	move.w	($0004,a5),d6
	sub.w	($0006,a5),d2
	tst.w	($000c,a0)
	bpl	L02f860
	neg.w	d6
L02f860:
	add.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	rts

L02f870:
	jsr	(L025620)
	add.w	($0006,a5),d2
L02f87a:
	moveq.l	#$01,d7
L02f87c:
	move.w	d7,-(a7)
	subq.w	#1,d2
	subq.w	#1,($0008,a0)
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	move.w	(a7)+,d7
	tst.b	d0
	dbeq	d7,L02f87c
	beq	L02f8a0
	ori.w	#$8000,($0022,a0)
	rts

L02f8a0:
	andi.w	#$7fff,($0022,a0)
	rts

L02f8a8:
	jsr	(L029a3e)
	bcc	L02f8f6
	tst.w	(L047fac)
	bne	L02f8e0
	move.l	#$00004000,d0
	tst.w	($001a,a0)
	bpl	L02f8c6
	neg.l	d0
L02f8c6:
	add.l	d0,($000c,a0)
	move.w	($0018,a0),d2
	andi.w	#$7fff,d2
	tst.w	($000c,a0)
	bpl	L02f8dc
	ori.w	#$8000,d2
L02f8dc:
	move.w	d2,($0018,a0)
L02f8e0:
	move.w	#$00ff,($001a,a0)
	move.w	#$0010,($0020,a0)
	andi.w	#$fcff,($0002,a0)
	moveq.l	#$31,d0
	trap	#0
L02f8f6:
	move.w	($0020,a0),d0
	beq	L02f910
	subq.w	#1,d0
	move.w	d0,($0020,a0)
	bne	L02f910
	ori.w	#$0300,($0002,a0)
	bra	L02f910
L02f90c:
	bra	L03657e
L02f910:
	tst.w	(L047fac)
	bne	L02f90c
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L02f93c
	tst.w	($001c,a0)
	beq	L02f936
	movea.l	($0024,a0),a1
	ori.w	#$8000,($0002,a1)
L02f936:
	jmp	(L029cca)

L02f93c:
	tst.w	($0022,a0)
	bpl	L02f946
	bsr	L02f870
L02f946:
	move.w	($0008,a0),d0
	add.w	(L047f7a),d0
	cmpi.w	#$0590,d0
	beq	L02f986
	cmpi.w	#$02f0,d0
	beq	L02f986
	move.w	($0004,a0),d0
	subi.w	#$00f0,d0
	cmpi.w	#$ff20,d0
	bhi	L02f986
	tst.w	d0
	bpl	L02f976
	move.w	#$0011,($0004,a0)
	bra	L02f97c
L02f976:
	move.w	#$00ef,($0004,a0)
L02f97c:
	neg.l	($000c,a0)
	eori.w	#$8000,($0018,a0)
L02f986:
	move.w	($001c,a0),d0
	add.w	d0,d0
	move.w	(L02f99c,pc,d0.w),d0
	jsr	(L02f99c,pc,d0.w)
	jsr	(L025416)
	rts

L02f99c:
	.dc.w	L02f9a2-L02f99c
	.dc.w	L02f9fc-L02f99c
	.dc.w	L02fa6a-L02f99c

L02f9a2:
	move.w	($0004,a0),d0
	sub.w	(L0473f4),d0
	subi.w	#$0030,d0
	cmpi.w	#$ffa0,d0
	bcs	L02f9fa
	move.w	($0008,a0),d2
	sub.w	(L0473f8),d2
	cmpi.w	#$ffb0,d2
	bcs	L02f9fa
L02f9c6:
	move.w	#$0001,($001c,a0)
	ori.w	#$0300,($0002,a0)
	move.l	#$fffe8000,($0010,a0)
	bset.b	#$00,($0022,a0)
	bne	L02f9fa
	move.l	#$0000c000,d1
	cmpi.w	#$ffd0,d0
	bcs	L02f9f6
	neg.l	d1
	eori.w	#$8000,($0018,a0)
L02f9f6:
	move.l	d1,($000c,a0)
L02f9fa:
	rts

L02f9fc:
	jsr	(L025620)
	add.w	($0006,a5),d2
	tst.w	($0010,a0)
	bmi	L02fa1a
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.b	d0
	bne	L02fa34
L02fa1a:
	bsr	L02f850
	bne	L02fa2a
	neg.l	($000c,a0)
	eori.w	#$8000,($0018,a0)
L02fa2a:
	addi.l	#$00004000,($0010,a0)
	rts

L02fa34:
	bsr	L02f87a
	move.l	($0010,a0),d1
	cmpi.l	#$00010000,d1
	blt	L02fa5a
	cmpi.l	#$00030000,d1
	blt	L02fa50
	moveq.l	#$44,d0
	trap	#0
L02fa50:
	asr.l	#2,d1
	neg.l	d1
	move.l	d1,($0010,a0)
	rts

L02fa5a:
	addq.w	#1,($001c,a0)
	move.w	#$0040,($001e,a0)
	clr.l	($0010,a0)
	rts

L02fa6a:
	tst.l	($000c,a0)
	bne	L02fa78
	subq.w	#1,($001e,a0)
	beq	L02f9c6
L02fa78:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	addq.w	#1,d7
	jsr	(L025904)
	tst.b	d0
	bne	L02fa96
	subq.w	#1,($001c,a0)
L02fa96:
	move.w	($0008,a0),d0
	add.w	(L047f7a),d0
	cmpi.w	#$0590,d0
	beq	L02fac2
	cmpi.w	#$02f0,d0
	bne	L02fab2
	tst.w	($000c,a0)
	bmi	L02fac2
L02fab2:
	bsr	L02f850
	bne	L02fac2
	neg.l	($000c,a0)
	eori.w	#$8000,($0018,a0)
L02fac2:
	rts

L02fac4:
	jsr	(L0298a6)
	bcs	L02fb74
	move.w	#$002c,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	move.w	#$0003,($001a,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L07baf8,($0014,a0)
	clr.w	($0018,a0)
	move.w	($0004,a0),d0
	cmp.w	(L0473f4),d0
	bgt	L02fb16
	ori.w	#$8000,($0018,a0)
L02fb16:
	move.w	#$000c,($001c,a0)
	clr.w	($001e,a0)
	move.b	($0005,a6),($0020,a0)
	move.b	#$18,($0021,a0)
	move.w	(L047354),d0
	add.w	d0,d0
	sub.b	d0,($0021,a0)
	clr.b	($0025,a0)
	clr.b	($0026,a0)
	move.b	(L03088f),($0027,a0)
	clr.w	($0028,a0)
	addq.w	#1,(L047fb4)
	btst.b	#$06,($0020,a0)
	beq	L02fb74
	clr.w	d0
	move.b	($0006,a6),d0
	move.w	d0,d1
	add.w	d0,d0
	add.w	d1,d0
	add.w	d0,d0
	move.l	(L02fb76,pc,d0.w),($0014,a0)
	move.w	(L02fb7a,pc,d0.w),($0018,a0)
L02fb74:
	rts

L02fb76:
	.dc.l	L07baf8
L02fb7a:
	.dc.w	$0000
	.dc.l	L07baf8
	.dc.w	$8000
	.dc.l	L07baf8
	.dc.w	$0002
	.dc.l	L07bb58
	.dc.w	$0000

L02fb8e:
	jsr	(L029a3e)
	bcc	L02fbb4
	bne	L02fba8
	subq.w	#1,(L047fb4)
	moveq.l	#$a7,d0
	trap	#0
	jmp	(L029b9e)

L02fba8:
	move.b	#$10,($001e,a0)
	andi.w	#$fcff,($0002,a0)
L02fbb4:
	tst.b	($001e,a0)
	beq	L02fbc6
	subq.b	#1,($001e,a0)
	bne	L02fbc6
	ori.w	#$0300,($0002,a0)
L02fbc6:
	tst.w	(L047fac)
	bne	L02fcf4
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L02fd0a
	btst.b	#$06,($0020,a0)
	bne	L02fcec
	tst.b	($001f,a0)
	bne	L02fc3c
	cmpi.b	#$0c,($001d,a0)
	beq	L0307a8
	cmpi.b	#$0d,($001d,a0)
	beq	L030822
	tst.b	($0025,a0)
	bne	L02fc0e
	bsr	L02fdbe
L02fc0e:
	subq.b	#1,($0021,a0)
	bne	L02fc3c
	move.w	($001c,a0),($0022,a0)
	not.b	($0025,a0)
	bne	L02fc28
	move.b	#$03,($0021,a0)
	bra	L02fc3c
L02fc28:
	move.b	#$18,($0021,a0)
	move.w	(L047354),d0
	add.w	d0,d0
	add.w	d0,d0
	sub.b	d0,($0021,a0)
L02fc3c:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L02fd16),a1
	movea.l	(a1,d0.w),a1
	jsr	(a1)
	tst.b	($0029,a0)
	beq	L02fca2
	subq.b	#1,($0029,a0)
	move.b	($0029,a0),d0
	cmpi.b	#$06,d0
	bcs	L02fc74
	move.l	#L07bb98,($0014,a0)
	clr.b	($0019,a0)
	bra	L02fcec
L02fc74:
	cmpi.b	#$05,d0
	bne	L02fc80
	eori.w	#$8000,($0018,a0)
L02fc80:
	cmpi.b	#$03,d0
	bcs	L02fc94
	move.l	#L07bb78,($0014,a0)
	clr.b	($0019,a0)
	bra	L02fcec
L02fc94:
	move.l	#L07bb98,($0014,a0)
	clr.b	($0019,a0)
	bra	L02fcec
L02fca2:
	cmpi.l	#L07bbb8,($0014,a0)
	bne	L02fcd4
	move.w	(L0473f4),d0
	cmp.w	($0004,a0),d0
	blt	L02fcc6
	tst.w	($0018,a0)
	bmi	L02fcec
	move.b	#$09,($0029,a0)
	bra	L02fcec
L02fcc6:
	tst.w	($0018,a0)
	bpl	L02fcec
	move.b	#$09,($0029,a0)
	bra	L02fcec
L02fcd4:
	andi.w	#$7fff,($0018,a0)
	move.w	(L0473f4),d0
	cmp.w	($0004,a0),d0
	bmi	L02fcec
	ori.w	#$8000,($0018,a0)
L02fcec:
	jsr	(L025416)
	rts

L02fcf4:
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L02fd0a
	jsr	(L025416)
	rts

L02fd0a:
	subq.w	#1,(L047fb4)
	jmp	(L029cca)

L02fd16:
	.dc.l	L02fd4e
	.dc.l	L02fdbe
	.dc.l	L030110
	.dc.l	L0301e6
	.dc.l	L030418
	.dc.l	L030454
	.dc.l	L030494
	.dc.l	L030496
	.dc.l	L030566
	.dc.l	L030568
	.dc.l	L0305e4
	.dc.l	L0306e8
	.dc.l	L0307a8
	.dc.l	L030822

L02fd4e:
	subq.b	#1,($0027,a0)
	bne	L02fd80
	addq.b	#1,($0026,a0)
	andi.b	#$03,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308b8),a1
	move.l	#L07bb78,($0014,a0)
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L02fd80:
	move.l	($000c,a0),d0
	bpl	L02fd90
	addi.l	#$00000a00,d0
	bmi	L02fd9a
	clr.l	d0
L02fd90:
	subi.l	#$00000a00,d0
	bpl	L02fd9a
	clr.l	d0
L02fd9a:
	move.l	($0010,a0),d1
	bpl	L02fdaa
	addi.l	#$00000a00,d1
	bmi	L02fdb4
	clr.l	d1
L02fdaa:
	subi.l	#$00000a00,d1
	bpl	L02fdb4
	clr.l	d1
L02fdb4:
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	rts

L02fdbe:
	tst.b	($00000029).l
	bne	L02fe02
	btst.b	#$06,(L047408)
	beq	L02fe02
	cmpi.b	#$0b,($0028,a0)
	beq	L02fdfa
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c6),($0019,a0)
	move.b	(L0308c7),($0027,a0)
L02fdfa:
	move.b	#$0b,($001d,a0)
	rts

L02fe02:
	clr.w	d0
	clr.w	d1
	move.b	(L04740c),d1
	move.b	(L04740d),d0
	add.w	d0,d0
	move.w	(L02fe1c,pc,d0.w),d0
	jmp	(L02fe1c,pc,d0.w)

L02fe1c:
	.dc.w	L02fe2e-L02fe1c
	.dc.w	L02fe2e-L02fe1c
	.dc.w	L02fec8-L02fe1c
	.dc.w	L02fefe-L02fe1c
	.dc.w	L02ff92-L02fe1c
	.dc.w	L02ffd8-L02fe1c
	.dc.w	L030024-L02fe1c
	.dc.w	L030056-L02fe1c
	.dc.w	L030094-L02fe1c

L02fe2e:
	tst.b	d1
	bne	L02fec0
	tst.b	($00000029).l
	bne	L02fe7a
	btst.b	#$06,(L047408)
	beq	L02fe7a
	cmpi.b	#$0b,($0028,a0)
	beq	L02fe70
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c6),($0019,a0)
	move.b	(L0308c7),($0027,a0)
L02fe70:
	move.b	#$0b,($001d,a0)
	bra	L0306e8
L02fe7a:
	cmpi.b	#$02,($0028,a0)
	beq	L02fea4
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308b6),($0019,a0)
	move.b	(L0308b7),($0027,a0)
L02fea4:
	move.b	#$02,($001d,a0)
	subq.b	#1,($0026,a0)
	cmpi.b	#$02,($0023,a0)
	beq	L02febe
	move.b	(L0472f7),($0024,a0)
L02febe:
	rts

L02fec0:
	move.b	#$03,($001d,a0)
	rts

L02fec8:
	cmpi.b	#$07,($0028,a0)
	beq	L02fef6
	cmpi.b	#$02,($0028,a0)
	beq	L02fef6
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	move.b	#-$01,($0026,a0)
	clr.b	($0019,a0)
	move.b	#$02,($0027,a0)
L02fef6:
	move.b	#$07,($001d,a0)
	rts

L02fefe:
	cmpi.b	#$01,d1
	bne	L02ff0c
	move.b	#$03,($001d,a0)
	rts

L02ff0c:
	btst.b	#$02,($0020,a0)
	beq	L02ff4a
	cmpi.b	#$02,($0028,a0)
	beq	L02ff3e
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308b6),($0019,a0)
	move.b	(L0308b7),($0027,a0)
L02ff3e:
	move.b	#$02,($001d,a0)
	subq.b	#1,($0026,a0)
	rts

L02ff4a:
	cmpi.b	#$24,(L04740f)
	bgt	L02ff8a
	cmpi.b	#$02,($0028,a0)
	beq	L02ff7e
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308b6),($0019,a0)
	move.b	(L0308b7),($0027,a0)
L02ff7e:
	move.b	#$02,($001d,a0)
	subq.b	#1,($0026,a0)
	rts

L02ff8a:
	move.b	#$09,($001d,a0)
	rts

L02ff92:
	btst.b	#$02,($0020,a0)
	beq	L02ffd0
	cmpi.b	#$02,($0028,a0)
	beq	L02ffc4
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308b6),($0019,a0)
	move.b	(L0308b7),($0027,a0)
L02ffc4:
	move.b	#$02,($001d,a0)
	subq.b	#1,($0026,a0)
	rts

L02ffd0:
	move.b	#$09,($001d,a0)
	rts

L02ffd8:
	cmpi.b	#$01,d1
	bne	L02ffe6
	move.b	#$03,($001d,a0)
	rts

L02ffe6:
	cmpi.b	#$0a,($0028,a0)
	beq	L03001c
	cmpi.b	#$02,($0028,a0)
	beq	L03001c
	cmpi.b	#$07,($0028,a0)
	beq	L03001c
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	move.b	#-$01,($0026,a0)
	clr.b	($0019,a0)
	move.b	#$02,($0027,a0)
L03001c:
	move.b	#$0a,($001d,a0)
	rts

L030024:
	cmpi.b	#$00,($0028,a0)
	beq	L03004e
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb78,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308b8),($0019,a0)
	move.b	(L0308b9),($0027,a0)
L03004e:
	move.b	#$00,($001d,a0)
	rts

L030056:
	tst.b	($00000029).l
	bne	L030092
	cmpi.b	#$0b,($0028,a0)
	beq	L030088
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c6),($0019,a0)
	move.b	(L0308c7),($0027,a0)
L030088:
	move.b	#$0b,($001d,a0)
	bra	L0306e8
L030092:
	rts

L030094:
	btst.b	#$07,($0020,a0)
	beq	L0300d6
	cmpi.b	#$0d,($0028,a0)
	beq	L0300c6
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308ca),($0019,a0)
	move.b	(L0308cb),($0027,a0)
L0300c6:
	move.b	#$0d,($001d,a0)
	move.w	#$0002,(L047fb6)
	rts

L0300d6:
	cmpi.b	#$0d,($0028,a0)
	beq	L030100
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bba8,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308d6),($0019,a0)
	move.b	(L0308d7),($0027,a0)
L030100:
	move.b	#$0d,($001d,a0)
	move.w	#$0001,(L047fb6)
	rts

L030110:
	tst.b	($00000029).l
	bne	L030156
	btst.b	#$06,(L047408)
	beq	L030156
	cmpi.b	#$0b,($0028,a0)
	beq	L03014c
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c6),($0019,a0)
	move.b	(L0308c7),($0027,a0)
L03014c:
	move.b	#$0b,($001d,a0)
	bra	L0306e8
L030156:
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	btst.b	#$02,($0020,a0)
	bne	L030192
	jsr	(L01024e)
	tst.w	d0
	bmi	L03017a
	addq.b	#1,($0024,a0)
	bra	L03017e
L03017a:
	subq.b	#1,($0024,a0)
L03017e:
	clr.w	d0
	move.b	($0024,a0),d0
	jsr	(L010448)
	asr.w	#8,d0
	asr.w	#8,d1
	add.w	d0,d2
	add.w	d1,d3
L030192:
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#2,d0
	asr.l	#2,d1
	bsr	L030514
	subq.b	#1,($0027,a0)
	bne	L0301e4
	addq.b	#1,($0026,a0)
	andi.b	#$03,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308b8),a1
	move.l	#L07bbb8,($0014,a0)
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L0301e4:
	rts

L0301e6:
	cmpi.b	#$02,(L047411)
	beq	L0302ea
	cmpi.b	#$03,(L047411)
	beq	L03038e
	move.w	(L0473f8),d0
	subi.w	#$0008.w,d0
	sub.w	($0008,a0),d0
	addi.w	#$0030,d0
	cmpi.w	#$0060,d0
	bhi	L030410
	move.w	(L0473f4),d1
	sub.w	($0004,a0),d1
	bmi	L030230
	tst.w	(L047408)
	bmi	L030410
	bra	L03023c
L030230:
	tst.w	(L047408)
	bpl	L030410
	neg.w	d1
L03023c:
	cmpi.w	#$0050,d1
	bhi	L030410
	cmpi.w	#$0030,d0
	bgt	L03029e
	clr.b	($0029,a0)
	cmpi.b	#$04,($0028,a0)
	beq	L030278
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bba8,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c0),($0019,a0)
	move.b	(L0308c1),($0027,a0)
L030278:
	move.b	#$04,($001d,a0)
	move.b	#$20,($001f,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#$00030000,($0010,a0)
	move.w	#$0003,(L047fb6)
	rts

L03029e:
	clr.b	($0029,a0)
	cmpi.b	#$05,($0028,a0)
	beq	L0302cc
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c6),($0019,a0)
	move.b	(L0308c7),($0027,a0)
L0302cc:
	move.b	#$05,($001d,a0)
	move.b	#$20,($001f,a0)
	move.l	#$fffd0000,($0010,a0)
	move.w	#$0003,(L047fb6)
	rts

L0302ea:
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	cmpi.w	#$0030,d0
	bhi	L030410
	move.w	(L0473f4),d1
	sub.w	($0004,a0),d1
	bmi	L030314
	tst.w	(L047408)
	bmi	L030410
	bra	L030320
L030314:
	tst.w	(L047408)
	bpl	L030410
	neg.w	d1
L030320:
	cmpi.w	#$0050,d1
	bhi	L030410
	move.l	#$00010000,($000c,a0)
	tst.w	(L047408)
	bmi	L03033c
	neg.l	($000c,a0)
L03033c:
	cmp.w	d1,d0
	blt	L03029e
	clr.b	($0029,a0)
	cmpi.b	#$04,($0028,a0)
	beq	L030370
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bba8,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c0),($0019,a0)
	move.b	(L0308c1),($0027,a0)
L030370:
	move.b	#$04,($001d,a0)
	move.b	#$20,($001f,a0)
	move.l	#$00030000,($0010,a0)
	move.w	#$0003,(L047fb6)
	rts

L03038e:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	addi.w	#$0018,d0
	cmpi.w	#$0030,d0
	bhi	L030410
	move.w	($0008,a0),d1
	sub.w	(L0473f8),d1
	cmpi.w	#$0058,d1
	bhi	L030410
	move.l	#$00034000,($0010,a0)
	move.l	#$00010000,($000c,a0)
	cmpi.w	#$0018,d0
	blt	L0303cc
	neg.l	($000c,a0)
L0303cc:
	clr.b	($0029,a0)
	cmpi.b	#$04,($0028,a0)
	beq	L0303fa
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bba8,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c0),($0019,a0)
	move.b	(L0308c1),($0027,a0)
L0303fa:
	move.b	#$04,($001d,a0)
	move.b	#$20,($001f,a0)
	move.w	#$0003,(L047fb6)
	rts

L030410:
	move.b	#$02,($001d,a0)
	rts

L030418:
	subq.b	#1,($001f,a0)
	bne	L030426
	move.b	#$01,($001d,a0)
	rts

L030426:
	subi.l	#$00002000,($0010,a0)
	subq.b	#1,($0027,a0)
	bne	L030452
	addq.b	#1,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308c0),a1
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L030452:
	rts

L030454:
	addi.l	#$00004000,($0010,a0)
	bmi	L030468
	move.b	#$01,($001d,a0)
	clr.b	($001f,a0)
L030468:
	subq.b	#1,($0027,a0)
	bne	L030492
	addq.b	#1,($0026,a0)
	andi.b	#$01,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308c6),a1
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L030492:
	rts

L030494:
	rts

L030496:
	move.b	#$07,($001d,a0)
	jsr	(L01024e)
	andi.w	#$00ff,d0
	jsr	(L010448)
	asr.w	#8,d0
	asr.w	#8,d1
	move.w	d0,d2
	move.w	d1,d3
	add.w	(L0473f4),d2
	add.w	(L0473f8),d3
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#2,d0
	asr.l	#2,d1
	bsr	L030514
	subq.b	#1,($0027,a0)
	bne	L0301e4
	addq.b	#1,($0026,a0)
	andi.b	#$03,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308b8),a1
	move.l	#L07bbb8,($0014,a0)
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
	rts

L030514:
	add.l	($000c,a0),d0
	add.l	($0010,a0),d1
	addi.l	#$00012000,d0
	bpl	L030528
	clr.l	d0
	bra	L030536
L030528:
	cmpi.l	#$00024000,d0
	bcs	L030536
	move.l	#$00024000,d0
L030536:
	subi.l	#$00012000,d0
	addi.l	#$00012000,d1
	bpl	L030548
	clr.l	d1
	bra	L030556
L030548:
	cmpi.l	#$00024000,d1
	bcs	L030556
	move.l	#$00024000,d1
L030556:
	subi.l	#$00012000,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
	rts

L030566:
	rts

L030568:
	move.w	(L0473f8),d0
	cmp.w	($0008,a0),d0
	bgt	L030588
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	addi.w	#$0020,d0
	cmpi.w	#$0040,d0
	bcs	L0305c8
L030588:
	cmpi.b	#$04,(L04740d)
	beq	L0305c0
	cmpi.b	#$07,($0028,a0)
	beq	L0305c0
	cmpi.b	#$02,($0028,a0)
	beq	L0305c0
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb98,($0014,a0)
	move.b	#-$01,($0026,a0)
	clr.b	($0019,a0)
	move.b	#$02,($0027,a0)
L0305c0:
	move.b	#$07,($001d,a0)
	rts

L0305c8:
	cmpi.w	#$0020,d0
	bcs	L0305d6
	move.l	#$ffffa000,d0
	bra	L0305dc
L0305d6:
	move.l	#$00006000,d0
L0305dc:
	clr.l	d1
	bsr	L030514
	rts

L0305e4:
	tst.b	($00000029).l
	bne	L03062a
	btst.b	#$06,(L047408)
	beq	L03062a
	cmpi.b	#$0b,($0028,a0)
	beq	L030620
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb58,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308c6),($0019,a0)
	move.b	(L0308c7),($0027,a0)
L030620:
	move.b	#$0b,($001d,a0)
	bra	L0306e8
L03062a:
	subq.b	#1,($0027,a0)
	bne	L03065c
	addq.b	#1,($0026,a0)
	andi.b	#$03,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308b8),a1
	move.l	#L07bbb8,($0014,a0)
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L03065c:
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	move.w	(L0473f4),d0
	cmp.w	($0004,a0),d0
	bcs	L03067a
	sub.w	#$0030,d2
	bra	L03067e
L03067a:
	add.w	#$0030,d2
L03067e:
	cmpi.b	#$05,(L04740e)
	bne	L03068e
	sub.w	#$0018,d3
	bra	L0306a4
L03068e:
	cmpi.b	#$0d,(L04740e)
	bne	L03069e
	add.w	#$0018,d3
	bra	L0306a4
L03069e:
	bsr	L02fd80
	rts

L0306a4:
	jsr	(L01024e)
	andi.w	#$000c,d0
	add.w	(L0306d8,pc,d0.w),d2
	add.w	(L0306da,pc,d0.w),d3
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#1,d0
	asr.l	#1,d1
	bsr	L030514
	rts

L0306d8:
	.dc.w	$fff0
L0306da:
	.dc.w	$fff0,$0010,$0010,$fff6
	.dc.w	$0010,$0010,$fff6

L0306e8:
	btst.b	#$06,(L047408)
	bne	L030722
	cmpi.b	#$00,($0028,a0)
	beq	L03071c
	move.b	($001d,a0),($0028,a0)
	move.l	#L07bb78,($0014,a0)
	clr.b	($0026,a0)
	move.b	(L0308b8),($0019,a0)
	move.b	(L0308b9),($0027,a0)
L03071c:
	move.b	#$00,($001d,a0)
L030722:
	subq.b	#1,($0027,a0)
	bne	L03074c
	addq.b	#1,($0026,a0)
	andi.b	#$01,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	add.w	d0,d0
	lea.l	(L0308c6),a1
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L03074c:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	addi.w	#$0018,d0
	cmpi.w	#$0030,d0
	bhi	L030774
	move.w	(L0473f8),d0
	sub.w	($0008,a0),d0
	addi.w	#$0020,d0
	cmpi.w	#$0040,d0
	bcs	L03077a
L030774:
	bsr	L02fd80
	rts

L03077a:
	move.w	(L0473f4),d0
	move.w	(L0473f8),d1
	move.w	($0004,a0),d2
	move.w	($0008,a0),d3
	jsr	(L010280)
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	asr.l	#1,d0
	asr.l	#1,d1
	bsr	L030514
	rts

L0307a8:
	subq.b	#1,($0027,a0)
	bne	L0307f2
	addq.b	#1,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	cmpi.b	#$07,d0
	bne	L0307c8
	move.l	#L07bb10,($0014,a0)
	bra	L0307de
L0307c8:
	cmpi.b	#$10,d0
	bne	L0307d8
	move.l	#L07bb58,($0014,a0)
	bra	L0307de
L0307d8:
	cmpi.b	#$14,d0
	beq	L0307fa
L0307de:
	add.w	d0,d0
	lea.l	(L03088e),a1
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0027,a0)
L0307f2:
	jsr	(L025416)
	rts

L0307fa:
	move.l	#L07bb78,($0014,a0)
	move.b	(L0308b8),($0019,a0)
	move.b	(L0308b9),($0027,a0)
	clr.b	($0026,a0)
	clr.b	($001d,a0)
	jsr	(L025416)
	rts

L030822:
	bsr	L02fd80
	subq.b	#1,($0027,a0)
	bne	L03085a
	btst.b	#$07,($0020,a0)
	beq	L030862
	addq.b	#1,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	cmpi.b	#$04,d0
	bne	L03084c
	move.l	#L07bb10,($0014,a0)
L03084c:
	add.w	d0,d0
	move.b	(L0308ca,pc,d0.w),($0019,a0)
	move.b	(L0308cb,pc,d0.w),($0027,a0)
L03085a:
	jsr	(L025416)
	rts

L030862:
	addq.b	#1,($0026,a0)
	clr.w	d0
	move.b	($0026,a0),d0
	cmpi.b	#$02,d0
	bcs	L030878
	eori.w	#$8000,($0018,a0)
L030878:
	add.w	d0,d0
	move.b	(L0308d6,pc,d0.w),($0019,a0)
	move.b	(L0308d7,pc,d0.w),($0027,a0)
	jsr	(L025416)
	rts

L03088e:
	.dc.b	$00
L03088f:
	.dc.b	$30,$01,$06,$00,$0c,$01,$06,$00
	.dc.b	$0c,$01,$0c,$02,$18,$00,$06,$01
	.dc.b	$08,$02,$04,$03,$04,$04,$04,$05
	.dc.b	$06,$06,$0a,$07,$18,$08,$0a,$00
	.dc.b	$0a,$01,$08,$02,$06,$03,$04
L0308b6:
	.dc.b	$00
L0308b7:
	.dc.b	$02
L0308b8:
	.dc.b	$00
L0308b9:
	.dc.b	$04,$01,$04,$02,$04,$03,$04
L0308c0:
	.dc.b	$00
L0308c1:
	.dc.b	$06,$01,$18,$00,$00
L0308c6:
	.dc.b	$02
L0308c7:
	.dc.b	$03,$03,$03
L0308ca:
	.dc.b	$03
L0308cb:
	.dc.b	$04,$02,$05,$01,$06,$00,$07,$08
	.dc.b	$0c,$07,$00
L0308d6:
	.dc.b	$00
L0308d7:
	.dc.b	$04,$01,$05,$01,$05,$01,$05,$01
	.dc.b	$05,$01,$05,$01,$05,$01,$05,$01
	.dc.b	$05,$01,$05,$01,$05,$01,$05,$01
	.dc.b	$05,$01,$05,$01,$05,$01,$05,$01
	.dc.b	$00

L0308f8:
	movea.l	#L047f30,a0
	tst.w	($0000.w,a0)
	beq	L030946
	cmpi.w	#$000b,($0000.w,a0)
	beq	L030946
	lea.l	(-$0030,a0),a0
	tst.w	($0000.w,a0)
	beq	L030946
	cmpi.w	#$000b,($0000.w,a0)
	beq	L030946
	lea.l	(-$0030,a0),a0
	tst.w	($0000.w,a0)
	beq	L030946
	cmpi.w	#$000b,($0000.w,a0)
	beq	L030946
	lea.l	(-$0030,a0),a0
	tst.w	($0000.w,a0)
	beq	L030946
	cmpi.w	#$000b,($0000.w,a0)
	beq	L030946
	ori.b	#$01,ccr
L030946:
	rts

L030948:
	move.b	($0006,a6),d7
	beq	L03095a
	move.w	(L047354),d6
	addq.w	#1,d6
	lsr.b	d6,d7
	bcc	L0309a4
L03095a:
	bsr	L0308f8
	bcs	L0309a4
	move.w	#$0048,($0000.w,a0)
	andi.w	#$fcff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	#L07b90c,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	clr.l	($0020,a0)
	clr.w	($002e,a0)
L0309a4:
	rts

L0309a6:
	jsr	(L029a3e)
	bcc	L0309c2
	move.b	#$05,($001d,a0)
	move.l	#$00000400,d0
	jsr	(L029a68)
	bra	L0309e2
L0309c2:
	tst.w	(L047fac)
	bne	L03657e
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L0309e2
	move.l	#$000b0000,($0000.w,a0)
L0309e2:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L0309fa,pc,d0.w),d0
	jsr	(L0309fa,pc,d0.w)
	jsr	(L025416)
	rts

L0309fa:
	.dc.w	L030a06-L0309fa
	.dc.w	L030a38-L0309fa
	.dc.w	L030ab2-L0309fa
	.dc.w	L030af2-L0309fa
	.dc.w	L030b86-L0309fa
	.dc.w	L030bd4-L0309fa

L030a06:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L030a14
	neg.w	d0
L030a14:
	cmpi.w	#$0068,d0
	bhi	L030a36
	addq.b	#1,($001d,a0)
	move.l	#$00010000,($0010,a0)
	ori.b	#$03,($0002,a0)
	bsr	L030e04
	move.w	#$0001,($0018,a0)
L030a36:
	rts

L030a38:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L030a5c
	addi.l	#$00006000,($0010,a0)
	rts

L030a5c:
	subq.w	#1,($0008,a0)
	subq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L030a5c
	move.l	($0010,a0),d0
	subi.l	#$00020000,d0
	bmi	L030a88
	asr.l	#2,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	rts

L030a88:
	addq.b	#1,($001d,a0)
	clr.l	($0010,a0)
	move.b	#$20,($001f,a0)
	clr.b	($0022,a0)
	move.w	#$1010,($0020,a0)
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bmi	L030ab0
	neg.b	($0020,a0)
L030ab0:
	rts

L030ab2:
	subq.b	#1,($001f,a0)
	beq	L030ada
	subq.b	#1,($0021,a0)
	bne	L030af0
	bsr	L030de4
	asr.b	#1,d0
	bne	L030ac8
	moveq.l	#$01,d0
L030ac8:
	move.b	d0,($0020,a0)
	bpl	L030ad0
	neg.b	d0
L030ad0:
	move.b	d0,($0021,a0)
	bsr	L030ee4
	rts

L030ada:
	addq.b	#1,($001d,a0)
	move.l	#$00008000,($000c,a0)
	tst.b	($0020,a0)
	bmi	L030af0
	neg.l	($000c,a0)
L030af0:
	rts

L030af2:
	move.l	#$00003000,d0
	tst.w	($000c,a0)
	bpl	L030b00
	neg.l	d0
L030b00:
	add.l	($000c,a0),d0
	move.l	d0,($000c,a0)
	move.l	d0,d1
	bpl	L030b0e
	neg.l	d0
L030b0e:
	cmpi.l	#$00070000,d0
	blt	L030b26
	move.l	#$00070000,d0
	tst.l	d1
	bpl	L030b22
	neg.l	d0
L030b22:
	move.l	d0,($000c,a0)
L030b26:
	jsr	(L025620)
	move.w	d1,d6
	move.w	d2,d7
	add.w	($0006,a5),d7
	addq.w	#1,d7
	jsr	(L025904)
	tst.b	d0
	bne	L030b44
	addq.b	#1,($001d,a0)
L030b44:
	move.w	d1,d6
	move.w	d2,d7
	tst.w	($000c,a0)
	bmi	L030b54
	add.w	($0004,a5),d6
	bra	L030b58
L030b54:
	sub.w	($0004,a5),d6
L030b58:
	jsr	(L025904)
	cmpi.b	#$01,d0
	bne	L030b6c
	move.b	#$05,($001d,a0)
	rts

L030b6c:
	subq.b	#1,($0021,a0)
	bne	L030b84
	bsr	L030ee4
	bsr	L030de4
	tst.b	d0
	bpl	L030b80
	neg.b	d0
L030b80:
	move.b	d0,($0021,a0)
L030b84:
	rts

L030b86:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L030bae
	addi.l	#$00006000,($0010,a0)
	sub.w	($0006,a5),d2
	bra	L030b44
L030bae:
	subq.w	#1,($0008,a0)
	subq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L030bae
	subq.b	#1,($001d,a0)
	clr.l	($0010,a0)
	sub.w	($0006,a5),d2
	bra	L030b44
L030bd4:
	clr.l	($0010,a0)
	move.w	#$004a,($0000.w,a0)
	andi.b	#$fc,($0002,a0)
	move.w	#$0000,d6
	lea.l	(L07b93c),a5
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$0027,d5
	move.w	#$fff8,(L030d6e)
	move.w	#$fff8,(L030d70)
	bsr	L030d5e
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$0000,d5
	move.w	#$0008,(L030d70)
	bsr	L030d5e
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$0000,d3
	move.w	#$001f,d4
	move.w	#$0000,d5
	move.w	#$0008,(L030d6e)
	bsr	L030d5e
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$0000,d3
	move.w	#$001f,d4
	move.w	#$0027,d5
	move.w	#$fff8,(L030d70)
	bsr	L030d5e
	move.w	#$0005,d7
	move.w	#$0001,d6
	move.w	#$001f,d2
	move.w	#$000f,d3
	move.w	#$003f,d4
	move.w	#$002f,d5
	bsr	L030d5e
	move.w	#$0002,d7
	move.w	#$0002,d6
	move.w	#$000f,d2
	move.w	#$0007,d3
	move.w	#$001f,d4
	move.w	#$001f,d5
	bsr	L030d5e
	move.w	#$0001,d7
	move.w	#$0003,d6
	move.w	#$0007,d2
	move.w	#$0003,d3
	move.w	#$0007,d4
	move.w	#$0017,d5
	clr.l	(L030d6e)
	bsr	L030d5e
	moveq.l	#$72,d0
	trap	#0
	rts

L030cce:
	clr.w	(L030d0a)
	lea.l	(L05bbdc),a1
L030cda:
	move.l	($0000.w,a0),d0
	cmp.l	($0000.w,a1),d0
	bne	L030cec
	bsr	L030d0c
	addq.w	#1,(L030d0a)
L030cec:
	lea.l	($0030,a1),a1
	cmpa.l	#L05c1dc,a1
	bne	L030cda
	tst.w	(L030d0a)
	bne	L030d08
	move.l	#$000b0000,($0000.w,a0)
L030d08:
	rts

L030d0a:
	.dc.w	$0000

L030d0c:
	movea.l	a0,a2
	movea.l	a1,a0
	jsr	(L029954)
	move.w	($0008,a0),d0
	subi.w	#$0110,d0
	cmpi.w	#$fee0,d0
	bcs	L030d32
	move.w	($0004,a0),d0
	subi.w	#$0110,d0
	cmpi.w	#$fee0,d0
	bhi	L030d3a
L030d32:
	clr.l	($0000.w,a1)
	movea.l	a2,a0
	rts

L030d3a:
	addi.l	#$00002000,($0010,a1)
	jsr	(L025416)
	jsr	(L01024e)
	andi.b	#$42,d0
	bne	L030d5a
	eori.b	#$80,($0018,a1)
L030d5a:
	movea.l	a2,a0
	rts

L030d5e:
	jsr	(L03b198)
	bcs	L030d68
	bsr	L030d72
L030d68:
	dbra	d7,L030d5e
	rts

L030d6e:
	.dc.b	$00,$00
L030d70:
	.dc.w	$0000

L030d72:
	move.w	($0000.w,a0),($0000.w,a1)
	move.w	($0002,a0),($0002,a1)
	move.l	($0004,a0),($0004,a1)
	move.l	($0008,a0),($0008,a1)
	move.w	(L030d6e),d0
	add.w	d0,($0004,a1)
	move.w	(L030d70),d0
	add.w	d0,($0008,a1)
	jsr	(L01024e)
	and.w	d2,d0
	sub.w	d3,d0
	asl.w	#8,d0
	ext.l	d0
	asl.l	#4,d0
	move.l	($000c,a0),d1
	asr.l	#2,d1
	add.l	d1,d0
	move.l	d0,($000c,a1)
	jsr	(L01024e)
	and.w	d4,d0
	sub.w	d5,d0
	asl.w	#8,d0
	ext.l	d0
	asl.l	#4,d0
	move.l	($0010,a0),d1
	asr.l	#1,d1
	add.l	d1,d0
	move.l	d0,($0010,a1)
	move.l	a5,($0014,a1)
	move.w	d6,($0018,a1)
	clr.w	($001c,a1)
	rts

L030de4:
	moveq.l	#$01,d1
	move.b	($0020,a0),d0
	bpl	L030dee
	neg.b	d1
L030dee:
	add.b	d1,($0022,a0)
	andi.b	#$03,($0022,a0)
	move.b	($0022,a0),($0019,a0)
	addq.b	#1,($0019,a0)
	rts

L030e04:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L030e64
	move.w	#$0049,($0000.w,a0)
	move.w	#$2000,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	subi.w	#$000a,($0008,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,d0
	move.l	d0,($000c,a0)
	move.l	#$fffe0000,($0010,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,($0010,a0)
	move.l	#L07b90c,($0014,a0)
	move.w	#$4005,($0018,a0)
	clr.w	($001a,a0)
	clr.l	($001c,a0)
L030e64:
	movea.l	a1,a0
	rts

L030e68:
	tst.w	(L047fac)
	bne	L03657e
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L030e86
	jmp	(L029cca)

L030e86:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L030eb0
	addi.l	#$00003000,($0010,a0)
	jsr	(L025416)
	rts

L030eb0:
	subq.w	#1,($0008,a0)
	subq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L030eb0
	move.l	($0010,a0),d0
	subi.l	#$00020000,d0
	bmi	L029cca
	asr.l	#2,d0
	neg.l	d0
	move.l	d0,($0010,a0)
	jsr	(L025416)
	rts

L030ee4:
	cmpi.b	#$04,($001d,a0)
	beq	L030f6a
L030eec:
	jsr	(L01024e)
	andi.b	#$03,d0
	bne	L030f6a
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L030f68
	move.w	#$004c,($0000.w,a0)
	clr.w	($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	addi.w	#$0010,($0008,a0)
	move.l	#$00020000,d0
	tst.w	($0020,a1)
	bpl	L030f2c
	neg.l	d0
L030f2c:
	move.l	d0,($000c,a0)
	move.l	#$fffe0000,($0010,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,($000c,a0)
	jsr	(L01024e)
	ext.l	d0
	add.l	d0,($0010,a0)
	move.l	#L06e3b2,($0014,a0)
	move.w	#$000c,($0018,a0)
	move.w	#$0018,($001e,a0)
	moveq.l	#$31,d0
	trap	#0
L030f68:
	movea.l	a1,a0
L030f6a:
	rts

L030f6c:
	jsr	(L029954)
	jsr	(L0299de)
	bcs	L029cca
	subq.b	#1,($001f,a0)
	beq	L029cca
	move.l	#$00000800,d0
	tst.w	($000c,a0)
	bmi	L030f92
	neg.l	d0
L030f92:
	add.l	d0,($000c,a0)
	addi.l	#$00002000,($0010,a0)
	jsr	(L025416)
	rts

L030fa6:
	move.b	($0006,a6),d7
	beq	L030fb8
	move.w	(L047354),d6
	addq.w	#1,d6
	lsr.b	d6,d7
	bcc	L031016
L030fb8:
	bsr	L0308f8
	bcs	L031016
	move.w	#$004b,($0000.w,a0)
	ori.w	#$0300,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	clr.w	($002e,a0)
	clr.w	d0
	move.b	($0005,a6),d0
	bpl	L030ff6
	not.b	($002f,a0)
	andi.w	#$007f,d0
L030ff6:
	add.w	d0,d0
	add.w	d0,d0
	move.l	(L031018,pc,d0.w),($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	clr.w	($001e,a0)
	clr.l	($0020,a0)
L031016:
	rts

L031018:
	.dc.l	L07b8f4
	.dc.l	L07b8fc
	.dc.l	L07b904

L031024:
	jsr	(L029a3e)
	bcc	L031040
	move.b	#$02,($001d,a0)
	move.l	#$00000300,d0
	jsr	(L029a68)
	bra	L031060
L031040:
	tst.w	(L047fac)
	bne	L03657e
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L031060
	move.l	#$000b0000,($0000.w,a0)
L031060:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L031078,pc,d0.w),d0
	jsr	(L031078,pc,d0.w)
	jsr	(L025416)
	rts

L031078:
	.dc.w	L03107e-L031078
	.dc.w	L0310ea-L031078
	.dc.w	L03112e-L031078

L03107e:
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L03108c
	neg.w	d0
L03108c:
	cmpi.w	#$0020,d0
	bhi	L0310e8
	tst.b	($002f,a0)
	beq	L0310e4
	movea.l	#L047f30,a1
	cmpi.w	#$004b,($0000.w,a1)
	bne	L0310ac
	move.b	#$01,($001d,a1)
L0310ac:
	lea.l	(-$0030,a1),a1
	cmpi.w	#$004b,($0000.w,a1)
	bne	L0310be
	move.b	#$01,($001d,a1)
L0310be:
	lea.l	(-$0030,a1),a1
	cmpi.w	#$004b,($0000.w,a1)
	bne	L0310d0
	move.b	#$01,($001d,a1)
L0310d0:
	lea.l	(-$0030,a1),a1
	cmpi.w	#$004b,($0000.w,a1)
	bne	L0310e8
	move.b	#$01,($001d,a1)
	bra	L0310e8
L0310e4:
	addq.b	#1,($001d,a0)
L0310e8:
	rts

L0310ea:
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L03110e
	addi.l	#$00002000,($0010,a0)
	rts

L03110e:
	subq.w	#1,($0008,a0)
	subq.w	#1,d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L03110e
	addq.b	#1,($001d,a0)
	clr.l	($0010,a0)
	rts

L03112e:
	clr.l	($0010,a0)
	move.w	#$004a,($0000.w,a0)
	andi.b	#$fc,($0002,a0)
	move.w	#$0000,d6
	lea.l	(L07b93c),a5
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$0027,d5
	move.w	#$fff8,(L030d6e)
	move.w	#$fff8,(L030d70)
	bsr	L030d5e
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$0000,d5
	move.w	#$0008,(L030d70)
	bsr	L030d5e
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$0000,d3
	move.w	#$001f,d4
	move.w	#$0000,d5
	move.w	#$0008,(L030d6e)
	bsr	L030d5e
	clr.w	d7
	move.w	#$000f,d2
	move.w	#$0000,d3
	move.w	#$001f,d4
	move.w	#$0027,d5
	move.w	#$fff8,(L030d70)
	bsr	L030d5e
	move.w	#$0005,d7
	move.w	#$0002,d6
	move.w	#$003f,d2
	move.w	#$001f,d3
	move.w	#$003f,d4
	move.w	#$002f,d5
	move.w	#$0000,(L030d6e)
	move.w	#$0000,(L030d70)
	bsr	L030d5e
	move.w	#$0003,d7
	move.w	#$0003,d6
	move.w	#$001f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$001f,d5
	move.w	#$0000,(L030d6e)
	move.w	#$0000,(L030d70)
	bsr	L030d5e
	move.w	#$0001,d7
	move.w	#$0001,d6
	move.w	#$000f,d2
	move.w	#$0007,d3
	move.w	#$001f,d4
	move.w	#$002f,d5
	move.w	#$0000,(L030d6e)
	move.w	#$fff8,(L030d70)
	bsr	L030d5e
	moveq.l	#$72,d0
	trap	#0
	rts

L031252:
	bsr	L0313d0
	bsr	L0308f8
	bcs	L0313ac
	move.w	#$004d,($0000.w,a0)
	move.w	#$007f,d0
	move.w	d0,($0002,a0)
	move.l	#$00800000,($0004,a0)
	move.l	#$00800000,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	lea.l	(L07b93c),a5
	move.w	#$0005,d7
	move.w	#$0003,d6
	move.w	#$001f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$003f,d5
	move.w	#$0000,(L030d6e)
	move.w	#$0000,(L030d70)
	bsr	L0313ae
	move.w	#$0005,d7
	move.w	#$0002,d6
	move.w	#$0018,(L030d70)
	bsr	L0313ae
	move.w	#$0005,d7
	move.w	#$0004,d6
	move.w	#$0030,(L030d70)
	bsr	L0313ae
	move.w	#$0007,d7
	move.w	#$0003,d6
	move.w	#$003f,d2
	move.w	#$001f,d3
	move.w	#$0048,(L030d70)
	bsr	L0313ae
	move.w	#$0005,d7
	move.w	#$0002,d6
	move.w	#$001f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$003f,d5
	move.w	#$0050,(L030d6e)
	move.w	#$0018,(L030d70)
	bsr	L0313ae
	move.w	#$0005,d7
	move.w	#$0004,d6
	move.w	#$0030,(L030d70)
	bsr	L0313ae
	move.w	#$0006,d7
	move.w	#$0003,d6
	move.w	#$003f,d2
	move.w	#$001f,d3
	move.w	#$0048,(L030d70)
	bsr	L0313ae
	move.w	#$0005,d7
	move.w	#$0002,d6
	move.w	#$001f,d2
	move.w	#$000f,d3
	move.w	#$001f,d4
	move.w	#$003f,d5
	move.w	#$ffb0,(L030d6e)
	move.w	#$0018,(L030d70)
	bsr	L0313ae
	move.w	#$0005,d7
	move.w	#$0004,d6
	move.w	#$0030,(L030d70)
	bsr	L0313ae
	move.w	#$0006,d7
	move.w	#$0003,d6
	move.w	#$003f,d2
	move.w	#$001f,d3
	move.w	#$0048,(L030d70)
	bsr	L0313ae
	moveq.l	#$72,d0
	trap	#0
L0313ac:
	rts

L0313ae:
	lea.l	(L05bbac),a1
L0313b4:
	lea.l	($0030,a1),a1
	cmpa.l	#L05c7dc,a1
	beq	L0313ce
	tst.w	($0000.w,a1)
	bne	L0313b4
	bsr	L030d72
	dbra	d7,L0313b4
L0313ce:
	rts

L0313d0:
	lea.l	(L05bbdc),a1
L0313d6:
	clr.w	($0000.w,a1)
	lea.l	($0030,a1),a1
	cmpa.l	#L05c7dc,a1
	bne	L0313d6
	rts

L0313e8:
	clr.w	(L030d0a)
	lea.l	(L05bbdc),a1
L0313f4:
	move.l	($0000.w,a0),d0
	cmp.l	($0000.w,a1),d0
	bne	L031408
	bsr	L030d0c
	addq.w	#1,(L031426)
L031408:
	lea.l	($0030,a1),a1
	cmpa.l	#L05c7dc,a1
	bne	L0313f4
	tst.w	(L031426)
	bne	L031424
	move.l	#$000b0000,($0000.w,a0)
L031424:
	rts

L031426:
	.dc.w	$0000

L031428:
	jsr	(L0298a6)
	bcs	L031458
	move.w	#$0053,($0000.w,a0)
	move.b	#$20,($0002,a0)
	move.b	d0,($0003,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.w	($001c,a0)
	move.w	#$0004,($001e,a0)
L031458:
	rts

L03145a:
	cmpi.w	#$0500,(L047f7a)
	bne	L031486
	lea.l	(L07aee6),a5
	lea.l	($00e82340),a6
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5),(a6)
	jmp	(L029cca)

L031486:
	move.w	($001c,a0),d1
	bne	L031498
	jsr	(L01024e)
	andi.b	#$77,d0
	bne	L0314da
L031498:
	subq.w	#1,($001e,a0)
	bne	L0314da
	move.w	#$0002,($001e,a0)
	add.w	d1,d1
	move.w	(L0314dc,pc,d1.w),d0
	lea.l	(L07aee6),a5
	lea.l	(a5,d0.w),a5
	lea.l	($00e82340),a6
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5)+,(a6)+
	move.l	(a5),(a6)
	addq.w	#1,($001c,a0)
	cmpi.b	#$05,($001d,a0)
	bne	L0314da
	clr.w	($001c,a0)
L0314da:
	rts

L0314dc:
	.dc.w	$0040,$0060,$0080,$00a0
	.dc.w	$0000

L0314e6:
	bsr	L031eec
	bcs	L03156a
	move.w	#$004e,($0000.w,a0)
	andi.w	#$fcff,d0
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.b	($0005,a6),($0024,a0)
	beq	L031522
	move.l	#L07bf88,($0014,a0)
	bra	L03152a
L031522:
	move.l	#L07bf68,($0014,a0)
L03152a:
	clr.w	($0018,a0)
	clr.w	($001a,a0)
	clr.w	($001c,a0)
	move.b	#$ff,($001e,a0)
	move.b	#$04,($001f,a0)
	clr.l	($0020,a0)
	clr.b	($0025,a0)
	clr.w	($0026,a0)
	jsr	(L01024e)
	andi.b	#$1f,d0
	sub.b	d0,($001e,a0)
	cmpi.b	#$02,($0024,a0)
	bne	L03156a
	move.b	#$80,($001e,a0)
L03156a:
	rts

L03156c:
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L03158c
	move.l	($0020,a0),d0
	beq	L031586
	movea.l	d0,a1
	clr.l	($0020,a1)
L031586:
	jmp	(L029cca)

L03158c:
	tst.w	(L047fac)
	bne	L0315aa
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	(L031678),a1
	movea.l	(a1,d0.w),a1
	jsr	(a1)
L0315aa:
	tst.b	($0025,a0)
	bne	L0315b8
	bsr	L0315c0
	bsr	L031614
	bsr	L031632
	rts

L0315b8:
	bsr	L031614
	bsr	L0315c0
	bsr	L031632
	rts

L0315c0:
	cmpi.w	#$0028,($0008,a0)
	blt	L031612
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	movea.l	($0014,a0),a5
	tst.w	(L047fac)
	bne	L031602
	tst.b	($001d,a0)
	bne	L031606
	tst.b	($001f,a0)
	bne	L031602
	jsr	(L01024e)
	andi.w	#$0001,d0
	subq.w	#1,d0
	bmi	L0315fa
	clr.w	d0
	bra	L0315fe
L0315fa:
	move.w	#$ffff,d0
L0315fe:
	move.w	d0,($0026,a0)
L031602:
	add.w	($0026,a0),d2
L031606:
	clr.w	d0
	move.b	($0019,a0),d0
	jsr	(L025426)
L031612:
	rts

L031614:
	tst.l	($0020,a0)
	beq	L031630
	cmpi.b	#$01,($0024,a0)
	beq	L031656
	move.l	a0,-(a7)
	movea.l	($0020,a0),a0
	jsr	(L025416)
	movea.l	(a7)+,a0
L031630:
	rts

L031632:
	cmpi.w	#$0028,($0008,a0)
	blt	L031612
	clr.w	d0
	move.b	($0018,a0),d0
	beq	L031654
	move.w	($0004,a0),d1
	move.w	($0008,a0),d2
	movea.l	($0014,a0),a5
	jsr	(L025426)
L031654:
	rts

L031656:
	movea.l	a0,a2
	movea.l	($0020,a0),a1
	addq.w	#4,a1
	move.w	#$0005,d7
L031662:
	tst.l	(a1)
	beq	L03166e
	movea.l	(a1),a0
	jsr	(L025416)
L03166e:
	addq.w	#4,a1
	dbra	d7,L031662
	movea.l	a2,a0
	rts

L031678:
	.dc.l	L031688
	.dc.l	L031716
	.dc.l	L031754
	.dc.l	L031772

L031688:
	tst.b	($0024,a0)
	beq	L0316c4
	cmpi.b	#$01,($0024,a0)
	beq	L03169e
	subq.b	#1,($001e,a0)
	beq	L0316e2
	bra	L0316f8
L03169e:
	move.w	($0008,a0),d0
	sub.w	(L0473f8),d0
	cmpi.w	#$0048,d0
	ble	L0316f8
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	addi.w	#$0018,d0
	cmpi.w	#$0030,d0
	bhi	L0316f8
	bra	L0316e2
L0316c4:
	tst.b	($001e,a0)
	beq	L0316e2
	subq.b	#1,($001e,a0)
	move.w	(L0473f8),d0
	sub.w	($0008,a0),d0
	addi.w	#$0040,d0
	cmpi.w	#$0080,d0
	bhi	L0316f8
L0316e2:
	addq.b	#1,($001d,a0)
	move.b	#$10,($001f,a0)
	move.w	#$0103,($0018,a0)
	clr.w	($0026,a0)
	rts

L0316f8:
	subq.b	#1,($001f,a0)
	bpl	L031714
	move.b	#$04,($001f,a0)
	jsr	(L01024e)
	andi.b	#$03,d0
	subq.b	#1,d0
	add.b	d0,($001f,a0)
L031714:
	rts

L031716:
	subq.b	#1,($001f,a0)
	bne	L03174c
	addq.b	#1,($001d,a0)
	addq.b	#1,($0018,a0)
	clr.w	d0
	move.b	($0024,a0),d0
	add.w	d0,d0
	move.w	(L03174e,pc,d0.w),d0
	move.l	a0,-(a7)
	jsr	(L03174e,pc,d0.w)
	movea.l	(a7)+,a0
	move.b	#$10,($001f,a0)
	cmpi.b	#$01,($0024,a0)
	bne	L03174c
	addi.b	#$50,($001f,a0)
L03174c:
	rts

L03174e:
	.dc.w	$0026,$0236,$0430

L031754:
	subq.b	#1,($001f,a0)
	bne	L031770
	subq.b	#1,($0018,a0)
	beq	L031768
	move.b	#$08,($001f,a0)
	rts

L031768:
	clr.w	($0018,a0)
	addq.b	#1,($001d,a0)
L031770:
	rts

L031772:
	rts

L031774:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L0317d0
	move.l	a0,($0020,a1)
	move.w	#$004f,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	clr.l	($000c,a0)
	move.l	#$ffff4000,($0010,a0)
	move.l	#L07c040,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0001,($001a,a0)
	clr.w	($001c,a0)
	move.w	#$0030,($001e,a0)
	move.l	a1,($0020,a0)
	clr.b	($0024,a0)
	move.b	#$04,($0025,a0)
L0317d0:
	rts

L0317d2:
	jsr	(L029a3e)
	bcc	L0317ee
	move.l	($0020,a0),d0
	beq	L0317e6
	movea.l	d0,a1
	clr.l	($0020,a1)
L0317e6:
	moveq.l	#$24,d0
	trap	#0
	bra	L029b82
L0317ee:
	tst.w	(L047fac)
	beq	L031816
	jsr	(L02993c)
	jsr	(L0299de)
	bcc	L031846
	move.l	($0020,a0),d0
	beq	L031810
	movea.l	d0,a1
	clr.l	($0020,a1)
L031810:
	clr.l	($0000.w,a0)
	rts

L031816:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L031836
	move.l	($0020,a0),d0
	beq	L031830
	movea.l	d0,a1
	clr.l	($0020,a1)
L031830:
	clr.l	($0000.w,a0)
	rts

L031836:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L031854,pc,d0.w),d0
	jsr	(L031854,pc,d0.w)
L031846:
	tst.l	($0020,a0)
	bne	L031852
	jsr	(L025416)
L031852:
	rts

L031854:
	.dc.w	L03185a-L031854
	.dc.w	L03188c-L031854
	.dc.w	L0318ea-L031854

L03185a:
	addi.l	#$00000300,($0010,a0)
	subq.b	#1,($0025,a0)
	bne	L031874
	move.b	#$04,($0025,a0)
	eori.b	#$01,($0019,a0)
L031874:
	subq.b	#1,($001f,a0)
	bne	L03188a
	addq.b	#1,($001d,a0)
	move.b	#$02,($0019,a0)
	move.b	#$06,($001f,a0)
L03188a:
	rts

L03188c:
	addi.l	#$00000300,($0010,a0)
	subq.b	#1,($001f,a0)
	bne	L0318e8
	addq.b	#1,($0019,a0)
	cmpi.b	#$04,($0019,a0)
	beq	L0318ae
	move.b	#$06,($001f,a0)
	bra	L0318e8
L0318ae:
	addq.b	#1,($001d,a0)
	move.b	#$06,($0025,a0)
	clr.b	($0024,a0)
	move.b	#$10,($001f,a0)
	clr.w	($0026,a0)
	jsr	(L01024e)
	andi.b	#$01,d0
	move.b	d0,($0028,a0)
	move.l	($0020,a0),d0
	beq	L0318e8
	movea.l	d0,a1
	not.b	($0025,a1)
	clr.l	($0020,a1)
	clr.l	($0020,a0)
L0318e8:
	rts

L0318ea:
	subq.b	#1,($001f,a0)
	bne	L03190a
	move.b	#$10,($001f,a0)
	subq.b	#1,($0028,a0)
	bpl	L03195e
	move.b	#$06,d0
	sub.b	(L047355),d0
	move.b	d0,($0028,a0)
L03190a:
	tst.b	($0028,a0)
	bne	L03195e
	move.w	($0004,a0),d0
	move.w	($0008,a0),d1
	move.w	(L0473f4),d2
	move.w	(L0473f8),d3
	jsr	(L010280)
	andi.w	#$00ff,d0
	moveq.l	#$02,d1
	sub.b	($0027,a0),d0
	bpl	L031938
	neg.b	d1
L031938:
	add.b	d1,($0027,a0)
	move.w	($0026,a0),d0
	jsr	(L01032e)
	ext.l	d0
	ext.l	d1
	move.l	d0,d2
	move.l	d1,d3
	add.l	d0,d0
	add.l	d2,d0
	add.l	d1,d1
	add.l	d3,d1
	move.l	d0,($000c,a0)
	move.l	d1,($0010,a0)
L03195e:
	subq.b	#1,($0025,a0)
	bne	L03197e
	move.b	($0024,a0),d0
	addq.b	#1,d0
	andi.w	#$0003,d0
	move.b	d0,($0024,a0)
	move.b	(L031980,pc,d0.w),($0019,a0)
	move.b	#$06,($0025,a0)
L03197e:
	rts

L031980:
	.dc.b	$04,$05,$06,$05,$24,$48,$4e,$b9
	.dc.l	L03b198
	.dc.b	$65,$00,$00,$de,$25,$49,$00,$20
	.dc.b	$23,$6a,$00,$00,$00,$00,$42,$a9
	.dc.b	$00,$04,$42,$a9,$00,$08,$42,$a9
	.dc.b	$00,$0c,$42,$a9,$00,$10,$42,$a9
	.dc.b	$00,$14,$42,$a9,$00,$18,$58,$49
	.dc.b	$42,$46,$4e,$b9
	.dc.l	L01024e
	.dc.b	$02,$40,$00,$01,$06,$40,$00,$04
	.dc.b	$3e,$00,$4e,$b9
	.dc.l	L0298a6
	.dc.b	$64,$06,$42,$99,$60,$00,$00,$96
	.dc.b	$21,$4a,$00,$20,$21,$49,$00,$24
	.dc.b	$22,$c8,$31,$7c,$00,$50,$00,$00
	.dc.b	$31,$7c,$03,$00,$00,$02,$21,$6a
	.dc.b	$00,$04,$00,$04,$21,$6a,$00,$08
	.dc.b	$00,$08,$59,$68,$00,$08,$4e,$b9
	.dc.l	L01024e
	.dc.b	$32,$00,$02,$80,$00,$00,$07,$ff
	.dc.b	$06,$40,$08,$00,$e7,$88,$4a,$41
	.dc.b	$6a,$02,$44,$80,$21,$40,$00,$0c
	.dc.b	$4e,$b9
	.dc.l	L01024e
	.dc.b	$02,$80,$00,$00,$03,$ff,$e9,$48
	.dc.b	$44,$80,$21,$40,$00,$10,$4e,$b9
	.dc.l	L01024e
	.dc.b	$02,$40,$00,$03,$d0,$40,$d0,$40
	.dc.b	$21,$7b,$00,$34,$00,$14,$42,$68
	.dc.b	$00,$18,$31,$7c,$00,$01,$00,$1a
	.dc.b	$42,$68,$00,$1c,$4e,$b9
	.dc.l	L01024e
	.dc.b	$31,$40,$00,$28,$02,$40,$00,$0f
	.dc.b	$dc,$40,$31,$46,$00,$1e,$11,$7c
	.dc.b	$00,$40,$00,$1e,$51,$cf,$ff,$5c
	.dc.b	$20,$4a,$4e,$75
	.dc.l	L07bfa8
	.dc.l	L07bfc0
	.dc.l	L07bfd8
	.dc.l	L07bfa8

L031a80:
	jsr	(L029a3e)
	bcc	L031aa8
	andi.w	#$fcff,($0002,a0)
	addq.b	#1,($001d,a0)
	addq.b	#1,($0019,a0)
	move.b	#$06,($002a,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	moveq.l	#$57,d0
	trap	#0
L031aa8:
	tst.w	(L047fac)
	bne	L031aba
	tst.b	($001f,a0)
	beq	L031aca
	subq.b	#1,($001f,a0)
L031aba:
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L031aee
	bra	L031b0e
L031aca:
	tst.b	($001e,a0)
	beq	L031ae0
	subq.b	#1,($001e,a0)
	bne	L031ae0
	clr.l	($0020,a0)
	movea.l	($0024,a0),a1
	clr.l	(a1)
L031ae0:
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L031afe
L031aee:
	clr.l	($0000.w,a0)
	clr.l	($0020,a0)
	movea.l	($0024,a0),a1
	clr.l	(a1)
	rts

L031afe:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L031b26,pc,d0.w),d0
	jsr	(L031b26,pc,d0.w)
L031b0e:
	move.l	($0020,a0),d0
	beq	L031b1e
	movea.l	d0,a1
	cmpi.w	#$004e,($0000.w,a1)
	beq	L031b24
L031b1e:
	jsr	(L025416)
L031b24:
	rts

L031b26:
	.dc.w	L031b2a-L031b26
	.dc.w	L031b4e-L031b26

L031b2a:
	subi.l	#$00000200,($0010,a0)
	addi.w	#$0280,($0028,a0)
	clr.w	d0
	move.b	($0028,a0),d0
	jsr	(L010440)
	ext.l	d0
	asl.l	#1,d0
	add.l	d0,($0004,a0)
	rts

L031b4e:
	subq.b	#1,($002a,a0)
	bne	L031b66
	addq.b	#1,($0019,a0)
	cmpi.b	#$03,($0019,a0)
	beq	L031b68
	move.b	#$06,($002a,a0)
L031b66:
	rts

L031b68:
	move.b	#$02,($0019,a0)
	movea.l	($0024,a0),a1
	clr.l	(a1)
	clr.l	($0000.w,a0)
	clr.l	($0020,a0)
	rts

L031b7e:
	movea.l	a0,a1
	jsr	(L0298a6)
	bcs	L031bde
	move.l	a0,($0020,a1)
	move.w	#$0051,($0000.w,a0)
	move.w	#$0300,($0002,a0)
	move.l	($0004,a1),($0004,a0)
	move.l	($0008,a1),($0008,a0)
	subq.w	#4,($0008,a0)
	clr.l	($000c,a0)
	move.l	#$fffc0000,($0010,a0)
	move.l	#L07bff0,($0014,a0)
	clr.w	($0018,a0)
	move.w	#$0003,($001a,a0)
	clr.w	($001c,a0)
	move.l	a1,($0020,a0)
	clr.b	($0024,a0)
	move.b	#$08,($0025,a0)
	move.b	#$08,($0026,a0)
L031bde:
	rts

L031be0:
	jsr	(L029a3e)
	bcc	L031c10
	bne	L031c00
	move.l	($0020,a0),d0
	beq	L031bf6
	movea.l	d0,a1
	clr.l	($0020,a1)
L031bf6:
	moveq.l	#$5a,d0
	trap	#0
	jmp	(L029b82)

L031c00:
	moveq.l	#$31,d0
	trap	#0
	move.b	#$08,($001e,a0)
	andi.w	#$fcff,($0002,a0)
L031c10:
	tst.b	($001e,a0)
	beq	L031c22
	subq.b	#1,($001e,a0)
	bne	L031c22
	ori.w	#$0300,($0002,a0)
L031c22:
	tst.w	(L047fac)
	bne	L03657e
	jsr	(L029954)
	jsr	(L0299de)
	bcc	L031c4a
	move.l	($0020,a0),d0
	beq	L031c46
	movea.l	d0,a1
	clr.l	($0020,a1)
L031c46:
	clr.l	($0000.w,a0)
L031c4a:
	clr.w	d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L031c68,pc,d0.w),d0
	jsr	(L031c68,pc,d0.w)
	tst.l	($0020,a0)
	bne	L031c66
	jsr	(L025416)
L031c66:
	rts

L031c68:
	.dc.w	L031c72-L031c68
	.dc.w	L031ca4-L031c68
	.dc.w	L031cba-L031c68
	.dc.w	L031d68-L031c68
	.dc.w	L031dec-L031c68

L031c72:
	bsr	L031e8c
	bcc	L031ca2
	addq.b	#1,($001d,a0)
	clr.l	($0010,a0)
	addq.b	#1,($0019,a0)
	addq.w	#4,($0008,a0)
	move.b	#$10,($001f,a0)
	move.l	($0020,a0),d0
	beq	L031ca2
	movea.l	d0,a1
	not.b	($0025,a1)
	clr.l	($0020,a1)
	clr.l	($0020,a0)
L031ca2:
	rts

L031ca4:
	subq.b	#1,($001f,a0)
	bne	L031cb8
	addq.b	#1,($001d,a0)
	move.b	#$02,($0019,a0)
	bsr	L031e08
L031cb8:
	rts

L031cba:
	jsr	(L025620)
	add.w	($0006,a5),d2
	addq.w	#1,d2
	move.w	($0004,a5),d0
	tst.w	($000c,a0)
	bpl	L031cd2
	neg.w	d0
L031cd2:
	add.w	d0,d1
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.b	d0
	bne	L031d30
	tst.b	($002f,a0)
	bpl	L031d22
	jsr	(L01024e)
	andi.b	#$0f,d0
	bne	L031d22
L031cf4:
	bclr.b	#$06,($002f,a0)
	tst.w	($000c,a0)
	bpl	L031d06
	ori.b	#$40,($002f,a0)
L031d06:
	clr.l	($000c,a0)
	move.b	#$07,($0019,a0)
	move.b	#$08,($0025,a0)
	addq.b	#1,($001d,a0)
	move.b	#$10,($001f,a0)
	rts

L031d22:
	tst.w	($000c,a0)
	bpl	L031d2c
	bra	L031e6c
L031d2c:
	bra	L031e7c
L031d30:
	subq.b	#1,($001f,a0)
	bne	L031d46
	jsr	(L01024e)
	andi.b	#$07,d0
	beq	L031cf4
	bsr	L031e08
L031d46:
	subq.b	#1,($0025,a0)
	bne	L031d66
	move.b	($0024,a0),d0
	addq.b	#1,d0
	andi.b	#$03,d0
	move.b	d0,($0024,a0)
	addq.b	#3,d0
	move.b	d0,($0019,a0)
	move.b	($0026,a0),($0025,a0)
L031d66:
	rts

L031d68:
	tst.l	($0010,a0)
	bne	L031da8
	subq.b	#1,($001f,a0)
	bne	L031dea
	jsr	(L01024e)
	andi.b	#$03,d0
	beq	L031dd0
	move.l	#$00008000,d0
	btst.b	#$06,($002f,a0)
	beq	L031d90
	neg.l	d0
L031d90:
	move.l	d0,($000c,a0)
	move.l	#$fffd8000,($0010,a0)
	addq.b	#1,($0019,a0)
	move.b	#$08,($0025,a0)
	rts

L031da8:
	bsr	L031e8c
	bcc	L031dea
	jsr	(L01024e)
	andi.b	#$03,d0
	bne	L031dd0
	addq.b	#1,($001d,a0)
	move.l	($0010,a0),d0
	neg.l	d0
	asr.l	#2,d0
	move.l	d0,($0010,a0)
	addq.b	#1,($0019,a0)
	rts

L031dd0:
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.b	#$10,($001f,a0)
	move.b	#$01,($001d,a0)
	move.b	#$07,($0019,a0)
L031dea:
	rts

L031dec:
	bsr	L031e8c
	bcc	L031e06
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.b	#$30,($001f,a0)
	move.b	#$01,($001d,a0)
L031e06:
	rts

L031e08:
	andi.b	#$7f,($002f,a0)
	move.w	(L0473f8),d0
	sub.w	($0008,a0),d0
	addi.w	#$0014,d0
	cmpi.w	#$0028,d0
	bhi	L031e2a
	ori.b	#$80,($002f,a0)
	bra	L031e44
L031e2a:
	move.b	#$30,($001f,a0)
	move.b	#$08,($0026,a0)
	jsr	(L01024e)
	andi.b	#$01,d0
	beq	L031e7c
	bra	L031e6c
L031e44:
	move.b	#$04,($0026,a0)
	move.w	(L0473f4),d0
	sub.w	($0004,a0),d0
	bpl	L031e62
	neg.w	d0
	lsr.w	#2,d0
	addq.w	#4,d0
	move.b	d0,($001f,a0)
	bra	L031e6c
L031e62:
	lsr.w	#2,d0
	addq.w	#4,d0
	move.b	d0,($001f,a0)
	bra	L031e7c
L031e6c:
	move.l	#$00008000,($000c,a0)
	ori.w	#$8000,($0018,a0)
	rts

L031e7c:
	move.l	#$ffff8000,($000c,a0)
	andi.w	#$7fff,($0018,a0)
	rts

L031e8c:
	tst.w	($0010,a0)
	bmi	L031ec2
	jsr	(L025620)
	add.w	($0006,a5),d2
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	tst.w	d0
	bmi	L031ec2
	cmpi.b	#$02,d0
	bne	L031ebc
	move.w	d1,d6
	addq.w	#8,d6
	move.w	d2,d7
	jsr	(L025904)
L031ebc:
	cmpi.b	#$01,d0
	beq	L031ed0
L031ec2:
	addi.l	#$00003000,($0010,a0)
	andi.b	#$fe,ccr
	rts

L031ed0:
	subq.w	#1,d2
	subq.w	#1,($0008,a0)
	move.w	d1,d6
	move.w	d2,d7
	jsr	(L025904)
	cmpi.b	#$01,d0
	beq	L031ed0
	ori.b	#$01,ccr
	rts

L031eec:
	lea.l	(L047ae0),a0
L031ef2:
	lea.l	(-$0030,a0),a0
	tst.w	($0000.w,a0)
	beq	L031f08
	cmpa.l	#L0474e0,a0
	bne	L031ef2
	ori.b	#$01,ccr
L031f08:
	rts

L031f0a:
	jsr	(L0298e2)
	bcs	L031f38
	move.w	#$0085,($0000.w,a0)
	andi.w	#$007f,d0
	move.w	d0,($0002,a0)
	move.w	#$0180,($001e,a0)
	moveq.l	#$00,d0
	move.l	d0,($0020,a0)
	move.w	d0,(L047fb4)
	move.w	d0,(L047fb6)
L031f38:
	rts

L031f3a:
	move.w	($0020,a0),d0
	beq	L031f4e
	subq.w	#1,d0
	move.w	d0,($0020,a0)
	clr.w	(L047fb6)
	rts

L031f4e:
	moveq.l	#$00,d0
	move.w	(L047fb6),d0
	bne	L031f8c
	move.w	($001e,a0),d7
	beq	L031f66
	subq.w	#1,d7
	move.w	d7,($001e,a0)
L031f64:
	rts

L031f66:
	tst.w	(L047fb4)
	beq	L031f64
	jsr	(L01024e)
	andi.w	#$007f,d0
	bne	L031f64
	jsr	(L01024e)
	andi.w	#$0001,d0
	move.w	#$0180,($001e,a0)
	bra	L031f94
L031f8c:
	subq.w	#1,d0
	move.w	#$0040,($0020,a0)
L031f94:
	clr.w	(L047fb6)
	tst.w	(L047fac)
	beq	L031fa8
	cmpi.w	#$0002,d0
	bcs	L031f64
L031fa8:
	add.w	d0,d0
	move.w	(L031fb2,pc,d0.w),d0
	trap	#0
	rts

L031fb2:
	.dc.w	$00a4,$00a5,$00a6,$00a7

L031fba:
	cmp.b	($0006,a6),d1
	bne	L0320f4
	lea.l	(L047360),a1
	move.w	#$0002,d7
L031fcc:
	cmpi.w	#$0074,($0000.w,a1)
	bne	L031fe0
	move.b	($002f,a1),d2
	cmp.b	($0007,a6),d2
	beq	L0320f4
L031fe0:
	lea.l	($0030,a1),a1
	dbra	d7,L031fcc
	jsr	(L03b198)
	jsr	(L02991e)
	bcs	L0320f4
	move.w	#$0074,($0000.w,a0)
	andi.w	#$00ff,d0
	move.w	d0,($0002,a0)
	move.w	d0,d6
	move.l	a1,($0022,a0)
	movea.l	a1,a2
	move.l	a0,(a1)+
	move.l	#$00300000,d0
	tst.w	d1
	beq	L03201c
	neg.l	d0
L03201c:
	jsr	(L029cd4)
	add.l	d0,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	swap.w	d3
	move.w	d3,($0020,a0)
	move.l	#$00280000,d5
	move.l	d5,($000c,a0)
	clr.l	($0010,a0)
	move.l	#L07e02e,($0014,a0)
	clr.l	($0018,a0)
	move.w	#$0009,($001c,a0)
	clr.w	($001e,a0)
	move.w	#$8000,($0026,a0)
	clr.w	($0028,a0)
	moveq.l	#$00,d0
	move.b	($0005,a6),d0
	lsl.w	#4,d0
	move.w	d0,($002a,a0)
	move.b	($0007,a6),($002f,a0)
	addq.w	#8,d3
	swap.w	d3
	lea.l	(L0320f6),a3
	move.w	#$0008,d7
L032080:
	jsr	(L0298a6)
	bcs	L03213e
	move.l	a0,(a1)+
	move.w	#$0074,($0000.w,a0)
	move.w	d6,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	clr.l	($000c,a0)
	clr.l	($0010,a0)
	move.l	(a3)+,($0014,a0)
	move.w	(a3)+,d5
	add.w	d5,($0004,a0)
	move.w	(a3)+,($0028,a0)
	move.w	#$0003,($0018,a0)
	cmpi.w	#$0004,d7
	bcs	L0320c6
	ori.w	#$8000,($0018,a0)
L0320c6:
	move.w	#$007f,($001a,a0)
	move.w	d7,($001c,a0)
	clr.w	($001e,a0)
	move.w	($0008,a0),($0020,a0)
	move.l	a2,($0022,a0)
	move.w	#$8000,($0026,a0)
	moveq.l	#$00,d0
	move.b	($0005,a6),d0
	lsl.w	#4,d0
	move.w	d0,($002a,a0)
	dbra	d7,L032080
L0320f4:
	rts

L0320f6:
	.dc.l	L07e1ae
	.dc.b	$ff,$e4,$00,$50
	.dc.l	L07e1ae
	.dc.b	$ff,$e4,$00,$80
	.dc.l	L07e14e
	.dc.b	$ff,$e6,$00,$ac
	.dc.l	L07e0ee
	.dc.b	$ff,$ec,$00,$d0
	.dc.l	L07e08e
	.dc.b	$00,$00,$00,$e8
	.dc.l	L07e0ee
	.dc.b	$00,$14,$00,$d0
	.dc.l	L07e14e
	.dc.b	$00,$1a,$00,$ac
	.dc.l	L07e1ae
	.dc.b	$00,$1c,$00,$80
	.dc.l	L07e1ae
	.dc.b	$00,$1c,$00,$50

L03213e:
	move.w	#$000a,d6
	sub.w	d7,d6
L032144:
	subq.w	#1,d6
	beq	L0320f4
	movea.l	-(a1),a0
	clr.l	(a0)
	bra	L032144

L03214e:
	.dc.b	$06
L03214f:
	.dc.b	$04,$06,$05,$07,$06,$07,$07,$07
	.dc.b	$07,$07,$06,$06,$05,$06,$04,$06
	.dc.b	$04,$05,$03,$05,$02,$04,$01,$04
	.dc.b	$01,$05,$02,$05,$03,$06,$04
L03216e:
	.dc.w	$0002
L032170:
	.dc.w	$fffa,$0003,$fffb,$0007
	.dc.w	$fffc,$000a,$fffe,$000b
	.dc.w	$0000,$000a,$0008,$0007
	.dc.w	$000c,$0003,$000f,$0000
	.dc.w	$0010

L032192:
	movea.l	($0022,a0),a1
	movea.l	(a1),a2
	moveq.l	#$00,d0
	moveq.l	#$00,d7
	move.b	($001e,a2),d0
	lsr.w	#3,d0
	andi.w	#$fffe,d0
	moveq.l	#$00,d5
	moveq.l	#$00,d6
	move.b	(L03214f,pc,d0.w),d7
	swap.w	d7
	move.b	(L03214e,pc,d0.w),d7
	move.w	d7,d4
	subq.w	#1,d4
	lsl.w	#2,d4
	bsr	L032286
	sub.w	($000c,a2),d1
	subq.w	#4,d1
	addq.w	#2,d2
	move.w	(L03216e,pc,d4.w),d5
	move.w	d1,d3
	swap.w	d1
	move.w	d3,d1
	move.w	(L032170,pc,d4.w),d6
	move.w	d2,d4
	swap.w	d2
	move.w	d4,d2
	move.w	d7,d0
	ori.w	#$8000,d0
	lea.l	(L07e046),a5
	jsr	(L025426)
	swap.w	d1
	swap.w	d2
	swap.w	d7
	add.w	d5,d1
	add.w	d6,d2
	move.w	d7,d0
	ori.w	#$8000,d0
	lea.l	(L07e046),a5
	jsr	(L025426)
	swap.w	d7
	move.w	d7,d0
	bsr	L032286
	add.w	($000c,a2),d1
	addq.w	#4,d1
	addq.w	#2,d2
	move.w	d1,d3
	swap.w	d1
	move.w	d3,d1
	move.w	d2,d4
	swap.w	d2
	move.w	d4,d2
	lea.l	(L07e046),a5
	jsr	(L025426)
	swap.w	d1
	swap.w	d2
	swap.w	d7
	move.w	d7,d0
	sub.w	d5,d1
	add.w	d6,d2
	lea.l	(L07e046),a5
	jsr	(L025426)
	bsr	L03227e
	sub.w	($000c,a2),d1
	ori.w	#$8000,d0
	jsr	(L025426)
	bsr	L03227e
	add.w	($000c,a2),d1
	jsr	(L025426)
	rts

L032264:
	movea.l	($0022,a0),a1
	addq.w	#4,a1
	move.w	#$0008,d7
L03226e:
	movea.l	(a1)+,a2
	bsr	L03227e
	jsr	(L025426)
	dbra	d7,L03226e
	rts

L03227e:
	move.w	($0018,a2),d0
	movea.l	($0014,a2),a5
L032286:
	move.w	($0004,a2),d1
	move.w	($0008,a2),d2
	rts

L032290:
	movea.l	($0022,a0),a1
	movea.l	(a1),a2
	move.w	($0004,a2),d1
	move.w	($0008,a2),d2
	moveq.l	#$00,d0
	lea.l	(L07e20e),a5
	subi.w	#$0018,d2
	jsr	(L025426)
	rts

L0322b2:
	moveq.l	#$00,d0
	move.b	($001e,a0),d0
	cmpi.w	#$0009,($001c,a0)
	beq	L0322ca
	lsr.w	#4,d0
	move.b	(L0322da,pc,d0.w),($0019,a0)
	rts

L0322ca:
	lsr.w	#6,d0
	cmpi.w	#$0003,d0
	bne	L0322d4
	moveq.l	#$02,d0
L0322d4:
	move.b	d0,($0019,a0)
	rts

L0322da:
	.dc.b	$09,$0a,$0b,$00,$00,$00,$01,$02
	.dc.b	$03,$04,$05,$06,$06,$06,$07,$08

L0322ea:
	movea.l	($0022,a0),a1
	moveq.l	#$00,d0
	move.w	#$0009,d7
L0322f4:
	movea.l	(a1),a2
	move.l	d0,(a1)+
	move.l	d0,($0000.w,a2)
	dbra	d7,L0322f4
	rts

L032302:
	move.w	($001c,a0),d0
	bne	L03231a
	tst.b	($0026,a0)
	bmi	L032314
	bsr	L032290
	bsr	L032264
L032314:
	bsr	L032192
	bra	L03232a
L03231a:
	cmpi.w	#$0009,d0
	bne	L03232a
	tst.b	($0026,a0)
	bpl	L03232a
	bsr	L032264
L03232a:
	move.b	($0027,a0),d0
	beq	L03233e
	subq.w	#1,d0
	move.b	d0,($0027,a0)
	bne	L03233e
	andi.w	#$00ff,($0002,a0)
L03233e:
	jsr	(L02993c)
	jsr	(L0299de)
	bcs	L0322ea
	move.w	($001e,a0),d0
	lsr.w	#8,d0
	jsr	(L010440)
	move.w	d0,d3
	ext.l	d0
	muls.w	($0028,a0),d0
	moveq.l	#$00,d1
	move.w	($0020,a0),d1
	swap.w	d1
	add.l	d1,d0
	move.l	d0,($0008,a0)
	clr.w	d0
	move.b	($001e,a0),d0
	addi.b	#$20,d0
	jsr	(L010440)
	asr.w	#6,d0
	add.w	($002a,a0),d0
	move.w	($001e,a0),d3
	move.w	d3,d1
	add.w	d0,d3
	move.w	d3,($001e,a0)
	bsr	L0322b2
	addi.w	#$4000,d1
	addi.w	#$4000,d3
	eor.w	d3,d1
	bpl	L0323b2
	eori.b	#$80,($0026,a0)
	move.b	#$04,($0027,a0)
	ori.w	#$0200,($0002,a0)
L0323b2:
	rts

L0323b4:
	jsr	(L0298c4)
	bcs	L0325c2
	move.w	#$0086,($0000.w,a0)
	move.w	d0,($0002,a0)
	jsr	(L029cd4)
	subi.l	#$00300000,d2
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	moveq.l	#$00,d0
	move.l	d0,($000c,a0)
	move.l	d0,($0010,a0)
	move.l	#L07ffec,($0014,a0)
	move.w	d0,($0018,a0)
	move.w	#$0060,($001a,a0)
	move.w	d0,($001c,a0)
	move.w	d0,($001e,a0)
	move.w	#$a000,($0020,a0)
	bsr	L032624
	move.w	#$0200,($0024,a0)
	clr.w	($002e,a0)
	lea.l	(L047fc0),a3
	moveq.l	#$00,d7
	move.l	#L0327e4,($0006,a3)
	move.w	#$0003,($0004,a3)
	clr.w	($0000.w,a3)
	move.b	(L0327e5),($0003,a3)
	move.b	(L0327e4),($0019,a0)
	move.l	#L07ffec,($0014,a0)
	move.w	#$0080,d0
	move.w	d0,($000a,a3)
	move.w	d0,($000e,a3)
	moveq.l	#$0d,d0
	move.w	d0,($000c,a3)
	move.w	d0,($0010,a3)
	move.w	d7,($0012,a3)
	move.w	d7,($0014,a3)
	move.w	d7,($001e,a3)
	move.w	d7,($00fe,a3)
	move.l	#L080164,($0110,a3)
	move.w	(L0327c4),($0114,a3)
	move.b	#$07,($0116,a3)
	move.l	#L0327c4,($011c,a3)
	clr.b	($0117,a3)
	move.l	#L080124,($0120,a3)
	move.w	(L0327c4),($0124,a3)
	move.b	#$07,($0126,a3)
	move.l	#L0327c4,($012c,a3)
	clr.b	($0127,a3)
	move.l	#L0800a4,($0140,a3)
	move.w	(L0327c4),($0144,a3)
	move.b	#$07,($0146,a3)
	move.l	#L0327c4,($014c,a3)
	clr.b	($0147,a3)
	move.l	#L080064,($0150,a3)
	move.w	(L0327c4),($0154,a3)
	move.b	#$07,($0156,a3)
	move.l	#L0327c4,($015c,a3)
	clr.b	($0157,a3)
	move.l	#L0801a4,($0100,a3)
	move.w	(L0327bc),($0104,a3)
	move.b	#$03,($0106,a3)
	move.l	#L0327bc,($010c,a3)
	clr.b	($0107,a3)
	move.l	#L0800e4,($0130,a3)
	move.w	(L0327d4),($0134,a3)
	move.b	#$07,($0136,a3)
	move.l	#L0327d4,($013c,a3)
	clr.b	($0137,a3)
	movea.l	a0,a1
	moveq.l	#$00,d1
	moveq.l	#$00,d0
	move.l	($0004,a1),d2
	move.l	#$00900000,d3
	lea.l	(L048040),a2
	move.w	#$0009,d7
L032552:
	jsr	(L0298c4)
	bcc	L032562
	jsr	(L029900)
	bcs	L0325c4
L032562:
	move.w	#$000b,($0000.w,a0)
	move.w	d0,($0002,a0)
	move.l	d2,($0004,a0)
	move.l	d3,($0008,a0)
	move.l	d0,($000c,a0)
	move.l	#$00010000,($0010,a0)
	move.l	#L0801c4,($0014,a0)
	move.w	#$000e,($0018,a0)
	move.w	#$007f,($001a,a0)
	move.w	d1,($001c,a0)
	move.w	d0,($001e,a0)
	move.l	d2,($0020,a0)
	move.l	d3,($0024,a0)
	move.l	d0,($0028,a0)
	move.l	#$ffe00000,($002c,a0)
	addq.w	#1,d1
	subi.l	#$000c0000,d3
	move.l	a0,(a2)+
	dbra	d7,L032552
	move.l	a6,($001a,a3)
L0325c2:
	rts

L0325c4:
	move.l	d0,($0000.w,a1)
	move.w	#$000a,d6
	sub.w	d7,d6
L0325ce:
	subq.w	#1,d6
	beq	L0325c2
	movea.l	-(a2),a0
	move.l	d0,($0000.w,a0)
	bra	L0325ce
L0325da:
	btst.b	#$07,($0020,a0)
	bne	L032622
	subq.w	#1,($0002,a3)
	bne	L032622
	move.w	($0000.w,a3),d0
	moveq.l	#$01,d1
	btst.b	#$06,($0020,a0)
	beq	L0325f8
	neg.w	d1
L0325f8:
	add.w	d1,d0
	bpl	L032604
	move.w	($0004,a3),d0
	subq.w	#1,d0
	bra	L03260c
L032604:
	cmp.w	($0004,a3),d0
	bne	L03260c
	clr.w	d0
L03260c:
	move.w	d0,($0000.w,a3)
	add.w	d0,d0
	movea.l	($0006,a3),a1
	move.b	(a1,d0.w),($0019,a0)
	move.b	($01,a1,d0.w),($0003,a3)
L032622:
	rts

L032624:
	jsr	(L01024e)
	andi.w	#$000f,d0
	addi.w	#$0020,d0
	move.w	d0,($0022,a0)
	rts

L032638:
	bsr	L033158
	btst.b	#$05,($0020,a0)
	bne	L032674
	move.l	a0,-(a7)
	lea.l	($0084,a3),a2
	move.w	#$0004,d7
L03264e:
	movea.l	(a2)+,a0
	addq.w	#4,a2
	jsr	(L025416)
	dbra	d7,L03264e
	lea.l	($0088,a3),a2
	move.w	#$0003,d7
L032664:
	movea.l	(a2)+,a0
	addq.w	#4,a2
	jsr	(L025416)
	dbra	d7,L032664
	movea.l	(a7)+,a0
L032674:
	rts

L032676:
	lea.l	(L0480c0),a2
	move.w	($00fe,a3),d6
	move.w	#$0005,d7
L032684:
	lsl.w	#1,d6
	bcc	L0326bc
	moveq.l	#$00,d4
	subq.b	#1,($0005,a2)
	bne	L0326b0
	moveq.l	#$00,d0
	move.b	($0007,a2),d0
	addq.w	#1,d0
	and.b	($0006,a2),d0
	bne	L0326a0
	moveq.l	#$01,d4
L0326a0:
	move.b	d0,($0007,a2)
	add.w	d0,d0
	movea.l	($000c,a2),a1
	move.w	(a1,d0.w),($0004,a2)
L0326b0:
	move.w	d7,d5
	add.w	d5,d5
	move.w	(L0326c6,pc,d5.w),d5
	jsr	(L0326c6,pc,d5.w)
L0326bc:
	lea.l	($0010,a2),a2
	dbra	d7,L032684
	rts

L0326c6:
	.dc.w	L0326d2-L0326c6
	.dc.w	L0326e4-L0326c6
	.dc.w	L032764-L0326c6
	.dc.w	L0326f6-L0326c6
	.dc.w	L032708-L0326c6
	.dc.w	L03273e-L0326c6

L0326d2:
	tst.w	d4
	beq	L0326de
	andi.w	#$fbff,($00fe,a3)
	rts

L0326de:
	moveq.l	#$08,d1
	moveq.l	#$f0,d2
	bra	L032718
L0326e4:
	tst.w	d4
	beq	L0326f0
	andi.w	#$f7ff,($00fe,a3)
	rts

L0326f0:
	moveq.l	#$fe,d1
	moveq.l	#$f8,d2
	bra	L032718
L0326f6:
	tst.w	d4
	beq	L032702
	andi.w	#$dfff,($00fe,a3)
	rts

L032702:
	moveq.l	#$08,d1
	moveq.l	#$08,d2
	bra	L032718
L032708:
	tst.w	d4
	beq	L032714
	andi.w	#$bfff,($00fe,a3)
	rts

L032714:
	moveq.l	#$f8,d1
	moveq.l	#$10,d2
L032718:
	moveq.l	#$00,d0
	move.b	($0004,a2),d0
	tst.w	($0018,a0)
	bpl	L03272a
	neg.w	d1
	ori.w	#$8000,d0
L03272a:
	add.w	($0004,a0),d1
	add.w	($0008,a0),d2
	movea.l	($0000.w,a2),a5
	jsr	(L025426)
	rts

L03273e:
	move.w	#$1440,d1
	bsr	L032748
	move.w	#$14c0,d1
L032748:
	move.w	#$0078,d2
	moveq.l	#$00,d0
	move.b	($0004,a2),d0
L032752:
	sub.w	(L047f7a),d1
	movea.l	($0000.w,a2),a5
	jsr	(L025426)
	rts

L032764:
	move.w	#$1450,d1
	move.w	#$0090,d2
	moveq.l	#$00,d0
	move.b	($0004,a2),d0
	bsr	L032752
	move.w	#$1470,d1
	move.w	#$00b0,d2
	moveq.l	#$00,d0
	move.b	($0004,a2),d0
	addq.b	#2,d0
	andi.w	#$ff07,d0
	bsr	L032752
	move.w	#$14b0,d1
	move.w	#$0090,d2
	move.w	#$8000,d0
	move.b	($0004,a2),d0
	addq.b	#4,d0
	andi.w	#$ff07,d0
	bsr	L032752
	move.w	#$1490,d1
	move.w	#$00b0,d2
	move.w	#$8000,d0
	move.b	($0004,a2),d0
	addq.b	#6,d0
	andi.w	#$ff07,d0
	bsr	L032752
	rts

L0327bc:
	.dc.w	$0003,$0103,$0203,$0303
L0327c4:
	.dc.w	$0006,$0105,$0204,$0303
	.dc.w	$0402,$0502,$0602,$0704
L0327d4:
	.dc.w	$0003,$0102,$0203,$0303
	.dc.w	$0402,$0504,$0602,$0703
L0327e4:
	.dc.b	$00
L0327e5:
	.dc.b	$02,$01,$02,$02,$02
L0327ea:
	.dc.b	$00
L0327eb:
	.dc.b	$08,$03,$07,$04,$06,$05,$20,$06
	.dc.b	$08,$07,$08,$08,$08,$09,$08,$0a
	.dc.b	$18
L0327fc:
	.dc.b	$00
L0327fd:
	.dc.b	$08,$01,$10,$02,$08,$03,$10,$01
	.dc.b	$04,$00,$20,$01,$04,$02,$20,$01
	.dc.b	$04,$00,$10
L032810:
	.dc.b	$00,$04,$01,$18,$00,$04
L032816:
	.dc.b	$00,$04,$01,$03,$02,$20,$01,$03
	.dc.b	$00,$04
L032820:
	.dc.b	$00,$04,$01,$03,$02,$03,$03,$20
	.dc.b	$02,$03,$01,$03,$00,$04
L03282e:
	.dc.b	$00
L03282f:
	.dc.b	$08,$01,$0c,$02,$10,$03,$20
L032836:
	.dc.b	$00
L032837:
	.dc.b	$04,$01,$08,$02,$04,$03,$08

L03283e:
	lea.l	($0080,a3),a3
	move.w	#$0009,d7
L032846:
	movea.l	(a3)+,a1
	move.l	d0,($0000.w,a1)
	dbra	d7,L032846
	lea.l	(L047fc0),a3
	rts

L032858:
	bclr.b	#$07,($0018,a0)
	cmp.w	(L0473f4),d2
	blt	L03286c
	bset.b	#$07,($0018,a0)
L03286c:
	rts

L03286e:
	tst.w	($001c,a0)
	bmi	L033300
	lea.l	(L047fc0),a3
	tst.w	($002e,a0)
	bne	L032e7c
	move.b	($001a,a0),d0
	andi.w	#$003f,d0
	jsr	(L029a3e)
	bcc	L0328fc
	bne	L0328dc
	move.w	#$0003,($001c,a0)
	andi.w	#$3fff,($0020,a0)
	clr.l	($000c,a0)
	move.l	#L03282e,($0006,a3)
	move.w	#$0004,($0004,a3)
	clr.w	($0000.w,a3)
	move.b	(L03282f),($0003,a3)
	move.b	(L03282e),($0019,a0)
	move.l	#L080244,($0014,a0)
	moveq.l	#$62,d0
	trap	#0
	ori.w	#$6c00,($00fe,a3)
	bra	L0328ec
L0328dc:
	moveq.l	#$31,d0
	trap	#0
	move.w	#$000c,($0012,a3)
	ori.w	#$6c00,($00fe,a3)
L0328ec:
	andi.w	#$00ff,($0002,a0)
	move.l	#$000b0000,d0
	bsr	L03283e
L0328fc:
	move.w	($0012,a3),d3
	beq	L03291e
	bsr	L032a36
	subq.w	#1,d3
	move.w	d3,($0012,a3)
	bne	L03298c
	ori.w	#$0300,($0002,a0)
	move.l	#$000b0200,d0
	bsr	L03283e
L03291e:
	cmpi.w	#$0003,($001c,a0)
	beq	L03292e
	tst.w	(L047fac)
	bne	L03298c
L03292e:
	jsr	(L029954)
	move.w	($0004,a0),d0
	add.w	(L047f7a),d0
	subi.w	#$16f0,d0
	bmi	L03294a
	move.w	#$16ef,d0
	bra	L032954
L03294a:
	cmpi.w	#$fc30,d0
	bhi	L03295e
	move.w	#$1321,d0
L032954:
	sub.w	(L047f7a),d0
	move.w	d0,($0004,a0)
L03295e:
	moveq.l	#$00,d0
	move.b	($001d,a0),d0
	add.w	d0,d0
	move.w	(L0329ac,pc,d0.w),d0
	jsr	(L0329ac,pc,d0.w)
	tst.w	($0000.w,a0)
	beq	L03298a
	bsr	L0325da
	bsr	L032f00
L03297c:
	bsr	L032638
	bsr	L032676
	jsr	(L025416)
L03298a:
	rts

L03298c:
	jsr	(L02993c)
	lea.l	($0080,a3),a2
	movea.l	a0,a1
	move.w	#$0009,d7
L03299c:
	movea.l	(a2)+,a0
	jsr	(L02993c)
	bra	L03297c