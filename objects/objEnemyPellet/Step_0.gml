image_angle = direction

t -= global.timeWarp
if t <= 0 then {
	instance_destroy()
}

speed = lerp(0,speedMax,t/tMax) * global.timeWarp

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