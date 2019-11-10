if argument0 <= 90 then {
	drawGunAngle = argument0 / 2
	image_xscale = 1
} else if argument0 <= 270 then {
	drawGunAngle = (argument0 - 180) / 2
	image_xscale = -1
} else {
	drawGunAngle = (argument0 - 360) / 2
	image_xscale = 1
} 
	