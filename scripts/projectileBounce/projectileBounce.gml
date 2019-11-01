tx = lengthdir_x(speed, direction)
ty = lengthdir_y(speed, direction)

var xcm = 1
var ycm = 1

if place_meeting(x+tx, y, objWall) then {
	xcm = -1
}

if place_meeting(x, y+ty, objWall) then {
	ycm = -1
}

if xcm + ycm != 2 then {
	direction = point_direction(0, 0, tx * xcm, ty * ycm)	
	return true
}

return false