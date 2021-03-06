;/* This is auto-generated ASM code from LDmicro. Do not edit this file!
;   Go back to the LDmicro ladder diagram source for changes in the ladder logic. */
; PIC16F876 is the LDmicro target processor.
	LIST    p=PIC16F876
#include P16F876.inc
	__CONFIG 0x3F72
	radix dec
	org 0
;TABSIZE = 8
;	CODE
    ; Reset vector
i_000000: clrf	 0x03            	  ; (OP_CLRF, REG_STATUS)
i_000001: clrf	 0x0A            	  ; (OP_CLRF, REG_PCLATH)
          nop	 		 	  ; (OP_NOP_, 0, 0)
    ; GOTO progStart
i_000003: goto	 l_000091	 	  ; (OP_GOTO, progStart)
    ; Interrupt Vector
i_000004: retfie	 	 	  ; (OP_RETFIE, 0, 0)
          nop	 		 	  ; (OP_NOP_, 0, 0)
          nop	 		 	  ; (OP_NOP_, 0, 0)
          nop	 		 	  ; (OP_NOP_, 0, 0)
    ; TABLE char7seg[129]
l_000008: movlw	 0x00             	  ; (OP_MOVLW, ((addrOfTableRoutine + TABLE_CALC) >> 8) & 0xFF)
          addwf	 0x23            , 0	  ; (OP_ADDWF, Scratch1, DEST_W)
i_00000a: movwf	 0x0A            	  ; (OP_MOVWF, REG_PCLATH)
          movlw	 0x10             	  ; (OP_MOVLW, (addrOfTableRoutine + TABLE_CALC) & 0xFF)
          addwf	 0x22            , 0	  ; (OP_ADDWF, Scratch0, DEST_W)
          btfsc	 0x03            , 0	  ; (OP_BTFSC, REG_STATUS, STATUS_C)
i_00000e: incf	 0x0A            , 1	  ; (OP_INCF, REG_PCLATH, DEST_F)
          movwf	 0x02            	  ; (OP_MOVWF, REG_PCL)
    ; DATA's size is 1
