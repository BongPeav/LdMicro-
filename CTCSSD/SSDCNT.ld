LDmicro
MICRO=Microchip PIC16F628 18-PDIP or 18-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F62
CRYSTAL=4000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\build5301\CTCSSD\SSDCNT.hex
COMPILER=

VAR LIST
    1 bytes #PORTB
    1 bytes #TRISB
    1 bytes C0
    2 bytes Cnew 	Now not used !!!
  129 bytes char7seg
    1 bytes char7seg[0]
    2 bytes dest 	Now not used !!!
    2 bytes src 	Now not used !!!
END

IO LIST
    X0 at 3 0 0
END

PROGRAM
RUNG 1
  MOVE #TRISB 0x00
END
RUNG 2
  CONTACTS X0 1 1
  OSR
  CTC C0 15 0 /
END
RUNG 3
  7SEGMENTS #PORTB C0 C
END
