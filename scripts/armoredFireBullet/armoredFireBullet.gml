var px = getGunBarrelX()
var py = getGunBarrelY()

var locShotgunN = 5
locShotgunN += computeShotgunOdds(1)
var ls = (locShotgunN - 1) / 2
var da = argument1/ls

for(i = -ls; i <= ls; i++) {
	var pb = instance_create_depth(px,py,-100,objEnemyPellet)
	pb.direction = argument0 + (i + random_range(-1.5,1.5) ) * da

	createShell(px,py,pb.direction)
}

audioPlayPitch(sfxEnemyShoot, 0.5, 1, 0.1)
audioPlayPitch(sfxEnemyShoot, 0.5, 1, 0.3)
screenShake(5)