LDmicro
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x0
CRYSTAL=16000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz

VAR LIST
    2 bytes RT0 	Now not used !!!
    2 bytes T0 	Now not used !!!
    1 bytes Tnew 	Now not used !!!
    2 bytes dest 	Now not used !!!
    2 bytes src 	Now not used !!!
END

IO LIST
    X0 at 0 0 0
    X1 at 0 0 0
    Y0 at 0 0 0
END

PROGRAM
RUNG 1
  CONTACTS X0 0 0
  RTO T0 5000000 0
  COIL Y0 0 0 0 0
END
RUNG 2
  CONTACTS X1 0 0
  MOVE T0 0
END
