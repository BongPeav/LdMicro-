   0:# INIT TABLES
   1:INIT TABLE signed 1 byte char7seg[129] := {63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 119, 124, 57, 94, 121, 113, 191, 134, 219, 207, 230, 237, 253, 135, 255, 239, 247, 252, 185, 222, 249, 241, 0, 176, 34, 78, 109, 210, 218, 32, 57, 15, 114, 112, 12, 64, 128, 82, 63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 9, 13, 97, 65, 67, 211, 159, 119, 124, 57, 94, 121, 113, 61, 116, 48, 30, 117, 56, 85, 84, 92, 115, 103, 51, 109, 120, 62, 28, 106, 118, 110, 91, 57, 100, 15, 35, 8, 32, 95, 124, 88, 94, 123, 113, 111, 116, 16, 14, 117, 24, 85, 84, 92, 115, 103, 80, 109, 120, 62, 28, 106, 118, 110, 91, 57, 48, 15, 1, 0, 99}
   7:# 
   8:# ======= START RUNG 1 =======
   9:LabelRung1:
  10:
  11:set bit '$rung_top'
  13:# start series [
  14:# ELEM_ONE_SHOT_RISING
  15:if '$rung_top' {
  16:    if '$once_0_ONE_SHOT_RISING_' {
  17:        clear bit '$rung_top'
  18:    } else {
  19:        set bit '$once_0_ONE_SHOT_RISING_'
  20:    }
  21:} else {
  22:    clear bit '$once_0_ONE_SHOT_RISING_'
  23:}
  25:# ELEM_MOVE
  26:if '$rung_top' {
  27:    let var '#TRISB' := 0
  28:}
  30:# ] finish series
  31:# 
  32:# ======= START RUNG 2 =======
  33:LabelRung2:
  34:
  35:set bit '$rung_top'
  37:# start series [
  38:# ELEM_CONTACTS
  39:if 'Xwrite' {
  40:    clear bit '$rung_top'
  41:}
  43:# start parallel [
  44:# ELEM_MOVE
  45:if '$rung_top' {
  46:    let var 'E1' := 5
  47:}
  49:# ELEM_PERSIST
  50:if '$rung_top' {
  51:    if not '$once_1_PERSIST_E1' {
  52:        clear bit '$scratch'
  53:        set bit '$scratch' if EEPROM busy
  54:        if not '$scratch' {
  55:            set bit '$once_1_PERSIST_E1'
  56:            read EEPROM[0,0+1] into 'E1'
  57:        }
  58:    } else {
  59:        clear bit '$scratch'
  60:        set bit '$scratch' if EEPROM busy
  61:        if not '$scratch' {
  62:            read EEPROM[0,0+1] into '$tmpVar24bit'
  63:            if '$tmpVar24bit' == 'E1' {
  64:            } else {
  65:                write 'E1' into EEPROM[0,0+1]
  66:            }
  67:        }
  68:    }
  69:}
  71:# ] finish parallel
  72:# ] finish series
  73:# 
  74:# ======= START RUNG 3 =======
  75:LabelRung3:
  76:
  77:set bit '$rung_top'
  79:# start series [
  80:# ELEM_CONTACTS
  81:if 'Xread' {
  82:    clear bit '$rung_top'
  83:}
  85:# ELEM_MOVE
  86:if '$rung_top' {
  87:    let var 'temp' := 'E1'
  88:}
  90:# ] finish series
  91:# 
  92:# ======= START RUNG 4 =======
  93:LabelRung4:
  94:
  95:set bit '$rung_top'
  97:# start series [
  98:# ELEM_7SEG
  99:if '$rung_top' {
 100:    let var '$scratch' := 176
 101:    if 'temp' == '$scratch' {
 102:        let var 'temp' := 128
 103:    } else {
 104:        if 'temp' < '0' {
 105:            let var 'temp' := 32
 106:        } else {
 107:            if 'temp' < '129' {
 108:            } else {
 109:                let var 'temp' := 32
 110:            }
 111:        }
 112:    }
 113:    let var '$scratch' := 'char7seg[temp]'
 114:    let var '#PORTB' := '$scratch'
 115:}
 117:# ] finish series
 118:LabelRung5:
 119:
 120:# Latest INT_OP here
