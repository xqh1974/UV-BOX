opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F685
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_DEVICE_INIT
	FNCALL	_main,_PWM1_INIT
	FNCALL	_main,_SetIdle
	FNCALL	_main,_DELAY_MS
	FNCALL	_main,_IsCoverOpened
	FNCALL	_main,_SetWorking
	FNCALL	_SetWorking,_PWM1_INIT
	FNCALL	_DELAY_MS,_DELAY_125US
	FNROOT	_main
	global	_brigtness
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"MS86F_PWM1_HALF.C"
	line	47

;initializer for _brigtness
	retlw	05h
	retlw	0

	global	IsCoverOpened@cover_state0
	global	IsCoverOpened@cover_stable_cnt
	global	IsCoverOpened@cover_state1
	global	_working_timer
	global	_ANSEL
_ANSEL	set	286
	DABS	1,286,1	;_ANSEL

	global	_ANSELH
_ANSELH	set	287
	DABS	1,287,1	;_ANSELH

	global	_CM1CON0
_CM1CON0	set	281
	DABS	1,281,1	;_CM1CON0

	global	_CM2CON0
_CM2CON0	set	282
	DABS	1,282,1	;_CM2CON0

	global	_CM2CON1
_CM2CON1	set	283
	DABS	1,283,1	;_CM2CON1

	global	_EEADRH
_EEADRH	set	271
	DABS	1,271,1	;_EEADRH

	global	_EEDATH
_EEDATH	set	270
	DABS	1,270,1	;_EEDATH

	global	_IOCB
_IOCB	set	278
	DABS	1,278,1	;_IOCB

	global	_PSTRCON
_PSTRCON	set	413
	DABS	1,413,1	;_PSTRCON

	global	_SRCON
_SRCON	set	414
	DABS	1,414,1	;_SRCON

	global	_VRCON
_VRCON	set	280
	DABS	1,280,1	;_VRCON

	global	_WPUB
_WPUB	set	277
	DABS	1,277,1	;_WPUB

	global	_ANS0
_ANS0	set	2288
	DABS	1,286,1	;_ANS0

	global	_ANS1
_ANS1	set	2289
	DABS	1,286,1	;_ANS1

	global	_ANS10
_ANS10	set	2298
	DABS	1,287,1	;_ANS10

	global	_ANS11
_ANS11	set	2299
	DABS	1,287,1	;_ANS11

	global	_ANS2
_ANS2	set	2290
	DABS	1,286,1	;_ANS2

	global	_ANS3
_ANS3	set	2291
	DABS	1,286,1	;_ANS3

	global	_ANS4
_ANS4	set	2292
	DABS	1,286,1	;_ANS4

	global	_ANS5
_ANS5	set	2293
	DABS	1,286,1	;_ANS5

	global	_ANS6
_ANS6	set	2294
	DABS	1,286,1	;_ANS6

	global	_ANS7
_ANS7	set	2295
	DABS	1,286,1	;_ANS7

	global	_ANS8
_ANS8	set	2296
	DABS	1,287,1	;_ANS8

	global	_ANS9
_ANS9	set	2297
	DABS	1,287,1	;_ANS9

	global	_C1CH0
_C1CH0	set	2248
	DABS	1,281,1	;_C1CH0

	global	_C1CH1
_C1CH1	set	2249
	DABS	1,281,1	;_C1CH1

	global	_C1OE
_C1OE	set	2253
	DABS	1,281,1	;_C1OE

	global	_C1ON
_C1ON	set	2255
	DABS	1,281,1	;_C1ON

	global	_C1OUT
_C1OUT	set	2254
	DABS	1,281,1	;_C1OUT

	global	_C1POL
_C1POL	set	2252
	DABS	1,281,1	;_C1POL

	global	_C1R
_C1R	set	2250
	DABS	1,281,1	;_C1R

	global	_C1SEN
_C1SEN	set	3317
	DABS	1,414,1	;_C1SEN

	global	_C1VREN
_C1VREN	set	2247
	DABS	1,280,1	;_C1VREN

	global	_C2CH0
