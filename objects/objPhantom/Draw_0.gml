if hurtTimer > 0 then {
	hurtTimer--
	shader_set(sdrWhite)
}

var col = c_base
if fireTimer <= fireTimerMax then {
	var sst = smoothstep(fireTimer/fireTimerMax)
	var col = merge_color(c_white, c_base, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0	
}

image_blend = col

draw_self()
shader_reset()