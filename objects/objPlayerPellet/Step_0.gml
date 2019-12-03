image_angle = direction

t--
if t <= 0 then {
	instance_destroy()
}

speed = lerp(0,speedMax,t/tMax)

if projectileBounce() then {
	bounceTotal--
	t -= 4
	if bounceTotal < 0 then {
		instance_destroy()	
	}
}

if offScreen(x,y) then {
	instance_destroy()
}		