_C2CH0	set	2256
	DABS	1,282,1	;_C2CH0

	global	_C2CH1
_C2CH1	set	2257
	DABS	1,282,1	;_C2CH1

	global	_C2OE
_C2OE	set	2261
	DABS	1,282,1	;_C2OE

	global	_C2ON
_C2ON	set	2263
	DABS	1,282,1	;_C2ON

	global	_C2OUT
_C2OUT	set	2262
	DABS	1,282,1	;_C2OUT

	global	_C2POL
_C2POL	set	2260
	DABS	1,282,1	;_C2POL

	global	_C2R
_C2R	set	2258
	DABS	1,282,1	;_C2R

	global	_C2REN
_C2REN	set	3316
	DABS	1,414,1	;_C2REN

	global	_C2SYNC
_C2SYNC	set	2264
	DABS	1,283,1	;_C2SYNC

	global	_C2VREN
_C2VREN	set	2246
	DABS	1,280,1	;_C2VREN

	global	_EEPGD
_EEPGD	set	3175
	DABS	1,396,1	;_EEPGD

	global	_IOCB4
_IOCB4	set	2228
	DABS	1,278,1	;_IOCB4

	global	_IOCB5
_IOCB5	set	2229
	DABS	1,278,1	;_IOCB5

	global	_IOCB6
_IOCB6	set	2230
	DABS	1,278,1	;_IOCB6

	global	_IOCB7
_IOCB7	set	2231
	DABS	1,278,1	;_IOCB7

	global	_MC1OUT
_MC1OUT	set	2271
	DABS	1,283,1	;_MC1OUT

	global	_MC2OUT
_MC2OUT	set	2270
	DABS	1,283,1	;_MC2OUT

	global	_PULSR
_PULSR	set	3314
	DABS	1,414,1	;_PULSR

	global	_PULSS
_PULSS	set	3315
	DABS	1,414,1	;_PULSS

	global	_SR0
_SR0	set	3318
	DABS	1,414,1	;_SR0

	global	_SR1
_SR1	set	3319
	DABS	1,414,1	;_SR1

	global	_STRA
_STRA	set	3304
	DABS	1,413,1	;_STRA

	global	_STRB
_STRB	set	3305
	DABS	1,413,1	;_STRB

	global	_STRC
_STRC	set	3306
	DABS	1,413,1	;_STRC

	global	_STRD
_STRD	set	3307
	DABS	1,413,1	;_STRD

	global	_STRSYNC
_STRSYNC	set	3308
	DABS	1,413,1	;_STRSYNC

	global	_T1GSS
_T1GSS	set	2265
	DABS	1,283,1	;_T1GSS

	global	_VP6EN
_VP6EN	set	2244
	DABS	1,280,1	;_VP6EN

	global	_VR0
_VR0	set	2240
	DABS	1,280,1	;_VR0

	global	_VR1
_VR1	set	2241
	DABS	1,280,1	;_VR1

	global	_VR2
_VR2	set	2242
	DABS	1,280,1	;_VR2

	global	_VR3
_VR3	set	2243
	DABS	1,280,1	;_VR3

	global	_VRR
_VRR	set	2245
	DABS	1,280,1	;_VRR

	global	_WPUB4
_WPUB4	set	2220
	DABS	1,277,1	;_WPUB4

	global	_WPUB5
_WPUB5	set	2221
	DABS	1,277,1	;_WPUB5

	global	_WPUB6
_WPUB6	set	2222
	DABS	1,277,1	;_WPUB6

	global	_WPUB7
_WPUB7	set	2223
	DABS	1,277,1	;_WPUB7

	global	_WREN
_WREN	set	3170
	DABS	1,396,1	;_WREN

	global	_INTCON
_INTCON	set	11
	global	_MSCON
_MSCON	set	27
	global	_P1BDTH
_P1BDTH	set	21
	global	_P1BDTL
_P1BDTL	set	15
	global	_P1CON
_P1CON	set	22
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_T2CON0
_T2CON0	set	18
	global	_TMR2H
