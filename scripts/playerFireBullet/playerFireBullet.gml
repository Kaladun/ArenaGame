var px = x + lengthdir_x(6,argument1)
var py = y + lengthdir_y(6,argument1)
var pb = instance_create_depth(px,py,-100,argument0)
pb.direction = argument1 + random_range(-10,10) * computeVarianceMult()

createShell(px,py,argument1)


var locShotgunOdds = computeShotgunOdds(1)
locShotgunOdds += random(1)

while (locShotgunOdds >= 1) {
	var pb = instance_create_depth(px,py,-100,objPlayerPellet)
	pb.direction = argument1 + pm() * random_range(15,45 * (1+computeVarianceMult())/2 ) 
	locShotgunOdds--
	
	createShell(px,py,argument1)
}