if collision_circle(x,y,7,objWall,0,0) then {
	
	if x < room_width/2 then {
		if x < _WAVEMANAGER.leftX + 48 then {x += 2}
		else {x -= 2}
	} else {
		if x > _WAVEMANAGER.rightX - 48 then {x -= 2}
		else {x += 2}
	}
	
	if y < room_height/2 then {
		if y < _WAVEMANAGER.topY + 48 then {y += 2}
		else {y -= 2}
	} else {
		if y > _WAVEMANAGER.bottomY - 48 then {y -= 2}
		else {y += 2}
	}	
}