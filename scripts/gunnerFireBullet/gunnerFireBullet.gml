var px = x + lengthdir_x(6,argument0)
var py = y + lengthdir_y(6,argument0)
var pb = instance_create_depth(px,py,-100, objEnemyBullet)
pb.direction = argument0 + random_range(-3,3) * computeVarianceMult()

createShell(px,py,argument0)