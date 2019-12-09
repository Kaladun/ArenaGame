speed = speedMax * global.timeWarp
image_angle = direction

if offScreen(x,y) then {
	instance_destroy()
}		