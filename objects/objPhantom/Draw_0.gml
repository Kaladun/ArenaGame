if hurtTimer > 0 then {
	hurtTimer--
	shader_set(sdrWhite)
}

var col = c_red
if fireTimer <= fireTimerMax then {
	sst = smoothstep(fireTimer/fireTimerMax)
	var col = merge_color(c_white, col, sst)
	attackWarning = 1 - sst
} else {
	attackWarning = 0	
}

if projectilePass then {
	drawInvisibleEnemy(attackWarning)
} else {
	drawEnemy(attackWarning)
}

shader_reset()
