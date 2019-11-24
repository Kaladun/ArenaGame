var d = other.direction 
var a = point_direction(other.x, other.y, x, y)
d = d + angle_difference(d,a)/5

velX += lengthdir_x(playerBulletKick,d)
velY += lengthdir_y(playerBulletKick,d)

with(other) {
	instance_destroy()	
}