_TMR2H	set	19
	global	_TMR2L
_TMR2L	set	17
	global	_P1BALT
_P1BALT	set	202
	global	_PC5
_PC5	set	61
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_OPTION
_OPTION	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_P1OE
_P1OE	set	144
	global	_P1POL
_P1POL	set	153
	global	_PR2H
_PR2H	set	146
	global	_PR2L
_PR2L	set	145
	global	_PSINKA
_PSINKA	set	151
	global	_PSINKC
_PSINKC	set	159
	global	_PSRCA
_PSRCA	set	136
	global	_PSRCC
_PSRCC	set	148
	global	_T2CON1
_T2CON1	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_WPUA
_WPUA	set	149
	global	_WPUC
_WPUC	set	147
	file	"ms86f_pwm1_half.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
IsCoverOpened@cover_stable_cnt:
       ds      2

IsCoverOpened@cover_state1:
       ds      2

_working_timer:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"MS86F_PWM1_HALF.C"
_brigtness:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
IsCoverOpened@cover_state0:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DEVICE_INIT
?_DEVICE_INIT:	; 0 bytes @ 0x0
	global	??_DEVICE_INIT
??_DEVICE_INIT:	; 0 bytes @ 0x0
	global	?_PWM1_INIT
?_PWM1_INIT:	; 0 bytes @ 0x0
	global	??_PWM1_INIT
??_PWM1_INIT:	; 0 bytes @ 0x0
	global	?_DELAY_125US
?_DELAY_125US:	; 0 bytes @ 0x0
	global	??_DELAY_125US
??_DELAY_125US:	; 0 bytes @ 0x0
	global	?_SetWorking
?_SetWorking:	; 0 bytes @ 0x0
	global	??_SetWorking
??_SetWorking:	; 0 bytes @ 0x0
	global	?_SetIdle
?_SetIdle:	; 0 bytes @ 0x0
	global	??_SetIdle
??_SetIdle:	; 0 bytes @ 0x0
	global	??_IsCoverOpened
??_IsCoverOpened:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IsCoverOpened
?_IsCoverOpened:	; 1 bytes @ 0x0
	global	DELAY_125US@a
DELAY_125US@a:	; 1 bytes @ 0x0
	ds	1
	global	?_DELAY_MS
?_DELAY_MS:	; 0 bytes @ 0x1
	global	DELAY_MS@Time
DELAY_MS@Time:	; 2 bytes @ 0x1
	ds	2
	global	??_DELAY_MS
??_DELAY_MS:	; 0 bytes @ 0x3
	global	DELAY_MS@a
DELAY_MS@a:	; 2 bytes @ 0x3
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 0, constant 0, data 2, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      13
;; BANK0           48      0       2

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DELAY_MS
;;   _DELAY_MS->_DELAY_125US
;;
;; Critical Paths under _main in BANK0
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      60
;;                        _DEVICE_INIT
;;                          _PWM1_INIT
;;                            _SetIdle
;;                           _DELAY_MS
;;                      _IsCoverOpened
;;                         _SetWorking
;; ---------------------------------------------------------------------------------
;; (1) _SetWorking                                           0     0      0       0
;;                          _PWM1_INIT
;; ---------------------------------------------------------------------------------
;; (1) _DELAY_MS                                             4     2      2      60
;;                                              1 COMMON     4     2      2
;;                        _DELAY_125US
;; ---------------------------------------------------------------------------------
;; (1) _IsCoverOpened                                        2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SetIdle                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _DELAY_125US                                          1     1      0      30
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _PWM1_INIT                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _DEVICE_INIT                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DEVICE_INIT
;;   _PWM1_INIT
;;   _SetIdle
;;   _DELAY_MS
;;     _DELAY_125US
;;   _IsCoverOpened
;;   _SetWorking
;;     _PWM1_INIT
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      11       3        0.0%
;;ABS                  0      0       F       6        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               30      0       2       5        4.2%
;;BITBANK0            30      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      5       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 233 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DEVICE_INIT
;;		_PWM1_INIT
;;		_SetIdle
;;		_DELAY_MS
;;		_IsCoverOpened
;;		_SetWorking
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"MS86F_PWM1_HALF.C"
	line	233
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
l2033:	
;MS86F_PWM1_HALF.C: 234: DEVICE_INIT();
	fcall	_DEVICE_INIT
	line	235
