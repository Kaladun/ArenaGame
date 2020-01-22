var px = x + lengthdir_x(6,argument0)
var py = y + lengthdir_y(6,argument0)

var locShotgunOdds = 5 + computeShotgunOdds(1)
locShotgunOdds += random(1)

while (locShotgunOdds >= 1) {
	var pb = instance_create_depth(px,py,-100,objPlayerPellet)
	pb.direction = argument0 + pm() * random_range(5,45 + global.bulletShotgunBase) 
	locShotgunOdds--
	
	createShell(px,py,argument0)
}