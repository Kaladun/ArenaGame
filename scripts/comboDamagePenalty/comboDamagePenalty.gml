global.comboLevel--
global.comboTimer = global.comboTimerMax

comboRecalculate()

global.comboKills = clamp(global.comboKills, 0, global.comboGoal - 1)