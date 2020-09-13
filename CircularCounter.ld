LDmicro
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x0
CRYSTAL=16000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILER=

VAR LIST
    1 bytes C0 	Now not used !!!
    2 bytes Cnew 	Now not used !!!
    1 bytes T0 	Now not used !!!
    2 bytes Tnew 	Now not used !!!
END

IO LIST
    Y0 at 21 0 0
END

PROGRAM
RUNG 1
  TCY T0 500000 0
  CTC C0 9 0 /
  COIL Y0 0 0 0 0
END
