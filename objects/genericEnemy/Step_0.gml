if slowTimer > 0 then {
	slowTimer-- 
} else {
	slowTimer = 0
}

if hp <= 0 then {
	instance_destroy()
	
	if audio_exists(dieSFX) then {
		audioPlayPitch(dieSFX, 2, 1, 0.05)
	}	
	
	sleep(dieSleep)
	screenShake(dieShake)
}

currentVel = vel * aiVelMult * computeVelocity(slowTimer) 

depth = -y
imageSpeedUpdate()