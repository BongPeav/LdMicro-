   0:# INIT TABLES
   1:INIT TABLE signed 1 byte char7seg[129] := {63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 119, 124, 57, 94, 121, 113, 191, 134, 219, 207, 230, 237, 253, 135, 255, 239, 247, 252, 185, 222, 249, 241, 0, 176, 34, 78, 109, 210, 218, 32, 57, 15, 114, 112, 12, 64, 128, 82, 63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 9, 13, 97, 65, 67, 211, 159, 119, 124, 57, 94, 121, 113, 61, 116, 48, 30, 117, 56, 85, 84, 92, 115, 103, 51, 109, 120, 62, 28, 106, 118, 110, 91, 57, 100, 15, 35, 8, 32, 95, 124, 88, 94, 123, 113, 111, 116, 16, 14, 117, 24, 85, 84, 92, 115, 103, 80, 109, 120, 62, 28, 106, 118, 110, 91, 57, 48, 15, 1, 0, 99}
   7:# 
   8:# ======= START RUNG 1 =======
   9:LabelRung1:
  10:
  11:set bit '$rung_top'
  13:# start series [
  14:# ELEM_MOVE
  15:if '$rung_top' {
  16:    let var '#TRISB' := 0
  17:}
  19:# ] finish series
  20:# 
  21:# ======= START RUNG 2 =======
  22:LabelRung2:
  23:
  24:set bit '$rung_top'
  26:# start series [
  27:# ELEM_UART_RECV_AVAIL
  28:if '$rung_top' {
  29:    '$rung_top' = is uart receive data available ?
  30:}
  32:# start parallel [
  33:clear bit '$parOut_0'
  34:let bit '$parThis_0' := '$rung_top'
  35:# ELEM_UART_RECV
  36:if '$parThis_0' {
  37:    '$parThis_0' = is uart receive data available ?
  38:    if '$parThis_0' {
  39:        let var 'char' := 0
  40:        uart recv into 'char[+0]'
  41:    }
  42:}
  44:if '$parThis_0' {
  45:    set bit '$parOut_0'
  46:}
  47:let bit '$parThis_0' := '$rung_top'
  48:# ELEM_UART_SEND
  49:if '$parThis_0' {
  50:    uart send from 'char[+0]'
  51:}
  52:'$parThis_0' = is uart busy to send ?
  54:if '$parThis_0' {
  55:    set bit '$parOut_0'
  56:}
  57:let bit '$rung_top' := '$parOut_0'
  58:# ] finish parallel
  59:# ] finish series
  60:# 
  61:# ======= START RUNG 3 =======
  62:LabelRung3:
  63:
  64:set bit '$rung_top'
  66:# start series [
  67:# ELEM_PIECEWISE_LINEAR
  68:if '$rung_top' {
  69:    # PWL 15
  70:    clear bit '$scratch'
  71:    if 'char' < '103' {
  72:        set bit '$scratch'
  73:    }
  74:    if '$scratch' {
  75:        let var 'ssd' := 'char' - '101'
  76:        let var 'ssd' := 'ssd' * '1'
  77:        let var 'ssd' := 'ssd' / '1'
  78:        let var 'ssd' := 'ssd' + '14'
  79:    }
  80:    # PWL 14
  81:    clear bit '$scratch'
  82:    if 'char' < '102' {
  83:        set bit '$scratch'
  84:    }
  85:    if '$scratch' {
  86:        let var 'ssd' := 'char' - '100'
  87:        let var 'ssd' := 'ssd' * '1'
  88:        let var 'ssd' := 'ssd' / '1'
  89:        let var 'ssd' := 'ssd' + '13'
  90:    }
  91:    # PWL 13
  92:    clear bit '$scratch'
  93:    if 'char' < '101' {
  94:        set bit '$scratch'
  95:    }
  96:    if '$scratch' {
  97:        let var 'ssd' := 'char' - '99'
  98:        let var 'ssd' := 'ssd' * '1'
  99:        let var 'ssd' := 'ssd' / '1'
 100:        let var 'ssd' := 'ssd' + '12'
 101:    }
 102:    # PWL 12
 103:    clear bit '$scratch'
 104:    if 'char' < '100' {
 105:        set bit '$scratch'
 106:    }
 107:    if '$scratch' {
 108:        let var 'ssd' := 'char' - '98'
 109:        let var 'ssd' := 'ssd' * '1'
 110:        let var 'ssd' := 'ssd' / '1'
 111:        let var 'ssd' := 'ssd' + '11'
 112:    }
 113:    # PWL 11
 114:    clear bit '$scratch'
 115:    if 'char' < '99' {
 116:        set bit '$scratch'
 117:    }
 118:    if '$scratch' {
 119:        let var 'ssd' := 'char' - '97'
 120:        let var 'ssd' := 'ssd' * '1'
 121:        let var 'ssd' := 'ssd' / '1'
 122:        let var 'ssd' := 'ssd' + '10'
 123:    }
 124:    # PWL 10
 125:    clear bit '$scratch'
 126:    if 'char' < '98' {
 127:        set bit '$scratch'
 128:    }
 129:    if '$scratch' {
 130:        let var 'ssd' := 'char' - '57'
 131:        let var 'ssd' := 'ssd' * '1'
 132:        let var 'ssd' := 'ssd' / '40'
 133:        let var 'ssd' := 'ssd' + '9'
 134:    }
 135:    # PWL 9
 136:    clear bit '$scratch'
 137:    if 'char' < '58' {
 138:        set bit '$scratch'
 139:    }
 140:    if '$scratch' {
 141:        let var 'ssd' := 'char' - '56'
 142:        let var 'ssd' := 'ssd' * '1'
 143:        let var 'ssd' := 'ssd' / '1'
 144:        let var 'ssd' := 'ssd' + '8'
 145:    }
 146:    # PWL 8
 147:    clear bit '$scratch'
 148:    if 'char' < '57' {
 149:        set bit '$scratch'
 150:    }
 151:    if '$scratch' {
 152:        let var 'ssd' := 'char' - '55'
 153:        let var 'ssd' := 'ssd' * '1'
 154:        let var 'ssd' := 'ssd' / '1'
 155:        let var 'ssd' := 'ssd' + '7'
 156:    }
 157:    # PWL 7
 158:    clear bit '$scratch'
 159:    if 'char' < '56' {
 160:        set bit '$scratch'
 161:    }
 162:    if '$scratch' {
 163:        let var 'ssd' := 'char' - '54'
 164:        let var 'ssd' := 'ssd' * '1'
 165:        let var 'ssd' := 'ssd' / '1'
 166:        let var 'ssd' := 'ssd' + '6'
 167:    }
 168:    # PWL 6
 169:    clear bit '$scratch'
 170:    if 'char' < '55' {
 171:        set bit '$scratch'
 172:    }
 173:    if '$scratch' {
 174:        let var 'ssd' := 'char' - '53'
 175:        let var 'ssd' := 'ssd' * '1'
 176:        let var 'ssd' := 'ssd' / '1'
 177:        let var 'ssd' := 'ssd' + '5'
 178:    }
 179:    # PWL 5
 180:    clear bit '$scratch'
 181:    if 'char' < '54' {
 182:        set bit '$scratch'
 183:    }
 184:    if '$scratch' {
 185:        let var 'ssd' := 'char' - '52'
 186:        let var 'ssd' := 'ssd' * '1'
 187:        let var 'ssd' := 'ssd' / '1'
 188:        let var 'ssd' := 'ssd' + '4'
 189:    }
 190:    # PWL 4
 191:    clear bit '$scratch'
 192:    if 'char' < '53' {
 193:        set bit '$scratch'
 194:    }
 195:    if '$scratch' {
 196:        let var 'ssd' := 'char' - '51'
 197:        let var 'ssd' := 'ssd' * '1'
 198:        let var 'ssd' := 'ssd' / '1'
 199:        let var 'ssd' := 'ssd' + '3'
 200:    }
 201:    # PWL 3
 202:    clear bit '$scratch'
 203:    if 'char' < '52' {
 204:        set bit '$scratch'
 205:    }
 206:    if '$scratch' {
 207:        let var 'ssd' := 'char' - '50'
 208:        let var 'ssd' := 'ssd' * '1'
 209:        let var 'ssd' := 'ssd' / '1'
 210:        let var 'ssd' := 'ssd' + '2'
 211:    }
 212:    # PWL 2
 213:    clear bit '$scratch'
 214:    if 'char' < '51' {
 215:        set bit '$scratch'
 216:    }
 217:    if '$scratch' {
 218:        let var 'ssd' := 'char' - '49'
 219:        let var 'ssd' := 'ssd' * '1'
 220:        let var 'ssd' := 'ssd' / '1'
 221:        let var 'ssd' := 'ssd' + '1'
 222:    }
 223:    # PWL 1
 224:    clear bit '$scratch'
 225:    if 'char' < '50' {
 226:        set bit '$scratch'
 227:    }
 228:    if '$scratch' {
 229:        let var 'ssd' := 'char' - '48'
 230:        let var 'ssd' := 'ssd' * '1'
 231:        let var 'ssd' := 'ssd' / '1'
 232:        let var 'ssd' := 'ssd' + '0'
 233:    }
 234:}
 236:# ] finish series
 237:# 
 238:# ======= START RUNG 4 =======
 239:LabelRung4:
 240:
 241:set bit '$rung_top'
 243:# start series [
 244:# ELEM_7SEG
 245:if '$rung_top' {
 246:    let var '$scratch' := 176
 247:    if 'ssd' == '$scratch' {
 248:        let var 'ssd' := 128
 249:    } else {
 250:        if 'ssd' < '0' {
 251:            let var 'ssd' := 32
 252:        } else {
 253:            if 'ssd' < '129' {
 254:            } else {
 255:                let var 'ssd' := 32
 256:            }
 257:        }
 258:    }
 259:    let var '$scratch' := 'char7seg[ssd]'
 260:    let var '#PORTB' := '$scratch'
 261:}
 263:# ] finish series
 264:LabelRung5:
 265:
 266:# Latest INT_OP here
