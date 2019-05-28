   0:# INIT TABLES
   1:INIT TABLE signed 1 byte char7seg[129] := {63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 119, 124, 57, 94, 121, 113, 191, 134, 219, 207, 230, 237, 253, 135, 255, 239, 247, 252, 185, 222, 249, 241, 0, 176, 34, 78, 109, 210, 218, 32, 57, 15, 114, 112, 12, 64, 128, 82, 63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 9, 13, 97, 65, 67, 211, 159, 119, 124, 57, 94, 121, 113, 61, 116, 48, 30, 117, 56, 85, 84, 92, 115, 103, 51, 109, 120, 62, 28, 106, 118, 110, 91, 57, 100, 15, 35, 8, 32, 95, 124, 88, 94, 123, 113, 111, 116, 16, 14, 117, 24, 85, 84, 92, 115, 103, 80, 109, 120, 62, 28, 106, 118, 110, 91, 57, 48, 15, 1, 0, 99}
   2:# INIT VARS
   3:if not '$once_0_INIT_VARS' {
   4:    set bit '$once_0_INIT_VARS'
   5:    let var 'C0' := 15
   6:}
  13:# 
  14:# ======= START RUNG 1 =======
  15:LabelRung1:
  16:
  17:set bit '$rung_top'
  19:# start series [
  20:# ELEM_ONE_SHOT_RISING
  21:if '$rung_top' {
  22:    if '$once_1_ONE_SHOT_RISING_' {
  23:        clear bit '$rung_top'
  24:    } else {
  25:        set bit '$once_1_ONE_SHOT_RISING_'
  26:    }
  27:} else {
  28:    clear bit '$once_1_ONE_SHOT_RISING_'
  29:}
  31:# ELEM_MOVE
  32:if '$rung_top' {
  33:    let var '#TRISB' := 0
  34:}
  36:# ] finish series
  37:# 
  38:# ======= START RUNG 2 =======
  39:LabelRung2:
  40:
  41:set bit '$rung_top'
  43:# start series [
  44:# ELEM_CONTACTS
  45:if 'Xstart' {
  46:    clear bit '$rung_top'
  47:}
  49:# ELEM_COIL
  50:if '$rung_top' {
  51:    set bit 'Rstart'
  52:}
  54:# ] finish series
  55:# 
  56:# ======= START RUNG 3 =======
  57:LabelRung3:
  58:
  59:set bit '$rung_top'
  61:# start series [
  62:# ELEM_CONTACTS
  63:if 'Xreset' {
  64:    clear bit '$rung_top'
  65:}
  67:# start parallel [
  68:let bit '$parThis_0' := '$rung_top'
  69:# ELEM_COIL
  70:if '$parThis_0' {
  71:    clear bit 'Rstart'
  72:}
  74:# ELEM_RES
  75:if '$rung_top' {
  76:    let var 'C0' := 15
  77:}
  79:# ] finish parallel
  80:# ] finish series
  81:# 
  82:# ======= START RUNG 4 =======
  83:LabelRung4:
  84:
  85:set bit '$rung_top'
  87:# start series [
  88:# ELEM_CONTACTS
  89:if not 'Rstart' {
  90:    clear bit '$rung_top'
  91:}
  93:# ELEM_TCY T0 500000
  94:if '$rung_top' {
  95:    if 'T0' < '50' {
  96:        increment 'T0'
  97:    } else {
  98:        let var 'T0' := 0
  99:        if not '$once_2_TCY_T0' {
 100:            set bit '$once_2_TCY_T0'
 101:        } else {
 102:            clear bit '$once_2_TCY_T0'
 103:        }
 104:    }
 105:    if not '$once_2_TCY_T0' {
 106:        clear bit '$rung_top'
 107:    }
 108:} else {
 109:    let var 'T0' := 0
 110:}
 112:# ELEM_CTD
 113:if '$rung_top' {
 114:    if not '$once_3_CTD_C0' {
 115:        set bit '$once_3_CTD_C0'
 116:        if 'C0' > '0' {
 117:            decrement 'C0'
 118:        }
 119:    }
 120:} else {
 121:    clear bit '$once_3_CTD_C0'
 122:}
 123:if 'C0' > '0' {
 124:    set bit '$rung_top'
 125:} else {
 126:    clear bit '$rung_top'
 127:}
 129:# ELEM_CONTACTS
 130:if not 'Rstart' {
 131:    clear bit '$rung_top'
 132:}
 134:# ELEM_COIL
 135:let bit 'Y0' := '$rung_top'
 137:# ] finish series
 138:# 
 139:# ======= START RUNG 5 =======
 140:LabelRung5:
 141:
 142:set bit '$rung_top'
 144:# start series [
 145:# ELEM_7SEG
 146:if '$rung_top' {
 147:    let var '$scratch' := 176
 148:    if 'C0' == '$scratch' {
 149:        let var 'C0' := 128
 150:    } else {
 151:        if 'C0' < '0' {
 152:            let var 'C0' := 32
 153:        } else {
 154:            if 'C0' < '129' {
 155:            } else {
 156:                let var 'C0' := 32
 157:            }
 158:        }
 159:    }
 160:    let var '$scratch' := 'char7seg[C0]'
 161:    let var '#PORTB' := '$scratch'
 162:}
 164:# ] finish series
 165:LabelRung6:
 166:
 167:# Latest INT_OP here
