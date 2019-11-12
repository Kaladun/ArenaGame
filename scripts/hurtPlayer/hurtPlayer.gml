if instance_exists(objPlayer) then {
	if not objPlayer.isDashing and objPlayer.hurt <= 0 and not objPlayer.isDead then {
		objPlayer.hp -= argument0
		objPlayer.hurt = objPlayer.hurtMax
		audioPlayPitch(sfxPlayerHurt, 3, 0.1)
		sleep(10)
		
		return true
	}
}

return false