   0:# INIT TABLES
   1:INIT TABLE signed 1 byte char7seg[129] := {63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 119, 124, 57, 94, 121, 113, 191, 134, 219, 207, 230, 237, 253, 135, 255, 239, 247, 252, 185, 222, 249, 241, 0, 176, 34, 78, 109, 210, 218, 32, 57, 15, 114, 112, 12, 64, 128, 82, 63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 9, 13, 97, 65, 67, 211, 159, 119, 124, 57, 94, 121, 113, 61, 116, 48, 30, 117, 56, 85, 84, 92, 115, 103, 51, 109, 120, 62, 28, 106, 118, 110, 91, 57, 100, 15, 35, 8, 32, 95, 124, 88, 94, 123, 113, 111, 116, 16, 14, 117, 24, 85, 84, 92, 115, 103, 80, 109, 120, 62, 28, 106, 118, 110, 91, 57, 48, 15, 1, 0, 99}
   2:# INIT VARS
   3:if not '$once_0_INIT_VARS' {
   4:    set bit '$once_0_INIT_VARS'
   5:    let var 'C0' := 0
   6:}
  11:# 
  12:# ======= START RUNG 1 =======
  13:LabelRung1:
  14:
  15:set bit '$rung_top'
  17:# start series [
  18:# ELEM_MOVE
  19:if '$rung_top' {
  20:    let var '#TRISB' := 0
  21:}
  23:# ] finish series
  24:# 
  25:# ======= START RUNG 2 =======
  26:LabelRung2:
  27:
  28:set bit '$rung_top'
  30:# start series [
  31:# ELEM_CONTACTS
  32:if 'X0' {
  33:    clear bit '$rung_top'
  34:}
  36:# ELEM_ONE_SHOT_RISING
  37:if '$rung_top' {
  38:    if '$once_1_ONE_SHOT_RISING_' {
  39:        clear bit '$rung_top'
  40:    } else {
  41:        set bit '$once_1_ONE_SHOT_RISING_'
  42:    }
  43:} else {
  44:    clear bit '$once_1_ONE_SHOT_RISING_'
  45:}
  47:# ELEM_CTC
  48:if '$rung_top' {
  49:    clear bit '$rung_top'
  50:    if not '$once_2_CTC_C0' {
  51:        set bit '$once_2_CTC_C0'
  52:        increment 'C0'
  53:        if 'C0' > '15' {
  54:            let var 'C0' := 0
  55:            set bit '$rung_top'
  56:        }
  57:    }
  58:} else {
  59:    clear bit '$once_2_CTC_C0'
  60:}
  62:# ] finish series
  63:# 
  64:# ======= START RUNG 3 =======
  65:LabelRung3:
  66:
  67:set bit '$rung_top'
  69:# start series [
  70:# ELEM_7SEG
  71:if '$rung_top' {
  72:    let var '$scratch' := 176
  73:    if 'C0' == '$scratch' {
  74:        let var 'C0' := 128
  75:    } else {
  76:        if 'C0' < '0' {
  77:            let var 'C0' := 32
  78:        } else {
  79:            if 'C0' < '129' {
  80:            } else {
  81:                let var 'C0' := 32
  82:            }
  83:        }
  84:    }
  85:    let var '$scratch' := 'char7seg[C0]'
  86:    let var '#PORTB' := '$scratch'
  87:}
  89:# ] finish series
  90:LabelRung4:
  91:
  92:# Latest INT_OP here
