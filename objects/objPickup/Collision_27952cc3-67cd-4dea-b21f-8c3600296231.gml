if type = 0 then {
	global.bulletSpeedBase ++
} else if type = 1 then {
	global.bulletCooldownBase ++
} else if type = 2 then {
	global.bulletShotgunBase ++
} else if type = 3 then {
	global.bulletThiccBase ++
} else if type = 4 then {
	global.bulletVarianceBase++	
}

createTextPop(x,y,name[type])
scoreAddPickup(points)

instance_destroy()