LDmicro
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x0
CRYSTAL=16000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz

VAR LIST
    2 bytes RT0 	Now not used !!!
    2 bytes T0 	Now not used !!!
    2 bytes T1 	Now not used !!!
    2 bytes Tnew 	Now not used !!!
    2 bytes dest 	Now not used !!!
    2 bytes new 	Now not used !!!
    2 bytes src 	Now not used !!!
END

IO LIST
    X0 at 0 0 0
    Xreset at 0 0 0
    Y0 at 0 0 0
END

PROGRAM
RUNG 1
  CONTACTS X0 0 1
  RTL T1 5000000 0
  COIL Y0 0 0 0 0
END
RUNG 2
  CONTACTS Xreset 0 0
  RES T1
END
