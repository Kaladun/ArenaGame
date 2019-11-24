if isDashing then {
	with(other) {
		audioPlayPitch(sfxReflect, 2, 0.1)
		
		var b = instance_create_depth(x,y,depth,objPlayerBullet)	
		b.direction = direction + 180 + random_range(-60,60) 
		b.speed *= random_range(0.8,1.2)
		
		sleep(2)
		screenShake(2)
		instance_destroy()
	}
} else if hurt <= 0 and not isDead then {
	sleep(10)
	hp -= other.damage

	//randomTaunt()
	audioPlayPitch(sfxPlayerHurt, 2, 0.1)

	hurt = hurtMax
	
	with(other) {
		instance_destroy()	
	}
}