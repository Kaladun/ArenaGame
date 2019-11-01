var tx = x + argument0
var ty = y + argument1
	
var goX = true
var goY = true

if collision_circle(tx,y,7,objWall,0,0) then {goX = false}
if collision_circle(x,ty,7,objWall,0,0) then {goY = false}
if goX and goY and collision_circle(tx,ty,7,objWall,0,0) then {
	goX = false
	goY = false
}

if goX then {x = tx}
if goY then {y = ty}