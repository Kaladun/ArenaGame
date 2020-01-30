var px = getGunBarrelX()
var py = getGunBarrelY()

var pb = instance_create_depth(px,py,-100,objPlayerBullet)
pb.direction = argument0 + random_range(-10,10) * computeVarianceMult()

createShell(px,py,argument0)