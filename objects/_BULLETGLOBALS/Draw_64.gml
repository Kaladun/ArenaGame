if debug then {
	draw_set_color(c_ltgray)
	draw_set_halign(fa_left)
	
	draw_text(debugX, debugY, "BSP: "+string(global.bulletSpeedBase)+" / "+string(100*computeBulletSpeedMult()) + "%")
	draw_text(debugX, debugY+10, "CLD: "+string(global.bulletCooldownBase)+" / "+string(100*computeCooldownMult())+ "%")
	draw_text(debugX, debugY+20, "SGO: "+string(global.bulletShotgunBase)+" / "+string(100*computeShotgunOdds(1))+ "%")
	draw_text(debugX, debugY+30, "FAT: "+string(global.bulletThiccBase)+" / "+string(100*computeThiccness())+ "%")
	draw_text(debugX, debugY+40, "VAR: "+string(global.bulletVarianceBase)+" / "+string(100*computeVarianceMult())+ "%")
	
}

if instance_exists(objPlayer) then {
	for(i = 0; i < objPlayer.hpMax; i++) {
		frame = 0
		if i+1 > objPlayer.hp then {frame = 1}
		draw_sprite(sprHeart, frame, 3 + 10 * i, 3)	
	}
	
	for(i = 0; i < objPlayer.grenadeCountMax; i++) {
		frame = 1 
		if i+1 > objPlayer.grenadeCount then {frame = 2}
		draw_sprite(sprGrenade, frame, 3 + 10 * i + 5, 15 + 5)
	}

	draw_set_halign(fa_left)
	drawShadeText(drawX, 3, "SCORE: " + string(global.totalScore), c_white)
	drawShadeText(drawX, 15, "WAVE: " + string(global.waveNumber+1) + "-" + string(global.burstNumber+1), c_white)
	drawShadeText(drawX, 27, "$: " + string(global.money), c_white)
	
	var clr = (global.comboLevel - 1) / (2 * (global.comboLevelMax - 1))
	if global.comboLevel = global.comboLevelMax then {clr = 1}
	var colText = merge_color(c_white, c_aqua, clr)
	
	draw_set_halign(fa_center)
	if global.comboLevel = global.comboLevelMax then {
		drawShadeText(comboM, 3, "COMBO MAX!", colText)
	} else {
		drawShadeText(comboM, 3, "COMBO: x" + string(global.comboLevel), colText)
	}
	
	draw_set_color(c_dkgray)
	draw_rectangle(comboX-1,comboY-1,comboX+comboW+1,comboY+comboH+1,0)
	draw_set_color(c_black)
	draw_rectangle(comboX,comboY,comboX+comboW,comboY+6,0)
	draw_rectangle(comboX,comboY+8,comboX+comboW,comboY+comboH,0)
	
	var cbar = comboW / global.comboGoal 
	var colBar = merge_color(c_blue, c_aqua, clr)
	draw_set_color(colBar)

	if global.comboKills > 0 then {
		draw_rectangle(comboX,comboY,comboX + cbar*global.comboKills,comboY+6,0)
	}
	
	if global.comboLevel = global.comboLevelMax then {
		draw_rectangle(comboX,comboY,comboX+comboW,comboY+6,0)
	}
	
	draw_set_color(c_gray)
	for(var i = 1; i < global.comboGoal; i++) {
		draw_line(comboX+i*cbar,comboY+1,comboX+i*cbar,comboY+5)
	}
	
	if global.comboTimer > 0 then {
		var ctr = global.comboTimer / global.comboTimerMax
		draw_set_color(merge_color(c_red,c_maroon, smoothstep(1.2 * ctr - 0.1)))
		draw_rectangle(comboX,comboY+8,comboX+comboW*ctr,comboY+comboH,0)
	}
	
	draw_text(30,240,fps_real)
}