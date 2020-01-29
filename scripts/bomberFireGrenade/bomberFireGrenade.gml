var px = getGunBarrelX()
var py = getGunBarrelY()

var gv = clamp(grenadeDtoV(argument1), 0, 8)
var d =argument0 + random_range(-3,3) * computeVarianceMult()

fireGrenade(px, py, d, gv, objEnemyGrenade)

//createShell(px,py,argument0)
audioPlayPitch(sfxEnemyShoot, 0.5, 1, 0.1)
screenShake(4)