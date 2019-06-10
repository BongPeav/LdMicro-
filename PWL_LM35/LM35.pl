   0:# INIT TABLES
   8:# 
   9:# ======= START RUNG 1 =======
  10:LabelRung1:
  11:
  12:set bit '$rung_top'
  14:# start series [
  15:# ELEM_MOVE
  16:if '$rung_top' {
  17:    let var '#TRISB' := 0
  18:}
  20:# ] finish series
  21:# 
  22:# ======= START RUNG 2 =======
  23:LabelRung2:
  24:
  25:set bit '$rung_top'
  27:# start series [
  28:# ELEM_TCY T0 500000
  29:if '$rung_top' {
  30:    if 'T0' < '50' {
  31:        increment 'T0'
  32:    } else {
  33:        let var 'T0' := 0
  34:        if not '$once_0_TCY_T0' {
  35:            set bit '$once_0_TCY_T0'
  36:        } else {
  37:            clear bit '$once_0_TCY_T0'
  38:        }
  39:    }
  40:    if not '$once_0_TCY_T0' {
  41:        clear bit '$rung_top'
  42:    }
  43:} else {
  44:    let var 'T0' := 0
  45:}
  47:# ELEM_COIL
  48:let bit 'Ready' := '$rung_top'
  50:# ] finish series
  51:# 
  52:# ======= START RUNG 3 =======
  53:LabelRung3:
  54:
  55:set bit '$rung_top'
  57:# start series [
  58:# ELEM_CONTACTS
  59:if not 'Ready' {
  60:    clear bit '$rung_top'
  61:}
  63:# ELEM_READ_ADC
  64:if '$rung_top' {
  65:    read adc 'ADC0', refs is '0'
  66:}
  68:# ] finish series
  69:# 
  70:# ======= START RUNG 4 =======
  71:LabelRung4:
  72:
  73:set bit '$rung_top'
  75:# start series [
  76:# ELEM_PIECEWISE_LINEAR
  77:if '$rung_top' {
  78:    # PWL 2
  79:    clear bit '$scratch'
  80:    if 'ADC0' < '301' {
  81:        set bit '$scratch'
  82:    }
  83:    if '$scratch' {
  84:        let var 'data' := 'ADC0' - '150'
  85:        let var 'data' := 'data' * '75'
  86:        let var 'data' := 'data' / '150'
  87:        let var 'data' := 'data' + '75'
  88:    }
  89:    # PWL 1
  90:    clear bit '$scratch'
  91:    if 'ADC0' < '151' {
  92:        set bit '$scratch'
  93:    }
  94:    if '$scratch' {
  95:        let var 'data' := 'ADC0' - '0'
  96:        let var 'data' := 'data' * '75'
  97:        let var 'data' := 'data' / '150'
  98:        let var 'data' := 'data' + '0'
  99:    }
 100:}
 102:# ] finish series
 103:# 
 104:# ======= START RUNG 5 =======
 105:LabelRung5:
 106:
 107:set bit '$rung_top'
 109:# start series [
 110:# ELEM_CONTACTS
 111:if not 'Ready' {
 112:    clear bit '$rung_top'
 113:}
 115:# ELEM_FORMATTED_STRING
 116:if '$rung_top' {
 117:    if not '$once_1_FMTD_STR_' {
 118:        set bit '$once_1_FMTD_STR_'
 119:        let var '$fmtd_0_seq' := 0
 120:        set bit '$fmtd_3_doSend'
 121:    }
 122:} else {
 123:    clear bit '$once_1_FMTD_STR_'
 124:}
 125:let var '$seqScratch' := '$fmtd_0_seq'
 126:if '$fmtd_0_seq' < '28' {
 127:} else {
 128:    let var '$seqScratch' := -1
 129:}
 130:if '$fmtd_3_doSend' {
 131:    clear bit '$scratch'
 132:    '$scratch' = is uart ready to send ?
 133:    if not '$scratch' {
 134:        let var '$seqScratch' := -1
 135:    }
 136:}
 137:let var '$scratch' := 0
 138:if '$scratch' == '$seqScratch' {
 139:    let var '$charToUart' := 116
 140:}
 141:let var '$scratch' := 1
 142:if '$scratch' == '$seqScratch' {
 143:    let var '$charToUart' := 101
 144:}
 145:let var '$scratch' := 2
 146:if '$scratch' == '$seqScratch' {
 147:    let var '$charToUart' := 109
 148:}
 149:let var '$scratch' := 3
 150:if '$scratch' == '$seqScratch' {
 151:    let var '$charToUart' := 112
 152:}
 153:let var '$scratch' := 4
 154:if '$scratch' == '$seqScratch' {
 155:    let var '$charToUart' := 101
 156:}
 157:let var '$scratch' := 5
 158:if '$scratch' == '$seqScratch' {
 159:    let var '$charToUart' := 114
 160:}
 161:let var '$scratch' := 6
 162:if '$scratch' == '$seqScratch' {
 163:    let var '$charToUart' := 97
 164:}
 165:let var '$scratch' := 7
 166:if '$scratch' == '$seqScratch' {
 167:    let var '$charToUart' := 116
 168:}
 169:let var '$scratch' := 8
 170:if '$scratch' == '$seqScratch' {
 171:    let var '$charToUart' := 117
 172:}
 173:let var '$scratch' := 9
 174:if '$scratch' == '$seqScratch' {
 175:    let var '$charToUart' := 114
 176:}
 177:let var '$scratch' := 10
 178:if '$scratch' == '$seqScratch' {
 179:    let var '$charToUart' := 101
 180:}
 181:let var '$scratch' := 11
 182:if '$scratch' == '$seqScratch' {
 183:    let var '$charToUart' := 32
 184:}
 185:let var '$scratch' := 12
 186:if '$scratch' == '$seqScratch' {
 187:    let var '$charToUart' := 102
 188:}
 189:let var '$scratch' := 13
 190:if '$scratch' == '$seqScratch' {
 191:    let var '$charToUart' := 114
 192:}
 193:let var '$scratch' := 14
 194:if '$scratch' == '$seqScratch' {
 195:    let var '$charToUart' := 111
 196:}
 197:let var '$scratch' := 15
 198:if '$scratch' == '$seqScratch' {
 199:    let var '$charToUart' := 109
 200:}
 201:let var '$scratch' := 16
 202:if '$scratch' == '$seqScratch' {
 203:    let var '$charToUart' := 32
 204:}
 205:let var '$scratch' := 17
 206:if '$scratch' == '$seqScratch' {
 207:    let var '$charToUart' := 76
 208:}
 209:let var '$scratch' := 18
 210:if '$scratch' == '$seqScratch' {
 211:    let var '$charToUart' := 77
 212:}
 213:let var '$scratch' := 19
 214:if '$scratch' == '$seqScratch' {
 215:    let var '$charToUart' := 51
 216:}
 217:let var '$scratch' := 20
 218:if '$scratch' == '$seqScratch' {
 219:    let var '$charToUart' := 53
 220:}
 221:let var '$scratch' := 21
 222:if '$scratch' == '$seqScratch' {
 223:    let var '$charToUart' := 58
 224:}
 225:let var '$scratch' := 22
 226:if '$scratch' == '$seqScratch' {
 227:    let var '$charToUart' := 32
 228:}
 229:let var '$scratch' := 23
 230:clear bit '$scratch'
 231:if '$scratch' == '$seqScratch' {
 232:    set bit '$scratch'
 233:}
 234:if '$scratch' {
 235:    let var '$fmtd_1_convertState' := 'data'
 236:    set bit '$fmtd_2_isLeadingZero'
 237:    let var '$scratch' := 100
 238:    let var '$charToUart' := '$fmtd_1_convertState' / '$scratch'
 239:    let var '$scratch' := '$scratch' * '$charToUart'
 240:    let var '$fmtd_1_convertState' := '$fmtd_1_convertState' - '$scratch'
 241:    let var '$scratch' := 48
 242:    let var '$charToUart' := '$charToUart' + '$scratch'
 243:    if '$scratch' == '$charToUart' {
 244:        if '$fmtd_2_isLeadingZero' {
 245:            let var '$charToUart' := 32
 246:        }
 247:    } else {
 248:        clear bit '$fmtd_2_isLeadingZero'
 249:    }
 250:}
 251:let var '$scratch' := 24
 252:clear bit '$scratch'
 253:if '$scratch' == '$seqScratch' {
 254:    set bit '$scratch'
 255:}
 256:if '$scratch' {
 257:    let var '$scratch' := 10
 258:    let var '$charToUart' := '$fmtd_1_convertState' / '$scratch'
 259:    let var '$scratch' := '$scratch' * '$charToUart'
 260:    let var '$fmtd_1_convertState' := '$fmtd_1_convertState' - '$scratch'
 261:    let var '$scratch' := 48
 262:    let var '$charToUart' := '$charToUart' + '$scratch'
 263:    if '$scratch' == '$charToUart' {
 264:        if '$fmtd_2_isLeadingZero' {
 265:            let var '$charToUart' := 32
 266:        }
 267:    } else {
 268:        clear bit '$fmtd_2_isLeadingZero'
 269:    }
 270:}
 271:let var '$scratch' := 25
 272:clear bit '$scratch'
 273:if '$scratch' == '$seqScratch' {
 274:    set bit '$scratch'
 275:}
 276:if '$scratch' {
 277:    let var '$scratch' := 1
 278:    let var '$charToUart' := '$fmtd_1_convertState' / '$scratch'
 279:    let var '$scratch' := '$scratch' * '$charToUart'
 280:    let var '$fmtd_1_convertState' := '$fmtd_1_convertState' - '$scratch'
 281:    let var '$scratch' := 48
 282:    let var '$charToUart' := '$charToUart' + '$scratch'
 283:}
 284:let var '$scratch' := 26
 285:if '$scratch' == '$seqScratch' {
 286:    let var '$charToUart' := 13
 287:}
 288:let var '$scratch' := 27
 289:if '$scratch' == '$seqScratch' {
 290:    let var '$charToUart' := 10
 291:}
 292:if '$seqScratch' < '0' {
 293:} else {
 294:    if '$fmtd_3_doSend' {
 295:        uart send from '$charToUart[+0]'
 296:        increment '$fmtd_0_seq'
 297:    }
 298:}
 299:clear bit '$rung_top'
 300:if '$fmtd_0_seq' < '28' {
 301:    if '$fmtd_3_doSend' {
 302:        set bit '$rung_top'
 303:    }
 304:} else {
 305:    clear bit '$fmtd_3_doSend'
 306:}
 308:# ] finish series
 309:# 
 310:# ======= START RUNG 6 =======
 311:LabelRung6:
 312:
 313:set bit '$rung_top'
 315:# start series [
 316:# ELEM_GRT
 317:if '$rung_top' {
 318:    if 'data' <= '40' {
 319:        clear bit '$rung_top'
 320:    }
 321:}
 323:# ELEM_COIL
 324:let bit 'Yalert' := '$rung_top'
 326:# ] finish series
 327:LabelRung7:
 328:
 329:# Latest INT_OP here
