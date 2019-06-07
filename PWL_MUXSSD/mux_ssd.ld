LDmicro0.2
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=1000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=19200 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\PWL_MUXSSD\mux_ssd.hex

VAR LIST
    1 bytes #PORTB
    1 bytes #PORTC
    1 bytes #TRISB
    1 bytes #TRISC
    1 bytes C0
    2 bytes Cnew 	Now not used !!!
    2 bytes PORTC 	Now not used !!!
    1 bytes T0
    2 bytes Tnew 	Now not used !!!
    2 bytes buf0
    2 bytes buf1
    2 bytes buf2
    2 bytes buf3
    2 bytes buf4
    2 bytes char
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
    2 bytes src 	Now not used !!!
END

IO LIST
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
  UART_RECV_AVAIL
  COIL Ready 0 0 0 0
END
RUNG 4
  CONTACTS Ready 0 0
  PARALLEL
    UART_RECV char 1 0
    UART_SEND char 1 0
  END
END
RUNG 5
  CONTACTS Ready 0 0
  PARALLEL
    MOVE buf0 char
    SHIFT_REGISTER buf 5
  END
END
RUNG 6
  EQU C0 1
  7SEGMENTS #PORTB buf4 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 1
  END
END
RUNG 7
  EQU C0 2
  7SEGMENTS #PORTB buf3 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 2
  END
END
RUNG 8
  EQU C0 3
  7SEGMENTS #PORTB buf2 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 4
  END
END
RUNG 9
  EQU C0 4
  7SEGMENTS #PORTB buf1 C
  PARALLEL
    MOVE #PORTC 0
    MOVE #PORTC 8
  END
END
