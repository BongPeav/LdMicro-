LDmicro0.2
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\PWL_LM35\LM35.hex

VAR LIST
    1 bytes #TRISB
    1 bytes 10 	Now not used !!!
    2 bytes 150
    1 bytes 18 	Now not used !!!
    1 bytes 2 	Now not used !!!
    1 bytes 20 	Now not used !!!
    2 bytes 200 	Now not used !!!
    1 bytes 8 	Now not used !!!
    1 bytes 80 	Now not used !!!
    1 bytes T0
    1 bytes T1 	Now not used !!!
    2 bytes Tnew 	Now not used !!!
    2 bytes data
    2 bytes dest 	Now not used !!!
    2 bytes result 	Now not used !!!
    2 bytes src 	Now not used !!!
    2 bytes xvar 	Now not used !!!
    2 bytes yvar 	Now not used !!!
END

IO LIST
    Yalert at 21 0 0
    ADC0 at 2 0 0
END

PROGRAM
RUNG 1
  MOVE #TRISB 0
END
RUNG 2
  TCY T0 500000 0
  COIL Ready 0 0 0 0
END
RUNG 3
  CONTACTS Ready 0 0
  READ_ADC ADC0 0
END
RUNG 4
  PIECEWISE_LINEAR data ADC0 3 0 0 150 75 300 150 temp
END
RUNG 5
  CONTACTS Ready 0 0
  FORMATTED_STRING data 29 116 101 109 112 101 114 97 116 117 114 101 32 102 114 111 109 32 76 77 51 53 58 32 92 51 92 114 92 110
END
RUNG 6
  GRT data 40
  COIL Yalert 0 0 0 0
END