i_000010: retlw	 0x3F             	  ; (OP_RETLW, a->data[i])
i_000011: retlw	 0x06             	  ; (OP_RETLW, a->data[i])
i_000012: retlw	 0x5B             	  ; (OP_RETLW, a->data[i])
i_000013: retlw	 0x4F             	  ; (OP_RETLW, a->data[i])
i_000014: retlw	 0x66             	  ; (OP_RETLW, a->data[i])
i_000015: retlw	 0x6D             	  ; (OP_RETLW, a->data[i])
i_000016: retlw	 0x7D             	  ; (OP_RETLW, a->data[i])
i_000017: retlw	 0x07             	  ; (OP_RETLW, a->data[i])
i_000018: retlw	 0x7F             	  ; (OP_RETLW, a->data[i])
i_000019: retlw	 0x6F             	  ; (OP_RETLW, a->data[i])
i_00001a: retlw	 0x77             	  ; (OP_RETLW, a->data[i])
i_00001b: retlw	 0x7C             	  ; (OP_RETLW, a->data[i])
i_00001c: retlw	 0x39             	  ; (OP_RETLW, a->data[i])
i_00001d: retlw	 0x5E             	  ; (OP_RETLW, a->data[i])
i_00001e: retlw	 0x79             	  ; (OP_RETLW, a->data[i])
i_00001f: retlw	 0x71             	  ; (OP_RETLW, a->data[i])
i_000020: retlw	 0xBF             	  ; (OP_RETLW, a->data[i])
i_000021: retlw	 0x86             	  ; (OP_RETLW, a->data[i])
i_000022: retlw	 0xDB             	  ; (OP_RETLW, a->data[i])
i_000023: retlw	 0xCF             	  ; (OP_RETLW, a->data[i])
i_000024: retlw	 0xE6             	  ; (OP_RETLW, a->data[i])
i_000025: retlw	 0xED             	  ; (OP_RETLW, a->data[i])
i_000026: retlw	 0xFD             	  ; (OP_RETLW, a->data[i])
i_000027: retlw	 0x87             	  ; (OP_RETLW, a->data[i])
i_000028: retlw	 0xFF             	  ; (OP_RETLW, a->data[i])
i_000029: retlw	 0xEF             	  ; (OP_RETLW, a->data[i])
i_00002a: retlw	 0xF7             	  ; (OP_RETLW, a->data[i])
i_00002b: retlw	 0xFC             	  ; (OP_RETLW, a->data[i])
i_00002c: retlw	 0xB9             	  ; (OP_RETLW, a->data[i])
i_00002d: retlw	 0xDE             	  ; (OP_RETLW, a->data[i])
i_00002e: retlw	 0xF9             	  ; (OP_RETLW, a->data[i])
i_00002f: retlw	 0xF1             	  ; (OP_RETLW, a->data[i])
i_000030: retlw	 0x00             	  ; (OP_RETLW, a->data[i])
i_000031: retlw	 0xB0             	  ; (OP_RETLW, a->data[i])
i_000032: retlw	 0x22             	  ; (OP_RETLW, a->data[i])
i_000033: retlw	 0x4E             	  ; (OP_RETLW, a->data[i])
i_000034: retlw	 0x6D             	  ; (OP_RETLW, a->data[i])
i_000035: retlw	 0xD2             	  ; (OP_RETLW, a->data[i])
i_000036: retlw	 0xDA             	  ; (OP_RETLW, a->data[i])
i_000037: retlw	 0x20             	  ; (OP_RETLW, a->data[i])
i_000038: retlw	 0x39             	  ; (OP_RETLW, a->data[i])
i_000039: retlw	 0x0F             	  ; (OP_RETLW, a->data[i])
i_00003a: retlw	 0x72             	  ; (OP_RETLW, a->data[i])
i_00003b: retlw	 0x70             	  ; (OP_RETLW, a->data[i])
i_00003c: retlw	 0x0C             	  ; (OP_RETLW, a->data[i])
i_00003d: retlw	 0x40             	  ; (OP_RETLW, a->data[i])
i_00003e: retlw	 0x80             	  ; (OP_RETLW, a->data[i])
i_00003f: retlw	 0x52             	  ; (OP_RETLW, a->data[i])
i_000040: retlw	 0x3F             	  ; (OP_RETLW, a->data[i])
i_000041: retlw	 0x06             	  ; (OP_RETLW, a->data[i])
i_000042: retlw	 0x5B             	  ; (OP_RETLW, a->data[i])
i_000043: retlw	 0x4F             	  ; (OP_RETLW, a->data[i])
i_000044: retlw	 0x66             	  ; (OP_RETLW, a->data[i])
i_000045: retlw	 0x6D             	  ; (OP_RETLW, a->data[i])
i_000046: retlw	 0x7D             	  ; (OP_RETLW, a->data[i])
i_000047: retlw	 0x07             	  ; (OP_RETLW, a->data[i])
i_000048: retlw	 0x7F             	  ; (OP_RETLW, a->data[i])
i_000049: retlw	 0x6F             	  ; (OP_RETLW, a->data[i])
i_00004a: retlw	 0x09             	  ; (OP_RETLW, a->data[i])
i_00004b: retlw	 0x0D             	  ; (OP_RETLW, a->data[i])
i_00004c: retlw	 0x61             	  ; (OP_RETLW, a->data[i])
i_00004d: retlw	 0x41             	  ; (OP_RETLW, a->data[i])
i_00004e: retlw	 0x43             	  ; (OP_RETLW, a->data[i])
i_00004f: retlw	 0xD3             	  ; (OP_RETLW, a->data[i])
i_000050: retlw	 0x9F             	  ; (OP_RETLW, a->data[i])
i_000051: retlw	 0x77             	  ; (OP_RETLW, a->data[i])
i_000052: retlw	 0x7C             	  ; (OP_RETLW, a->data[i])
i_000053: retlw	 0x39             	  ; (OP_RETLW, a->data[i])
i_000054: retlw	 0x5E             	  ; (OP_RETLW, a->data[i])
i_000055: retlw	 0x79             	  ; (OP_RETLW, a->data[i])
i_000056: retlw	 0x71             	  ; (OP_RETLW, a->data[i])
i_000057: retlw	 0x3D             	  ; (OP_RETLW, a->data[i])
i_000058: retlw	 0x74             	  ; (OP_RETLW, a->data[i])
i_000059: retlw	 0x30             	  ; (OP_RETLW, a->data[i])
i_00005a: retlw	 0x1E             	  ; (OP_RETLW, a->data[i])
i_00005b: retlw	 0x75             	  ; (OP_RETLW, a->data[i])
i_00005c: retlw	 0x38             	  ; (OP_RETLW, a->data[i])
i_00005d: retlw	 0x55             	  ; (OP_RETLW, a->data[i])
i_00005e: retlw	 0x54             	  ; (OP_RETLW, a->data[i])
i_00005f: retlw	 0x5C             	  ; (OP_RETLW, a->data[i])
i_000060: retlw	 0x73             	  ; (OP_RETLW, a->data[i])
i_000061: retlw	 0x67             	  ; (OP_RETLW, a->data[i])
i_000062: retlw	 0x33             	  ; (OP_RETLW, a->data[i])
i_000063: retlw	 0x6D             	  ; (OP_RETLW, a->data[i])
i_000064: retlw	 0x78             	  ; (OP_RETLW, a->data[i])
i_000065: retlw	 0x3E             	  ; (OP_RETLW, a->data[i])
i_000066: retlw	 0x1C             	  ; (OP_RETLW, a->data[i])
i_000067: retlw	 0x6A             	  ; (OP_RETLW, a->data[i])
i_000068: retlw	 0x76             	  ; (OP_RETLW, a->data[i])
i_000069: retlw	 0x6E             	  ; (OP_RETLW, a->data[i])
i_00006a: retlw	 0x5B             	  ; (OP_RETLW, a->data[i])
i_00006b: retlw	 0x39             	  ; (OP_RETLW, a->data[i])
i_00006c: retlw	 0x64             	  ; (OP_RETLW, a->data[i])
i_00006d: retlw	 0x0F             	  ; (OP_RETLW, a->data[i])
i_00006e: retlw	 0x23             	  ; (OP_RETLW, a->data[i])
i_00006f: retlw	 0x08             	  ; (OP_RETLW, a->data[i])
i_000070: retlw	 0x20             	  ; (OP_RETLW, a->data[i])
i_000071: retlw	 0x5F             	  ; (OP_RETLW, a->data[i])
i_000072: retlw	 0x7C             	  ; (OP_RETLW, a->data[i])
i_000073: retlw	 0x58             	  ; (OP_RETLW, a->data[i])
i_000074: retlw	 0x5E             	  ; (OP_RETLW, a->data[i])
i_000075: retlw	 0x7B             	  ; (OP_RETLW, a->data[i])
i_000076: retlw	 0x71             	  ; (OP_RETLW, a->data[i])
i_000077: retlw	 0x6F             	  ; (OP_RETLW, a->data[i])
i_000078: retlw	 0x74             	  ; (OP_RETLW, a->data[i])
i_000079: retlw	 0x10             	  ; (OP_RETLW, a->data[i])
i_00007a: retlw	 0x0E             	  ; (OP_RETLW, a->data[i])
i_00007b: retlw	 0x75             	  ; (OP_RETLW, a->data[i])
i_00007c: retlw	 0x18             	  ; (OP_RETLW, a->data[i])
i_00007d: retlw	 0x55             	  ; (OP_RETLW, a->data[i])
i_00007e: retlw	 0x54             	  ; (OP_RETLW, a->data[i])
i_00007f: retlw	 0x5C             	  ; (OP_RETLW, a->data[i])
i_000080: retlw	 0x73             	  ; (OP_RETLW, a->data[i])
i_000081: retlw	 0x67             	  ; (OP_RETLW, a->data[i])
i_000082: retlw	 0x50             	  ; (OP_RETLW, a->data[i])
i_000083: retlw	 0x6D             	  ; (OP_RETLW, a->data[i])
i_000084: retlw	 0x78             	  ; (OP_RETLW, a->data[i])
i_000085: retlw	 0x3E             	  ; (OP_RETLW, a->data[i])
i_000086: retlw	 0x1C             	  ; (OP_RETLW, a->data[i])
i_000087: retlw	 0x6A             	  ; (OP_RETLW, a->data[i])
i_000088: retlw	 0x76             	  ; (OP_RETLW, a->data[i])
i_000089: retlw	 0x6E             	  ; (OP_RETLW, a->data[i])
i_00008a: retlw	 0x5B             	  ; (OP_RETLW, a->data[i])
i_00008b: retlw	 0x39             	  ; (OP_RETLW, a->data[i])
i_00008c: retlw	 0x30             	  ; (OP_RETLW, a->data[i])
i_00008d: retlw	 0x0F             	  ; (OP_RETLW, a->data[i])
i_00008e: retlw	 0x01             	  ; (OP_RETLW, a->data[i])
i_00008f: retlw	 0x00             	  ; (OP_RETLW, a->data[i])
i_000090: retlw	 0x63             	  ; (OP_RETLW, a->data[i])
    ; TABLE char7seg END
    ; Program Start
    ; Configure Timer1
