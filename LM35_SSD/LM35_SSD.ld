LDmicro0.2
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=1000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=19200 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\LM35_SSD\LM35_SSD.hex
COMPILER=

VAR LIST
    1 bytes #PORTA 	Now not used !!!
    1 bytes #PORTB
    1 bytes #PORTC
    1 bytes #TRISA 	Now not used !!!
    1 bytes #TRISB
    1 bytes #TRISC
    1 bytes 10 	Now not used !!!
    2 bytes 148
    2 bytes 150
    1 bytes 18 	Now not used !!!
    1 bytes 2 	Now not used !!!
    1 bytes 20 	Now not used !!!
    2 bytes 200 	Now not used !!!
    1 bytes 8 	Now not used !!!
    1 bytes 80 	Now not used !!!
    1 bytes C0
    2 bytes Cnew 	Now not used !!!
    2 bytes FFF 	Now not used !!!
    2 bytes PORTC 	Now not used !!!
    2 bytes Relay 	Now not used !!!
    1 bytes T0
    2 bytes T1
    2 bytes Tnew 	Now not used !!!
    5 bytes bcd 	Now not used !!!
    2 bytes buf0 	Now not used !!!
    2 bytes buf1 	Now not used !!!
    2 bytes buf2
    2 bytes buf3
    2 bytes buf4
    2 bytes char 	Now not used !!!
  129 bytes char7seg
    1 bytes char7seg[0]
    2 bytes data 	Now not used !!!
    2 bytes dest 	Now not used !!!
    2 bytes reg0 	Now not used !!!
    2 bytes reg1 	Now not used !!!
    2 bytes reg2 	Now not used !!!
    2 bytes reg3 	Now not used !!!
    2 bytes reg4 	Now not used !!!
    2 bytes reg5 	Now not used !!!
    2 bytes reg6 	Now not used !!!
    2 bytes result
    2 bytes src 	Now not used !!!
    2 bytes temp1
    2 bytes temp2 	Now not used !!!
    2 bytes xvar 	Now not used !!!
    2 bytes yvar 	Now not used !!!
END

IO LIST
    Y0 at 3 0 0
    A0 at 2 0 0
END

PROGRAM
RUNG 1
  TCY T0 2000 0
  OSR
  CTC C0 4 0 /
END
RUNG 2
  PARALLEL
    MOVE #TRISB 0
    MOVE #TRISC 0xF0
  END
END
RUNG 3
  TCY T1 1000000 0
  READ_ADC A0 0
END
RUNG 4
  PIECEWISE_LINEAR result A0 3 2 1 150 73 300 147 temp
END
RUNG 5
  DIV buf4 result 100
END
RUNG 6
  DIV temp1 result 10
END
RUNG 7
  MOD buf3 temp1 10
END
RUNG 8
  MOD buf2 result 10
END
RUNG 9
  GRT result 30
  COIL Y0 0 0 0 0
END
RUNG 10
  GEQ result 100
  EQU C0 1
  7SEGMENTS #PORTB buf4 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 1
  END
END
RUNG 11
  GEQ result 10
  EQU C0 2
  7SEGMENTS #PORTB buf3 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 2
  END
END
RUNG 12
  EQU C0 3
  7SEGMENTS #PORTB buf2 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 4
  END
END
RUNG 13
  EQU C0 4
  7SEGMENTS #PORTB 'C' C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 8
  END
END
