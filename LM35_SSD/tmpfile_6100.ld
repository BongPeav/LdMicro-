LDmicro0.2
CYCLE=1000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=19200 Hz, RATE=0 Hz, SPEED=0 Hz

VAR LIST
    1 bytes #PORTB 	Now not used !!!
    1 bytes #PORTC 	Now not used !!!
    1 bytes #TRISB 	Now not used !!!
    1 bytes #TRISC 	Now not used !!!
    1 bytes C0 	Now not used !!!
    2 bytes Cnew 	Now not used !!!
    2 bytes FFF 	Now not used !!!
    2 bytes PORTC 	Now not used !!!
    1 bytes T0 	Now not used !!!
    2 bytes T1 	Now not used !!!
    2 bytes Tnew 	Now not used !!!
    5 bytes bcd 	Now not used !!!
    2 bytes buf0 	Now not used !!!
    2 bytes buf1 	Now not used !!!
    2 bytes buf2 	Now not used !!!
    2 bytes buf3 	Now not used !!!
    2 bytes buf4 	Now not used !!!
    2 bytes char 	Now not used !!!
  129 bytes char7seg
    1 bytes char7seg[0]
    2 bytes dest 	Now not used !!!
    2 bytes reg0 	Now not used !!!
    2 bytes reg1 	Now not used !!!
    2 bytes reg2 	Now not used !!!
    2 bytes reg3 	Now not used !!!
    2 bytes reg4 	Now not used !!!
    2 bytes reg5 	Now not used !!!
    2 bytes reg6 	Now not used !!!
    2 bytes result 	Now not used !!!
    2 bytes src 	Now not used !!!
END

IO LIST
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
  MUL result A0 2
END
RUNG 5
  BIN2BCD bcd result
END
RUNG 6
  AND buf2 bcd 0FFF
END
RUNG 7
  EQU C0 1
  7SEGMENTS #PORTB buf4 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 1
  END
END
RUNG 8
  EQU C0 2
  7SEGMENTS #PORTB buf3 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 2
  END
END
RUNG 9
  EQU C0 3
  7SEGMENTS #PORTB buf2 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 4
  END
END
RUNG 10
  EQU C0 4
  7SEGMENTS #PORTB 'C' C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 8
  END
END
