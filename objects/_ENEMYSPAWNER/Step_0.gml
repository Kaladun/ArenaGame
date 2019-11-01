if totalSpawn > 0 then {
	t-- 

	if t <= 0 then {
		totalSpawn--
		t = min(tMax - global.waveNumber,10)
	
		spawn = noone
		
		_x = _WAVEMANAGER.leftX
		_y = _WAVEMANAGER.topY
		_w = _WAVEMANAGER.rightX - _x
		_h = _WAVEMANAGER.bottomY - _y
		
		do {
			xr = _x + (0.5 + choose(-1,1) * random_range(0.1,0.45)) * _w
			yr = _y + (0.5 + choose(-1,1) * random_range(0.1,0.45)) * _h
	
			if point_distance(xr, yr, objPlayer.x, objPlayer.y) > 40 then {
				if not collision_circle(xr, yr, 16, objWall, 0, 0) then {
			 		spawn = instance_create_depth(xr, yr, 0, objSpawner)
					
					if armoredSpawn > 0 then {
						spawn.object = objArmored
						armoredSpawn--
					} else if phantomSpawn > 0 then {
						spawn.object = objPhantom
						phantomSpawn--
					} else if kamikazeSpawn > 0 then {
						spawn.object = objKamikaze
						kamikazeSpawn--
					}
				}
			}
		} until spawn != noone
	}
}