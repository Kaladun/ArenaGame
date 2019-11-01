if hurtTimer > 0 then {
	hurtTimer--
	shader_set(sdrWhite)
}

var col = c_red
if state = 1 and stateTimer <= fireTimer then {
	var sst = smoothstep(stateTimer/fireTimer)
	col = merge_color(c_white, col, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0	
}

image_blend = col

draw_self()
shader_reset()