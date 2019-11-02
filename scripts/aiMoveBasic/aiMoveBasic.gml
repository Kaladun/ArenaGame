var dx = lengthdir_x(currentVel, dir)
var dy = lengthdir_y(currentVel, dir)
	
if hurtKnockback > 0 then {
	dx += lengthdir_x(hurtKnockback, hurtDirection)
	dy += lengthdir_y(hurtKnockback, hurtDirection)
	hurtKnockback = max(hurtKnockback - hurtKBDecel, 0)
}	

moveBasic(dx,dy)