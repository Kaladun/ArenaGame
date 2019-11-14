var px = x + lengthdir_x(6,argument0)
var py = y + lengthdir_y(6,argument0)
var pb = instance_create_depth(px,py,-100, objEnemyBullet)
pb.direction = argument0 + random_range(-10,10) * computeVarianceMult()

createShell(px,py,argument0)
audioPlayPitch(sfxEnemyShoot, 0.5, 0.1)
screenShake(2)