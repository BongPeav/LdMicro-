LDmicro
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\CTU\CTU.hex
COMPILER=

VAR LIST
    1 bytes C0
    2 bytes Cnew 	Now not used !!!
    1 bytes T0
    2 bytes Tnew 	Now not used !!!
END

IO LIST
    X0 at 13 0 0
    Xreset at 14 0 0
    Y0 at 21 0 0
END

PROGRAM
RUNG 1
  OSR
  TIME2COUNT T0 50000 0
END
RUNG 2
  CONTACTS X0 0 0
  CTU C0 T0 0 /
  COIL Y0 0 0 0 0
END
RUNG 3
  CONTACTS Xreset 0 0
  RES C0
END