l_000091: clrwdt	 	 	  ; (OP_CLRWDT)
          movlw	 0x6A             	  ; (REG_CCPR1L, (BYTE)(plcTmr.tmr & 0xff)) ; 0x6A
          movwf	 0x15            	  ; (REG_CCPR1L, (BYTE)(plcTmr.tmr & 0xff)) ; 0x15
          movlw	 0x18             	  ; (REG_CCPR1H, (BYTE)(plcTmr.tmr >> 8)) ; 0x18
          movwf	 0x16            	  ; (REG_CCPR1H, (BYTE)(plcTmr.tmr >> 8)) ; 0x16
          movlw	 0x00             	  ; (REG_TMR1L, 0) ; 0x0
          movwf	 0x0E            	  ; (REG_TMR1L, 0) ; 0xE
          movlw	 0x00             	  ; (REG_TMR1H, 0) ; 0x0
          movwf	 0x0F            	  ; (REG_TMR1H, 0) ; 0xF
          movlw	 0x31             	  ; (REG_T1CON, plcTmr.PS) ; 0x31
          movwf	 0x10            	  ; (REG_T1CON, plcTmr.PS) ; 0x10
          movlw	 0x0B             	  ; (REG_CCP1CON, ccp1con) ; 0xB
          movwf	 0x17            	  ; (REG_CCP1CON, ccp1con) ; 0x17
    ; Now zero out the RAM
          movlw	 0x5F             	  ; (OP_MOVLW, Prog.mcu()->ram[i].len - 1)
          movwf	 0x20            	  ; (OP_MOVWF, Prog.mcu()->ram[i].start & ~BankMask())
          movlw	 0x21             	  ; (OP_MOVLW, (Prog.mcu()->ram[i].start + 1) & ~BankMask())
          movwf	 0x04            	  ; (OP_MOVWF, REG_FSR)
l_0000a2: clrf	 0x00            	  ; (OP_CLRF, REG_INDF)
          incf	 0x04            , 1	  ; (OP_INCF, REG_FSR, DEST_F)
          decfsz 0x20            , 1	  ; (OP_DECFSZ, Prog.mcu()->ram[i].start & ~BankMask(), DEST_F)
          goto	 l_0000a2	 	  ; (OP_GOTO, zeroMem)
          bsf	 0x03            , 5	  ;  BS(0x00,0x9F) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          movlw	 0x87             	  ; (REG_ADCON1, (1 << 7) | (7 << 0)) ; 0x87
          movwf	 0x1F            	  ; (REG_ADCON1, (1 << 7) | (7 << 0)) ; 0x9F
          bcf	 0x03            , 5	  ;  BS(0x80,0x05) ; (OP_BCF, REG_STATUS, STATUS_RP0)
    ; Set up the ANSELx registers. 1-analog input, 0-digital I/O.
    ; Set up the TRISx registers (direction). 1-tri-stated (input), 0-output and drive the outputs low to start
          movlw	 0x00             	  ; (Prog.mcu()->outputRegs[i], 0x00) ; 0x0
          movwf	 0x05            	  ; (Prog.mcu()->outputRegs[i], 0x00) ; 0x5
          movlw	 0x00             	  ; (Prog.mcu()->outputRegs[i], 0x00) ; 0x0
          movwf	 0x06            	  ; (Prog.mcu()->outputRegs[i], 0x00) ; 0x6
          movlw	 0x00             	  ; (Prog.mcu()->outputRegs[i], 0x00) ; 0x0
          movwf	 0x07            	  ; (Prog.mcu()->outputRegs[i], 0x00) ; 0x7
          bsf	 0x03            , 5	  ;  BS(0x00,0x85) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          movlw	 0xFF             	  ; (Prog.mcu()->dirRegs[i], ~isOutput[i]) ; 0xFF
          movwf	 0x05            	  ; (Prog.mcu()->dirRegs[i], ~isOutput[i]) ; 0x85
          movlw	 0xFF             	  ; (Prog.mcu()->dirRegs[i], ~isOutput[i]) ; 0xFF
          movwf	 0x06            	  ; (Prog.mcu()->dirRegs[i], ~isOutput[i]) ; 0x86
          movlw	 0xFF             	  ; (Prog.mcu()->dirRegs[i], ~isOutput[i]) ; 0xFF
          movwf	 0x07            	  ; (Prog.mcu()->dirRegs[i], ~isOutput[i]) ; 0x87
    ; Clear Bit 7 - PORTs pull-ups are enabled by individual port latch values
          bcf	 0x01            , 7	  ; (OP_BCF, REG_OPTION, _RBPU)
