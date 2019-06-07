   0:# INIT TABLES
   1:INIT TABLE signed 1 byte char7seg[129] := {63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 119, 124, 57, 94, 121, 113, 191, 134, 219, 207, 230, 237, 253, 135, 255, 239, 247, 252, 185, 222, 249, 241, 0, 176, 34, 78, 109, 210, 218, 32, 57, 15, 114, 112, 12, 64, 128, 82, 63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 9, 13, 97, 65, 67, 211, 159, 119, 124, 57, 94, 121, 113, 61, 116, 48, 30, 117, 56, 85, 84, 92, 115, 103, 51, 109, 120, 62, 28, 106, 118, 110, 91, 57, 100, 15, 35, 8, 32, 95, 124, 88, 94, 123, 113, 111, 116, 16, 14, 117, 24, 85, 84, 92, 115, 103, 80, 109, 120, 62, 28, 106, 118, 110, 91, 57, 48, 15, 1, 0, 99}
   2:# INIT TABLE: signed 0 bit char7seg[129] see above
   3:# INIT TABLE: signed 0 bit char7seg[129] see above
   4:# INIT TABLE: signed 0 bit char7seg[129] see above
   5:# INIT VARS
   6:if not '$once_0_INIT_VARS' {
   7:    set bit '$once_0_INIT_VARS'
   8:    let var 'C0' := 0
   9:}
  20:# 
  21:# ======= START RUNG 1 =======
  22:LabelRung1:
  23:
  24:set bit '$rung_top'
  26:# start series [
  27:# ELEM_TCY T0 2000
  28:if '$rung_top' {
  29:    if 'T0' < '2' {
  30:        increment 'T0'
  31:    } else {
  32:        let var 'T0' := 0
  33:        if not '$once_1_TCY_T0' {
  34:            set bit '$once_1_TCY_T0'
  35:        } else {
  36:            clear bit '$once_1_TCY_T0'
  37:        }
  38:    }
  39:    if not '$once_1_TCY_T0' {
  40:        clear bit '$rung_top'
  41:    }
  42:} else {
  43:    let var 'T0' := 0
  44:}
  46:# ELEM_ONE_SHOT_RISING
  47:if '$rung_top' {
  48:    if '$once_2_ONE_SHOT_RISING_' {
  49:        clear bit '$rung_top'
  50:    } else {
  51:        set bit '$once_2_ONE_SHOT_RISING_'
  52:    }
  53:} else {
  54:    clear bit '$once_2_ONE_SHOT_RISING_'
  55:}
  57:# ELEM_CTC
  58:if '$rung_top' {
  59:    clear bit '$rung_top'
  60:    if not '$once_3_CTC_C0' {
  61:        set bit '$once_3_CTC_C0'
  62:        increment 'C0'
  63:        if 'C0' > '4' {
  64:            let var 'C0' := 0
  65:            set bit '$rung_top'
  66:        }
  67:    }
  68:} else {
  69:    clear bit '$once_3_CTC_C0'
  70:}
  72:# ] finish series
  73:# 
  74:# ======= START RUNG 2 =======
  75:LabelRung2:
  76:
  77:set bit '$rung_top'
  79:# start series [
  80:# start parallel [
  81:# ELEM_MOVE
  82:if '$rung_top' {
  83:    let var '#TRISB' := 0
  84:}
  86:# ELEM_MOVE
  87:if '$rung_top' {
  88:    let var '#TRISC' := 240
  89:}
  91:# ] finish parallel
  92:# ] finish series
  93:# 
  94:# ======= START RUNG 3 =======
  95:LabelRung3:
  96:
  97:set bit '$rung_top'
  99:# start series [
 100:# ELEM_UART_RECV_AVAIL
 101:if '$rung_top' {
 102:    '$rung_top' = is uart receive data available ?
 103:}
 105:# ELEM_COIL
 106:let bit 'Ready' := '$rung_top'
 108:# ] finish series
 109:# 
 110:# ======= START RUNG 4 =======
 111:LabelRung4:
 112:
 113:set bit '$rung_top'
 115:# start series [
 116:# ELEM_CONTACTS
 117:if not 'Ready' {
 118:    clear bit '$rung_top'
 119:}
 121:# start parallel [
 122:clear bit '$parOut_0'
 123:let bit '$parThis_0' := '$rung_top'
 124:# ELEM_UART_RECV
 125:if '$parThis_0' {
 126:    '$parThis_0' = is uart receive data available ?
 127:    if '$parThis_0' {
 128:        let var 'char' := 0
 129:        uart recv into 'char[+0]'
 130:    }
 131:}
 133:if '$parThis_0' {
 134:    set bit '$parOut_0'
 135:}
 136:let bit '$parThis_0' := '$rung_top'
 137:# ELEM_UART_SEND
 138:if '$parThis_0' {
 139:    uart send from 'char[+0]'
 140:}
 141:'$parThis_0' = is uart busy to send ?
 143:if '$parThis_0' {
 144:    set bit '$parOut_0'
 145:}
 146:let bit '$rung_top' := '$parOut_0'
 147:# ] finish parallel
 148:# ] finish series
 149:# 
 150:# ======= START RUNG 5 =======
 151:LabelRung5:
 152:
 153:set bit '$rung_top'
 155:# start series [
 156:# ELEM_CONTACTS
 157:if not 'Ready' {
 158:    clear bit '$rung_top'
 159:}
 161:# start parallel [
 162:# ELEM_MOVE
 163:if '$rung_top' {
 164:    let var 'buf0' := 'char'
 165:}
 167:# ELEM_SHIFT_REGISTER
 168:if '$rung_top' {
 169:    if not '$once_4_SHIFT_REGISTER_buf' {
 170:        let var 'buf4' := 'buf3'
 171:        let var 'buf3' := 'buf2'
 172:        let var 'buf2' := 'buf1'
 173:        let var 'buf1' := 'buf0'
 174:    }
 175:}
 176:let bit '$once_4_SHIFT_REGISTER_buf' := '$rung_top'
 178:# ] finish parallel
 179:# ] finish series
 180:# 
 181:# ======= START RUNG 6 =======
 182:LabelRung6:
 183:
 184:set bit '$rung_top'
 186:# start series [
 187:# ELEM_EQU
 188:if '$rung_top' {
 189:    if 'C0' != '1' {
 190:        clear bit '$rung_top'
 191:    }
 192:}
 194:# ELEM_7SEG
 195:if '$rung_top' {
 196:    let var '$scratch' := 176
 197:    if 'buf4' == '$scratch' {
 198:        let var 'buf4' := 128
 199:    } else {
 200:        if 'buf4' < '0' {
 201:            let var 'buf4' := 32
 202:        } else {
 203:            if 'buf4' < '129' {
 204:            } else {
 205:                let var 'buf4' := 32
 206:            }
 207:        }
 208:    }
 209:    let var '$scratch' := 'char7seg[buf4]'
 210:    let var '#PORTB' := '$scratch'
 211:}
 213:# start parallel [
 214:# ELEM_MOVE
 215:if '$rung_top' {
 216:    let var '#PORTC' := 0
 217:}
 219:# ELEM_MOVE
 220:if '$rung_top' {
 221:    let var '#PORTC' := 1
 222:}
 224:# ] finish parallel
 225:# ] finish series
 226:# 
 227:# ======= START RUNG 7 =======
 228:LabelRung7:
 229:
 230:set bit '$rung_top'
 232:# start series [
 233:# ELEM_EQU
 234:if '$rung_top' {
 235:    if 'C0' != '2' {
 236:        clear bit '$rung_top'
 237:    }
 238:}
 240:# ELEM_7SEG
 241:if '$rung_top' {
 242:    let var '$scratch' := 176
 243:    if 'buf3' == '$scratch' {
 244:        let var 'buf3' := 128
 245:    } else {
 246:        if 'buf3' < '0' {
 247:            let var 'buf3' := 32
 248:        } else {
 249:            if 'buf3' < '129' {
 250:            } else {
 251:                let var 'buf3' := 32
 252:            }
 253:        }
 254:    }
 255:    let var '$scratch' := 'char7seg[buf3]'
 256:    let var '#PORTB' := '$scratch'
 257:}
 259:# start parallel [
 260:# ELEM_MOVE
 261:if '$rung_top' {
 262:    let var '#PORTC' := 0
 263:}
 265:# ELEM_MOVE
 266:if '$rung_top' {
 267:    let var '#PORTC' := 2
 268:}
 270:# ] finish parallel
 271:# ] finish series
 272:# 
 273:# ======= START RUNG 8 =======
 274:LabelRung8:
 275:
 276:set bit '$rung_top'
 278:# start series [
 279:# ELEM_EQU
 280:if '$rung_top' {
 281:    if 'C0' != '3' {
 282:        clear bit '$rung_top'
 283:    }
 284:}
 286:# ELEM_7SEG
 287:if '$rung_top' {
 288:    let var '$scratch' := 176
 289:    if 'buf2' == '$scratch' {
 290:        let var 'buf2' := 128
 291:    } else {
 292:        if 'buf2' < '0' {
 293:            let var 'buf2' := 32
 294:        } else {
 295:            if 'buf2' < '129' {
 296:            } else {
 297:                let var 'buf2' := 32
 298:            }
 299:        }
 300:    }
 301:    let var '$scratch' := 'char7seg[buf2]'
 302:    let var '#PORTB' := '$scratch'
 303:}
 305:# start parallel [
 306:# ELEM_MOVE
 307:if '$rung_top' {
 308:    let var '#PORTC' := 0
 309:}
 311:# ELEM_MOVE
 312:if '$rung_top' {
 313:    let var '#PORTC' := 4
 314:}
 316:# ] finish parallel
 317:# ] finish series
 318:# 
 319:# ======= START RUNG 9 =======
 320:LabelRung9:
 321:
 322:set bit '$rung_top'
 324:# start series [
 325:# ELEM_EQU
 326:if '$rung_top' {
 327:    if 'C0' != '4' {
 328:        clear bit '$rung_top'
 329:    }
 330:}
 332:# ELEM_7SEG
 333:if '$rung_top' {
 334:    let var '$scratch' := 176
 335:    if 'buf1' == '$scratch' {
 336:        let var 'buf1' := 128
 337:    } else {
 338:        if 'buf1' < '0' {
 339:            let var 'buf1' := 32
 340:        } else {
 341:            if 'buf1' < '129' {
 342:            } else {
 343:                let var 'buf1' := 32
 344:            }
 345:        }
 346:    }
 347:    let var '$scratch' := 'char7seg[buf1]'
 348:    let var '#PORTB' := '$scratch'
 349:}
 351:# start parallel [
 352:# ELEM_MOVE
 353:if '$rung_top' {
 354:    let var '#PORTC' := 0
 355:}
 357:# ELEM_MOVE
 358:if '$rung_top' {
 359:    let var '#PORTC' := 8
 360:}
 362:# ] finish parallel
 363:# ] finish series
 364:LabelRung10:
 365:
 366:# Latest INT_OP here
