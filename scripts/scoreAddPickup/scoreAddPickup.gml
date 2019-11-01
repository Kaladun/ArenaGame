global.upgradeCount++

global.totalScore += max(1,round(sqrt(argument0)))

/*
global.comboTimer += global.comboTimerBoost
if global.comboTimer > global.comboTimerMax then {
	if global.comboLevel < global.comboLevelMax then {
		global.comboTimer = max(global.comboTimerBase, global.comboLevel - global.comboLevelMax)	
		global.comboLevel++
	} else {
		global.comboTimer = global.comboTimerMax	
	}
}