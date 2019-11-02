global.upgradeCount++
global.totalScore++

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