var px = x + lengthdir_x(6,argument0)
var py = y + lengthdir_y(6,argument0)

var locShotgunOdds = 5 + computeShotgunOdds(1)
locShotgunOdds += random(1)
var aMax = 35
var interval = 2 * aMax / (locShotgunOdds - 1)

for (var a = -aMax; a <= aMax; a += interval) {
	var pb = instance_create_depth(px,py,-100,objPlayerPellet)
	pb.direction = argument0 + a + random_range(-5,5) + random_range(-5,5)
	
	createShell(px,py,argument0)
}