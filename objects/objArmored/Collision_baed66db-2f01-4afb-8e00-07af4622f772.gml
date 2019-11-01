if hasArmor then {
	sleep(1)

	screenShake(1)
	audioPlayPitch(sfxReflect, 1, 0.1)

	if objPlayer.grenadeCount = 0 and random(1) < 0.08 and instance_number(objAmmoPickup) = 0 then {
		instance_create_depth(x,y,0,objAmmoPickup)
	}

	with(other) {
		instance_destroy()	
	}
	
}