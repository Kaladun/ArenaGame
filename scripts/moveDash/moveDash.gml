var tx = x + argument0
var ty = y + argument1
	
var goX = 1
var goY = 1

if collision_circle(tx,y,7,objWall,0,0) then {goX = -0}
if collision_circle(x,ty,7,objWall,0,0) then {goY = -0}
if goX = 1 and goY = 1 and collision_circle(tx,ty,7,objWall,0,0) then {
	goX = -0
	goY = -0
}

x = x + argument0 * goX
y = y + argument1 * goY

/*if goX + goY = 2 then {
	x = tx
	y = ty
} else {
	//dashDir = point_direction(0, 0, (tx-x) * goX, (ty-y) * goY)	
	image_angle = dashDir
	
	x += lengthdir_x(dashVel, dashDir)
	y += lengthdir_y(dashVel, dashDir)
}