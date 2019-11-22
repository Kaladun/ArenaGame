if global.comboLevel > 1 then {
	global.comboLevel--
	global.comboTimer = global.comboTimerMax

	comboRecalculate()

	global.comboKills = clamp(global.comboKills, 0, global.comboGoal - 1)
} else {
	global.comboKills = 0	
}