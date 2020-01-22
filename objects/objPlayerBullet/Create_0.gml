speedMax = 6 * computeBulletSpeedMult()
image_speed = 0
image_index = global.bulletPlayerFrame

image_xscale = computeThiccness()
image_yscale = image_xscale

damage = 12

bounceTotal = computeBounceCount()
isHoming = false
homingRadius = 0

piercingOdds = computePiercingOdds()
hitList = ds_list_create()

if global.bulletHomingBase > 0 then {
	isHoming = true
	homingRadius = computeHomingRadius() + sprite_width/2
}
createFlash(0)