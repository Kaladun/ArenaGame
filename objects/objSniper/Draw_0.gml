if hurtTimer > 0 then {
	hurtTimer--
	shader_set(sdrWhite)
}

var col = c_red
if state = 1 and stateTimer <= fireTimer then {
	sst = smoothstep(stateTimer/fireTimer)
	col = merge_color(c_white, col, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0	
}

//image_blend = col

drawEnemy(attackWarning)

shader_reset()

/*if targetX != -1 and targetY != -1 then {
	draw_sprite_ext(sprCursor, 0, targetX, targetY, 1, 1, 0, c_red, 1)	
}*/