l_0000b8: bcf	 0x03            , 5	  ;  BS(0x80,0x0C) ; (OP_BCF, REG_STATUS, STATUS_RP0)
    ; Begin Of PLC Cycle
          btfsc	 0x0C            , 2	  ; (OP_BTFSC, addrSrc, bitSrc, nameSrc)
          bsf	 0x20            , 4	  ; (OP_BSF, addrDest, bitDest, nameDest) ; $Y_INTCON_T0IF
          btfss	 0x0C            , 2	  ; (OP_BTFSS, addrSrc, bitSrc, nameSrc)
          bcf	 0x20            , 4	  ; (OP_BCF, addrDest, bitDest, nameDest) ; $Y_INTCON_T0IF
l_0000bd: btfss	 0x0C            , 2	  ; (OP_BTFSS, REG_PIR1, CCP1IF)
          goto	 l_0000bd	 	  ; (OP_GOTO, PicProgWriteP - 1)
          bcf	 0x0C            , 2	  ; (OP_BCF, REG_PIR1, CCP1IF)
    ; Watchdog reset
          clrwdt	 	 	  ; (OP_CLRWDT)
    ; INIT TABLES
    ; 
    ; ======= START RUNG 1 =======
    ; INT_SET_BIT $rung_top
          bsf	 0x20            , 0	  ; (OP_BSF, addr1, bit1, a->name1) ; $rung_top
    ; start series [
    ; ELEM_ONE_SHOT_RISING
    ; INT_IF_BIT_SET $rung_top
          btfss	 0x20            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $rung_top
          goto	 l_0000ca	 	  ; (OP_GOTO, condFalse)
    ; INT_IF_BIT_SET $once_0_ONE_SHOT_RISING_
          btfss	 0x20            , 1	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $once_0_ONE_SHOT_RISING_
          goto	 l_0000c8	 	  ; (OP_GOTO, condFalse)
    ; INT_CLEAR_BIT $rung_top
          bcf	 0x20            , 0	  ; (OP_BCF, addr1, bit1, a->name1) ; $rung_top
i_0000c7: goto	 l_0000c9	 	  ; (OP_GOTO, endBlock)
    ; INT_SET_BIT $once_0_ONE_SHOT_RISING_
l_0000c8: bsf	 0x20            , 1	  ; (OP_BSF, addr1, bit1, a->name1) ; $once_0_ONE_SHOT_RISING_
l_0000c9: goto	 l_0000cb	 	  ; (OP_GOTO, endBlock)
    ; INT_CLEAR_BIT $once_0_ONE_SHOT_RISING_
l_0000ca: bcf	 0x20            , 1	  ; (OP_BCF, addr1, bit1, a->name1) ; $once_0_ONE_SHOT_RISING_
    ; ELEM_MOVE
    ; INT_IF_BIT_SET $rung_top
l_0000cb: btfss	 0x20            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $rung_top
          goto	 l_0000cf	 	  ; (OP_GOTO, condFalse)
          bsf	 0x03            , 5	  ;  BS(0x00,0x86) ; (OP_BSF, REG_STATUS, STATUS_RP0)
    ; INT_SET_VARIABLE_TO_LITERAL #TRISB:=0x0(0)
    ; CopyLitToReg
          clrf	 0x06            	  ; (OP_CLRF, addr + i, 0, comment) ; #TRISB(0x86):=0(0x0)
l_0000cf: bcf	 0x03            , 5	  ;  BS(0x80,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP0)
    ; ] finish series
    ; 
    ; ======= START RUNG 2 =======
    ; INT_SET_BIT $rung_top
          bsf	 0x20            , 0	  ; (OP_BSF, addr1, bit1, a->name1) ; $rung_top
    ; start series [
    ; ELEM_CONTACTS
    ; INT_IF_BIT_SET Xwrite
          btfss	 0x05            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; Xwrite
          goto	 l_0000d4	 	  ; (OP_GOTO, condFalse)
    ; INT_CLEAR_BIT $rung_top
          bcf	 0x20            , 0	  ; (OP_BCF, addr1, bit1, a->name1) ; $rung_top
    ; start parallel [
    ; ELEM_MOVE
    ; INT_IF_BIT_SET $rung_top
l_0000d4: btfss	 0x20            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $rung_top
          goto	 l_0000d9	 	  ; (OP_GOTO, condFalse)
    ; INT_SET_VARIABLE_TO_LITERAL E1:=0x5(5)
    ; CopyLitToReg
          movlw	 0x05             	  ; (OP_MOVLW, lNow, 0, comment) ; E1(0x33):=5(0x5)
          movwf	 0x33            	  ; (OP_MOVWF, addr + i, 0, comment) ; E1(0x33):=5(0x5)
          clrf	 0x34            	  ; (OP_CLRF, addr + i, 0, comment) ; E1(0x33):=5(0x5)
    ; ELEM_PERSIST
    ; INT_IF_BIT_SET $rung_top
l_0000d9: btfss	 0x20            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $rung_top
          goto	 l_000168	 	  ; (OP_GOTO, condFalse)
    ; INT_IF_BIT_CLEAR $once_1_PERSIST_E1
          btfsc	 0x20            , 2	  ; (OP_BTFSC, addr1, bit1, a->name1) ; $once_1_PERSIST_E1
          goto	 l_000115	 	  ; (OP_GOTO, condFalse)
    ; INT_CLEAR_BIT $scratch
          bcf	 0x20            , 3	  ; (OP_BCF, addr1, bit1, a->name1) ; $scratch
          bsf	 0x03            , 5	  ;  BS(0x00,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bsf	 0x03            , 6	  ;  BS(0x00,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP1)
    ; INT_EEPROM_BUSY_CHECK
          btfsc	 0x0C            , 1	  ; (OP_BTFSC, REG_EECON1, 1)
          goto	 l_0000fa	 	  ; (OP_GOTO, isBusy)
          bcf	 0x03            , 5	  ;  BS(0x180,0x32) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          bcf	 0x03            , 6	  ;  BS(0x180,0x32) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movf	 0x32            , 0 	  ; (OP_MOVF, EepromHighBytesCounter, DEST_W)
          btfsc	 0x03            , 2	  ; (OP_BTFSC, REG_STATUS, STATUS_Z)
          goto	 l_0000fd	 	  ; (OP_GOTO, done)
          decf	 0x32            , 1	  ; (OP_DECF, EepromHighBytesCounter, DEST_F)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          incf	 0x0D            , 1	  ; (OP_INCF, REG_EEADR, DEST_F)
          bcf	 0x03            , 6	  ;  BS(0x100,0x32) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movlw	 0x2F             	  ; (OP_MOVLW, EepromHighByte)
          addwf	 0x32            , 0	  ; (OP_ADDWF, EepromHighBytesCounter, DEST_W)
          movwf	 0x04            	  ; (OP_MOVWF, REG_FSR)
          movf	 0x00            , 0 	  ; (OP_MOVF, REG_INDF, DEST_W)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10C) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          movwf	 0x0C            	  ; (OP_MOVWF, REG_EEDATA)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 2	  ; (OP_BSF, REG_EECON1, 2)
          movlw	 0x55             	  ; (OP_MOVLW, 0x55)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EECON2)
          movlw	 0xAA             	  ; (OP_MOVLW, 0xaa)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EECON2)
          bsf	 0x0C            , 1	  ; (OP_BSF, REG_EECON1, 1)
          bcf	 0x0C            , 2	  ; (OP_BCF, REG_EECON1, 2)
