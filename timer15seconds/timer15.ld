LDmicro
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\timer15seconds\timer15.hex
COMPILER=

VAR LIST
    1 bytes #PORTB
    1 bytes #TRISB
    1 bytes C0
    2 bytes Cnew 	Now not used !!!
    1 bytes T0
    2 bytes Tnew 	Now not used !!!
  129 bytes char7seg
    1 bytes char7seg[0]
    2 bytes dest 	Now not used !!!
    2 bytes src 	Now not used !!!
END

IO LIST
    Xreset at 2 0 0
    Xstart at 7 0 0
    Y0 at 16 0 0
END

PROGRAM
RUNG 1
  OSR
  MOVE #TRISB 0x00
END
RUNG 2
  CONTACTS Xstart 1 1
  COIL Rstart 0 1 0 0
END
RUNG 3
  CONTACTS Xreset 1 1
  PARALLEL
    COIL Rstart 0 0 1 0
    RES C0
  END
END
RUNG 4
  CONTACTS Rstart 0 0
  TCY T0 500000 0
  CTD C0 0 15 /
  CONTACTS Rstart 0 0
  COIL Y0 0 0 0 0
END
RUNG 5
  7SEGMENTS #PORTB C0 C
END
