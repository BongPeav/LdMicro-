LDmicro0.2
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\EEPROM\eeprom1.hex
COMPILER=

VAR LIST
    1 bytes #PORTB
    1 bytes #TRISA 	Now not used !!!
    1 bytes #TRISB
    2 bytes E1
    2 bytes E2 	Now not used !!!
  129 bytes char7seg
    1 bytes char7seg[0]
    2 bytes dest 	Now not used !!!
    2 bytes saved 	Now not used !!!
    2 bytes src 	Now not used !!!
    2 bytes temp
    2 bytes var1 	Now not used !!!
END

IO LIST
    Xread at 7 0 0
    Xsave at 2 0 0
END

PROGRAM
RUNG 1
  OSR
  MOVE #TRISB 0x00
END
RUNG 2
  CONTACTS Xsave 1 1
  PARALLEL
    MOVE E1 5
    PERSIST E1
  END
END
RUNG 3
  CONTACTS Xread 1 1
  MOVE temp E1
END
RUNG 4
  7SEGMENTS #PORTB temp C
END
