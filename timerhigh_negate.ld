LDmicro
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\TimerHigh\timerhigh_negate.hex
COMPILER=

VAR LIST
    2 bytes T0
    2 bytes Tnew 	Now not used !!!
END

IO LIST
    X0 at 13 0 0
    Y0 at 21 0 0
    Y1 at 22 0 0
    Y2 at 23 0 0
    Y3 at 24 0 0
END

PROGRAM
RUNG 1
  CONTACTS X0 1 1
  THI T0 5000000 0
  COIL Y0 0 0 0 0
END
RUNG 2
  OPEN
  COIL Y1 0 0 0 0
END
RUNG 3
  OPEN
  COIL Y2 0 0 0 0
END
RUNG 4
  OPEN
  COIL Y3 0 0 0 0
END