;MS86F_PWM1_HALF.C: 235: PWM1_INIT();
	fcall	_PWM1_INIT
	line	236
	
l2035:	
;MS86F_PWM1_HALF.C: 236: SetIdle();
	fcall	_SetIdle
	line	237
	
l2037:	
;MS86F_PWM1_HALF.C: 237: DELAY_MS(500);
	movlw	low(01F4h)
	movwf	(?_DELAY_MS)
	movlw	high(01F4h)
	movwf	((?_DELAY_MS))+1
	fcall	_DELAY_MS
	line	240
	
l2039:	
;MS86F_PWM1_HALF.C: 239: {
;MS86F_PWM1_HALF.C: 240: if(IsCoverOpened())SetIdle();
	fcall	_IsCoverOpened
	xorlw	0
	skipnz
	goto	u131
	goto	u130
u131:
	goto	l2043
u130:
	
l2041:	
	fcall	_SetIdle
	goto	l2065
	line	241
	
l2043:	
;MS86F_PWM1_HALF.C: 241: else if(working_timer==0)
	movf	((_working_timer+1)),w
	iorwf	((_working_timer)),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l2051
u140:
	line	243
	
l2045:	
;MS86F_PWM1_HALF.C: 242: {
;MS86F_PWM1_HALF.C: 243: if(RA0==0)SetWorking();
	btfsc	(40/8),(40)&7
	goto	u151
	goto	u150
u151:
	goto	l2041
u150:
	
l2047:	
	fcall	_SetWorking
	goto	l2065
	line	248
	
l2051:	
;MS86F_PWM1_HALF.C: 246: else
;MS86F_PWM1_HALF.C: 247: {
;MS86F_PWM1_HALF.C: 248: working_timer--;
	movlw	low(01h)
	subwf	(_working_timer),f
	movlw	high(01h)
	skipc
	decf	(_working_timer+1),f
	subwf	(_working_timer+1),f
	line	249
	
l2053:	
;MS86F_PWM1_HALF.C: 249: brigtness++;
	incf	(_brigtness),f
	skipnz
	incf	(_brigtness+1),f
	line	250
	
l2055:	
;MS86F_PWM1_HALF.C: 250: if(brigtness<=200)P1BDTL=(unsigned char)(200-brigtness);
	movlw	high(0C9h)
	subwf	(_brigtness+1),w
	movlw	low(0C9h)
	skipnz
	subwf	(_brigtness),w
	skipnc
	goto	u161
	goto	u160
u161:
	goto	l2059
u160:
	
l2057:	
	movf	(_brigtness),w
	sublw	0C8h
	movwf	(15)	;volatile
	goto	l2065
	line	251
	
l2059:	
;MS86F_PWM1_HALF.C: 251: else if(brigtness<(200*2))P1BDTL=(unsigned char)(brigtness-200);
	movlw	high(0190h)
	subwf	(_brigtness+1),w
	movlw	low(0190h)
	skipnz
	subwf	(_brigtness),w
	skipnc
	goto	u171
	goto	u170
u171:
	goto	l2063
u170:
	
l2061:	
	movf	(_brigtness),w
	addlw	038h
	movwf	(15)	;volatile
	goto	l2065
	line	252
	
l2063:	
;MS86F_PWM1_HALF.C: 252: else brigtness=5;
	movlw	05h
	movwf	(_brigtness)
	clrf	(_brigtness+1)
	line	254
	
l2065:	
;MS86F_PWM1_HALF.C: 253: }
;MS86F_PWM1_HALF.C: 254: DELAY_MS(10);
	movlw	0Ah
	movwf	(?_DELAY_MS)
	clrf	(?_DELAY_MS+1)
	fcall	_DELAY_MS
	goto	l2039
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	256
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SetWorking
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

;; *************** function _SetWorking *****************
;; Defined at:
;;		line 168 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_PWM1_INIT
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text159
	file	"MS86F_PWM1_HALF.C"
	line	168
	global	__size_of_SetWorking
	__size_of_SetWorking	equ	__end_of_SetWorking-_SetWorking
	
_SetWorking:	
	opt	stack 6
; Regs used in _SetWorking: [wreg+status,2+status,0+pclath+cstack]
	line	169
	
l1977:	
;MS86F_PWM1_HALF.C: 169: RA5=0;
	bcf	(45/8),(45)&7
	line	171
;MS86F_PWM1_HALF.C: 171: RA1=1;
	bsf	(41/8),(41)&7
	line	174
	
l1979:	
;MS86F_PWM1_HALF.C: 174: working_timer=(100*59*6);
	movlw	low(08A48h)
	movwf	(_working_timer)
	movlw	high(08A48h)
	movwf	((_working_timer))+1
	line	175
;MS86F_PWM1_HALF.C: 175: brigtness=5;
	movlw	05h
	movwf	(_brigtness)
	clrf	(_brigtness+1)
	line	178
	
l1981:	
;MS86F_PWM1_HALF.C: 178: PWM1_INIT();
	fcall	_PWM1_INIT
	line	179
	
l809:	
	return
	opt stack 0
GLOBAL	__end_of_SetWorking
	__end_of_SetWorking:
;; =============== function _SetWorking ends ============

	signat	_SetWorking,88
	global	_DELAY_MS
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _DELAY_MS *****************
;; Defined at:
;;		line 156 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;  Time            2    1[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  a               2    3[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0
;;      Params:         2       0
;;      Locals:         2       0
;;      Temps:          0       0
;;      Totals:         4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DELAY_125US
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text160
	file	"MS86F_PWM1_HALF.C"
	line	156
	global	__size_of_DELAY_MS
	__size_of_DELAY_MS	equ	__end_of_DELAY_MS-_DELAY_MS
	
_DELAY_MS:	
	opt	stack 6
; Regs used in _DELAY_MS: [wreg+status,2+status,0+pclath+cstack]
	line	159
	
l1967:	
;MS86F_PWM1_HALF.C: 157: unsigned short a;
;MS86F_PWM1_HALF.C: 159: Time<<=3;
	clrc
	rlf	(DELAY_MS@Time),f
	rlf	(DELAY_MS@Time+1),f
	clrc
	rlf	(DELAY_MS@Time),f
	rlf	(DELAY_MS@Time+1),f
	clrc
	rlf	(DELAY_MS@Time),f
	rlf	(DELAY_MS@Time+1),f
	line	161
	
l1969:	
;MS86F_PWM1_HALF.C: 161: for(a=0;a<Time;a++)
	clrf	(DELAY_MS@a)
	clrf	(DELAY_MS@a+1)
	goto	l1975
	line	163
	
l1971:	
;MS86F_PWM1_HALF.C: 162: {
;MS86F_PWM1_HALF.C: 163: DELAY_125US();
	fcall	_DELAY_125US
	line	161
	
l1973:	
	incf	(DELAY_MS@a),f
	skipnz
	incf	(DELAY_MS@a+1),f
	
l1975:	
	movf	(DELAY_MS@Time+1),w
	subwf	(DELAY_MS@a+1),w
	skipz
	goto	u55
	movf	(DELAY_MS@Time),w
	subwf	(DELAY_MS@a),w
u55:
	skipc
	goto	u51
	goto	u50
u51:
	goto	l1971
u50:
	line	165
	
l806:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY_MS
	__end_of_DELAY_MS:
;; =============== function _DELAY_MS ends ============

	signat	_DELAY_MS,4216
	global	_IsCoverOpened
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _IsCoverOpened *****************
;; Defined at:
;;		line 209 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          2       0
;;      Totals:         2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text161
	file	"MS86F_PWM1_HALF.C"
	line	209
	global	__size_of_IsCoverOpened
	__size_of_IsCoverOpened	equ	__end_of_IsCoverOpened-_IsCoverOpened
	
_IsCoverOpened:	
	opt	stack 7
; Regs used in _IsCoverOpened: [wreg+status,2+status,0]
	line	214
	
l2017:	
;MS86F_PWM1_HALF.C: 210: static unsigned cover_stable_cnt=0;
;MS86F_PWM1_HALF.C: 211: static unsigned cover_state0=0;
;MS86F_PWM1_HALF.C: 212: static unsigned cover_state1=0;
;MS86F_PWM1_HALF.C: 214: if(cover_state1==RA2)
	clrc
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(42/8),(42)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_IsCoverOpened+0)+0
	clrf	(??_IsCoverOpened+0)+0+1
	movf	(IsCoverOpened@cover_state1+1),w
	xorwf	1+(??_IsCoverOpened+0)+0,w
	skipz
	goto	u115
	movf	(IsCoverOpened@cover_state1),w
	xorwf	0+(??_IsCoverOpened+0)+0,w
u115:

	skipz
	goto	u111
	goto	u110
u111:
	goto	l2025
u110:
	line	216
	
l2019:	
;MS86F_PWM1_HALF.C: 215: {
;MS86F_PWM1_HALF.C: 216: if(cover_stable_cnt<8)cover_stable_cnt++;
	movlw	high(08h)
	subwf	(IsCoverOpened@cover_stable_cnt+1),w
	movlw	low(08h)
	skipnz
	subwf	(IsCoverOpened@cover_stable_cnt),w
	skipnc
	goto	u121
	goto	u120
u121:
	goto	l2023
u120:
	
l2021:	
	incf	(IsCoverOpened@cover_stable_cnt),f
	skipnz
	incf	(IsCoverOpened@cover_stable_cnt+1),f
	goto	l2029
	line	217
	
l2023:	
;MS86F_PWM1_HALF.C: 217: else cover_state0=cover_state1;
	movf	(IsCoverOpened@cover_state1+1),w
	movwf	(IsCoverOpened@cover_state0+1)
	movf	(IsCoverOpened@cover_state1),w
	movwf	(IsCoverOpened@cover_state0)
	goto	l2029
	line	221
	
l2025:	
;MS86F_PWM1_HALF.C: 219: else
;MS86F_PWM1_HALF.C: 220: {
;MS86F_PWM1_HALF.C: 221: cover_stable_cnt=0;
	clrf	(IsCoverOpened@cover_stable_cnt)
	clrf	(IsCoverOpened@cover_stable_cnt+1)
	line	222
	
l2027:	
;MS86F_PWM1_HALF.C: 222: cover_state1=RA2;
	clrc
	btfsc	(42/8),(42)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(IsCoverOpened@cover_state1)
	clrf	(IsCoverOpened@cover_state1+1)
	line	224
	
l2029:	
;MS86F_PWM1_HALF.C: 223: }
;MS86F_PWM1_HALF.C: 224: return !cover_state0;
	movf	(IsCoverOpened@cover_state0+1),w
	iorwf	(IsCoverOpened@cover_state0),w
	movlw	0
	skipnz
	movlw	1
	line	225
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of_IsCoverOpened
	__end_of_IsCoverOpened:
;; =============== function _IsCoverOpened ends ============

	signat	_IsCoverOpened,89
	global	_SetIdle
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:

;; *************** function _SetIdle *****************
;; Defined at:
;;		line 181 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text162
	file	"MS86F_PWM1_HALF.C"
	line	181
	global	__size_of_SetIdle
	__size_of_SetIdle	equ	__end_of_SetIdle-_SetIdle
	
_SetIdle:	
	opt	stack 7
; Regs used in _SetIdle: [status,2]
	line	183
	
l1941:	
;MS86F_PWM1_HALF.C: 183: P1OE=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(144)^080h	;volatile
	line	185
	
l1943:	
;MS86F_PWM1_HALF.C: 185: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7
	line	186
	
l1945:	
;MS86F_PWM1_HALF.C: 186: P1BALT=0;
	bcf	(202/8),(202)&7
	line	187
	
l1947:	
;MS86F_PWM1_HALF.C: 187: RA4=1;
	bsf	(44/8),(44)&7
	line	188
	
l1949:	
;MS86F_PWM1_HALF.C: 188: RA1=0;
	bcf	(41/8),(41)&7
	line	193
;MS86F_PWM1_HALF.C: 193: working_timer=0;
	clrf	(_working_timer)
	clrf	(_working_timer+1)
	line	194
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of_SetIdle
	__end_of_SetIdle:
;; =============== function _SetIdle ends ============

	signat	_SetIdle,88
	global	_DELAY_125US
psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:

;; *************** function _DELAY_125US *****************
;; Defined at:
;;		line 147 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         1       0
;;      Temps:          0       0
;;      Totals:         1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DELAY_MS
;; This function uses a non-reentrant model
;;
psect	text163
	file	"MS86F_PWM1_HALF.C"
	line	147
	global	__size_of_DELAY_125US
	__size_of_DELAY_125US	equ	__end_of_DELAY_125US-_DELAY_125US
	
_DELAY_125US:	
	opt	stack 6
; Regs used in _DELAY_125US: [wreg+status,2+status,0]
	line	150
	
l1931:	
;MS86F_PWM1_HALF.C: 148: unsigned char a;
;MS86F_PWM1_HALF.C: 150: for(a=0;a<125;a++)
	clrf	(DELAY_125US@a)
	line	151
	
l798:	
	line	152
# 152 "MS86F_PWM1_HALF.C"
clrwdt ;#
psect	text163
	line	150
	
l1937:	
	incf	(DELAY_125US@a),f
	
l1939:	
	movlw	(07Dh)
	subwf	(DELAY_125US@a),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l798
u20:
	line	154
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_DELAY_125US
	__end_of_DELAY_125US:
;; =============== function _DELAY_125US ends ============

	signat	_DELAY_125US,88
	global	_PWM1_INIT
psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:

;; *************** function _PWM1_INIT *****************
;; Defined at:
;;		line 89 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 20/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetWorking
;;		_main
;; This function uses a non-reentrant model
;;
psect	text164
	file	"MS86F_PWM1_HALF.C"
	line	89
	global	__size_of_PWM1_INIT
	__size_of_PWM1_INIT	equ	__end_of_PWM1_INIT-_PWM1_INIT
	
_PWM1_INIT:	
	opt	stack 6
; Regs used in _PWM1_INIT: [wreg+status,2]
	line	90
	
l1907:	
;MS86F_PWM1_HALF.C: 90: TRISA |= 0B00010000;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(4/8),(4)&7	;volatile
	line	93
	
l1909:	
;MS86F_PWM1_HALF.C: 93: T2CON0 = 0B00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	94
	
l1911:	
;MS86F_PWM1_HALF.C: 94: T2CON1 = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	95
	
l1913:	
;MS86F_PWM1_HALF.C: 95: PR2H = 0;
	clrf	(146)^080h	;volatile
	line	96
;MS86F_PWM1_HALF.C: 96: PR2L = 200-1;
	movlw	(0C7h)
	movwf	(145)^080h	;volatile
	line	98
	
l1915:	
;MS86F_PWM1_HALF.C: 98: P1BDTH = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	99
	
l1917:	
;MS86F_PWM1_HALF.C: 99: P1BDTL = 200-5;
	movlw	(0C3h)
	movwf	(15)	;volatile
	line	103
	
l1919:	
;MS86F_PWM1_HALF.C: 103: P1OE = 0B01000000;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(144)^080h	;volatile
	line	106
	
l1921:	
;MS86F_PWM1_HALF.C: 106: P1POL = 0B00000000;
	clrf	(153)^080h	;volatile
	line	107
;MS86F_PWM1_HALF.C: 107: P1CON = 0B00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	108
	
l1923:	
;MS86F_PWM1_HALF.C: 108: TMR2H = 0;
	clrf	(19)	;volatile
	line	109
	
l1925:	
;MS86F_PWM1_HALF.C: 109: TMR2L = 0;
	clrf	(17)	;volatile
	line	110
	
l1927:	
;MS86F_PWM1_HALF.C: 110: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	111
	
l1929:	
;MS86F_PWM1_HALF.C: 111: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	112
;MS86F_PWM1_HALF.C: 112: while(TMR2IF==0) asm("clrwdt");
	goto	l792
	
l793:	
# 112 "MS86F_PWM1_HALF.C"
clrwdt ;#
psect	text164
	
l792:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7
	goto	u11
	goto	u10
u11:
	goto	l793
u10:
	
l794:	
	line	113
;MS86F_PWM1_HALF.C: 113: TRISA &= 0B11101111;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	115
	
l795:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_INIT
	__end_of_PWM1_INIT:
;; =============== function _PWM1_INIT ends ============

	signat	_PWM1_INIT,88
	global	_DEVICE_INIT
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:

;; *************** function _DEVICE_INIT *****************
;; Defined at:
;;		line 55 in file "MS86F_PWM1_HALF.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text165
	file	"MS86F_PWM1_HALF.C"
	line	55
	global	__size_of_DEVICE_INIT
	__size_of_DEVICE_INIT	equ	__end_of_DEVICE_INIT-_DEVICE_INIT
	
_DEVICE_INIT:	
	opt	stack 7
; Regs used in _DEVICE_INIT: [wreg+status,2]
	line	56
	
l1877:	
;MS86F_PWM1_HALF.C: 56: OSCCON = 0B01110001;
	movlw	(071h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	59
	
l1879:	
;MS86F_PWM1_HALF.C: 59: INTCON = 0B00000000;
	clrf	(11)	;volatile
	line	60
	
l1881:	
;MS86F_PWM1_HALF.C: 60: OPTION = 0B00001000;
	movlw	(08h)
	movwf	(129)^080h	;volatile
	line	61
	
l1883:	
;MS86F_PWM1_HALF.C: 61: PORTA = 0B00110010;
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	62
	
l1885:	
;MS86F_PWM1_HALF.C: 62: TRISA = 0B11001101;
	movlw	(0CDh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	63
	
l1887:	
;MS86F_PWM1_HALF.C: 63: WPUA = 0B11001101;
	movlw	(0CDh)
	movwf	(149)^080h	;volatile
	line	64
	
l1889:	
;MS86F_PWM1_HALF.C: 64: PORTC = 0B00100000;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	65
	
l1891:	
;MS86F_PWM1_HALF.C: 65: TRISC = 0B11011111;
	movlw	(0DFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	66
	
l1893:	
;MS86F_PWM1_HALF.C: 66: WPUC = 0B11011111;
	movlw	(0DFh)
	movwf	(147)^080h	;volatile
	line	67
	
l1895:	
;MS86F_PWM1_HALF.C: 67: PSRCA = 0B11111111;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	68
	
l1897:	
;MS86F_PWM1_HALF.C: 68: PSRCC = 0B11111111;
	movlw	(0FFh)
	movwf	(148)^080h	;volatile
	line	69
	
l1899:	
;MS86F_PWM1_HALF.C: 69: PSINKA = 0B11111111;
	movlw	(0FFh)
	movwf	(151)^080h	;volatile
	line	70
	
l1901:	
;MS86F_PWM1_HALF.C: 70: PSINKC = 0B11111111;
	movlw	(0FFh)
	movwf	(159)^080h	;volatile
	line	71
	
l1903:	
;MS86F_PWM1_HALF.C: 71: MSCON = 0B00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	73
	
l1905:	
;MS86F_PWM1_HALF.C: 73: PC5=1;
	bsf	(61/8),(61)&7
	line	81
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_DEVICE_INIT
	__end_of_DEVICE_INIT:
;; =============== function _DEVICE_INIT ends ============

	signat	_DEVICE_INIT,88
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
