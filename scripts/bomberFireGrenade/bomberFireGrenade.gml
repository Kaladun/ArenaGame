var px = x + lengthdir_x(6,argument0)
var py = y + lengthdir_y(6,argument0)
var eg = instance_create_depth(px,py,-100, objEnemyGrenade)

var gv = clamp(grenadeDtoV(argument1), 0, 8)
eg.direction = argument0 + random_range(-3,3) * computeVarianceMult()
eg.speed = gv
eg.speedMax = gv

//createShell(px,py,argument0)
audioPlayPitch(sfxEnemyShoot, 0.5, 0.1)
screenShake(4)