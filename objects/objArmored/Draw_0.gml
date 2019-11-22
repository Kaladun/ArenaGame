if hurtTimer > 0 then {
	hurtTimer --
	shader_set(sdrWhite)
}

var col = c_ltgray
if state = 1 and stateTimer <= fireTimer then {
	sst = smoothstep(stateTimer/fireTimer)
	col = merge_color(c_white, c_ltgray, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0
	sst = 0
}

image_blend = col

draw_self()
if hasArmor then {
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, -1, 1)
}

shader_reset()