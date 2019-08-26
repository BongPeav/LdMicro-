   0:# INIT TABLES
   1:INIT TABLE signed 1 byte char7seg[129] := {63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 119, 124, 57, 94, 121, 113, 191, 134, 219, 207, 230, 237, 253, 135, 255, 239, 247, 252, 185, 222, 249, 241, 0, 176, 34, 78, 109, 210, 218, 32, 57, 15, 114, 112, 12, 64, 128, 82, 63, 6, 91, 79, 102, 109, 125, 7, 127, 111, 9, 13, 97, 65, 67, 211, 159, 119, 124, 57, 94, 121, 113, 61, 116, 48, 30, 117, 56, 85, 84, 92, 115, 103, 51, 109, 120, 62, 28, 106, 118, 110, 91, 57, 100, 15, 35, 8, 32, 95, 124, 88, 94, 123, 113, 111, 116, 16, 14, 117, 24, 85, 84, 92, 115, 103, 80, 109, 120, 62, 28, 106, 118, 110, 91, 57, 48, 15, 1, 0, 99}
   2:# INIT TABLE: signed 0 bit char7seg[129] see above
   3:# INIT TABLE: signed 0 bit char7seg[129] see above
   4:# INIT VARS
   5:if not '$once_0_INIT_VARS' {
   6:    set bit '$once_0_INIT_VARS'
   7:    let var 'C0' := 0
   8:}
  23:# 
  24:# ======= START RUNG 1 =======
  25:LabelRung1:
  26:
  27:set bit '$rung_top'
  29:# start series [
  30:# ELEM_TCY T0 2000
  31:if '$rung_top' {
  32:    if 'T0' < '2' {
  33:        increment 'T0'
  34:    } else {
  35:        let var 'T0' := 0
  36:        if not '$once_1_TCY_T0' {
  37:            set bit '$once_1_TCY_T0'
  38:        } else {
  39:            clear bit '$once_1_TCY_T0'
  40:        }
  41:    }
  42:    if not '$once_1_TCY_T0' {
  43:        clear bit '$rung_top'
  44:    }
  45:} else {
  46:    let var 'T0' := 0
  47:}
  49:# ELEM_ONE_SHOT_RISING
  50:if '$rung_top' {
  51:    if '$once_2_ONE_SHOT_RISING_' {
  52:        clear bit '$rung_top'
  53:    } else {
  54:        set bit '$once_2_ONE_SHOT_RISING_'
  55:    }
  56:} else {
  57:    clear bit '$once_2_ONE_SHOT_RISING_'
  58:}
  60:# ELEM_CTC
  61:if '$rung_top' {
  62:    clear bit '$rung_top'
  63:    if not '$once_3_CTC_C0' {
  64:        set bit '$once_3_CTC_C0'
  65:        increment 'C0'
  66:        if 'C0' > '4' {
  67:            let var 'C0' := 0
  68:            set bit '$rung_top'
  69:        }
  70:    }
  71:} else {
  72:    clear bit '$once_3_CTC_C0'
  73:}
  75:# ] finish series
  76:# 
  77:# ======= START RUNG 2 =======
  78:LabelRung2:
  79:
  80:set bit '$rung_top'
  82:# start series [
  83:# start parallel [
  84:# ELEM_MOVE
  85:if '$rung_top' {
  86:    let var '#TRISB' := 0
  87:}
  89:# ELEM_MOVE
  90:if '$rung_top' {
  91:    let var '#TRISC' := 240
  92:}
  94:# ] finish parallel
  95:# ] finish series
  96:# 
  97:# ======= START RUNG 3 =======
  98:LabelRung3:
  99:
 100:set bit '$rung_top'
 102:# start series [
 103:# ELEM_TCY T1 1000000
 104:if '$rung_top' {
 105:    if 'T1' < '1000' {
 106:        increment 'T1'
 107:    } else {
 108:        let var 'T1' := 0
 109:        if not '$once_4_TCY_T1' {
 110:            set bit '$once_4_TCY_T1'
 111:        } else {
 112:            clear bit '$once_4_TCY_T1'
 113:        }
 114:    }
 115:    if not '$once_4_TCY_T1' {
 116:        clear bit '$rung_top'
 117:    }
 118:} else {
 119:    let var 'T1' := 0
 120:}
 122:# ELEM_READ_ADC
 123:if '$rung_top' {
 124:    read adc 'A0', refs is '0'
 125:}
 127:# ] finish series
 128:# 
 129:# ======= START RUNG 4 =======
 130:LabelRung4:
 131:
 132:set bit '$rung_top'
 134:# start series [
 135:# ELEM_PIECEWISE_LINEAR
 136:if '$rung_top' {
 137:    # PWL 2
 138:    clear bit '$scratch'
 139:    if 'A0' < '301' {
 140:        set bit '$scratch'
 141:    }
 142:    if '$scratch' {
 143:        let var 'result' := 'A0' - '150'
 144:        let var 'result' := 'result' * '74'
 145:        let var 'result' := 'result' / '150'
 146:        let var 'result' := 'result' + '73'
 147:    }
 148:    # PWL 1
 149:    clear bit '$scratch'
 150:    if 'A0' < '151' {
 151:        set bit '$scratch'
 152:    }
 153:    if '$scratch' {
 154:        let var 'result' := 'A0' - '2'
 155:        let var 'result' := 'result' * '72'
 156:        let var 'result' := 'result' / '148'
 157:        let var 'result' := 'result' + '1'
 158:    }
 159:}
 161:# ] finish series
 162:# 
 163:# ======= START RUNG 5 =======
 164:LabelRung5:
 165:
 166:set bit '$rung_top'
 168:# start series [
 169:# ELEM_DIV
 170:if '$rung_top' {
 171:    let var '$scratch2' := 100
 172:    let var 'buf4' := 'result' / '$scratch2'
 173:}
 175:# ] finish series
 176:# 
 177:# ======= START RUNG 6 =======
 178:LabelRung6:
 179:
 180:set bit '$rung_top'
 182:# start series [
 183:# ELEM_DIV
 184:if '$rung_top' {
 185:    let var '$scratch2' := 10
 186:    let var 'temp1' := 'result' / '$scratch2'
 187:}
 189:# ] finish series
 190:# 
 191:# ======= START RUNG 7 =======
 192:LabelRung7:
 193:
 194:set bit '$rung_top'
 196:# start series [
 197:# ELEM_MOD
 198:if '$rung_top' {
 199:    let var '$scratch2' := 10
 200:    let var 'buf3' := 'temp1' % '$scratch2'
 201:}
 203:# ] finish series
 204:# 
 205:# ======= START RUNG 8 =======
 206:LabelRung8:
 207:
 208:set bit '$rung_top'
 210:# start series [
 211:# ELEM_MOD
 212:if '$rung_top' {
 213:    let var '$scratch2' := 10
 214:    let var 'buf2' := 'result' % '$scratch2'
 215:}
 217:# ] finish series
 218:# 
 219:# ======= START RUNG 9 =======
 220:LabelRung9:
 221:
 222:set bit '$rung_top'
 224:# start series [
 225:# ELEM_GRT
 226:if '$rung_top' {
 227:    if 'result' <= '30' {
 228:        clear bit '$rung_top'
 229:    }
 230:}
 232:# ELEM_COIL
 233:let bit 'Y0' := '$rung_top'
 235:# ] finish series
 236:# 
 237:# ======= START RUNG 10 =======
 238:LabelRung10:
 239:
 240:set bit '$rung_top'
 242:# start series [
 243:# ELEM_GEQ
 244:if '$rung_top' {
 245:    if 'result' < '100' {
 246:        clear bit '$rung_top'
 247:    }
 248:}
 250:# ELEM_EQU
 251:if '$rung_top' {
 252:    if 'C0' != '1' {
 253:        clear bit '$rung_top'
 254:    }
 255:}
 257:# ELEM_7SEG
 258:if '$rung_top' {
 259:    let var '$scratch' := 176
 260:    if 'buf4' == '$scratch' {
 261:        let var 'buf4' := 128
 262:    } else {
 263:        if 'buf4' < '0' {
 264:            let var 'buf4' := 32
 265:        } else {
 266:            if 'buf4' < '129' {
 267:            } else {
 268:                let var 'buf4' := 32
 269:            }
 270:        }
 271:    }
 272:    let var '$scratch' := 'char7seg[buf4]'
 273:    let var '#PORTB' := '$scratch'
 274:}
 276:# start parallel [
 277:# ELEM_MOVE
 278:if '$rung_top' {
 279:    let var '#PORTC' := 0
 280:}
 282:# ELEM_MOVE
 283:if '$rung_top' {
 284:    let var '#PORTC' := 1
 285:}
 287:# ] finish parallel
 288:# ] finish series
 289:# 
 290:# ======= START RUNG 11 =======
 291:LabelRung11:
 292:
 293:set bit '$rung_top'
 295:# start series [
 296:# ELEM_GEQ
 297:if '$rung_top' {
 298:    if 'result' < '10' {
 299:        clear bit '$rung_top'
 300:    }
 301:}
 303:# ELEM_EQU
 304:if '$rung_top' {
 305:    if 'C0' != '2' {
 306:        clear bit '$rung_top'
 307:    }
 308:}
 310:# ELEM_7SEG
 311:if '$rung_top' {
 312:    let var '$scratch' := 176
 313:    if 'buf3' == '$scratch' {
 314:        let var 'buf3' := 128
 315:    } else {
 316:        if 'buf3' < '0' {
 317:            let var 'buf3' := 32
 318:        } else {
 319:            if 'buf3' < '129' {
 320:            } else {
 321:                let var 'buf3' := 32
 322:            }
 323:        }
 324:    }
 325:    let var '$scratch' := 'char7seg[buf3]'
 326:    let var '#PORTB' := '$scratch'
 327:}
 329:# start parallel [
 330:# ELEM_MOVE
 331:if '$rung_top' {
 332:    let var '#PORTC' := 0
 333:}
 335:# ELEM_MOVE
 336:if '$rung_top' {
 337:    let var '#PORTC' := 2
 338:}
 340:# ] finish parallel
 341:# ] finish series
 342:# 
 343:# ======= START RUNG 12 =======
 344:LabelRung12:
 345:
 346:set bit '$rung_top'
 348:# start series [
 349:# ELEM_EQU
 350:if '$rung_top' {
 351:    if 'C0' != '3' {
 352:        clear bit '$rung_top'
 353:    }
 354:}
 356:# ELEM_7SEG
 357:if '$rung_top' {
 358:    let var '$scratch' := 176
 359:    if 'buf2' == '$scratch' {
 360:        let var 'buf2' := 128
 361:    } else {
 362:        if 'buf2' < '0' {
 363:            let var 'buf2' := 32
 364:        } else {
 365:            if 'buf2' < '129' {
 366:            } else {
 367:                let var 'buf2' := 32
 368:            }
 369:        }
 370:    }
 371:    let var '$scratch' := 'char7seg[buf2]'
 372:    let var '#PORTB' := '$scratch'
 373:}
 375:# start parallel [
 376:# ELEM_MOVE
 377:if '$rung_top' {
 378:    let var '#PORTC' := 0
 379:}
 381:# ELEM_MOVE
 382:if '$rung_top' {
 383:    let var '#PORTC' := 4
 384:}
 386:# ] finish parallel
 387:# ] finish series
 388:# 
 389:# ======= START RUNG 13 =======
 390:LabelRung13:
 391:
 392:set bit '$rung_top'
 394:# start series [
 395:# ELEM_EQU
 396:if '$rung_top' {
 397:    if 'C0' != '4' {
 398:        clear bit '$rung_top'
 399:    }
 400:}
 402:# ELEM_7SEG
 403:if '$rung_top' {
 404:    let var '#PORTB' := 57
 405:}
 407:# start parallel [
 408:# ELEM_MOVE
 409:if '$rung_top' {
 410:    let var '#PORTC' := 0
 411:}
 413:# ELEM_MOVE
 414:if '$rung_top' {
 415:    let var '#PORTC' := 8
 416:}
 418:# ] finish parallel
 419:# ] finish series
 420:LabelRung14:
 421:
 422:# Latest INT_OP here
