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

if hasArmor then {
	draw_sprite_ext(sprArmoredShield, 0, x - image_xscale, y-1, image_xscale, 1, 0, c_black, 1)
	draw_sprite_ext(sprArmoredShield, 0, x - image_xscale, y+1, image_xscale, 1, 0, c_black, 1)
}

drawEnemy(attackWarning)

if hasArmor then {
	draw_sprite_ext(sprArmoredShield, 0, x, y, image_xscale, 1, 0, -1, 1)
}

shader_reset()