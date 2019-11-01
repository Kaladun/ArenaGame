for(var i = -1; i <= 1; i++) {
	for(var j = -1; j <= 1; j++) {
		var updateWall = collision_point(x+8+i*16, y+8+j*16, objWall, 0, 1)
		if instance_exists(updateWall) then {
			updateWall.update = true
		}
	}
}