l_0000fa: bcf	 0x03            , 5	  ;  BS(0x1A0,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          bcf	 0x03            , 6	  ;  BS(0x1A0,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          bsf	 0x20            , 3	  ; (OP_BSF, addr1, bit1)
    ; INT_IF_BIT_CLEAR $scratch
l_0000fd: btfsc	 0x20            , 3	  ; (OP_BTFSC, addr1, bit1, a->name1) ; $scratch
          goto	 l_000114	 	  ; (OP_GOTO, condFalse)
    ; INT_SET_BIT $once_1_PERSIST_E1
          bsf	 0x20            , 2	  ; (OP_BSF, addr1, bit1, a->name1) ; $once_1_PERSIST_E1
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
    ; INT_EEPROM_READ
          movlw	 0x00             	  ; (OP_MOVLW, a->literal + i)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EEADR)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 0	  ; (OP_BSF, REG_EECON1, 0)
          bcf	 0x03            , 5	  ;  BS(0x180,0x10C) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          movf	 0x0C            , 0 	  ; (OP_MOVF, REG_EEDATA, DEST_W)
          bcf	 0x03            , 6	  ;  BS(0x100,0x33) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movwf	 0x33            	  ; (OP_MOVWF, addr1 + i)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          movlw	 0x01             	  ; (OP_MOVLW, a->literal + i)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EEADR)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 0	  ; (OP_BSF, REG_EECON1, 0)
          bcf	 0x03            , 5	  ;  BS(0x180,0x10C) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          movf	 0x0C            , 0 	  ; (OP_MOVF, REG_EEDATA, DEST_W)
          bcf	 0x03            , 6	  ;  BS(0x100,0x34) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movwf	 0x34            	  ; (OP_MOVWF, addr1 + i)
l_000114: goto	 l_000168	 	  ; (OP_GOTO, endBlock)
    ; INT_CLEAR_BIT $scratch
l_000115: bcf	 0x20            , 3	  ; (OP_BCF, addr1, bit1, a->name1) ; $scratch
          bsf	 0x03            , 5	  ;  BS(0x00,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bsf	 0x03            , 6	  ;  BS(0x00,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP1)
    ; INT_EEPROM_BUSY_CHECK
          btfsc	 0x0C            , 1	  ; (OP_BTFSC, REG_EECON1, 1)
          goto	 l_000132	 	  ; (OP_GOTO, isBusy)
          bcf	 0x03            , 5	  ;  BS(0x180,0x32) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          bcf	 0x03            , 6	  ;  BS(0x180,0x32) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movf	 0x32            , 0 	  ; (OP_MOVF, EepromHighBytesCounter, DEST_W)
          btfsc	 0x03            , 2	  ; (OP_BTFSC, REG_STATUS, STATUS_Z)
          goto	 l_000135	 	  ; (OP_GOTO, done)
          decf	 0x32            , 1	  ; (OP_DECF, EepromHighBytesCounter, DEST_F)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          incf	 0x0D            , 1	  ; (OP_INCF, REG_EEADR, DEST_F)
          bcf	 0x03            , 6	  ;  BS(0x100,0x32) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movlw	 0x2F             	  ; (OP_MOVLW, EepromHighByte)
          addwf	 0x32            , 0	  ; (OP_ADDWF, EepromHighBytesCounter, DEST_W)
          movwf	 0x04            	  ; (OP_MOVWF, REG_FSR)
          movf	 0x00            , 0 	  ; (OP_MOVF, REG_INDF, DEST_W)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10C) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          movwf	 0x0C            	  ; (OP_MOVWF, REG_EEDATA)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 2	  ; (OP_BSF, REG_EECON1, 2)
          movlw	 0x55             	  ; (OP_MOVLW, 0x55)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EECON2)
          movlw	 0xAA             	  ; (OP_MOVLW, 0xaa)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EECON2)
          bsf	 0x0C            , 1	  ; (OP_BSF, REG_EECON1, 1)
          bcf	 0x0C            , 2	  ; (OP_BCF, REG_EECON1, 2)
