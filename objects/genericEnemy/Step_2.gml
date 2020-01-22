if isHurt then {
	isHurt = false
	hurtTimer = hurtTimerMax

	
	if audio_exists(hurtSFX) then {
		audioPlayPitch(hurtSFX, 0.1, 1, 0.1)
	}
	
	screenShake(hurtShake)
	sleep(hurtSleep)
	
	createBloodSplatter(0.125)
}