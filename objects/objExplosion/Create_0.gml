image_xscale = 1.7
image_yscale = 1.7
image_angle = random_range(0,360)

timer = 36
blastTime = 24
radius = 20 * image_xscale

enemyDamage = 5
playerDamage = 2

screenShake(12)
sleep(6)

audioPlayPitch(sfxExplosion, 1, 0.1)

depth = -2000