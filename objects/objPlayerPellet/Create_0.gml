speedMax = 5 * (1 + 0.6 * (computeBulletSpeedMult() - 1))
speed = speedMax

tMax = irandom_range(36,40)
t = tMax
image_speed = 0
image_index = global.bulletPlayerFrame

image_xscale = 1 + 0.4 * (computeThiccness()-1)
image_yscale = image_xscale

bounceTotal = 1
damage = 10

createFlash(0)