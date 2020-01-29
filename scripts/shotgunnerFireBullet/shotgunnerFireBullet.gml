var px = getGunBarrelX()
var py = getGunBarrelY()

var locShotgunN = 3
locShotgunN += floor(computeShotgunOdds(1) * 0.5)
var ls = (locShotgunN - 1) / 2
var da = argument1/ls

for(i = -ls; i <= ls; i++) {
	var pb = instance_create_depth(px,py,-100,objEnemyPellet)
	pb.direction = argument0 + (i + random_range(-0.1,0.1) ) * da
}
	
createShell(px,py,argument0)
	
audioPlayPitch(sfxEnemyShoot, 0.5, 1, 0.1)
audioPlayPitch(sfxEnemyShoot, 0.5, 1, 0.3)
screenShake(3)