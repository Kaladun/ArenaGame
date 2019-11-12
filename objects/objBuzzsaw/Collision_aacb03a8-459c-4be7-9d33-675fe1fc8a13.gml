var d = point_direction(other.x, other.y, x, y)

velX += lengthdir_x(playerBulletKick,d)
velY += lengthdir_y(playerBulletKick,d)

with(other) {
	instance_destroy()	
}