if speed > 0 then {
	speed = clamp(speed - speedDecel, 0, 10)	
	image_angle += da
	da *= 0.95
} else {
	timer--	
}

projectileBounce()

if timer <= 0 then {
	instance_destroy()
}	