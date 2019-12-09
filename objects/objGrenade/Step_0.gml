if trueSpeed > 0 then {
	trueSpeed = clamp(trueSpeed - speedDecel * global.timeWarp, 0, 10)
	speed = trueSpeed * global.timeWarp
	image_angle += da * global.timeWarp
	da *= 0.95
	
	sm = trueSpeed / trueSpeedMax
	if sm >= 0.4 then {
		height = (1 - 4 * (sm - 1) * (sm - 1) ) * heightMax
	} else {
		height = -16/3 * heightMax * (sm - 0.25) * (sm-0.25) + heightMax / 4
	}
	
} else {
	timer--
	height = 0
}

var pb = projectileBounce()
if pb then {
	speed *= 0.5
	trueSpeed *= 0.5
	trueSpeedMax *= 0.5
}

if timer <= 0 then {
	instance_destroy()
}	