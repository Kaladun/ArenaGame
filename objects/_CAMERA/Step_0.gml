if instance_exists(objPlayer) then {
	
/*	if _WAVEMANAGER.radiusX <= cameraW2 - 32 then {
		cameraTargetX = room_width/2 - cameraW2 + 8
		cameraLookX = false
	} else {		
		cameraTargetX = objPlayer.x - cameraW2
		cameraLookX = true
	}
	
	
	if _WAVEMANAGER.radiusY <= cameraH2 - 32 then {
		cameraTargetY = room_height/2 - cameraH2 - 8
		cameraLookY = false
	} else {				
		cameraTargetY = objPlayer.y - cameraH2
		cameraLookY = true
	}*/
	
	cameraTargetX = objPlayer.x - cameraW2
	cameraLookX = true	
	cameraTargetY = objPlayer.y - cameraH2
	cameraLookY = true	
	
	if global.gamepad then {
		mag = point_distance(0, 0, _INPUT.lx, _INPUT.ly) 
		if mag > 0.3 then {
			cameraAngle = point_direction(0, 0, _INPUT.lx, _INPUT.ly)
		}
		cameraTargetX += lengthdir_x(cameraLookPad * mag, cameraAngle) * cameraLookX
		cameraTargetY += lengthdir_y(cameraLookPad * mag, cameraAngle) * cameraLookY
	} else {
		mouseD = point_distance(objPlayer.x, objPlayer.y, mouse_x, mouse_y)
		mouseA = point_direction(objPlayer.x, objPlayer.y, mouse_x, mouse_y)
	
		cameraTargetX += lengthdir_x(mouseD * cameraLookProportion, mouseA) * cameraLookX
		cameraTargetY += lengthdir_y(mouseD * cameraLookProportion, mouseA) * cameraLookY
	}

	if cameraUpdateBounds then {
		cameraUpdateBounds = false
		
		cameraMinX = _WAVEMANAGER.leftX - 64 + 8
		cameraMaxX = _WAVEMANAGER.rightX + 64 - cameraW + 8
		cameraMinY = _WAVEMANAGER.topY - 64 - 8
		cameraMaxY = _WAVEMANAGER.bottomY + 64 - cameraH - 8
	}

	cameraTargetX = clamp(cameraTargetX, cameraMinX, cameraMaxX)
	cameraTargetY = clamp(cameraTargetY, cameraMinY, cameraMaxY)
}

if cameraX != cameraTargetX then {
	cameraX = lerp(cameraX, cameraTargetX, cameraSpeed)	
	if abs(cameraTargetX - cameraX) < cameraLockRad then {
		cameraX = cameraTargetX	
	}
}

if cameraY != cameraTargetY then {
	cameraY = lerp(cameraY, cameraTargetY, cameraSpeed)	
	if abs(cameraTargetY - cameraY) < cameraLockRad then {
		cameraY = cameraTargetY
	}
}

if global.screenShakeTotal > 0 then {
	var a = random_range(0,360)
	var sst = global.screenShakeTotal
	if sst > 5 then {
		sst = 5 + sqrt(sst-5)	
	}
	cameraX += lengthdir_x(sst, a)
	cameraY += lengthdir_y(sst, a)
	global.screenShakeTotal -= max(1, ceil(global.screenShakeTotal * 0.1))
}

if roundTest then {
camera_set_view_pos(view_camera[0], round(cameraX), round(cameraY)) 
} else {
camera_set_view_pos(view_camera[0], cameraX, cameraY)
}

if keyboard_check_pressed(ord("R")) then {roundTest = (roundTest + 1) mod 2}