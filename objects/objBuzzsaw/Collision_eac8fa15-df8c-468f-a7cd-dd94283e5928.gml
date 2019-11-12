var d = point_direction(other.x, other.y, x, y)

velX += lengthdir_x(enemyBulletKick,d)
velY += lengthdir_y(enemyBulletKick,d)

with(other) {
	instance_destroy()	
}