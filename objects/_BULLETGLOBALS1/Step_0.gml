if keyboard_check_pressed(ord("I")) then {
	debug = (debug + 1) mod 2
}


if instance_number(genericEnemy) > 0 then {
	global.comboTimer --
}	

if global.comboTimer <= 0 then {
	if global.comboLevel <= 1 then {
		global.comboTimer = 0
		global.comboKills = 0
	} else {
		global.comboTimer = global.comboTimerMax
		global.comboKills = 0
		global.comboLevel = clamp(global.comboLevel - 1, 1, global.comboLevelMax)
	}
}

comboRecalculate()