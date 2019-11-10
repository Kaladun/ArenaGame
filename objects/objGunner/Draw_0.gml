if hurtTimer > 0 then {
	hurtTimer--
	shader_set(sdrWhite)
}

var col = c_yellow
if gunTimer <= fireTimer then {
	var sst = smoothstep(gunTimer/fireTimer)
	col = merge_color(c_white, col, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0	
}

//image_blend = col

drawEnemy()

shader_reset()


