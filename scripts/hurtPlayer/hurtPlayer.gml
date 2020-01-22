if instance_exists(objPlayer) then {
	if not objPlayer.isDashing and objPlayer.hurt <= 0 and not objPlayer.isDead then {
		objPlayer.hp -= argument0
		objPlayer.hurt = objPlayer.hurtMax
		objPlayer.hurtNow = true
		audioPlayPitch(sfxPlayerHurt, 3, 1, 0.1)
		sleep(10)
		
		comboDamagePenalty()
		callSlowMo(0.2, 1.2, 0.6, 1)
		
		return true
	}
}

return false