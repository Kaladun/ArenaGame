global.comboGoal = 2 * global.comboLevel
if global.comboLevel = global.comboLevelMax then {
	global.comboGoal = 0	
}
global.comboTimerMax = (9 - global.comboLevel) * room_speed
global.comboTimer = clamp(global.comboTimer, 0, global.comboTimerMax)