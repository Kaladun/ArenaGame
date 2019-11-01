if argument0 >= _CAMERA.cameraX - argument2 and argument0 <= _CAMERA.cameraX + _CAMERA.cameraW + argument2 then {
	if argument1 >= _CAMERA.cameraY - argument2 and argument1 <= _CAMERA.cameraY + _CAMERA.cameraH + argument2 then {
		return true	
	}
}
return false