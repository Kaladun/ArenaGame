if ds_list_size(spawnList) > 0 then {
	t-- 

	if t <= 0 then {
		type = ds_list_find_value(spawnList, 0)
		ds_list_delete(spawnList, 0)
		t = min(tMax - 3*global.waveNumber,10)
	
		spawn = noone
		
		_x = _WAVEMANAGER.leftX
		_y = _WAVEMANAGER.topY
		_w = _WAVEMANAGER.rightX - _x
		_h = _WAVEMANAGER.bottomY - _y
		
		do {
			xr = _x + (0.5 + pm() * random_range(0.1,0.45)) * _w
			yr = _y + (0.5 + pm() * random_range(0.1,0.45)) * _h
	
			if point_distance(xr, yr, objPlayer.x, objPlayer.y) > 40 then {
				if not collision_circle(xr, yr, 16, objWall, 0, 0) then {
			 		spawn = instance_create_depth(xr, yr, 0, objSpawner)
					spawn.object = type
				}
			}
		} until spawn != noone
	}
} else {
	instance_destroy()	
}