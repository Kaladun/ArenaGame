if speed > 0 then {
	speed = clamp(speed - speedDecel, 0, 10)	
	image_angle += da
	da *= 0.95
	
	sm = speed / speedMax
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
	speedMax *= 0.5
}

if timer <= 0 then {
	instance_destroy()
}	