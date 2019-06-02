LDmicro0.2
MICRO=Microchip PIC16F876 28-PDIP or 28-SOIC
CYCLE=10000 us at Timer1, YPlcCycleDuty:0, ConfigurationWord(s):0x3F72
CRYSTAL=20000000 Hz
BAUD=9600 Hz, RATE=0 Hz, SPEED=0 Hz
COMPILED=D:\LDMicro\PIC16F876_BOARD\shiftReg\shiftReg.hex

VAR LIST
    1 bytes 0 	Now not used !!!
    1 bytes 10 	Now not used !!!
    1 bytes 13 	Now not used !!!
    2 bytes CR
    2 bytes LF
    2 bytes char 	Now not used !!!
    2 bytes char0
    2 bytes char0,char1,char2 	Now not used !!!
    2 bytes char1
    2 bytes char2
    2 bytes char3 	Now not used !!!
    2 bytes dest 	Now not used !!!
    2 bytes rcv
    2 bytes reg 	Now not used !!!
    2 bytes reg0 	Now not used !!!
    2 bytes reg1 	Now not used !!!
    2 bytes reg2 	Now not used !!!
    2 bytes reg3 	Now not used !!!
    2 bytes reg4 	Now not used !!!
    2 bytes reg5 	Now not used !!!
    2 bytes reg6 	Now not used !!!
    2 bytes src 	Now not used !!!
END

IO LIST
END

PROGRAM
RUNG 1
  UART_RECV_AVAIL
  COIL Ruart 0 0 0 0
END
RUNG 2
  CONTACTS Ruart 0 0
  PARALLEL
    UART_RECV rcv 1 0
    UART_SEND rcv 1 0
  END
END
RUNG 3
  PARALLEL
    MOVE CR 13
    MOVE LF 10
  END
END
RUNG 4
  CONTACTS Ruart 0 0
  PARALLEL
    SHIFT_REGISTER char 3
    MOVE char0 rcv
  END
END
RUNG 5
  EQU char0 '0'
  OSR
  PARALLEL
    UART_SEND CR 1 0
    UART_SEND LF 1 0
    UART_SEND char2 1 0
    UART_SEND char1 1 0
  END
END
