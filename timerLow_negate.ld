LDmicro
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x0
CRYSTAL=16000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILER=

VAR LIST
    2 bytes T0 	Now not used !!!
    2 bytes Tnew 	Now not used !!!
END

IO LIST
    X0 at 13 0 0
    Y0 at 21 0 0
END

PROGRAM
RUNG 1
  CONTACTS X0 1 1
  TLO T0 10000000 0
  COIL Y0 0 0 0 0
END
