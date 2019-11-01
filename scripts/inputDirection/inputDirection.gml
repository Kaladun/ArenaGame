if global.gamepad then {
	return point_direction(0,0,_INPUT.lx,_INPUT.ly)
} else {
	return point_direction(x,y,mouse_x,mouse_y)	
}