l_000132: bcf	 0x03            , 5	  ;  BS(0x1A0,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          bcf	 0x03            , 6	  ;  BS(0x1A0,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          bsf	 0x20            , 3	  ; (OP_BSF, addr1, bit1)
    ; INT_IF_BIT_CLEAR $scratch
l_000135: btfsc	 0x20            , 3	  ; (OP_BTFSC, addr1, bit1, a->name1) ; $scratch
          goto	 l_000168	 	  ; (OP_GOTO, condFalse)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
    ; INT_EEPROM_READ
          movlw	 0x00             	  ; (OP_MOVLW, a->literal + i)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EEADR)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 0	  ; (OP_BSF, REG_EECON1, 0)
          bcf	 0x03            , 5	  ;  BS(0x180,0x10C) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          movf	 0x0C            , 0 	  ; (OP_MOVF, REG_EEDATA, DEST_W)
          bcf	 0x03            , 6	  ;  BS(0x100,0x35) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movwf	 0x35            	  ; (OP_MOVWF, addr1 + i)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          movlw	 0x01             	  ; (OP_MOVLW, a->literal + i)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EEADR)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 0	  ; (OP_BSF, REG_EECON1, 0)
          bcf	 0x03            , 5	  ;  BS(0x180,0x10C) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          movf	 0x0C            , 0 	  ; (OP_MOVF, REG_EEDATA, DEST_W)
          bcf	 0x03            , 6	  ;  BS(0x100,0x36) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movwf	 0x36            	  ; (OP_MOVWF, addr1 + i)
    ; INT_IF_EQU
          movf	 0x35            , 0 	  ; (OP_MOVF, addrA + i, DEST_W)
          subwf	 0x33            , 0	  ; (OP_SUBWF, addrB + i, DEST_W)
          btfss	 0x03            , 2	  ; (OP_BTFSS, 0x03, 2)
          goto	 l_000154	 	  ; (OP_GOTO, ifEnd)
          movf	 0x36            , 0 	  ; (OP_MOVF, addrA + i, DEST_W)
          subwf	 0x34            , 0	  ; (OP_SUBWF, addrB + i, DEST_W)
          btfss	 0x03            , 2	  ; (OP_BTFSS, 0x03, 2)
          goto	 l_000154	 	  ; (OP_GOTO, ifEnd)
i_000153: goto	 l_000168	 	  ; (OP_GOTO, endBlock)
    ; INT_EEPROM_WRITE
l_000154: movlw	 0x01             	  ; (EepromHighBytesCounter, sov1 - 1) ; 0x1
          movwf	 0x32            	  ; (EepromHighBytesCounter, sov1 - 1) ; 0x32
          movf	 0x34            , 0 	  ; (OP_MOVF, addr1 + 1, DEST_W)
          movwf	 0x2F            	  ; (OP_MOVWF, EepromHighByte)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10D) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          movlw	 0x00             	  ; (OP_MOVLW, a->literal)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EEADR)
          bcf	 0x03            , 6	  ;  BS(0x100,0x33) ; (OP_BCF, REG_STATUS, STATUS_RP1)
          movf	 0x33            , 0 	  ; (OP_MOVF, addr1, DEST_W)
          bsf	 0x03            , 6	  ;  BS(0x00,0x10C) ; (OP_BSF, REG_STATUS, STATUS_RP1)
          movwf	 0x0C            	  ; (OP_MOVWF, REG_EEDATA)
          bsf	 0x03            , 5	  ;  BS(0x100,0x18C) ; (OP_BSF, REG_STATUS, STATUS_RP0)
          bcf	 0x0C            , 7	  ; (OP_BCF, REG_EECON1, 7)
          bsf	 0x0C            , 2	  ; (OP_BSF, REG_EECON1, 2)
          movlw	 0x55             	  ; (OP_MOVLW, 0x55)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EECON2)
          movlw	 0xAA             	  ; (OP_MOVLW, 0xaa)
          movwf	 0x0D            	  ; (OP_MOVWF, REG_EECON2)
          bsf	 0x0C            , 1	  ; (OP_BSF, REG_EECON1, 1)
          bcf	 0x0C            , 2	  ; (OP_BCF, REG_EECON1, 2)
l_000168: bcf	 0x03            , 5	  ;  BS(0x180,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP0)
          bcf	 0x03            , 6	  ;  BS(0x180,0x20) ; (OP_BCF, REG_STATUS, STATUS_RP1)
    ; ] finish parallel
    ; ] finish series
    ; 
    ; ======= START RUNG 3 =======
    ; INT_SET_BIT $rung_top
          bsf	 0x20            , 0	  ; (OP_BSF, addr1, bit1, a->name1) ; $rung_top
    ; start series [
    ; ELEM_CONTACTS
    ; INT_IF_BIT_SET Xread
          btfss	 0x05            , 5	  ; (OP_BTFSS, addr1, bit1, a->name1) ; Xread
          goto	 l_00016e	 	  ; (OP_GOTO, condFalse)
    ; INT_CLEAR_BIT $rung_top
          bcf	 0x20            , 0	  ; (OP_BCF, addr1, bit1, a->name1) ; $rung_top
    ; ELEM_MOVE
    ; INT_IF_BIT_SET $rung_top
l_00016e: btfss	 0x20            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $rung_top
          goto	 l_000174	 	  ; (OP_GOTO, condFalse)
    ; INT_SET_VARIABLE_TO_VARIABLE temp := E1
    ; CopyRegToReg
          movf	 0x33            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; E1
          movwf	 0x37            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; temp
          movf	 0x34            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; E1
          movwf	 0x38            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; temp
    ; ] finish series
    ; 
    ; ======= START RUNG 4 =======
    ; INT_SET_BIT $rung_top
