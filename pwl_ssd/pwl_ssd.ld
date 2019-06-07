LDmicro
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\pwl_ssd\pwl_ssd.hex
COMPILER=

VAR LIST
    1 bytes #PORTB
    1 bytes #TRISB
    1 bytes 1
    1 bytes 3 	Now not used !!!
    1 bytes 40
    1 bytes 8 	Now not used !!!
    2 bytes char
  129 bytes char7seg
    1 bytes char7seg[0]
    2 bytes dest 	Now not used !!!
    2 bytes index 	Now not used !!!
    2 bytes name
    2 bytes name[0]
    2 bytes num 	Now not used !!!
    2 bytes src 	Now not used !!!
    2 bytes ssd
    2 bytes xvar 	Now not used !!!
    2 bytes yvar 	Now not used !!!
END

IO LIST
END

PROGRAM
RUNG 1
  MOVE #TRISB 0
END
RUNG 2
  UART_RECV_AVAIL
  PARALLEL
    UART_RECV char 1 0
    UART_SEND char 1 0
  END
END
RUNG 3
  PIECEWISE_LINEAR ssd char 16 48 0 49 1 50 2 51 3 52 4 53 5 54 6 55 7 56 8 57 9 97 10 98 11 99 12 100 13 101 14 102 15 PWL1
END
RUNG 4
  7SEGMENTS #PORTB ssd C
END
