   0:# INIT TABLES
   7:# 
   8:# ======= START RUNG 1 =======
   9:LabelRung1:
  10:
  11:set bit '$rung_top'
  13:# start series [
  14:# ELEM_UART_RECV_AVAIL
  15:if '$rung_top' {
  16:    '$rung_top' = is uart receive data available ?
  17:}
  19:# ELEM_COIL
  20:let bit 'Ruart' := '$rung_top'
  22:# ] finish series
  23:# 
  24:# ======= START RUNG 2 =======
  25:LabelRung2:
  26:
  27:set bit '$rung_top'
  29:# start series [
  30:# ELEM_CONTACTS
  31:if not 'Ruart' {
  32:    clear bit '$rung_top'
  33:}
  35:# start parallel [
  36:clear bit '$parOut_0'
  37:let bit '$parThis_0' := '$rung_top'
  38:# ELEM_UART_RECV
  39:if '$parThis_0' {
  40:    '$parThis_0' = is uart receive data available ?
  41:    if '$parThis_0' {
  42:        let var 'rcv' := 0
  43:        uart recv into 'rcv[+0]'
  44:    }
  45:}
  47:if '$parThis_0' {
  48:    set bit '$parOut_0'
  49:}
  50:let bit '$parThis_0' := '$rung_top'
  51:# ELEM_UART_SEND
  52:if '$parThis_0' {
  53:    uart send from 'rcv[+0]'
  54:}
  55:'$parThis_0' = is uart busy to send ?
  57:if '$parThis_0' {
  58:    set bit '$parOut_0'
  59:}
  60:let bit '$rung_top' := '$parOut_0'
  61:# ] finish parallel
  62:# ] finish series
  63:# 
  64:# ======= START RUNG 3 =======
  65:LabelRung3:
  66:
  67:set bit '$rung_top'
  69:# start series [
  70:# start parallel [
  71:# ELEM_MOVE
  72:if '$rung_top' {
  73:    let var 'CR' := 13
  74:}
  76:# ELEM_MOVE
  77:if '$rung_top' {
  78:    let var 'LF' := 10
  79:}
  81:# ] finish parallel
  82:# ] finish series
  83:# 
  84:# ======= START RUNG 4 =======
  85:LabelRung4:
  86:
  87:set bit '$rung_top'
  89:# start series [
  90:# ELEM_CONTACTS
  91:if not 'Ruart' {
  92:    clear bit '$rung_top'
  93:}
  95:# start parallel [
  96:# ELEM_SHIFT_REGISTER
  97:if '$rung_top' {
  98:    if not '$once_0_SHIFT_REGISTER_char' {
  99:        let var 'char2' := 'char1'
 100:        let var 'char1' := 'char0'
 101:    }
 102:}
 103:let bit '$once_0_SHIFT_REGISTER_char' := '$rung_top'
 105:# ELEM_MOVE
 106:if '$rung_top' {
 107:    let var 'char0' := 'rcv'
 108:}
 110:# ] finish parallel
 111:# ] finish series
 112:# 
 113:# ======= START RUNG 5 =======
 114:LabelRung5:
 115:
 116:set bit '$rung_top'
 118:# start series [
 119:# ELEM_EQU
 120:if '$rung_top' {
 121:    if 'char0' != ''0'' {
 122:        clear bit '$rung_top'
 123:    }
 124:}
 126:# ELEM_ONE_SHOT_RISING
 127:if '$rung_top' {
 128:    if '$once_1_ONE_SHOT_RISING_' {
 129:        clear bit '$rung_top'
 130:    } else {
 131:        set bit '$once_1_ONE_SHOT_RISING_'
 132:    }
 133:} else {
 134:    clear bit '$once_1_ONE_SHOT_RISING_'
 135:}
 137:# start parallel [
 138:clear bit '$parOut_1'
 139:let bit '$parThis_1' := '$rung_top'
 140:# ELEM_UART_SEND
 141:if '$parThis_1' {
 142:    uart send from 'CR[+0]'
 143:}
 144:'$parThis_1' = is uart busy to send ?
 146:if '$parThis_1' {
 147:    set bit '$parOut_1'
 148:}
 149:let bit '$parThis_1' := '$rung_top'
 150:# ELEM_UART_SEND
 151:if '$parThis_1' {
 152:    uart send from 'LF[+0]'
 153:}
 154:'$parThis_1' = is uart busy to send ?
 156:if '$parThis_1' {
 157:    set bit '$parOut_1'
 158:}
 159:let bit '$parThis_1' := '$rung_top'
 160:# ELEM_UART_SEND
 161:if '$parThis_1' {
 162:    uart send from 'char2[+0]'
 163:}
 164:'$parThis_1' = is uart busy to send ?
 166:if '$parThis_1' {
 167:    set bit '$parOut_1'
 168:}
 169:let bit '$parThis_1' := '$rung_top'
 170:# ELEM_UART_SEND
 171:if '$parThis_1' {
 172:    uart send from 'char1[+0]'
 173:}
 174:'$parThis_1' = is uart busy to send ?
 176:if '$parThis_1' {
 177:    set bit '$parOut_1'
 178:}
 179:let bit '$rung_top' := '$parOut_1'
 180:# ] finish parallel
 181:# ] finish series
 182:LabelRung6:
 183:
 184:# Latest INT_OP here