l_000174: bsf	 0x20            , 0	  ; (OP_BSF, addr1, bit1, a->name1) ; $rung_top
    ; start series [
    ; ELEM_7SEG
    ; INT_IF_BIT_SET $rung_top
          btfss	 0x20            , 0	  ; (OP_BTFSS, addr1, bit1, a->name1) ; $rung_top
          goto	 l_0001dc	 	  ; (OP_GOTO, condFalse)
    ; INT_SET_VARIABLE_TO_LITERAL $scratch:=0xB0(176)
    ; CopyLitToReg
          movlw	 0xB0             	  ; (OP_MOVLW, lNow, 0, comment) ; $scratch(0x39):=176(0xB0)
          movwf	 0x39            	  ; (OP_MOVWF, addr + i, 0, comment) ; $scratch(0x39):=176(0xB0)
          clrf	 0x3A            	  ; (OP_CLRF, addr + i, 0, comment) ; $scratch(0x39):=176(0xB0)
    ; INT_IF_EQU
          movf	 0x37            , 0 	  ; (OP_MOVF, addrA + i, DEST_W)
          subwf	 0x39            , 0	  ; (OP_SUBWF, addrB + i, DEST_W)
          btfss	 0x03            , 2	  ; (OP_BTFSS, 0x03, 2)
          goto	 l_000186	 	  ; (OP_GOTO, ifEnd)
          movf	 0x38            , 0 	  ; (OP_MOVF, addrA + i, DEST_W)
          subwf	 0x3A            , 0	  ; (OP_SUBWF, addrB + i, DEST_W)
          btfss	 0x03            , 2	  ; (OP_BTFSS, 0x03, 2)
          goto	 l_000186	 	  ; (OP_GOTO, ifEnd)
    ; INT_SET_VARIABLE_TO_LITERAL temp:=0x80(128)
    ; CopyLitToReg
          movlw	 0x80             	  ; (OP_MOVLW, lNow, 0, comment) ; temp(0x37):=128(0x80)
          movwf	 0x37            	  ; (OP_MOVWF, addr + i, 0, comment) ; temp(0x37):=128(0x80)
          clrf	 0x38            	  ; (OP_CLRF, addr + i, 0, comment) ; temp(0x37):=128(0x80)
i_000185: goto	 l_0001d3	 	  ; (OP_GOTO, endBlock)
    ; INT_IF_LES temp 0
    ; CopyRegToReg
l_000186: movf	 0x37            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; temp
          movwf	 0x22            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; $CopyArgToReg
          movf	 0x38            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; temp
          movwf	 0x23            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; $CopyArgToReg
    ; CopyLitToReg
          clrf	 0x26            	  ; (OP_CLRF, addr + i, 0, comment) ; 0
          clrf	 0x27            	  ; (OP_CLRF, addr + i, 0, comment) ; 0
          bcf	 0x20            , 5	  ; (OP_BCF, addrO, bitO, "$overflow") ; $overflow
    ; save sign
          movf	 0x23            , 0 	  ; (OP_MOVF, b + sov - 1, DEST_W)
          xorwf	 0x27            , 0	  ; (OP_XORWF, a + sov - 1, DEST_W)
          movwf	 0x21            	  ; (OP_MOVWF, ScratchS)
    ; sub_
          movf	 0x26            , 0 	  ; (OP_MOVF, a, DEST_W)
          subwf	 0x22            , 1	  ; (OP_SUBWF, b, DEST_W_F)
          movf	 0x27            , 0 	  ; (OP_MOVF, a + 1, DEST_W)
          btfss	 0x03            , 0	  ; (OP_BTFSS, REG_STATUS, STATUS_C)
          incfsz 0x27            , 0	  ; (OP_INCFSZ, a + 1, DEST_W)
          subwf	 0x23            , 1	  ; (OP_SUBWF, b + 1, DEST_W_F)
    ; check sign
          btfss	 0x21            , 7	  ; (OP_BTFSS, ScratchS, 7)
          goto	 l_00019e	 	  ; (OP_GOTO, notOverflow)
          movf	 0x23            , 0 	  ; (OP_MOVF, b + sov - 1, DEST_W)
          xorwf	 0x27            , 0	  ; (OP_XORWF, a + sov - 1, DEST_W)
          movwf	 0x21            	  ; (OP_MOVWF, ScratchS)
          btfsc	 0x21            , 7	  ; (OP_BTFSC, ScratchS, 7)
          goto	 l_00019e	 	  ; (OP_GOTO, notOverflow)
          bsf	 0x20            , 5	  ; (OP_BSF, addr, bit, "$overflow") ; $overflow
    ; XorBit
l_00019e: btfss	 0x20            , 5	  ; (OP_BTFSS, addrDest, bitDest)
          goto	 l_0001a3	 	  ; (OP_GOTO, is0)
          btfsc	 0x23            , 7	  ; (OP_BTFSC, addrSrc, bitSrc)
          bcf	 0x20            , 5	  ; (OP_BCF, addrDest, bitDest)
i_0001a2: goto	 l_0001a5	 	  ; (OP_GOTO, isEnd)
l_0001a3: btfsc	 0x23            , 7	  ; (OP_BTFSC, addrSrc, bitSrc)
          bsf	 0x20            , 5	  ; (OP_BSF, addrDest, bitDest)
l_0001a5: btfsc	 0x20            , 5	  ; (OP_BTFSC, addrO, bitO)
          goto	 l_0001a8	 	  ; (OP_GOTO, ifThen)
i_0001a7: goto	 l_0001ac	 	  ; (OP_GOTO, ifEnd)
    ; INT_SET_VARIABLE_TO_LITERAL temp:=0x20(32)
    ; CopyLitToReg
l_0001a8: movlw	 0x20             	  ; (OP_MOVLW, lNow, 0, comment) ; temp(0x37):=32(0x20)
          movwf	 0x37            	  ; (OP_MOVWF, addr + i, 0, comment) ; temp(0x37):=32(0x20)
          clrf	 0x38            	  ; (OP_CLRF, addr + i, 0, comment) ; temp(0x37):=32(0x20)
i_0001ab: goto	 l_0001d3	 	  ; (OP_GOTO, endBlock)
    ; INT_IF_LES temp 129
    ; CopyRegToReg
l_0001ac: movf	 0x37            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; temp
          movwf	 0x22            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; $CopyArgToReg
          movf	 0x38            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; temp
          movwf	 0x23            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; $CopyArgToReg
    ; CopyLitToReg
          movlw	 0x81             	  ; (OP_MOVLW, lNow, 0, comment) ; 129
          movwf	 0x26            	  ; (OP_MOVWF, addr + i, 0, comment) ; 129
          clrf	 0x27            	  ; (OP_CLRF, addr + i, 0, comment) ; 129
          bcf	 0x20            , 5	  ; (OP_BCF, addrO, bitO, "$overflow") ; $overflow
    ; save sign
          movf	 0x23            , 0 	  ; (OP_MOVF, b + sov - 1, DEST_W)
          xorwf	 0x27            , 0	  ; (OP_XORWF, a + sov - 1, DEST_W)
          movwf	 0x21            	  ; (OP_MOVWF, ScratchS)
    ; sub_
          movf	 0x26            , 0 	  ; (OP_MOVF, a, DEST_W)
          subwf	 0x22            , 1	  ; (OP_SUBWF, b, DEST_W_F)
          movf	 0x27            , 0 	  ; (OP_MOVF, a + 1, DEST_W)
          btfss	 0x03            , 0	  ; (OP_BTFSS, REG_STATUS, STATUS_C)
          incfsz 0x27            , 0	  ; (OP_INCFSZ, a + 1, DEST_W)
          subwf	 0x23            , 1	  ; (OP_SUBWF, b + 1, DEST_W_F)
    ; check sign
          btfss	 0x21            , 7	  ; (OP_BTFSS, ScratchS, 7)
          goto	 l_0001c5	 	  ; (OP_GOTO, notOverflow)
          movf	 0x23            , 0 	  ; (OP_MOVF, b + sov - 1, DEST_W)
          xorwf	 0x27            , 0	  ; (OP_XORWF, a + sov - 1, DEST_W)
          movwf	 0x21            	  ; (OP_MOVWF, ScratchS)
          btfsc	 0x21            , 7	  ; (OP_BTFSC, ScratchS, 7)
          goto	 l_0001c5	 	  ; (OP_GOTO, notOverflow)
          bsf	 0x20            , 5	  ; (OP_BSF, addr, bit, "$overflow") ; $overflow
    ; XorBit
l_0001c5: btfss	 0x20            , 5	  ; (OP_BTFSS, addrDest, bitDest)
          goto	 l_0001ca	 	  ; (OP_GOTO, is0)
          btfsc	 0x23            , 7	  ; (OP_BTFSC, addrSrc, bitSrc)
          bcf	 0x20            , 5	  ; (OP_BCF, addrDest, bitDest)
i_0001c9: goto	 l_0001cc	 	  ; (OP_GOTO, isEnd)
l_0001ca: btfsc	 0x23            , 7	  ; (OP_BTFSC, addrSrc, bitSrc)
          bsf	 0x20            , 5	  ; (OP_BSF, addrDest, bitDest)
l_0001cc: btfsc	 0x20            , 5	  ; (OP_BTFSC, addrO, bitO)
          goto	 l_0001cf	 	  ; (OP_GOTO, ifThen)
i_0001ce: goto	 l_0001d0	 	  ; (OP_GOTO, ifEnd)
l_0001cf: goto	 l_0001d3	 	  ; (OP_GOTO, endBlock)
    ; INT_SET_VARIABLE_TO_LITERAL temp:=0x20(32)
    ; CopyLitToReg
l_0001d0: movlw	 0x20             	  ; (OP_MOVLW, lNow, 0, comment) ; temp(0x37):=32(0x20)
          movwf	 0x37            	  ; (OP_MOVWF, addr + i, 0, comment) ; temp(0x37):=32(0x20)
          clrf	 0x38            	  ; (OP_CLRF, addr + i, 0, comment) ; temp(0x37):=32(0x20)
    ; Scratch0:1 := Index 'temp'
    ; CopyRegToReg
l_0001d3: movf	 0x37            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; temp
          movwf	 0x22            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; $Scratch0
          movf	 0x38            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; temp
          movwf	 0x23            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; $Scratch0
    ; Index := Index * sovElement '1'
    ; CALL Table 'char7seg' address in flash
          call	 l_000008	 	  ; (OP_CALL, addr2)
          movwf	 0x39            	  ; (OP_MOVWF, addr1)
    ; Clear upper bytes of dest
          clrf	 0x3A            	  ; (OP_CLRF, addr1 + sovElement + i)
    ; END CALLs
    ; INT_SET_VARIABLE_TO_VARIABLE #PORTB := $scratch
    ; CopyRegToReg
          movf	 0x39            , 0 	  ; (OP_MOVF, addr2 + i, DEST_W, name2) ; $scratch
          movwf	 0x06            	  ; (OP_MOVWF, addr1 + i, 0, name1) ; #PORTB
l_0001dc: bcf	 0x0A            , 3	  ;  PS(0x18,0x00) ; _v ; (addr + n, OP_BCF, REG_PCLATH, BIT3, "_v") ; 
i_0001dd: bcf	 0x0A            , 4	  ;  PS(0x18,0x00) ; v_ ; (addr + n, OP_BCF, REG_PCLATH, BIT4, "v_") ; 
    ; ] finish series
    ; Latest INT_OP here
    ; GOTO next PLC cycle
