speedMax = 5 * (1 + 0.4 * (computeBulletSpeedMult() - 1))
speed = speedMax

tMax = irandom_range(25,30)
t = tMax
image_speed = 0

image_xscale = 1 + 0.4 * (computeThiccness()-1)
image_yscale = image_xscale

bounceTotal = 1
damage = 1

createFlash(0)