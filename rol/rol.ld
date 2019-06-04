LDmicro0.2
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\rol\rol.hex

VAR LIST
    1 bytes #PORTB
    1 bytes #PORTC
    1 bytes #TRISB
    1 bytes #TRISC
    1 bytes T0
    2 bytes Tnew 	Now not used !!!
    2 bytes dest 	Now not used !!!
    2 bytes src 	Now not used !!!
    2 bytes var1 	Now not used !!!
END

IO LIST
END

PROGRAM
RUNG 1
  PARALLEL
    MOVE #TRISB 0
    MOVE #TRISC 0
  END
END
RUNG 2
  OSR
  PARALLEL
    MOVE #PORTB 1
    MOVE #PORTC 0x80
  END
END
RUNG 3
  TCY T0 20000 0
  OSR
  PARALLEL
    ROL #PORTB #PORTB 2
    ROR #PORTC #PORTC 1
  END
END
