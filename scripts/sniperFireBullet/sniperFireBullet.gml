var px = getGunBarrelX()
var py = getGunBarrelY()
var pb = instance_create_depth(px,py,-100, objEnemySniperRound)
pb.direction = argument0 + random_range(-1,1) * computeVarianceMult()

createShell(px,py,argument0)
audioPlayPitch(sfxEnemyShoot, 0.5, 1, 0.1)
screenShake(2)