i_0001de: goto	 l_0000b8	 	  ; (OP_GOTO, BeginOfPLCCycle)
l_0001df: goto	 l_0001df	 	  ; (OP_GOTO, PicProgWriteP)
	END

;|  # | Name                                                    | Size      | Address      | Bit # |
;|Variables: 22
;|  0 | #PORTB                                            	|   1 byte  | 0x0006       |
;|  2 | #TRISB                                            	|   1 byte  | 0x0086       |
;|  3 | $scratch                                          	|   2 byte  | 0x0039       |
;|  4 | $tmpVar24bit                                      	|   2 byte  | 0x0035       |
;|  5 | E1                                                	|   2 byte  | 0x0033       |
;| 14 | char7seg                                          	| 129 byte  | 0x0008       |
;| 19 | temp                                              	|   2 byte  | 0x0037       |

;|Internal Relays: 6
;|  0 | $rung_top                                         	|   1 bit   | 0x0020       | 0     |
;|  1 | $once_0_ONE_SHOT_RISING_                          	|   1 bit   | 0x0020       | 1     |
;|  2 | $once_1_PERSIST_E1                                	|   1 bit   | 0x0020       | 2     |
;|  3 | $scratch                                          	|   1 bit   | 0x0020       | 3     |
;|  4 | $Y_INTCON_T0IF                                    	|   1 bit   | 0x0020       | 4     |
;|  5 | $overflow                                         	|   1 bit   | 0x0020       | 5     |

