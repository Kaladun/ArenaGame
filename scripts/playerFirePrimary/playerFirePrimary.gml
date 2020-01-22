var px = x + lengthdir_x(6,argument0)
var py = y + lengthdir_y(6,argument0)
var pb = instance_create_depth(px,py,-100,objPlayerBullet)
pb.direction = argument0 + random_range(-10,10) * computeVarianceMult()

createShell(px,py,argument0)