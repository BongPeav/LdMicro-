   4:# 
   5:# ======= START RUNG 1 =======
   6:LabelRung1:
   7:
   8:set bit '$rung_top'
  10:# start series [
  11:# start parallel [
  12:# ELEM_MOVE
  13:if '$rung_top' {
  14:    let var '#TRISB' := 0
  15:}
  17:# ELEM_MOVE
  18:if '$rung_top' {
  19:    let var '#TRISC' := 0
  20:}
  22:# ] finish parallel
  23:# ] finish series
  24:# 
  25:# ======= START RUNG 2 =======
  26:LabelRung2:
  27:
  28:set bit '$rung_top'
  30:# start series [
  31:# ELEM_ONE_SHOT_RISING
  32:if '$rung_top' {
  33:    if '$once_0_ONE_SHOT_RISING_' {
  34:        clear bit '$rung_top'
  35:    } else {
  36:        set bit '$once_0_ONE_SHOT_RISING_'
  37:    }
  38:} else {
  39:    clear bit '$once_0_ONE_SHOT_RISING_'
  40:}
  42:# start parallel [
  43:# ELEM_MOVE
  44:if '$rung_top' {
  45:    let var '#PORTB' := 1
  46:}
  48:# ELEM_MOVE
  49:if '$rung_top' {
  50:    let var '#PORTC' := 128
  51:}
  53:# ] finish parallel
  54:# ] finish series
  55:# 
  56:# ======= START RUNG 3 =======
  57:LabelRung3:
  58:
  59:set bit '$rung_top'
  61:# start series [
  62:# ELEM_TCY T0 20000
  63:if '$rung_top' {
  64:    if 'T0' < '2' {
  65:        increment 'T0'
  66:    } else {
  67:        let var 'T0' := 0
  68:        if not '$once_1_TCY_T0' {
  69:            set bit '$once_1_TCY_T0'
  70:        } else {
  71:            clear bit '$once_1_TCY_T0'
  72:        }
  73:    }
  74:    if not '$once_1_TCY_T0' {
  75:        clear bit '$rung_top'
  76:    }
  77:} else {
  78:    let var 'T0' := 0
  79:}
  81:# ELEM_ONE_SHOT_RISING
  82:if '$rung_top' {
  83:    if '$once_2_ONE_SHOT_RISING_' {
  84:        clear bit '$rung_top'
  85:    } else {
  86:        set bit '$once_2_ONE_SHOT_RISING_'
  87:    }
  88:} else {
  89:    clear bit '$once_2_ONE_SHOT_RISING_'
  90:}
  92:# start parallel [
  93:clear bit '$parOut_0'
  94:# ELEM_ROL
  95:if '$rung_top' {
  96:    let var '#PORTB' := '#PORTB' rol '2'
  97:}
  99:# ELEM_ROR
 100:if '$rung_top' {
 101:    let var '#PORTC' := '#PORTC' ror '1'
 102:}
 104:let bit '$rung_top' := '$parOut_0'
 105:# ] finish parallel
 106:# ] finish series
 107:LabelRung4:
 108:
 109:# Latest INT_OP here
