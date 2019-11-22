if hurtTimer > 0 then {
	hurtTimer--
	shader_set(sdrWhite)
}

var col = c_yellow
if gunTimer <= fireTimer then {
	sst = smoothstep(gunTimer/fireTimer)
	col = merge_color(c_white, col, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0	
	sst = 0
}

//image_blend = col

drawEnemy(attackWarning)

shader_reset()


