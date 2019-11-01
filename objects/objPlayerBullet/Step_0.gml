image_index = 1
image_angle = direction

if projectileBounce() then {
	if bounceTotal <= 0 then {
		instance_destroy()	
	}
	bounceTotal--
}

if instance_exists(objEnemy) and isHoming then {
	n = instance_nearest(x,y,objEnemy)
	if n.canSeek then {
		if point_distance(n.x,n.y,x,y) < homingRadius + n.sprite_width / 2 then {
			direction = point_direction(x,y,n.x,n.y)	
		}
	}
}

if offScreen(x,y) then {
	instance_destroy()
}		