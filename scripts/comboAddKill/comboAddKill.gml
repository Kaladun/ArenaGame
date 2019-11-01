global.comboKills++
global.comboTimer = global.comboTimerMax

if global.comboKills >= global.comboGoal then {
	
	if global.comboLevel < global.comboLevelMax then {
		global.comboLevel++
		global.comboKills = 0
	} else {
		global.comboKills = global.comboGoal	
	}
}